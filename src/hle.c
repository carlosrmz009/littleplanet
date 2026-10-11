// HLE Mega-CD BIOS. Only what the disc's code needs: the boot sequence, the main-CPU
// BIOS calls, the sub-CPU kernel (USERCALLs, level 2, _WAITVSYNC), _CDBIOS and _BURAM.
#include "hle.h"
#include "mcd.h"
#include "cdc.h"
#include "disc.h"
#include "vdp.h"

// line-A trap numbers
enum { T_BOOT = 0x001, T_HOTSTART, T_VDPREGS, T_DMA, T_LOGO, T_MAIN_UNKNOWN = 0x00f,
       T_LEVEL2 = 0x101, T_CDBIOS, T_BURAM, T_CDBOOT, T_SETJMPTBL, T_SUB_UNKNOWN = 0x10f };

// sub-CPU BIOS layout (PRG-RAM)
enum { S_KERNEL = 0x0300, S_LV2 = 0x0340, S_RTE = 0x0380, S_RTS = 0x0382, S_WAITVSYNC = 0x0390, S_CDBIOS = 0x03b0, S_BURAM = 0x03b4,
       S_CDBOOT = 0x03b8, S_SETJMPTBL = 0x03bc, S_UNKNOWN = 0x03c0, S_STACK = 0x5e80, S_VSYNC = 0x5ef0, S_INITDONE = 0x5ef1 };
// main BIOS ROM layout
enum { M_BOOT = 0x0200, M_HOTSTART = 0x0280, M_VDPREGS = 0x02b0, M_DMA = 0x02d4, M_LOGO = 0x0364, M_RTE = 0x0400,
       M_JUMPTBL = 0xfffd00 };

static void put16(u8 *m, u32 a, u16 v) { m[a] = v >> 8; m[a + 1] = (u8)v; }
static void put32(u8 *m, u32 a, u32 v) { put16(m, a, v >> 16); put16(m, a + 2, (u16)v); }
static u32 get32(const u8 *m, u32 a) { return (u32)m[a] << 24 | m[a + 1] << 16 | m[a + 2] << 8 | m[a + 3]; }
static void jmp_entry(u8 *m, u32 a, u32 target) { put16(m, a, 0x4ef9); put32(m, a + 2, target); }

// ---------------------------------------------------------------- main BIOS ROM
static void build_main_rom(void) {
  u8 *r = mcd.bios;
  for (u32 a = 0; a < sizeof mcd.bios; a += 2) put16(r, a, 0xa000 | T_MAIN_UNKNOWN);
  put32(r, 0, M_JUMPTBL);
  put32(r, 4, M_BOOT);
  for (int v = 2; v < 64; v++) put32(r, v * 4, M_RTE);
  for (int v = 2; v <= 11; v++) put32(r, v * 4, 0xfffd78 + (v - 2) * 6);   // errors
  put32(r, 26 * 4, 0xfffd12);   // level 2
  put32(r, 30 * 4, 0xfffd06);   // level 6 (V-int); level 4 comes from $A12006
  for (int t = 0; t < 16; t++) put32(r, (32 + t) * 4, 0xfffd18 + t * 6);
  put16(r, M_BOOT, 0xa000 | T_BOOT);
  put16(r, M_HOTSTART, 0xa000 | T_HOTSTART);
  put16(r, M_VDPREGS, 0xa000 | T_VDPREGS); put16(r, M_VDPREGS + 2, 0x4e75);
  put16(r, M_DMA, 0xa000 | T_DMA); put16(r, M_DMA + 2, 0x4e75);
  put16(r, M_LOGO, 0xa000 | T_LOGO); put16(r, M_LOGO + 2, 0x4e75);
  put16(r, M_RTE, 0x4e73);
  // RAM jump table: reset, level 6, level 4, level 2, 16 traps, 10 error entries
  for (u32 a = 0xfd00; a < 0xfdb4; a += 6) jmp_entry(mcd.work_ram, a, M_RTE);
}

// ---------------------------------------------------------------- sub BIOS (PRG-RAM)
static void build_sub_bios(void) {
  u8 *p = mcd.prg_ram;
  memset(p, 0, 0x6000);
  put32(p, 0, S_STACK);
  put32(p, 4, S_KERNEL);
  for (int v = 2; v < 64; v++) put32(p, v * 4, 0x5f40);
  for (int v = 3; v <= 11; v++) put32(p, v * 4, 0x5f40 + (v - 3) * 6);
  for (int l = 1; l <= 7; l++) put32(p, (24 + l) * 4, 0x5f76 + (l - 1) * 6);
  for (int t = 0; t < 16; t++) put32(p, (32 + t) * 4, 0x5fa0 + t * 6);
  // kernel: init once, then call the main entry forever. The level 2 handler only calls
  // the program's V-int entry once init has returned.
  static const u16 kernel[] = {0x46fc, 0x2000, 0x4eb8, 0x5f28, 0x50f8, S_INITDONE, 0x4eb8, 0x5f2e, 0x60fa};
  for (unsigned i = 0; i < sizeof kernel / 2; i++) put16(p, S_KERNEL + i * 2, kernel[i]);
  static const u16 lv2[] = {0x48e7, 0xfffe, 0xa000 | T_LEVEL2, 0x4a38, S_INITDONE, 0x6704, 0x4eb8, 0x5f34, 0x4cdf, 0x7fff, 0x4e73};
  for (unsigned i = 0; i < sizeof lv2 / 2; i++) put16(p, S_LV2 + i * 2, lv2[i]);
  put16(p, S_RTE, 0x4e73);
  put16(p, S_RTS, 0x4e75);
  static const u16 wv[] = {0x08b8, 0x0000, S_VSYNC, 0x0838, 0x0000, S_VSYNC, 0x67f8, 0x4e75};
  for (unsigned i = 0; i < sizeof wv / 2; i++) put16(p, S_WAITVSYNC + i * 2, wv[i]);
  put16(p, S_CDBIOS, 0xa000 | T_CDBIOS); put16(p, S_CDBIOS + 2, 0x4e75);
  put16(p, S_BURAM, 0xa000 | T_BURAM); put16(p, S_BURAM + 2, 0x4e75);
  put16(p, S_CDBOOT, 0xa000 | T_CDBOOT); put16(p, S_CDBOOT + 2, 0x4e75);
  put16(p, S_SETJMPTBL, 0xa000 | T_SETJMPTBL); put16(p, S_SETJMPTBL + 2, 0x4e75);
  put16(p, S_UNKNOWN, 0xa000 | T_SUB_UNKNOWN); put16(p, S_UNKNOWN + 2, 0x4e73);
  // jump table $5F00-$5FFF
  for (u32 a = 0x5f00; a < 0x6000; a += 6) jmp_entry(p, a, S_UNKNOWN);
  jmp_entry(p, 0x5f0a, S_SETJMPTBL);
  jmp_entry(p, 0x5f10, S_WAITVSYNC);
  jmp_entry(p, 0x5f16, S_BURAM);
  jmp_entry(p, 0x5f1c, S_CDBOOT);
  jmp_entry(p, 0x5f22, S_CDBIOS);
  for (int l = 1; l <= 7; l++) jmp_entry(p, 0x5f76 + (l - 1) * 6, l == 2 ? S_LV2 : S_RTE);
  // USERCALL0-3 from the SP's module header
  u32 start = 0x6000 + get32(p, 0x6018);
  for (int i = 0; i < 4; i++) {
    u16 off = p[start + i * 2] << 8 | p[start + i * 2 + 1];
    jmp_entry(p, 0x5f28 + i * 6, off ? start + off : S_RTS);
  }
}

void hle_sub_reset(void) {
  m68k_reset(&scpu);
}

bool hle_boot(char *err, int errlen) {
  u8 sec[2048];
  if (!disc_read_data(0, sec) || memcmp(sec, "SEGADISCSYSTEM", 14)) {
    snprintf(err, errlen, "not a Mega-CD disc");
    return false;
  }
  u32 sp_off = get32(sec, 0x40), sp_size = get32(sec, 0x44);
  // IP: from $200 of the boot area to the end of the IP block, run at $FF0000
  u32 ip_end = get32(sec, 0x30) + get32(sec, 0x34);
  u8 boot[0x8000 + 0x1000];
  u32 boot_len = sp_off + sp_size;
  if (boot_len > sizeof boot) boot_len = sizeof boot;
  for (u32 s = 0; s * 2048 < boot_len; s++) disc_read_data(s, boot + s * 2048);
  build_main_rom();
  memcpy(mcd.work_ram, boot + 0x200, ip_end - 0x200);
  memcpy(mcd.prg_ram + 0x6000, boot + sp_off, sp_size);
  build_sub_bios();
  mcd.int_mask = 0x7e & ~0x40;
  mcd.ien2 = 1;
  mcd.sub_reset = 1;
  mcd.ret = 1;
  // main CPU: as the boot ROM leaves it when it enters the IP
  memset(mcpu.r, 0, sizeof mcpu.r);
  // the boot ROM enters the IP with interrupts enabled and the VDP in mode 5, V-int on
  mcpu.sr = 0x2000;
  mcpu.r[15] = M_JUMPTBL;
  static const u16 vdp_init[] = {0x8004, 0x8134, 0x8c81, 0x8f02, 0};
  for (int i = 0; vdp_init[i]; i++) vdp_write16(0xc00004, vdp_init[i]);
  mcpu.osp = 0;
  mcpu.pc = 0xff0000;
  m68k_reset(&scpu);
  return true;
}

// ---------------------------------------------------------------- main traps
static void report(const char *who, u32 pc) {
  static u32 seen[64]; static int n;
  for (int i = 0; i < n; i++) if (seen[i] == pc) return;
  if (n < 64) seen[n++] = pc;
  fprintf(stderr, "hle: unimplemented %s BIOS entry at %06x\n", who, pc);
}

int hle_main_trap(M68k *c) {
  u16 id = c->ir & 0xfff;
  c->cyc += 4;
  switch (id) {
  case T_VDPREGS: {
    u32 a = c->r[9];
    for (;;) { u16 w = main_r16(a); a += 2; if (!w) break; vdp_write16(0xc00004, w); c->cyc += 12; }
    return 1;
  }
  case T_DMA: {
    u32 cmd = c->r[0], src = c->r[1], len = c->r[2] & 0xffff;   // d0 VDP command, d1 source, d2 words
    // Word RAM reaches the VDP one word late; the BIOS routine starts the DMA one word on
    // (verified on the opening movie: without it every tile row is shifted by 4 pixels)
    if (src >= 0x200000 && src < 0x240000) src += 2;
    u8 r1 = vdp.reg[1];
    vdp_write16(0xc00004, 0x8100 | r1 | 0x10);
    vdp_write16(0xc00004, 0x9300 | (len & 0xff));
    vdp_write16(0xc00004, 0x9400 | (len >> 8));
    vdp_write16(0xc00004, 0x9500 | ((src >> 1) & 0xff));
    vdp_write16(0xc00004, 0x9600 | ((src >> 9) & 0xff));
    vdp_write16(0xc00004, 0x9700 | ((src >> 17) & 0x7f));
    vdp_write16(0xc00004, cmd >> 16);
    vdp_write16(0xc00004, (cmd & 0xffff) | 0x80);
    vdp_write16(0xc00004, 0x8100 | r1);
    return 1;
  }
  case T_LOGO:
    return 1;
  case T_BOOT: case T_HOTSTART:
    report("main boot", c->ipc);
    return 1;
  default:
    report("main", c->ipc);
    // behave like rts
    c->pc = (u32)main_r16(c->r[15]) << 16 | main_r16(c->r[15] + 2);
    c->r[15] += 4;
    return 1;
  }
}

// ---------------------------------------------------------------- backup RAM
#define BRAM_BLOCKS 125
typedef struct { char name[11]; u8 mode; u16 blocks; u8 data[BRAM_BLOCKS * 64]; } BramFile;
static BramFile bfiles[32];
static int bfile_count;
static bool bram_changed;

static int bram_used(void) { int n = 0; for (int i = 0; i < bfile_count; i++) n += bfiles[i].blocks; return n; }
static int bram_find(const char *name) {
  for (int i = 0; i < bfile_count; i++) if (!memcmp(bfiles[i].name, name, 11)) return i;
  return -1;
}
bool bram_dirty(void) { return bram_changed; }
bool bram_save(const char *path) {
  FILE *f = u8fopen(path, "wb");
  if (!f) return false;
  fwrite("LPBRAM01", 1, 8, f);
  fwrite(&bfile_count, 4, 1, f);
  for (int i = 0; i < bfile_count; i++) {
    fwrite(bfiles[i].name, 1, 11, f); fwrite(&bfiles[i].mode, 1, 1, f); fwrite(&bfiles[i].blocks, 2, 1, f);
    fwrite(bfiles[i].data, 64, bfiles[i].blocks, f);
  }
  fclose(f);
  bram_changed = false;
  return true;
}
bool bram_load(const char *path) {
  FILE *f = u8fopen(path, "rb");
  bfile_count = 0;
  if (!f) return false;
  char magic[8];
  int n = 0;
  if (fread(magic, 1, 8, f) != 8 || memcmp(magic, "LPBRAM01", 8) || fread(&n, 4, 1, f) != 1 || n < 0 || n > 32) { fclose(f); return false; }
  for (int i = 0; i < n; i++) {
    BramFile *b = &bfiles[i];
    if (fread(b->name, 1, 11, f) != 11 || fread(&b->mode, 1, 1, f) != 1 || fread(&b->blocks, 2, 1, f) != 1 || b->blocks > BRAM_BLOCKS) break;
    if (fread(b->data, 64, b->blocks, f) != b->blocks) break;
    bfile_count = i + 1;
  }
  fclose(f);
  return true;
}

static void set_carry(M68k *c, bool on) { c->sr = on ? (c->sr | SR_C) : (c->sr & ~SR_C); }
static void read_name(M68k *c, u32 a, char *out) { for (int i = 0; i < 11; i++) out[i] = sub_r8(a + i); }

static void buram(M68k *c) {
  int fn = c->r[0] & 0xffff;
  char name[11];
  switch (fn) {
  case 0: {   // BRMINIT
    static const char disp[] = "RAM_CARTRIDGE___";
    for (int i = 0; i < 12; i++) sub_w8(c->r[9] + i, disp[i]);
    c->r[0] = (c->r[0] & 0xffff0000) | BRAM_BLOCKS;
    c->r[1] = (c->r[1] & 0xffff0000) | 0;
    set_carry(c, false);
    break;
  }
  case 1:     // BRMSTAT
    c->r[0] = (c->r[0] & 0xffff0000) | (BRAM_BLOCKS - bram_used());
    c->r[1] = (c->r[1] & 0xffff0000) | bfile_count;
    set_carry(c, false);
    break;
  case 2: {   // BRMSERCH
    read_name(c, c->r[8], name);
    int i = bram_find(name);
    if (i < 0) { set_carry(c, true); break; }
    c->r[0] = (c->r[0] & 0xffff0000) | bfiles[i].blocks;
    c->r[1] = (c->r[1] & 0xffffff00) | bfiles[i].mode;
    set_carry(c, false);
    break;
  }
  case 3: {   // BRMREAD
    read_name(c, c->r[8], name);
    int i = bram_find(name);
    if (i < 0) { set_carry(c, true); break; }
    int bytes = bfiles[i].blocks * (bfiles[i].mode ? 32 : 64);
    for (int k = 0; k < bytes; k++) sub_w8(c->r[9] + k, bfiles[i].data[k]);
    c->r[0] = (c->r[0] & 0xffff0000) | bfiles[i].blocks;
    c->r[1] = (c->r[1] & 0xffffff00) | bfiles[i].mode;
    c->cyc += bytes * 8;
    set_carry(c, false);
    break;
  }
  case 4: case 8: {   // BRMWRITE / BRMVERIFY
    read_name(c, c->r[8], name);
    u8 mode = sub_r8(c->r[8] + 11);
    u16 blocks = sub_r8(c->r[8] + 12) << 8 | sub_r8(c->r[8] + 13);
    int bytes = blocks * (mode ? 32 : 64);
    int i = bram_find(name);
    if (fn == 8) {
      bool ok = i >= 0 && bfiles[i].blocks == blocks;
      for (int k = 0; ok && k < bytes; k++) if (bfiles[i].data[k] != sub_r8(c->r[9] + k)) ok = false;
      set_carry(c, !ok);
      break;
    }
    int free_blocks = BRAM_BLOCKS - bram_used() + (i >= 0 ? bfiles[i].blocks : 0);
    if (blocks > free_blocks || blocks > BRAM_BLOCKS || (i < 0 && bfile_count == 32)) { set_carry(c, true); break; }
    if (i < 0) i = bfile_count++;
    memcpy(bfiles[i].name, name, 11);
    bfiles[i].mode = mode;
    bfiles[i].blocks = blocks;
    memset(bfiles[i].data, 0, sizeof bfiles[i].data);
    for (int k = 0; k < bytes; k++) bfiles[i].data[k] = sub_r8(c->r[9] + k);
    c->cyc += bytes * 16;
    bram_changed = true;
    set_carry(c, false);
    break;
  }
  case 5: {   // BRMDEL
    read_name(c, c->r[8], name);
    int i = bram_find(name);
    if (i < 0) { set_carry(c, true); break; }
    memmove(&bfiles[i], &bfiles[i + 1], (bfile_count - i - 1) * sizeof bfiles[0]);
    bfile_count--;
    bram_changed = true;
    set_carry(c, false);
    break;
  }
  case 6:     // BRMFORMAT
    bfile_count = 0;
    bram_changed = true;
    set_carry(c, false);
    break;
  case 7: {   // BRMDIR: d1 = skip << 16 | max entries
    int skip = c->r[1] >> 16, max = c->r[1] & 0xffff, n = 0;
    u32 a = c->r[8];
    for (int i = skip; i < bfile_count && n < max; i++, n++) {
      for (int k = 0; k < 11; k++) sub_w8(a++, bfiles[i].name[k]);
      sub_w8(a++, bfiles[i].mode);
      sub_w8(a++, bfiles[i].blocks >> 8); sub_w8(a++, (u8)bfiles[i].blocks);
    }
    set_carry(c, skip + n < bfile_count);
    break;
  }
  default:
    fprintf(stderr, "hle: BURAM function %d\n", fn);
    set_carry(c, true);
  }
}

// ---------------------------------------------------------------- _CDBIOS
static u32 lw(M68k *c, u32 a) { return (u32)sub_r16(a) << 16 | sub_r16(a + 2); }

static void cdbios(M68k *c) {
  int fn = c->r[0] & 0xffff;
  set_carry(c, false);
  switch (fn) {
  case 0x02: cd_stop(); break;                                   // MSCSTOP
  case 0x03: cd_pause(true); break;                              // MSCPAUSEON
  case 0x04: cd_pause(false); break;                             // MSCPAUSEOFF
  case 0x10: cd_drvinit(); break;                                // DRVINIT
  case 0x11: cd_play(sub_r16(c->r[8]), 2); break;                // MSCPLAY: track to end of disc
  case 0x12: cd_play(sub_r16(c->r[8]), 0); break;                // MSCPLAY1: once
  case 0x13: cd_play(sub_r16(c->r[8]), 1); break;                // MSCPLAYR: repeat
  case 0x15: case 0x16: case 0x19: {                             // MSCSEEK*
    const DiscToc *t = disc_toc();
    int tr = sub_r16(c->r[8]);
    if (tr >= 1 && tr <= t->ntracks) cd_seek(t->trk[tr - 1].start);
    break;
  }
  case 0x17: cd_read(lw(c, c->r[8]), 0); break;                  // ROMREAD
  case 0x18: cd_seek(lw(c, c->r[8])); break;                     // ROMSEEK
  case 0x20: cd_read(lw(c, c->r[8]), lw(c, c->r[8] + 4)); break; // ROMREADN
  case 0x21: {                                                   // ROMREADE: start, end
    u32 s = lw(c, c->r[8]), e = lw(c, c->r[8] + 4);
    cd_read(s, e >= s ? e - s + 1 : 1);
    break;
  }
  case 0x81: {                                                   // CDBSTAT
    u16 st = (u16)cd_bios_status();
    mcd.prg_ram[0x5e80] = st >> 8; mcd.prg_ram[0x5e81] = (u8)st;
    c->r[8] = 0x5e80;
    break;
  }
  case 0x85: case 0x86: break;                                   // FDRSET / FDRCHG (volume ramps)
  case 0x87: case 0x88: drive.decode = true; break;              // CDCSTART(P)
  case 0x89: cdc_stop(); break;                                  // CDCSTOP
  case 0x8a: set_carry(c, !cdc_stat()); break;                   // CDCSTAT
  case 0x8b: {                                                   // CDCREAD
    u32 h;
    if (!cdc_read(&h)) { set_carry(c, true); break; }
    c->r[0] = h;
    c->r[1] = 0;
    break;
  }
  case 0x8c: {                                                   // CDCTRN
    u8 buf[2048], hdr[4];
    cdc_trn(buf, hdr);
    for (int i = 0; i < 2048; i++) sub_w8(c->r[8] + i, buf[i]);
    for (int i = 0; i < 4; i++) sub_w8(c->r[9] + i, hdr[i]);
    c->r[8] += 2048; c->r[9] += 4;
    c->cyc += 2048 * 4;
    break;
  }
  case 0x8d: cdc_ack(); break;                                   // CDCACK
  case 0x95: mcd.led = (u8)c->r[1]; break;                       // LEDSET
  default:
    fprintf(stderr, "hle: CDBIOS function %02x\n", fn);
    break;
  }
  c->cyc += 100;
}

int hle_sub_trap(M68k *c) {
  u16 id = c->ir & 0xfff;
  c->cyc += 4;
  switch (id) {
  case T_LEVEL2: mcd.prg_ram[S_VSYNC] |= 1; return 1;
  case T_CDBIOS: cdbios(c); return 1;
  case T_BURAM: buram(c); return 1;
  case T_CDBOOT: case T_SETJMPTBL: report("sub", c->ipc); return 1;
  default:
    report("sub", c->ipc);
    return 1;
  }
}
