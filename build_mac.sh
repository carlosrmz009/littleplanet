#!/bin/sh
set -e
cd "$(dirname "$0")"
# SDL3: build/sdl (static, universal, as CI builds it); without pkg-config, its .pc read directly
SDLPC="$PWD/build/sdl/lib/pkgconfig"
if command -v pkg-config >/dev/null; then
  [ -f "$SDLPC/sdl3.pc" ] && export PKG_CONFIG_PATH="$SDLPC${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
  SDL_CFLAGS="$(pkg-config --cflags sdl3)"
  SDL_LIBS="$(pkg-config --static --libs sdl3)"
else
  SDL_CFLAGS="-I$PWD/build/sdl/include"
  SDL_LIBS="$PWD/build/sdl/lib/libSDL3.a $(sed -n 's/^Libs.private: *//p' "$SDLPC/sdl3.pc")"
fi
FLAGS="-O2 -mmacosx-version-min=11.0"
for a in ${ARCHS:-arm64 x86_64}; do FLAGS="$FLAGS -arch $a"; done
FF="${FF:-$PWD/build/ffmpeg}"
MOVIE=""
[ -d "$FF/include" ] && MOVIE="-DLP_MOVIE -I$FF/include"
CHD="-Ithird_party/libchdr/include -Ithird_party/libchdr/deps/lzma-26.02/include -Ithird_party/libchdr/deps/miniz-3.1.2 -Ithird_party/libchdr/deps/zstd-1.5.7"
CFLAGS="$FLAGS -Isrc $SDL_CFLAGS $CHD $MOVIE -DGL_SILENCE_DEPRECATION -Wno-deprecated-declarations -Wno-unused-label"
CXXFLAGS="$FLAGS -std=c++14"
OBJ=build/obj/mac
APP="build/Little Planet.app"
rm -rf "$OBJ" "$APP" build/littleplanet.iconset build/dmg
mkdir -p "$OBJ" build/gen
python3 -I tools/embed_fonts.py build/gen/ui_fonts.c
[ -f build/gen/build_id.c ] || printf 'const char build_id[] = "%s";\n' "$BUILD_ID" > build/gen/build_id.c
export CFLAGS CXXFLAGS OBJ

for f in src/*.c src/sdl/*.c src/mac/*.c src/mac/*.m build/gen/*.c third_party/chd.c \
         src/fm.cpp third_party/ymfm/ymfm_opn.cpp third_party/ymfm/ymfm_ssg.cpp third_party/ymfm/ymfm_adpcm.cpp; do
  case "$f" in src/input.c|src/win32.c) ;; *) echo "$f" ;; esac
done | xargs -P "$(sysctl -n hw.ncpu)" -I{} sh -c 'case "$1" in *.m) clang $CFLAGS -fobjc-arc -c "$1" -o "$OBJ/$(echo "$1" | tr / _).o" ;; *.cpp) clang++ $CXXFLAGS -c "$1" -o "$OBJ/$(echo "$1" | tr / _).o" ;; *) clang $CFLAGS -c "$1" -o "$OBJ/$(echo "$1" | tr / _).o" ;; esac' sh {}

# the game's code, recompiled to C from asm/ (tools/recomp.py); regenerated and recompiled only when it changes
clang -O1 -DM68K_NAMES -Isrc tools/opmap.c -o build/opmap
build/opmap > build/opmap.txt
RC="$(python3 -I tools/recomp_gen.py build/opmap.txt)"
mkdir -p "$RC/obj"
export FLAGS
for f in "$RC"/*.c; do [ -f "$RC/obj/$(basename "$f" .c).o" ] || echo "$f"; done |
  xargs -P "$(sysctl -n hw.ncpu)" -I{} sh -c 'o="$1/obj/$(basename "$2" .c).o"; clang $FLAGS -Isrc -I"$1" -c "$2" -o "$o.tmp" && mv "$o.tmp" "$o"' sh "$RC" {}
clang $CFLAGS -DLP_RECOMP -c src/recomp.c -o "$OBJ/src_recomp.c.o"

clang++ $FLAGS "$OBJ"/*.o "$RC"/obj/*.o $SDL_LIBS \
  -framework Cocoa -framework OpenGL -framework CoreText -framework CoreGraphics -framework CoreServices -o build/littleplanet

mkdir -p "$APP/Contents/MacOS" "$APP/Contents/Resources" build/littleplanet.iconset
cp build/littleplanet "$APP/Contents/MacOS/littleplanet"
cp res/Info.plist "$APP/Contents/Info.plist"
[ -f build/intro.mkv ] && cp build/intro.mkv "$APP/Contents/Resources/intro.mkv"   # the remastered opening
if [ -d "$FF/lib" ]; then
  mkdir -p "$APP/Contents/Frameworks" "$APP/Contents/Resources/licenses"
  cp "$FF"/lib/*.dylib "$APP/Contents/Frameworks/"
  cp "$FF"/licenses/* "$APP/Contents/Resources/licenses/"
fi
cp res/icon.png build/icon.png   # full-size square logo, so the Retina sizes aren't upscaled
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
