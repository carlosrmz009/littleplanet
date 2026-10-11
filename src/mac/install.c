#include "../gfx.h"
#include <limits.h>
#include <mach-o/dyld.h>
#include <spawn.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <unistd.h>

#define APP "Little Planet.app"
extern char **environ;
void plat_error(const char *msg);
void mac_dock(const char *app, bool add);
bool mac_trash(const char *path);
void mac_register(const char *path);

static char self[PATH_MAX], dir[PATH_MAX], dst[PATH_MAX], old[PATH_MAX], link_path[PATH_MAX], shown[PATH_MAX], shown_for[PATH_MAX];
static int page, dock = 1, desk, old_desk;
static const char *err;

static int run(const char *const *argv) {
  pid_t pid; int st;
  if (posix_spawn(&pid, argv[0], NULL, NULL, (char *const *)argv, environ)) return -1;
  if (waitpid(pid, &st, 0) < 0) return -1;
  return WIFEXITED(st) ? WEXITSTATUS(st) : -1;
}

static bool ends_with(const char *s, const char *t) { size_t a = strlen(s), b = strlen(t); return a >= b && !strcmp(s + a - b, t); }

static bool bundle_path(char *out) {
  char exe[PATH_MAX]; uint32_t n = sizeof exe;
  if (_NSGetExecutablePath(exe, &n) || !realpath(exe, out)) return false;
  for (int i = 0; i < 3; i++) { char *s = strrchr(out, '/'); if (!s) return false; *s = 0; }
  return ends_with(out, ".app");
}

static bool in_apps(const char *app) {
  char p[PATH_MAX]; snprintf(p, sizeof p, "%s", app);
  char *s = strrchr(p, '/');
  if (!s) return false;
  *s = 0;
  return ends_with(p, "/Applications");
}

static void save_record(void) {
  FILE *f = fopen("install_path", "w");
  if (f) { fprintf(f, "%s\n%d\n", old, old_desk); fclose(f); }
}

static const char *install(void) {
  struct stat st;
  if (stat(dir, &st) || !S_ISDIR(st.st_mode)) return "That folder is gone. Pick another one.";
  if (access(dir, W_OK)) return "Can't write there. Pick another folder.";
  snprintf(dst, sizeof dst, "%s/" APP, dir);
  char real[PATH_MAX];
  if (!realpath(dst, real) || strcmp(real, self)) {
    const char *rm[] = { "/bin/rm", "-rf", dst, NULL };
    const char *cp[] = { "/usr/bin/ditto", self, dst, NULL };
    if (run(rm) || run(cp)) return "Copy failed. Out of space?";
  }
  const char *xa[] = { "/usr/bin/xattr", "-dr", "com.apple.quarantine", dst, NULL };
  run(xa);
  mac_register(dst);
  const char *md[] = { "/usr/bin/mdimport", dst, NULL };
  run(md);
  if (dock) mac_dock(dst, true);
  if (desk || old_desk) {
    if (!lstat(link_path, &st) && S_ISLNK(st.st_mode)) unlink(link_path);
    old_desk = desk && !symlink(dst, link_path);
  }
  if (!realpath(dst, old)) snprintf(old, sizeof old, "%s", dst);
  save_record();
  return NULL;
}

static const char *uninstall(void) {
  if (!mac_trash(old)) {
    const char *rm[] = { "/bin/rm", "-rf", old, NULL };
    if (run(rm)) return "Couldn't remove it. Is it running?";
  }
  mac_dock(old, false);
  struct stat st;
  if (old_desk && !lstat(link_path, &st) && S_ISLNK(st.st_mode)) unlink(link_path);
  remove("install_path");
  old[0] = 0; old_desk = 0;
  return NULL;
}

static void path_text(int x, int y, int w, const char *p) {
  if (strcmp(shown_for, p)) {
    const char *home = getenv("HOME");
    char b[PATH_MAX];
    size_t hl = home ? strlen(home) : 0;
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
    if (old[0] && gfx_button(198, y, 84, "Uninstall")) page = 10;
    text(18, 46, f_item, C_TEXT, "Install to");
    int bw = 56, pw = cw - 36 - bw - 6;
    fill(18, 61, pw, 15, C_INSET);
    path_text(22, 62, pw - 7, dir);
    if (gfx_button(cw - 18 - bw, 61, bw, "Change")) { char p[PATH_MAX]; if (plat_pick(true, p, sizeof p) > 0) snprintf(dir, sizeof dir, "%s", p); }
    gfx_check(26, 86, "Add to Dock", &dock);
    gfx_check(130, 86, "Desktop alias", &desk);
    text(18, 104, f_small, C_DIM, old[0] ? "Already installed. This updates it." : "Spotlight finds it either way.");
    break;
  }
  case 1:
    frame("DONE");
    text(18, 48, f_item, C_TEXT, "Installed.");
    text(18, 64, f_small, C_DIM, "Pick your Sonic CD disc on first launch.");
    if (gfx_button(18, y, 84, "Play")) { const char *o[] = { "/usr/bin/open", "-n", dst, NULL }; run(o); return 1; }
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
    if (gfx_button(108, y, 84, "Cancel") || gfx_key == VK_ESCAPE) page = 0;
    break;
  case 11:
    frame("BYE");
    text(18, 48, f_item, C_TEXT, "Removed.");
    if (gfx_button(18, y, 84, "Close") || gfx_key == VK_ESCAPE) return 1;
    break;
  }
  return 0;
}

static bool mac_install(void) {
  if (!bundle_path(self)) return true;
  FILE *f = fopen("install_path", "r");
  if (f) {
    if (!fgets(old, sizeof old, f)) old[0] = 0;
    old[strcspn(old, "\n")] = 0;
    if (fscanf(f, "%d", &old_desk) != 1) old_desk = 0;
    fclose(f);
  }
  if (in_apps(self) || !strcmp(self, old)) return true;
  struct stat st;
  if (!ends_with(old, "/" APP) || stat(old, &st)) { old[0] = 0; old_desk = 0; }
  const char *home = getenv("HOME");
  if (!home) home = "";
  snprintf(link_path, sizeof link_path, "%s/Desktop/Little Planet", home);
  if (old[0]) { snprintf(dir, sizeof dir, "%s", old); *strrchr(dir, '/') = 0; }
  else if (!access("/Applications", W_OK)) snprintf(dir, sizeof dir, "/Applications");
  else { snprintf(dir, sizeof dir, "%s/Applications", home); mkdir(dir, 0755); }
  page = 0;
  gfx_window(L"Install Little Planet", 320, 160, step);
  return false;
}

bool plat_home(void) {
  const char *home = getenv("HOME");
  char d[1024];
  snprintf(d, sizeof d, "%s/Library/Application Support/Little Planet", home ? home : "");
  mkdir(d, 0755);
  if (chdir(d)) { plat_error("Can't open the data folder."); return false; }
  return mac_install();
}

// SDL window icon: macOS takes it from the app bundle
struct SDL_Window;
void sdl_icon(struct SDL_Window *w) { (void)w; }
