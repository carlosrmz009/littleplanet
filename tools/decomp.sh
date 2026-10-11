#!/bin/sh
# Matching build: rebuilds every executable file of the disc from asm/ and checks it byte for byte.
#
# usage: tools/decomp.sh DISC_IMAGE
# Extracts the disc's files to build/data (game data stays there, never in the repository), assembles
# asm/*.s into build/files and compares each with the disc. build/ir gets the code maps for the recompiler.
set -e
cd "$(dirname "$0")/.."
[ -n "$1" ] || { echo "usage: $0 DISC_IMAGE" >&2; exit 1; }
CHD="-Ithird_party/libchdr/include -Ithird_party/libchdr/deps/lzma-26.02/include -Ithird_party/libchdr/deps/miniz-3.1.2 -Ithird_party/libchdr/deps/zstd-1.5.7"
mkdir -p build
if [ ! -x build/disctool ] || [ tools/disctool.c -nt build/disctool ] || [ src/disc.c -nt build/disctool ]; then
  # shellcheck disable=SC2086
  ${CC:-cc} -O2 -Isrc $CHD tools/disctool.c src/disc.c src/version.c third_party/chd.c -lm -o build/disctool
fi
build/disctool info "$1"
mkdir -p build/data
build/disctool extract "$1" build/data
python3 -I tools/asm.py build/data build/files build/ir asm/*.s
