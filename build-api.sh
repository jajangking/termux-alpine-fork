#!/data/data/com.termux/files/usr/bin/bash
# Build apk API app (com.termux.alpine.api) dari source apktool di ./api-app
# Butuh: apktool, openjdk + apksigner (Android SDK build-tools)
#   pkg install apktool openjdk aapt apksigner
set -e
cd "$(dirname "$0")"

VER="${1:-fix3}"
UNSIGNED="dist/alpine-api-${VER}-unsigned.apk"
SIGNED="dist/alpine-api-${VER}-signed.apk"
STOREPASS="${STOREPASS:-alpine7fix}"
KEYPASS="${KEYPASS:-alpine7fix}"

echo "== apktool build api-app =="
apktool b api-app -o "$UNSIGNED"

echo "== sign =="
apksigner sign \
  --ks keys/fork-alpine-keystore-v7.jks \
  --ks-pass "pass:$STOREPASS" \
  --key-pass "pass:$KEYPASS" \
  --ks-key-alias alpine \
  --out "$SIGNED" "$UNSIGNED"

apksigner verify --verbose --print-certs "$SIGNED" | head -5
ls -la "$SIGNED"
echo "OK: $SIGNED"
