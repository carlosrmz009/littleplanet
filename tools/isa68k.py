"""MC68000 instruction decoder used by the disassembler, the assembler's self-check and the recompiler.

decode(mem, addr) reads big-endian words through mem(addr) -> int (16-bit) and returns an Insn.
Operands are kept structured so the recompiler doesn't have to parse text.
"""

SIZES = {1: 'b', 2: 'w', 4: 'l'}
CC = ['t', 'f', 'hi', 'ls', 'cc', 'cs', 'ne', 'eq', 'vc', 'vs', 'pl', 'mi', 'ge', 'lt', 'gt', 'le']


class Bad(Exception):
    pass


class Op:
    """Operand. kind: dn an ind pi pd d16 idx aw al pcd pcx imm reglist sr ccr usp"""
    __slots__ = ('kind', 'reg', 'val', 'xreg', 'xlong', 'size')

    def __init__(self, kind, reg=0, val=0, xreg=0, xlong=False, size=0):
        self.kind, self.reg, self.val, self.xreg, self.xlong, self.size = kind, reg, val, xreg, xlong, size

    def target(self):
        """Absolute address referenced, if the operand names one."""
        if self.kind in ('aw', 'al', 'pcd'):
            return self.val
        return None


class Insn:
    __slots__ = ('addr', 'op', 'mn', 'size', 'ops', 'len', 'words', 'flow', 'targets')

    def __init__(self):
        self.ops = []
        self.targets = []
        self.flow = 'seq'     # seq, jump, cjump, call, ret, stop
        self.size = 0


def sx8(v): return v - 0x100 if v & 0x80 else v
def sx16(v): return v - 0x10000 if v & 0x8000 else v
def sx32(v): return v - 0x100000000 if v & 0x80000000 else v


class _Rd:
    def __init__(self, mem, addr):
        self.mem, self.pc = mem, addr

    def w(self):
        v = self.mem(self.pc)
        if v is None:
            raise Bad('read')
        self.pc += 2
        return v

    def l(self):
        h = self.w()
        return h << 16 | self.w()


VALID = {
    'all': set(range(12)), 'data': set(range(12)) - {1}, 'mem': set(range(12)) - {0, 1},
    'ctrl': {2, 5, 6, 7, 8, 9, 10}, 'alt': {0, 1, 2, 3, 4, 5, 6, 7, 8},
    'dalt': {0, 2, 3, 4, 5, 6, 7, 8}, 'malt': {2, 3, 4, 5, 6, 7, 8}, 'calt': {2, 5, 6, 7, 8},
}


def eai(m, r):
    return m if m < 7 else (7 + r if r < 5 else 99)


def ea(rd, m, r, size, cls):
    if eai(m, r) not in VALID[cls]:
        raise Bad('ea')
    if m == 0: return Op('dn', r)
    if m == 1: return Op('an', r)
    if m == 2: return Op('ind', r)
    if m == 3: return Op('pi', r)
    if m == 4: return Op('pd', r)
    if m == 5: return Op('d16', r, sx16(rd.w()))
    if m == 6:
        e = rd.w()
        if e & 0x700:
            raise Bad('ext')
        return Op('idx', r, sx8(e & 0xff), e >> 12, bool(e & 0x800))
    if r == 0: return Op('aw', 0, sx16(rd.w()) & 0xffffffff)
    if r == 1: return Op('al', 0, rd.l())
    if r == 2:
        base = rd.pc
        return Op('pcd', 0, (base + sx16(rd.w())) & 0xffffffff)
    if r == 3:
        base = rd.pc
        e = rd.w()
        if e & 0x700:
            raise Bad('ext')
        return Op('pcx', 0, (base + sx8(e & 0xff)) & 0xffffffff, e >> 12, bool(e & 0x800))
    if r == 4:
        if size == 4: return Op('imm', 0, rd.l(), size=4)
        v = rd.w()
        if size == 1:
            if v & 0xff00:
                raise Bad('imm8')
            v &= 0xff
        return Op('imm', 0, v, size=size)
    raise Bad('ea')


def sz2(s):
    return {0: 1, 1: 2, 2: 4}.get(s)


def decode(mem, addr):
    rd = _Rd(mem, addr)
    op = rd.w()
    i = Insn()
    i.addr, i.op = addr, op
    try:
        _decode(i, rd, op)
    except Bad:
        return None
    i.len = rd.pc - addr
    i.words = [mem(addr + k) for k in range(0, i.len, 2)]
    return i


def _decode(i, rd, op):
    hi, m, r, rx = op >> 12, (op >> 3) & 7, op & 7, (op >> 9) & 7
    s6 = (op >> 6) & 3
    O = i.ops

    def setmn(mn, size=0):
        i.mn, i.size = mn, size

    if hi == 0:
        if op in (0x003c, 0x007c, 0x023c, 0x027c, 0x0a3c, 0x0a7c):
            setmn({0: 'ori', 1: 'andi', 5: 'eori'}[rx], 1 if op & 0x40 == 0 else 2)
            O += [Op('imm', 0, rd.w() & (0xff if not op & 0x40 else 0xffff), size=i.size), Op('ccr' if not op & 0x40 else 'sr')]
            return
        if op & 0x138 == 0x108:
            om = (op >> 6) & 3
            setmn('movep', 2 if om in (0, 2) else 4)
            d = Op('d16', r, sx16(rd.w()))
            O += [d, Op('dn', rx)] if om < 2 else [Op('dn', rx), d]
            return
        if op & 0x100 or (op & 0xff00) == 0x0800:
            k = s6
            dyn = bool(op & 0x100)
            src = Op('dn', rx) if dyn else Op('imm', 0, rd.w() & 0xff, size=1)
            if not dyn and (src.val > 0xff):
                raise Bad('bit')
            cls = ('data' if dyn else 'data') if k == 0 else 'dalt'
            if k == 0 and not dyn and eai(m, r) == 11:
                raise Bad('btst')
            dst = ea(rd, m, r, 1, cls)
            setmn(['btst', 'bchg', 'bclr', 'bset'][k], 4 if m == 0 else 1)
            O += [src, dst]
            return
        k = rx
        if s6 == 3 or k in (4, 7):
            raise Bad('imm')
        size = sz2(s6)
        imm = Op('imm', 0, rd.l() if size == 4 else rd.w() & (0xff if size == 1 else 0xffff), size=size)
        if size == 1 and False:
            pass
        dst = ea(rd, m, r, size, 'data' if k == 6 else 'dalt')
        if k == 6 and dst.kind == 'imm':
            raise Bad('cmpi')
        setmn(['ori', 'andi', 'subi', 'addi', None, 'eori', 'cmpi'][k], size)
        O += [imm, dst]
        return

    if hi in (1, 2, 3):
        size = {1: 1, 3: 2, 2: 4}[hi]
        dm = (op >> 6) & 7
        if size == 1 and m == 1:
            raise Bad('move.b an')
        src = ea(rd, m, r, size, 'all')
        if dm == 1:
            if size == 1:
                raise Bad('movea.b')
            setmn('movea', size)
            O += [src, Op('an', rx)]
            return
        dst = ea(rd, dm, rx, size, 'dalt')
        setmn('move', size)
        O += [src, dst]
        return

    if hi == 4:
        simple = {0x4afc: 'illegal', 0x4e70: 'reset', 0x4e71: 'nop', 0x4e73: 'rte', 0x4e75: 'rts', 0x4e76: 'trapv', 0x4e77: 'rtr'}
        if op in simple:
            setmn(simple[op])
            i.flow = {'illegal': 'stop', 'rte': 'ret', 'rts': 'ret', 'rtr': 'ret'}.get(i.mn, 'seq')
            return
        if op == 0x4e72:
            setmn('stop'); O.append(Op('imm', 0, rd.w(), size=2)); return
        if op & 0xfff0 == 0x4e40:
            setmn('trap'); O.append(Op('imm', 0, op & 15)); return
        if op & 0xfff8 == 0x4e50:
            setmn('link', 2); O += [Op('an', r), Op('imm', 0, sx16(rd.w()) & 0xffff, size=2)]; return
        if op & 0xfff8 == 0x4e58:
            setmn('unlk'); O.append(Op('an', r)); return
        if op & 0xfff0 == 0x4e60:
            setmn('move', 4)
            O += [Op('usp'), Op('an', r)] if op & 8 else [Op('an', r), Op('usp')]
            return
        if op & 0xff80 == 0x4e80:
            jsr = not op & 0x40
            t = ea(rd, m, r, 4, 'ctrl')
            setmn('jsr' if jsr else 'jmp')
            O.append(t)
            i.flow = 'call' if jsr else 'jump'
            if t.target() is not None:
                i.targets.append(t.target())
            return
        if op & 0xf1c0 == 0x41c0:
            setmn('lea', 4); O += [ea(rd, m, r, 4, 'ctrl'), Op('an', rx)]; return
        if op & 0xf1c0 == 0x4180:
            setmn('chk', 2); O += [ea(rd, m, r, 2, 'data'), Op('dn', rx)]; return
        if op & 0xffc0 == 0x40c0:
            setmn('move', 2); O += [Op('sr'), ea(rd, m, r, 2, 'dalt')]; return
        if op & 0xffc0 == 0x44c0:
            setmn('move', 2); O += [ea(rd, m, r, 2, 'data'), Op('ccr')]; return
        if op & 0xffc0 == 0x46c0:
            setmn('move', 2); O += [ea(rd, m, r, 2, 'data'), Op('sr')]; return
        if op & 0xf900 == 0x4000 and s6 != 3:
            size = sz2(s6)
            setmn(['negx', 'clr', 'neg', 'not'][(op >> 9) & 3], size)
            O.append(ea(rd, m, r, size, 'dalt'))
            return
        if op & 0xffc0 == 0x4800:
            setmn('nbcd', 1); O.append(ea(rd, m, r, 1, 'dalt')); return
        if op & 0xfff8 == 0x4840:
            setmn('swap', 2); O.append(Op('dn', r)); return
        if op & 0xffc0 == 0x4840:
            setmn('pea', 4); O.append(ea(rd, m, r, 4, 'ctrl')); return
        if op & 0xffb8 == 0x4880:
            setmn('ext', 4 if op & 0x40 else 2); O.append(Op('dn', r)); return
        if op & 0xfb80 == 0x4880:
            size = 4 if op & 0x40 else 2
            mask = rd.w()
            load = bool(op & 0x400)
            if load:
                t = ea(rd, m, r, size, 'ctrl' if m != 3 else 'all')
                if t.kind not in ('pi', 'ind', 'd16', 'idx', 'aw', 'al', 'pcd', 'pcx'):
                    raise Bad('movem')
                setmn('movem', size); O += [Op('reglist', 0, mask), t]
                O.reverse()
            else:
                t = ea(rd, m, r, size, 'calt' if m != 4 else 'alt')
                if t.kind not in ('pd', 'ind', 'd16', 'idx', 'aw', 'al'):
                    raise Bad('movem')
                if t.kind == 'pd':   # mask is reversed for predecrement
                    mask = int('{:016b}'.format(mask)[::-1], 2)
                setmn('movem', size); O += [Op('reglist', 0, mask), t]
            return
        if op & 0xffc0 == 0x4ac0:
            setmn('tas', 1); O.append(ea(rd, m, r, 1, 'dalt')); return
        if op & 0xff00 == 0x4a00:
            size = sz2(s6)
            setmn('tst', size); O.append(ea(rd, m, r, size, 'dalt')); return
        raise Bad('4')

    if hi == 5:
        cc = (op >> 8) & 15
        if s6 == 3:
            if m == 1:
                base = rd.pc
                t = (base + sx16(rd.w())) & 0xffffffff
                setmn('db' + CC[cc], 2)
                O += [Op('dn', r), Op('pcd', 0, t)]
                i.flow = 'cjump'
                i.targets.append(t)
                return
            setmn('s' + CC[cc], 1); O.append(ea(rd, m, r, 1, 'dalt')); return
        size = sz2(s6)
        if size == 1 and m == 1:
            raise Bad('addq.b an')
        q = rx or 8
        setmn('subq' if op & 0x100 else 'addq', size)
        O += [Op('imm', 0, q, size=size), ea(rd, m, r, size, 'alt')]
        return

    if hi == 6:
        cc = (op >> 8) & 15
        base = rd.pc
        d = sx8(op & 0xff)
        bsz = 1
        if d == 0:
            d = sx16(rd.w()); bsz = 2
        elif op & 0xff == 0xff:
            raise Bad('bcc.l')
        t = (base + d) & 0xffffffff
        setmn('bra' if cc == 0 else 'bsr' if cc == 1 else 'b' + CC[cc], bsz)
        O.append(Op('pcd', 0, t))
        i.flow = 'jump' if cc == 0 else 'call' if cc == 1 else 'cjump'
        i.targets.append(t)
        return

    if hi == 7:
        if op & 0x100:
            raise Bad('moveq')
        setmn('moveq', 4); O += [Op('imm', 0, sx8(op & 0xff) & 0xffffffff, size=1), Op('dn', rx)]; return

    if hi in (8, 12, 9, 13, 11):
        om = (op >> 6) & 7
        if hi in (8, 12):
            if om in (3, 7):
                setmn(('divu' if om == 3 else 'divs') if hi == 8 else ('mulu' if om == 3 else 'muls'), 2)
                O += [ea(rd, m, r, 2, 'data'), Op('dn', rx)]
                return
            if om == 4 and m < 2:
                setmn('sbcd' if hi == 8 else 'abcd', 1)
                O += [Op('pd', r), Op('pd', rx)] if m else [Op('dn', r), Op('dn', rx)]
                return
            if hi == 12 and om in (5, 6) and m < 2:
                mode = (op >> 3) & 0x1f
                setmn('exg', 4)
                if mode == 8: O += [Op('dn', rx), Op('dn', r)]
                elif mode == 9: O += [Op('an', rx), Op('an', r)]
                elif mode == 0x11: O += [Op('dn', rx), Op('an', r)]
                else: raise Bad('exg')
                return
            size = sz2(om & 3)
            mn = 'or' if hi == 8 else 'and'
            setmn(mn, size)
            if om < 3: O += [ea(rd, m, r, size, 'data'), Op('dn', rx)]
            else: O += [Op('dn', rx), ea(rd, m, r, size, 'malt')]
            return
        if hi in (9, 13):
            mn = 'sub' if hi == 9 else 'add'
            if om in (3, 7):
                size = 2 if om == 3 else 4
                setmn(mn + 'a', size); O += [ea(rd, m, r, size, 'all'), Op('an', rx)]; return
            size = sz2(om & 3)
            if om >= 4 and m < 2:
                setmn(mn + 'x', size)
                O += [Op('pd', r), Op('pd', rx)] if m else [Op('dn', r), Op('dn', rx)]
                return
            if om < 3:
                if size == 1 and m == 1:
                    raise Bad('b an')
                setmn(mn, size); O += [ea(rd, m, r, size, 'all'), Op('dn', rx)]
            else:
                setmn(mn, size); O += [Op('dn', rx), ea(rd, m, r, size, 'malt')]
            return
        # 11
        if om in (3, 7):
            size = 2 if om == 3 else 4
            setmn('cmpa', size); O += [ea(rd, m, r, size, 'all'), Op('an', rx)]; return
        size = sz2(om & 3)
        if om < 3:
            if size == 1 and m == 1:
                raise Bad('cmp.b an')
            setmn('cmp', size); O += [ea(rd, m, r, size, 'all'), Op('dn', rx)]; return
        if m == 1:
            setmn('cmpm', size); O += [Op('pi', r), Op('pi', rx)]; return
        setmn('eor', size); O += [Op('dn', rx), ea(rd, m, r, size, 'dalt')]; return

    if hi == 10:
        setmn('linea'); O.append(Op('imm', 0, op & 0xfff)); return
    if hi == 15:
        raise Bad('linef')

    # 14: shifts
    names = ['as', 'ls', 'rox', 'ro']
    d = 'l' if op & 0x100 else 'r'
    if s6 == 3:
        if op & 0x800:
            raise Bad('shift')
        setmn(names[(op >> 9) & 3] + d, 2)
        O.append(ea(rd, m, r, 2, 'malt'))
        return
    size = sz2(s6)
    setmn(names[(op >> 3) & 3] + d, size)
    if op & 0x20:
        O += [Op('dn', rx), Op('dn', r)]
    else:
        O += [Op('imm', 0, rx or 8, size=1), Op('dn', r)]


# ---- text form

def reglist(mask):
    names = ['d%d' % k for k in range(8)] + ['a%d' % k for k in range(8)]
    out, k = [], 0
    while k < 16:
        if mask & (1 << k):
            j = k
            while j + 1 < 16 and mask & (1 << (j + 1)) and (j + 1) // 8 == k // 8:
                j += 1
            out.append(names[k] if j == k else names[k] + '-' + names[j])
            k = j + 1
        else:
            k += 1
    return '/'.join(out)


def fmt_op(o, label=None):
    """label(addr, kind) -> name or None"""
    k = o.kind
    def xr():
        return ('d%d' if o.xreg < 8 else 'a%d') % (o.xreg & 7) + ('.l' if o.xlong else '.w')
    if k == 'dn': return 'd%d' % o.reg
    if k == 'an': return 'sp' if o.reg == 7 and False else 'a%d' % o.reg
    if k == 'ind': return '(a%d)' % o.reg
    if k == 'pi': return '(a%d)+' % o.reg
    if k == 'pd': return '-(a%d)' % o.reg
    if k == 'd16': return '%s(a%d)' % (hexs(o.val), o.reg)
    if k == 'idx': return '%s(a%d,%s)' % (hexs(o.val), o.reg, xr())
    if k == 'aw':
        n = label(o.val, 'aw') if label else None
        return '(%s).w' % (n or '$%x' % (o.val & 0xffff if o.val < 0x8000 or o.val >= 0xffff8000 else o.val))
    if k == 'al':
        n = label(o.val, 'al') if label else None
        return '(%s).l' % (n or '$%x' % o.val)
    if k == 'pcd':
        n = label(o.val, 'pc') if label else None
        return '%s(pc)' % (n or '$%x' % o.val)
    if k == 'pcx':
        n = label(o.val, 'pc') if label else None
        return '%s(pc,%s)' % (n or '$%x' % o.val, xr())
    if k == 'imm':
        if o.size == 0:
            return '#%d' % o.val
        n = label(o.val, 'imm') if label and o.size == 4 else None
        return '#' + (n or '$%x' % o.val)
    if k == 'reglist': return reglist(o.val)
    return k


def hexs(v):
    return '-$%x' % -v if v < 0 else '$%x' % v


def fmt(i, label=None):
    mn = i.mn
    if i.size and mn not in ('moveq', 'lea', 'pea', 'exg', 'swap', 'linea') and not (mn.startswith('db') or mn.startswith('s') and len(mn) <= 3 and mn not in ('sub', 'subq', 'subx', 'suba', 'swap', 'stop')):
        mn += '.' + SIZES[i.size]
    if mn in ('bra', 'bsr') or (mn.startswith('b') and mn[1:] in CC):
        mn += '.' + ('s' if i.size == 1 else 'w')
    ops = []
    for k, o in enumerate(i.ops):
        if o.kind == 'pcd' and (i.flow in ('jump', 'cjump', 'call')) and i.mn not in ('jmp', 'jsr'):
            n = label(o.val, 'branch') if label else None
            ops.append(n or '$%x' % o.val)
        else:
            ops.append(fmt_op(o, label))
    return mn + (' ' + ','.join(ops) if ops else '')
