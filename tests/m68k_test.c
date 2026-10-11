// Runs SingleStepTests/680x0 vectors (converted by m68k_json2bin.py) against src/m68k.c
#include "../src/m68k.h"

static u8 *mem;
static u8 r8(u32 a) { return mem[a & 0xffffff]; }
static u16 r16(u32 a) { a &= 0xffffff; return mem[a] << 8 | mem[a + 1]; }
static void w8(u32 a, u8 v) { mem[a & 0xffffff] = v; }
static void w16(u32 a, u16 v) { a &= 0xffffff; mem[a] = v >> 8; mem[a + 1] = (u8)v; }

typedef struct { u32 reg[19]; u16 pf[2]; u32 n; u32 *addr; u8 *val; } State;
enum { USP = 15, SSP = 16, SR = 17, PC = 18 };

static void rd_state(FILE *f, State *s) {
  fread(s->reg, 4, 19, f); fread(s->pf, 2, 2, f); fread(&s->n, 4, 1, f);
  s->addr = malloc(s->n * 4 + 4); s->val = malloc(s->n + 1);
  for (u32 i = 0; i < s->n; i++) { fread(&s->addr[i], 4, 1, f); fread(&s->val[i], 1, 1, f); }
}

int main(int argc, char **argv) {
  mem = calloc(1, 1 << 24);
  int total = 0, fail = 0, cycfail = 0, skipped = 0, verbose = getenv("V") != NULL;
  for (int ai = 1; ai < argc; ai++) {
    FILE *f = fopen(argv[ai], "rb");
    u32 cnt; fread(&cnt, 4, 1, f);
    int ffail = 0, fcyc = 0, fskip = 0;
    for (u32 t = 0; t < cnt; t++) {
      u8 nl; char name[64]; fread(&nl, 1, 1, f); fread(name, 1, nl, f); name[nl] = 0;
      State in, out; rd_state(f, &in); rd_state(f, &out);
      u32 len; fread(&len, 4, 1, f);
      for (u32 i = 0; i < in.n; i++) mem[in.addr[i] & 0xffffff] = in.val[i];
      w16(in.reg[PC], in.pf[0]); w16(in.reg[PC] + 2, in.pf[1]);
      M68k c = {0};
      c.r8 = r8; c.r16 = r16; c.w8 = w8; c.w16 = w16;
      m68k_init_tables();
      for (int i = 0; i < 15; i++) c.r[i] = in.reg[i];
      c.sr = in.reg[SR];
      if (c.sr & SR_S) { c.r[15] = in.reg[SSP]; c.osp = in.reg[USP]; } else { c.r[15] = in.reg[USP]; c.osp = in.reg[SSP]; }
      c.pc = in.reg[PC];
      m68k_step(&c);
      u32 usp = c.sr & SR_S ? c.osp : c.r[15], ssp = c.sr & SR_S ? c.r[15] : c.osp;
      bool bad = false;
      char why[4096] = "";
      for (int i = 0; i < 15; i++) if (c.r[i] != out.reg[i]) { bad = true; sprintf(why + strlen(why), " r%d=%08x/%08x", i, c.r[i], out.reg[i]); }
      if (usp != out.reg[USP]) { bad = true; sprintf(why + strlen(why), " usp=%08x/%08x", usp, out.reg[USP]); }
      if (ssp != out.reg[SSP]) { bad = true; sprintf(why + strlen(why), " ssp=%08x/%08x", ssp, out.reg[SSP]); }
      if (c.sr != out.reg[SR]) { bad = true; sprintf(why + strlen(why), " sr=%04x/%04x", c.sr, out.reg[SR]); }
      if (c.pc != out.reg[PC]) { bad = true; sprintf(why + strlen(why), " pc=%06x/%06x", c.pc, out.reg[PC]); }
      for (u32 i = 0; i < out.n; i++) if (mem[out.addr[i] & 0xffffff] != out.val[i]) {
        if (!bad) sprintf(why + strlen(why), " mem[%06x]=%02x/%02x", out.addr[i], mem[out.addr[i] & 0xffffff], out.val[i]);
        bad = true;
      }
      u32 v3 = 0; int have = 0;
      for (u32 i = 0; i < in.n; i++) if (in.addr[i] >= 12 && in.addr[i] < 16) { v3 |= in.val[i] << (8 * (15 - in.addr[i])); have++; }
      bool addr_err = have == 4 && out.reg[PC] == v3 && c.pc != v3;
      const char *only = getenv("ONLY");
      if (only && strstr(name, only)) {
        printf("%s\n in:", name); for (int i = 0; i < 19; i++) printf(" %08x", in.reg[i]);
        printf("\n ex:"); for (int i = 0; i < 19; i++) printf(" %08x", out.reg[i]);
        printf("\n cyc %d/%u%s\n", c.cyc, len, why);
      }
      if (addr_err && bad) fskip++;
      else if (bad) { if (verbose || ffail < 3) printf("FAIL %s:%s\n", name, why); ffail++; }
      else if ((u32)c.cyc != len) { if (verbose || fcyc < 3) printf("CYC %s: %d/%u\n", name, c.cyc, len); fcyc++; }
      for (u32 i = 0; i < in.n; i++) mem[in.addr[i] & 0xffffff] = 0;
      for (u32 i = 0; i < out.n; i++) mem[out.addr[i] & 0xffffff] = 0;
      w16(in.reg[PC], 0); w16(in.reg[PC] + 2, 0);
      free(in.addr); free(in.val); free(out.addr); free(out.val);
    }
    fclose(f);
    printf("%-28s %5u tests  %4d fail  %4d cycles  %4d addr-err skipped\n", argv[ai], cnt, ffail, fcyc, fskip);
    total += cnt; fail += ffail; cycfail += fcyc; skipped += fskip;
  }
  printf("total %d, fail %d, cycle mismatches %d, address-error skipped %d\n", total, fail, cycfail, skipped);
  return fail != 0;
}
