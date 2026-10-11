#include "app.h"
#include <mmsystem.h>
#include <shlobj.h>
#pragma comment(lib, "winmm.lib")
#pragma comment(lib, "gdi32.lib")
#pragma comment(lib, "user32.lib")
#pragma comment(lib, "shell32.lib")

void ui_mouse(int x, int y, bool down, int wheel_delta);
static HWND hwnd;
static RECT windowed_rect;

#define NABUF 8
static HWAVEOUT wo; static WAVEHDR wh[NABUF]; static s16 abuf[NABUF][ABUF_FRAMES * 2];

bool snd_open(void) {
  WAVEFORMATEX fmt = { WAVE_FORMAT_PCM, 2, 48000, 48000 * 4, 4, 16, 0 };
  if (waveOutOpen(&wo, WAVE_MAPPER, &fmt, 0, 0, CALLBACK_NULL) != MMSYSERR_NOERROR) { wo = 0; return false; }
  for (int i = 0; i < NABUF; i++) { wh[i].lpData = (LPSTR)abuf[i]; wh[i].dwBufferLength = ABUF_FRAMES * 4; wh[i].dwFlags = WHDR_DONE; }
  return true;
}
int snd_busy(void) { int n = 0; for (int i = 0; i < NABUF; i++) if (!(wh[i].dwFlags & WHDR_DONE)) n++; return n * ABUF_FRAMES; }
bool snd_put(const s16 *pcm, int frames) {
  for (int i = 0; i < NABUF; i++) {
    WAVEHDR *h = &wh[i];
    if (!(h->dwFlags & WHDR_DONE)) continue;
    if (h->dwFlags & WHDR_PREPARED) waveOutUnprepareHeader(wo, h, sizeof *h);
    memcpy(abuf[i], pcm, frames * 4);
    h->dwFlags = 0; h->dwBufferLength = frames * 4;
    waveOutPrepareHeader(wo, h, sizeof *h); waveOutWrite(wo, h, sizeof *h);
    return true;
  }
  return false;
}

void plat_fullscreen(bool on) {
  if (on) {
    GetWindowRect(hwnd, &windowed_rect);
    MONITORINFO mi = { sizeof mi }; GetMonitorInfoA(MonitorFromWindow(hwnd, MONITOR_DEFAULTTONEAREST), &mi);
    SetWindowLongA(hwnd, GWL_STYLE, WS_POPUP | WS_VISIBLE);
    SetWindowPos(hwnd, HWND_TOP, mi.rcMonitor.left, mi.rcMonitor.top, mi.rcMonitor.right - mi.rcMonitor.left,
                 mi.rcMonitor.bottom - mi.rcMonitor.top, SWP_FRAMECHANGED);
  } else {
    SetWindowLongA(hwnd, GWL_STYLE, WS_OVERLAPPEDWINDOW | WS_VISIBLE);
    SetWindowPos(hwnd, NULL, windowed_rect.left, windowed_rect.top, windowed_rect.right - windowed_rect.left,
                 windowed_rect.bottom - windowed_rect.top, SWP_FRAMECHANGED | SWP_NOZORDER);
  }
}

static LRESULT CALLBACK wndproc(HWND w, UINT m, WPARAM wp, LPARAM lp) {
  input_wndproc(w, m, wp, lp);
  switch (m) {
  case WM_CLOSE: app_quit = true; return 0;
  case WM_SIZE: video_resize(LOWORD(lp), HIWORD(lp)); return 0;
  case WM_MOUSEMOVE: ui_mouse((short)LOWORD(lp), (short)HIWORD(lp), (wp & MK_LBUTTON) != 0, 0); return 0;
  case WM_LBUTTONDOWN: case WM_LBUTTONUP: ui_mouse((short)LOWORD(lp), (short)HIWORD(lp), m == WM_LBUTTONDOWN, 0); return 0;
  case WM_MOUSEWHEEL: ui_mouse(-1, -1, false, (short)HIWORD(wp) > 0 ? 1 : -1); return 0;
  case WM_SYSKEYDOWN: if (wp == VK_RETURN) { app_toggle_fullscreen(); return 0; } break;
  case WM_SYSCHAR: return 0;
  case WM_ERASEBKGND: return 1;
  }
  return DefWindowProcA(w, m, wp, lp);
}

bool plat_open(void) {
  HINSTANCE hi = GetModuleHandleA(NULL);
  WNDCLASSA wc = { 0 }; wc.lpfnWndProc = wndproc; wc.hInstance = hi; wc.lpszClassName = "littleplanet"; wc.hCursor = LoadCursor(NULL, IDC_ARROW);
  wc.hIcon = LoadIconA(hi, MAKEINTRESOURCEA(1)); if (!wc.hIcon) wc.hIcon = LoadIcon(NULL, IDI_APPLICATION);
  RegisterClassA(&wc);
  RECT r = { 0, 0, 1280, 800 }; AdjustWindowRect(&r, WS_OVERLAPPEDWINDOW, FALSE);
  hwnd = CreateWindowA("littleplanet", "Sonic CD", WS_OVERLAPPEDWINDOW | WS_VISIBLE, CW_USEDEFAULT, CW_USEDEFAULT,
                       r.right - r.left, r.bottom - r.top, 0, 0, hi, 0);
  if (!video_init(hwnd)) return false;
  RECT cr; GetClientRect(hwnd, &cr); video_resize(cr.right, cr.bottom);
  input_init(hwnd);
  timeBeginPeriod(1);
  return true;
}

void plat_events(void) { MSG msg; while (PeekMessageA(&msg, 0, 0, 0, PM_REMOVE)) { TranslateMessage(&msg); DispatchMessageA(&msg); } }
void plat_error(const char *msg) { MessageBoxA(hwnd, msg, "Sonic CD", MB_ICONERROR); }
void plat_mkdir(const char *path) { CreateDirectoryA(path, NULL); }

double plat_time(void) {
  LARGE_INTEGER f, t; QueryPerformanceFrequency(&f); QueryPerformanceCounter(&t);
  return (double)t.QuadPart / f.QuadPart;
}

static DWORD WINAPI thread_main(LPVOID arg) { return (DWORD)((int (*)(void *))arg)(NULL); }
void *plat_thread(int (*fn)(void *)) { return CreateThread(NULL, 0, thread_main, (LPVOID)fn, 0, NULL); }
void plat_join(void *t) { WaitForSingleObject(t, INFINITE); CloseHandle(t); }

bool plat_home(void) {
  SetProcessDPIAware();
  wchar_t d[MAX_PATH];
  if (SUCCEEDED(SHGetFolderPathW(NULL, CSIDL_APPDATA | CSIDL_FLAG_CREATE, NULL, 0, d))) {
    wcscat(d, L"\\Little Planet"); CreateDirectoryW(d, NULL); SetCurrentDirectoryW(d);
  }
  return true;
}
