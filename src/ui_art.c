// The launcher's look (see ui_art.h). Everything is placed on a 1280x800 page; art_begin maps the page into
// the window (uniformly scaled, centred) and the paper, sun and band stretch to the window's edges.
#include "ui_art.h"
#include "vg.h"
#include <math.h>

static float S = 1, OX, OY; static int W, H;

void art_begin(u32 *px, int w, int h) {
  W = w; H = h;
  S = (float)w / ART_W < (float)h / ART_H ? (float)w / ART_W : (float)h / ART_H;
  OX = (w - ART_W * S) / 2; OY = (h - ART_H * S) / 2;
  vg_target(px, w, h);
  vg_reset(); vg_translate(OX, OY); vg_scale(S, S);
}
Rect art_dev(float x, float y, float w, float h) {
  return (Rect){ (int)lroundf(OX + x * S), (int)lroundf(OY + y * S), (int)lroundf(w * S), (int)lroundf(h * S) };
}
void art_page_pos(int wx, int wy, float *x, float *y) { *x = (wx - OX) / S; *y = (wy - OY) / S; }

// ---- pieces of the box-art vocabulary
static void fill_rect(float x, float y, float w, float h, u32 c) { vg_begin(); vg_rect(x, y, w, h); vg_fill(c); }
static void frame(float x, float y, float w, float h, float t, u32 c) {
  vg_begin(); vg_rect(x, y, w, t); vg_rect(x, y + h - t, w, t); vg_rect(x, y, t, h); vg_rect(x + w - t, y, t, h); vg_fill(c);
}
// a parallelogram leaning right by `lean` page units over its height
static void slab(float x, float y, float w, float h, float lean, u32 c) {
  float p[8] = {x + lean, y, x + w + lean, y, x + w, y + h, x, y + h};
  vg_begin(); vg_poly(p, 4); vg_fill(c);
}
static void atext(int f, float size, float x, float y, u32 c, const char *s) { vg_begin(); vg_text(f, size, x, y, s); vg_fill(c); }
static void atext_c(int f, float size, float cx, float y, u32 c, const char *s) { atext(f, size, cx - vg_text_w(f, size, s) / 2, y, c, s); }
static void atext_r(int f, float size, float xr, float y, u32 c, const char *s) { atext(f, size, xr - vg_text_w(f, size, s), y, c, s); }
// tracked-out type, letter by letter
static float spaced(int f, float size, float x, float y, float track, u32 c, const char *s, bool draw) {
  char ch[2] = {0, 0};
  if (draw) vg_begin();
  for (; *s; s++) {
    ch[0] = *s;
    if (draw) vg_text(f, size, x, y, ch);
    x += vg_text_w(f, size, ch) + track;
  }
  if (draw) vg_fill(c);
  return x - track;
}
static void squiggle(float x, float y, float len, float amp, float waves, float angle, float width, u32 c) {
  float p[2 * 97]; int n = 97;
  for (int i = 0; i < n; i++) {
    float t = (float)i / (n - 1);
    p[i * 2] = t * len; p[i * 2 + 1] = sinf(t * waves * 6.2831853f) * amp;
  }
  vg_push(); vg_translate(x, y); vg_rotate(angle);
  vg_begin(); vg_stroke(p, n, width, false); vg_fill(c);
  vg_pop();
}
static void zigzag(float x, float y, float len, float step, float amp, float angle, float width, u32 c) {
  float p[2 * 64]; int n = (int)(len / step) + 1;
  if (n > 64) n = 64;
  for (int i = 0; i < n; i++) { p[i * 2] = i * step; p[i * 2 + 1] = (i & 1) ? amp : 0; }
  vg_push(); vg_translate(x, y); vg_rotate(angle);
  vg_begin(); vg_stroke(p, n, width, false); vg_fill(c);
  vg_pop();
}
static void triangle(float cx, float cy, float r, float angle, float width, u32 c) {
  float p[6];
  for (int i = 0; i < 3; i++) { float a = (angle - 90 + i * 120) * 3.14159265f / 180; p[i * 2] = cx + r * cosf(a); p[i * 2 + 1] = cy + r * sinf(a); }
  vg_begin();
  if (width > 0) vg_stroke(p, 3, width, true); else vg_poly(p, 3);
  vg_fill(c);
}
static void squares(float x, float y, int n, float size, float gap, u32 c) {
  vg_begin();
  for (int i = 0; i < n; i++) vg_rect(x + i * (size + gap), y, size, size);
  vg_fill(c);
}
// the box art's clock-face motif: a ring with a hand and a dot, and a colour copy printed off-register
static void dial(float cx, float cy, float r, float angle, u32 off) {
  vg_begin(); vg_circle(cx + 5, cy + 5, r); vg_fill(off);
  vg_begin(); vg_circle(cx, cy, r); vg_fill(A_PAPER);
  vg_begin(); vg_ring(cx, cy, r, r * 0.16f); vg_fill(A_INK);
  float a = angle * 3.14159265f / 180, hand[4] = {cx, cy, cx + cosf(a) * r * 1.5f, cy + sinf(a) * r * 1.5f};
  vg_begin(); vg_stroke(hand, 2, r * 0.22f, false); vg_fill(A_INK);
  vg_begin(); vg_circle(hand[2], hand[3], r * 0.3f); vg_fill(A_INK);
}

// ---- background
static void sawtooth_band(float top) {   // black band from `top` to the window's bottom, teeth pointing up
  vg_push(); vg_reset();
  float y = OY + top * S, tooth = 22 * S, th = 11 * S;
  vg_begin();
  vg_rect(0, y, (float)W, H - y + 1);
  for (float x = 0; x < W + tooth; x += tooth) { float p[6] = {x, y + 0.5f, x + tooth / 2, y - th, x + tooth, y + 0.5f}; vg_poly(p, 3); }
  vg_fill(A_INK);
  vg_pop();
}

static void wordmark(void) {
  vg_push();
  vg_translate(318, 150); vg_rotate(-6); vg_translate(-318, -150);
  // the slab, with the sun-side colour copy behind it
  slab(66, 62, 520, 168, -14, A_RED);
  slab(54, 52, 520, 168, -14, A_INK);
  atext(VF_WORDMARK, 104, 86, 150, A_PAPER, "LITTLE");
  float w = spaced(VF_WORDMARK, 34, 0, 0, 14, 0, "PLANET", false);
  spaced(VF_WORDMARK, 34, 300 - w / 2 + 120, 203, 14, A_PAPER, "PLANET", true);
  vg_pop();
  // the katakana bar, at its own angle as on the boxes
  vg_push();
  vg_translate(360, 252); vg_rotate(-11);
  float kw = vg_text_w(VF_KANA, 27, "リトル・プラネット");
  slab(-12, -30, kw + 24, 40, -6, A_INK);
  atext(VF_KANA, 27, 0, 0, A_PAPER, "リトル・プラネット");
  vg_pop();
}

// the box art's sticker, credited the same way: "the most famous ... in the world"
static void sticker(void) {
  vg_push();
  vg_translate(1062, 76); vg_rotate(4);
  float w = 300, h = 98, x = -w / 2, y = -h / 2;
  fill_rect(x + 8, y + 8, w, h, A_INK);
  // the black strip hanging under it, sawtooth along its bottom, as on the boxes
  float sy = y + h - 2, sh = 30;
  vg_begin();
  vg_rect(x + 18, sy, w - 36, sh);
  int teeth = (int)((w - 36) / 13);
  float tooth = (w - 36) / teeth;   // whole teeth, ending with the strip
  for (int k = 0; k < teeth; k++) {
    float tx = x + 18 + k * tooth, p[6] = {tx, sy + sh - 0.5f, tx + tooth / 2, sy + sh + 9, tx + tooth, sy + sh - 0.5f};
    vg_poly(p, 3);
  }
  vg_fill(A_INK);
  float tw = spaced(VF_SLAB, 17, 0, 0, 7, 0, "IN THE WORLD", false);
  spaced(VF_SLAB, 17, -tw / 2, sy + 23, 7, A_PAPER, "IN THE WORLD", true);
  fill_rect(x, y, w, h, A_SUN);
  frame(x, y, w, h, 4, A_INK);
  atext_c(VF_SLAB, 36, 0, y + 42, A_INK, "THE MOST FAMOUS");
  float pw = spaced(VF_SLAB, 40, 0, 0, 5, 0, "PROGRAMMER", false);
  spaced(VF_SLAB, 40, -pw / 2, y + 84, 5, A_INK, "PROGRAMMER", true);
  vg_pop();
  // whose: a name tab across the corner
  vg_push();
  vg_translate(900, 40); vg_rotate(-8);
  float nw = vg_text_w(VF_SLAB, 20, "carlos ram\xc3\xadrez");
  slab(-10, -24, nw + 22, 32, 5, A_INK);
  atext(VF_SLAB, 20, 0, 0, A_PAPER, "carlos ram\xc3\xadrez");
  vg_pop();
}

// in game: a red slab over the monitor's corner
static void paused_tag(void) {
  vg_push();
  vg_translate(668, 168); vg_rotate(-4);
  float tw = vg_text_w(VF_SLAB, 26, "PAUSED"), kw = vg_text_w(VF_KANA, 18, "ポーズ");
  slab(-6, 0, tw + kw + 40, 38, 6, A_RED);
  atext(VF_SLAB, 26, 10, 29, A_PAPER, "PAUSED");
  atext(VF_KANA, 18, 22 + tw, 27, A_PAPER, "ポーズ");
  vg_pop();
}
void art_paused(void) { paused_tag(); }

void art_background(bool in_game) {
  vg_push(); vg_reset(); vg_clear(A_PAPER); vg_pop();
  // the sun, behind the wordmark
  vg_begin(); vg_circle(236, 112, 196); vg_fill(A_SUN);
  vg_begin(); vg_ring(236, 112, 196, 3); vg_fill(A_INK);
  // a red disc behind the sticker
  vg_begin(); vg_circle(1188, 58, 74); vg_fill(A_RED);
  // confetti, in the space the content leaves
  squiggle(640, 44, 150, 9, 2.5f, 8, 5, A_RED);
  squiggle(636, 40, 150, 9, 2.5f, 8, 5, A_INK);
  triangle(716, 126, 22, 14, 4, A_BLUE);
  triangle(712, 122, 22, 14, 4, A_INK);
  squares(780, 112, 4, 11, 6, A_INK);
  zigzag(800, 150, 108, 12, 12, -4, 4, A_GREEN);
  zigzag(796, 146, 108, 12, 12, -4, 4, A_INK);
  dial(586, 268, 20, -38, A_BLUE);
  vg_begin(); vg_ring(30, 330, 15, 4); vg_fill(A_INK);
  vg_begin(); vg_ring(34, 334, 15, 4); vg_fill(A_RED);
  triangle(32, 470, 15, -20, 0, A_RED);
  squiggle(22, 560, 120, 7, 2, 90, 4, A_BLUE);
  squiggle(18, 556, 120, 7, 2, 90, 4, A_INK);
  zigzag(1246, 250, 230, 11, 13, 90, 4, A_INK);
  squares(1244, 520, 1, 12, 0, A_SUN);
  squares(1244, 540, 1, 12, 0, A_INK);
  squares(1244, 560, 1, 12, 0, A_RED);
  wordmark();
  sticker();
  sawtooth_band(738);
  (void)in_game;
}

// ---- settings list
void art_list(const ArtRow *rows, int n, float y0, float rh, float sel, int hover) {
  float x = ART_LIST_X, w = ART_LIST_W, vx = x + 330, vw = w - 340, lean = rh * 0.28f;
  // the selection: a black slab with a red copy behind
  float sy = y0 + sel * rh;
  slab(x - 10 + 6, sy + 4, w + 20, rh - 2, lean, A_RED);
  slab(x - 10, sy, w + 20, rh - 2, lean, A_INK);
  int si = (int)lroundf(sel);
  float fs = rh * 0.66f > 19 ? 19 : rh * 0.66f, base = rh * 0.5f + fs * 0.36f;
  for (int i = 0; i < n; i++) {
    const ArtRow *r = &rows[i];
    float y = y0 + i * rh;
    bool on = i == si && fabsf(sel - si) < 0.25f;
    u32 c = !r->enabled ? A_GREY : on ? A_PAPER : A_INK;
    if (i == hover && !on) triangle(x - 2, y + rh / 2 - 1, 5, 90, 0, A_RED);
    atext(VF_BOLD, fs, x + 14, y + base, c, r->label);
    if (r->slider_max > 0) {
      float sq = fs * 0.55f, gap = sq * 0.45f, sx = vx + (vw - (r->slider_max * (sq + gap) - gap)) / 2;
      float yy = y + (rh - 2 - sq) / 2;
      vg_begin();
      for (int k = 0; k < r->slider_max; k++) if (k < r->slider) vg_rect(sx + k * (sq + gap), yy, sq, sq);
      vg_fill(c);
      vg_begin();
      for (int k = r->slider; k < r->slider_max; k++) {
        float bx = sx + k * (sq + gap), t = sq * 0.18f;
        vg_rect(bx, yy, sq, t); vg_rect(bx, yy + sq - t, sq, t); vg_rect(bx, yy, t, sq); vg_rect(bx + sq - t, yy, t, sq);
      }
      vg_fill(c);
    } else if (r->value) {
      atext_c(VF_BOLD, fs, vx + vw / 2, y + base, c, r->value);
      if (on && r->arrows && r->enabled) {
        triangle(vx + 6, y + rh / 2 - 1, fs * 0.3f, -90, 0, A_SUN);
        triangle(vx + vw - 6, y + rh / 2 - 1, fs * 0.3f, 90, 0, A_SUN);
      }
    }
  }
}

// ---- monitor, help, band
#define MON_X 650.0f
#define MON_Y 182.0f
#define MON_W 560.0f
#define MON_H 420.0f
Rect art_monitor(void) {
  fill_rect(MON_X - 6 + 16, MON_Y - 6 + 16, MON_W + 12, MON_H + 12, A_RED);
  fill_rect(MON_X - 6, MON_Y - 6, MON_W + 12, MON_H + 12, A_INK);
  return art_dev(MON_X, MON_Y, MON_W, MON_H);
}
Rect art_inset(Rect m) {
  float iw = MON_W / 3, ih = MON_H / 3, ix = MON_X + MON_W - iw - 12, iy = MON_Y + MON_H - ih - 12;
  fill_rect(ix - 4, iy - 4, iw + 8, ih + 8, A_PAPER);
  frame(ix - 4, iy - 4, iw + 8, ih + 8, 2, A_INK);
  (void)m;
  return art_dev(ix, iy, iw, ih);
}
void art_help(const char *s) {
  float x = 650, y = 628, w = 560, h = 86;
  fill_rect(x + 8, y + 8, w, h, A_BLUE);
  fill_rect(x, y, w, h, A_PAPER);
  frame(x, y, w, h, 3, A_INK);
  vg_begin(); vg_text_wrap(VF_MEDIUM, 18, x + 18, y + 32, w - 36, 24, s); vg_fill(A_INK);
}
static Rect band_btn;
void art_band(const char *const *keys, const char *const *acts, int n, const char *right, bool right_button) {
  float x = 40, y = 778;
  for (int i = 0; i < n; i++) {
    atext(VF_SLAB, 21, x, y, A_SUN, keys[i]);
    x += vg_text_w(VF_SLAB, 21, keys[i]) + 8;
    atext(VF_BOLD, 16, x, y, A_PAPER, acts[i]);
    x += vg_text_w(VF_BOLD, 16, acts[i]) + 28;
  }
  band_btn = (Rect){0, 0, 0, 0};
  if (right) {
    float rw = vg_text_w(VF_BOLD, 16, right);
    if (right_button) {
      float bx = 1240 - rw - 24, by = 756;
      slab(bx, by, rw + 24, 30, 6, A_SUN);
      atext(VF_BOLD, 16, bx + 12, y, A_INK, right);
      band_btn = art_dev(bx, by, rw + 24, 30);
    } else atext_r(VF_MEDIUM, 16, 1240, y, A_PAPER, right);
  }
}
Rect art_band_button(void) { return band_btn; }

void art_text(int f, float size, float x, float y, u32 c, const char *s) { atext(f, size, x, y, c, s); }
void art_select(float x, float y, float w, float h) {
  slab(x + 6, y + 4, w, h - 2, h * 0.28f, A_RED);
  slab(x, y, w, h - 2, h * 0.28f, A_INK);
}
void art_note(Rect m, const char *s) {
  (void)m;
  atext_c(VF_BOLD, 22, MON_X + MON_W / 2, MON_Y + MON_H / 2 + 8, A_PAPER, s);
}

// ---- controls page
void art_columns(const char *a, const char *b, const char *c, float y, float x1, float x2) {
  atext(VF_SLAB, 22, ART_LIST_X + 14, y, A_INK, a);
  atext(VF_SLAB, 22, x1, y, A_INK, b);
  atext(VF_SLAB, 22, x2, y, A_INK, c);
}
void art_cell(float x, float y, float w, float h, const char *s, bool active, bool waiting) {
  if (active || waiting) {
    fill_rect(x - 8, y + 2, w, h - 4, A_SUN);
    frame(x - 8, y + 2, w, h - 4, 2, A_INK);
  }
  float fs = h * 0.6f > 18 ? 18 : h * 0.6f;
  atext(VF_BOLD, fs, x, y + h * 0.5f + fs * 0.36f, waiting || active ? A_INK : A_INK, s);
}

// ---- in game
void art_osd(u32 *px, int w, int h, float sc, const char *msg, const char *fps) {
  vg_target(px, w, h);
  vg_reset(); vg_scale(sc, sc);
  float y = 8;
  if (msg) {
    float tw = vg_text_w(VF_BOLD, 20, msg);
    slab(14, y + 4, tw + 36, 36, 8, A_RED);
    slab(8, y, tw + 36, 36, 8, A_INK);
    atext(VF_BOLD, 20, 24, y + 25, A_PAPER, msg);
    y += 48;
  }
  if (fps) {
    float tw = vg_text_w(VF_SLAB, 20, fps);
    fill_rect(8, y, tw + 20, 30, A_SUN);
    frame(8, y, tw + 20, 30, 2, A_INK);
    atext(VF_SLAB, 20, 18, y + 23, A_INK, fps);
  }
}
void art_caption_size(float sc, const char *s, int *w, int *h) {
  *w = (int)ceilf((vg_text_w(VF_MEDIUM, 16, s) + 40) * sc); *h = (int)ceilf(36 * sc);
}
void art_caption(u32 *px, int w, int h, float sc, const char *s) {
  vg_target(px, w, h);
  vg_reset(); vg_scale(sc, sc);
  float tw = vg_text_w(VF_MEDIUM, 16, s);
  slab(4, 3, tw + 30, 28, 6, A_INK);
  atext(VF_MEDIUM, 16, 18, 23, A_PAPER, s);
}
