// Command-line entry: headless runs for testing, otherwise the app.
#include "mcd.h"
#include "vdp.h"
#include "disc.h"
#include "hle.h"
#include "io.h"
#include "audio.h"
#include "version.h"

static void save_bmp(const char *path) {
  int w = 320, h = vdp.active_lines;
  FILE *f = u8fopen(path, "wb");
  if (!f) return;
  u32 size = 54 + w * h * 3;
  u8 hd[54] = {'B', 'M'};
  memcpy(hd + 2, &size, 4);
  hd[10] = 54; hd[14] = 40;
  memcpy(hd + 18, &w, 4);
  int nh = -h; memcpy(hd + 22, &nh, 4);
  hd[26] = 1; hd[28] = 24;
  fwrite(hd, 1, 54, f);
  for (int y = 0; y < h; y++) {
    int lw = vdp.fb_width[y] ? vdp.fb_width[y] : 320;
    for (int x = 0; x < w; x++) {
      u32 c = vdp.fb[y][x * lw / w];
      u8 px[3] = {(u8)c, (u8)(c >> 8), (u8)(c >> 16)};
      fwrite(px, 1, 3, f);
    }
  }
  fclose(f);
}

typedef struct { int frame; u16 pad; } ScriptLine;

int main(int argc, char **argv) {
  const char *disc = NULL, *shotprefix = "shot", *script = NULL, *dump = NULL;
  int frames = 0;
  int shots[256], nshots = 0;
  for (int i = 1; i < argc; i++) {
    if (!strcmp(argv[i], "--frames") && i + 1 < argc) frames = atoi(argv[++i]);
    else if (!strcmp(argv[i], "--shot") && i + 1 < argc) {
      char *s = argv[++i];
      while (*s && nshots < 256) { shots[nshots++] = atoi(s); s = strchr(s, ','); if (!s) break; s++; }
    } else if (!strcmp(argv[i], "--shotprefix") && i + 1 < argc) shotprefix = argv[++i];
    else if (!strcmp(argv[i], "--script") && i + 1 < argc) script = argv[++i];
    else if (!strcmp(argv[i], "--dump") && i + 1 < argc) dump = argv[++i];
    else disc = argv[i];
  }
  if (!disc) { fprintf(stderr, "usage: littleplanet [--frames N] [--shot a,b] [--script FILE] DISC\n"); return 2; }
  char err[512];
  if (!disc_open(disc, err, sizeof err)) { fprintf(stderr, "%s\n", err); return 1; }
  mcd_init();
  if (getenv("LP_DEBUG")) mcd_debug(true);
  if (!hle_boot(err, sizeof err)) { fprintf(stderr, "%s\n", err); return 1; }
  static ScriptLine sl[4096];
  int nsl = 0, si = 0;
  if (script) {
    FILE *f = fopen(script, "r");
    unsigned fr, pad;
    while (f && nsl < 4096 && fscanf(f, "%u %x", &fr, &pad) == 2) { sl[nsl].frame = fr; sl[nsl].pad = pad; nsl++; }
    if (f) fclose(f);
  }
  for (int fr = 0; fr < frames; fr++) {
    while (si < nsl && sl[si].frame <= fr) { io_set_pad(0, sl[si].pad); si++; }
    mcd_run_frame();
    for (int k = 0; k < nshots; k++) if (shots[k] == fr) {
      char p[512]; snprintf(p, sizeof p, "%s_%05d.bmp", shotprefix, fr);
      save_bmp(p);
    }
    if (getenv("LP_TRACE") && fr % 60 == 0)
      fprintf(stderr, "frame %d main pc %06x sub pc %06x sub sr %04x drive %d lba %u\n", fr, mcpu.pc, scpu.pc, scpu.sr, 0, 0);
  }
  if (dump) {
    struct { const char *n; void *p; size_t s; } d[] = {{"work", mcd.work_ram, sizeof mcd.work_ram}, {"prg", mcd.prg_ram, sizeof mcd.prg_ram},
      {"word", mcd.word_ram, sizeof mcd.word_ram}, {"vram", vdp.vram, sizeof vdp.vram}, {"cram", vdp.cram, sizeof vdp.cram}};
    for (unsigned k = 0; k < sizeof d / sizeof d[0]; k++) {
      char p[512]; snprintf(p, sizeof p, "%s_%s.bin", dump, d[k].n);
      FILE *f = u8fopen(p, "wb"); if (f) { fwrite(d[k].p, 1, d[k].s, f); fclose(f); }
    }
  }
  printf("main pc %06x sr %04x  sub pc %06x sr %04x\n", mcpu.pc, mcpu.sr, scpu.pc, scpu.sr);
  return 0;
}
