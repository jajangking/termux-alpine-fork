#!/usr/bin/env python3
"""Protocol test for the termux-api bridge client, WITHOUT an Android device.

The mock server replicates com.termux.alpine.api behavior exactly as read
from the api-app smali:

- Listens on abstract socket '\\0com.termux.alpine.api://listen'.
- Checks SO_PEERCRED uid of connecting clients (like SocketListener's
  getPeerCredentials() vs own ApplicationInfo.uid).
- Reads BE16 length + message, parses extras with the same regexes used by
  SocketListener.
- Replies a single NUL byte IMMEDIATELY after "broadcast" (this is what the
  real SocketListener does, BEFORE the API call finishes), and only then
  simulates TermuxApiReceiver/ResultReturner connecting back:
    * extra 'socket_output': result channel  -> server writes result there
    * extra 'socket_input':  stdin channel   -> server reads stdin there

Tests (run on plain Linux, no proot/Android needed):
  1. BatteryStatus: JSON arrives on stdout, rc 0  (regression: the old
     client exited on the NUL ack -> server back-connect hit
     "Connection refused"; and had input/output channels swapped).
  2. ClipboardSet:  client stdin reaches the server via socket_input.
  3. Toast (no result): rc 0 quickly, empty stdout.
  4. Error message on the listen channel: rc 1, error on stderr.
  5. Message lint: extras parse with SocketListener's own regexes.
"""
import os
import re
import socket
import struct
import subprocess
import sys
import tempfile
import threading
import time

HERE = os.path.dirname(os.path.abspath(__file__))
CLIENT = os.path.join(HERE, '..', 'api-client', 'termux-api.py')
LISTEN = b'\x00com.termux.alpine.api://listen'

# Regexes copied from api-app smali `SocketListener` <clinit>.
# (smali source shows "(?<!\\\\)" -> java regex "(?<!\\)" -> not preceded
# by a single literal backslash)
RE_STRING = re.compile(r'(-e|--es|--esa) +([^ ]+) +"(.*?)(?<!\\)"')
RE_BOOL = re.compile(r'--ez +([^ ]+) +([^ ]+)')
RE_INT = re.compile(r'--ei +([^ ]+) +(-?[0-9]+)')


def parse_extras(msg: bytes):
    text = msg.decode()
    extras = {}
    for m in RE_STRING.finditer(text):
        extras[m.group(2)] = m.group(3).replace('\\"', '"')
    for m in RE_BOOL.finditer(text):
        extras[m.group(1)] = m.group(2)
    for m in RE_INT.finditer(text):
        extras[m.group(1)] = int(m.group(2))
    return extras


class MockApiApp:
    def __init__(self):
        self.sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
        self.sock.bind(LISTEN)
        self.sock.listen(4)
        self.stop = threading.Event()
        self.thread = threading.Thread(target=self._loop, daemon=True)
        self.requests = []
        self.stdin_received = []
        self.result_delay = 0.3  # real device: ResultReturner runs async

    def start(self):
        self.thread.start()

    def close(self):
        self.stop.set()
        try:
            # shutdown() first: close() alone does not stop a listening
            # socket while another thread blocks in accept().
            self.sock.shutdown(socket.SHUT_RDWR)
        except OSError:
            pass
        try:
            self.sock.close()
        except OSError:
            pass
        self.thread.join(timeout=2)

    def _loop(self):
        while not self.stop.is_set():
            try:
                conn, _ = self.sock.accept()
            except OSError:
                break
            threading.Thread(target=self._serve, args=(conn,), daemon=True).start()

    def _serve(self, conn):
        try:
            # Peer credential check, like getPeerCredentials() vs own uid.
            cred = conn.getsockopt(socket.SOL_SOCKET, socket.SO_PEERCRED,
                                   struct.calcsize('iii'))
            _, _, peer_uid = struct.unpack('iii', cred)
            assert peer_uid == os.getuid(), 'peer uid mismatch'

            hdr = self._readn(conn, 2)
            (mlen,) = struct.unpack('!H', hdr)
            msg = self._readn(conn, mlen)
            extras = parse_extras(msg)
            self.requests.append(extras)

            # --- SocketListener: NUL ack goes out IMMEDIATELY after the
            # broadcast, well before the API call actually runs. ---
            if extras.get('api_method') == 'FailCmd':
                conn.sendall(b'BatteryProvider not found')
                conn.close()
                return
            conn.sendall(b'\x00')
            conn.close()

            time.sleep(self.result_delay)

            method = extras['api_method']
            out_addr = extras['socket_output']   # server -> client (results)
            in_addr = extras.get('socket_input')  # client -> server (stdin)

            if method == 'BatteryStatus':
                self._connect_write(out_addr, b'{"health":2,"level":97,"plugged":"PLUGGED_USB",'
                                              b'"status":"DISCHARGING","temperature":289}\n')
            elif method == 'ClipboardSet':
                # WithInput API: consume client's stdin, empty result.
                self._connect_write(out_addr, b'')
                data = self._connect_read(in_addr)
                self.stdin_received.append(data)
            elif method == 'Toast':
                # No-result API: connect + close, like ResultReturner with a
                # null result writer.
                self._connect_write(out_addr, b'')
            else:
                raise AssertionError('unknown method %s' % method)
        except Exception as e:  # noqa: BLE001 - test diagnostics
            sys.stderr.write('mock server error: %r\n' % e)
            try:
                conn.close()
            except OSError:
                pass

    @staticmethod
    def _readn(conn, n):
        buf = b''
        while len(buf) < n:
            chunk = conn.recv(n - len(buf))
            if not chunk:
                raise ConnectionError('eof')
            buf += chunk
        return buf

    @staticmethod
    def _connect_write(path, data):
        s = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
        s.connect(path)
        if data:
            s.sendall(data)
        s.close()

    @staticmethod
    def _connect_read(path):
        s = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
        s.connect(path)
        buf = b''
        while True:
            chunk = s.recv(4096)
            if not chunk:
                break
            buf += chunk
        s.close()
        return buf


def run_client(tmpdir, *args, stdin=b''):
    env = dict(os.environ)
    env['TMPDIR'] = tmpdir
    return subprocess.run(
        [sys.executable, CLIENT, *args],
        input=stdin, capture_output=True, env=env, timeout=60)


def main():
    failures = []

    def check(name, cond, detail=''):
        if cond:
            print('PASS: %s' % name)
        else:
            print('FAIL: %s  %s' % (name, detail))
            failures.append(name)

    with tempfile.TemporaryDirectory() as tmpdir:
        mock = MockApiApp()
        mock.start()
        time.sleep(0.2)

        # 1. BatteryStatus: result JSON on stdout (the NUL-only regression).
        r = run_client(tmpdir, 'BatteryStatus')
        check('battery rc', r.returncode == 0,
              'rc=%d stderr=%s' % (r.returncode, r.stderr.decode(errors='replace')))
        check('battery json', r.stdout.startswith(b'{"health":2,"level":97'),
              'stdout=%r' % r.stdout)
        check('battery no stderr', r.stderr == b'', 'stderr=%r' % r.stderr)

        # socket_input vs socket_output must point at the client's listeners
        req = mock.requests[-1]
        check('extras parsed', req.get('api_method') == 'BatteryStatus' and
              req.get('socket_output', '').endswith('.sock') and
              req.get('socket_input', '').endswith('.sock'),
              'extras=%r' % req)
        check('pid/uid extras', req.get('api_server_uid') == os.getuid() and
              req.get('api_server_pid', 0) > 0 and
              req.get('api_server_starttime', 0) > 0,
              'extras=%r' % req)

        # 2. ClipboardSet: stdin forwarded to the server on socket_input.
        payload = b'selamat pagi dunia \xc3\xa9\xc3\xa8\xc3\xaa'
        r = run_client(tmpdir, 'ClipboardSet', stdin=payload)
        check('clipboard rc', r.returncode == 0, 'rc=%d' % r.returncode)
        check('clipboard stdin forwarded', mock.stdin_received and
              mock.stdin_received[-1] == payload,
              'got=%r' % (mock.stdin_received[-1] if mock.stdin_received else None))

        # 3. Toast: no result, quick rc 0.
        t0 = time.time()
        r = run_client(tmpdir, 'Toast', '--es', 'text', 'hallo "dunia"')
        dt = time.time() - t0
        check('toast rc', r.returncode == 0, 'rc=%d' % r.returncode)
        check('toast fast', dt < 20, 'took %.1fs' % dt)
        check('toast empty stdout', r.stdout == b'', 'stdout=%r' % r.stdout)
        check('toast quoting', mock.requests[-1].get('text') == 'hallo "dunia"',
              'extras=%r' % mock.requests[-1])

        # 4. Error channel: server rejects -> rc 1, message on stderr.
        r = run_client(tmpdir, 'FailCmd')
        check('fail rc', r.returncode == 1, 'rc=%d' % r.returncode)
        check('fail stderr', b'BatteryProvider not found' in r.stderr,
              'stderr=%r' % r.stderr)

        # 5. Stale socket files are cleaned up.
        leftovers = [f for f in os.listdir(tmpdir) if f.endswith('.sock')]
        check('socket cleanup', leftovers == [], 'left=%r' % leftovers)

        # 6. Unreachable API app: clear error, rc 1.
        mock.close()
        r = run_client(tmpdir, 'BatteryStatus')
        check('offline rc', r.returncode == 1, 'rc=%d' % r.returncode)
        check('offline hint', b'cannot connect to API app socket' in r.stderr,
              'stderr=%r' % r.stderr)

    if failures:
        print('\n%d test(s) FAILED' % len(failures))
        return 1
    print('\nAll protocol tests passed.')
    return 0


if __name__ == '__main__':
    sys.exit(main())
