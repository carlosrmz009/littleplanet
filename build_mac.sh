#!/bin/sh
set -e
cd "$(dirname "$0")"
SDLCFG="${SDLCFG:-$PWD/build/sdl/bin/sdl2-config}"
[ -x "$SDLCFG" ] || SDLCFG=sdl2-config
FLAGS="-O2 -mmacosx-version-min=11.0"
for a in ${ARCHS:-arm64 x86_64}; do FLAGS="$FLAGS -arch $a"; done
CHD="-Ithird_party/libchdr/include -Ithird_party/libchdr/deps/lzma-26.02/include -Ithird_party/libchdr/deps/miniz-3.1.2 -Ithird_party/libchdr/deps/zstd-1.5.7"
CFLAGS="$FLAGS -Isrc $("$SDLCFG" --cflags) $CHD -DGL_SILENCE_DEPRECATION -Wno-deprecated-declarations -Wno-unused-label"
CXXFLAGS="$FLAGS -std=c++14"
OBJ=build/obj/mac
APP="build/Little Planet.app"
rm -rf "$OBJ" "$APP" build/littleplanet.iconset build/dmg
mkdir -p "$OBJ" build/gen
[ -f build/gen/build_id.c ] || printf 'const char build_id[] = "%s";\n' "$BUILD_ID" > build/gen/build_id.c
export CFLAGS CXXFLAGS OBJ

for f in src/*.c src/sdl/*.c src/mac/*.c src/mac/*.m build/gen/*.c third_party/chd.c \
         src/fm.cpp third_party/ymfm/ymfm_opn.cpp third_party/ymfm/ymfm_ssg.cpp third_party/ymfm/ymfm_adpcm.cpp; do
  case "$f" in src/input.c|src/win32.c) ;; *) echo "$f" ;; esac
done | xargs -P "$(sysctl -n hw.ncpu)" -I{} sh -c 'case "$1" in *.m) clang $CFLAGS -fobjc-arc -c "$1" -o "$OBJ/$(echo "$1" | tr / _).o" ;; *.cpp) clang++ $CXXFLAGS -c "$1" -o "$OBJ/$(echo "$1" | tr / _).o" ;; *) clang $CFLAGS -c "$1" -o "$OBJ/$(echo "$1" | tr / _).o" ;; esac' sh {}

clang++ $FLAGS "$OBJ"/*.o $("$SDLCFG" --static-libs) \
  -framework Cocoa -framework OpenGL -framework CoreText -framework CoreGraphics -framework CoreServices -o build/littleplanet

mkdir -p "$APP/Contents/MacOS" "$APP/Contents/Resources" build/littleplanet.iconset
cp build/littleplanet "$APP/Contents/MacOS/littleplanet"
cp res/Info.plist "$APP/Contents/Info.plist"
python3 -c "import struct,sys;d=open('res/littleplanet.ico','rb').read();e=max((struct.unpack('<BBBBHHII',d[6+16*i:22+16*i]) for i in range(struct.unpack('<H',d[4:6])[0])),key=lambda e:e[0] or 256);open(sys.argv[1],'wb').write(d[e[7]:e[7]+e[6]])" build/icon.png
for s in 16 32 128 256 512; do
  sips -z $s $s build/icon.png --out "build/littleplanet.iconset/icon_${s}x${s}.png" >/dev/null
  sips -z $((s * 2)) $((s * 2)) build/icon.png --out "build/littleplanet.iconset/icon_${s}x${s}@2x.png" >/dev/null
done
iconutil -c icns build/littleplanet.iconset -o "$APP/Contents/Resources/littleplanet.icns"
codesign --force --deep -s - "$APP"

mkdir -p build/dmg
cp -R "$APP" build/dmg/
for i in 1 2 3; do
  hdiutil create -volname "Little Planet" -srcfolder build/dmg -ov -format UDZO build/littleplanet-macos.dmg && break
  sleep 5
done
test -f build/littleplanet-macos.dmg
