#pragma once
#include "types.h"
#include "gfx.h"

// The launcher's look: 90s Sega Japan box art. White paper, a yellow sun, Memphis confetti, the wordmark
// on a tilted black slab, black slabs with heavy type, colour blocks printed off-register behind the
// frames, and a black band with a sawtooth edge. Laid out on a 1280x800 page scaled to the window.

#define ART_W 1280
#define ART_H 800

// palette, as printed: no tints
#define A_PAPER  0xffffffffu
#define A_INK    0xff000000u
#define A_SUN    0xffffdd00u
#define A_RED    0xffe4202au
#define A_BLUE   0xff0b4fcfu
#define A_GREEN  0xff00965au
#define A_GREY   0xff9a9a9au

typedef struct {
  const char *label, *value;   // value NULL for actions
  int slider, slider_max;      // slider_max > 0: a row of squares instead of a value
  bool enabled, arrows;
} ArtRow;

void art_begin(u32 *px, int w, int h);           // a frame: sets the page scale for this window
Rect art_dev(float x, float y, float w, float h); // page -> window pixels
void art_page_pos(int wx, int wy, float *x, float *y);   // window -> page (mouse)

void art_background(bool in_game);              // paper, sun, confetti, wordmark, sticker, band
// the settings list: rows from y0, row height rh; sel is where the selection slab is (fractional while it moves)
#define ART_LIST_X 70
#define ART_LIST_W 520
void art_list(const ArtRow *rows, int n, float y0, float rh, float sel, int hover);
Rect art_monitor(void);                          // draws the frame, returns where the game picture goes
void art_paused(void);                           // the paused tag over the monitor's corner (in game)
Rect art_inset(Rect monitor);                    // zoomed detail in the monitor's corner (frame drawn)
void art_help(const char *text);
void art_band(const char *const *keys, const char *const *acts, int n, const char *right, bool right_button);
Rect art_band_button(void);                      // where the right-hand button is (update)
// plain pieces, in page units
void art_text(int font, float size, float x, float y, u32 color, const char *s);
void art_select(float x, float y, float w, float h);   // the selection slab
void art_note(Rect monitor, const char *s);             // a line in the middle of the empty monitor
// controls page
void art_columns(const char *a, const char *b, const char *c, float y, float x1, float x2);
void art_cell(float x, float y, float w, float h, const char *s, bool active, bool waiting);
// in-game message and the remastered opening's credit (own small buffers, composited by the caller)
void art_osd(u32 *px, int w, int h, float scale, const char *msg, const char *fps);
void art_caption(u32 *px, int w, int h, float scale, const char *s);
void art_caption_size(float scale, const char *s, int *w, int *h);
