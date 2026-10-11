// Vector renderer for the launcher (see vg.h).
//
// Filling accumulates each edge's exact signed area into a coverage buffer over the shape's bounding box,
// then sums along each row (the font-rs method); |sum| clamped to 1 is the pixel's coverage. Shapes that
// overlap in the same fill merge, holes in glyphs cancel by their opposite winding.
#include "vg.h"
#include <math.h>
#define STBTT_STATIC
#define STB_TRUETYPE_IMPLEMENTATION
#if defined(__GNUC__)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-function"
#endif
#include "../third_party/stb/stb_truetype.h"
#if defined(__GNUC__)
#pragma GCC diagnostic pop
#endif

extern const unsigned char *const vg_font_data[VF_COUNT];   // build/gen/ui_fonts.c (tools/embed_fonts.py)
extern const unsigned vg_font_size[VF_COUNT];

static u32 *pix; static int pw, ph;
static int sp;
void vg_target(u32 *px, int w, int h) { pix = px; pw = w; ph = h; sp = 0; }
void vg_clear(u32 c) { for (int i = 0; i < pw * ph; i++) pix[i] = c; }

// ---- transform
typedef struct { float a, b, c, d, e, f; } M;   // x' = a x + c y + e, y' = b x + d y + f
static M m = {1, 0, 0, 1, 0, 0}, stack[16];
void vg_reset(void) { m = (M){1, 0, 0, 1, 0, 0}; }
void vg_push(void) { if (sp < 16) stack[sp++] = m; }
void vg_pop(void) { if (sp) m = stack[--sp]; }
static void mul(M n) {   // m = m * n
  M r = { m.a * n.a + m.c * n.b, m.b * n.a + m.d * n.b, m.a * n.c + m.c * n.d, m.b * n.c + m.d * n.d,
          m.a * n.e + m.c * n.f + m.e, m.b * n.e + m.d * n.f + m.f };
  m = r;
}
void vg_translate(float x, float y) { mul((M){1, 0, 0, 1, x, y}); }
void vg_scale(float sx, float sy) { mul((M){sx, 0, 0, sy, 0, 0}); }
void vg_rotate(float deg) { float r = deg * 3.14159265f / 180, c = cosf(r), s = sinf(r); mul((M){c, s, -s, c, 0, 0}); }
void vg_skewx(float deg) { mul((M){1, 0, tanf(deg * 3.14159265f / 180), 1, 0, 0}); }
static void xf(float x, float y, float *ox, float *oy) { *ox = m.a * x + m.c * y + m.e; *oy = m.b * x + m.d * y + m.f; }
static float xf_scale(void) { return sqrtf(fabsf(m.a * m.d - m.b * m.c)); }

// ---- path: device-space points, contours closed implicitly
static float *pts; static int npts, cap;
static int *starts; static int ncont, ccap;
static float cx_, cy_;   // current point (user space)
static void addp(float x, float y) {
  if (npts == cap) { cap = cap ? cap * 2 : 4096; pts = realloc(pts, cap * 2 * sizeof *pts); }
  xf(x, y, &pts[npts * 2], &pts[npts * 2 + 1]); npts++;
}
void vg_begin(void) { npts = 0; ncont = 0; }
void vg_move(float x, float y) {
  if (ncont == ccap) { ccap = ccap ? ccap * 2 : 256; starts = realloc(starts, ccap * sizeof *starts); }
  starts[ncont++] = npts; addp(x, y); cx_ = x; cy_ = y;
}
void vg_line(float x, float y) { addp(x, y); cx_ = x; cy_ = y; }
void vg_quad(float qx, float qy, float x, float y) {
  float d = (fabsf(qx - cx_) + fabsf(qy - cy_) + fabsf(x - qx) + fabsf(y - qy)) * xf_scale();
  int n = d < 2 ? 1 : d < 64 ? (int)(d / 3) + 2 : 24;
  float x0 = cx_, y0 = cy_;
  for (int i = 1; i <= n; i++) {
    float t = (float)i / n, u = 1 - t;
    addp(u * u * x0 + 2 * u * t * qx + t * t * x, u * u * y0 + 2 * u * t * qy + t * t * y);
  }
  cx_ = x; cy_ = y;
}
void vg_close(void) {}

// shapes go in with positive device-space area, so overlapping ones merge instead of cancelling
static void fix_winding(int from) {
  float a = 0;
  for (int i = from; i < npts; i++) {
    int j = i + 1 < npts ? i + 1 : from;
    a += pts[i * 2] * pts[j * 2 + 1] - pts[j * 2] * pts[i * 2 + 1];
  }
  if (a < 0)
    for (int i = from, j = npts - 1; i < j; i++, j--) {
      float tx = pts[i * 2], ty = pts[i * 2 + 1];
      pts[i * 2] = pts[j * 2]; pts[i * 2 + 1] = pts[j * 2 + 1]; pts[j * 2] = tx; pts[j * 2 + 1] = ty;
    }
}
void vg_poly(const float *xy, int n) {
  vg_move(xy[0], xy[1]);
  int from = npts - 1;
  for (int i = 1; i < n; i++) vg_line(xy[i * 2], xy[i * 2 + 1]);
  fix_winding(from);
}
void vg_rect(float x, float y, float w, float h) { float p[8] = {x, y, x + w, y, x + w, y + h, x, y + h}; vg_poly(p, 4); }
void vg_circle(float cx, float cy, float r) {
  int n = (int)(r * xf_scale() * 0.6f) + 12;
  if (n > 160) n = 160;
  vg_move(cx + r, cy);
  int from = npts - 1;
  for (int i = 1; i < n; i++) { float a = 6.2831853f * i / n; vg_line(cx + r * cosf(a), cy + r * sinf(a)); }
  fix_winding(from);
}
void vg_ring(float cx, float cy, float r, float w) {   // even-odd by construction: outer CCW, inner CW
  int n = (int)(r * xf_scale() * 0.6f) + 12;
  if (n > 160) n = 160;
  vg_move(cx + r, cy);
  int from = npts - 1;
  for (int i = 1; i < n; i++) { float a = 6.2831853f * i / n; vg_line(cx + r * cosf(a), cy + r * sinf(a)); }
  fix_winding(from);
  float ri = r - w;
  vg_move(cx + ri, cy);
  from = npts - 1;
  for (int i = 1; i < n; i++) { float a = 6.2831853f * i / n; vg_line(cx + ri * cosf(a), cy + ri * sinf(a)); }
  fix_winding(from);
  for (int i = from, j = npts - 1; i < j; i++, j--) {   // reverse: a hole
    float tx = pts[i * 2], ty = pts[i * 2 + 1];
    pts[i * 2] = pts[j * 2]; pts[i * 2 + 1] = pts[j * 2 + 1]; pts[j * 2] = tx; pts[j * 2 + 1] = ty;
  }
}
void vg_stroke(const float *xy, int n, float w, bool closed) {
  float h = w / 2;
  int segs = closed ? n : n - 1;
  for (int i = 0; i < segs; i++) {
    float x0 = xy[i * 2], y0 = xy[i * 2 + 1], x1 = xy[(i + 1) % n * 2], y1 = xy[(i + 1) % n * 2 + 1];
    float dx = x1 - x0, dy = y1 - y0, l = sqrtf(dx * dx + dy * dy);
    if (l < 1e-4f) continue;
    float nx = -dy / l * h, ny = dx / l * h;
    float q[8] = {x0 + nx, y0 + ny, x1 + nx, y1 + ny, x1 - nx, y1 - ny, x0 - nx, y0 - ny};
    vg_poly(q, 4);
  }
  for (int i = 0; i < n; i++) vg_circle(xy[i * 2], xy[i * 2 + 1], h);
}

// ---- fill
static float *acc; static size_t acc_cap;
static int bx0, by0, bw, bh;

static void edge(float x0, float y0, float x1, float y1) {
  if (y0 == y1) return;
  float dir = 1;
  if (y0 > y1) { dir = -1; float t = x0; x0 = x1; x1 = t; t = y0; y0 = y1; y1 = t; }
  float dxdy = (x1 - x0) / (y1 - y0), x = x0;
  if (y0 < 0) { x -= y0 * dxdy; y0 = 0; }
  if (y1 > bh) y1 = (float)bh;
  for (int y = (int)y0; y < bh && y < y1; y++) {
    float yy0 = y > y0 ? y : y0, yy1 = y + 1 < y1 ? y + 1 : y1, dy = yy1 - yy0;
    if (dy <= 0) continue;
    float xn = x + dxdy * dy, d = dy * dir;
    float xa = x < xn ? x : xn, xb = x < xn ? xn : x;
    if (xa < 0) xa = 0;
    if (xb < 0) xb = 0;
    if (xa > bw) xa = (float)bw;
    if (xb > bw) xb = (float)bw;
    float *row = acc + (size_t)y * (bw + 2);
    float xaf = floorf(xa); int xai = (int)xaf;
    float xbc = ceilf(xb); int xbi = (int)xbc;
    if (xbi <= xai + 1) {
      float xm = 0.5f * (xa + xb) - xaf;
      row[xai] += d - d * xm;
      row[xai + 1] += d * xm;
    } else {
      float s = 1 / (xb - xa), f0 = xa - xaf, a0 = 0.5f * s * (1 - f0) * (1 - f0);
      float f1 = xb - xbc + 1, am = 0.5f * s * f1 * f1;
      row[xai] += d * a0;
      if (xbi == xai + 2) row[xai + 1] += d * (1 - a0 - am);
      else {
        float a1 = s * (1.5f - f0);
        row[xai + 1] += d * (a1 - a0);
        for (int k = xai + 2; k < xbi - 1; k++) row[k] += d * s;
        float a2 = a1 + (xbi - xai - 3) * s;
        row[xbi - 1] += d * (1 - a2 - am);
      }
      row[xbi] += d * am;
    }
    x = xn;
  }
}

void vg_fill(u32 color) {
  if (!npts || !pix) return;
  float minx = 1e30f, miny = 1e30f, maxx = -1e30f, maxy = -1e30f;
  for (int i = 0; i < npts; i++) {
    float x = pts[i * 2], y = pts[i * 2 + 1];
    if (x < minx) minx = x;
    if (x > maxx) maxx = x;
    if (y < miny) miny = y;
    if (y > maxy) maxy = y;
  }
  bx0 = (int)floorf(minx); by0 = (int)floorf(miny);
  int bx1 = (int)ceilf(maxx) + 1, by1 = (int)ceilf(maxy) + 1;
  if (bx0 < 0) bx0 = 0;
  if (by0 < 0) by0 = 0;
  if (bx1 > pw) bx1 = pw;
  if (by1 > ph) by1 = ph;
  bw = bx1 - bx0; bh = by1 - by0;
  if (bw <= 0 || bh <= 0) { vg_begin(); return; }
  size_t need = (size_t)(bw + 2) * bh;
  if (need > acc_cap) { free(acc); acc_cap = need; acc = malloc(need * sizeof *acc); }
  memset(acc, 0, need * sizeof *acc);
  for (int c = 0; c < ncont; c++) {
    int s = starts[c], e = c + 1 < ncont ? starts[c + 1] : npts;
    for (int i = s; i < e; i++) {
      int j = i + 1 < e ? i + 1 : s;
      edge(pts[i * 2] - bx0, pts[i * 2 + 1] - by0, pts[j * 2] - bx0, pts[j * 2 + 1] - by0);
    }
  }
  u32 ca = color >> 24, cr = (color >> 16) & 255, cg = (color >> 8) & 255, cb = color & 255;
  for (int y = 0; y < bh; y++) {
    float sum = 0, *row = acc + (size_t)y * (bw + 2);
    u32 *o = pix + (size_t)(by0 + y) * pw + bx0;
    for (int x = 0; x < bw; x++) {
      sum += row[x];
      float cov = fabsf(sum);
      if (cov < 0.002f) continue;
      u32 a = cov >= 1 ? ca : (u32)(cov * ca + 0.5f);
      if (!a) continue;
      u32 p = o[x], da = p >> 24;
      if (a >= 255) { o[x] = 0xff000000 | (color & 0xffffff); continue; }
      u32 na = 255 - a;
      if (da == 255) {   // onto an opaque picture
        u32 r = (cr * a + ((p >> 16) & 255) * na + 127) / 255, g = (cg * a + ((p >> 8) & 255) * na + 127) / 255,
            b = (cb * a + (p & 255) * na + 127) / 255;
        o[x] = 0xff000000 | r << 16 | g << 8 | b;
      } else {           // onto a transparent overlay: "over" with straight alpha
        u32 oa = a + da * na / 255;
        if (!oa) continue;
        u32 r = (cr * a + ((p >> 16) & 255) * da * na / 255) / oa, g = (cg * a + ((p >> 8) & 255) * da * na / 255) / oa,
            b = (cb * a + (p & 255) * da * na / 255) / oa;
        o[x] = oa << 24 | r << 16 | g << 8 | b;
      }
    }
  }
  vg_begin();
}

// ---- text
static stbtt_fontinfo fonts[VF_COUNT]; static bool font_ok[VF_COUNT], fonts_init;
static void init_fonts(void) {
  if (fonts_init) return;
  fonts_init = true;
  for (int i = 0; i < VF_COUNT; i++)
    font_ok[i] = vg_font_size[i] && stbtt_InitFont(&fonts[i], vg_font_data[i], 0);
}
static int utf8(const char **s) {
  const unsigned char *p = (const unsigned char *)*s;
  int c = *p++;
  if (c >= 0xf0 && p[0] && p[1] && p[2]) { c = (c & 7) << 18 | (p[0] & 63) << 12 | (p[1] & 63) << 6 | (p[2] & 63); p += 3; }
  else if (c >= 0xe0 && p[0] && p[1]) { c = (c & 15) << 12 | (p[0] & 63) << 6 | (p[1] & 63); p += 2; }
  else if (c >= 0xc0 && p[0]) { c = (c & 31) << 6 | (p[0] & 63); p += 1; }
  *s = (const char *)p;
  return c;
}
// glyphs missing from a font (katakana in Archivo, Latin in the kana subset) come from the other
static stbtt_fontinfo *face_for(int font, int cp, int *glyph, float *sc, float size) {
  init_fonts();
  int order[2] = {font, cp >= 0x3000 ? VF_KANA : VF_BOLD};
  for (int k = 0; k < 2; k++) {
    int f = order[k];
    if (!font_ok[f]) continue;
    int g = stbtt_FindGlyphIndex(&fonts[f], cp);
    if (g || k == 1) { *glyph = g; *sc = stbtt_ScaleForPixelHeight(&fonts[f], size); return &fonts[f]; }
  }
  return NULL;
}
static float run(int font, float size, float x, float y, const char *s, bool draw) {
  float pen = 0; int prev = -1; stbtt_fontinfo *pf = NULL;
  while (*s) {
    int cp = utf8(&s), g; float sc;
    stbtt_fontinfo *f = face_for(font, cp, &g, &sc, size);
    if (!f) continue;
    if (prev >= 0 && pf == f) pen += sc * stbtt_GetGlyphKernAdvance(f, prev, g);
    if (draw) {
      stbtt_vertex *v; int nv = stbtt_GetGlyphShape(f, g, &v);
      for (int i = 0; i < nv; i++) {
        float px_ = x + pen + v[i].x * sc, py_ = y - v[i].y * sc;
        if (v[i].type == STBTT_vmove) vg_move(px_, py_);
        else if (v[i].type == STBTT_vline) vg_line(px_, py_);
        else if (v[i].type == STBTT_vcurve) vg_quad(x + pen + v[i].cx * sc, y - v[i].cy * sc, px_, py_);
        else vg_line(px_, py_);
      }
      stbtt_FreeShape(f, v);
    }
    int adv, lsb; stbtt_GetGlyphHMetrics(f, g, &adv, &lsb);
    pen += adv * sc; prev = g; pf = f;
  }
  return pen;
}
float vg_text(int font, float size, float x, float y, const char *s) { return run(font, size, x, y, s, true); }
float vg_text_w(int font, float size, const char *s) { return run(font, size, 0, 0, s, false); }
float vg_ascent(int font, float size) {
  init_fonts();
  if (!font_ok[font]) return size * 0.75f;
  int a, d, l; stbtt_GetFontVMetrics(&fonts[font], &a, &d, &l);
  return a * stbtt_ScaleForPixelHeight(&fonts[font], size);
}
float vg_text_wrap(int font, float size, float x, float y, float w, float leading, const char *s) {
  char line[512]; float yy = y;
  while (*s) {
    int n = 0, best = 0;
    for (;;) {   // longest run of words that fits
      int k = n;
      while (s[k] == ' ') k++;
      while (s[k] && s[k] != ' ') k++;
      if (k >= (int)sizeof line - 1) break;
      memcpy(line, s, k); line[k] = 0;
      if (best && vg_text_w(font, size, line) > w) break;
      best = n = k;
      if (!s[k]) break;
    }
    if (!best) best = (int)strlen(s) < (int)sizeof line - 1 ? (int)strlen(s) : (int)sizeof line - 1;
    memcpy(line, s, best); line[best] = 0;
    vg_text(font, size, x, yy, line);
    s += best;
    while (*s == ' ') s++;
    yy += leading;
  }
  return yy - y;
}
