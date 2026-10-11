#pragma once
#ifdef _WIN32
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#include <windows.h>
#else
#include "sdl/compat.h"
#endif
#include <stdint.h>
#include <stdbool.h>

typedef struct { int x, y, w, h; } Rect;

// colours by role (COLORREF, as RGB() makes them), in the launcher's box-art palette (ui_art.h)
#define C_SPACE RGB(255, 255, 255)   // paper
#define C_PANEL RGB(255, 255, 255)
#define C_EDGE RGB(0, 0, 0)
#define C_INSET RGB(238, 238, 238)   // fields
#define C_ROW RGB(0, 0, 0)
#define C_TAB RGB(255, 221, 0)
#define C_TEXT RGB(0, 0, 0)
#define C_DIM RGB(96, 96, 96)
#define C_SEL RGB(228, 32, 42)
#define C_LCD RGB(11, 79, 207)       // values: paths, progress

// Small windows (installers, disc picker) laid out in logical units; the canvas is the window's real size
// and everything is drawn scaled by gfx_scale with the launcher's renderer (vg.c) and fonts.
typedef int GFont;
enum { GF_TITLE, GF_ITEM, GF_SMALL, GF_TAB };
extern uint32_t *canvas; extern int cw, ch;   // canvas: gfx_pw x gfx_ph pixels; cw, ch: the logical size
extern int gfx_pw, gfx_ph; extern float gfx_scale;
#define f_title GF_TITLE
#define f_item GF_ITEM
#define f_small GF_SMALL
#define f_tab GF_TAB
void gfx_canvas(int w, int h, float scale);   // logical size, pixels per unit
void fill(int x, int y, int w, int h, COLORREF c);
void text(int x, int y, GFont f, COLORREF c, const char *s);
int text_w(GFont f, const char *s);
void text_r(int xr, int y, GFont f, COLORREF c, const char *s);
void text_wrap(Rect r, GFont f, COLORREF c, const char *s);
void text_fit(int x, int y, int w, GFont f, COLORREF c, const char *s);   // keeps the end, "..." in front
int font_height(GFont f);
void panel(int x, int y, int w, int h, COLORREF bg, COLORREF edge);
void tab(int x, int y, const char *s);
void sparkle(int cx, int cy);
void stars(void);
void logo(int x, int y);

#ifdef _WIN32
extern HWND gfx_hwnd;
#else
extern char gfx_drop[1024];
int plat_pick(bool dir, char *out, int n);
#endif
extern int gfx_key, gfx_mx, gfx_my;
extern bool gfx_click, gfx_moved;
void gfx_begin(void);
int gfx_frame(int (*step)(void), bool shift);
int gfx_window(const wchar_t *title, int w, int h, int (*step)(void));
bool gfx_button(int x, int y, int w, const char *label);
bool gfx_check(int x, int y, const char *label, int *v);
