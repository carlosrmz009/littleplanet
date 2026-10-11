#!/bin/sh
# Builds the small FFmpeg the remastered opening plays through: decoders and demuxers only, LGPL, shared.
# The game loads these at run time (src/movie.c); without them it simply offers the original opening.
#
# usage: tools/build_ffmpeg.sh OUT_DIR
#   Linux/macOS: run as is (macOS builds arm64 + x86_64 and merges them; needs nasm).
#   Windows: run from an MSYS2 MINGW64 shell (gcc, make, nasm); the DLLs work with the MSVC build.
# OUT_DIR gets include/, lib/ (Linux: libX.so.N, macOS: libX.N.dylib) or bin/ (Windows: X-N.dll), licenses/.
set -e
VER=7.1.1
SHA=733984395e0dbbe5c046abda2dc49a5544e7e0e1e2366bba849222ae9e3a03b1
OUT="$1"
[ -n "$OUT" ] || { echo "usage: $0 OUT_DIR" >&2; exit 1; }
mkdir -p "$OUT"
OUT="$(cd "$OUT" && pwd)"
WORK="$OUT.work"
rm -rf "$WORK" && mkdir -p "$WORK"
cd "$WORK"
curl -fsSL -o ffmpeg.tar.xz "https://ffmpeg.org/releases/ffmpeg-$VER.tar.xz"
if command -v sha256sum >/dev/null; then echo "$SHA  ffmpeg.tar.xz" | sha256sum -c -; else echo "$SHA  ffmpeg.tar.xz" | shasum -a 256 -c -; fi
tar xJf ffmpeg.tar.xz
SRC="$WORK/ffmpeg-$VER"

COMMON="--enable-shared --disable-static --disable-programs --disable-doc --disable-network --disable-autodetect
  --disable-avdevice --disable-avfilter --disable-swscale --disable-postproc --disable-everything
  --enable-avcodec --enable-avformat --enable-avutil --enable-swresample
  --enable-decoder=vp8,vp9,h264,hevc,opus,aac,vorbis,mp3,flac
  --enable-demuxer=matroska,mov,mp3,flac,ogg
  --enable-parser=vp8,vp9,h264,hevc,opus,aac,vorbis,mpegaudio,flac
  --enable-protocol=file"

build() {   # build DIR [configure args]
  d="$1"; shift
  mkdir -p "$d" && cd "$d"
  # shellcheck disable=SC2086
  "$SRC/configure" --prefix="$d/stage" $COMMON "$@"
  make -j"$( (nproc || sysctl -n hw.ncpu) 2>/dev/null)"
  make install
  cd "$WORK"
}

rm -rf "$OUT/include" "$OUT/lib" "$OUT/bin" "$OUT/licenses"
mkdir -p "$OUT/licenses"
case "$(uname -s)" in
  Darwin)
    for a in arm64 x86_64; do
      build "$WORK/$a" --arch=$a --enable-cross-compile --target-os=darwin --cc="clang -arch $a" \
        --extra-cflags="-mmacosx-version-min=11.0" --extra-ldflags="-mmacosx-version-min=11.0" --install-name-dir=@loader_path --enable-pthreads
    done
    cp -R "$WORK/arm64/stage/include" "$OUT/include"
    mkdir -p "$OUT/lib"
    for l in avutil swresample avcodec avformat; do
      f="$(cd "$WORK/arm64/stage/lib" && ls lib$l.[0-9]*.dylib | awk 'length < m || !m { m = length; s = $0 } END { print s }')"
      lipo -create "$WORK/arm64/stage/lib/$f" "$WORK/x86_64/stage/lib/$f" -output "$OUT/lib/$f"
    done ;;
  MINGW*|MSYS*)
    # -static: the MinGW runtime (libgcc, libwinpthread) goes inside the DLLs; players' PCs don't have it
    build "$WORK/win" --target-os=mingw32 --enable-w32threads --extra-ldflags=-static
    cp -R "$WORK/win/stage/include" "$OUT/include"
    mkdir -p "$OUT/bin"
    cp "$WORK/win/stage/bin/"*.dll "$OUT/bin/" ;;
  *)
    build "$WORK/linux" --enable-pthreads --extra-cflags=-fPIC
    cp -R "$WORK/linux/stage/include" "$OUT/include"
    mkdir -p "$OUT/lib"
    for l in avutil swresample avcodec avformat; do
      f="$(cd "$WORK/linux/stage/lib" && ls lib$l.so.[0-9]* | awk 'length < m || !m { m = length; s = $0 } END { print s }')"
      cp -L "$WORK/linux/stage/lib/$f" "$OUT/lib/$f"
    done ;;
esac
cp "$SRC/COPYING.LGPLv2.1" "$OUT/licenses/FFmpeg-LGPL-2.1.txt"
cat > "$OUT/licenses/FFmpeg.txt" <<EOF
The remastered opening plays through FFmpeg $VER (https://ffmpeg.org), unmodified, licensed under the
GNU LGPL 2.1 or later (FFmpeg-LGPL-2.1.txt). Source: https://ffmpeg.org/releases/ffmpeg-$VER.tar.xz
Built by tools/build_ffmpeg.sh in https://github.com/carlosrmz009/littleplanet with:
$(echo $COMMON)
The libraries are loaded at run time; you can replace them with your own build of the same major version.
EOF
rm -rf "$WORK"
echo "FFmpeg $VER -> $OUT"
