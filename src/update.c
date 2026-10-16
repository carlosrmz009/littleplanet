#include "app.h"
#ifdef _WIN32
#include <winhttp.h>
#include <shellapi.h>
#pragma comment(lib, "winhttp.lib")
#else
#include <unistd.h>
#include <sys/stat.h>
#endif

extern const char build_id[];

#define REPO "https://github.com/carlosrmz009/littleplanet"
#define TAG_API "https://api.github.com/repos/carlosrmz009/littleplanet/git/ref/tags/1.0"

static volatile int state;
static char tmp[1024];

#ifdef _WIN32
// Windows: the check reads GitHub's answer in memory, and "Update" opens the release page in the browser.
// (A game that downloads an .exe and runs it is what antivirus heuristics call a trojan downloader.)
static bool get(const wchar_t *host, const wchar_t *path, char *out, int max) {
  bool ok = false; int n = 0;
  HINTERNET s = WinHttpOpen(L"LittlePlanet/1.0", WINHTTP_ACCESS_TYPE_AUTOMATIC_PROXY, NULL, NULL, 0), c = NULL, r = NULL;
  if (s) c = WinHttpConnect(s, host, INTERNET_DEFAULT_HTTPS_PORT, 0);
  if (c) r = WinHttpOpenRequest(c, L"GET", path, NULL, NULL, NULL, WINHTTP_FLAG_SECURE);
  if (r && WinHttpSendRequest(r, L"User-Agent: LittlePlanet\r\n", (DWORD)-1, NULL, 0, 0, 0) && WinHttpReceiveResponse(r, NULL)) {
    DWORD got;
    while (n < max - 1 && WinHttpReadData(r, out + n, max - 1 - n, &got) && got) n += got;
    ok = n > 0;
  }
  out[n] = 0;
  if (r) WinHttpCloseHandle(r);
  if (c) WinHttpCloseHandle(c);
  if (s) WinHttpCloseHandle(s);
  return ok;
}
#else
#ifdef __APPLE__
#define ASSET "littleplanet-macos.dmg"
#elif defined(__aarch64__)
#define ASSET "littleplanet-linux-aarch64.AppImage"
#else
#define ASSET "littleplanet-linux.AppImage"
#endif
static bool fetch(const char *url, const char *path) {
  char c[2048]; snprintf(c, sizeof c, "curl -fsSL --connect-timeout 10 --max-time 300 -o '%s' '%s' </dev/null >/dev/null 2>&1", path, url);
  return system(c) == 0;
}
static void tmp_path(const char *name) {
  const char *a = getenv("APPIMAGE");
  if (a && !strcmp(name, ASSET)) snprintf(tmp, sizeof tmp, "%s.new", a);
  else snprintf(tmp, sizeof tmp, "/tmp/%s", name);
}
#endif

static int check(void *arg) {
  char buf[4096] = "";
#ifdef _WIN32
  get(L"api.github.com", L"/repos/carlosrmz009/littleplanet/git/ref/tags/1.0", buf, sizeof buf);
#else
  tmp_path("littleplanet-tag.json");
  FILE *f = fetch(TAG_API, tmp) ? fopen(tmp, "rb") : NULL;
  if (f) { buf[fread(buf, 1, sizeof buf - 1, f)] = 0; fclose(f); remove(tmp); }
#endif
  char *p = strstr(buf, "\"sha\"");
  if (p) p = strchr(p + 5, '"');
  if (!p || strlen(p) < 41) { state = 0; return 0; }
  state = strncmp(p + 1, build_id, 40) ? 3 : 2;
  return 0;
}

#ifndef _WIN32
static int download(void *arg) {
  tmp_path(ASSET);
  state = fetch(REPO "/releases/download/1.0/" ASSET, tmp) ? 5 : 6;
  return 0;
}
#endif

void update_start_check(void) {
  extern const char *uitest_prefix;
  if (strlen(build_id) == 40 && !state && !uitest_prefix) { state = 1; plat_thread(check); }
}

const char *update_label(void) {
  static const char *l[] = { NULL, NULL, "Up to date", "Update", "Downloading...", "Downloading...", "Update failed", "Restarting..." };
  return l[state];
}

bool update_ready(void) { return state == 3; }
#ifdef _WIN32
void update_download(void) { if (state == 3) ShellExecuteA(NULL, "open", REPO "/releases/tag/1.0", NULL, NULL, SW_SHOWNORMAL); }
#else
void update_download(void) { if (state == 3) { state = 4; plat_thread(download); } }
#endif

bool update_apply(void) {
  if (state != 5) return false;
#ifdef _WIN32
#elif defined(__APPLE__)
  char c[1200]; snprintf(c, sizeof c, "open '%s'", tmp);
  system(c);
#else
  const char *a = getenv("APPIMAGE");
  if (a) {
    chmod(tmp, 0755);
    if (rename(tmp, a) == 0) {
      char c[1200]; snprintf(c, sizeof c, "'%s' >/dev/null 2>&1 &", a);
      system(c);
    } else { state = 6; return false; }
  } else system("xdg-open '" REPO "/releases/tag/1.0' >/dev/null 2>&1 &");
#endif
  state = 7;
  return true;
}
