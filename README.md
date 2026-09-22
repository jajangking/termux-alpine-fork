# Termux Alpine Fork (`com.termux.alpine`)

Fork Termux app (base v0.118.3) yang saat dibuka langsung masuk shell **Alpine Linux via proot**.
Package id berbeda dari Termux original, jadi bisa terpasang berdampingan.

## Isi repo

- `app/` — source apktool (siap `apktool b`), sudah termasuk patch:
  - `writeAssetFile`: fix kondisi loop baca asset (`if-ltz`) — sebelumnya 4 file bake
    (`usr/bin/login`, `home/.termux/shell`, `fix/proot.tar.gz`, `fix/rootfs-mini.tar.gz`)
    tertulis **0 byte** → session langsung `Process completed`.
  - `assets/termux-fix/proot.tar.gz` sudah dibundel `lib/libtalloc.so.2.4.3`
    (+symlink) dan `lib/libandroid-shmem.so` (dependensi `proot`, tidak ada di bootstrap minimal).
  - `assets/termux-fix/{login,shell}` — entrypoint session (setup proot + rootfs Alpine + `apk add` provisioning).
  - `TermuxInstaller.patchBootstrapSecondStageScript` — ganti cek `dpkg --version`
    (binary `dpkg`/`update-alternatives` ter-compile dengan prefix `com.termux` → `Permission denied`
    di fork) dengan baca versi dari `var/lib/dpkg/status`.
- `dist/fork-alpine-v8-signed.apk` — APK jadi, tinggal install.
- `keys/fork-alpine-keystore-v7.jks` — kunci sign (alias `alpine`).
  Password default `alpine7fix` (lihat `build.sh`, bisa dioverride via env `STOREPASS`/`KEYPASS`).
  > ⚠️ Keystore + password ada di repo ini. Jangan jadikan repo **publik** kecuali kamu paham
  > risikonya (orang lain bisa sign APK atas namamu). Repo ini dibuat **private**.

## Build di perangkat lain (Termux)

```sh
pkg install apktool openjdk git -y
git clone <repo-ini> termux-alpine-fork
cd termux-alpine-fork
bash build.sh v9        # hasil: dist/fork-alpine-v9-signed.apk
```

`build.sh` = `apktool b app` + `jarsigner` dengan kunci di `keys/`.
Agar update tanpa uninstall, **pakai keystore yang sama** (jangan ganti kunci).

## Install fresh

```sh
adb uninstall com.termux.alpine   # jika sudah ada (data ikut terhapus!)
adb install dist/fork-alpine-v8-signed.apk
```

Buka app sekali, biarkan bootstrap + provisioning Alpine selesai (butuh internet
untuk `apk add bash curl git ...` di dalam rootfs). Session pertama memang agak lama.

## Riwayat versi

- **v8** — `writeAssetFile` fix + `libtalloc`/`libandroid-shmem` dibundel. Clean install
  langsung masuk shell Alpine (`PROOT_OK` terverifikasi). Keystore v7.
- **v7** — `writeAssetFile` fix saja (libs masih ditambal manual via `run-as`).
- **v6** — fix `nano.postinst` + `update-alternatives --altdir/--admindir` (bootstrap selesai,
  tapi session mati karena file bake 0 byte).
