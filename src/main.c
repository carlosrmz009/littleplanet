// Entry point: headless runs for testing and CI, otherwise the app.
#include "app.h"
#include "vdp.h"
#include "disc.h"
#include "hle.h"
#include "io.h"
#include "audio.h"
#include "version.h"
#include "cdc.h"
#include "state.h"

#define LP_VERSION "Little Planet 1.0"

static void write_bmp(const char *path, const u32 *pix, int w, int h) {
  FILE *f = u8fopen(path, "wb");
  if (!f) return;
  u8 hd[54] = {'B', 'M'};
  u32 size = 54 + w * h * 4, off = 54, hs = 40;
  s32 sw = w, sh = -h;
  u16 planes = 1, bpp = 32;
  memcpy(hd + 2, &size, 4); memcpy(hd + 10, &off, 4); memcpy(hd + 14, &hs, 4);
  memcpy(hd + 18, &sw, 4); memcpy(hd + 22, &sh, 4); memcpy(hd + 26, &planes, 2); memcpy(hd + 28, &bpp, 2);
  fwrite(hd, 1, 54, f);
  fwrite(pix, 4, (size_t)w * h, f);
  fclose(f);
}

// the VDP's last frame as one picture; lines narrower than the widest are stretched
int game_picture(u32 *dst, int *w, int *h) {
  int maxw = 0, lines = vdp.active_lines;
  for (int y = 0; y < lines; y++) if (vdp.fb_width[y] > maxw) maxw = vdp.fb_width[y];
  if (!maxw) maxw = 320;
  for (int y = 0; y < lines; y++) {
    int lw = vdp.fb_width[y] ? vdp.fb_width[y] : maxw;
    u32 *o = dst + y * maxw;
    if (lw == maxw) for (int x = 0; x < maxw; x++) o[x] = vdp.fb[y][x] | 0xff000000;
    else for (int x = 0; x < maxw; x++) o[x] = vdp.fb[y][x * lw / maxw] | 0xff000000;
  }
  *w = maxw; *h = lines;
  return maxw;
}

static struct { int frame; u16 mask; } script[4096];
static int nscript;
static void load_script(const char *path) {
  FILE *f = fopen(path, "r");
  if (!f) return;
  char line[256];
  while (fgets(line, sizeof line, f) && nscript < 4096) {
    int fr; unsigned m;
    if (sscanf(line, "%d %x", &fr, &m) == 2) { script[nscript].frame = fr; script[nscript].mask = (u16)m; nscript++; }
  }
  fclose(f);
}
static u16 script_pad(int frame) {
  u16 m = 0;
  for (int i = 0; i < nscript; i++) if (script[i].frame <= frame) m = script[i].mask;
  return m;
}

bool machine_start(const char *disc, char *err, int errlen) {
  if (!disc_open(disc, err, errlen)) return false;
  mcd_init();
  return hle_boot(err, errlen);
}

bool app_save_state(const char *path) {
  Ser s = {0};
  mcd_serialize(&s);
  FILE *f = u8fopen(path, "wb");
  bool ok = f && fwrite(s.buf, 1, s.pos, f) == s.pos;
  if (f) fclose(f);
  free(s.buf);
  return ok;
}
bool app_load_state(const char *path) {
  FILE *f = u8fopen(path, "rb");
  if (!f) return false;
  fseek(f, 0, SEEK_END); long n = ftell(f); fseek(f, 0, SEEK_SET);
  Ser s = {malloc(n), 0, (size_t)n, true, false};
  bool ok = fread(s.buf, 1, n, f) == (size_t)n;
  fclose(f);
  if (ok) mcd_serialize(&s);
  free(s.buf);
  return ok && !s.fail;
}

int app_run(const char *disc);
bool plat_home(void);
const char *disc_wizard(void);
const char *uitest_prefix;

int main(int argc, char **argv) {
  const char *disc = NULL, *shot_prefix = "shot", *dump = NULL, *wav_path = NULL, *state_in = NULL, *state_out = NULL;
  FILE *hashlog = NULL;
  int frames = -1, shots[256], nshots = 0;
  for (int i = 1; i < argc; i++) {
    if (!strcmp(argv[i], "--version")) { puts(LP_VERSION); return 0; }
    else if (!strcmp(argv[i], "--frames") && i + 1 < argc) frames = atoi(argv[++i]);
    else if (!strcmp(argv[i], "--shot") && i + 1 < argc) { char *p = argv[++i]; while (*p && nshots < 256) { shots[nshots++] = (int)strtol(p, &p, 10); if (*p == ',') p++; else break; } }
    else if (!strcmp(argv[i], "--shotprefix") && i + 1 < argc) shot_prefix = argv[++i];
    else if (!strcmp(argv[i], "--script") && i + 1 < argc) load_script(argv[++i]);
    else if (!strcmp(argv[i], "--wav") && i + 1 < argc) wav_path = argv[++i];
    else if (!strcmp(argv[i], "--dump") && i + 1 < argc) dump = argv[++i];
    else if (!strcmp(argv[i], "--hashlog") && i + 1 < argc) hashlog = fopen(argv[++i], "w");
    else if (!strcmp(argv[i], "--state") && i + 1 < argc) state_in = argv[++i];
    else if (!strcmp(argv[i], "--savestate") && i + 1 < argc) state_out = argv[++i];
    else if (!strcmp(argv[i], "--uitest") && i + 1 < argc) uitest_prefix = argv[++i];
    else if (!strcmp(argv[i], "--debug")) mcd_debug(true);
    else if (!strncmp(argv[i], "-psn", 4)) {}
    else disc = argv[i];
  }

  if (frames < 0) {
    if (!disc) {
      if (!plat_home()) return 0;
      disc = disc_wizard();
      if (!disc) return 0;
    }
    return app_run(disc);
  }

  char err[512];
  if (!disc || !machine_start(disc, err, sizeof err)) { fprintf(stderr, "%s\n", disc ? err : "no disc image given"); return 1; }
  if (state_in && !app_load_state(state_in)) { fprintf(stderr, "can't load state %s\n", state_in); return 1; }
  FILE *wav = wav_path ? u8fopen(wav_path, "wb") : NULL;
  u32 wav_bytes = 0;
  if (wav) { u8 z[44] = {0}; fwrite(z, 1, 44, wav); }
  static u32 pic[GAME_W * 240];
  for (int f = 0; f < frames; f++) {
    io_set_pad(0, script_pad(f));
    mcd_run_frame();
    s16 buf[4096 * 2];
    int n;
    while ((n = audio_fetch(buf, 4096)) > 0) if (wav) { fwrite(buf, 4, n, wav); wav_bytes += n * 4; }
    if (hashlog) {
      u32 h = 2166136261u;
      for (int i = 0; i < 0x10000; i++) h = (h ^ mcd.work_ram[i]) * 16777619u;
      for (int i = 0; i < 0x80000; i++) h = (h ^ mcd.prg_ram[i]) * 16777619u;
      fprintf(hashlog, "%d %08x %06x %06x\n", f, h, mcpu.pc, scpu.pc);
    }
    for (int k = 0; k < nshots; k++) if (shots[k] == f) {
      int w, h; game_picture(pic, &w, &h);
      char p[512]; snprintf(p, sizeof p, "%s_%05d.bmp", shot_prefix, f);
      write_bmp(p, pic, w, h);
    }
    if (getenv("LP_TRACE") && f % 60 == 0)
      fprintf(stderr, "frame %d main pc %06x sub pc %06x sr %04x | drive %d track %d lba %u\n", f, mcpu.pc, scpu.pc, scpu.sr, drive.state, drive.track, drive.lba);
  }
  if (wav) {
    u8 h[44] = "RIFF....WAVEfmt \x10\0\0\0\1\0\2\0....\0\0\0\0\4\0\x10\0data....";
    u32 rate = AUDIO_RATE, br = AUDIO_RATE * 4, rl = wav_bytes + 36;
    memcpy(h + 4, &rl, 4); memcpy(h + 24, &rate, 4); memcpy(h + 28, &br, 4); memcpy(h + 40, &wav_bytes, 4);
    fseek(wav, 0, SEEK_SET); fwrite(h, 1, 44, wav); fclose(wav);
  }
  if (state_out) app_save_state(state_out);
  if (dump) {
    struct { const char *n; void *p; size_t s; } d[] = {{"work", mcd.work_ram, sizeof mcd.work_ram}, {"prg", mcd.prg_ram, sizeof mcd.prg_ram},
      {"word", mcd.word_ram, sizeof mcd.word_ram}, {"vram", vdp.vram, sizeof vdp.vram}, {"cram", vdp.cram, sizeof vdp.cram}};
    for (unsigned k = 0; k < sizeof d / sizeof d[0]; k++) {
      char p[512]; snprintf(p, sizeof p, "%s_%s.bin", dump, d[k].n);
      FILE *f = u8fopen(p, "wb"); if (f) { fwrite(d[k].p, 1, d[k].s, f); fclose(f); }
    }
  }
  if (hashlog) fclose(hashlog);
  printf("frames=%d main=%06x sub=%06x wordram=%s\n", frames, mcpu.pc, scpu.pc, mcd.mode1m ? "1M" : "2M");
  return 0;
}
