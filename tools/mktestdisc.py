"""Writes a tiny homebrew Mega-CD image (2048-byte sectors) for CI: the IP turns the display on
with a blue backdrop and idles; the SP waits for vblank forever. No game data involved."""
import struct
import sys

def w16(*v): return b''.join(struct.pack('>H', x) for x in v)

ip = w16(0x46fc, 0x2700,                    # move.w #$2700,sr
         0x41f9, 0x00c0, 0x0004,            # lea $c00004,a0
         0x30bc, 0x8004, 0x30bc, 0x8144,    # mode 5, display on
         0x30bc, 0x8c81, 0x30bc, 0x8f02,    # H40, auto-increment 2
         0x30bc, 0x8700,                    # backdrop: color 0
         0x20bc, 0xc000, 0x0000,            # CRAM address 0
         0x33fc, 0x0e40, 0x00c0, 0x0000,    # color 0 = blue
         0x60fe)                            # bra.s *

sp = b'MAIN       ' + b'\0' + w16(0, 0) + struct.pack('>IIII', 0, 0x30, 0x20, 0)
sp += w16(0x0008, 0x000a, 0x0000, 0x0000)  # init, main, (no) vint, end
sp += w16(0x4e75)                           # init: rts
sp += w16(0x4eb8, 0x5f10, 0x60fa)           # main: jsr _WAITVSYNC; bra.s main

disc = bytearray(2048 * 24)
hdr = bytearray(0x200)
hdr[0:16] = b'SEGADISCSYSTEM  '
hdr[0x10:0x1b] = b'LPTESTDISC '
hdr[0x30:0x40] = struct.pack('>IIII', 0x800, 0x800, 0, 0)
hdr[0x40:0x50] = struct.pack('>IIII', 0x1000, 0x800, 0, 0)
hdr[0x100:0x110] = b'SEGA MEGA DRIVE '
hdr[0x150:0x16a] = b'LITTLE PLANET TEST DISC   '
disc[0:0x200] = hdr
disc[0x200:0x200 + len(ip)] = ip
disc[0x1000:0x1000 + len(sp)] = sp
pvd = bytearray(2048)
pvd[0:6] = b'\x01CD001'
pvd[80:88] = struct.pack('<I', len(disc) // 2048) + struct.pack('>I', len(disc) // 2048)
disc[16 * 2048:17 * 2048] = pvd
open(sys.argv[1], 'wb').write(disc)
