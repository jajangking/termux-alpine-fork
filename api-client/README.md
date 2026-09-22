# Alpine API client (`libexec/termux-api`)

Pure-Python reimplementation of the `termux-api` helper
(upstream: termux-api-package `termux-api.c`).

Why Python: the fork's guest cannot execute bionic-dynamic binaries
(loader `/apex/...` invisible to the app uid), and `am` is unreachable
from inside proot. This client uses only the abstract-namespace socket
(`com.termux.alpine.api://listen`, shared net namespace) with the exact
upstream wire protocol:

- message = `--es socket_input "UUID" --es socket_output "UUID"
  --ei api_server_pid N --ei api_server_uid U --ei api_server_starttime T
  --es api_method "M" <args...>`, sent as BE16 length + bytes
  (string extras `--es`/`-e`/`--esa` quoted like the C code)
- peer-uid check via `SO_PEERCRED` (passes thanks to `sharedUserId`)
- Phase 1: main-socket status (single leading NUL = silent success)
- Phase 2: accept back-connections (results channel), pump to stdout,
  forward stdin, collect `SCM_RIGHTS` fd like `transmit_socket_to_stdout`

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
