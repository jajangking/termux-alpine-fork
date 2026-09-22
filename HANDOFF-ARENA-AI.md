# Handoff: Bug API (`termux-*`) di Termux Alpine Fork — untuk arena.ai

## Status
Pengerjaan dihentikan sementara pada **v31**. Tidak ada yang di-revert; semua perubahan tetap
terpasang. Dokumen ini adalah titik mulai ulang (fresh start) untuk siapa pun (mis. arena.ai)
yang mau mengerjakan masalah `termux-*` API dari nol.

## Produk
Fork aplikasi Termux build 0.118.3, package id `com.termux.alpine` (bukan `com.termux`),
yang saat dibuka langsung masuk shell **Alpine Linux via proot**.
- Main app: `com.termux.alpine` (UID yang sedang terpasang di device: 10537).
- API app: `com.termux.alpine.api` (fork dari termux-api-package 0.53.0, package id di-decode
  ke `com.termux.alpine.api`).
- Keduanya `targetSdk 28`, cert SHA-256 `bbbfbd98a84f60b2ef0cb64659d703c1f07d6cef22a873b993339dc77cdef2ce`.
- Device tes: Infinix X6855, Android 16 (SDK 36), arm64-v8a.

## Gejala
Semua perintah `termux-*` (mis. `termux-battery-status`, `termux-clipboard-get`) di dalam
guest Alpine gagal.

## Riwayat fakta yang sudah dikumpulkan (empiris, dari Report Info / crash.txt guest)

1. **Layer 1 (sudah ditembus): crash `SecurityException: Permission Denial: cannot send as
   package com.termux`** di `TermuxService.sendPluginCommandErrorNotification`.
   Karena nama paket di smali masih literal `com.termux`, sedangkan UID fork milik keluarga
   `com.termux.alpine`. **Fix (v28):** rebrand 8 literal `"com.termux"` → `"com.termux.alpine"`
   di smali API app (`TermuxUtils`, `ResultReturner`, `TermuxCrashUtils`,
   `TermuxAppSharedPreferences`, `DialogAPI$...BottomSheetInputMethod`,
   `JobSchedulerAPI$...Service`, `NotificationAPI`). Sudah diverifikasi: crash dialog hilang,
   error asli kini tampil sebagai Report Info. Class service tetap `com.termux.app.TermuxService`.

2. **Exception asli (root cause) setelah layar 1 ditembus:**
   ```
   java.io.IOException: Connection refused
       at android.net.LocalSocketImpl.connectLocal(Native Method)
       at com.termux.api.util.ResultReturner.lambda$returnData$0(SourceFile:250)
   ```
   Ini terjadi saat server (API app) **back-connect** ke socket `input`/`output` yang di-bind
   oleh client di dalam proot guest.

3. **Protokol termux-api-package:** client (python `termux-api.py`, mirror 0.60.0/termux-api.c)
   → connect ke abstract server `com.termux.alpine.api://listen` (berhasil), kirim
   `--es socket_input/--es socket_output` + extra lain, lalu server connect balik ke socket
   itu (back-connect — INI YANG GAGAL), server menulis hasil, client membaca.

## Langkah yang sudah dicoba & hasilnya

### A. Abstract socket (`\0+uuid`, mode asli ≤0.58)
- Client bind `\0in_uuid` / `\0out_uuid`, listen, kirim uuid sebagai socket_input/output.
- Server `getApiLocalSocketAddress` untuk path non-`/` → `Namespace.ABSTRACT` →
  `LocalSocket((name, ABSTRACT))`. **Gagal Connection refused di device.**
- Tes lokal di environment kerja (Termux uid 10472, proot-distro login alpine):
  host → guest abstract socket **berhasil**, jadi abstract >= so far tidak terblokir di setup
  termux biasa. Kegagalan hanya terlihat di device fork (uid keluarga com.termux.alpine).

### B. Filesystem socket (path mode ≥0.58; server 0.53 SUDAH dukung dua mode)
- Client v29+: buat socket file di `$TMPDIR` = `/data/data/com.termux.alpine/files/usr/tmp/`
  (`api-in-<uuid>.sock`, `api-out-<uuid>.sock`, chmod 0666), kirim **path absolut** sebagai
  socket_input/socket_output.
- Server branch FILESYSTEM: `isPathInDirPaths(path, [dataDir, "/data/data/com.termux"], true)`.
  **Tertabrak RuntimeException:** dataDir device = `/data/user/0/com.termux.alpine` (real path),
  sedangkan socket client di `/data/data/com.termux.alpine/...` (symlink) — canonical check gagal.
  **Fix (server):** tambah `"/data/data/com.termux.alpine"` ke daftar dir valid di
  `ResultReturner.getApiLocalSocketAddress` (smali). Error ini hilang setelah fix2 di-install.
- **Report Info terbaru (15:17 UTC) masih:** `Connection refused` di line 250.
  Catatan: pada momen itu python3 ternyata BELUM terinstall di guest (`/usr/bin/python3` tidak
  ada, shebang client gagal → client tidak jalan → socket tidak listening → refused). Jadi
  kegagalan ini **kemungkinan bukan** soal metode socket, tapi client tidak pernah sempat
  menjalankan bind/listen. **Belum ada run bersih** (python3 ada + server fix2 terpasang)
  untuk membuktikan filesystem socket bekerja di device.

- Tes lokal (environment kerja, proot-distro login alpine): file socket di `$PREFIX/tmp`
  yang di-bind di guest **dapat** di-connect dari host (path identity `$PREFIX:$PREFIX`).
  Jadi pendekatan filesystem secara mekanis valid.

### C. Provisioning (penyebab python3 belum ada)
- Client murni-python butuh `python3` di dalam guest Alpine.
- `login` men-deploy `api-cli.tar.gz` (berisi `bin/termux-*` wrapper + `libexec/termux-api`
  python) ke `$PRE` saat marker `.api-cli8` belum ada.
- Guard provisioning di `login` sebelumnya hanya mengecek `[ ! -x curl ]` → jika curl sudah ada
  tapi python3 belum, `apk add python3` tidak pernah dijalankan ulang.
  **Fix (v31):** guard jadi `[ ! -x python3 ] || [ ! -x curl ]`.

## Perubahan kode yang masih terpasang (belum masalah final ke solve)
- `release/api-client/termux-api.py` dan isinya di `release/app/assets/termux-fix/api-cli.tar.gz`
  (client python v0.60.0-style, filesystem socket, shebang `#!/usr/bin/python3`).
- `release/app/assets/termux-fix/login`: marker `.api-cli8`, guard provisioning v31,
  entrypoint proot.
- Server API apk (`api-app`/`work/api-dec`): rebrand 8 literal + tambah dir valid
  `/data/data/com.termux.alpine` di `getApiLocalSocketAddress` + ApiCrashHandler punya
  `log(String, Throwable)` dan `ResultReturner` memanggilnya di catch (untuk nulis exception
  asli ke crash.txt — ini terbukti berguna).

## Aset build yang sudah jadi di `~/storage/downloads/` (device kerja)
- `fork-alpine-v31-signed.apk` — main APK terbaru (v31).
- `alpine-api-fix2-signed.apk` — API app terbaru (rebrand + dir fix).
- (Lama) `fork-alpine-v28/v29/v30-signed.apk`, `alpine-api-fix-signed.apk`.

## Cara build
```sh
cd release && bash build.sh vNN       # main APK → dist/fork-alpine-vNN-signed.apk
# API app di-build terpisah dari work/api-dec (apktool b ... apksigner sign ...)
```

## Cara tes di device (urutan yang disarankan)
1. Install `alpine-api-fix2-signed.apk` (server fix).
2. Install `fork-alpine-v31-signed.apk`.
3. Buka app (memicu login → provisioning; pastikan selesai: `which python3` di guest).
4. Jalankan `termux-battery-status`.
5. Kalau masih error, lihat Report Info (notification dari API app) dan/atau crash.txt.

## Hipotesis yang belum terbukti gugur (untuk dikerjakan dari sini)
1. Filesystem socket (A-v2 + fix server) bekerja — perlu **satu run bersih** dengan python3
   terinstall dan client v31 ter-deploy. Kalau masih refused, selidiki apakah server api app
   benar-benar melihat path socket-nya (SELinux? /data/user/0 vs /data/data? timing?).
2. Alasan abstract socket refused di device (tapi OK di Termux biasa): periksa SELinux
   `untrusted_app_27`, proot namespace, atau isolasi proot-distro termux vs fork proot binary.
3. Kemungkinan desain alternatif: hindari back-connect dari server sama sekali (mis. server
   tulis hasil ke tempat yang di-scan client), atau jalankan seluruh flow di guest-native.

## Catatan penting
- `keys/fork-alpine-keystore-v7.jks` (password `alpine7fix`, alias `alpine`) ada di repo dan
  **repo kini public** — siapapun bisa sign APK atas nama fork. Hati-hati.
- Jangan pernah `am force-stop com.termux` (Termux utama menjalankan session kerja ini).
- User-Agent blokir Cloudflare untuk `Python-urllib/*` → selalu set UA khusus.