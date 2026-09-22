#!/usr/bin/python3
"""termux-api client for the Alpine fork (com.termux.alpine.api).

Talks to the API app over its listen socket. Back-connect sockets are
FILESYSTEM-mode, not abstract: filesystem sockets live under $PREFIX/tmp,
a path identical in guest and host (proot binds "$PREFIX:$PREFIX"), so the
server connects to the same host path the guest bound.

Protocol mirrors termux-api-package 0.60.0 (termux-api.c) EXACTLY:

- The listen-socket reply is a single NUL byte written by SocketListener
  IMMEDIATELY after it broadcasts the intent -- i.e. long before the API
  call itself finishes. A client must therefore NEVER exit after the NUL;
  the actual result arrives later on the back-connect socket. (Exiting
  early was the "Connection refused" root cause: the server connected
  back to sockets whose listener was already gone.)

- Channel naming is from the SERVER's perspective
  ("Input/output are reversed for the java process" -- upstream comment):
    * extra "socket_output" = socket the server WRITES the result to.
      Client accepts on it and pumps to stdout (plus SCM_RIGHTS fd).
    * extra "socket_input"  = socket the server READS stdin from (WithInput
      APIs, e.g. ClipboardSet). Client accepts on it and forwards fd 0.
"""
import os
import sys
import socket
import struct
import threading
import uuid

SERVER_ADDR = "com.termux.alpine.api://listen"
VERSION = "0.60.0"
# How long the stdin-forwarding thread waits for the server to pick up
# the stdin channel before giving up quietly (interactive APIs connect
# it only after producing/while producing their result).
STDIN_ACCEPT_TIMEOUT = 15


def eprint(*args):
    sys.stderr.write(' '.join(str(a) for a in args) + '\n')


def socket_dir():
    """Host-visible directory for back-connect sockets (identity-mapped)."""
    prefix = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
    d = os.environ.get('TMPDIR') or os.path.join(prefix, 'tmp')
    try:
        os.makedirs(d, exist_ok=True)
    except OSError:
        d = os.path.join(prefix, 'tmp')
        os.makedirs(d, exist_ok=True)
    return d


def build_message(argv, results_path, stdin_path, pid, uid, starttime):
    """Extras follow upstream termux-api.c channel mapping:
    socket_input = our stdin channel, socket_output = our results channel."""
    parts = []
    parts.append('--es socket_input "%s" ' % stdin_path)
    parts.append('--es socket_output "%s" ' % results_path)
    parts.append('--ei api_server_pid %d ' % pid)
    parts.append('--ei api_server_uid %d ' % uid)
    parts.append('--ei api_server_starttime %d ' % starttime)
    parts.append('--es api_method "%s" ' % argv[1])
    i = 2
    n = len(argv)
    while i < n:
        a = argv[i]
        if a in ('--es', '-e', '--esa') and i + 1 < n:
            parts.append('%s %s ' % (a, argv[i + 1]))
            i += 2
            if i < n:
                v = argv[i].replace('"', '\\"')
                parts.append('"%s" ' % v)
                i += 1
        else:
            parts.append('%s ' % a)
            i += 1
    return ''.join(parts).encode()


def proc_starttime(pid):
    try:
        with open('/proc/%d/stat' % pid, 'rb') as f:
            data = f.read()
        # comm may contain spaces/parens: cut after last ')'
        rest = data.split(b')')[-1].split()
        return int(rest[19])  # field 22 (starttime), 0-based 19 after comm
    except Exception:
        return 4294967295  # (unsigned)-1 like the C code


def real_uid():
    """Real uid, bypassing proot -0 which fakes getuid() -> 0.

    proot intercepts getuid/geteuid syscalls but NOT /proc, so the kernel
    uid used by SO_PEERCRED (server side, real creds) matches this value.
    """
    try:
        with open('/proc/self/status', 'rb') as f:
            for line in f:
                if line.startswith(b'Uid:'):
                    return int(line.split()[1])
    except Exception:
        pass
    return os.getuid()


def listen_at(path):
    """Bind a filesystem socket for the server to back-connect to."""
    try:
        os.unlink(path)
    except OSError:
        pass
    s = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
    s.bind(path)
    os.chmod(path, 0o666)
    s.listen(1)
    return s


def read_status(sock, died):
    """Phase 1: consume the listen-socket reply.

    A single leading NUL byte = the intent was accepted and broadcast;
    anything else is an error message. ANY reply arrives before the API
    call runs, so this function never signals "result ready" -- it only
    detects hard failure (EOF/error without the success marker).
    """
    first = True
    ok = False
    try:
        while True:
            chunk = sock.recv(4096)
            if not chunk:
                break
            if first and chunk == b'\x00':
                ok = True
                # Keep draining until the server closes the connection.
                continue
            first = False
            try:
                os.write(2, chunk)
            except OSError:
                pass
    except OSError:
        pass
    finally:
        try:
            sock.close()
        except OSError:
            pass
    if not ok:
        # No success marker and no results will ever come. Unblock main.
        died.set()


def pump_stdin_to_sock(sock):
    try:
        while True:
            data = os.read(0, 4096)
            if not data:
                break
            try:
                sock.sendall(data)
            except OSError:
                break
    except OSError:
        pass
    finally:
        try:
            sock.close()
        except OSError:
            pass


def accept_stdin(listener):
    """SocketInput channel: the server connects here to read our stdin."""
    try:
        listener.settimeout(STDIN_ACCEPT_TIMEOUT)
        conn, _ = listener.accept()
    except OSError:
        return
    pump_stdin_to_sock(conn)


def pump_sock_to_stdout(conn):
    """Phase 3: results channel -> stdout, collecting an SCM_RIGHTS fd."""
    got_fd = -1
    try:
        while True:
            try:
                data, anc, _, _ = conn.recvmsg(4096, socket.CMSG_LEN(4096))
            except OSError:
                break
            if not data and not anc:
                break
            for level, ctype, cdata in anc:
                if level == socket.SOL_SOCKET and ctype == socket.SCM_RIGHTS:
                    fds = struct.unpack('i' * (len(cdata) // 4), cdata)
                    if fds:
                        got_fd = fds[0]
            # "@" alone with an fd means fd-only, no output (mirrors C)
            if got_fd != -1 and data == b'@':
                data = b''
            if data:
                try:
                    os.write(1, data)
                except OSError:
                    break
            if not data and got_fd == -1:
                break
    finally:
        try:
            conn.close()
        except OSError:
            pass
    return got_fd


def main(argv):
    if len(argv) == 2 and argv[1] == '--version':
        sys.stdout.write(VERSION + '\n')
        return 0
    if len(argv) < 2:
        eprint('Usage: termux-api API_METHOD [args...]')
        return 1

    tag = uuid.uuid4().hex[:16]
    sockdir = socket_dir()
    # socket_output: server -> client (results);  socket_input: client -> server (stdin)
    results_path = os.path.join(sockdir, 'api-out-%s.sock' % tag)
    stdin_path = os.path.join(sockdir, 'api-in-%s.sock' % tag)

    results_listener = None
    stdin_listener = None
    try:
        results_listener = listen_at(results_path)
        stdin_listener = listen_at(stdin_path)

        ppid = os.getppid()
        uid = real_uid()
        starttime = proc_starttime(ppid)
        msg = build_message(argv, results_path, stdin_path, ppid, uid, starttime)

        s = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
        try:
            s.connect('\0' + SERVER_ADDR)
        except OSError as e:
            eprint('termux-api: cannot connect to API app socket: %s' % e)
            eprint('(open the Alpine API app once, keep it running, then retry)')
            return 1
        try:
            cred = s.getsockopt(socket.SOL_SOCKET, socket.SO_PEERCRED,
                                struct.calcsize('iii'))
            _, _, peer_uid = struct.unpack('iii', cred)
        except OSError:
            peer_uid = -1
        if peer_uid != uid:
            eprint('termux-api: socket peer uid mismatch '
                   '(client=%d peer=%d; is the API app the com.termux.alpine fork?)'
                   % (uid, peer_uid))
            return 1

        try:
            s.sendall(struct.pack('!H', len(msg)) + msg)
        except OSError as e:
            eprint('termux-api: send failed: %s' % e)
            return 1

        died = threading.Event()
        t_status = threading.Thread(target=read_status, args=(s, died), daemon=True)
        t_status.start()

        t_stdin = threading.Thread(target=accept_stdin, args=(stdin_listener,), daemon=True)
        t_stdin.start()

        # Phase 2/3: the server connects back on the results channel.
        # Block without a fixed timeout (interactive APIs like dialog wait
        # for the user), but bail out if the listen channel reported a
        # fatal error meanwhile.
        got_fd = -1
        while True:
            results_listener.settimeout(0.5)
            try:
                conn, _ = results_listener.accept()
            except socket.timeout:
                if died.is_set():
                    eprint('termux-api: API app did not accept the command '
                           '(see message above)')
                    return 1
                continue
            except OSError:
                eprint('termux-api: failed accepting results connection')
                return 1
            got_fd = pump_sock_to_stdout(conn)
            break

        t_status.join(timeout=5)
        if died.is_set():
            return 1
        t_stdin.join(timeout=5)

        # Callback equivalent: dump any passed fd to stdout, in-process.
        if got_fd != -1:
            try:
                while True:
                    data = os.read(got_fd, 4096)
                    if not data:
                        break
                    try:
                        os.write(1, data)
                    except OSError:
                        break
            except OSError:
                pass
            finally:
                try:
                    os.close(got_fd)
                except OSError:
                    pass
        return 0
    finally:
        for lst in (results_listener, stdin_listener):
            if lst is not None:
                try:
                    lst.close()
                except OSError:
                    pass
        for p in (results_path, stdin_path):
            try:
                os.unlink(p)
            except OSError:
                pass


if __name__ == '__main__':
    sys.exit(main(sys.argv))
