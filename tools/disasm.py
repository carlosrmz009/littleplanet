"""Coverage-seeded disassembler for Sonic CD's executable disc files.

Every file is split into segments (file range, cpu, load address). Coverage (littleplanet --cov)
proves which offsets start instructions; recursive descent follows their branches, calls and
fall-through. Everything else stays data and is pulled from the disc at build time (.incbin), so
asm/ holds code but no graphics, sound or level data.

usage: disasm.py FILES_DIR ASM_DIR COV.txt [COV.txt ...]
FILES_DIR holds the disc's files (tools/disctool extract) plus BOOT.BIN (the first 32 KB of the data track).
"""
import collections, os, struct, sys
sys.path.insert(0, os.path.dirname(__file__))
import isa68k

# sub-CPU programs and where the game loads them (found with tools/covmap.py)
SUB_BASES = {}


def be32(b, o): return struct.unpack('>I', b[o:o + 4])[0]
def be16(b, o): return struct.unpack('>H', b[o:o + 2])[0]


def segments(name, data):
    """-> list of (start, end, cpu, base) where address = base + offset"""
    if name == 'BOOT.BIN':
        ip_end = be32(data, 0x30) + be32(data, 0x34)
        sp_off, sp_size = be32(data, 0x40), be32(data, 0x44)
        return [(0x200, ip_end, 'm', 0xff0000 - 0x200), (sp_off, sp_off + sp_size, 's', 0x6000 - sp_off)]
    if name.endswith('.MMD'):
        dest = be32(data, 2)
        if dest:
            n = (be16(data, 6) + 1) * 4
            return [(0x100, min(len(data), 0x100 + n), 'm', dest - 0x100)]
        return [(0, len(data), 'm', 0x200000)]
    if name in SUB_BASES:
        return [(0, len(data), 's', SUB_BASES[name])]
    return []


def fingerprint(data, off):
    if off < 0 or off + 8 > len(data):
        return None
    h = 2166136261
    for i in range(0, 8, 2):
        h = ((h ^ be16(data, off + i)) * 16777619) & 0xffffffff
    return h or 1


class Seg:
    def __init__(self, data, start, end, cpu, base):
        self.data, self.start, self.end, self.cpu, self.base = data, start, end, cpu, base

    def addr(self, off): return self.base + off
    def off(self, addr): return addr - self.base
    def inside(self, addr): return self.start <= addr - self.base < self.end

    def mem(self, a):
        o = a - self.base
        if o < self.start or o + 2 > self.end:
            return None
        return be16(self.data, o)


def explore(seg, proven):
    """-> {offset: Insn} for code reached from proven starts"""
    code = {}
    owner = {}       # byte offset -> instruction offset covering it
    queue = sorted(proven)
    proven = set(proven)
    while queue:
        o = queue.pop()
        if o in code or o & 1 or not (seg.start <= o < seg.end):
            continue
        if o in owner and owner[o] != o:
            continue   # middle of another instruction
        i = isa68k.decode(seg.mem, seg.addr(o))
        if not i or i.mn == 'linea':
            continue
        span = range(o, o + i.len)
        if any(b in owner for b in span):
            if o not in proven:
                continue
        code[o] = i
        for b in span:
            owner[b] = o
        if i.flow not in ('jump', 'ret', 'stop'):
            queue.append(o + i.len)
        for t in i.targets:
            if seg.inside(t) and not (t & 1):
                queue.append(seg.off(t))
    return code


def label_name(kind, a):
    return '%s_%06x' % (kind, a & 0xffffff)


def write_asm(path, name, data, segs_code, rel_data):
    out = []
    out.append('; %s' % name)
    out.append('; disassembled from the disc; code only, data comes from data/%s at build time' % name)
    out.append('\t.file "%s", %d' % (name, len(data)))
    pos = 0
    labels = {}       # (seg index, offset) -> name
    for si, (seg, code) in enumerate(segs_code):
        calls, jumps, refs = set(), set(), set()
        for o, i in code.items():
            for t in i.targets:
                if seg.inside(t):
                    (calls if i.flow == 'call' else jumps).add(seg.off(t))
            for op in i.ops:
                if op.kind in ('aw', 'al', 'pcd', 'pcx') and seg.inside(op.val) and op.val not in i.targets:
                    refs.add(seg.off(op.val))
                if op.kind == 'imm' and op.size == 4 and seg.inside(op.val) and seg.off(op.val) in code:
                    refs.add(seg.off(op.val))
        starts, o = set(), seg.start      # instructions the linear listing actually shows
        while o < seg.end:
            if o in code:
                starts.add(o)
                o += code[o].len
            else:
                o += 1
        hidden = sorted(set(code) - starts)
        if hidden:
            print('  %s: %d instruction starts overlap others, left out' % (name, len(hidden)))
        for o in calls:
            if o in starts: labels[(si, o)] = label_name('sub', seg.addr(o))
        for o in jumps | refs:
            if (si, o) in labels:
                continue
            if o in starts: labels[(si, o)] = label_name('loc', seg.addr(o))
            elif not any(s <= o < s + code[s].len for s in range(max(seg.start, o - 10), o + 1) if s in starts):
                labels[(si, o)] = label_name('dat', seg.addr(o))
    seg_of = []
    for si, (seg, code) in enumerate(segs_code):
        seg_of.append((seg.start, seg.end, si))

    def lab_for(si, seg):
        def f(a, kind):
            if not seg.inside(a):
                return None
            return labels.get((si, seg.off(a)))
        return f

    def emit_data(a, b, si=None):
        """data bytes [a, b), split at labels"""
        cuts = sorted(o for (s, o) in labels if s == si and a < o < b)
        pts = [a] + cuts + [b]
        for x, y in zip(pts, pts[1:]):
            if si is not None and (si, x) in labels:
                out.append('%s:' % labels[(si, x)])
            n = y - x
            if n >= 16:
                out.append('\t.incbin %d, %d' % (x, n))
            else:
                for k in range(x, y, 8):
                    out.append('\tdc.b ' + ','.join('$%02x' % c for c in data[k:min(y, k + 8)]))

    for si, (seg, code) in enumerate(segs_code):
        if pos < seg.start:
            emit_data(pos, seg.start)
        out.append('')
        out.append('\t.org %d, $%06x\t\t; %s CPU' % (seg.start, seg.addr(seg.start) & 0xffffff, 'main' if seg.cpu == 'm' else 'sub'))
        lab = lab_for(si, seg)
        o = seg.start
        while o < seg.end:
            if o in code:
                i = code[o]
                if (si, o) in labels:
                    if labels[(si, o)].startswith('sub_'):
                        out.append('')
                    out.append('%s:' % labels[(si, o)])
                out.append('\t' + isa68k.fmt(i, lab))
                o += i.len
            else:
                e = o + 1
                while e < seg.end and e not in code:
                    e += 1
                emit_data(o, e, si)
                o = e
        pos = seg.end
    if pos < len(data):
        emit_data(pos, len(data))
    open(path, 'w', newline='\n').write('\n'.join(out) + '\n')


def main():
    files_dir, asm_dir = sys.argv[1], sys.argv[2]
    cov = collections.defaultdict(set)
    for p in sys.argv[3:]:
        for line in open(p):
            c, pc, fp = line.split()
            cov[c].add((int(pc, 16), int(fp, 16)))
    for line in open(os.path.join(os.path.dirname(__file__), 'subbases.txt')):
        if line.strip() and not line.startswith('#'):
            n, b = line.split()
            SUB_BASES[n] = int(b, 16)
    os.makedirs(asm_dir, exist_ok=True)
    listing = []
    total = 0
    for name in sorted(os.listdir(files_dir)):
        data = open(os.path.join(files_dir, name), 'rb').read()
        segs = [Seg(data, *s) for s in segments(name, data)]
        if not segs:
            continue
        segs_code = []
        for seg in segs:
            proven = set()
            for pc, fp in cov[seg.cpu]:
                o = seg.off(pc)
                if seg.start <= o < seg.end and fingerprint(data, o) == fp:
                    proven.add(o)
            segs_code.append((seg, explore(seg, proven) if proven else {}))
        n = sum(len(c) for _, c in segs_code)
        if not n:
            continue
        total += n
        write_asm(os.path.join(asm_dir, name.replace('.', '_').lower() + '.s'), name, data, segs_code, None)
        listing.append('%s %d' % (name, n))
        print('%-14s %6d instructions' % (name, n))
    print('total', total)


if __name__ == '__main__':
    main()
