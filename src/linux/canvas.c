#include "../gfx.h"
#include <ft2build.h>
#include FT_FREETYPE_H
#include <stdlib.h>
#include <string.h>

typedef struct { unsigned char *bits; int w, h, pitch, left, top; long adv; bool ok; } Glyph;
struct GfxFont { FT_Face face; int px, ascent, height; Glyph g[256]; };
uint32_t *canvas; int cw, ch;
HFONT f_title, f_item, f_small, f_tab;
extern const unsigned char font_bold[], font_oblique[], font_logo[];
extern const unsigned font_bold_len, font_oblique_len, font_logo_len;
static FT_Library lib;

static HFONT font(const unsigned char *data, unsigned len, int px) {
  HFONT f = calloc(1, sizeof *f);
  f->px = px;
  if (!lib || FT_New_Memory_Face(lib, data, len, 0, &f->face) || FT_Set_Pixel_Sizes(f->face, 0, px)) { f->face = NULL; f->ascent = f->height = px; return f; }
  f->ascent = (int)(f->face->size->metrics.ascender >> 6);
  f->height = (int)((f->face->size->metrics.ascender - f->face->size->metrics.descender) >> 6);
  return f;
}

static bool load(HFONT f, unsigned c, Glyph *g) {
  if (!f->face || FT_Load_Char(f->face, c, FT_LOAD_RENDER | FT_LOAD_TARGET_MONO)) return false;
  FT_GlyphSlot s = f->face->glyph;
  if (s->bitmap.pixel_mode != FT_PIXEL_MODE_MONO && s->bitmap.rows) return false;
  g->w = (int)s->bitmap.width; g->h = (int)s->bitmap.rows; g->pitch = s->bitmap.pitch < 0 ? -s->bitmap.pitch : s->bitmap.pitch;
  g->left = s->bitmap_left; g->top = s->bitmap_top; g->adv = (s->advance.x + 32) >> 6 << 16;
  if (c == ' ' && g->adv < (f->px + 2) / 3 * 65536L) g->adv = (f->px + 2) / 3 * 65536L;
  free(g->bits);
  g->bits = malloc((size_t)g->pitch * g->h + 1);
  if (g->h) memcpy(g->bits, s->bitmap.buffer, (size_t)g->pitch * g->h);
  return g->ok = true;
}

static Glyph *glyph(HFONT f, unsigned c) {
  static Glyph tmp;
  if (c < 256) return f->g[c].ok || load(f, c, &f->g[c]) ? &f->g[c] : NULL;
  return load(f, c, &tmp) ? &tmp : NULL;
}

static unsigned next(const unsigned char **s) {
  unsigned c = *(*s)++;
  if (c < 0xc0 || c >= 0xf8) return c;
  int n = c >= 0xf0 ? 3 : c >= 0xe0 ? 2 : 1;
  unsigned cp = c & (0x3f >> n);
  for (; n && (**s & 0xc0) == 0x80; n--) cp = cp << 6 | (*(*s)++ & 0x3f);
  return n ? '?' : cp;
}

void gfx_canvas(int w, int h) {
  if (w == cw && h == ch && canvas) return;
  if (!f_title) {
    FT_Init_FreeType(&lib);
    f_title = font(font_logo, font_logo_len, 22);
    f_item = font(font_bold, font_bold_len, 11);
    f_small = font(font_oblique, font_oblique_len, 11);
    f_tab = font(font_bold, font_bold_len, 9);
  }
  free(canvas);
  canvas = calloc((size_t)w * h, 4);
  cw = w; ch = h;
}

int font_height(HFONT f) { return f->height; }

void text(int x, int y, HFONT f, COLORREF c, const char *s) {
  uint32_t p = (c & 255) << 16 | (c & 0xff00) | (c >> 16 & 255);
  long pen = 0;
  for (const unsigned char *u = (const unsigned char *)s; *u;) {
    Glyph *g = glyph(f, next(&u));
    if (!g) continue;
    int gx = x + (int)((pen + 32768) >> 16);
    for (int j = 0; j < g->h; j++) {
      int py = y + f->ascent - g->top + j;
      if (py < 0 || py >= ch) continue;
      for (int i = 0; i < g->w; i++) {
        int px = gx + g->left + i;
        if (px >= 0 && px < cw && (g->bits[j * g->pitch + (i >> 3)] & (0x80 >> (i & 7)))) canvas[py * cw + px] = p;
      }
    }
    pen += g->adv;
  }
}

int text_w(HFONT f, const char *s) {
  long w = 0;
  for (const unsigned char *u = (const unsigned char *)s; *u;) { Glyph *g = glyph(f, next(&u)); if (g) w += g->adv; }
  return (int)((w + 32768) >> 16);
}
