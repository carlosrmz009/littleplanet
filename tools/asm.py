"""Assembler for asm/*.s: rebuilds each disc file from its disassembly plus the data/ blobs.

Syntax is exactly what tools/disasm.py writes: explicit sizes and addressing modes everywhere,
so every line has one encoding and the output is byte-identical to the original file.

usage: asm.py DATA_DIR OUT_DIR IR_DIR ASM_FILE [ASM_FILE ...]
       asm.py --code IR_DIR ASM_FILE [ASM_FILE ...]   (no disc needed: code only, data left as zeros)
writes OUT_DIR/<file> and IR_DIR/<file>.json: per segment the CPU, the load address of offset 0 ("base")
and every instruction as [file offset, [words]] (the input of tools/recomp.py)
"""
import json, os, re, sys
sys.path.insert(0, os.path.dirname(__file__))
import isa68k
from isa68k import Op

SIZE_OF = {'b': 1, 'w': 2, 'l': 4, 's': 1}
IMPLIED = {'moveq': 4, 'lea': 4, 'pea': 4, 'exg': 4, 'swap': 2}


class AsmError(Exception):
    pass


def split_ops(s):
    out, depth, cur = [], 0, ''
    for ch in s:
        if ch == '(':
            depth += 1
        elif ch == ')':
            depth -= 1
        if ch == ',' and depth == 0:
            out.append(cur.strip()); cur = ''
        else:
            cur += ch
    if cur.strip():
        out.append(cur.strip())
    return out


TOKEN = re.compile(r'\s*(\$[0-9a-fA-F]+|\d+|[A-Za-z_][A-Za-z0-9_]*|[+-])')


def expr(s, labels):
    """$hex, decimal, labels, + and -; None if a label is still unknown"""
    pos, total, sign, unknown = 0, 0, 1, False
    s = s.strip()
    expect_term = True
    while pos < len(s):
        m = TOKEN.match(s, pos)
        if not m:
            raise AsmError('bad expression ' + s)
        t = m.group(1)
        pos = m.end()
        if t in '+-':
            if expect_term:
                sign = -sign if t == '-' else sign
            else:
                sign = -1 if t == '-' else 1
                expect_term = True
            continue
        if t.startswith('$'):
            v = int(t[1:], 16)
        elif t[0].isdigit():
            v = int(t)
        elif t in labels:
            v = labels[t]
        else:
            unknown = True
            v = 0
        total += sign * v
        sign, expect_term = 1, False
    return None if unknown else total


REG = re.compile(r'^([da])([0-7])$|^sp$')
XREG = re.compile(r'^([da])([0-7])\.([wl])$')


def reg(s):
    s = s.strip().lower()
    if s == 'sp':
        return 'an', 7
    m = REG.match(s)
    if m:
        return ('dn' if m.group(1) == 'd' else 'an'), int(m.group(2))
    return None


def xreg(s):
    m = XREG.match(s.strip().lower())
    if not m:
        raise AsmError('bad index register ' + s)
    return (8 if m.group(1) == 'a' else 0) + int(m.group(2)), m.group(3) == 'l'


def reglist(s):
    mask = 0
    for part in s.split('/'):
        a, _, b = part.partition('-')
        ra, rb = reg(a), reg(b or a)
        if not ra or not rb:
            raise AsmError('bad register list ' + s)
        ia = ra[1] + (8 if ra[0] == 'an' else 0)
        ib = rb[1] + (8 if rb[0] == 'an' else 0)
        for k in range(ia, ib + 1):
            mask |= 1 << k
    return Op('reglist', 0, mask)


def operand(s, labels, size, placeholder):
    """placeholder: value for unknown labels in the first pass"""
    def ev(e):
        v = expr(e, labels)
        return placeholder if v is None else v & 0xffffffff
    s = s.strip()
    low = s.lower()
    if low in ('sr', 'ccr', 'usp'):
        return Op(low)
    r = reg(low)
    if r:
        return Op(r[0], r[1])
    if low.startswith('#'):
        return Op('imm', 0, ev(s[1:]), size=size)
    if low.startswith('-(') and low.endswith(')'):
        return Op('pd', reg(low[2:-1])[1])
    if low.startswith('(') and low.endswith(')+'):
        return Op('pi', reg(low[1:-2])[1])
    if low.startswith('(') and (low.endswith(').w') or low.endswith(').l')):
        if low.endswith('.w'):
            v = expr(s[1:-3], labels)
            v = 0 if v is None else v & 0xffffffff
            if 0x8000 <= v < 0x10000:
                v |= 0xffff0000
            elif 0xff8000 <= v <= 0xffffff:
                v |= 0xff000000
            return Op('aw', 0, v & 0xffffffff)
        return Op('al', 0, ev(s[1:-3]))
    if low.endswith(')') and '(' in low:
        i = low.index('(')
        disp, inner = s[:i], s[i + 1:-1]
        parts = [p.strip() for p in inner.split(',')]
        base = parts[0].lower()
        if base == 'pc':
            target = ev(disp)
            if len(parts) == 1:
                return Op('pcd', 0, target)
            x, xl = xreg(parts[1])
            return Op('pcx', 0, target, x, xl)
        rb = reg(base)
        if not rb or rb[0] != 'an':
            raise AsmError('bad operand ' + s)
        d = expr(disp, labels) if disp else 0
        d = 0 if d is None else d
        if d >= 0x80000000:
            d -= 1 << 32
        if len(parts) == 1:
            if disp == '':
                return Op('ind', rb[1])
            return Op('d16', rb[1], d)
        x, xl = xreg(parts[1])
        return Op('idx', rb[1], d, x, xl)
    if '/' in low or re.match(r'^[da][0-7]-[da][0-7]$', low):
        return reglist(low)
    return Op('pcd', 0, ev(s))   # branch target


def parse_insn(text, labels, addr, placeholder):
    text = text.strip()
    mn, _, rest = text.partition(' ')
    mn = mn.lower()
    base, _, sfx = mn.partition('.')
    if sfx:
        size = SIZE_OF[sfx]
    else:
        size = IMPLIED.get(base, 0)
        if base.startswith('s') and base[1:] in isa68k.CC and base not in ('swap', 'sub', 'subq', 'subx', 'suba', 'stop'):
            size = 1
        if base.startswith('db') and base[2:] in isa68k.CC:
            size = 2
    ops = []
    for k, o in enumerate(split_ops(rest)):
        if base == 'movem' and reg(o) and not o.startswith('('):
            ops.append(reglist(o))
        else:
            ops.append(operand(o, labels, size, placeholder))
    return base, size, ops


def assemble(path, data_dir):
    lines = open(path).read().split('\n')
    name = None
    labels = {}
    for pass_no in (1, 2):
        out = bytearray()
        ir = []
        pos, addr, seg = 0, 0, None
        for ln, line in enumerate(lines, 1):
            s = line.split(';', 1)[0].rstrip()
            if not s.strip():
                continue
            try:
                if not s[0].isspace():
                    lab = s.rstrip(':').strip()
                    if pass_no == 1:
                        if lab in labels:
                            raise AsmError('label defined twice: ' + lab)
                        labels[lab] = addr
                    continue
                t = s.strip()
                if t.startswith('.file'):
                    m = re.match(r'\.file\s+"([^"]+)",\s*(\d+)', t)
                    name, size = m.group(1), int(m.group(2))
                    src = open(os.path.join(data_dir, name), 'rb').read() if data_dir else bytes(size)
                    if len(src) != size:
                        raise AsmError('data/%s is %d bytes, expected %d' % (name, len(src), size))
                    continue
                if t.startswith('.org'):
                    m = re.match(r'\.org\s+(\d+),\s*\$([0-9a-fA-F]+)', t)
                    pos = int(m.group(1))
                    if pos != len(out):
                        raise AsmError('.org %d but file position is %d' % (pos, len(out)))
                    addr = int(m.group(2), 16)
                    seg = {'cpu': 'm' if 'main' in line else 's', 'base': addr - pos, 'code': []}
                    ir.append(seg)
                    continue
                if t.startswith('.incbin'):
                    a, n = [int(x) for x in t[7:].split(',')]
                    if a != len(out):
                        raise AsmError('.incbin %d but file position is %d' % (a, len(out)))
                    out += src[a:a + n]
                    addr += n
                    continue
                if t.startswith('dc.b'):
                    vals = [expr(v, labels) for v in t[4:].split(',')]
                    out += bytes(v & 0xff for v in vals)
                    addr += len(vals)
                    continue
                mn, size, ops = parse_insn(t, labels, addr, addr + 4)
                words = isa68k.encode(mn, size, ops, addr)
                if seg is not None and pass_no == 2:
                    seg['code'].append([len(out), words])
                for w in words:
                    out += bytes((w >> 8, w & 0xff))
                addr += 2 * len(words)
            except (AsmError, isa68k.EncodeError, KeyError, ValueError, TypeError, AttributeError) as e:
                raise AsmError('%s:%d: %s (%s)' % (path, ln, e, line.strip()))
    return name, bytes(out), ir


def main():
    if sys.argv[1] == '--code':
        ir_dir = sys.argv[2]
        os.makedirs(ir_dir, exist_ok=True)
        for path in sys.argv[3:]:
            name, out, ir = assemble(path, None)
            json.dump(ir, open(os.path.join(ir_dir, name + '.json'), 'w'))
        print('%d files' % (len(sys.argv) - 3))
        return
    data_dir, out_dir, ir_dir = sys.argv[1:4]
    os.makedirs(out_dir, exist_ok=True)
    os.makedirs(ir_dir, exist_ok=True)
    bad = 0
    for path in sys.argv[4:]:
        name, out, ir = assemble(path, data_dir)
        orig = open(os.path.join(data_dir, name), 'rb').read()
        open(os.path.join(out_dir, name), 'wb').write(out)
        json.dump(ir, open(os.path.join(ir_dir, name + '.json'), 'w'))
        if out != orig:
            bad += 1
            diff = next((k for k in range(min(len(out), len(orig))) if out[k] != orig[k]), min(len(out), len(orig)))
            print('%s: DIFFERS from the disc at offset %x' % (name, diff))
    print('%d files assembled, %d differ' % (len(sys.argv) - 4, bad))
    sys.exit(1 if bad else 0)


if __name__ == '__main__':
    main()
