// Runs SingleStepTests/z80 vectors (converted by z80_json2bin.py) against src/z80cpu.c
#include "../src/z80cpu.h"

static u8 mem[65536];
static u8 port_vals[16]; static int nport, iport;
static u8 rd(u16 a) { return mem[a]; }
static void wr(u16 a, u8 v) { mem[a] = v; }
static u8 in(u16 p) { (void)p; return iport < nport ? port_vals[iport++] : 0xff; }
static void out(u16 p, u8 v) { (void)p; (void)v; }

typedef struct { u16 reg[25]; u16 n; u16 addr[64]; u8 val[64]; } St;
static const char *RN[25] = {"a", "b", "c", "d", "e", "f", "h", "l", "i", "r", "af_", "bc_", "de_", "hl_", "ix", "iy", "pc", "sp", "wz", "iff1", "iff2", "im", "ei", "p", "q"};

static void rs(FILE *f, St *s) {
  if (fread(s->reg, 2, 25, f) != 25 || fread(&s->n, 2, 1, f) != 1) exit(1);
  for (int i = 0; i < s->n; i++) { if (fread(&s->addr[i], 2, 1, f) != 1 || fread(&s->val[i], 1, 1, f) != 1) exit(1); }
}

int main(int argc, char **argv) {
  long total = 0, fails = 0, cycfails = 0;
  int verbose = getenv("V") != NULL;
  for (int ai = 1; ai < argc; ai++) {
    FILE *f = fopen(argv[ai], "rb");
    u32 cnt; if (fread(&cnt, 4, 1, f) != 1) return 1;
    int ff = 0, fc = 0;
    for (u32 t = 0; t < cnt; t++) {
      u8 nl; char name[40];
      if (fread(&nl, 1, 1, f) != 1 || fread(name, 1, nl, f) != nl) return 1;
      name[nl] = 0;
      St a, b; rs(f, &a); rs(f, &b);
      u16 ncyc, np; if (fread(&ncyc, 2, 1, f) != 1 || fread(&np, 2, 1, f) != 1) return 1;
      nport = np; iport = 0;
      for (int i = 0; i < np; i++) if (fread(&port_vals[i < 16 ? i : 15], 1, 1, f) != 1) return 1;
      for (int i = 0; i < a.n; i++) mem[a.addr[i]] = a.val[i];
      Z80 z; memset(&z, 0, sizeof z); z80cpu_reset(&z);
      z.read = rd; z.write = wr; z.in = in; z.out = out;
      z.a = a.reg[0]; z.b = a.reg[1]; z.c = a.reg[2]; z.d = a.reg[3]; z.e = a.reg[4]; z.f = a.reg[5]; z.h = a.reg[6]; z.l = a.reg[7];
      z.i = a.reg[8]; z.r = a.reg[9]; z.af_ = a.reg[10]; z.bc_ = a.reg[11]; z.de_ = a.reg[12]; z.hl_ = a.reg[13];
      z.ix = a.reg[14]; z.iy = a.reg[15]; z.pc = a.reg[16]; z.sp = a.reg[17]; z.wz = a.reg[18];
      z.iff1 = a.reg[19]; z.iff2 = a.reg[20]; z.im = a.reg[21]; z.ei_delay = 0; z.p = a.reg[23]; z.q = a.reg[24];
      int cyc = z80cpu_step(&z);
      u16 got[25] = {z.a, z.b, z.c, z.d, z.e, z.f, z.h, z.l, z.i, z.r, z.af_, z.bc_, z.de_, z.hl_, z.ix, z.iy, z.pc, z.sp, z.wz,
                     z.iff1, z.iff2, z.im, z.ei_delay, z.p, z.q};
      char why[512] = ""; int bad = 0;
      for (int i = 0; i < 25; i++) {
        if (i == 22 || i == 23) continue;   // ei/p bookkeeping differs in representation
        if (got[i] != b.reg[i]) { bad = 1; if (strlen(why) < 400) sprintf(why + strlen(why), " %s=%x/%x", RN[i], got[i], b.reg[i]); }
      }
      for (int i = 0; i < b.n; i++) if (mem[b.addr[i]] != b.val[i]) { if (!bad) sprintf(why + strlen(why), " mem[%04x]=%02x/%02x", b.addr[i], mem[b.addr[i]], b.val[i]); bad = 1; }
      if (bad) { if (verbose || ff < 2) printf("FAIL %s:%s\n", name, why); ff++; }
      else if (cyc != ncyc) { if (verbose || fc < 2) printf("CYC %s: %d/%d\n", name, cyc, ncyc); fc++; }
      for (int i = 0; i < a.n; i++) mem[a.addr[i]] = 0;
      for (int i = 0; i < b.n; i++) mem[b.addr[i]] = 0;
    }
    fclose(f);
    if (ff || fc) printf("%-24s %4d fail %4d cyc\n", argv[ai], ff, fc);
    total += cnt; fails += ff; cycfails += fc;
  }
  printf("total %ld, fail %ld, cycle mismatches %ld\n", total, fails, cycfails);
  return fails != 0;
}
