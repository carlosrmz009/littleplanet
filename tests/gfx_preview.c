// Renders an installer-style screen with the shared widgets (gfx.c) to a BMP, to check the look without
// installing anything.  cc -O2 -Isrc -Isrc/sdl tests/gfx_preview.c src/gfx.c src/vg.c build/gen/ui_fonts.c -lm
#include "gfx.h"
#include "vg.h"

uint32_t GetTickCount(void) { return 0; }
static int desk = 1, page;

static int step(void) {
  logo(8, 2);
  panel(8, 36, cw - 16, ch - 44, C_PANEL, C_EDGE);
  int y = ch - 30;
  if (page == 0) {
    tab(16, 30, "INSTALL");
    text(18, 46, f_item, C_TEXT, "Install to");
    int bw = 56, pw = cw - 36 - bw - 6;
    fill(18, 61, pw, 15, C_INSET);
    text_fit(22, 62, pw - 8, f_item, C_LCD, "/home/carlos/.local/share/applications/littleplanet/Little Planet.AppImage");
    gfx_button(cw - 18 - bw, 61, bw, "Change");
    gfx_check(26, 86, "Desktop shortcut", &desk);
    text(18, 104, f_small, C_DIM, "A menu entry is always added, so search finds it.");
    gfx_button(18, y, 84, "Install");
    gfx_button(108, y, 84, "Cancel");
  } else {
    tab(16, 30, "DISC");
    text(18, 48, f_item, C_TEXT, "Copying the disc...");
    int bw = cw - 36;
    panel(18, 66, bw, 12, C_INSET, C_EDGE);
    fill(20, 68, (bw - 4) * 6 / 10, 8, C_LCD);
    text(18, 84, f_small, C_DIM, "312 of 520 MB");
  }
  return 1;
}

int main(int argc, char **argv) {
  page = argc > 1 ? atoi(argv[1]) : 0;
  float scale = argc > 2 ? (float)atof(argv[2]) : 3;
  gfx_canvas(320, 160, scale);
  gfx_begin();
  gfx_frame(step, false);
  if (page == 0) { gfx_mx = 30; gfx_my = ch - 25; gfx_moved = true; gfx_frame(step, false); }   // focus the first button
  FILE *f = fopen(argc > 3 ? argv[3] : "gfx_preview.bmp", "wb");
  unsigned char hd[54] = {'B', 'M'};
  uint32_t size = 54 + gfx_pw * gfx_ph * 4, off = 54, hs = 40; int32_t sw = gfx_pw, sh = -gfx_ph; uint16_t pl = 1, bpp = 32;
  memcpy(hd + 2, &size, 4); memcpy(hd + 10, &off, 4); memcpy(hd + 14, &hs, 4); memcpy(hd + 18, &sw, 4);
  memcpy(hd + 22, &sh, 4); memcpy(hd + 26, &pl, 2); memcpy(hd + 28, &bpp, 2);
  fwrite(hd, 1, 54, f); fwrite(canvas, 4, (size_t)gfx_pw * gfx_ph, f); fclose(f);
  return 0;
}
