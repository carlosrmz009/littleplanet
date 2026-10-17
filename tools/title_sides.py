"""True16:9 title screen: what to show past the sides of its horizon (src/wide.c).

The title's sky is drawn by the graphics ASIC, which works out the dots past its sides too, and the water
scrolls and fills the plane by itself. The horizon between them (plane B lines 96-159: the mountain, the
hills, the grass) is a still 256-pixel picture that doesn't join up at its ends, so neither repeating nor
mirroring it hides the edge. Instead each line of the 42 pixels past each side is a strip of the picture
itself (from that line or one up to 24 lines away, maybe flipped), chosen for the whole band at once: the
strip's inner end should look like what the picture's edge meets (its first or last 4 pixels), and the
strips of neighbouring lines should agree, so the hills carry on as they're drawn. Strips only come from
the hills with grass under them: not the mountain at the left edge (it would stand there twice), not the
middle (no grass behind the emblem).

usage: title_sides.py DUMP_PREFIX    (littleplanet --frames 1100 --dump DUMP_PREFIX DISC: the title)
prints the C tables for src/wide.c
"""
import struct, sys
import numpy as np

W, E, TOP, LINES = 256, 42, 96, 64      # picture width, pixels past each side, the horizon's lines
K, DY, KEEP, LAM = 4, 24, 80, 1.0       # edge pixels matched, line reach, choices kept per line, agreement weight
SOURCE = lambda x: 64 <= x < 120 or x >= 160   # columns with hills and grass


def plane_b(pre):
    v = open(pre + '_vram.bin', 'rb').read(); r = open(pre + '_vreg.bin', 'rb').read()
    nt = (r[4] & 7) << 13
    def px(x, y):
        e = struct.unpack('>H', v[nt + ((y >> 3) * 64 + (x >> 3)) * 2:][:2])[0]
        t, pal, hf, vf = e & 0x7ff, (e >> 13) & 3, (e >> 11) & 1, (e >> 12) & 1
        sx, sy = (7 - (x & 7) if hf else x & 7), (7 - (y & 7) if vf else y & 7)
        b = v[t * 32 + sy * 4 + sx // 2]
        p = (b >> 4) if sx % 2 == 0 else b & 15
        return pal * 16 + p if p else 0
    h = 2166136261   # the horizon's names (rows 12-19), what src/wide.c checks it's looking at
    for b in v[nt + 12 * 128:nt + 20 * 128]: h = ((h ^ b) * 16777619) & 0xffffffff
    return np.array([[px(x, TOP + y) for x in range(W)] for y in range(LINES)]), h


def candidates(side):
    """(flip, a, source columns of the strip, columns that should look like the edge's)"""
    out = []
    if side == 'L':   # x < 0
        for a in range(E, W - K): out.append((0, a, np.arange(a - E, a), np.arange(a, a + K)))
        for m in range(E + 8, W - E): out.append((1, m, m - 1 - np.arange(-E, 0), m - 1 - np.arange(K)))
        edge = np.arange(K)
    else:             # x >= W
        for b in range(K, W - E): out.append((0, b, np.arange(b, b + E), np.arange(b - K, b)))
        for m in range(E, W - E - 8): out.append((1, m, m - 1 - np.arange(E), m + K - 1 - np.arange(K)))
        edge = np.arange(W - K, W)
    return [c for c in out if all(SOURCE(x) for x in c[2])], edge


def solve(src, side):
    cs, edge = candidates(side)
    layers = []
    for y in range(LINES):
        opts = [(int((src[y + dy, match] != src[y, edge]).sum()) + 0.05 * abs(dy), dy, k)
                for dy in range(-DY, DY + 1) if 0 <= y + dy < LINES
                for k, (_, _, _, match) in enumerate(cs)]
        opts.sort(key=lambda t: t[0])
        layers.append(opts[:KEEP])
    strip = lambda y, dy, k: src[min(max(y + dy, 0), LINES - 1), cs[k][2]]
    cost = np.array([o[0] for o in layers[0]]); back = []
    for y in range(1, LINES):
        sp = np.array([strip(y, dy, k) for _, dy, k in layers[y - 1]])
        sc = np.array([strip(y, dy, k) for _, dy, k in layers[y]])
        tot = cost[:, None] + LAM * (sp[:, None, :] != sc[None, :, :]).sum(2)
        back.append(tot.argmin(0)); cost = tot.min(0) + np.array([o[0] for o in layers[y]])
    i = int(cost.argmin()); path = [None] * LINES
    for y in range(LINES - 1, -1, -1):
        _, dy, k = layers[y][i]; path[y] = (dy, cs[k][0], cs[k][1])
        if y: i = back[y - 1][i]
    return path


def main():
    src, h = plane_b(sys.argv[1])
    print('#define TITLE_HORIZON_HASH 0x%08x' % h)
    for side, name in (('L', 'left'), ('R', 'right')):
        rows = ['{%d,%d,%d}' % e for e in solve(src, side)]
        print('static const TitleSide title_%s[TITLE_WATER - TITLE_HORIZON] = {' % name)
        for i in range(0, LINES, 8): print('  ' + ', '.join(rows[i:i + 8]) + ',')
        print('};')


if __name__ == '__main__':
    main()
