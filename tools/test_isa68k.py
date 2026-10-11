"""Round-trip check: every valid 68000 opcode (with sample extension words) decodes and
re-encodes to the same words."""
import os, random, sys
sys.path.insert(0, os.path.dirname(__file__))
import isa68k

random.seed(1)
bad = n = 0
for op in range(0x10000):
    for trial in range(2):
        ext = [random.randrange(0x10000) for _ in range(5)]
        if trial == 0:
            ext = [0x0010, 0x0020, 0x0030, 0x0040, 0x0050]
        words = [op] + ext
        addr = 0x10000
        mem = lambda a: words[(a - addr) // 2] if 0 <= a - addr < len(words) * 2 else None
        i = isa68k.decode(mem, addr)
        if not i:
            continue
        n += 1
        mn = i.mn
        try:
            got = isa68k.encode(mn, i.size, i.ops, addr)
        except isa68k.EncodeError as e:
            got = 'error %s' % e
        if got != i.words:
            bad += 1
            if bad < 20:
                print('%04x %s: %s -> %s' % (op, isa68k.fmt(i), ' '.join('%04x' % w for w in i.words), got))
print('%d instructions, %d mismatches' % (n, bad))
sys.exit(bad != 0)
