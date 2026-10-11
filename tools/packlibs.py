"""Packs the libraries the Windows installer drops next to the game into one blob (installer resource 101).

usage: packlibs.py OUT [FILE ...]
format: "LPL1", then per file: u16 name length, name (UTF-8), u32 size, data (little-endian)
"""
import glob, os, struct, sys

out = bytearray(b'LPL1')
for p in sorted(set(f for a in sys.argv[2:] for f in glob.glob(a))):
    name = os.path.basename(p).encode()
    data = open(p, 'rb').read()
    out += struct.pack('<H', len(name)) + name + struct.pack('<I', len(data)) + data
open(sys.argv[1], 'wb').write(out)
