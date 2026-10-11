#!/bin/sh
# Downloads the remastered opening the releases ship with (LuanUP's 4K60 remaster, used with permission)
# into build/intro.mkv; the build scripts bundle it from there. Checked against its SHA-256.
set -e
cd "$(dirname "$0")/.."
URL=https://github.com/carlosrmz009/littleplanet/releases/download/intro/intro.mkv
SHA=a71f65310c3902fc5284d5bdc22df8aab3b90479399d88b7c2de3257b49a1dd9
check() { if command -v sha256sum >/dev/null; then echo "$SHA  $1" | sha256sum -c - >/dev/null; else echo "$SHA  $1" | shasum -a 256 -c - >/dev/null; fi; }
mkdir -p build
if [ -f build/intro.mkv ] && check build/intro.mkv; then echo "build/intro.mkv is up to date"; exit 0; fi
curl -fL --retry 5 -o build/intro.mkv.part "$URL"
check build/intro.mkv.part || { echo "intro.mkv: checksum mismatch" >&2; rm -f build/intro.mkv.part; exit 1; }
mv build/intro.mkv.part build/intro.mkv
echo "build/intro.mkv ok"
