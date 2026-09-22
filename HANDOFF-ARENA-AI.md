# Handoff: Bug API (`termux-*`) di Termux Alpine Fork — TERSELESAIKAN (di level kode)

## Status
**ROOT CAUSE DITEMUKAN & DIPERBAIKI** pada sesi arena.ai (22 Sep 2026). Fix sudah di-push
ke branch `arena/01a0c9bf-termux-alpine-fork`. Tinggal **build ulang kedua APK** (main +
API app, cara di bawah) dan **uji satu run bersih di device**.

## Ringkasan root cause (3 lapis, semuanya sudah diperbaiki)

1. **Client python early-exit saat byte NUL** — `SocketListener` (smali, diverifikasi)
   mengirim `write(0)` + flush **langsung setelah `sendOrderedBroadcast`**, jauh sebelum
   hasil API diproses. Client lama melakukan `return 0` begitu menerima NUL → proses mati
   → listener socket hilang → server **back-connect selalu kena `Connection refused`**
   (error yang selama ini muncul di Report Info / `ResultReturner` line ~250).
2. **Channel `socket_input`/`socket_output` tertukar** di client lama. Upstream jelas
   (*"Input/output are reversed for the java process"*): extra `socket_output` = hasil
   server→stdout client; extra `socket_input` = stdin client→server (API `WithInput`,
   mis. ClipboardSet). Client lama menukar arah keduanya.
3. **Patch device v28+ belum ada di repo ini** — 8 literal `"com.termux"` di smali API app
   (harusnya `"com.termux.alpine"`) + validasi direktori socket menolak
   `/data/data/com.termux.alpine/...`. Sekarang sudah diterapkan ke `api-app/`.

Bukti: test protokol `test/test_api_bridge.py` (mock server yang mereplikasi perilaku
smali) — **client lama: output kosong + server `Connection refused`** (persis gejala
device); **client baru: JSON hasil tampil** (16/16 PASS).

## Perubahan (sudah di repo)

### Client (`api-client/termux-api.py`, dibundel ulang)
- Ditulis ulang mengikuti `termux-api.c` 0.60.0 persis: nunggu back-connect di
  `socket_output` (hasil→stdout, termasuk fd `SCM_RIGHTS`), forward stdin lewat
  `socket_input`, status listen-socket dibaca di thread terpisah (TANPA early-exit).
- Cleanup file socket via `finally` (tak ada lagi sisa `api-*.sock`).
- Pesan error jelas (API app belum dibuka / uid mismatch).
- Baru: `api-client/alpine-api-selftest` → ikut dibundel sebagai `bin/alpine-api-selftest`
  (cek python3 → deploy → TMPDIR → koneksi API app → `BatteryStatus` round-trip).
- Bundle `app/assets/termux-fix/api-cli.tar.gz` **direbuild**; marker deploy di `login`
  dibump `.api-cli8` → **`.api-cli9`** supaya install lama otomatis ke-redeploy saat app dibuka.
- Guard provisioning v31 (`python3 || curl`) tetap.

### API app (`api-app/` — source apktool, sinkron dgn v28+ device)
- 8 literal `"com.termux"` → `"com.termux.alpine"`: `TermuxUtils` (2), `ResultReturner`
  (`getApplicationInfoForPackage` — kunci validasi socket), `TermuxCrashUtils`,
  `TermuxAppSharedPreferences`, `DialogAPI$...BottomSheetInputMethod`,
  `JobSchedulerAPI$...Service`, `NotificationAPI` (setClassName → service utama).
- `ResultReturner.getApiLocalSocketAddress`: daftar direktori valid kini
  `{dataDir, /data/data/com.termux, /data/data/com.termux.alpine}`.
- Baru: class `com/termux/api/util/ApiCrashHandler.smali` — menulis stacktrace error ke
  `/data/data/com.termux.alpine/files/home/.termux/alpine-api-crash.txt` (bisa dibaca dari
  guest: `cat ~/.termux/alpine-api-crash.txt`). Dipanggil dari catch `ResultReturner` dan
  `TermuxApiReceiver`. Tidak pernah melempar exception.
- Intent action `com.termux.service_execute` & nama class `com.termux.app.TermuxService`
  sengaja TIDAK diubah (konsisten di kedua app).

## Cara build (di device/Termux; sandbox tak punya java/apktool)
```sh
cd termux-alpine-fork
bash build.sh v17          # main app  → dist/fork-alpine-v17-signed.apk
bash build-api.sh fix3     # API app   → dist/alpine-api-fix3-signed.apk (apksigner)
```

## Cara uji di device
1. Install **API app baru dulu**, lalu main APK baru.
2. **Buka app "Alpine API" sekali** (wajib; biarkan unrestricted di battery settings).
   Grant permission sesuai API yang mau dipakai (kamera, dsb).
3. Buka fork-alpine → tunggu provisioning (`which python3` di guest).
4. Jalankan `alpine-api-selftest` → harus `SELFTEST: PASS`.
5. `termux-battery-status` → JSON. `termux-camera-info` / `termux-camera-photo /sdcard/x.jpg`
   setelah permission kamera diberikan ke API app.
6. Kalau ada error API: `cat ~/.termux/alpine-api-crash.txt` (stacktrace asli dari API app).

## Catatan penting (tetap berlaku)
- `keys/fork-alpine-keystore-v7.jks` (password `alpine7fix`) ada di repo public — siapa pun
  bisa sign APK atas nama fork. Pertimbangkan ganti kunci/rotasi kalau ini mengganggumu.
- Jangan `am force-stop com.termux` (Termux utama = sesi kerja).
- Di Android 14+ proses app bisa di-*freeze*: kalau `termux-*` hang, buka Alpine API app lagi.
