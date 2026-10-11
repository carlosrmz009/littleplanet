; VM____.MMD
; disassembled from the disc; code only, data comes from data/VM____.MMD at build time
	.file "VM____.MMD", 15774
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	dc.b $21,$fc,$00,$ff,$24,$28,$fd,$08
	moveq #$0,d0
	move.l d0,($a12010).l
	move.l d0,($a12014).l
	move.l d0,($a12018).l
	move.l d0,($a1201c).l
	move.b d0,($a1200e).l
	lea ($9000).w,a0
	moveq #$0,d0
	move.w #$1aff,d7
loc_ff2032:
	move.l d0,(a0)+
	dbf d7,loc_ff2032
	move.w #$8000,($a1201e).l
	bsr.w sub_ff2214
	bsr.w sub_ff21a6
	moveq #$1,d0
	jsr (sub_ff2884).l
	bsr.w sub_ff27a6
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	lea dat_ff2336(pc),a0
	lea ($ed80).w,a1
	moveq #$1f,d7
loc_ff2070:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff2070
	bsr.w sub_ff29fc
loc_ff207a:
	bsr.w sub_ff20a0
	tst.b ($f340).w
	bne.s loc_ff208e
	bsr.w sub_ff2630
	bsr.w sub_ff25e8
	bra.s loc_ff207a
loc_ff208e:
	bsr.w sub_ff2a98
	moveq #$0,d0
	move.w ($f382).w,d0
	nop
	nop
	nop
	rts

sub_ff20a0:
	btst.b #$7,($a1201f).l
	beq.s loc_ff20b2
	move.b #$1,($f340).w
	rts
loc_ff20b2:
	btst.b #$6,($a1201f).l
	beq.s loc_ff20c4
	move.b #$1,($f340).w
	rts
loc_ff20c4:
	btst.b #$4,($a1201f).l
	beq.s loc_ff20d6
	move.b #$1,($f340).w
	rts
loc_ff20d6:
	btst.b #$5,($a1201f).l
	beq.s loc_ff20e8
	move.b #$1,($f340).w
	rts
loc_ff20e8:
	btst.b #$0,($a1201e).l
	bne.s loc_ff210e
	btst.b #$0,($f39e).w
	beq.s loc_ff2114
	bclr.b #$0,($f39e).w
	subq.w #$1,($f382).w
	bge.s loc_ff2114
	move.w #$4,($f382).w
	bra.s loc_ff2114
loc_ff210e:
	bset.b #$0,($f39e).w
loc_ff2114:
	btst.b #$1,($a1201e).l
	bne.s loc_ff2140
	btst.b #$1,($f39e).w
	beq.s loc_ff2146
	bclr.b #$1,($f39e).w
	addq.w #$1,($f382).w
	cmpi.w #$4,($f382).w
	ble.s loc_ff2146
	move.w #$0,($f382).w
	bra.s loc_ff2146
loc_ff2140:
	bset.b #$1,($f39e).w
loc_ff2146:
	btst.b #$3,($a1201e).l
	bne.s loc_ff216c
	btst.b #$3,($f39e).w
	beq.s loc_ff2172
	bclr.b #$3,($f39e).w
	subq.w #$1,($f382).w
	bge.s loc_ff2172
	move.w #$4,($f382).w
	bra.s loc_ff2172
loc_ff216c:
	bset.b #$3,($f39e).w
loc_ff2172:
	btst.b #$2,($a1201e).l
	bne.s loc_ff219e
	btst.b #$2,($f39e).w
	beq.s loc_ff21a4
	bclr.b #$2,($f39e).w
	addq.w #$1,($f382).w
	cmpi.w #$4,($f382).w
	ble.s loc_ff21a4
	move.w #$0,($f382).w
	bra.s loc_ff21a4
loc_ff219e:
	bset.b #$2,($f39e).w
loc_ff21a4:
	rts

sub_ff21a6:
	lea ($c00004).l,a2
	lea (dat_ff53de).l,a1
	move.w #$4001,d6
	move.l #$40000003,d0
	move.w #$1b,d1
loc_ff21c0:
	move.l d0,(a2)
	move.w #$27,d2
loc_ff21c6:
	move.w (a1)+,d3
	add.w d6,d3
	move.w d3,($c00000).l
	dbf d2,loc_ff21c6
	addi.l #$800000,d0
	dbf d1,loc_ff21c0
	move.l #$40200000,($c00004).l
	lea (dat_ff2e30).l,a0
	bsr.w sub_ff28b4
	rts
	.incbin 756, 32

sub_ff2214:
	lea dat_ff23b6(pc),a0
	move.w #$8000,d0
	moveq #$12,d7
loc_ff221e:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff221e
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bra.s loc_ff2284
	.incbin 844, 56
loc_ff2284:
	bsr.w sub_ff23ca
	lea ($c00004).l,a6
	move.w #$8f01,(a6)
	move.l #$93ff94ff,(a6)
	move.w #$9780,(a6)
	move.l #$40000080,(a6)
	move.w #$0,($c00000).l
loc_ff22aa:
	btst.b #$1,$1(a6)
	bne.s loc_ff22aa
	move.l #$40000000,(a6)
	move.w #$0,($c00000).l
	move.w #$8f02,(a6)
	move.l #$40000003,($c00004).l
	move.w #$7ff,d7
loc_ff22d2:
	move.w #$e6ff,($c00000).l
	dbf d7,loc_ff22d2
	move.l #$60000003,($c00004).l
	move.w #$7ff,d7
loc_ff22ec:
	move.w #$6fe,($c00000).l
	dbf d7,loc_ff22ec
	move.l #$c0000000,($c00004).l
	lea dat_ff2336(pc),a0
	moveq #$0,d0
	moveq #$1f,d7
loc_ff230a:
	move.l d0,($c00000).l
	dbf d7,loc_ff230a
	move.l #$40000010,($c00004).l
	move.l #$ffe0,($c00000).l
	bsr.w sub_ff23e2
	move.w #$8134,($ff0f16).l
	rts
dat_ff2336:
	.incbin 1078, 128
dat_ff23b6:
	.incbin 1206, 20

sub_ff23ca:
	move.w sr,($f3aa).w
	move.w #$100,($a11100).l
loc_ff23d6:
	btst.b #$0,($a11100).l
	bne.s loc_ff23d6
	rts

sub_ff23e2:
	move.w #$0,($a11100).l
	move.w ($f3aa).w,sr
	rts
	.incbin 1264, 272
loc_ff2500:
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	rts
	.incbin 1570, 198

sub_ff25e8:
	move.b #$1,($f39f).w
	move.w #$2500,sr
loc_ff25f2:
	tst.b ($f39f).w
	bne.s loc_ff25f2
	rts
	.incbin 1786, 54

sub_ff2630:
	lea ($ef00).w,a0
	bsr.s sub_ff263c
	bsr.w sub_ff26ac
	rts

sub_ff263c:
	moveq #$f,d7
loc_ff263e:
	move.w (a0),d0
	beq.s loc_ff264c
	movem.l d7/a0,-(a7)
	bsr.s sub_ff2656
	movem.l (a7)+,d7/a0
loc_ff264c:
	lea $40(a0),a0
	dbf d7,loc_ff263e
	rts

sub_ff2656:
	add.w d0,d0
	add.w d0,d0
	movea.l $ff266a(pc,d0.w),a1
	jsr (a1)
	btst.b #$4,$2c(a0)
	beq.s loc_ff266c
	bsr.w sub_ff278c
loc_ff266c:
	rts
	.incbin 1902, 62

sub_ff26ac:
	lea ($e800).w,a1
	clr.l (a1)+
	clr.l (a1)+
	lea ($ef00).w,a0
	lea ($e800).w,a1
	moveq #$0,d5
	moveq #$f,d7
loc_ff26c0:
	tst.w $0(a0)
	beq.w loc_ff2756
	movea.l $28(a0),a2
	bsr.w sub_ff276a
	move.w $24(a0),d0
	add.w d0,d0
	add.w d0,d0
	adda.w $4(a2,d0.w),a2
	move.w (a2)+,d6
	moveq #$d,d3
loc_ff26e0:
	moveq #$0,d4
	move.w $4(a0),d0
	btst.b #$7,$2c(a0)
	beq.s loc_ff26f8
	sub.w $6(a2),d0
	bset.l #$b,d4
	bra.s loc_ff26fc
loc_ff26f8:
	sub.w $4(a2),d0
loc_ff26fc:
	addi.w #$80,d0
	move.w d0,$6(a1)
	move.w $8(a0),d0
	btst.b #$6,$2c(a0)
	beq.s loc_ff271a
	sub.w $a(a2),d0
	bset.l #$c,d4
	bra.s loc_ff271e
loc_ff271a:
	sub.w $8(a2),d0
loc_ff271e:
	addi.w #$80,d0
	move.w d0,$0(a1)
	addq.w #$1,d5
	move.w d5,d0
	or.w $0(a2),d0
	move.w d0,$2(a1)
	move.w $26(a0),d0
	btst.b #$5,$2c(a0)
	beq.s loc_ff2742
	bset.l #$f,d0
loc_ff2742:
	add.w $2(a2),d0
	eor.w d4,d0
	move.w d0,$4(a1)
	addq.l #$8,a1
	adda.w #$c,a2
	dbf d6,loc_ff26e0
loc_ff2756:
	lea $40(a0),a0
	dbf d7,loc_ff26c0
	tst.w d5
	beq.s loc_ff2768
	move.b #$0,-$5(a1)
loc_ff2768:
	rts

sub_ff276a:
	subq.w #$1,$22(a0)
	bhi.s loc_ff278a
	move.w $24(a0),d0
	addq.w #$1,d0
	cmp.w (a2),d0
	bcs.s loc_ff277c
	moveq #$0,d0
loc_ff277c:
	move.w d0,$24(a0)
	add.w d0,d0
	add.w d0,d0
	move.w $2(a2,d0.w),$22(a0)
loc_ff278a:
	rts

sub_ff278c:
	movea.l a0,a1
	moveq #$0,d1
	bra.w loc_ff2500
	.incbin 2196, 18

sub_ff27a6:
	lea ($ef00).w,a0
	moveq #$1,d0
	moveq #$0,d1
	moveq #$4,d7
loc_ff27b0:
	move.w d0,$0(a0)
	move.w #$c0,$4(a0)
	move.w #$70,$8(a0)
	add.w d1,$8(a0)
	move.w #$461,$26(a0)
	move.w d0,d6
	add.w d6,d6
	add.w d6,d6
	lea dat_ff27f4(pc,d6.w),a3
	move.l (a3),$28(a0)
	move.w #$0,$24(a0)
	lea $40(a0),a0
	addq.w #$1,d0
	addi.w #$10,d1
	dbf d7,loc_ff27b0
	move.w #$0,($f382).w
	rts
dat_ff27f4:
	.incbin 2292, 144

sub_ff2884:
	lea ($c00004).l,a5
	moveq #$3,d2
loc_ff288c:
	moveq #$0,d1
	move.b d0,d1
	beq.s loc_ff28a4
	lsl.w #$3,d1
	lea dat_ff28ac(pc),a0
	move.l -$8(a0,d1.w),(a5)
	movea.l -$4(a0,d1.w),a0
	jsr sub_ff28b4(pc)
loc_ff28a4:
	ror.l #$8,d0
	dbf d2,loc_ff288c
	rts
dat_ff28ac:
	dc.b $4c,$20,$00,$02,$00,$ff,$2b,$ca

sub_ff28b4:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff297e).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff28d0
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $29,$94
loc_ff28d0:
	lea ($eb00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff28de
	adda.w #$a,a3
loc_ff28de:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff29aa(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff2906
	nop
	nop
	nop
	nop
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff2906:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff2952
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff292e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff292e:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff293c:
	lsr.w #$4,d0
loc_ff293e:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff294c
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff294c:
	dbf d0,loc_ff293e
	bra.s sub_ff2906
loc_ff2952:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff2960
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff2960:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff293c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff293c
dat_ff297e:
	.incbin 2686, 44

sub_ff29aa:
	move.b (a0)+,d0
loc_ff29ac:
	cmpi.b #$ff,d0
	bne.s loc_ff29b4
	rts
loc_ff29b4:
	move.w d0,d7
loc_ff29b6:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff29ac
	move.b d0,d1
	andi.w #$f,d7
	andi.w #$70,d1
	or.w d1,d7
	andi.w #$f,d0
	move.b d0,d1
	lsl.w #$8,d1
	or.w d1,d7
	moveq #$8,d1
	sub.w d0,d1
	bne.s loc_ff29e4
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff29b6
loc_ff29e4:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff29f0:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff29f0
	bra.s loc_ff29b6

sub_ff29fc:
	move.w #$3f,($f3b8).w
	moveq #$0,d0
	lea ($ed00).w,a0
	move.b ($f3b8).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f3b9).w,d0
loc_ff2a14:
	move.w d1,(a0)+
	dbf d0,loc_ff2a14
	move.w #$15,d4
loc_ff2a1e:
	move.b #$a,($f39f).w
	bsr.w sub_ff25e8
	bsr.s sub_ff2a30
	dbf d4,loc_ff2a1e
	rts

sub_ff2a30:
	moveq #$0,d0
	lea ($ed00).w,a0
	lea ($ed80).w,a1
	move.b ($f3b8).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f3b9).w,d0
loc_ff2a46:
	bsr.s sub_ff2a6c
	dbf d0,loc_ff2a46
	bra.s loc_ff2a6a
	.incbin 2894, 28
loc_ff2a6a:
	rts

sub_ff2a6c:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_ff2a94
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_ff2a82
	move.w d1,(a0)+
	rts
loc_ff2a82:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_ff2a90
	move.w d1,(a0)+
	rts
loc_ff2a90:
	addq.w #$2,(a0)+
	rts
loc_ff2a94:
	addq.w #$2,a0
	rts

sub_ff2a98:
	move.w #$3f,($f3b8).w
	move.w #$15,d4
loc_ff2aa2:
	move.b #$a,($f39f).w
	bsr.w sub_ff25e8
	bsr.s sub_ff2ab4
	dbf d4,loc_ff2aa2
	rts

sub_ff2ab4:
	moveq #$0,d0
	lea ($ed00).w,a0
	move.b ($f3b8).w,d0
	adda.w d0,a0
	move.b ($f3b9).w,d0
loc_ff2ac4:
	bsr.s sub_ff2ae2
	dbf d0,loc_ff2ac4
	moveq #$0,d0
	lea ($ee00).w,a0
	move.b ($f3b8).w,d0
	adda.w d0,a0
	move.b ($f3b9).w,d0
loc_ff2ada:
	bsr.s sub_ff2ae2
	dbf d0,loc_ff2ada
	rts

sub_ff2ae2:
	move.w (a0),d2
	beq.s loc_ff2b0e
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_ff2af2
	subq.w #$2,(a0)+
	rts
loc_ff2af2:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_ff2b00
	subi.w #$20,(a0)+
	rts
loc_ff2b00:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_ff2b0e
	subi.w #$200,(a0)+
	rts
loc_ff2b0e:
	addq.w #$2,a0
	rts
	.incbin 3090, 798
dat_ff2e30:
	.incbin 3888, 9646
dat_ff53de:
	.incbin 13534, 2240
