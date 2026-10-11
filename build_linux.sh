#!/bin/sh
set -e
cd "$(dirname "$0")"
SDLCFG="${SDLCFG:-$PWD/build/sdl/bin/sdl2-config}"
[ -x "$SDLCFG" ] || SDLCFG=sdl2-config
FT="${FT:-$PWD/build/ft}"
FONTS="${FONTS:-/usr/share/fonts/truetype/dejavu}"
CC="${CC:-gcc}"
CXX="${CXX:-g++}"
if [ -d "$FT" ]; then
  FTC="-I$FT/include/freetype2" FTL="$FT/lib/libfreetype.a"
else
  FTC="$(pkg-config --cflags freetype2)" FTL="$(pkg-config --libs freetype2)"
fi
# FFmpeg for the remastered opening: build/ffmpeg (tools/build_ffmpeg.sh, bundled) or the system's headers
FF="${FF:-$PWD/build/ffmpeg}"
MOVIE=""
if [ -d "$FF/include" ]; then MOVIE="-DLP_MOVIE -I$FF/include"
elif pkg-config --exists libavformat libavcodec libavutil libswresample 2>/dev/null; then
  MOVIE="-DLP_MOVIE $(pkg-config --cflags libavformat libavcodec libavutil libswresample)"
fi
CHD="-Ithird_party/libchdr/include -Ithird_party/libchdr/deps/lzma-26.02/include -Ithird_party/libchdr/deps/miniz-3.1.2 -Ithird_party/libchdr/deps/zstd-1.5.7"
CFLAGS="-O2 -Isrc $("$SDLCFG" --cflags) $FTC $CHD $MOVIE"
CXXFLAGS="-O2 -std=c++14"
OBJ=build/obj/linux
APPDIR=build/AppDir
rm -rf "$OBJ" "$APPDIR" build/littleplanet-linux*.AppImage
mkdir -p "$OBJ" build/gen
[ -f build/gen/build_id.c ] || printf 'const char build_id[] = "%s";\n' "$BUILD_ID" > build/gen/build_id.c
export CC CXX CFLAGS CXXFLAGS OBJ

python3 - "$FONTS" res/littleplanet.ico <<'EOF'
import struct, sys, zlib
fonts, ico = sys.argv[1:3]
d = open(ico, 'rb').read()
ents = [struct.unpack('<BBBBHHII', d[6 + 16 * i:22 + 16 * i]) for i in range(struct.unpack('<H', d[4:6])[0])]
size = lambda e: e[0] or 256
data = lambda e: d[e[7]:e[7] + e[6]]
big = max(ents, key=size)
small = min((e for e in ents if size(e) >= 64), key=size)
open('build/icon.png', 'wb').write(data(big))

def rgba(p):
    pos, idat = 8, b''
    while pos < len(p):
        n, t = struct.unpack('>I4s', p[pos:pos + 8])
        c = p[pos + 8:pos + 8 + n]
        pos += 12 + n
        if t == b'IHDR':
            w, h, bd, ct, _, _, il = struct.unpack('>IIBBBBB', c)
        elif t == b'IDAT':
            idat += c
    assert w == h and bd == 8 and ct in (2, 6) and il == 0
    bpp = 4 if ct == 6 else 3
    raw, s = zlib.decompress(idat), w * bpp
    out, prev = bytearray(), bytearray(s)
    for y in range(h):
        f = raw[y * (s + 1)]
        row = bytearray(raw[y * (s + 1) + 1:(y + 1) * (s + 1)])
        for i in range(s):
            a = row[i - bpp] if i >= bpp else 0
            b = prev[i]
            c = prev[i - bpp] if i >= bpp else 0
            if f == 1: row[i] = (row[i] + a) & 255
            elif f == 2: row[i] = (row[i] + b) & 255
            elif f == 3: row[i] = (row[i] + (a + b) // 2) & 255
            elif f == 4:
                pa, pb, pc = abs(b - c), abs(a - c), abs(a + b - 2 * c)
                row[i] = (row[i] + (a if pa <= pb and pa <= pc else b if pb <= pc else c)) & 255
        out += row if bpp == 4 else b''.join(row[i:i + 3] + bytes([255]) for i in range(0, s, 3))
        prev = row
    return w, bytes(out)

def arr(name, b):
    return 'const unsigned char %s[] = {%s};\nconst unsigned %s_len = %d;\n' % (name, ','.join(map(str, b)), name, len(b))

w, px = rgba(data(small))
src = arr('icon_png', data(big)) + arr('icon_rgba', px) + 'const unsigned icon_size = %d;\n' % w
for name, f in (('font_bold', 'DejaVuSansCondensed-Bold.ttf'), ('font_oblique', 'DejaVuSansCondensed-Oblique.ttf'), ('font_logo', 'DejaVuSans-BoldOblique.ttf')):
    src += arr(name, open(fonts + '/' + f, 'rb').read())
open('build/res.c', 'w').write(src)
EOF

for f in src/*.c src/sdl/*.c src/linux/*.c build/gen/*.c build/res.c third_party/chd.c \
         src/fm.cpp third_party/ymfm/ymfm_opn.cpp third_party/ymfm/ymfm_ssg.cpp third_party/ymfm/ymfm_adpcm.cpp; do
  case "$f" in src/input.c|src/win32.c) ;; *) echo "$f" ;; esac
done | xargs -P "$(nproc)" -I{} sh -c 'case "$1" in *.cpp) $CXX $CXXFLAGS -c "$1" -o "$OBJ/$(echo "$1" | tr / _).o" ;; *) $CC $CFLAGS -c "$1" -o "$OBJ/$(echo "$1" | tr / _).o" ;; esac' sh {}

# the game's code, recompiled to C from asm/ (tools/recomp.py); regenerated and recompiled only when it changes
$CC -O1 -DM68K_NAMES -Isrc tools/opmap.c -o build/opmap
build/opmap > build/opmap.txt
RC="$(python3 -I tools/recomp_gen.py build/opmap.txt)"
mkdir -p "$RC/obj"
for f in "$RC"/*.c; do [ -f "$RC/obj/$(basename "$f" .c).o" ] || echo "$f"; done |
  xargs -P "$(nproc)" -I{} sh -c 'o="$1/obj/$(basename "$2" .c).o"; $CC -O2 -Isrc -I"$1" -c "$2" -o "$o.tmp" && mv "$o.tmp" "$o"' sh "$RC" {}
$CC $CFLAGS -DLP_RECOMP -c src/recomp.c -o "$OBJ/src_recomp.c.o"

$CXX "$OBJ"/*.o "$RC"/obj/*.o $("$SDLCFG" --static-libs) $FTL -lGL -lm -ldl -lpthread -o build/littleplanet

mkdir -p "$APPDIR/usr/bin" "$APPDIR/usr/share/licenses/littleplanet"
cp build/littleplanet "$APPDIR/usr/bin/littleplanet"
ln -s usr/bin/littleplanet "$APPDIR/AppRun"
cp build/icon.png "$APPDIR/littleplanet.png"
ln -s littleplanet.png "$APPDIR/.DirIcon"
cat > "$APPDIR/littleplanet.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Little Planet
Comment=Sonic CD for the Mega-CD
Exec=littleplanet
Icon=littleplanet
Terminal=false
Categories=Game;ActionGame;
StartupWMClass=littleplanet
EOF
L="$APPDIR/usr/share/licenses/littleplanet"
cp /usr/share/doc/fonts-dejavu-core/copyright "$L/DejaVu.txt" 2>/dev/null || true
cp third_party/libchdr/LICENSE.txt "$L/libchdr.txt"
cp third_party/ymfm/LICENSE "$L/ymfm.txt"
cp third_party/dr_libs/LICENSE "$L/dr_libs.txt"
cp third_party/stb/LICENSE "$L/stb.txt"
if [ -d "$FF/lib" ]; then
  mkdir -p "$APPDIR/usr/lib"
  cp "$FF"/lib/* "$APPDIR/usr/lib/"
fi
if [ -f build/intro.mkv ]; then   # the remastered opening (tools/fetch_intro.sh)
  mkdir -p "$APPDIR/usr/share/littleplanet"
  cp build/intro.mkv "$APPDIR/usr/share/littleplanet/intro.mkv"
fi
for f in "$FT"/licenses/* build/sdl/licenses/* "$FF"/licenses/*; do
  if [ -f "$f" ]; then cp "$f" "$L/"; fi
done

[ -n "$APPIMAGETOOL" ] || exit 0
OUT=build/littleplanet-linux.AppImage
[ "$(uname -m)" = x86_64 ] || OUT="build/littleplanet-linux-$(uname -m).AppImage"
ARCH="$(uname -m)" APPIMAGE_EXTRACT_AND_RUN=1 "$APPIMAGETOOL" --no-appstream --runtime-file "$RUNTIME" "$APPDIR" "$OUT"
test -s "$OUT"
