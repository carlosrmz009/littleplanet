"""Maps runtime coverage (littleplanet --cov) onto the disc's files.

Every covered instruction is (cpu, address, fingerprint of the 8 bytes there). Each fingerprint is
looked up in every file; a file's load address is the base that most of its matches agree on.
Writes JSON: {file: [{"cpu": "m"|"s", "base": n, "insns": [file offsets]}]}.

usage: covmap.py FILES_DIR OUT.json COV.txt [COV.txt ...]     (needs numpy)
"""
import collections, json, os, sys
import numpy as np

SKIP = ('.STM', '.TXT')


def fingerprints(data):
    """FNV-1a style hash over 4 big-endian words at every even offset (same as src/cov.c)."""
    n = len(data) // 2
    if n < 4:
        return np.zeros(0, np.uint32)
    w = np.frombuffer(data[:n * 2], dtype='>u2').astype(np.uint32)
    h = np.full(n - 3, 2166136261, np.uint32)
    with np.errstate(over='ignore'):
        for k in range(4):
            h = (h ^ w[k:n - 3 + k]) * np.uint32(16777619)
    h[h == 0] = 1
    return h


def main():
    files_dir, out = sys.argv[1], sys.argv[2]
    cov = []
    for p in sys.argv[3:]:
        for line in open(p):
            c, pc, fp = line.split()
            cov.append((c, int(pc, 16), int(fp, 16)))
    cov = sorted(set(cov))
    names, fps, offs, fids = [], [], [], []
    for fn in sorted(os.listdir(files_dir)):
        if fn.upper().endswith(SKIP) or fn.upper().startswith('SNCBNK'):
            continue
        data = open(os.path.join(files_dir, fn), 'rb').read()
        f = fingerprints(data)
        names.append(fn)
        fps.append(f)
        offs.append(np.arange(len(f), dtype=np.uint32) * 2)
        fids.append(np.full(len(f), len(names) - 1, np.uint16))
    fps, offs, fids = np.concatenate(fps), np.concatenate(offs), np.concatenate(fids)
    order = np.argsort(fps, kind='stable')
    fps, offs, fids = fps[order], offs[order], fids[order]
    # candidate (file, base) votes
    votes = collections.Counter()
    hits = collections.defaultdict(list)
    for c, pc, fp in cov:
        lo = np.searchsorted(fps, fp, 'left')
        hi = np.searchsorted(fps, fp, 'right')
        for i in range(lo, min(hi, lo + 64)):
            base = pc - int(offs[i])
            key = (int(fids[i]), c, base)
            votes[key] += 1
            hits[key].append(int(offs[i]))
    result = collections.defaultdict(list)
    for (fid, c, base), n in votes.most_common():
        # keep bases with real support; tiny accidental matches are noise
        if n < 8:
            continue
        result[names[fid]].append({'cpu': c, 'base': base, 'insns': sorted(set(hits[(fid, c, base)]))})
    for fn in result:
        result[fn].sort(key=lambda e: -len(e['insns']))
    json.dump(result, open(out, 'w'), indent=0)
    for fn in sorted(result):
        for e in result[fn][:3]:
            print('%-14s %s base %06x  %6d insns' % (fn, e['cpu'], e['base'] & 0xffffff, len(e['insns'])))


if __name__ == '__main__':
    main()
