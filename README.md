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

- **v13** — wrapper proot bind `$PREFIX` + `/system` ke guest → CLI `termux-*` bisa jalan
  dari dalam Alpine; `api-cli.tar.gz` (helper terkompil ulang + script tersed) dibake.
- **v12** — `api-cli.tar.gz` dibake + auto-extract saat provisioning.
- **v11** — log provisioning ke `fix/provision.log` (tidak lagi dibuang).
- **v10** — fix `PATH` guest di shell wrapper.
- **v8** — `writeAssetFile` fix + `libtalloc`/`libandroid-shmem` dibundel. Keystore v7.
- **v6** — fix `nano.postinst` + `update-alternatives --altdir/--admindir`.

## Alpine API (akses API Android)

`api-app/` = source apktool fork Termux:API (`com.termux.alpine.api`, label "Alpine API").
Kenapa perlu fork: otentikasi API = `sharedUserId` (socket peer-uid harus sama dengan UID
app API) + receiver non-exported. Satu-satunya cara: app API pendamping dengan
`sharedUserId="com.termux.alpine"` + tanda tangan kunci yang sama (v7).

Yang diubah dari API original: `package`, `sharedUserId`, authorities
(`sharedfiles`, `androidx-startup`), permission `DYNAMIC_...`, nama socket
(`com.termux.alpine.api://listen`), label. Class Java tidak dipindah.

Helper CLI (`termux-api-broadcast` + symlink `termux-api`) dikompilasi ulang dari
[source termux-api-package v0.60.0](https://github.com/termux/termux-api-package)
dengan `PREFIX`, nama socket, dan komponen receiver versi alpine; script `termux-*`
di-sed prefix-nya. Semua dibundel di `app/assets/termux-fix/api-cli.tar.gz` dan
otomatis terekstrak saat provisioning.

Build API app (butuh apktool):

```sh
apktool b api-app -o dist/alpine-api-unsigned.apk
cp dist/alpine-api-unsigned.apk dist/alpine-api-signed.apk
jarsigner -keystore keys/fork-alpine-keystore-v7.jks -storepass "$STOREPASS" \
  -keypass "$KEYPASS" -signedjar dist/alpine-api-signed.apk \
  dist/alpine-api-unsigned.apk alpine
```

Install: pasang `dist/alpine-api-signed.apk` berdampingan dengan app utama (jangan
uninstall `com.termux.api` original — tidak bentrok). Buka sekali, grant permission
per API sesuai kebutuhan. Tes dari session Alpine: `termux-vibrate -d 200`,
`termux-toast halo`.
