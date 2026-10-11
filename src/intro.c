// The remastered opening: LuanUP's 4K60 remaster of the Japanese opening, shown in place of the game's FMV.
//
// The game's own FMV keeps running underneath (hidden and muted), so skipping it with Start, the attract
// loop and save states all behave exactly as in the original. The movie follows the CD drive: the
// FMV streams OPN.STM at 75 sectors a second and shows its first picture 78 sectors in, so the movie's
// time is (sector - first sector - 78) / 75 seconds. It ends where the remaster's animation ends.
#include "app.h"
#include "cdc.h"
#include "disc.h"
#include <math.h>

#define LEAD_SECTORS 78         // sectors the FMV buffers before its first picture
#define MOVIE_END 90.0          // the remaster's animation ends at 1:30
#define FADE 0.25               // fade out over the last quarter second

static const char *files[] = { "intro.mkv", "intro.webm", "intro.mp4" };
static u32 opn_lba, opn_end;
static bool active, tried, opn_known;

static const char *find_file(void) {
  for (unsigned i = 0; i < sizeof files / sizeof files[0]; i++) {
    FILE *f = fopen(files[i], "rb");
    if (f) { fclose(f); return files[i]; }
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

static bool ensure_open(void) {
  if (movie_is_open()) return true;
  if (tried) return false;
  tried = true;
  const char *p = find_file();
  return p && movie_available() && video_can_draw_movie() && movie_open(p);
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
    if (g < 1) { audio[i * 2] = (s16)(audio[i * 2] * g); audio[i * 2 + 1] = (s16)(audio[i * 2 + 1] * g); }
  }
  return true;
}

void intro_draw(Rect r) {
  double t = movie_time();
  if (t >= MOVIE_END) return;
  const MovieFrame *f = movie_frame();
  float fade = t > MOVIE_END - FADE ? (float)((MOVIE_END - t) / FADE) : 1.0f;
  if (f) video_draw_movie(f, r, fade);
}
