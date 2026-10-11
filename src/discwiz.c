// First launch: pick a Sonic CD disc image, check it, and copy it into the data folder.
#include "app.h"
#include "disc.h"
#include "version.h"

#define DISC_DIR "disc"
#define DISC_LIST DISC_DIR "/disc.txt"

static int page;
static char picked[1024];
static char files[128][1024];
static int nfiles, cur_file;
static FILE *src_f, *dst_f;
static long long copied, total;
static char main_name[256];

#ifdef _WIN32
#include <commdlg.h>
#pragma comment(lib, "comdlg32.lib")
static int pick(char *out, int n) {
  wchar_t fn[MAX_PATH] = L"";
  OPENFILENAMEW o = { sizeof o };
  o.hwndOwner = gfx_hwnd; o.lpstrFile = fn; o.nMaxFile = MAX_PATH;
  o.lpstrFilter = L"Disc image (*.cue, *.chd, *.iso, *.ccd)\0*.cue;*.chd;*.iso;*.ccd\0All files\0*.*\0";
  o.Flags = OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST | OFN_NOCHANGEDIR;
  if (!GetOpenFileNameW(&o)) return 0;
  return WideCharToMultiByte(CP_UTF8, 0, fn, -1, out, n, NULL, NULL) > 0;
}
static void mk(const char *d) { CreateDirectoryA(d, NULL); }
#else
#include <sys/stat.h>
static int pick(char *out, int n) {
  if (gfx_drop[0]) { snprintf(out, n, "%s", gfx_drop); gfx_drop[0] = 0; return 1; }
  int r = plat_pick(false, out, n);
  if (r < 0) page = 4;
  return r > 0;
}
static void mk(const char *d) { mkdir(d, 0755); }
#endif

static const char *base_name(const char *p) {
  const char *a = strrchr(p, '/'), *b = strrchr(p, '\\');
  if (b > a) a = b;
  return a ? a + 1 : p;
}

// 0 good, 1 not Sonic CD, 2 unknown version
static int check(const char *path) {
  char err[256];
  if (!disc_open(path, err, sizeof err)) return 1;
  u8 sec[2048];
  bool ok = disc_read_data(0, sec) && !memcmp(sec, "SEGADISCSYSTEM", 14) && !memcmp(sec + 0x150, "SONIC THE HEDGEHOG-CD", 21);
  int r = 1;
  if (ok) {
    char id[41];
    disc_id(id);
    r = disc_version(id) ? 0 : 2;
  }
  disc_close();
  return r;
}

static bool start_copy(void) {
  nfiles = disc_image_files(picked, files, 128);
  mk(DISC_DIR);
  total = copied = 0;
  for (int i = 0; i < nfiles; i++) {
    FILE *f = u8fopen(files[i], "rb");
    if (!f) return false;
    fseek(f, 0, SEEK_END); total += ftell(f); fclose(f);
  }
  snprintf(main_name, sizeof main_name, "%s", base_name(picked));
  cur_file = 0; src_f = dst_f = NULL;
  return true;
}

// a cue sheet is rewritten so its FILE lines name the copied files
static bool copy_cue(const char *from, const char *to) {
  FILE *a = u8fopen(from, "rb"), *b = a ? u8fopen(to, "wb") : NULL;
  if (!b) { if (a) fclose(a); return false; }
  char line[1200];
  while (fgets(line, sizeof line, a)) {
    char *p = line;
    while (*p == ' ' || *p == '\t') p++;
    if (!strncmp(p, "FILE", 4)) {
      char *q = strchr(p, '"'), *r = q ? strchr(q + 1, '"') : NULL;
      if (q && r) {
        *r = 0;
        fprintf(b, "FILE \"%s\"%s", base_name(q + 1), r + 1);
        continue;
      }
    }
    fputs(line, b);
  }
  fclose(a);
  return fclose(b) == 0;
}

// copies 8 MB per call so the window keeps drawing; 1 done, 0 more to do, -1 failed
static int copy_step(void) {
  static char buf[1 << 20];
  for (int k = 0; k < 8; k++) {
    if (cur_file >= nfiles) {
      FILE *f = fopen(DISC_LIST, "w");
      if (!f) return -1;
      fprintf(f, "%s\n", main_name);
      fclose(f);
      remove("preview_cache.bin");
      return 1;
    }
    char dst[1300];
    snprintf(dst, sizeof dst, DISC_DIR "/%s", base_name(files[cur_file]));
    const char *e = strrchr(files[cur_file], '.');
    if (e && (!strcmp(e, ".cue") || !strcmp(e, ".CUE"))) {
      if (!copy_cue(files[cur_file], dst)) return -1;
      cur_file++;
      continue;
    }
    if (!src_f) {
      src_f = u8fopen(files[cur_file], "rb");
      dst_f = u8fopen(dst, "wb");
      if (!src_f || !dst_f) return -1;
    }
    size_t n = fread(buf, 1, sizeof buf, src_f);
    if (n && fwrite(buf, 1, n, dst_f) != n) return -1;
    copied += n;
    if (n < sizeof buf) {
      fclose(src_f);
      bool ok = fclose(dst_f) == 0;
      src_f = dst_f = NULL;
      if (!ok) return -1;
      cur_file++;
    }
  }
  return 0;
}

static int browse(void) {
  if (!pick(picked, sizeof picked)) return page;
  switch (check(picked)) {
  case 0: return start_copy() ? 5 : 3;
  case 2: return 2;
  default: return 1;
  }
}

static int step(void) {
  logo(8, 2);
  text_r(cw - 8, 10, f_small, C_DIM, "Sonic CD");
  panel(8, 36, cw - 16, ch - 44, C_PANEL, C_EDGE);
  tab(16, 30, "DISC");
  static const char *head[] = { "Pick your Sonic CD disc image.", "That's not Sonic CD.", "That's not a known Sonic CD release.",
                                "Couldn't copy the disc.", "No file picker found.", "Copying the disc..." };
  static const char *sub[] = { ".cue, .chd, .iso or .ccd. The Japanese release is tested.", "Try another file.",
                               "It might still work, but it's untested.", "Check the disk space and try again.",
                               "Drop the disc image (.cue/.chd) on this window.", "" };
  text(18, 48, f_item, C_TEXT, head[page]);
  int y = ch - 30;
  if (page == 5) {
    int r = copy_step();
    if (r == 1) return 1;
    if (r < 0) { if (src_f) fclose(src_f); if (dst_f) fclose(dst_f); src_f = dst_f = NULL; page = 3; return 0; }
    int bw = cw - 36;
    panel(18, 66, bw, 12, C_INSET, C_EDGE);
    int done = total ? (int)((bw - 4) * copied / total) : 0;
    fill(20, 68, done, 8, C_LCD);
    char b[64]; snprintf(b, sizeof b, "%lld of %lld MB", copied >> 20, total >> 20);
    text(18, 84, f_small, C_DIM, b);
    return 0;
  }
  text(18, 64, f_small, C_DIM, sub[page]);
#ifndef _WIN32
  if (gfx_drop[0]) page = browse();
#endif
  if (page == 2) {
    if (gfx_button(18, y, 84, "Use it")) page = start_copy() ? 5 : 3;
    if (gfx_button(108, y, 84, "Pick another")) page = browse();
  } else if (page != 5) {
    if (gfx_button(18, y, 84, "Browse...")) page = browse();
    if (gfx_button(108, y, 84, "Quit")) return 2;
  }
  if (gfx_key == VK_ESCAPE) return 2;
  return 0;
}

// the copied disc, if there is one that opens
static const char *installed_disc(void) {
  static char path[600];
  FILE *f = fopen(DISC_LIST, "r");
  char name[256];
  if (!f) return NULL;
  bool ok = fgets(name, sizeof name, f) != NULL;
  fclose(f);
  if (!ok) return NULL;
  name[strcspn(name, "\r\n")] = 0;
  snprintf(path, sizeof path, DISC_DIR "/%s", name);
  FILE *t = u8fopen(path, "rb");
  if (!t) return NULL;
  fclose(t);
  return path;
}

const char *disc_wizard(void) {
  const char *p = installed_disc();
  if (p) return p;
  page = 0;
  if (gfx_window(L"Little Planet", 320, 160, step) != 1) return NULL;
  return installed_disc();
}
