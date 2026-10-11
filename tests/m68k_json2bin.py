# Converts SingleStepTests/680x0 json.gz files into a compact binary for tests/m68k_test.c
import gzip, json, struct, sys

REGS = ['d0', 'd1', 'd2', 'd3', 'd4', 'd5', 'd6', 'd7', 'a0', 'a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'usp', 'ssp', 'sr', 'pc']

def state(s):
    out = struct.pack('<19I', *[s[r] for r in REGS]) + struct.pack('<2H', *s['prefetch'])
    out += struct.pack('<I', len(s['ram'])) + b''.join(struct.pack('<IB', a, v) for a, v in s['ram'])
    return out

with open(sys.argv[2], 'wb') as f:
    tests = json.load(gzip.open(sys.argv[1]))
    f.write(struct.pack('<I', len(tests)))
    for t in tests:
        name = t['name'].encode()[:63]
        f.write(struct.pack('<B', len(name)) + name + state(t['initial']) + state(t['final']) + struct.pack('<I', t['length']))
