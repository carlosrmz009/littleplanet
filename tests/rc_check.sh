#!/bin/sh
# The recompiled code against the interpreter: each stage run in tests/stages (stage select, then play by
# script for 4600 frames) both ways, comparing a hash of main and PRG-RAM plus both CPUs' PCs every frame.
# usage: tests/rc_check.sh DISC_IMAGE [JOBS]
set -e
cd "$(dirname "$0")/.."
DISC="$1"; JOBS="${2:-4}"
[ -n "$DISC" ] || { echo "usage: $0 DISC_IMAGE [JOBS]" >&2; exit 1; }
OUT=build/rc_check; mkdir -p "$OUT"
export DISC OUT
ls tests/stages/*.txt | xargs -P "$JOBS" -I{} sh -c '
  n=$(basename "$1" .txt)
  build/littleplanet --frames 4600 --script "$1" --hashlog "$OUT/$n.rc" "$DISC" >/dev/null 2>&1
  build/littleplanet --frames 4600 --script "$1" --hashlog "$OUT/$n.in" --interp "$DISC" >/dev/null 2>&1
  if cmp -s "$OUT/$n.rc" "$OUT/$n.in"; then echo "$n same"; else echo "$n DIFFERENT: $(cmp "$OUT/$n.rc" "$OUT/$n.in" | head -1)"; fi
' sh {} | sort > "$OUT/result.txt"
cat "$OUT/result.txt"
! grep -q DIFFERENT "$OUT/result.txt"
