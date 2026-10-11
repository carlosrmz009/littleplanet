#pragma once
#include "types.h"

// Small vector renderer for the launcher: anti-aliased paths (exact area coverage), strokes, and text drawn
// from the embedded fonts' outlines, all through a 2D transform so slabs and type can be tilted.
// Draws into a 0xAARRGGBB buffer; colours are 0xAARRGGBB too.

enum { VF_WORDMARK, VF_SLAB, VF_BOLD, VF_MEDIUM, VF_KANA, VF_COUNT };   // Archivo Expanded Black, Condensed Black,
                                                                        // Bold, Medium; Dela Gothic One (kana)
void vg_target(u32 *px, int w, int h);
void vg_clear(u32 c);

// transform (applies to everything added after it)
void vg_reset(void);
void vg_push(void);
void vg_pop(void);
void vg_translate(float x, float y);
void vg_rotate(float deg);
void vg_scale(float sx, float sy);
void vg_skewx(float deg);

// paths: add shapes, then fill them all at once (overlaps merge)
void vg_begin(void);
void vg_move(float x, float y);
void vg_line(float x, float y);
void vg_quad(float cx, float cy, float x, float y);
void vg_close(void);
void vg_rect(float x, float y, float w, float h);
void vg_poly(const float *xy, int n);
void vg_circle(float cx, float cy, float r);
void vg_ring(float cx, float cy, float r, float width);
void vg_stroke(const float *xy, int n, float width, bool closed);   // round joins and caps
void vg_fill(u32 color);

// text: baseline at (x, y); UTF-8
float vg_text(int font, float size, float x, float y, const char *s);   // adds the outlines, returns the advance
float vg_text_w(int font, float size, const char *s);
float vg_ascent(int font, float size);
// word-wrapped text in a column: adds the outlines, returns the height used
float vg_text_wrap(int font, float size, float x, float y, float w, float leading, const char *s);
