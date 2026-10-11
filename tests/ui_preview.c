// Renders the launcher's art with sample content to a BMP, to look at the design without running the game.
// cc -O2 -Isrc tests/ui_preview.c src/ui_art.c src/vg.c build/gen/ui_fonts.c -lm -o build/ui_preview
#include "ui_art.h"
#include "vg.h"

static void bmp(const char *path, const u32 *px, int w, int h) {
  FILE *f = fopen(path, "wb"); if (!f) return;
  unsigned char hd[54] = {'B', 'M'};
  u32 size = 54 + w * h * 4, off = 54, hs = 40; s32 sw = w, sh = -h; u16 pl = 1, bpp = 32;
  memcpy(hd + 2, &size, 4); memcpy(hd + 10, &off, 4); memcpy(hd + 14, &hs, 4); memcpy(hd + 18, &sw, 4);
  memcpy(hd + 22, &sh, 4); memcpy(hd + 26, &pl, 2); memcpy(hd + 28, &bpp, 2);
  fwrite(hd, 1, 54, f); fwrite(px, 4, (size_t)w * h, f); fclose(f);
}

int main(int argc, char **argv) {
  int w = argc > 2 ? atoi(argv[1]) : 1280, h = argc > 2 ? atoi(argv[2]) : 800, sel = argc > 3 ? atoi(argv[3]) : 1;
  bool paused = argc > 4 && argv[4][0] == 'p';
  u32 *px = malloc((size_t)w * h * 4);
  art_begin(px, w, h);
  art_background(paused);
  ArtRow rows[] = {
    {paused ? "Resume" : "Start game", NULL, 0, 0, true, false}, {"Filter", "Smooth", 0, 0, true, true},
    {"CRT mask", "Grille", 0, 0, false, true}, {"Scanlines", NULL, 7, 10, false, false}, {"Glow", NULL, 4, 10, false, false},
    {"Curvature", "On", 0, 0, false, true}, {"Aspect", "4:3", 0, 0, true, true}, {"Integer scale", "Off", 0, 0, true, true},
    {"Sound", "Clean", 0, 0, true, true}, {"Volume", NULL, 10, 10, true, false}, {"Fullscreen", "Off", 0, 0, true, true},
    {"VSync", "On", 0, 0, true, true}, {"Show FPS", "Off", 0, 0, true, true}, {"Fast-forward", "4x", 0, 0, true, true},
    {"Intro", "Remastered", 0, 0, true, true}, {"Controller", "3 button", 0, 0, true, true}, {"Controls", NULL, 0, 0, true, false},
    {"Quit", NULL, 0, 0, true, false} };
  int n = sizeof rows / sizeof rows[0];
  float rh = (722 - 296) / (float)n; if (rh > 30) rh = 30;
  art_list(rows, n, 296, rh, (float)sel, 4);
  Rect m = art_monitor();
  for (int y = 0; y < m.h; y++) for (int x = 0; x < m.w; x++) px[(m.y + y) * w + m.x + x] = 0xff3a7bd5 + ((x / 16 + y / 16) & 1) * 0x101010;
  art_inset(m);
  art_help("How the pixels get drawn. Smooth keeps them crisp at any window size; CRT draws a tube's mask and glow.");
  const char *keys[] = {"\xe2\x86\x91\xe2\x86\x93", "\xe2\x86\x90\xe2\x86\x92", "ENTER", "TAB"};
  const char *acts[] = {"Choose", "Change", "Select", "Other scene"};
  art_band(keys, acts, 4, NULL, false);
  if (paused) art_paused();
  bmp(argc > 5 ? argv[5] : "ui_preview.bmp", px, w, h);
  return 0;
}
