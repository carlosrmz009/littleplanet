#define Rect MacRect
#include <CoreText/CoreText.h>
#include <CoreGraphics/CoreGraphics.h>
#undef Rect
#include "../gfx.h"
#include <SDL.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

struct GfxFont { CTFontRef f; int ascent, height; };
uint32_t *canvas; int cw, ch;
HFONT f_title, f_item, f_small, f_tab;
static CGContextRef ctx;
static CGColorSpaceRef rgb;

void sdl_icon(SDL_Window *w) { (void)w; }
int font_height(HFONT f) { return f->height; }

static CTFontRef try_font(const char *name, double size, bool italic) {
  CGAffineTransform m = CGAffineTransformMake(1, 0, italic ? 0.21 : 0, 1, 0, 0);
  CFStringRef n = CFStringCreateWithCString(NULL, name, kCFStringEncodingUTF8);
  CTFontRef f = CTFontCreateWithName(n, size, &m);
  CFStringRef got = CTFontCopyPostScriptName(f);
  bool ok = CFStringCompare(got, n, 0) == kCFCompareEqualTo;
  CFRelease(got); CFRelease(n);
  if (!ok) { CFRelease(f); return NULL; }
  return f;
}

static HFONT font(const char *name, const char *alt, double size, bool italic) {
  HFONT h = calloc(1, sizeof *h);
  h->f = try_font(name, size, italic);
  if (!h->f) h->f = try_font(alt, size, italic);
  if (!h->f) h->f = CTFontCreateWithName(CFSTR("Helvetica-Bold"), size, NULL);
  h->ascent = (int)lround(CTFontGetAscent(h->f));
  h->height = (int)ceil(CTFontGetAscent(h->f) + CTFontGetDescent(h->f));
  return h;
}

void gfx_canvas(int w, int h) {
  if (w == cw && h == ch && canvas) return;
  if (!rgb) {
    rgb = CGColorSpaceCreateDeviceRGB();
    f_title = font("Arial-Black", "Helvetica-Bold", 22, true);
    f_item = font("Tahoma-Bold", "Verdana-Bold", 11, false);
    f_small = font("Tahoma", "Verdana", 11, true);
    f_tab = font("Tahoma-Bold", "Verdana-Bold", 9, false);
  }
  if (ctx) CGContextRelease(ctx);
  free(canvas);
  canvas = calloc((size_t)w * h, 4);
  cw = w; ch = h;
  ctx = CGBitmapContextCreate(canvas, w, h, 8, (size_t)w * 4, rgb, kCGImageAlphaNoneSkipFirst | kCGBitmapByteOrder32Little);
  CGContextSetShouldAntialias(ctx, false);
  CGContextSetAllowsAntialiasing(ctx, false);
  CGContextSetShouldSmoothFonts(ctx, false);
  CGContextSetShouldSubpixelPositionFonts(ctx, false);
  CGContextSetShouldSubpixelQuantizeFonts(ctx, false);
  CGContextSetTextMatrix(ctx, CGAffineTransformIdentity);
}

static CTLineRef line(HFONT f, const char *s) {
  CFStringRef str = CFStringCreateWithCString(NULL, s, kCFStringEncodingUTF8);
  if (!str) str = CFStringCreateWithCString(NULL, s, kCFStringEncodingWindowsLatin1);
  const void *keys[] = { kCTFontAttributeName, kCTForegroundColorFromContextAttributeName };
  const void *vals[] = { f->f, kCFBooleanTrue };
  CFDictionaryRef attr = CFDictionaryCreate(NULL, keys, vals, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFAttributedStringRef as = CFAttributedStringCreate(NULL, str, attr);
  CTLineRef l = CTLineCreateWithAttributedString(as);
  CFRelease(as); CFRelease(attr); CFRelease(str);
  return l;
}

void text(int x, int y, HFONT f, COLORREF c, const char *s) {
  if (!*s) return;
  CTLineRef l = line(f, s);
  CGContextSetRGBFillColor(ctx, (c & 255) / 255.0, ((c >> 8) & 255) / 255.0, ((c >> 16) & 255) / 255.0, 1);
  CGContextSetTextPosition(ctx, x, ch - y - f->ascent);
  CTLineDraw(l, ctx);
  CFRelease(l);
}

int text_w(HFONT f, const char *s) {
  if (!*s) return 0;
  CTLineRef l = line(f, s);
  int w = (int)lround(CTLineGetTypographicBounds(l, NULL, NULL, NULL));
  CFRelease(l);
  return w;
}
