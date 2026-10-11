// Prints the handler the 68000 core uses for every opcode ("hex name" per line), so tools/recomp.py
// calls exactly what the interpreter would.   cc -DM68K_NAMES -Isrc tools/opmap.c -o build/opmap
#include "../src/m68k.c"
int main(void) {
  for (u32 op = 0; op < 65536; op++) printf("%04x %s\n", op, m68k_op_name((u16)op));
  return 0;
}
