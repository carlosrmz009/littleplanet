// Disc image helper for the build: identify a disc, list or extract its files, dump tracks.
//   disctool info  IMAGE
//   disctool hash  IMAGE
//   disctool ls    IMAGE
//   disctool extract IMAGE OUTDIR [FILE...]
//   disctool wav   IMAGE TRACK OUT.wav
#include "../src/disc.h"
#include "../src/version.h"

static int usage(void) {
  fprintf(stderr, "usage: disctool info|hash|ls IMAGE | extract IMAGE OUTDIR [FILE...] | wav IMAGE TRACK OUT.wav\n");
  return 2;
}

int main(int argc, char **argv) {
  if (argc < 3) return usage();
  char err[512];
  if (!disc_open(argv[2], err, sizeof err)) { fprintf(stderr, "%s\n", err); return 1; }
  const DiscToc *t = disc_toc();
  if (!strcmp(argv[1], "info")) {
    for (int i = 0; i < t->ntracks; i++) {
      u32 end = i + 1 < t->ntracks ? t->trk[i + 1].start : t->leadout;
      printf("track %2d %-5s lba %6u  %6u sectors\n", i + 1, t->trk[i].type == TRK_AUDIO ? "audio" : "data", t->trk[i].start, end - t->trk[i].start);
    }
    printf("leadout %u\n", t->leadout);
    u8 sec[2048];
    disc_read_data(0, sec);
    printf("header  %.16s | %.48s | %.14s\n", sec, sec + 0x150, sec + 0x180);
    char hex[41];
    disc_id(hex);
    printf("data sha1 %s\n", hex);
    const DiscVersion *v = disc_version(hex);
    printf("version %s\n", v ? v->name : "unknown");
  } else if (!strcmp(argv[1], "hash")) {
    char hex[41];
    disc_id(hex);
    printf("data %s\n", hex);
    for (int i = 1; i < t->ntracks; i++) {
      u32 end = i + 1 < t->ntracks ? t->trk[i + 1].start : t->leadout;
      Sha1 s; sha1_init(&s);
      s16 buf[1176];
      for (u32 l = t->trk[i].start; l < end; l++) { disc_read_audio(l, buf); sha1_update(&s, buf, sizeof buf); }
      sha1_final(&s, hex);
      printf("track %2d %6u %6u %s\n", i + 1, t->trk[i].start, end - t->trk[i].start, hex);
    }
  } else if (!strcmp(argv[1], "ls")) {
    static IsoFile f[512];
    int n = iso_list(f, 512);
    for (int i = 0; i < n && i < 512; i++) printf("%-14s %6u %9u\n", f[i].name, f[i].lba, f[i].size);
  } else if (!strcmp(argv[1], "extract") && argc >= 4) {
    static IsoFile f[512];
    int n = iso_list(f, 512);
    int done = 0;
    for (int i = 0; i < n && i < 512; i++) {
      bool want = argc == 4;
      for (int k = 4; k < argc; k++) if (!strcmp(argv[k], f[i].name)) want = true;
      if (!want) continue;
      char p[1200]; snprintf(p, sizeof p, "%s/%s", argv[3], f[i].name);
      FILE *o = u8fopen(p, "wb");
      if (!o) { fprintf(stderr, "can't write %s\n", p); return 1; }
      u8 sec[2048];
      for (u32 s = 0; s < (f[i].size + 2047) / 2048; s++) {
        disc_read_data(f[i].lba + s, sec);
        u32 n2 = f[i].size - s * 2048; if (n2 > 2048) n2 = 2048;
        fwrite(sec, 1, n2, o);
      }
      fclose(o);
      done++;
    }
    printf("extracted %d files\n", done);
  } else if (!strcmp(argv[1], "wav") && argc == 5) {
    int tr = atoi(argv[3]) - 1;
    if (tr < 0 || tr >= t->ntracks) return usage();
    u32 s = t->trk[tr].start, e = tr + 1 < t->ntracks ? t->trk[tr + 1].start : t->leadout;
    FILE *o = u8fopen(argv[4], "wb");
    u32 bytes = (e - s) * 2352;
    u8 h[44] = "RIFF....WAVEfmt \x10\0\0\0\1\0\2\0\x44\xac\0\0\x10\xb1\2\0\4\0\x10\0data....";
    u32 rl = bytes + 36; memcpy(h + 4, &rl, 4); memcpy(h + 40, &bytes, 4);
    fwrite(h, 1, 44, o);
    s16 buf[1176];
    for (u32 l = s; l < e; l++) { disc_read_audio(l, buf); fwrite(buf, 2, 1176, o); }
    fclose(o);
  } else return usage();
  disc_close();
  return 0;
}
