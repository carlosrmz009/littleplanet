// Coverage for the disassembler: every executed instruction as (cpu, address, fingerprint of
// the 8 bytes there). The fingerprint lets tools/covmap.py find which disc file the code came
// from, since all of Sonic CD's code is loaded into RAM at run time.
#include "mcd.h"
#include "cov.h"

#define COV_BITS 22
typedef struct { u32 pc; u32 fp; } Ent;   // pc bit 31: sub CPU; 0 = empty
static Ent *tab;
static u32 count;

static u32 fingerprint(M68k *c, u32 pc) {
  u32 h = 2166136261u;
  for (int i = 0; i < 8; i += 2) { u16 w = c->r16((pc + i) & 0xfffffe); h = (h ^ w) * 16777619u; }
  return h ? h : 1;
}

static void hook(M68k *c) {
  u32 key = (c->pc & 0xffffff) | (c->id ? 0x80000000u : 0) | 0x40000000u;
  u32 fp = fingerprint(c, c->pc);
  u32 h = (key * 2654435761u ^ fp * 40503u) >> (32 - COV_BITS);
  for (u32 i = 0; i < (1u << COV_BITS); i++) {
    Ent *e = &tab[(h + i) & ((1u << COV_BITS) - 1)];
    if (!e->pc) { e->pc = key; e->fp = fp; count++; return; }
    if (e->pc == key && e->fp == fp) return;
  }
}

void cov_enable(void) {
  if (!tab) tab = calloc(1u << COV_BITS, sizeof(Ent));
  mcpu.cov = hook;
  scpu.cov = hook;
}

bool cov_save(const char *path) {
  if (!tab) return false;
  FILE *f = fopen(path, "w");
  if (!f) return false;
  for (u32 i = 0; i < (1u << COV_BITS); i++)
    if (tab[i].pc) fprintf(f, "%c %06x %08x\n", tab[i].pc & 0x80000000u ? 's' : 'm', tab[i].pc & 0xffffff, tab[i].fp);
  fclose(f);
  return true;
}
