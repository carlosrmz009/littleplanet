#include "app.h"
#ifdef _WIN32
#include <urlmon.h>
#include <shellapi.h>
#pragma comment(lib, "urlmon.lib")
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
#define ASSET "littleplanet.exe"
static bool fetch(const char *url, const char *path) {
  char u[512]; snprintf(u, sizeof u, "%s?t=%lu", url, GetTickCount());
  return URLDownloadToFileA(NULL, u, path, 0, NULL) == S_OK;
}
static void tmp_path(const char *name) { char d[MAX_PATH]; GetTempPathA(MAX_PATH, d); snprintf(tmp, sizeof tmp, "%s%s", d, name); }
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
  tmp_path("littleplanet-tag.json");
  char buf[4096] = "";
  FILE *f = fetch(TAG_API, tmp) ? fopen(tmp, "rb") : NULL;
  if (f) { buf[fread(buf, 1, sizeof buf - 1, f)] = 0; fclose(f); remove(tmp); }
  char *p = strstr(buf, "\"sha\"");
  if (p) p = strchr(p + 5, '"');
  if (!p || strlen(p) < 41) { state = 0; return 0; }
  state = strncmp(p + 1, build_id, 40) ? 3 : 2;
  return 0;
}

static int download(void *arg) {
  tmp_path(ASSET);
  state = fetch(REPO "/releases/download/1.0/" ASSET, tmp) ? 5 : 6;
  return 0;
}

void update_start_check(void) {
  extern const char *uitest_prefix;
  if (strlen(build_id) == 40 && !state && !uitest_prefix) { state = 1; plat_thread(check); }
}

const char *update_label(void) {
  static const char *l[] = { NULL, NULL, "Up to date", "Update", "Downloading...", "Downloading...", "Update failed", "Restarting..." };
  return l[state];
}

bool update_ready(void) { return state == 3; }
void update_download(void) { if (state == 3) { state = 4; plat_thread(download); } }

bool update_apply(void) {
  if (state != 5) return false;
#ifdef _WIN32
  ShellExecuteA(NULL, "open", tmp, "--update", NULL, SW_SHOWNORMAL);
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
