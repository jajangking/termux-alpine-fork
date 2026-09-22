#!/data/data/com.termux/files/usr/bin/bash
# Build fork-alpine LITE: rootfs TIDAK dibundle -> didownload saat boot pertama.
# Butuh: apktool, openjdk
set -e
cd "$(dirname "$0")"

VER="${1:-v9-lite}"
UNSIGNED="dist/fork-alpine-${VER}-unsigned.apk"
SIGNED="dist/fork-alpine-${VER}-signed.apk"
STOREPASS="${STOREPASS:-alpine7fix}"
KEYPASS="${KEYPASS:-alpine7fix}"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
cp -r app "$TMP/app"
rm -f "$TMP"/app/assets/termux-fix/rootfs-mini.tar.zst \
      "$TMP"/app/assets/termux-fix/rootfs-mini.tar.gz

echo "== apktool build (lite) =="
apktool b "$TMP/app" -o "$UNSIGNED"

echo "== sign =="
apksigner sign \
  --ks keys/fork-alpine-keystore-v7.jks \
  --ks-pass "pass:$STOREPASS" \
  --key-pass "pass:$KEYPASS" \
  --ks-key-alias alpine \
  --out "$SIGNED" "$UNSIGNED"

echo "== verify =="
apksigner verify --verbose --print-certs "$SIGNED"
ls -la "$SIGNED"
echo "OK: $SIGNED"