#!/usr/bin/env python3
"""termux-api client for the Alpine fork (com.termux.alpine.api).

Talks to the API app over its abstract-namespace listen socket.
Pure-Python: no bionic loader, no `am` needed (socket-first always).
Protocol mirrors termux-api-package 0.60.0 (termux-api.c).
"""
import os
import sys
import socket
import struct
import threading
import uuid

SERVER_ADDR = "com.termux.alpine.api://listen"
VERSION = "0.60.0"
ACCEPT_TIMEOUT = 15


def build_message(argv, in_uuid, out_uuid, pid, uid, starttime):
    parts = []
    parts.append('--es socket_input "%s" ' % in_uuid)
    parts.append('--es socket_output "%s" ' % out_uuid)
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


def pump_sock_to_stdout(conn):
    """Forward accepted input-socket to stdout, collecting an SCM_RIGHTS fd."""
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


def main(argv):
    if len(argv) == 2 and argv[1] == '--version':
        sys.stdout.write(VERSION + '\n')
        return 0
    if len(argv) < 2:
        sys.stderr.write('Usage: termux-api API_METHOD [args...]\n')
        return 1

    in_uuid = uuid.uuid4().hex
    out_uuid = uuid.uuid4().hex

    ins = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
    ins.bind('\0' + in_uuid)
    ins.listen(1)
    outs = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
    outs.bind('\0' + out_uuid)
    outs.listen(1)

    ppid = os.getppid()
    uid = real_uid()
    starttime = proc_starttime(ppid)
    msg = build_message(argv, in_uuid, out_uuid, ppid, uid, starttime)

    s = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
    try:
        s.connect('\0' + SERVER_ADDR)
    except OSError as e:
        sys.stderr.write('termux-api: cannot connect to API app socket: %s\n' % e)
        sys.stderr.write('(open the Alpine API app once, then retry)\n')
        return 1
    try:
        fmt = 'iii'
        cred = s.getsockopt(socket.SOL_SOCKET, socket.SO_PEERCRED,
                            struct.calcsize(fmt))
        _, _, peer_uid = struct.unpack(fmt, cred)
    except OSError:
        peer_uid = -1
    if peer_uid != uid:
        sys.stderr.write('termux-api: socket peer uid mismatch '
                         '(client=%d peer=%d mapped by proot -0)\n' % (uid, peer_uid))
        return 1

    try:
        s.sendall(struct.pack('!H', len(msg)) + msg)
    except OSError as e:
        sys.stderr.write('termux-api: send failed: %s\n' % e)
        return 1

    # Phase 1: main-socket status. Single leading NUL = silent success.
    first = True
    try:
        while True:
            chunk = s.recv(4096)
            if not chunk:
                break
            if first and chunk == b'\x00':
                return 0
            first = False
            try:
                os.write(2, chunk)
            except OSError:
                pass
    except OSError:
        pass
    finally:
        try:
            s.close()
        except OSError:
            pass

    # Phase 2: server connects back on our sockets.
    ins.settimeout(ACCEPT_TIMEOUT)
    outs.settimeout(ACCEPT_TIMEOUT)
    try:
        in_conn, _ = ins.accept()
    except OSError:
        in_conn = None
    t = None
    if True:
        def accept_out():
            try:
                out_conn, _ = outs.accept()
            except OSError:
                return
            pump_stdin_to_sock(out_conn)
        t = threading.Thread(target=accept_out, daemon=True)
        t.start()
    got_fd = pump_sock_to_stdout(in_conn) if in_conn is not None else -1
    if t is not None:
        t.join(timeout=5)

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


if __name__ == '__main__':
    sys.exit(main(sys.argv))
