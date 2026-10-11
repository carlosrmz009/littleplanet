# Converts SingleStepTests/z80 json files into a compact binary for tests/z80_test.c
import json, struct, sys

REGS = ['a', 'b', 'c', 'd', 'e', 'f', 'h', 'l', 'i', 'r', 'af_', 'bc_', 'de_', 'hl_', 'ix', 'iy', 'pc', 'sp', 'wz',
        'iff1', 'iff2', 'im', 'ei', 'p', 'q']

def state(s):
    return struct.pack('<25H', *[s[r] for r in REGS]) + struct.pack('<H', len(s['ram'])) + \
        b''.join(struct.pack('<HB', a, v) for a, v in s['ram'])

for src in sys.argv[2:]:
    tests = json.load(open(src))
    out = sys.argv[1] + '/' + src.split('/')[-1].replace(' ', '_').replace('.json', '.bin')
    with open(out, 'wb') as f:
        f.write(struct.pack('<I', len(tests)))
        for t in tests:
            name = t['name'].encode()[:31]
            ports = [p for p in t.get('ports', []) if p[2] == 'r']
            f.write(struct.pack('<B', len(name)) + name + state(t['initial']) + state(t['final']) +
                    struct.pack('<HH', len(t['cycles']), len(ports)) + b''.join(struct.pack('<B', p[1]) for p in ports))
