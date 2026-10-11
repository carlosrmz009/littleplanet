#define COBJMACROS
#include "../src/gfx.h"
#include <shlobj.h>
#include <shellapi.h>
#include <stdio.h>
#pragma comment(lib, "ole32.lib")
#pragma comment(lib, "uuid.lib")
#pragma comment(lib, "shell32.lib")
#pragma comment(lib, "advapi32.lib")
#pragma comment(lib, "user32.lib")
#pragma comment(lib, "gdi32.lib")

#define APP L"Little Planet"
#define EXE L"Little Planet.exe"
#define UNKEY L"Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\LittlePlanet"
#define APKEY L"Software\\Microsoft\\Windows\\CurrentVersion\\App Paths\\littleplanet.exe"

static wchar_t dir[MAX_PATH];
static int page, desk = 1;
static const char *err;

static void join(wchar_t *out, const wchar_t *a, const wchar_t *b) { swprintf(out, MAX_PATH, L"%s\\%s", a, b); }
static void special(int csidl, const wchar_t *name, wchar_t *out) {
  wchar_t d[MAX_PATH]; d[0] = 0;
  SHGetFolderPathW(NULL, csidl, NULL, 0, d);
  join(out, d, name);
}

static bool make_link(const wchar_t *lnk, const wchar_t *target) {
  IShellLinkW *sl; IPersistFile *pf; bool ok = false;
  if (FAILED(CoCreateInstance(&CLSID_ShellLink, NULL, CLSCTX_INPROC_SERVER, &IID_IShellLinkW, (void **)&sl))) return false;
  IShellLinkW_SetPath(sl, target);
  IShellLinkW_SetWorkingDirectory(sl, dir);
  IShellLinkW_SetDescription(sl, L"Sonic CD");
  if (SUCCEEDED(IShellLinkW_QueryInterface(sl, &IID_IPersistFile, (void **)&pf))) { ok = SUCCEEDED(IPersistFile_Save(pf, lnk, TRUE)); IPersistFile_Release(pf); }
  IShellLinkW_Release(sl);
  return ok;
}

static void reg_sz(const wchar_t *key, const wchar_t *name, const wchar_t *v) { RegSetKeyValueW(HKEY_CURRENT_USER, key, name, REG_SZ, v, (DWORD)(wcslen(v) + 1) * 2); }
static void reg_dw(const wchar_t *key, const wchar_t *name, DWORD v) { RegSetKeyValueW(HKEY_CURRENT_USER, key, name, REG_DWORD, &v, 4); }

// files shipped next to the game (FFmpeg and the remastered opening): resource 101 packs them as
// "LPL1" then, per file, u16 name length, name, u32 size, data (tools/packlibs.py).
// Their names go in files.txt, which the uninstaller (a copy without the payload) reads back.
#define MANIFEST L"files.txt"
static DWORD payload_bytes;
static bool libs(bool write) {
  HRSRC r = FindResourceW(NULL, MAKEINTRESOURCEW(101), (LPCWSTR)RT_RCDATA);
  if (!r) return true;
  DWORD n = SizeofResource(NULL, r); const unsigned char *p = LockResource(LoadResource(NULL, r));
  if (!p || n < 4 || memcmp(p, "LPL1", 4)) return true;
  bool ok = true;
  wchar_t mpath[MAX_PATH]; join(mpath, dir, MANIFEST);
  FILE *m = write ? _wfopen(mpath, L"wb") : NULL;
  for (DWORD o = 4; o + 2 <= n;) {
    unsigned nl = p[o] | p[o + 1] << 8; o += 2;
    if (o + nl + 4 > n) break;
    char name[128]; wchar_t wname[128], path[MAX_PATH];
    if (nl >= sizeof name) break;
    memcpy(name, p + o, nl); name[nl] = 0; o += nl;
    DWORD sz = p[o] | p[o + 1] << 8 | p[o + 2] << 16 | (DWORD)p[o + 3] << 24; o += 4;
    if (o + sz > n) break;
    MultiByteToWideChar(CP_UTF8, 0, name, -1, wname, 128);
    join(path, dir, wname);
    if (write) {
      FILE *f = _wfopen(path, L"wb");
      if (!f || fwrite(p + o, 1, sz, f) != sz) ok = false;
      if (f) fclose(f);
      if (m) fprintf(m, "%s\n", name);
      payload_bytes += sz;
    }
    o += sz;
  }
  if (m) fclose(m);
  return ok;
}

static void libs_remove(void) {
  wchar_t mpath[MAX_PATH]; join(mpath, dir, MANIFEST);
  FILE *m = _wfopen(mpath, L"rb");
  if (!m) return;
  char line[256];
  while (fgets(line, sizeof line, m)) {
    line[strcspn(line, "\r\n")] = 0;
    if (!line[0] || strchr(line, '\\') || strchr(line, '/') || strstr(line, "..")) continue;
    wchar_t wname[256], path[MAX_PATH];
    MultiByteToWideChar(CP_UTF8, 0, line, -1, wname, 256);
    join(path, dir, wname);
    DeleteFileW(path);
  }
  fclose(m);
  DeleteFileW(mpath);
}

// the uninstaller: the same program without the payload (resource 102), or a copy of this one
static void write_uninstaller(const wchar_t *un) {
  wchar_t self[MAX_PATH];
  GetModuleFileNameW(NULL, self, MAX_PATH);
  if (!_wcsicmp(self, un)) return;
  HRSRC r = FindResourceW(NULL, MAKEINTRESOURCEW(102), (LPCWSTR)RT_RCDATA);
  DWORD n = r ? SizeofResource(NULL, r) : 0; const void *p = r ? LockResource(LoadResource(NULL, r)) : NULL;
  FILE *f = p && n ? _wfopen(un, L"wb") : NULL;
  bool ok = f && fwrite(p, 1, n, f) == n;
  if (f) fclose(f);
  if (!ok) CopyFileW(self, un, FALSE);
}

static const char *install(void) {
  if (SHCreateDirectoryExW(NULL, dir, NULL) != ERROR_SUCCESS && GetFileAttributesW(dir) == INVALID_FILE_ATTRIBUTES) return "Can't create that folder. Pick another one.";
  HRSRC r = FindResourceW(NULL, MAKEINTRESOURCEW(100), (LPCWSTR)RT_RCDATA);
  if (!r) return "This installer is broken. Download it again.";
  DWORD n = SizeofResource(NULL, r); const void *p = LockResource(LoadResource(NULL, r));
  wchar_t exe[MAX_PATH], un[MAX_PATH], lnk[MAX_PATH];
  join(exe, dir, EXE); join(un, dir, L"uninstall.exe");
  FILE *f = _wfopen(exe, L"wb");
  if (!f) return "Can't write there. Close the game or pick another folder.";
  bool ok = fwrite(p, 1, n, f) == n; fclose(f);
  if (!ok) return "Ran out of space?";
  if (!libs(true)) return "Can't write there. Close the game or pick another folder.";
  write_uninstaller(un);
  special(CSIDL_PROGRAMS, APP L".lnk", lnk); make_link(lnk, exe);
  special(CSIDL_DESKTOPDIRECTORY, APP L".lnk", lnk);
  if (desk) make_link(lnk, exe); else DeleteFileW(lnk);
  wchar_t cmd[MAX_PATH + 32]; swprintf(cmd, MAX_PATH + 32, L"\"%s\" --uninstall", un);
  reg_sz(UNKEY, L"DisplayName", APP); reg_sz(UNKEY, L"DisplayIcon", exe); reg_sz(UNKEY, L"DisplayVersion", L"1.0");
  reg_sz(UNKEY, L"Publisher", L"carlos ramirez"); reg_sz(UNKEY, L"InstallLocation", dir); reg_sz(UNKEY, L"UninstallString", cmd);
  reg_dw(UNKEY, L"NoModify", 1); reg_dw(UNKEY, L"NoRepair", 1); reg_dw(UNKEY, L"EstimatedSize", (n + payload_bytes) / 1024);
  reg_sz(APKEY, NULL, exe); reg_sz(APKEY, L"Path", dir);
  SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, NULL, NULL);
  return NULL;
}

static const char *uninstall(void) {
  wchar_t exe[MAX_PATH], lnk[MAX_PATH];
  join(exe, dir, EXE);
  if (GetFileAttributesW(exe) != INVALID_FILE_ATTRIBUTES && !DeleteFileW(exe)) return "Close the game first.";
  libs_remove();
  special(CSIDL_PROGRAMS, APP L".lnk", lnk); DeleteFileW(lnk);
  special(CSIDL_DESKTOPDIRECTORY, APP L".lnk", lnk); DeleteFileW(lnk);
  RegDeleteTreeW(HKEY_CURRENT_USER, UNKEY); RegDeleteTreeW(HKEY_CURRENT_USER, APKEY);
  SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, NULL, NULL);
  wchar_t cmd[3 * MAX_PATH], sys[MAX_PATH];
  GetSystemDirectoryW(sys, MAX_PATH);
  swprintf(cmd, 3 * MAX_PATH, L"\"%s\\cmd.exe\" /c ping 127.0.0.1 -n 3 >nul & del /f /q \"%s\\uninstall.exe\" & rmdir \"%s\"", sys, dir, dir);
  STARTUPINFOW si = { sizeof si }; PROCESS_INFORMATION pi;
  if (CreateProcessW(NULL, cmd, NULL, NULL, FALSE, CREATE_NO_WINDOW, NULL, sys, &si, &pi)) { CloseHandle(pi.hThread); CloseHandle(pi.hProcess); }
  return NULL;
}

static void pick_dir(void) {
  BROWSEINFOW b = { 0 };
  b.hwndOwner = gfx_hwnd; b.lpszTitle = L"Install Little Planet in..."; b.ulFlags = BIF_RETURNONLYFSDIRS | BIF_NEWDIALOGSTYLE;
  PIDLIST_ABSOLUTE id = SHBrowseForFolderW(&b);
  if (!id) return;
  wchar_t d[MAX_PATH];
  if (SHGetPathFromIDListW(id, d)) {
    size_t n = wcslen(d), k = wcslen(APP);
    if (n && d[n - 1] == L'\\') d[--n] = 0;
    if (n >= k && !_wcsicmp(d + n - k, APP)) wcscpy(dir, d); else join(dir, d, APP);
  }
  CoTaskMemFree(id);
}

static void play(void) {
  wchar_t exe[MAX_PATH]; join(exe, dir, EXE);
  ShellExecuteW(NULL, L"open", exe, NULL, dir, SW_SHOWNORMAL);
}

static void frame(const char *tag) {
  logo(8, 2);
  text_r(cw - 8, 10, f_small, C_DIM, "Little Planet");
  panel(8, 36, cw - 16, ch - 44, C_PANEL, C_EDGE);
  tab(16, 30, tag);
}

static int step(void) {
  int y = ch - 30;
  switch (page) {
  case 0: {
    frame("INSTALL");
    if (gfx_button(18, y, 84, "Install")) { err = install(); page = err ? 2 : 1; }
    if (gfx_button(108, y, 84, "Cancel") || gfx_key == VK_ESCAPE) return 2;
    text(18, 46, f_item, C_TEXT, "Install to");
    int bw = 56, pw = cw - 36 - bw - 6;
    fill(18, 61, pw, 15, C_INSET);
    SelectObject(mdc, f_item); SetTextColor(mdc, C_LCD);
    RECT rc = { 22, 62, 18 + pw - 3, 75 }; DrawTextW(mdc, dir, -1, &rc, DT_PATH_ELLIPSIS | DT_SINGLELINE | DT_NOPREFIX);
    if (gfx_button(cw - 18 - bw, 61, bw, "Change")) pick_dir();
    gfx_check(26, 86, "Desktop shortcut", &desk);
    text(18, 104, f_small, C_DIM, "Start menu entry is always added, so search finds it.");
    break;
  }
  case 1:
    frame("DONE");
    text(18, 48, f_item, C_TEXT, "Installed.");
    text(18, 64, f_small, C_DIM, "Pick your Sonic CD disc on first launch.");
    if (gfx_button(18, y, 84, "Play")) { play(); return 1; }
    if (gfx_button(108, y, 84, "Close") || gfx_key == VK_ESCAPE) return 1;
    break;
  case 2: case 12:
    frame("OOPS");
    text(18, 48, f_item, C_TEXT, err);
    if (gfx_button(18, y, 84, "Back") || gfx_key == VK_ESCAPE) page -= 2;
    break;
  case 10:
    frame("UNINSTALL");
    text(18, 48, f_item, C_TEXT, "Remove Little Planet?");
    text(18, 64, f_small, C_DIM, "Saves, settings and your disc stay in %APPDATA%.");
    if (gfx_button(18, y, 84, "Remove")) { err = uninstall(); page = err ? 12 : 11; }
    if (gfx_button(108, y, 84, "Cancel") || gfx_key == VK_ESCAPE) return 2;
    break;
  case 11:
    frame("BYE");
    text(18, 48, f_item, C_TEXT, "Removed.");
    if (gfx_button(18, y, 84, "Close") || gfx_key == VK_ESCAPE) return 1;
    break;
  case 20: {
    static int frames;
    frame("UPDATE");
    text(18, 48, f_item, C_TEXT, "Updating...");
    if (++frames == 2) {
      for (int i = 0; i < 40 && (err = install()); i++) Sleep(250);
      if (err) { page = 2; break; }
      play();
      return 1;
    }
    break;
  }
  }
  return 0;
}

int WINAPI wWinMain(HINSTANCE hi, HINSTANCE prev, PWSTR cmdline, int show) {
  SetProcessDPIAware();
  CoInitializeEx(NULL, COINIT_APARTMENTTHREADED);
  if (wcsstr(cmdline, L"--uninstall")) {
    GetModuleFileNameW(NULL, dir, MAX_PATH);
    *wcsrchr(dir, L'\\') = 0;
    page = 10;
  } else {
    DWORD n = sizeof dir;
    if (RegGetValueW(HKEY_CURRENT_USER, UNKEY, L"InstallLocation", RRF_RT_REG_SZ, NULL, dir, &n) != ERROR_SUCCESS) {
      wchar_t d[MAX_PATH]; d[0] = 0;
      SHGetFolderPathW(NULL, CSIDL_LOCAL_APPDATA, NULL, 0, d);
      swprintf(dir, MAX_PATH, L"%s\\Programs\\%s", d, APP);
    } else if (wcsstr(cmdline, L"--update")) {
      wchar_t lnk[MAX_PATH];
      special(CSIDL_DESKTOPDIRECTORY, APP L".lnk", lnk);
      desk = GetFileAttributesW(lnk) != INVALID_FILE_ATTRIBUTES;
      page = 20;
    }
  }
  return gfx_window(page == 20 ? L"Update Little Planet" : page ? L"Uninstall Little Planet" : L"Install Little Planet", 320, 160, step) > 0 ? 0 : 1;
}
