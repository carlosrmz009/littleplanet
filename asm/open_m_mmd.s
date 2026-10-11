; OPEN_M.MMD
; disassembled from the disc; code only, data comes from data/OPEN_M.MMD at build time
	.file "OPEN_M.MMD", 10026
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	jmp (loc_ff2020).l
	.incbin 262, 26
loc_ff2020:
	clr.w ($fa40).w
	bclr.b #$1,($a1200e).l
	move.l #loc_ff25dc,($fffd08).l
	move.b #$0,($a1200e).l
	bsr.w sub_ff234e
	bsr.w sub_ff236c
	lea ($c00000).l,a5
	lea $4(a5),a4
	move.l #$64000003,($c00004).l
	move.l #$2000200,(a5)
	lea ($8000).w,a0
	move.w #$fff,d7
loc_ff2068:
	clr.l (a0)+
	dbf d7,loc_ff2068
	bsr.w sub_ff2340
	bsr.w sub_ff2304
	bsr.w sub_ff2584
	move.w #$0,($a12012).l
	bset.b #$1,($a1200e).l
	clr.w ($c088).w
	bset.b #$6,($fa47).w
	move.w ($fa46).w,($c00004).l
loc_ff209c:
	btst.b #$7,($a1200f).l
	bne.s loc_ff209c
	bclr.b #$1,($a1200e).l
	bclr.b #$4,($a1200e).l
	bsr.w sub_ff251a
	clr.w ($fa40).w
	move.w #$4,($c086).w
loc_ff20c4:
	moveq #$0,d0
	move.w ($c086).w,d0
	lea dat_ff2148(pc),a1
	adda.w $0(a1,d0.w),a1
	jsr (a1)
	bsr.s sub_ff2102
	btst.b #$1,($a1200f).l
	beq.s loc_ff20c4
	btst.b #$1,($a1200f).l
	beq.s loc_ff20c4
	btst.b #$1,($a1200f).l
	beq.s loc_ff20c4
	bsr.s sub_ff2110
	clr.b ($a1200e).l
	bsr.w sub_ff229a
	rts

sub_ff2102:
	move.b #$1,($fa00).w
loc_ff2108:
	tst.b ($fa00).w
	bne.s loc_ff2108
	rts

sub_ff2110:
	clr.w ($fa40).w
	move.w #$3c,d1
loc_ff2118:
	bsr.w sub_ff2102
	dbf d1,loc_ff2118
	bset.b #$4,($a1200e).l
loc_ff2128:
	btst.b #$1,($a1200f).l
	bne.s loc_ff2128
	btst.b #$1,($a1200f).l
	bne.s loc_ff2128
	btst.b #$1,($a1200f).l
	bne.s loc_ff2128
	rts
dat_ff2148:
	.incbin 584, 30
	lea ($200000).l,a0
	clr.w ($c080).w
	lea ($c000).w,a1
	movea.l a1,a3
	lea $20(a1),a2
	moveq #$7,d7
loc_ff217c:
	move.l (a1)+,(a2)+
	dbf d7,loc_ff217c
	movea.l a3,a1
	moveq #$7,d7
loc_ff2186:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff2186
	move.w #$5,($fa40).w
	move.w #$10,($c086).w
	move.l #$7a000000,d0
	btst.b #$0,($c081).w
	beq.s loc_ff21cc
	move.w #$8,($c086).w
	move.w #$1,($fa40).w
	move.l #$42000000,d0
	bra.s loc_ff21cc
	move.w #$2,($fa40).w
	move.w #$a,($c086).w
	move.l #$54c00000,d0
loc_ff21cc:
	lea ($8000).w,a2
	move.w #$1,(a2)+
	move.l d0,(a2)+
	move.l a0,(a2)+
	move.w #$960,(a2)+
	lea $12c0(a0),a0
	move.l a0,($c082).w
	rts
	move.w #$6,($fa40).w
	move.w #$12,($c086).w
	move.l #$4cc00001,d0
	bra.s loc_ff21cc
	move.w #$7,($fa40).w
	move.w #$14,($c086).w
	move.l #$5f800001,d0
	bra.s loc_ff2220
	move.w #$3,($fa40).w
	move.w #$c,($c086).w
	move.l #$67800000,d0
loc_ff2220:
	lea ($8000).w,a2
	move.w #$1,(a2)+
	move.l d0,(a2)+
	move.l a0,(a2)+
	move.w #$940,(a2)+
	lea $1280(a0),a0
	move.l a0,($c082).w
	rts
	move.w #$4,($fa40).w
	move.w #$e,($c086).w
	rts
	clr.w ($fa40).w
	bra.s loc_ff2254
	move.w #$8,($fa40).w
loc_ff2254:
	bsr.w sub_ff235a
	clr.w ($fa40).w
	addq.w #$1,($c080).w
	cmpi.w #$8,($c080).w
	bpl.s loc_ff2270
	move.w #$18,($c086).w
	rts
loc_ff2270:
	bsr.w sub_ff251a
	move.w #$4,($c086).w
	move.l (a7)+,d0
	bra.w loc_ff20c4
	move.w #$1a,($c086).w
	rts
	move.w #$1c,($c086).w
	rts
	move.w #$6,($c086).w
	rts
	dc.b $4e,$75

sub_ff229a:
	move.w #$7,($c096).w
	lea dat_ff2456(pc),a1
	lea ($c040).w,a2
	moveq #$f,d7
loc_ff22aa:
	move.w (a1)+,(a2)+
	dbf d7,loc_ff22aa
loc_ff22b0:
	move.w #$2,($c094).w
	lea ($c020).w,a1
	moveq #$1f,d7
	move.w #$f,d0
	move.w #$f0,d1
	move.w #$f00,d2
loc_ff22c8:
	move.w (a1),d3
	move.w d3,d4
	move.w d3,d5
	and.w d0,d3
	beq.s loc_ff22d4
	subq.w #$2,d3
loc_ff22d4:
	and.w d1,d4
	beq.s loc_ff22dc
	subi.w #$20,d4
loc_ff22dc:
	and.w d2,d5
	beq.s loc_ff22e4
	subi.w #$200,d5
loc_ff22e4:
	or.w d5,d4
	or.w d4,d3
	move.w d3,(a1)+
	dbf d7,loc_ff22c8
	st ($c098).w
loc_ff22f2:
	bsr.w sub_ff2102
	subq.w #$1,($c094).w
	bne.s loc_ff22f2
	subq.w #$1,($c096).w
	bpl.s loc_ff22b0
	rts

sub_ff2304:
	moveq #$10,d4
	move.l #$46080003,d0
	move.w #$1f,d1
	move.w #$d,d2
	bsr.s sub_ff2328
	move.w #$1d0,d4
	move.l #$46880003,d0
	move.w #$1f,d1
	move.w #$d,d2

sub_ff2328:
	move.l d0,(a4)
	move.l d1,d3
loc_ff232c:
	move.w d4,(a5)
	addq.w #$1,d4
	dbf d3,loc_ff232c
	addi.l #$1000000,d0
	dbf d2,sub_ff2328
	rts

sub_ff2340:
	moveq #$1f,d7
	lea ($c000).w,a1
loc_ff2346:
	clr.l (a1)+
	dbf d7,loc_ff2346
	rts

sub_ff234e:
	btst.b #$2,($a12003).l
	beq.s sub_ff234e
	rts

sub_ff235a:
	btst.b #$7,($fa4a).w
	beq.s loc_ff236a
	bset.b #$2,($a1200e).l
loc_ff236a:
	rts

sub_ff236c:
	lea dat_ff24b6(pc),a1
	jsr ($2b0).w
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	move.w #$100,($a11100).l
loc_ff2398:
	btst.b #$0,($a11100).l
	bne.s loc_ff2398
	lea ($c00004).l,a6
	move.w #$8f01,(a6)
	move.l #$93ff94ff,(a6)
	move.w #$9780,(a6)
	move.l #$40000080,(a6)
	move.w #$0,($c00000).l
loc_ff23c4:
	btst.b #$1,$1(a6)
	bne.s loc_ff23c4
	move.l #$40000000,(a6)
	move.w #$0,($c00000).l
	move.w #$8f02,(a6)
	move.l #$40000003,($c00004).l
	move.w #$fff,d7
loc_ff23ec:
	move.w #$e7e1,($c00000).l
	dbf d7,loc_ff23ec
	move.l #$c0000000,($c00004).l
	lea dat_ff2436(pc),a0
	moveq #$1f,d7
loc_ff2408:
	move.l (a0)+,($c00000).l
	dbf d7,loc_ff2408
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	move.w #$0,($a11100).l
	move.w #$8134,($fa46).w
	rts
dat_ff2436:
	.incbin 1334, 32
dat_ff2456:
	.incbin 1366, 96
dat_ff24b6:
	.incbin 1462, 34

sub_ff24d8:
	lea ($fa4a).w,a0
	lea ($a10003).l,a1
	bsr.s sub_ff24ee
	lea ($fa4c).w,a0
	lea ($a10005).l,a1

sub_ff24ee:
	move.b #$0,(a1)
	tst.w (a0)
	move.b (a1),d0
	lsl.b #$2,d0
	andi.b #$c0,d0
	move.b #$40,(a1)
	tst.w (a0)
	move.b (a1),d1
	andi.b #$3f,d1
	or.b d1,d0
	not.b d0
	move.b d0,d1
	move.b (a0),d2
	eor.b d2,d0
	move.b d1,(a0)+
	and.b d1,d0
	move.b d0,(a0)+
	rts

sub_ff251a:
	btst.b #$1,($a1200f).l
	bne.s loc_ff2582
	btst.b #$0,($a1200f).l
	beq.s sub_ff251a
	btst.b #$0,($a1200f).l
	beq.s sub_ff251a
	btst.b #$0,($a1200f).l
	beq.s sub_ff251a
	btst.b #$2,($a1200e).l
	bne.s sub_ff251a
	bclr.b #$1,($a12003).l
	bset.b #$0,($a1200e).l
loc_ff255c:
	btst.b #$1,($a12003).l
	bne.s loc_ff255c
	btst.b #$1,($a12003).l
	bne.s loc_ff255c
	btst.b #$1,($a12003).l
	bne.s loc_ff255c
	bclr.b #$0,($a1200e).l
loc_ff2582:
	rts

sub_ff2584:
	lea ($c00004).l,a6
	move.l #$9300940e,(a6)
	move.l #$95759693,(a6)
	move.w #$977f,(a6)
	move.w #$7d00,(a6)
	move.w #$81,-(a7)
	move.w (a7)+,(a6)
	move.l #$7d000001,(a6)
	move.w (dat_ff26ea).l,($c00000).l
	move.l #$60000002,d0
	move.w #$27,d1
	move.w #$1b,d2
	lea dat_ff3d6a(pc),a1
loc_ff25c6:
	move.l d0,(a4)
	move.l d1,d3
loc_ff25ca:
	move.w (a1)+,(a5)
	dbf d3,loc_ff25ca
	addi.l #$1000000,d0
	dbf d2,loc_ff25c6
	rts
loc_ff25dc:
	movem.l d0-d7/a0-a6,-(a7)
	move.b #$1,($a12000).l
	tst.b ($fa00).w
	beq.w loc_ff26aa
	clr.b ($fa00).w
	lea ($c00000).l,a5
	lea $4(a5),a4
	move.w (a4),d0
	move.w ($fa40).w,d0
	add.w d0,d0
	move.w dat_ff260e(pc,d0.w),d0
	jmp dat_ff260e(pc,d0.w)
dat_ff260e:
	.incbin 1806, 20
	move.l #$64000003,($c00004).l
	move.l #$2000000,(a5)
	bra.s loc_ff2644
	move.l #$64000003,($c00004).l
	move.l #$0,(a5)
loc_ff2644:
	lea ($8000).w,a0
	move.w (a0),d7
	clr.w (a0)+
	tst.w d7
	beq.s loc_ff2662
	move.l (a0)+,d0
	move.l (a0)+,d1
	move.w (a0)+,d2
	movem.l d7/a0,-(a7)
	jsr ($2d4).w
	movem.l (a7)+,d7/a0
loc_ff2662:
	move.l #$c0000000,($c00004).l
	moveq #$f,d7
	lea ($c020).w,a1
loc_ff2672:
	move.w (a1)+,(a5)
	dbf d7,loc_ff2672
	tst.w ($c098).w
	beq.s loc_ff268a
	clr.w ($c098).w
	moveq #$f,d7
loc_ff2684:
	move.w (a1)+,(a5)
	dbf d7,loc_ff2684
loc_ff268a:
	bset.b #$6,($fa47).w
	move.w ($fa46).w,($c00004).l
	jsr sub_ff24d8(pc)
	tst.w ($fa42).w
	beq.s loc_ff26a6
	subq.w #$1,($fa42).w
loc_ff26a6:
	addq.w #$1,($fa44).w
loc_ff26aa:
	movem.l (a7)+,d0-d7/a0-a6
	rte
	.incbin 1968, 58
dat_ff26ea:
	.incbin 2026, 5760
dat_ff3d6a:
	.incbin 7786, 2240
