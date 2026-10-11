// Video playback for the remastered opening. See movie.h.
#include "movie.h"
#include <math.h>

#ifndef LP_MOVIE
bool movie_available(void) { return false; }
const char *movie_error(void) { return "built without FFmpeg"; }
bool movie_open(const char *path) { (void)path; return false; }
void movie_close(void) {}
bool movie_is_open(void) { return false; }
void movie_seek(double t) { (void)t; }
double movie_time(void) { return 0; }
void movie_gain(double g) { (void)g; }
int movie_advance(double dt, s16 *out, int max) { (void)dt; (void)out; (void)max; return 0; }
const MovieFrame *movie_frame(void) { return NULL; }
bool movie_grab(const char *path, double t, u32 *out, int w, int h) { (void)path; (void)t; (void)out; (void)w; (void)h; return false; }
#else

#include <libavformat/avformat.h>
#include <libavcodec/avcodec.h>
#include <libavutil/pixdesc.h>
#include <libswresample/swresample.h>

#ifdef _WIN32
#include <windows.h>
typedef CRITICAL_SECTION Mutex; typedef CONDITION_VARIABLE Cond; typedef HANDLE Thread;
static void mx_init(Mutex *m) { InitializeCriticalSection(m); }
static void mx_lock(Mutex *m) { EnterCriticalSection(m); }
static void mx_unlock(Mutex *m) { LeaveCriticalSection(m); }
static void cv_init(Cond *c) { InitializeConditionVariable(c); }
static void cv_wait(Cond *c, Mutex *m) { SleepConditionVariableCS(c, m, INFINITE); }
static void cv_signal(Cond *c) { WakeAllConditionVariable(c); }
static DWORD WINAPI thread_fn(LPVOID a);
static Thread th_start(void) { return CreateThread(NULL, 0, thread_fn, NULL, 0, NULL); }
static void th_join(Thread t) { WaitForSingleObject(t, INFINITE); CloseHandle(t); }
static void *lib_open(const char *name) {
  // next to lp.exe first, then the usual search
  wchar_t exe[MAX_PATH], path[MAX_PATH + 64];
  DWORD n = GetModuleFileNameW(NULL, exe, MAX_PATH);
  while (n && exe[n - 1] != L'\\' && exe[n - 1] != L'/') n--;
  exe[n] = 0;
  swprintf(path, MAX_PATH + 64, L"%ls%hs", exe, name);
  HMODULE h = LoadLibraryExW(path, NULL, LOAD_WITH_ALTERED_SEARCH_PATH);
  return h ? (void *)h : (void *)LoadLibraryA(name);
}
static void *lib_sym(void *l, const char *s) { return (void *)GetProcAddress((HMODULE)l, s); }
#else
#include <pthread.h>
#include <dlfcn.h>
#include <unistd.h>
#ifdef __APPLE__
#include <mach-o/dyld.h>
#endif
typedef pthread_mutex_t Mutex; typedef pthread_cond_t Cond; typedef pthread_t Thread;
static void mx_init(Mutex *m) { pthread_mutex_init(m, NULL); }
static void mx_lock(Mutex *m) { pthread_mutex_lock(m); }
static void mx_unlock(Mutex *m) { pthread_mutex_unlock(m); }
static void cv_init(Cond *c) { pthread_cond_init(c, NULL); }
static void cv_wait(Cond *c, Mutex *m) { pthread_cond_wait(c, m); }
static void cv_signal(Cond *c) { pthread_cond_broadcast(c); }
static void *thread_fn(void *a);
static Thread th_start(void) { pthread_t t; pthread_create(&t, NULL, thread_fn, NULL); return t; }
static void th_join(Thread t) { pthread_join(t, NULL); }
static void exe_dir(char *d, size_t n) {
  d[0] = 0;
#ifdef __APPLE__
  uint32_t sz = (uint32_t)n;
  if (_NSGetExecutablePath(d, &sz)) d[0] = 0;
#else
  ssize_t k = readlink("/proc/self/exe", d, n - 1);
  d[k > 0 ? k : 0] = 0;
#endif
  char *s = strrchr(d, '/');
  if (s) s[1] = 0; else d[0] = 0;
}
static void *lib_open(const char *name) {
  // bundled copy first (AppImage: usr/lib, app bundle: Contents/Frameworks, dev build: build/ffmpeg/lib), then the system's
  static const char *rel[] = { "../lib/", "../Frameworks/", "ffmpeg/lib/", "" };
  char dir[1024], path[1200];
  exe_dir(dir, sizeof dir);
  for (int i = 0; i < 4 && dir[0]; i++) {
    snprintf(path, sizeof path, "%s%s%s", dir, rel[i], name);
    void *h = dlopen(path, RTLD_NOW | RTLD_GLOBAL);
    if (h) return h;
  }
  return dlopen(name, RTLD_NOW | RTLD_GLOBAL);
}
static void *lib_sym(void *l, const char *s) { return dlsym(l, s); }
#endif

// ---------------------------------------------------------------- FFmpeg, loaded by name
#define FUNCS(X) \
  X(0, AVFrame *, av_frame_alloc, (void)) \
  X(0, void, av_frame_free, (AVFrame **)) \
  X(0, void, av_frame_unref, (AVFrame *)) \
  X(0, AVFrame *, av_frame_clone, (const AVFrame *)) \
  X(0, const AVPixFmtDescriptor *, av_pix_fmt_desc_get, (enum AVPixelFormat)) \
  X(1, struct SwrContext *, swr_alloc, (void)) \
  X(1, int, swr_alloc_set_opts2, (struct SwrContext **, const AVChannelLayout *, enum AVSampleFormat, int, const AVChannelLayout *, enum AVSampleFormat, int, int, void *)) \
  X(1, int, swr_init, (struct SwrContext *)) \
  X(1, int, swr_convert, (struct SwrContext *, uint8_t **, int, const uint8_t **, int)) \
  X(1, void, swr_free, (struct SwrContext **)) \
  X(2, const AVCodec *, avcodec_find_decoder, (enum AVCodecID)) \
  X(2, AVCodecContext *, avcodec_alloc_context3, (const AVCodec *)) \
  X(2, int, avcodec_parameters_to_context, (AVCodecContext *, const AVCodecParameters *)) \
  X(2, int, avcodec_open2, (AVCodecContext *, const AVCodec *, AVDictionary **)) \
  X(2, int, avcodec_send_packet, (AVCodecContext *, const AVPacket *)) \
  X(2, int, avcodec_receive_frame, (AVCodecContext *, AVFrame *)) \
  X(2, void, avcodec_flush_buffers, (AVCodecContext *)) \
  X(2, void, avcodec_free_context, (AVCodecContext **)) \
  X(2, AVPacket *, av_packet_alloc, (void)) \
  X(2, void, av_packet_free, (AVPacket **)) \
  X(2, void, av_packet_unref, (AVPacket *)) \
  X(3, int, avformat_open_input, (AVFormatContext **, const char *, const AVInputFormat *, AVDictionary **)) \
  X(3, int, avformat_find_stream_info, (AVFormatContext *, AVDictionary **)) \
  X(3, int, av_read_frame, (AVFormatContext *, AVPacket *)) \
  X(3, int, avformat_seek_file, (AVFormatContext *, int, int64_t, int64_t, int64_t, int)) \
  X(3, void, avformat_close_input, (AVFormatContext **))

#define X(lib, ret, name, args) static ret (*f_##name) args;
FUNCS(X)
#undef X

#define STR_(x) #x
#define STR(x) STR_(x)
#ifdef _WIN32
#define LIBNAME(n, v) n "-" STR(v) ".dll"
#elif defined(__APPLE__)
#define LIBNAME(n, v) "lib" n "." STR(v) ".dylib"
#else
#define LIBNAME(n, v) "lib" n ".so." STR(v)
#endif
static const char *libnames[4] = {
  LIBNAME("avutil", LIBAVUTIL_VERSION_MAJOR), LIBNAME("swresample", LIBSWRESAMPLE_VERSION_MAJOR),
  LIBNAME("avcodec", LIBAVCODEC_VERSION_MAJOR), LIBNAME("avformat", LIBAVFORMAT_VERSION_MAJOR) };

static int loaded;   // 0 not tried, 1 ok, -1 failed
static char err[256];

bool movie_available(void) {
  if (loaded) return loaded > 0;
  void *lib[4];
  loaded = -1;
  for (int i = 0; i < 4; i++)
    if (!(lib[i] = lib_open(libnames[i]))) { snprintf(err, sizeof err, "%s not found", libnames[i]); return false; }
#define X(l, ret, name, args) \
  if (!(f_##name = (ret (*) args)lib_sym(lib[l], #name))) { snprintf(err, sizeof err, "%s: no %s", libnames[l], #name); return false; }
  FUNCS(X)
#undef X
  loaded = 1;
  return true;
}
const char *movie_error(void) { return err; }

// ---------------------------------------------------------------- decoder thread
#define VQ 8                          // decoded pictures waiting
#define AB (MOVIE_RATE * 4)           // audio ring, stereo frames
#define AB_HIGH (MOVIE_RATE * 2)      // decoder rests while this much audio is waiting

static Mutex mx; static Cond cv; static Thread th; static bool th_on;
static AVFormatContext *fmt; static AVCodecContext *vdec, *adec; static struct SwrContext *swr;
static int vs = -1, as = -1;
static double vtb, atb;               // stream time bases in seconds
static AVFrame *vq[VQ]; static double vq_t[VQ]; static int vq_head, vq_n;
static s16 ab[AB * 2]; static s64 ab_rd, ab_wr;   // absolute sample indices at 48 kHz
static bool quit, eof, seek_req; static double seek_t;
static float gain = 1;
static double clock_t_;               // movie time, owned by the caller's thread
static s64 clock_s;                   // samples handed out so far (absolute index of the next one)
static AVFrame *cur; static MovieFrame mf; static u32 serial;

// ring slot of an absolute sample index (negative before the movie starts)
static s64 slot(s64 s) { s64 k = s % AB; return k < 0 ? k + AB : k; }

static void queue_clear(void) {
  for (int i = 0; i < vq_n; i++) f_av_frame_free(&vq[(vq_head + i) % VQ]);
  vq_head = vq_n = 0;
}

// decoded audio -> s16 stereo 48 kHz at its time stamp
static void audio_out(AVFrame *f) {
  if (!swr) {
    AVChannelLayout stereo = AV_CHANNEL_LAYOUT_STEREO;
    if (f_swr_alloc_set_opts2(&swr, &stereo, AV_SAMPLE_FMT_FLT, MOVIE_RATE, &f->ch_layout, (enum AVSampleFormat)f->format,
                              f->sample_rate, 0, NULL) < 0 || f_swr_init(swr) < 0) { f_swr_free(&swr); return; }
  }
  static float tmp[MOVIE_RATE * 2];
  u8 *o = (u8 *)tmp;
  int n = f_swr_convert(swr, &o, MOVIE_RATE, (const u8 **)f->extended_data, f->nb_samples);
  if (n <= 0) return;
  mx_lock(&mx);
  if (f->pts != AV_NOPTS_VALUE) {
    // trust the stream's position, but don't let rounding jitter cut or pad the sound
    s64 at = (s64)llround(f->pts * atb * MOVIE_RATE);
    if (llabs(at - ab_wr) > MOVIE_RATE / 50) {
      if (at > ab_wr) { while (ab_wr < at) { s64 k = slot(ab_wr++); ab[k * 2] = ab[k * 2 + 1] = 0; if (ab_wr - ab_rd > AB) ab_rd = ab_wr - AB; } }
      else ab_wr = at < ab_rd ? ab_rd : at;
    }
  }
  for (int i = 0; i < n; i++) {
    s64 k = slot(ab_wr);
    for (int c = 0; c < 2; c++) {   // gain before going to 16 bits, so loud masters don't clip
      float v = tmp[i * 2 + c] * gain * 32767.0f;
      ab[k * 2 + c] = (s16)lrintf(v > 32767 ? 32767 : v < -32768 ? -32768 : v);
    }
    ab_wr++;
    if (ab_wr - ab_rd > AB) ab_rd = ab_wr - AB;
  }
  mx_unlock(&mx);
}

static bool video_out(AVFrame *f) {
  s64 ts = f->best_effort_timestamp != AV_NOPTS_VALUE ? f->best_effort_timestamp : f->pts;
  double t = ts == AV_NOPTS_VALUE ? 0 : ts * vtb;
  mx_lock(&mx);
  while (!quit && !seek_req && vq_n == VQ) cv_wait(&cv, &mx);
  bool stop = quit || seek_req;
  if (!stop) {
    int k = (vq_head + vq_n) % VQ;
    vq[k] = f_av_frame_clone(f); vq_t[k] = t;
    if (vq[k]) vq_n++;
  }
  mx_unlock(&mx);
  return !stop;
}

static void decode(AVCodecContext *c, const AVPacket *p, AVFrame *f) {
  if (f_avcodec_send_packet(c, p) < 0 && p) return;
  while (f_avcodec_receive_frame(c, f) >= 0) {
    if (c == vdec) { bool go = video_out(f); f_av_frame_unref(f); if (!go) return; }
    else { audio_out(f); f_av_frame_unref(f); }
  }
}

#ifdef _WIN32
static DWORD WINAPI thread_fn(LPVOID a) {
#else
static void *thread_fn(void *a) {
#endif
  (void)a;
  AVPacket *p = f_av_packet_alloc();
  AVFrame *f = f_av_frame_alloc();
  for (;;) {
    mx_lock(&mx);
    while (!quit && !seek_req && (eof || vq_n == VQ || ab_wr - ab_rd > AB_HIGH)) cv_wait(&cv, &mx);
    if (quit) { mx_unlock(&mx); break; }
    if (seek_req) {
      double t = seek_t < 0 ? 0 : seek_t;
      seek_req = false; eof = false;
      queue_clear();
      ab_rd = ab_wr = (s64)llround(seek_t * MOVIE_RATE);
      mx_unlock(&mx);
      s64 ts = (s64)(t * AV_TIME_BASE);
      f_avformat_seek_file(fmt, -1, INT64_MIN, ts, ts, 0);
      if (vdec) f_avcodec_flush_buffers(vdec);
      if (adec) f_avcodec_flush_buffers(adec);
      if (swr) f_swr_free(&swr);
      continue;
    }
    mx_unlock(&mx);
    if (f_av_read_frame(fmt, p) < 0) {
      if (vdec) decode(vdec, NULL, f);
      if (adec) decode(adec, NULL, f);
      mx_lock(&mx); eof = true; mx_unlock(&mx);
      continue;
    }
    if (p->stream_index == vs) decode(vdec, p, f);
    else if (p->stream_index == as) decode(adec, p, f);
    f_av_packet_unref(p);
  }
  f_av_frame_free(&f);
  f_av_packet_free(&p);
  return 0;
}

static AVCodecContext *open_dec(int s, bool video) {
  AVStream *st = fmt->streams[s];
  const AVCodec *codec = f_avcodec_find_decoder(st->codecpar->codec_id);
  if (!codec) return NULL;
  AVCodecContext *c = f_avcodec_alloc_context3(codec);
  if (!c) return NULL;
  f_avcodec_parameters_to_context(c, st->codecpar);
  if (video) { c->thread_count = 0; c->thread_type = FF_THREAD_FRAME | FF_THREAD_SLICE; }
  if (f_avcodec_open2(c, codec, NULL) < 0) { f_avcodec_free_context(&c); return NULL; }
  return c;
}

// one picture at time t, scaled to w x h XRGB (a still for the menu); separate from playback
bool movie_grab(const char *path, double t, u32 *out, int w, int h) {
  if (!movie_available()) return false;
  AVFormatContext *gf = NULL;
  if (f_avformat_open_input(&gf, path, NULL, NULL) < 0) return false;
  f_avformat_find_stream_info(gf, NULL);
  int s = -1;
  for (unsigned i = 0; i < gf->nb_streams; i++)
    if (gf->streams[i]->codecpar->codec_type == AVMEDIA_TYPE_VIDEO && !(gf->streams[i]->disposition & AV_DISPOSITION_ATTACHED_PIC)) { s = i; break; }
  bool ok = false;
  AVCodecContext *c = NULL;
  const AVCodec *codec = s >= 0 ? f_avcodec_find_decoder(gf->streams[s]->codecpar->codec_id) : NULL;
  if (codec && (c = f_avcodec_alloc_context3(codec))) {
    f_avcodec_parameters_to_context(c, gf->streams[s]->codecpar);
    c->thread_count = 0;
    if (f_avcodec_open2(c, codec, NULL) >= 0) {
      double tb = av_q2d(gf->streams[s]->time_base);
      s64 ts = (s64)(t * AV_TIME_BASE);
      f_avformat_seek_file(gf, -1, INT64_MIN, ts, ts, 0);
      AVPacket *p = f_av_packet_alloc();
      AVFrame *f = f_av_frame_alloc();
      bool got = false, eof = false;
      while (!got) {
        if (!eof) {
          if (f_av_read_frame(gf, p) < 0) { eof = true; f_avcodec_send_packet(c, NULL); }
          else { if (p->stream_index == s) f_avcodec_send_packet(c, p); f_av_packet_unref(p); }
        }
        while (!got && f_avcodec_receive_frame(c, f) >= 0) {
          s64 pts = f->best_effort_timestamp != AV_NOPTS_VALUE ? f->best_effort_timestamp : f->pts;
          if (pts != AV_NOPTS_VALUE && pts * tb + 0.008 < t) { f_av_frame_unref(f); continue; }
          got = true;
        }
        if (eof && !got) break;
      }
      const AVPixFmtDescriptor *d = got ? f_av_pix_fmt_desc_get((enum AVPixelFormat)f->format) : NULL;
      if (d && d->nb_components >= 3 && (d->flags & AV_PIX_FMT_FLAG_PLANAR) && !(d->flags & (AV_PIX_FMT_FLAG_RGB | AV_PIX_FMT_FLAG_HWACCEL | AV_PIX_FMT_FLAG_BE))) {
        int depth = d->comp[0].depth, sh = depth - 8;
        bool full = f->color_range == AVCOL_RANGE_JPEG, bt709 = f->colorspace == AVCOL_SPC_BT709 || (f->colorspace == AVCOL_SPC_UNSPECIFIED && f->height >= 720);
        for (int y = 0; y < h; y++)
          for (int x = 0; x < w; x++) {
            int sx = (int)((x + 0.5) * f->width / w), sy = (int)((y + 0.5) * f->height / h);
            int cx = sx >> d->log2_chroma_w, cy = sy >> d->log2_chroma_h;
            float Y, U, V;
            if (depth > 8) {
              Y = (float)(((const u16 *)(f->data[0] + (size_t)sy * f->linesize[0]))[sx] >> sh);
              U = (float)(((const u16 *)(f->data[1] + (size_t)cy * f->linesize[1]))[cx] >> sh);
              V = (float)(((const u16 *)(f->data[2] + (size_t)cy * f->linesize[2]))[cx] >> sh);
            } else {
              Y = f->data[0][(size_t)sy * f->linesize[0] + sx];
              U = f->data[1][(size_t)cy * f->linesize[1] + cx];
              V = f->data[2][(size_t)cy * f->linesize[2] + cx];
            }
            float yy = Y / 255, u = U / 255 - 0.5f, v = V / 255 - 0.5f;
            if (!full) { yy = (yy - 16.0f / 255) * (255.0f / 219); u *= 255.0f / 224; v *= 255.0f / 224; }
            float r = bt709 ? yy + 1.5748f * v : yy + 1.402f * v;
            float g = bt709 ? yy - 0.1873f * u - 0.4681f * v : yy - 0.3441f * u - 0.7141f * v;
            float b = bt709 ? yy + 1.8556f * u : yy + 1.772f * u;
            int ri = (int)(r * 255 + 0.5f), gi = (int)(g * 255 + 0.5f), bi = (int)(b * 255 + 0.5f);
            ri = ri < 0 ? 0 : ri > 255 ? 255 : ri; gi = gi < 0 ? 0 : gi > 255 ? 255 : gi; bi = bi < 0 ? 0 : bi > 255 ? 255 : bi;
            out[(size_t)y * w + x] = 0xff000000u | (u32)ri << 16 | (u32)gi << 8 | (u32)bi;
          }
        ok = true;
      }
      f_av_frame_free(&f);
      f_av_packet_free(&p);
    }
    f_avcodec_free_context(&c);
  }
  f_avformat_close_input(&gf);
  return ok;
}

bool movie_open(const char *path) {
  movie_close();
  if (!movie_available()) return false;
  if (f_avformat_open_input(&fmt, path, NULL, NULL) < 0) { snprintf(err, sizeof err, "can't open %s", path); fmt = NULL; return false; }
  f_avformat_find_stream_info(fmt, NULL);
  vs = as = -1;
  for (unsigned i = 0; i < fmt->nb_streams; i++) {
    enum AVMediaType t = fmt->streams[i]->codecpar->codec_type;
    if (t == AVMEDIA_TYPE_VIDEO && vs < 0 && !(fmt->streams[i]->disposition & AV_DISPOSITION_ATTACHED_PIC)) vs = i;
    if (t == AVMEDIA_TYPE_AUDIO && as < 0) as = i;
  }
  if (vs < 0 || !(vdec = open_dec(vs, true))) { snprintf(err, sizeof err, "no video stream FFmpeg can decode in %s", path); movie_close(); return false; }
  if (as >= 0 && !(adec = open_dec(as, false))) as = -1;
  vtb = av_q2d(fmt->streams[vs]->time_base);
  if (as >= 0) atb = av_q2d(fmt->streams[as]->time_base);
  static bool init;
  if (!init) { mx_init(&mx); cv_init(&cv); init = true; }
  quit = eof = false;
  seek_req = true; seek_t = 0;
  clock_t_ = 0; clock_s = 0;
  th = th_start(); th_on = true;
  return true;
}

bool movie_is_open(void) { return fmt != NULL; }

void movie_close(void) {
  if (th_on) {
    mx_lock(&mx); quit = true; cv_signal(&cv); mx_unlock(&mx);
    th_join(th); th_on = false;
  }
  if (cur) f_av_frame_free(&cur);
  if (fmt) {
    queue_clear();
    if (vdec) f_avcodec_free_context(&vdec);
    if (adec) f_avcodec_free_context(&adec);
    if (swr) f_swr_free(&swr);
    f_avformat_close_input(&fmt);
  }
  fmt = NULL; vdec = adec = NULL; mf.w = 0;
}

void movie_seek(double t) {
  if (!fmt) return;
  mx_lock(&mx);
  seek_req = true; seek_t = t;
  clock_t_ = t; clock_s = (s64)llround(t * MOVIE_RATE);
  queue_clear();
  ab_rd = ab_wr = clock_s;
  cv_signal(&cv);
  mx_unlock(&mx);
  if (cur) f_av_frame_free(&cur);
}

double movie_time(void) { return clock_t_; }
void movie_gain(double g) { gain = (float)g; }

int movie_advance(double dt, s16 *out, int max) {
  if (!fmt) return 0;
  clock_t_ += dt;
  s64 end = (s64)llround(clock_t_ * MOVIE_RATE);
  int n = (int)(end - clock_s);
  if (n < 0) n = 0;
  if (n > max) { clock_s += n - max; n = max; }
  mx_lock(&mx);
  if (!seek_req) {
    if (ab_rd < clock_s) ab_rd = clock_s < ab_wr ? clock_s : ab_wr;
    for (int i = 0; i < n; i++) {
      s64 s = clock_s + i;
      if (s >= ab_rd && s < ab_wr) { s64 k = slot(s); out[i * 2] = ab[k * 2]; out[i * 2 + 1] = ab[k * 2 + 1]; }
      else out[i * 2] = out[i * 2 + 1] = 0;
    }
    if (ab_rd < clock_s + n) ab_rd = clock_s + n < ab_wr ? clock_s + n : ab_wr;
  } else memset(out, 0, (size_t)n * 4);
  cv_signal(&cv);
  mx_unlock(&mx);
  clock_s += n;
  return n;
}

const MovieFrame *movie_frame(void) {
  if (!fmt) return NULL;
  mx_lock(&mx);
  if (!seek_req) {
    // newest picture that is due; anything older is dropped
    while (vq_n && vq_t[vq_head] <= clock_t_ + 0.001) {
      if (cur) f_av_frame_free(&cur);
      cur = vq[vq_head]; vq_head = (vq_head + 1) % VQ; vq_n--;
      serial++;
    }
    cv_signal(&cv);
  }
  mx_unlock(&mx);
  if (!cur) return NULL;
  if (mf.serial != serial || !mf.w) {
    const AVPixFmtDescriptor *d = f_av_pix_fmt_desc_get((enum AVPixelFormat)cur->format);
    if (!d || d->nb_components < 3 || (d->flags & (AV_PIX_FMT_FLAG_RGB | AV_PIX_FMT_FLAG_HWACCEL)) || !(d->flags & AV_PIX_FMT_FLAG_PLANAR)
        || (d->comp[0].depth > 8 && (d->flags & AV_PIX_FMT_FLAG_BE)))
      return NULL;
    mf.w = cur->width; mf.h = cur->height;
    mf.cw = -((-cur->width) >> d->log2_chroma_w); mf.ch = -((-cur->height) >> d->log2_chroma_h);
    mf.depth = d->comp[0].depth;
    for (int i = 0; i < 3; i++) { mf.plane[i] = cur->data[i]; mf.stride[i] = cur->linesize[i]; }
    mf.full_range = cur->color_range == AVCOL_RANGE_JPEG || cur->format == AV_PIX_FMT_YUVJ420P;
    mf.bt709 = cur->colorspace == AVCOL_SPC_BT709 || (cur->colorspace == AVCOL_SPC_UNSPECIFIED && cur->height >= 720);
    mf.serial = serial;
  }
  return &mf;
}
#endif
