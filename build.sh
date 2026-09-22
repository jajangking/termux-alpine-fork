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
cp "$UNSIGNED" "$SIGNED"
jarsigner -keystore keys/fork-alpine-keystore-v7.jks \
  -storepass "$STOREPASS" -keypass "$KEYPASS" \
  -signedjar "$SIGNED" "$UNSIGNED" alpine

echo "== verify =="
jarsigner -verify "$SIGNED"
ls -la "$SIGNED"
echo "OK: $SIGNED"
