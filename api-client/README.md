# Alpine API client (`libexec/termux-api`)

Pure-Python reimplementation of the `termux-api` helper
(upstream: termux-api-package `termux-api.c`).

Why Python: the fork's guest cannot execute bionic-dynamic binaries
(loader `/apex/...` invisible to the app uid), and `am` is unreachable
from inside proot. The client connects to the abstract listen socket
(`com.termux.alpine.api://listen`, shared net namespace) and uses
filesystem back-connect sockets under `$TMPDIR` (identity-mapped into the
guest via proot's `$PREFIX:$PREFIX` bind), with the exact upstream
(termux-api.c 0.60.0) wire protocol:

- message = `--es socket_input "<STDIN_CHANNEL>" --es socket_output "<RESULTS_CHANNEL>"
  --ei api_server_pid N --ei api_server_uid U --ei api_server_starttime T
  --es api_method "M" <args...>`, sent as BE16 length + bytes
  (string extras `--es`/`-e`/`--esa` quoted like the C code).
  Naming is server-centric: `socket_output` = server writes results there,
  `socket_input` = server reads our stdin there.
- peer-uid check via `SO_PEERCRED` (passes thanks to `sharedUserId`)
- Phase 1: main-socket status (a single NUL = the INTENT WAS ACCEPTED,
  sent right after the broadcast — NOT "call finished"; never exit here)
- Phase 2/3: server back-connects `socket_output` (results -> stdout,
  `SCM_RIGHTS` fd like `transmit_socket_to_stdout`) and optionally
  `socket_input` (our stdin -> server, `WithInput` APIs)

Regression test (plain Linux, no device): `python3 test/test_api_bridge.py`
runs the client against a mock API app that replicates the smali behavior.

Rebuild bundle:

```sh
# scripts from termux-api .deb, shebang -> #!/usr/bin/env bash
cp <deb>/bin/termux-* bundle/bin/
cp termux-api.py bundle/libexec/termux-api
ln -sf termux-api bundle/libexec/termux-api-broadcast
chmod 755 bundle/bin/* bundle/libexec/termux-api
tar czf api-cli.tar.gz -C bundle bin libexec
# -> app/assets/termux-fix/api-cli.tar.gz (auto-extracted by login provision)
```
