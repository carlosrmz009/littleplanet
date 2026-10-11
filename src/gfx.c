#include "gfx.h"
#include <string.h>

int gfx_key, gfx_mx = -1, gfx_my = -1;
bool gfx_click, gfx_moved;
static int focus, nwid, nwid_prev;

#ifdef _WIN32
HDC mdc; uint32_t *canvas; int cw, ch;
HFONT f_title, f_item, f_small, f_tab;
static HBITMAP dib;

void gfx_canvas(int w, int h) {
  if (w == cw && h == ch && canvas) return;
  if (dib) DeleteObject(dib);
  if (!mdc) {
    mdc = CreateCompatibleDC(NULL);
    f_title = CreateFontA(-22, 0, 0, 0, FW_BLACK, TRUE, 0, 0, 0, 0, 0, NONANTIALIASED_QUALITY, 0, "Arial Black");
    f_item = CreateFontA(-11, 0, 0, 0, FW_BOLD, 0, 0, 0, 0, 0, 0, NONANTIALIASED_QUALITY, 0, "Tahoma");
    f_small = CreateFontA(-11, 0, 0, 0, FW_NORMAL, TRUE, 0, 0, 0, 0, 0, NONANTIALIASED_QUALITY, 0, "Tahoma");
    f_tab = CreateFontA(-9, 0, 0, 0, FW_BOLD, 0, 0, 0, 0, 0, 0, NONANTIALIASED_QUALITY, 0, "Tahoma");
  }
  BITMAPINFO bi = { 0 }; bi.bmiHeader.biSize = sizeof bi.bmiHeader; bi.bmiHeader.biWidth = w; bi.bmiHeader.biHeight = -h;
  bi.bmiHeader.biPlanes = 1; bi.bmiHeader.biBitCount = 32;
  dib = CreateDIBSection(mdc, &bi, DIB_RGB_COLORS, (void **)&canvas, NULL, 0);
  SelectObject(mdc, dib);
  cw = w; ch = h;
  SetBkMode(mdc, TRANSPARENT);
}

void fill(int x, int y, int w, int h, COLORREF c) { RECT r = { x, y, x + w, y + h }; HBRUSH b = CreateSolidBrush(c); FillRect(mdc, &r, b); DeleteObject(b); }
void text(int x, int y, HFONT f, COLORREF c, const char *s) { SelectObject(mdc, f); SetTextColor(mdc, c); TextOutA(mdc, x, y, s, (int)strlen(s)); }
void textw(int x, int y, HFONT f, COLORREF c, const wchar_t *s) { SelectObject(mdc, f); SetTextColor(mdc, c); TextOutW(mdc, x, y, s, (int)wcslen(s)); }
int text_w(HFONT f, const char *s) { SIZE sz; SelectObject(mdc, f); GetTextExtentPoint32A(mdc, s, (int)strlen(s), &sz); return sz.cx; }
void text_wrap(Rect r, HFONT f, COLORREF c, const char *s) {
  SelectObject(mdc, f); SetTextColor(mdc, c); RECT rc = { r.x, r.y, r.x + r.w, r.y + r.h };
  DrawTextA(mdc, s, -1, &rc, DT_WORDBREAK | DT_NOPREFIX);
}
#endif

void text_r(int xr, int y, HFONT f, COLORREF c, const char *s) { text(xr - text_w(f, s), y, f, c, s); }

void panel(int x, int y, int w, int h, COLORREF bg, COLORREF edge) {
  fill(x + 1, y, w - 2, h, edge); fill(x, y + 1, w, h - 2, edge);
  fill(x + 1, y + 1, w - 2, h - 2, bg);
}
void tab(int x, int y, const char *s) {
  int w = text_w(f_tab, s) + 8;
  panel(x, y, w, 11, C_TAB, C_TAB);
  text(x + 4, y, f_tab, C_INSET, s);
}
void sparkle(int cx, int cy) {
  fill(cx - 4, cy, 9, 1, RGB(88, 136, 248)); fill(cx, cy - 4, 1, 9, RGB(88, 136, 248));
  fill(cx - 1, cy - 1, 3, 3, RGB(168, 208, 255)); fill(cx, cy, 1, 1, C_TEXT);
  if (GetTickCount() / 300 % 2) { fill(cx - 2, cy - 2, 1, 1, RGB(88, 136, 248)); fill(cx + 2, cy + 2, 1, 1, RGB(88, 136, 248));
                                  fill(cx + 2, cy - 2, 1, 1, RGB(88, 136, 248)); fill(cx - 2, cy + 2, 1, 1, RGB(88, 136, 248)); }
}
void stars(void) {
  for (uint32_t i = 0, r = 12345; i < (uint32_t)(cw * ch / 300); i++) {
    r = r * 1103515245 + 12345; int x = (r >> 8) % cw; r = r * 1103515245 + 12345; int y = (r >> 8) % ch;
    int t = (r >> 4) & 7;
    fill(x, y, 1, 1, t == 0 ? RGB(248, 120, 88) : t < 3 ? RGB(136, 168, 248) : t < 5 ? RGB(64, 80, 160) : RGB(200, 208, 240));
  }
}
void logo(int x, int y) {
  static const int o[8][2] = { {-1,0},{1,0},{0,-1},{0,1},{-1,-1},{1,1},{-1,1},{1,-1} };
  for (int i = 0; i < 8; i++) text(x + o[i][0], y + o[i][1], f_title, C_LOGO_EDGE, "LITTLE PLANET");
  text(x + 2, y + 2, f_title, C_LOGO_EDGE, "LITTLE PLANET");
  text(x, y, f_title, RGB(248, 216, 64), "LITTLE PLANET");
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
  gfx_canvas(w, h);
  ShowWindow(gfx_hwnd, SW_SHOW); SetForegroundWindow(gfx_hwnd);
  closed = false; gfx_begin();
  int res = 0;
  while (!res) {
    MSG msg; while (PeekMessageW(&msg, NULL, 0, 0, PM_REMOVE)) { TranslateMessage(&msg); DispatchMessageW(&msg); }
    if (closed) { res = -1; break; }
    res = gfx_frame(step, (GetKeyState(VK_SHIFT) & 0x8000) != 0);
    GdiFlush();
    HDC dc = GetDC(gfx_hwnd);
    SetStretchBltMode(dc, COLORONCOLOR);
    StretchBlt(dc, 0, 0, w * gpx, h * gpx, mdc, 0, 0, w, h, SRCCOPY);
    ReleaseDC(gfx_hwnd, dc);
    Sleep(16);
  }
  DestroyWindow(gfx_hwnd); gfx_hwnd = NULL;
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

bool gfx_button(int x, int y, int w, const char *label) {
  bool f, hit = widget(x, y, w, 15, &f);
  panel(x, y, w, 15, f ? C_ROW : C_INSET, f ? C_SEL : C_EDGE);
  text(x + (w - text_w(f_item, label)) / 2, y + 1, f_item, f ? C_SEL : C_TEXT, label);
  return hit;
}

bool gfx_check(int x, int y, const char *label, int *v) {
  bool f, hit = widget(x, y, 16 + text_w(f_item, label), 13, &f);
  if (f) sparkle(x - 7, y + 6);
  panel(x, y + 1, 11, 11, C_INSET, f ? C_SEL : C_EDGE);
  if (*v) fill(x + 3, y + 4, 5, 5, C_LCD);
  text(x + 16, y, f_item, f ? C_SEL : C_TEXT, label);
  if (hit) *v = !*v;
  return hit;
}
