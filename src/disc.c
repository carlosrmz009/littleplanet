#include "disc.h"
#include <ctype.h>
#include "../third_party/libchdr/include/libchdr/chd.h"
#include "../third_party/libchdr/include/dr_libs/dr_flac.h"   // implemented inside libchdr
#define DR_MP3_IMPLEMENTATION
#include "../third_party/dr_libs/dr_mp3.h"
#define STB_VORBIS_NO_PUSHDATA_API
#include "../third_party/stb/stb_vorbis.c"
#undef L
#undef R
#undef C
#ifdef _WIN32
#include <windows.h>
#endif

FILE *u8fopen(const char *path, const char *mode) {
#ifdef _WIN32
  wchar_t wp[1024], wm[16];
  if (!MultiByteToWideChar(CP_UTF8, 0, path, -1, wp, 1024)) return NULL;
  MultiByteToWideChar(CP_UTF8, 0, mode, -1, wm, 16);
  return _wfopen(wp, wm);
#else
  return fopen(path, mode);
#endif
}

static long long fsize(FILE *f) {
#ifdef _WIN32
  _fseeki64(f, 0, SEEK_END); long long n = _ftelli64(f); _fseeki64(f, 0, SEEK_SET);
#else
  fseeko(f, 0, SEEK_END); long long n = ftello(f); fseeko(f, 0, SEEK_SET);
#endif
  return n;
}
static void fseek64(FILE *f, u64 off) {
#ifdef _WIN32
  _fseeki64(f, (long long)off, SEEK_SET);
#else
  fseeko(f, (off_t)off, SEEK_SET);
#endif
}

// ---- sources
enum { SRC_RAW, SRC_SILENCE, SRC_WAV, SRC_FLAC, SRC_MP3, SRC_OGG, SRC_CHD };
typedef struct {
  int kind;
  FILE *f;
  u64 data_off;      // wav: start of PCM data
  u64 frames;        // decoded audio: total stereo frames
  u64 pos;           // decoder position (frames)
  drflac *flac;
  drmp3 *mp3;
  stb_vorbis *ogg;
  int channels;
} Source;
typedef struct { u32 lba, count; int src; u64 off; u16 secsize; u8 type; } Extent;

static Source srcs[100];
static int nsrc;
static Extent ext[256];
static int next;
static DiscToc toc;
static bool open_;

static chd_file *chd;
static u8 *chd_hunk;
static u32 chd_hunk_frames, chd_cur_hunk = 0xffffffff;

static void err_set(char *err, int n, const char *fmt, const char *a) { if (err) snprintf(err, n, fmt, a); }

void disc_close(void) {
  for (int i = 0; i < nsrc; i++) {
    Source *s = &srcs[i];
    if (s->f) fclose(s->f);
    if (s->flac) drflac_close(s->flac);
    if (s->mp3) { drmp3_uninit(s->mp3); free(s->mp3); }
    if (s->ogg) stb_vorbis_close(s->ogg);
  }
  memset(srcs, 0, sizeof srcs);
  nsrc = next = 0;
  memset(&toc, 0, sizeof toc);
  if (chd) chd_close(chd);
  chd = NULL;
  free(chd_hunk); chd_hunk = NULL;
  chd_cur_hunk = 0xffffffff;
  open_ = false;
}
bool disc_is_open(void) { return open_; }
const DiscToc *disc_toc(void) { return &toc; }

static const char *ext_of(const char *p) { const char *d = strrchr(p, '.'); return d ? d + 1 : ""; }
static bool ieq(const char *a, const char *b) { while (*a && *b) if (tolower((u8)*a++) != tolower((u8)*b++)) return false; return !*a && !*b; }

// opens a file referenced by a cue sheet; returns source index
static size_t flac_read(void *u, void *out, size_t n) { return fread(out, 1, n, (FILE *)u); }
static drflac_bool32 flac_seek(void *u, int off, drflac_seek_origin o) {
  return fseek((FILE *)u, off, o == DRFLAC_SEEK_SET ? SEEK_SET : o == DRFLAC_SEEK_CUR ? SEEK_CUR : SEEK_END) == 0;
}
static drflac_bool32 flac_tell(void *u, drflac_int64 *pos) { *pos = ftell((FILE *)u); return 1; }

static int open_source(const char *path, char *err, int errlen) {
  if (nsrc >= 100) return -1;
  Source *s = &srcs[nsrc];
  memset(s, 0, sizeof *s);
  const char *e = ext_of(path);
  if (ieq(e, "flac")) {
    s->f = u8fopen(path, "rb");
    if (s->f) s->flac = drflac_open(flac_read, flac_seek, flac_tell, s->f, NULL);
    if (!s->flac) { if (s->f) fclose(s->f); s->f = NULL; err_set(err, errlen, "can't open %s", path); return -1; }
    s->kind = SRC_FLAC; s->frames = s->flac->totalPCMFrameCount; s->channels = s->flac->channels;
  } else if (ieq(e, "mp3")) {
    s->mp3 = calloc(1, sizeof(drmp3));
#ifdef _WIN32
    wchar_t wp[1024]; MultiByteToWideChar(CP_UTF8, 0, path, -1, wp, 1024);
    bool ok = drmp3_init_file_w(s->mp3, wp, NULL);
#else
    bool ok = drmp3_init_file(s->mp3, path, NULL);
#endif
    if (!ok) { free(s->mp3); s->mp3 = NULL; err_set(err, errlen, "can't open %s", path); return -1; }
    s->kind = SRC_MP3; s->frames = drmp3_get_pcm_frame_count(s->mp3); s->channels = s->mp3->channels;
  } else if (ieq(e, "ogg")) {
    FILE *f = u8fopen(path, "rb");
    int er = 0;
    if (f) s->ogg = stb_vorbis_open_file(f, 1, &er, NULL);
    if (!s->ogg) { if (f) fclose(f); err_set(err, errlen, "can't open %s", path); return -1; }
    s->kind = SRC_OGG; s->frames = stb_vorbis_stream_length_in_samples(s->ogg); s->channels = stb_vorbis_get_info(s->ogg).channels;
  } else {
    s->f = u8fopen(path, "rb");
    if (!s->f) { err_set(err, errlen, "can't open %s", path); return -1; }
    s->kind = SRC_RAW;
    u8 h[12];
    if (fread(h, 1, 12, s->f) == 12 && !memcmp(h, "RIFF", 4) && !memcmp(h + 8, "WAVE", 4)) {
      // walk chunks to "data"
      u8 ch[8];
      while (fread(ch, 1, 8, s->f) == 8) {
        u32 n = ch[4] | ch[5] << 8 | ch[6] << 16 | (u32)ch[7] << 24;
        if (!memcmp(ch, "fmt ", 4)) {
          u8 fmt[16];
          if (fread(fmt, 1, 16, s->f) != 16) break;
          s->channels = fmt[2];
          fseek(s->f, (long)(n - 16 + (n & 1)), SEEK_CUR);
        } else if (!memcmp(ch, "data", 4)) {
          s->kind = SRC_WAV;
          s->data_off = (u64)ftell(s->f);
          s->frames = n / (2u * (s->channels ? s->channels : 2));
          break;
        } else fseek(s->f, (long)(n + (n & 1)), SEEK_CUR);
      }
      if (s->kind != SRC_WAV) { fclose(s->f); s->f = NULL; err_set(err, errlen, "bad wav file %s", path); return -1; }
    }
    s->frames = s->kind == SRC_WAV ? s->frames : (u64)fsize(s->f);   // raw: byte length
  }
  return nsrc++;
}

static void add_ext(u32 lba, u32 count, int src, u64 off, u16 secsize, u8 type) {
  if (!count || next >= 256) return;
  ext[next++] = (Extent){lba, count, src, off, secsize, type};
}

static int silence_src(void) {
  for (int i = 0; i < nsrc; i++) if (srcs[i].kind == SRC_SILENCE) return i;
  srcs[nsrc].kind = SRC_SILENCE;
  return nsrc++;
}

// ---- cue
typedef struct { int num; u8 type; u16 secsize; int file; s32 idx0, idx1, pregap, postgap; } CueTrack;

static u8 type_of(const char *s, u16 *secsize) {
  if (!strncmp(s, "AUDIO", 5)) { *secsize = 2352; return TRK_AUDIO; }
  if (!strncmp(s, "MODE1/2048", 10)) { *secsize = 2048; return TRK_MODE1; }
  if (!strncmp(s, "MODE1/2352", 10)) { *secsize = 2352; return TRK_MODE1; }
  if (!strncmp(s, "MODE2/2336", 10)) { *secsize = 2336; return TRK_MODE2; }
  if (!strncmp(s, "MODE2", 5)) { *secsize = 2352; return TRK_MODE2; }
  *secsize = 2352; return TRK_MODE1;
}
static s32 msf(const char *s) { int m = 0, sec = 0, f = 0; sscanf(s, "%d:%d:%d", &m, &sec, &f); return (m * 60 + sec) * 75 + f; }

static void dir_of(const char *path, char *out, int n) {
  snprintf(out, n, "%s", path);
  char *a = strrchr(out, '/'), *b = strrchr(out, '\\');
  if (b > a) a = b;
  if (a) a[1] = 0; else out[0] = 0;
}

static bool decoded(int src) { int k = srcs[src].kind; return k == SRC_WAV || k == SRC_FLAC || k == SRC_MP3 || k == SRC_OGG; }

static bool open_cue(const char *path, char *err, int errlen) {
  FILE *f = u8fopen(path, "rb");
  if (!f) { err_set(err, errlen, "can't open %s", path); return false; }
  char dir[1024]; dir_of(path, dir, sizeof dir);
  static CueTrack t[100];
  int nt = 0, cur_file = -1;
  char line[1200];
  while (fgets(line, sizeof line, f)) {
    char *p = line;
    while (isspace((u8)*p)) p++;
    if (!strncmp(p, "\xEF\xBB\xBF", 3)) p += 3;
    if (!strncmp(p, "FILE", 4)) {
      char name[1024] = "", *q = p + 4;
      while (isspace((u8)*q)) q++;
      if (*q == '"') { q++; char *e = strchr(q, '"'); if (!e) continue; *e = 0; snprintf(name, sizeof name, "%s", q); }
      else { char *e = q; while (*e && !isspace((u8)*e)) e++; *e = 0; snprintf(name, sizeof name, "%s", q); }
      char full[2100];
      if (name[0] == '/' || (name[0] && name[1] == ':')) snprintf(full, sizeof full, "%s", name);
      else snprintf(full, sizeof full, "%s%s", dir, name);
      cur_file = open_source(full, err, errlen);
      if (cur_file < 0) { fclose(f); return false; }
    } else if (!strncmp(p, "TRACK", 5) && nt < 99 && cur_file >= 0) {
      CueTrack *c = &t[nt++];
      memset(c, 0, sizeof *c);
      char ty[32] = "";
      sscanf(p + 5, "%d %31s", &c->num, ty);
      c->type = type_of(ty, &c->secsize);
      c->file = cur_file; c->idx0 = c->idx1 = -1;
    } else if (!strncmp(p, "INDEX", 5) && nt) {
      int n = 0; char tm[32] = "";
      sscanf(p + 5, "%d %31s", &n, tm);
      if (n == 0) t[nt - 1].idx0 = msf(tm); else if (n == 1) t[nt - 1].idx1 = msf(tm);
    } else if (!strncmp(p, "PREGAP", 6) && nt) {
      char tm[32] = ""; sscanf(p + 6, "%31s", tm); t[nt - 1].pregap = msf(tm);
    } else if (!strncmp(p, "POSTGAP", 7) && nt) {
      char tm[32] = ""; sscanf(p + 7, "%31s", tm); t[nt - 1].postgap = msf(tm);
    }
  }
  fclose(f);
  if (!nt) { err_set(err, errlen, "no tracks in %s", path); return false; }
  u32 abs = 0;
  for (int i = 0; i < nt;) {
    int fi = t[i].file, j = i;
    while (j < nt && t[j].file == fi) j++;
    // tracks i..j-1 share file fi
    u32 file_abs = abs, gaps = 0;
    u64 byte = 0; s32 sec = 0; u16 prev_size = t[i].secsize;
    for (int k = i; k < j; k++) {
      CueTrack *c = &t[k];
      if (c->idx1 < 0) c->idx1 = c->idx0 >= 0 ? c->idx0 : 0;
      s32 first = c->idx0 >= 0 ? c->idx0 : c->idx1;
      byte += (u64)(first - sec) * prev_size;
      sec = first; prev_size = c->secsize;
      if (c->pregap) { add_ext(file_abs + first + gaps, c->pregap, silence_src(), 0, 2352, c->type); gaps += c->pregap; }
      s32 end;
      if (k + 1 < j) end = t[k + 1].idx0 >= 0 ? t[k + 1].idx0 : t[k + 1].idx1;
      else if (decoded(fi)) end = (s32)((srcs[fi].frames + 587) / 588);
      else end = first + (s32)((srcs[fi].frames - byte) / c->secsize);
      u64 off = decoded(fi) ? (u64)first * 588 : byte;
      add_ext(file_abs + first + gaps, (u32)(end - first), fi, off, c->secsize, c->type);
      toc.trk[toc.ntracks].type = c->type;
      toc.trk[toc.ntracks].start = file_abs + c->idx1 + gaps;
      toc.ntracks++;
      if (k + 1 == j) abs = file_abs + end + gaps;
      if (c->postgap) { add_ext(abs, c->postgap, silence_src(), 0, 2352, c->type); abs += c->postgap; gaps += c->postgap; }
    }
    i = j;
  }
  toc.leadout = abs;
  return true;
}

// ---- ccd/img
static bool open_ccd(const char *path, char *err, int errlen) {
  FILE *f = u8fopen(path, "rb");
  if (!f) { err_set(err, errlen, "can't open %s", path); return false; }
  char img[1100];
  snprintf(img, sizeof img, "%s", path);
  char *d = strrchr(img, '.'); strcpy(d, ".img");
  char line[256]; int cur = -1;
  while (fgets(line, sizeof line, f)) {
    int n;
    if (sscanf(line, "[TRACK %d]", &n) == 1 && toc.ntracks < 99) { cur = toc.ntracks++; toc.trk[cur].type = TRK_MODE1; }
    else if (cur >= 0 && sscanf(line, "MODE=%d", &n) == 1) toc.trk[cur].type = n == 0 ? TRK_AUDIO : n == 1 ? TRK_MODE1 : TRK_MODE2;
    else if (cur >= 0 && sscanf(line, "INDEX 1=%d", &n) == 1) toc.trk[cur].start = n;
  }
  fclose(f);
  int s = open_source(img, err, errlen);
  if (s < 0) return false;
  u32 total = (u32)(srcs[s].frames / 2352);
  for (int i = 0; i < toc.ntracks; i++) {
    u32 st = i ? toc.trk[i].start : 0;   // pregaps belong to the track they precede
    u32 end = i + 1 < toc.ntracks ? toc.trk[i + 1].start : total;
    add_ext(st, end - st, s, (u64)st * 2352, 2352, toc.trk[i].type);
  }
  toc.leadout = total;
  return true;
}

// ---- chd
static bool open_chd(const char *path, char *err, int errlen) {
  FILE *f = u8fopen(path, "rb");
  if (!f) { err_set(err, errlen, "can't open %s", path); return false; }
  chd_error e = chd_open_file(f, CHD_OPEN_READ, NULL, &chd);
  if (e != CHDERR_NONE) { fclose(f); err_set(err, errlen, "not a valid CHD: %s", chd_error_string(e)); chd = NULL; return false; }
  const chd_header *h = chd_get_header(chd);
  chd_hunk_frames = h->hunkbytes / 2448;
  chd_hunk = malloc(h->hunkbytes);
  srcs[nsrc].kind = SRC_CHD;
  int s = nsrc++;
  u32 phys = 0, chdframe = 0;
  for (int i = 0; i < 99; i++) {
    char meta[256] = "";
    u32 len = 0, tag = 0; u8 flags = 0;
    if (chd_get_metadata(chd, CDROM_TRACK_METADATA2_TAG, i, meta, sizeof meta, &len, &tag, &flags) != CHDERR_NONE &&
        chd_get_metadata(chd, CDROM_TRACK_METADATA_TAG, i, meta, sizeof meta, &len, &tag, &flags) != CHDERR_NONE) break;
    int tn = 0, frames = 0, pregap = 0, postgap = 0;
    char type[32] = "", sub[32] = "", pgtype[32] = "", pgsub[32] = "";
    if (sscanf(meta, CDROM_TRACK_METADATA2_FORMAT, &tn, type, sub, &frames, &pregap, pgtype, pgsub, &postgap) < 4)
      sscanf(meta, CDROM_TRACK_METADATA_FORMAT, &tn, type, sub, &frames);
    u8 ty; u16 size = 2352;
    if (!strcmp(type, "AUDIO")) ty = TRK_AUDIO;
    else if (!strcmp(type, "MODE1")) { ty = TRK_MODE1; size = 2048; }
    else if (!strcmp(type, "MODE1_RAW")) ty = TRK_MODE1;
    else if (!strcmp(type, "MODE2_FORM1")) { ty = TRK_MODE2; size = 2048; }
    else ty = TRK_MODE2;
    bool pg_in_file = pgtype[0] == 'V';
    if (pregap && !pg_in_file && i) { add_ext(phys, pregap, silence_src(), 0, 2352, ty); phys += pregap; }
    // frames include a stored pregap
    add_ext(phys, frames, s, chdframe, size, ty);
    toc.trk[toc.ntracks].type = ty;
    toc.trk[toc.ntracks].start = phys + (pg_in_file ? pregap : 0);
    toc.ntracks++;
    phys += frames;
    chdframe += (frames + 3) & ~3;
    if (postgap) { add_ext(phys, postgap, silence_src(), 0, 2352, ty); phys += postgap; }
  }
  toc.leadout = phys;
  if (!toc.ntracks) { err_set(err, errlen, "%s", "CHD has no CD track metadata"); return false; }
  return true;
}

static bool chd_frame(u32 frame, u8 **out) {
  u32 hunk = frame / chd_hunk_frames;
  if (hunk != chd_cur_hunk) {
    if (chd_read(chd, hunk, chd_hunk) != CHDERR_NONE) return false;
    chd_cur_hunk = hunk;
  }
  *out = chd_hunk + (frame % chd_hunk_frames) * 2448;
  return true;
}

bool disc_open(const char *path, char *err, int errlen) {
  disc_close();
  const char *e = ext_of(path);
  bool ok;
  if (ieq(e, "cue")) ok = open_cue(path, err, errlen);
  else if (ieq(e, "ccd")) ok = open_ccd(path, err, errlen);
  else if (ieq(e, "chd")) ok = open_chd(path, err, errlen);
  else if (ieq(e, "iso") || ieq(e, "bin") || ieq(e, "img")) {
    char cue[1100];
    snprintf(cue, sizeof cue, "%s", path);
    strcpy(strrchr(cue, '.'), ".cue");
    FILE *cf = u8fopen(cue, "rb");
    if (cf && !ieq(e, "iso")) { fclose(cf); ok = open_cue(cue, err, errlen); }
    else {
      if (cf) fclose(cf);
      int s = open_source(path, err, errlen);
      ok = s >= 0;
      if (ok) {
        u8 sync[12]; static const u8 SYNC[12] = {0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0};
        fseek(srcs[s].f, 0, SEEK_SET);
        u16 size = fread(sync, 1, 12, srcs[s].f) == 12 && !memcmp(sync, SYNC, 12) ? 2352 : 2048;
        u32 n = (u32)(srcs[s].frames / size);
        add_ext(0, n, s, 0, size, TRK_MODE1);
        toc.ntracks = 1; toc.trk[0].type = TRK_MODE1; toc.trk[0].start = 0; toc.leadout = n;
      }
    }
  } else { err_set(err, errlen, "unsupported disc image type .%s (use cue, iso, chd or ccd)", e); ok = false; }
  if (!ok) { disc_close(); return false; }
  // make track 1 index 01 LBA 0
  s32 shift = (s32)toc.trk[0].start;
  if (shift) {
    for (int i = 0; i < next; i++) ext[i].lba -= shift;
    for (int i = 0; i < toc.ntracks; i++) toc.trk[i].start -= shift;
    toc.leadout -= shift;
  }
  if (toc.trk[0].type == TRK_AUDIO) { disc_close(); err_set(err, errlen, "%s", "the first track is not a data track"); return false; }
  open_ = true;
  return true;
}

static Extent *find(u32 lba) {
  for (int i = 0; i < next; i++) if (lba - ext[i].lba < ext[i].count) return &ext[i];
  return NULL;
}

static bool read_raw(Extent *x, u32 lba, u8 *buf, int skip, int n) {
  Source *s = &srcs[x->src];
  if (s->kind == SRC_SILENCE) { memset(buf, 0, n); return true; }
  if (s->kind == SRC_CHD) {
    u8 *p;
    if (!chd_frame((u32)x->off + (lba - x->lba), &p)) return false;
    memcpy(buf, p + skip, n);
    return true;
  }
  fseek64(s->f, x->off + (u64)(lba - x->lba) * x->secsize + skip);
  size_t got = fread(buf, 1, n, s->f);
  if (got < (size_t)n) memset(buf + got, 0, n - got);
  return true;
}

bool disc_read_data(u32 lba, u8 *buf) {
  Extent *x = find(lba);
  if (!x || x->type == TRK_AUDIO) { memset(buf, 0, 2048); return false; }
  int skip = x->secsize == 2048 ? 0 : x->type == TRK_MODE1 ? 16 : x->secsize == 2336 ? 8 : 24;
  return read_raw(x, lba, buf, skip, 2048);
}

static void mix_channels(s16 *dst, const s16 *src, int frames, int ch) {
  for (int i = 0; i < frames; i++) {
    dst[i * 2] = src[i * ch];
    dst[i * 2 + 1] = ch > 1 ? src[i * ch + 1] : src[i * ch];
  }
}

bool disc_read_audio(u32 lba, s16 *buf) {
  Extent *x = find(lba);
  if (!x) { memset(buf, 0, 2352); return false; }
  Source *s = &srcs[x->src];
  u64 frame = x->off + (u64)(lba - x->lba) * 588;
  switch (s->kind) {
  case SRC_SILENCE: memset(buf, 0, 2352); return true;
  case SRC_RAW: read_raw(x, lba, (u8 *)buf, 0, 2352); break;
  case SRC_CHD: {
    read_raw(x, lba, (u8 *)buf, 0, 2352);
    u8 *b = (u8 *)buf;
    for (int i = 0; i < 2352; i += 2) { u8 t = b[i]; b[i] = b[i + 1]; b[i + 1] = t; }   // CHD audio is big-endian
    break;
  }
  default: {
    s16 tmp[588 * 8];
    int ch = s->channels ? s->channels : 2;
    if (ch > 8) ch = 8;
    memset(tmp, 0, sizeof tmp);
    int got = 0;
    if (s->kind == SRC_WAV) {
      fseek64(s->f, s->data_off + frame * 2 * ch);
      got = (int)fread(tmp, 2 * ch, 588, s->f);
    } else {
      if (s->pos != frame) {
        if (s->kind == SRC_FLAC) drflac_seek_to_pcm_frame(s->flac, frame);
        else if (s->kind == SRC_MP3) drmp3_seek_to_pcm_frame(s->mp3, frame);
        else stb_vorbis_seek(s->ogg, (unsigned)frame);
      }
      if (s->kind == SRC_FLAC) got = (int)drflac_read_pcm_frames_s16(s->flac, 588, tmp);
      else if (s->kind == SRC_MP3) got = (int)drmp3_read_pcm_frames_s16(s->mp3, 588, tmp);
      else got = stb_vorbis_get_samples_short_interleaved(s->ogg, ch, tmp, 588 * ch);
      s->pos = frame + (got > 0 ? got : 0);
    }
    (void)got;
    mix_channels(buf, tmp, 588, ch);
    return true;
  }
  }
  // raw little-endian samples
  u8 *b = (u8 *)buf;
  for (int i = 0; i < 1176; i++) buf[i] = (s16)(b[i * 2] | b[i * 2 + 1] << 8);
  return true;
}

// ---- files an image is made of (for copying it somewhere else)
int disc_image_files(const char *path, char (*out)[1024], int max) {
  int n = 0;
  if (n < max) snprintf(out[n++], 1024, "%s", path);
  const char *e = ext_of(path);
  char dir[1024]; dir_of(path, dir, sizeof dir);
  if (ieq(e, "cue")) {
    FILE *f = u8fopen(path, "rb");
    char line[1200];
    while (f && fgets(line, sizeof line, f) && n < max) {
      char *p = line;
      while (isspace((u8)*p)) p++;
      if (strncmp(p, "FILE", 4)) continue;
      p += 4;
      while (isspace((u8)*p)) p++;
      char name[1024];
      if (*p == '"') { p++; char *q = strchr(p, '"'); if (!q) continue; *q = 0; } else { char *q = p; while (*q && !isspace((u8)*q)) q++; *q = 0; }
      snprintf(name, sizeof name, "%s", p);
      if (name[0] == '/' || (name[0] && name[1] == ':')) snprintf(out[n++], 1024, "%s", name);
      else snprintf(out[n++], 1024, "%s%s", dir, name);
    }
    if (f) fclose(f);
  } else if (ieq(e, "ccd")) {
    static const char *ex[] = {".img", ".sub"};
    for (int i = 0; i < 2 && n < max; i++) {
      snprintf(out[n], 1024, "%s", path);
      strcpy(strrchr(out[n], '.'), ex[i]);
      FILE *f = u8fopen(out[n], "rb");
      if (f) { fclose(f); n++; }
    }
  }
  return n;
}

// ---- ISO 9660
static int iso_dir(u32 lba, u32 size, IsoFile *out, int max, const char *want, IsoFile *found) {
  u8 sec[2048];
  int n = 0;
  for (u32 o = 0; o < size; o += 2048) {
    if (!disc_read_data(lba + o / 2048, sec)) return n;
    for (u32 i = 0; i < 2048;) {
      u8 l = sec[i];
      if (!l) break;
      u8 nl = sec[i + 32];
      if (!(nl == 1 && (sec[i + 33] == 0 || sec[i + 33] == 1))) {
        IsoFile f;
        int k = 0;
        for (; k < nl && k < 31 && sec[i + 33 + k] != ';'; k++) f.name[k] = sec[i + 33 + k];
        f.name[k] = 0;
        f.lba = sec[i + 2] | sec[i + 3] << 8 | sec[i + 4] << 16 | (u32)sec[i + 5] << 24;
        f.size = sec[i + 10] | sec[i + 11] << 8 | sec[i + 12] << 16 | (u32)sec[i + 13] << 24;
        if (want && ieq(f.name, want)) { *found = f; return 1; }
        if (out && n < max) out[n] = f;
        n++;
      }
      i += l;
    }
  }
  return want ? 0 : n;
}
static bool iso_root(u32 *lba, u32 *size) {
  u8 pvd[2048];
  if (!disc_read_data(16, pvd) || memcmp(pvd + 1, "CD001", 5)) return false;
  *lba = pvd[158] | pvd[159] << 8 | pvd[160] << 16 | (u32)pvd[161] << 24;
  *size = pvd[166] | pvd[167] << 8 | pvd[168] << 16 | (u32)pvd[169] << 24;
  return true;
}
int iso_list(IsoFile *out, int max) {
  u32 l, s;
  if (!iso_root(&l, &s)) return 0;
  return iso_dir(l, s, out, max, NULL, NULL);
}
bool iso_find(const char *name, IsoFile *out) {
  u32 l, s;
  if (!iso_root(&l, &s)) return false;
  return iso_dir(l, s, NULL, 0, name, out) == 1;
}

// ---- SHA-1
#define ROL(x, n) (((x) << (n)) | ((x) >> (32 - (n))))
static void sha1_block(Sha1 *s, const u8 *b) {
  u32 w[80], a = s->h[0], bb = s->h[1], c = s->h[2], d = s->h[3], e = s->h[4];
  for (int i = 0; i < 16; i++) w[i] = (u32)b[i * 4] << 24 | b[i * 4 + 1] << 16 | b[i * 4 + 2] << 8 | b[i * 4 + 3];
  for (int i = 16; i < 80; i++) w[i] = ROL(w[i - 3] ^ w[i - 8] ^ w[i - 14] ^ w[i - 16], 1);
  for (int i = 0; i < 80; i++) {
    u32 f, k;
    if (i < 20) { f = (bb & c) | (~bb & d); k = 0x5a827999; }
    else if (i < 40) { f = bb ^ c ^ d; k = 0x6ed9eba1; }
    else if (i < 60) { f = (bb & c) | (bb & d) | (c & d); k = 0x8f1bbcdc; }
    else { f = bb ^ c ^ d; k = 0xca62c1d6; }
    u32 t = ROL(a, 5) + f + e + k + w[i];
    e = d; d = c; c = ROL(bb, 30); bb = a; a = t;
  }
  s->h[0] += a; s->h[1] += bb; s->h[2] += c; s->h[3] += d; s->h[4] += e;
}
void sha1_init(Sha1 *s) { *s = (Sha1){{0x67452301, 0xefcdab89, 0x98badcfe, 0x10325476, 0xc3d2e1f0}, 0, {0}}; }
void sha1_update(Sha1 *s, const void *data, size_t n) {
  const u8 *p = data;
  while (n--) {
    s->buf[s->len++ & 63] = *p++;
    if (!(s->len & 63)) sha1_block(s, s->buf);
  }
}
void sha1_final(Sha1 *s, char hex[41]) {
  u64 bits = s->len * 8;
  u8 pad = 0x80;
  sha1_update(s, &pad, 1);
  pad = 0;
  while ((s->len & 63) != 56) sha1_update(s, &pad, 1);
  for (int i = 7; i >= 0; i--) { u8 b = (u8)(bits >> (i * 8)); sha1_update(s, &b, 1); }
  for (int i = 0; i < 5; i++) sprintf(hex + i * 8, "%08x", s->h[i]);
}
