"""Build step for the recompiled code: asm/ -> C, only when something it depends on changed.

usage: recomp_gen.py OPMAP      (OPMAP: build/opmap.txt, from tools/opmap.c)
Prints the directory with the generated C: build/rc/<hash of the inputs>. The C is generated there once;
the build scripts compile it into <dir>/obj the same way, so a cached build/rc skips both.
"""
import glob, hashlib, os, shutil, sys
sys.path.insert(0, os.path.dirname(__file__))

ROOT = os.path.normpath(os.path.join(os.path.dirname(__file__), '..'))
INPUTS = ['asm/*.s', 'tools/asm.py', 'tools/isa68k.py', 'tools/recomp.py', 'tools/recomp_gen.py', 'tools/opmap.c',
          'src/m68k.c', 'src/m68k.h', 'src/m68k_ops.h', 'src/recomp.h', 'src/mcd.h', 'src/types.h']


def main():
    opmap = sys.argv[1]
    h = hashlib.sha256()
    for pat in INPUTS:
        for p in sorted(glob.glob(os.path.join(ROOT, pat))):
            h.update(os.path.relpath(p, ROOT).replace('\\', '/').encode())
            h.update(open(p, 'rb').read().replace(b'\r\n', b'\n'))
    h.update(open(opmap, 'rb').read().replace(b'\r\n', b'\n'))
    base = os.path.join(ROOT, 'build', 'rc')
    out = os.path.join(base, h.hexdigest()[:16])
    if not os.path.exists(os.path.join(out, 'rc_tables.c')):
        import asm, recomp
        ir = os.path.join(base, 'ir.tmp')
        shutil.rmtree(ir, ignore_errors=True)
        os.makedirs(ir)
        import json
        for path in sorted(glob.glob(os.path.join(ROOT, 'asm', '*.s'))):
            name, _, segs = asm.assemble(path, None)
            json.dump(segs, open(os.path.join(ir, name + '.json'), 'w'))
        tmp = out + '.tmp'
        shutil.rmtree(tmp, ignore_errors=True)
        sys.argv = ['recomp.py', opmap, ir, tmp]
        recomp.main()
        os.rename(tmp, out)
        shutil.rmtree(ir, ignore_errors=True)
    for d in glob.glob(os.path.join(base, '*')):   # older generations
        if d != out and os.path.isdir(d):
            shutil.rmtree(d, ignore_errors=True)
    print(os.path.relpath(out, ROOT).replace('\\', '/'))


if __name__ == '__main__':
    main()
