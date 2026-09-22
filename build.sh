#!/data/data/com.termux/files/usr/bin/bash
# Build fork-alpine APK dari source apktool di ./app
# Butuh: apktool, openjdk (jarsigner)
#   pkg install apktool openjdk
set -e
cd "$(dirname "$0")"

VER="${1:-v9}"
UNSIGNED="dist/fork-alpine-${VER}-unsigned.apk"
SIGNED="dist/fork-alpine-${VER}-signed.apk"
STOREPASS="${STOREPASS:-alpine7fix}"
KEYPASS="${KEYPASS:-alpine7fix}"

echo "== apktool build =="
apktool b app -o "$UNSIGNED"

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
