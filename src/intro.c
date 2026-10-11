// The remastered opening: LuanUP's 4K60 remaster of the Japanese opening, shown in place of the game's FMV.
//
// The game's own FMV keeps running underneath (hidden and muted), so skipping it with Start, the attract
// loop and save states all behave exactly as in the original. The movie follows the CD drive: the
// FMV streams OPN.STM at 75 sectors a second and shows its first picture 78 sectors in, so the movie's
// time is (sector - first sector - 78) / 75 seconds. It ends where the remaster's animation ends.
// The video ships with the game (LuanUP's permission, on condition of the credit shown while it plays).
#include "app.h"
#include "cdc.h"
#include "disc.h"
#include <math.h>

#define LEAD_SECTORS 78         // sectors the FMV buffers before its first picture
#define MOVIE_END 90.6          // the remaster holds on the planet until 90.47 s and fades to black by 90.6
#define FADE 0.1                // (the original's last picture is at 90.47 s too); the subscribe card after it never shows
#define GAIN 0.355              // -9 dB: the remaster is mastered 9 dB hotter than the game's CD music (-21.6 dB RMS)
#define CREDIT "remastered FMV by @LuanUP on YT"   // shown while it plays (LuanUP's condition for using it)
#define CREDIT_FROM 0.5         // seconds of movie time: it appears here,
#define CREDIT_HOLD 1.5         // stays this long,
#define CREDIT_FADE 0.5         // then fades out over this

static const char *files[] = { "intro.mkv", "intro.webm", "intro.mp4" };
static u32 opn_lba, opn_end;
static bool active, tried, opn_known;

#ifdef _WIN32
static void exe_dir(char *d, int n) {
  wchar_t w[MAX_PATH];
  DWORD k = GetModuleFileNameW(NULL, w, MAX_PATH);
  if (!k || k >= MAX_PATH || !WideCharToMultiByte(CP_UTF8, 0, w, -1, d, n, NULL, NULL)) d[0] = 0;
}
#elif defined(__APPLE__)
#include <mach-o/dyld.h>
static void exe_dir(char *d, int n) { uint32_t sz = (uint32_t)n; if (_NSGetExecutablePath(d, &sz)) d[0] = 0; }
#else
#include <unistd.h>
static void exe_dir(char *d, int n) { ssize_t k = readlink("/proc/self/exe", d, n - 1); d[k > 0 ? k : 0] = 0; }
#endif

// the player's own copy in the data folder first, then the one shipped with the game
// (Windows: next to the exe, macOS: Contents/Resources, AppImage: usr/share/littleplanet)
static const char *find_file(void) {
  static char path[1200];
  char dir[1024];
  exe_dir(dir, sizeof dir);
  char *sl = strrchr(dir, '/'), *bs = strrchr(dir, '\\');
  if (bs > sl) sl = bs;
  if (sl) sl[1] = 0; else dir[0] = 0;
  static const char *rel[] = { NULL, "", "../Resources/", "../share/littleplanet/" };
  for (int r = 0; r < 4; r++) {
    if (r && !dir[0]) break;
    for (unsigned i = 0; i < sizeof files / sizeof files[0]; i++) {
      if (r) snprintf(path, sizeof path, "%s%s%s", dir, rel[r], files[i]);
      else snprintf(path, sizeof path, "%s", files[i]);
      FILE *f = u8fopen(path, "rb");
      if (f) { fclose(f); return path; }
    }
  }
  return NULL;
}

// one line for the menu: who made it, or why it can't play
const char *intro_status(void) {
  if (!find_file()) return "LuanUP's 4K remaster. Needs intro.mkv, see the README.";
  if (!movie_available() || !video_can_draw_movie()) return "LuanUP's 4K remaster. Can't play it here (no FFmpeg).";
  return "LuanUP's 4K remaster (youtube.com/@LuanUP), full screen.";
}

void intro_reset(void) {
  active = false;
  if (!movie_is_open()) tried = false;
  opn_known = false;
  IsoFile f;
  if (iso_find("OPN.STM", &f)) { opn_lba = f.lba; opn_end = f.lba + (f.size + 2047) / 2048; opn_known = true; }
}

bool intro_active(void) { return active; }

// the remaster at the moment the menu compares (1 s in, the opening's first wide shot)
bool intro_still(u32 *out, int w, int h) {
  const char *p = find_file();
  return p && movie_grab(p, 1.0, out, w, h);
}

static bool ensure_open(void) {
  if (movie_is_open()) return true;
  if (tried) return false;
  tried = true;
  const char *p = find_file();
  if (!p || !movie_available() || !video_can_draw_movie() || !movie_open(p)) return false;
  movie_gain(GAIN);
  return true;
}

bool intro_step(double dt, s16 *audio, int *frames, int max) {
  *frames = 0;
  bool want = cfg.intro == INTRO_REMASTERED && opn_known;
  bool in_file = drive.lba >= opn_lba && drive.lba <= opn_end;
  double expect = ((double)drive.lba - opn_lba - LEAD_SECTORS) / 75.0;
  if (!active) {
    if (!want || !in_file || drive.state != DRV_READ || !ensure_open()) return false;
    active = true;
    movie_seek(expect);
  } else if (!want || !in_file) {
    active = false;
    return false;
  } else if (drive.state == DRV_READ && fabs(movie_time() - expect) > 0.5) {
    movie_seek(expect);     // a state was loaded, or the drive fell behind
  }
  *frames = movie_advance(dt, audio, max);
  double t = movie_time();
  for (int i = 0; i < *frames; i++) {
    double ts = t - (double)(*frames - i) / MOVIE_RATE;
    double g = ts >= MOVIE_END ? 0 : ts > MOVIE_END - FADE ? (MOVIE_END - ts) / FADE : 1;
    if (g < 1) { audio[i * 2] = (s16)lrint(audio[i * 2] * g); audio[i * 2 + 1] = (s16)lrint(audio[i * 2 + 1] * g); }
  }
  return true;
}

void intro_draw(Rect r) {
  double t = movie_time();
  if (t >= MOVIE_END) return;
  const MovieFrame *f = movie_frame();
  float fade = t > MOVIE_END - FADE ? (float)((MOVIE_END - t) / FADE) : 1.0f;
  if (f) video_draw_movie(f, r, fade);
  double end = CREDIT_FROM + CREDIT_HOLD;
  double c = t < CREDIT_FROM ? 0 : t <= end ? 1 : fmax(0, 1 - (t - end) / CREDIT_FADE);
  if (f && c > 0) {   // inside the picture, not on the bars around it
    double par = (double)f->w / f->h;
    int w = r.w, h = (int)(r.w / par + 0.5);
    if (h > r.h) { h = r.h; w = (int)(r.h * par + 0.5); }
    osd_caption(CREDIT, (float)c, (Rect){ r.x + (r.w - w) / 2, r.y + (r.h - h) / 2, w, h });
  }
}
