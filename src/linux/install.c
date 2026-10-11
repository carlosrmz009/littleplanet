#include "../gfx.h"
#include <SDL.h>
#include <errno.h>
#include <limits.h>
#include <spawn.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <unistd.h>

#define ID "littleplanet"
#define APPFILE ID ".AppImage"
extern char **environ;
extern const unsigned char icon_png[], icon_rgba[];
extern const unsigned icon_png_len, icon_size;
void plat_error(const char *msg);

static char home[PATH_MAX], share[PATH_MAX], self[PATH_MAX], dir[PATH_MAX], dst[PATH_MAX], old[PATH_MAX], shown[PATH_MAX], shown_for[PATH_MAX];
static int page, desk = 1, old_desk;
static bool only_uninstall;
static const char *err;

void sdl_icon(SDL_Window *w) {
  SDL_Surface *s = SDL_CreateRGBSurfaceWithFormatFrom((void *)icon_rgba, icon_size, icon_size, 32, icon_size * 4, SDL_PIXELFORMAT_RGBA32);
  if (s) { SDL_SetWindowIcon(w, s); SDL_FreeSurface(s); }
}

static bool have(const char *prog) {
  const char *p = getenv("PATH");
  char b[PATH_MAX];
  while (p && *p) {
    size_t n = strcspn(p, ":");
    snprintf(b, sizeof b, "%.*s/%s", (int)n, p, prog);
    if (n && !access(b, X_OK)) return true;
    p += n + (p[n] == ':');
  }
  return false;
}

static int run(const char *const *argv, bool wait) {
  pid_t pid; int st;
  if (posix_spawnp(&pid, argv[0], NULL, NULL, (char *const *)argv, environ)) return -1;
  if (!wait) return 0;
  if (waitpid(pid, &st, 0) < 0) return -1;
  return WIFEXITED(st) ? WEXITSTATUS(st) : -1;
}

static bool line_from(const char *cmd, char *out, int n) {
  FILE *p = popen(cmd, "r");
  if (!p) return false;
  bool ok = fgets(out, n, p) != NULL;
  ok = pclose(p) == 0 && ok;
  out[strcspn(out, "\n")] = 0;
  return ok && out[0];
}

int plat_pick(bool d, char *out, int n) {
  const char *cmd;
  if (have("zenity"))
    cmd = d ? "zenity --file-selection --directory --title='Install Little Planet in...' 2>/dev/null"
            : "zenity --file-selection --title='Pick your Sonic CD disc' --file-filter='Disc image | *.cue *.chd *.iso *.ccd *.CUE *.CHD *.ISO *.CCD' --file-filter='All files | *' 2>/dev/null";
  else if (have("kdialog"))
    cmd = d ? "kdialog --title 'Install Little Planet in...' --getexistingdirectory ~ 2>/dev/null"
            : "kdialog --title 'Pick your Sonic CD disc' --getopenfilename ~ '*.cue *.chd *.iso *.ccd *.CUE *.CHD *.ISO *.CCD|Disc image' 2>/dev/null";
  else return -1;
  return line_from(cmd, out, n) ? 1 : 0;
}

static void mkdirs(const char *path) {
  char p[PATH_MAX];
  snprintf(p, sizeof p, "%s", path);
  for (char *s = p + 1; *s; s++)
    if (*s == '/') { *s = 0; mkdir(p, 0755); *s = '/'; }
  mkdir(p, 0755);
}

static bool write_file(const char *path, const void *data, size_t n, mode_t mode) {
  FILE *f = fopen(path, "wb");
  if (!f) return false;
  bool ok = fwrite(data, 1, n, f) == n;
  if (fclose(f)) ok = false;
  chmod(path, mode);
  return ok;
}

static bool copy(const char *from, const char *to) {
  FILE *a = fopen(from, "rb"), *b = a ? fopen(to, "wb") : NULL;
  static char buf[1 << 16];
  size_t n;
  bool ok = b != NULL;
  while (ok && (n = fread(buf, 1, sizeof buf, a)) > 0) ok = fwrite(buf, 1, n, b) == n;
  if (a) { ok = ok && !ferror(a); fclose(a); }
  if (b && fclose(b)) ok = false;
  return ok;
}

static void exec_quote(const char *s, char *o) {
  *o++ = '"';
  for (; *s; s++) {
    if (*s == '"' || *s == '`' || *s == '$') { *o++ = '\\'; *o++ = '\\'; }
    else if (*s == '\\') { *o++ = '\\'; *o++ = '\\'; *o++ = '\\'; }
    else if (*s == '%') *o++ = '%';
    *o++ = *s;
  }
  *o++ = '"';
  *o = 0;
}

static void entry_path(char *out, const char *base) { snprintf(out, PATH_MAX, "%s/%s/" ID ".desktop", share, base); }
static void icon_path(char *out) { snprintf(out, PATH_MAX, "%s/icons/hicolor/256x256/apps/" ID ".png", share); }

static bool desktop_dir(char *out) {
  char b[PATH_MAX];
  if (!have("xdg-user-dir") || !line_from("xdg-user-dir DESKTOP 2>/dev/null", b, sizeof b)) snprintf(b, sizeof b, "%s/Desktop", home);
  struct stat st;
  if (!strcmp(b, home) || stat(b, &st) || !S_ISDIR(st.st_mode)) return false;
  snprintf(out, PATH_MAX, "%s/" ID ".desktop", b);
  return true;
}

static bool write_entry(const char *path, const char *exe) {
  char q[PATH_MAX * 4 + 3];
  exec_quote(exe, q);
  char b[PATH_MAX * 10];
  int n = snprintf(b, sizeof b,
                   "[Desktop Entry]\nType=Application\nName=Little Planet\nComment=Sonic CD\n"
                   "Exec=%s\nIcon=" ID "\nTerminal=false\nCategories=Game;ActionGame;\nKeywords=sonic;hedgehog;sega;mega;cd;\n"
                   "StartupWMClass=" ID "\nActions=uninstall;\n\n[Desktop Action uninstall]\nName=Uninstall\nExec=env LITTLEPLANET_UNINSTALL=1 %s\n",
                   q, q);
  return n > 0 && n < (int)sizeof b && write_file(path, b, (size_t)n, 0755);
}

static void refresh(void) {
  char apps[PATH_MAX];
  snprintf(apps, sizeof apps, "%s/applications", share);
  const char *u[] = { "update-desktop-database", apps, NULL };
  if (have(u[0])) run(u, true);
}

static void save_record(void) {
  FILE *f = fopen("install_path", "w");
  if (f) { fprintf(f, "%s\n%d\n", old, old_desk); fclose(f); }
}

static const char *install(void) {
  mkdirs(dir);
  struct stat st;
  if (stat(dir, &st) || !S_ISDIR(st.st_mode)) return "Can't create that folder. Pick another one.";
  if (access(dir, W_OK)) return "Can't write there. Pick another folder.";
  snprintf(dst, sizeof dst, "%s/" APPFILE, dir);
  char real[PATH_MAX], tmp[PATH_MAX + 8];
  if (!realpath(dst, real) || strcmp(real, self)) {
    snprintf(tmp, sizeof tmp, "%s.part", dst);
    if (!copy(self, tmp) || rename(tmp, dst)) { remove(tmp); return "Copy failed. Out of space?"; }
  }
  chmod(dst, 0755);
  if (!realpath(dst, real)) snprintf(real, sizeof real, "%s", dst);
  if (old[0] && strcmp(old, real)) remove(old);
  snprintf(old, sizeof old, "%s", real);
  char p[PATH_MAX];
  icon_path(p);
  *strrchr(p, '/') = 0;
  mkdirs(p);
  icon_path(p);
  write_file(p, icon_png, icon_png_len, 0644);
  snprintf(p, sizeof p, "%s/applications", share);
  mkdirs(p);
  entry_path(p, "applications");
  if (!write_entry(p, old)) return "Couldn't add the app menu entry.";
  old_desk = 0;
  if (desktop_dir(p)) {
    remove(p);
    if (desk && write_entry(p, old)) {
      old_desk = 1;
      const char *g[] = { "gio", "set", p, "metadata::trusted", "true", NULL };
      if (have(g[0])) run(g, true);
    }
  }
  refresh();
  save_record();
  return NULL;
}

static const char *uninstall(void) {
  if (old[0] && remove(old) && errno != ENOENT) return "Couldn't remove it. Check the folder.";
  char p[PATH_MAX];
  entry_path(p, "applications"); remove(p);
  icon_path(p); remove(p);
  if (desktop_dir(p)) remove(p);
  refresh();
  remove("install_path");
  old[0] = 0; old_desk = 0;
  return NULL;
}

static void path_text(int x, int y, int w, const char *p) {
  if (strcmp(shown_for, p)) {
    char b[PATH_MAX];
    size_t hl = strlen(home);
    if (hl && !strncmp(p, home, hl) && (p[hl] == '/' || !p[hl])) snprintf(b, sizeof b, "~%s", p + hl);
    else snprintf(b, sizeof b, "%s", p);
    const char *s = b;
    snprintf(shown, sizeof shown, "%s", b);
    while (*s && text_w(f_item, shown) > w) { s++; snprintf(shown, sizeof shown, "...%s", s); }
    snprintf(shown_for, sizeof shown_for, "%s", p);
  }
  text(x, y, f_item, C_LCD, shown);
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
    if (gfx_drop[0]) {
      struct stat st;
      if (!stat(gfx_drop, &st) && S_ISDIR(st.st_mode)) snprintf(dir, sizeof dir, "%s", gfx_drop);
      gfx_drop[0] = 0;
    }
    if (gfx_button(18, y, 84, "Install")) { err = install(); page = err ? 2 : 1; }
    if (gfx_button(108, y, 84, "Cancel") || gfx_key == VK_ESCAPE) return 2;
    if (old[0] && gfx_button(198, y, 84, "Uninstall")) page = 10;
    text(18, 46, f_item, C_TEXT, "Install to");
    int bw = 56, pw = cw - 36 - bw - 6;
    fill(18, 61, pw, 15, C_INSET);
    path_text(22, 62, pw - 7, dir);
    if (gfx_button(cw - 18 - bw, 61, bw, "Change")) {
      char p[PATH_MAX];
      int r = plat_pick(true, p, sizeof p);
      if (r > 0) snprintf(dir, sizeof dir, "%s", p);
      if (r < 0) { err = "No folder picker. Drop a folder here."; page = 2; }
    }
    gfx_check(26, 86, "Desktop shortcut", &desk);
    text(18, 104, f_small, C_DIM, old[0] ? "Already installed. This updates it." : "App menu entry is always added, so search finds it.");
    break;
  }
  case 1:
    frame("DONE");
    text(18, 48, f_item, C_TEXT, "Installed.");
    text(18, 64, f_small, C_DIM, "Pick your Sonic CD disc on first launch.");
    if (gfx_button(18, y, 84, "Play")) { const char *a[] = { dst, NULL }; run(a, false); return 1; }
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
    text(18, 64, f_small, C_DIM, "Saves, settings and your disc are kept.");
    if (gfx_button(18, y, 84, "Remove")) { err = uninstall(); page = err ? 12 : 11; }
    if (gfx_button(108, y, 84, "Cancel") || gfx_key == VK_ESCAPE) { if (only_uninstall) return 2; page = 0; }
    break;
  case 11:
    frame("BYE");
    text(18, 48, f_item, C_TEXT, "Removed.");
    if (gfx_button(18, y, 84, "Close") || gfx_key == VK_ESCAPE) return 1;
    break;
  }
  return 0;
}

static bool installer(void) {
  FILE *f = fopen("install_path", "r");
  if (f) {
    if (!fgets(old, sizeof old, f)) old[0] = 0;
    old[strcspn(old, "\n")] = 0;
    if (fscanf(f, "%d", &old_desk) != 1) old_desk = 0;
    fclose(f);
  }
  if (getenv("LITTLEPLANET_UNINSTALL")) {
    only_uninstall = true; page = 10;
    gfx_window(L"Uninstall Little Planet", 320, 160, step);
    return false;
  }
  const char *ai = getenv("APPIMAGE");
  if (!ai || !realpath(ai, self) || !strcmp(self, old)) return true;
  if (old[0] && access(old, F_OK)) { old[0] = 0; old_desk = 0; }
  if (old[0]) { snprintf(dir, sizeof dir, "%s", old); *strrchr(dir, '/') = 0; }
  else snprintf(dir, sizeof dir, "%s/Applications", home);
  page = 0;
  gfx_window(L"Install Little Planet", 320, 160, step);
  return false;
}

bool plat_home(void) {
  setenv("SDL_VIDEO_X11_WMCLASS", ID, 0);
  setenv("SDL_VIDEO_WAYLAND_WMCLASS", ID, 0);
  const char *h = getenv("HOME"), *x = getenv("XDG_DATA_HOME");
  snprintf(home, sizeof home, "%s", h ? h : "");
  if (x && *x == '/') snprintf(share, sizeof share, "%s", x);
  else snprintf(share, sizeof share, "%s/.local/share", home);
  char d[PATH_MAX];
  snprintf(d, sizeof d, "%s/" ID, share);
  mkdirs(d);
  if (chdir(d)) { plat_error("Can't open the data folder."); return false; }
  return installer();
}
