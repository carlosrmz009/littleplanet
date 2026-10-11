#include "gfx.h"
#include "vg.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int gfx_key, gfx_mx = -1, gfx_my = -1;
bool gfx_click, gfx_moved;
static int focus, nwid, nwid_prev;

uint32_t *canvas; int cw, ch, gfx_pw, gfx_ph; float gfx_scale = 1;

void gfx_canvas(int w, int h, float scale) {
  int pw = (int)(w * scale + 0.5f), ph = (int)(h * scale + 0.5f);
  if (pw != gfx_pw || ph != gfx_ph || !canvas) { free(canvas); canvas = calloc((size_t)pw * ph, 4); }
  cw = w; ch = h; gfx_pw = pw; gfx_ph = ph; gfx_scale = scale;
}
static uint32_t argb(COLORREF c) { return 0xff000000u | (c & 255) << 16 | (c & 0xff00) | (c >> 16 & 255); }
static void page(void) { vg_target(canvas, gfx_pw, gfx_ph); vg_reset(); vg_scale(gfx_scale, gfx_scale); }

// logical sizes of the four faces, in units
static const int font_vg[4] = { VF_WORDMARK, VF_BOLD, VF_MEDIUM, VF_SLAB };
static const float font_px[4] = { 18, 10.5f, 9.5f, 11 };

void fill(int x, int y, int w, int h, COLORREF c) { page(); vg_begin(); vg_rect((float)x, (float)y, (float)w, (float)h); vg_fill(argb(c)); }
int font_height(GFont f) { return (int)(font_px[f] * 1.3f + 0.5f); }
void text(int x, int y, GFont f, COLORREF c, const char *s) {
  page(); vg_begin();
  vg_text(font_vg[f], font_px[f], (float)x, y + vg_ascent(font_vg[f], font_px[f]) * 0.9f + 1, s);
  vg_fill(argb(c));
}
int text_w(GFont f, const char *s) { return (int)(vg_text_w(font_vg[f], font_px[f], s) + 0.99f); }
void text_r(int xr, int y, GFont f, COLORREF c, const char *s) { text(xr - text_w(f, s), y, f, c, s); }
void text_wrap(Rect r, GFont f, COLORREF c, const char *s) {
  page(); vg_begin();
  vg_text_wrap(font_vg[f], font_px[f], (float)r.x, r.y + vg_ascent(font_vg[f], font_px[f]) * 0.9f + 1, (float)r.w, (float)font_height(f), s);
  vg_fill(argb(c));
}
void text_fit(int x, int y, int w, GFont f, COLORREF c, const char *s) {
  char b[1024];
  snprintf(b, sizeof b, "%s", s);
  const char *t = s;
  while (*t && text_w(f, b) > w) { t++; while ((*t & 0xc0) == 0x80) t++; snprintf(b, sizeof b, "...%s", t); }
  text(x, y, f, c, b);
}

// a card: paper with an ink edge, and for big ones a blue block printed off-register behind
void panel(int x, int y, int w, int h, COLORREF bg, COLORREF edge) {
  page();
  if (h > 30) { vg_begin(); vg_rect(x + 4.0f, y + 4.0f, (float)w, (float)h); vg_fill(0xff0b4fcf); }
  vg_begin(); vg_rect((float)x, (float)y, (float)w, (float)h); vg_fill(argb(edge));
  vg_begin(); vg_rect(x + 1.5f, y + 1.5f, w - 3.0f, h - 3.0f); vg_fill(argb(bg));
}
// a label: a black slab with white condensed type
void tab(int x, int y, const char *s) {
  page();
  float w = vg_text_w(VF_SLAB, 10, s) + 12, p[8] = {x + 3.0f, y - 2.0f, x + w + 3, y - 2.0f, x + w, y + 11.0f, (float)x, y + 11.0f};
  vg_begin(); vg_poly(p, 4); vg_fill(0xff000000);
  vg_begin(); vg_text(VF_SLAB, 10, x + 6.0f, y + 8.5f, s); vg_fill(0xffffffff);
}
void sparkle(int cx, int cy) {   // focus marker: a small red triangle pointing at the control
  page();
  float p[6] = {cx - 3.0f, cy - 3.5f, cx + 2.5f, (float)cy, cx - 3.0f, cy + 3.5f};
  vg_begin(); vg_poly(p, 3); vg_fill(0xffe4202a);
}
// the paper: a corner of the sun behind the logo, a little confetti, the black sawtooth band at the bottom
void stars(void) {
  page();
  vg_begin(); vg_circle(34, 4, 40); vg_fill(0xffffdd00);
  float sq[2 * 25];
  for (int i = 0; i < 25; i++) { float t = i / 24.0f; sq[i * 2] = cw - 70 + t * 34; sq[i * 2 + 1] = 12 + sinf(t * 2.5f * 6.2832f) * 3; }
  vg_begin(); vg_stroke(sq, 25, 1.6f, false); vg_fill(0xff000000);
  vg_begin(); for (int i = 0; i < 4; i++) vg_rect(cw - 24.0f + i * 5, 22, 3, 3); vg_fill(0xff000000);
  vg_begin();
  vg_rect(0, ch - 4.0f, (float)cw, 4);
  for (float x = 0; x < cw; x += 8) { float t[6] = {x, ch - 3.5f, x + 4, ch - 8.0f, x + 8, ch - 3.5f}; vg_poly(t, 3); }
  vg_fill(0xff000000);
}
// the wordmark on its tilted slab, red copy behind
void logo(int x, int y) {
  page();
  float w = vg_text_w(VF_WORDMARK, 15, "LITTLE PLANET") + 18;
  vg_translate(x + w / 2, y + 14.0f); vg_rotate(-3); vg_translate(-(x + w / 2), -(y + 14.0f));
  float p[8] = {x + 4.0f, y + 2.0f, x + w + 4, y + 2.0f, x + w, y + 24.0f, (float)x, y + 24.0f};
  vg_push(); vg_translate(2.5f, 2.5f); vg_begin(); vg_poly(p, 4); vg_fill(0xffe4202a); vg_pop();
  vg_begin(); vg_poly(p, 4); vg_fill(0xff000000);
  vg_begin(); vg_text(VF_WORDMARK, 15, x + 9.0f, y + 19.0f, "LITTLE PLANET"); vg_fill(0xffffffff);
}

void gfx_begin(void) { focus = 0; nwid_prev = 0; }

int gfx_frame(int (*step)(void), bool shift) {
  if (nwid_prev) {
    if (gfx_key == VK_DOWN || gfx_key == VK_RIGHT || (gfx_key == VK_TAB && !shift)) focus = (focus + 1) % nwid_prev;
    if (gfx_key == VK_UP || gfx_key == VK_LEFT || (gfx_key == VK_TAB && shift)) focus = (focus + nwid_prev - 1) % nwid_prev;
  }
  nwid = 0;
  fill(0, 0, cw, ch, C_SPACE); stars();
  int prev = nwid_prev;
  int res = step();
  if (nwid != prev) focus = 0;
  nwid_prev = nwid; gfx_click = gfx_moved = false; gfx_key = 0;
  return res;
}

#ifdef _WIN32
HWND gfx_hwnd;
static HDC mdc; static HBITMAP dib; static uint32_t *dib_px;
static int gpx = 2;
static bool closed;

static LRESULT CALLBACK gwndproc(HWND h, UINT m, WPARAM wp, LPARAM lp) {
  switch (m) {
  case WM_CLOSE: closed = true; return 0;
  case WM_MOUSEMOVE: gfx_mx = (short)LOWORD(lp) / gpx; gfx_my = (short)HIWORD(lp) / gpx; gfx_moved = true; return 0;
  case WM_LBUTTONDOWN: gfx_click = true; return 0;
  case WM_KEYDOWN: gfx_key = (int)wp; return 0;
  }
  return DefWindowProcW(h, m, wp, lp);
}

int gfx_window(const wchar_t *title, int w, int h, int (*step)(void)) {
  HINSTANCE hi = GetModuleHandle(NULL);
  WNDCLASSW wc = { 0 }; wc.lpfnWndProc = gwndproc; wc.hInstance = hi; wc.lpszClassName = L"littleplanet_gfx";
  wc.hCursor = LoadCursor(NULL, IDC_ARROW); wc.hIcon = LoadIconW(hi, MAKEINTRESOURCEW(1));
  if (!wc.hIcon) wc.hIcon = LoadIcon(NULL, IDI_APPLICATION);
  RegisterClassW(&wc);
  int sw = GetSystemMetrics(SM_CXSCREEN), sh = GetSystemMetrics(SM_CYSCREEN);
  gpx = sh * 55 / 100 / h; if (gpx < 2) gpx = 2;
  DWORD st = WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX;
  RECT r = { 0, 0, w * gpx, h * gpx }; AdjustWindowRect(&r, st, FALSE);
  int ww = r.right - r.left, wh = r.bottom - r.top;
  gfx_hwnd = CreateWindowW(L"littleplanet_gfx", title, st, (sw - ww) / 2, (sh - wh) / 2, ww, wh, NULL, NULL, hi, NULL);
  gfx_canvas(w, h, (float)gpx);
  if (!mdc) mdc = CreateCompatibleDC(NULL);
  BITMAPINFO bi = { 0 }; bi.bmiHeader.biSize = sizeof bi.bmiHeader; bi.bmiHeader.biWidth = gfx_pw; bi.bmiHeader.biHeight = -gfx_ph;
  bi.bmiHeader.biPlanes = 1; bi.bmiHeader.biBitCount = 32;
  dib = CreateDIBSection(mdc, &bi, DIB_RGB_COLORS, (void **)&dib_px, NULL, 0);
  SelectObject(mdc, dib);
  ShowWindow(gfx_hwnd, SW_SHOW); SetForegroundWindow(gfx_hwnd);
  closed = false; gfx_begin();
  int res = 0;
  while (!res) {
    MSG msg; while (PeekMessageW(&msg, NULL, 0, 0, PM_REMOVE)) { TranslateMessage(&msg); DispatchMessageW(&msg); }
    if (closed) { res = -1; break; }
    res = gfx_frame(step, (GetKeyState(VK_SHIFT) & 0x8000) != 0);
    memcpy(dib_px, canvas, (size_t)gfx_pw * gfx_ph * 4);
    GdiFlush();
    HDC dc = GetDC(gfx_hwnd);
    BitBlt(dc, 0, 0, gfx_pw, gfx_ph, mdc, 0, 0, SRCCOPY);
    ReleaseDC(gfx_hwnd, dc);
    Sleep(16);
  }
  DestroyWindow(gfx_hwnd); gfx_hwnd = NULL;
  DeleteObject(dib); dib = NULL;
  return res;
}
#endif

static bool widget(int x, int y, int w, int h, bool *f) {
  int id = nwid++;
  bool hov = gfx_mx >= x && gfx_mx < x + w && gfx_my >= y && gfx_my < y + h;
  if (hov && gfx_moved) focus = id;
  *f = focus == id;
  return (gfx_click && hov) || (*f && (gfx_key == VK_RETURN || gfx_key == VK_SPACE));
}

// buttons: an ink outline at rest; focused, the black slab with its red copy, as in the launcher
bool gfx_button(int x, int y, int w, const char *label) {
  bool f, hit = widget(x, y, w, 15, &f);
  page();
  float p[8] = {x + 2.0f, (float)y, x + w + 2.0f, (float)y, (float)x + w, y + 15.0f, (float)x, y + 15.0f};
  if (f) {
    vg_push(); vg_translate(2.5f, 2); vg_begin(); vg_poly(p, 4); vg_fill(0xffe4202a); vg_pop();
    vg_begin(); vg_poly(p, 4); vg_fill(0xff000000);
  } else {
    vg_begin(); vg_poly(p, 4); vg_fill(0xff000000);
    float q[8] = {x + 3.4f, y + 1.4f, x + w + 0.6f, y + 1.4f, x + w - 1.4f, y + 13.6f, x + 1.4f, y + 13.6f};
    vg_begin(); vg_poly(q, 4); vg_fill(0xffffffff);
  }
  text(x + (w - text_w(f_item, label)) / 2 + 1, y + 1, f_item, f ? RGB(255, 255, 255) : C_TEXT, label);
  return hit;
}

bool gfx_check(int x, int y, const char *label, int *v) {
  bool f, hit = widget(x, y, 16 + text_w(f_item, label), 13, &f);
  if (f) sparkle(x - 6, y + 6);
  page();
  vg_begin(); vg_rect((float)x, y + 1.0f, 11, 11); vg_fill(0xff000000);
  vg_begin(); vg_rect(x + 1.5f, y + 2.5f, 8, 8); vg_fill(0xffffffff);
  if (*v) { vg_begin(); vg_rect(x + 3.0f, y + 4.0f, 5, 5); vg_fill(0xff000000); }
  text(x + 16, y, f_item, f ? C_SEL : C_TEXT, label);
  if (hit) *v = !*v;
  return hit;
}
