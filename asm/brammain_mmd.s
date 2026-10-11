; BRAMMAIN.MMD
; disassembled from the disc; code only, data comes from data/BRAMMAIN.MMD at build time
	.file "BRAMMAIN.MMD", 30320
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	dc.b $21,$fc,$00,$ff,$21,$86,$fd,$08
	moveq #$0,d0
	move.l d0,($a12010).l
	move.l d0,($a12014).l
	move.l d0,($a12018).l
	move.l d0,($a1201c).l
	bsr.w sub_ff237e
	bsr.w sub_ff235e
	bsr.w sub_ff238a
	lea ($a000).w,a0
	move.w #$16ff,d7
loc_ff2036:
	move.l #$0,(a0)+
	dbf d7,loc_ff2036
	bsr.w sub_ff20fa
	move.w #$0,($cd02).w
	bsr.w sub_ff3cba
	bsr.w sub_ff5304
	bsr.w sub_ff3f3a
	bsr.w sub_ff6700
	bsr.w sub_ff2702
	bsr.w sub_ff3bf2
	beq.s loc_ff206e
	moveq #$1,d0
	bsr.w sub_ff3bda
	bsr.w sub_ff52ca
loc_ff206e:
	moveq #$0,d0
	bsr.w sub_ff3bda
	bsr.w sub_ff52ca
loc_ff2078:
	bsr.w sub_ff3fbe
	bsr.w sub_ff20e4
	cmpi.l #$8ca0,($cd58).w
	bge.s loc_ff208e
	bra.w loc_ff2078
loc_ff208e:
	move.w #$3f,d1
	lea ($c420).w,a0
	moveq #$0,d0
loc_ff2098:
	move.w d0,(a0)+
	dbf d1,loc_ff2098
	bsr.w sub_ff2702
	bsr.w sub_ff20a8
	rts

sub_ff20a8:
	nop
	nop
	bset.b #$7,($a1200e).l
loc_ff20b4:
	bsr.w sub_ff235e
	btst.b #$7,($a1200f).l
	beq.s loc_ff20b4
	moveq #$0,d0
	move.l d0,($a12010).l
	move.l d0,($a12014).l
	move.l d0,($a12018).l
	move.l d0,($a1201c).l
	move.b d0,($a1200e).l
	rts

sub_ff20e4:
	bsr.w sub_ff6796
	jsr (sub_ff280c).l
	jsr (sub_ff28d0).l
	jmp (sub_ff2702).l

sub_ff20fa:
	move.b #$1,($b280).w
	move.b #$2,($b2c0).w
	move.b #$0,($b2e8).w
	move.b #$2,($b300).w
	move.b #$1,($b328).w
	move.b #$3,($b340).w
	move.b #$6,($b380).w
	moveq #$0,d1
	lea ($b3c0).w,a0
loc_ff212a:
	move.b #$5,$0(a0)
	move.b d1,$1a(a0)
	adda.w #$40,a0
	addq.w #$1,d1
	cmpi.w #$4,d1
	bne.s loc_ff212a
	lea ($b4c0).w,a0
	moveq #$0,d1
loc_ff2146:
	move.b #$4,$0(a0)
	move.b d1,$28(a0)
	adda.w #$40,a0
	addq.w #$1,d1
	cmpi.w #$b,d1
	bne.s loc_ff2146
	move.w #$0,($cd14).w
	move.b #$1,($cd1e).w
	lea (dat_ff3c6c).l,a0
	lea ($cd30).w,a1
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.l (a0),(a1)
	move.b #$30,$1(a1)
	move.b #$30,$2(a1)
	rts
	.incbin 646, 472

sub_ff235e:
	bset.b #$1,($a12003).l
	btst.b #$1,($a12003).l
	beq.s sub_ff235e
	rts

sub_ff2372:
	btst.b #$0,($a12003).l
	beq.s sub_ff2372
	rts

sub_ff237e:
	btst.b #$7,($a1200f).l
	beq.s sub_ff237e
	rts

sub_ff238a:
	btst.b #$7,($a1200f).l
	bne.s sub_ff238a
	rts

sub_ff2396:
	lea dat_ff2508(pc),a0
	move.w #$8000,d0
	moveq #$12,d7
loc_ff23a0:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff23a0
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff251c
	lea ($c00004).l,a6
	move.w #$8f01,(a6)
	move.l #$93ff94ff,(a6)
	move.w #$9780,(a6)
	move.l #$40000080,(a6)
	move.w #$0,($c00000).l
loc_ff23f2:
	btst.b #$1,$1(a6)
	bne.s loc_ff23f2
	move.l #$40000000,(a6)
	move.w #$0,($c00000).l
	move.w #$8f02,(a6)
	move.l #$40000003,($c00004).l
	move.w #$7ff,d7
loc_ff241a:
	move.w #$0,($c00000).l
	dbf d7,loc_ff241a
	move.l #$60000003,($c00004).l
	move.w #$7ff,d7
loc_ff2434:
	move.w #$0,($c00000).l
	dbf d7,loc_ff2434
	move.l #$c0000000,($c00004).l
	lea dat_ff2488(pc),a0
	moveq #$1f,d7
loc_ff2450:
	move.l (a0)+,($c00000).l
	dbf d7,loc_ff2450
	move.l #$40000010,($c00004).l
	moveq #$13,d0
loc_ff2466:
	move.w #$0,($c00000).l
	move.w #$0,($c00000).l
	dbf d0,loc_ff2466
	bsr.w sub_ff2534
	move.w #$8134,($ff0f16).l
	rts
dat_ff2488:
	.incbin 1416, 128
dat_ff2508:
	.incbin 1544, 20

sub_ff251c:
	move.w sr,($cd08).w
	move.w #$100,($a11100).l
loc_ff2528:
	btst.b #$0,($a11100).l
	bne.s loc_ff2528
	rts

sub_ff2534:
	move.w #$0,($a11100).l
	move.w ($cd08).w,sr
	rts
	.incbin 1602, 448

sub_ff2702:
	move.b #$1,($cd00).w
	move.w #$2500,sr
loc_ff270c:
	tst.b ($cd00).w
	bne.s loc_ff270c
	rts
	.incbin 2068, 52
dat_ff2748:
	.incbin 2120, 196

sub_ff280c:
	lea ($b280).w,a0
	moveq #$35,d7
	moveq #$0,d0
loc_ff2814:
	move.b (a0),d0
	beq.s loc_ff282a
	add.w d0,d0
	add.w d0,d0
	lea (dat_ff2748).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_ff282a:
	lea $40(a0),a0
	dbf d7,loc_ff2814
	rts
	.incbin 2356, 140
dat_ff28c0:
	.incbin 2496, 16

sub_ff28d0:
	lea ($b000).w,a2
	moveq #$0,d5
	lea ($c000).w,a4
	moveq #$7,d7
loc_ff28dc:
	tst.w (a4)
	beq.w loc_ff299c
	moveq #$2,d6
loc_ff28e4:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_ff2994
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_ff294a
	movea.l dat_ff28c0(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_ff292e
	cmpi.w #$800,d2
	bcs.s loc_ff2940
	subi.w #$800,d2
	bra.s loc_ff2940
loc_ff292e:
	cmpi.w #$700,$4(a1)
	bcs.s loc_ff2940
	cmpi.w #$100,d2
	bcc.s loc_ff2940
	addi.w #$800,d2
loc_ff2940:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_ff296c
loc_ff294a:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_ff296c
	.incbin 2644, 24
loc_ff296c:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_ff298a
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_ff298e
loc_ff298a:
	bsr.w sub_ff29be
loc_ff298e:
	bset.b #$7,$1(a0)
loc_ff2994:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_ff28e4
loc_ff299c:
	lea $80(a4),a4
	dbf d7,loc_ff28dc
	move.b d5,($cd01).w
	cmpi.b #$50,d5
	beq.s loc_ff29b6
	move.l #$0,(a2)
	rts
loc_ff29b6:
	move.b #$0,-$5(a2)
	rts

sub_ff29be:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_ff2a04
	btst.l #$1,d4
	bne.w loc_ff2a52
loc_ff29d0:
	cmpi.b #$50,d5
	beq.s loc_ff2a02
	move.b (a1)+,d0
	ext.w d0
	add.w d2,d0
	move.w d0,(a2)+
	move.b (a1)+,(a2)+
	addq.b #$1,d5
	move.b d5,(a2)+
	move.b (a1)+,d0
	lsl.w #$8,d0
	move.b (a1)+,d0
	add.w a3,d0
	move.w d0,(a2)+
	move.b (a1)+,d0
	ext.w d0
	add.w d3,d0
	andi.w #$1ff,d0
	bne.s loc_ff29fc
	addq.w #$1,d0
loc_ff29fc:
	move.w d0,(a2)+
	dbf d1,loc_ff29d0
loc_ff2a02:
	rts
loc_ff2a04:
	btst.l #$1,d4
	bne.w loc_ff2a98
loc_ff2a0c:
	cmpi.b #$50,d5
	beq.s loc_ff2a50
	move.b (a1)+,d0
	ext.w d0
	add.w d2,d0
	move.w d0,(a2)+
	move.b (a1)+,d4
	move.b d4,(a2)+
	addq.b #$1,d5
	move.b d5,(a2)+
	move.b (a1)+,d0
	lsl.w #$8,d0
	move.b (a1)+,d0
	add.w a3,d0
	eori.w #$800,d0
	move.w d0,(a2)+
	move.b (a1)+,d0
	ext.w d0
	neg.w d0
	add.b d4,d4
	andi.w #$18,d4
	addq.w #$8,d4
	sub.w d4,d0
	add.w d3,d0
	andi.w #$1ff,d0
	bne.s loc_ff2a4a
	addq.w #$1,d0
loc_ff2a4a:
	move.w d0,(a2)+
	dbf d1,loc_ff2a0c
loc_ff2a50:
	rts
loc_ff2a52:
	cmpi.b #$50,d5
	beq.s loc_ff2a96
	move.b (a1)+,d0
	move.b (a1),d4
	ext.w d0
	neg.w d0
	lsl.b #$3,d4
	andi.w #$18,d4
	addq.w #$8,d4
	sub.w d4,d0
	add.w d2,d0
	move.w d0,(a2)+
	move.b (a1)+,(a2)+
	addq.b #$1,d5
	move.b d5,(a2)+
	move.b (a1)+,d0
	lsl.w #$8,d0
	move.b (a1)+,d0
	add.w a3,d0
	eori.w #$1000,d0
	move.w d0,(a2)+
	move.b (a1)+,d0
	ext.w d0
	add.w d3,d0
	andi.w #$1ff,d0
	bne.s loc_ff2a90
	addq.w #$1,d0
loc_ff2a90:
	move.w d0,(a2)+
	dbf d1,loc_ff2a52
loc_ff2a96:
	rts
loc_ff2a98:
	cmpi.b #$50,d5
	beq.s loc_ff2aea
	move.b (a1)+,d0
	move.b (a1),d4
	ext.w d0
	neg.w d0
	lsl.b #$3,d4
	andi.w #$18,d4
	addq.w #$8,d4
	sub.w d4,d0
	add.w d2,d0
	move.w d0,(a2)+
	move.b (a1)+,d4
	move.b d4,(a2)+
	addq.b #$1,d5
	move.b d5,(a2)+
	move.b (a1)+,d0
	lsl.w #$8,d0
	move.b (a1)+,d0
	add.w a3,d0
	eori.w #$1800,d0
	move.w d0,(a2)+
	move.b (a1)+,d0
	ext.w d0
	neg.w d0
	add.b d4,d4
	andi.w #$18,d4
	addq.w #$8,d4
	sub.w d4,d0
	add.w d3,d0
	andi.w #$1ff,d0
	bne.s loc_ff2ae4
	addq.w #$1,d0
loc_ff2ae4:
	move.w d0,(a2)+
	dbf d1,loc_ff2a98
loc_ff2aea:
	rts
	.incbin 3052, 92

sub_ff2b48:
	moveq #$0,d0
	move.b ($200020).l,d0
	beq.s loc_ff2b92
	subq.w #$1,d0
	cmpi.w #$9,d0
	bcc.s loc_ff2b78
	add.w d0,d0
	lea (dat_ff2b94).l,a0
	move.w $0(a0,d0.w),d0
	moveq #$0,d1
	jsr $0(a0,d0.w)
	bcs.s loc_ff2b78
	move.b #$0,($200021).l
	bra.s loc_ff2b80
loc_ff2b78:
	move.b #$ff,($200021).l
loc_ff2b80:
	move.w d0,($200022).l
	move.w d1,($200024).l
	clr.b ($200020).l
loc_ff2b92:
	rts
dat_ff2b94:
	.incbin 3220, 4166

sub_ff3bda:
	bsr.w sub_ff3bf2
	bne.s loc_ff3be2
	clr.b d0
loc_ff3be2:
	move.b d0,($200026).l
	rts

sub_ff3bea:
	tst.b ($200026).l
	rts

sub_ff3bf2:
	tst.b ($200027).l
	rts
	.incbin 7418, 114
dat_ff3c6c:
	dc.b $53,$4f,$4e,$49,$43,$43,$44,$5f
	dc.b $5f,$5f,$5f,$00

sub_ff3c78:
	movem.l a0-a1,-(a7)
	movea.l #$200030,a1
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.w (a0)+,(a1)+
	move.b (a0)+,(a1)+
	movem.l (a7)+,a0-a1
	rts

sub_ff3c90:
	bsr.w sub_ff3bea
	bne.s loc_ff3cae
	move.b ($ff0f1f).l,($200028).l
	jsr (sub_ff235e).l
	jsr (sub_ff2372).l
	bra.s loc_ff3cb2
loc_ff3cae:
	bsr.w sub_ff2b48
loc_ff3cb2:
	tst.b ($200021).l
	rts

sub_ff3cba:
	jsr (sub_ff2372).l
	bsr.w sub_ff3d44
	bne.w loc_ff3cea
	move.b #$1,($200026).l
	move.b #$1,($200020).l
	bsr.s sub_ff3c90
	tst.b ($200021).l
	beq.s loc_ff3cf4
	tst.w ($200024).l
	bne.s loc_ff3d3e
loc_ff3cea:
	move.b #$0,($200027).l
	bra.s loc_ff3d00
loc_ff3cf4:
	bsr.w sub_ff3e8e
	move.b #$1,($200027).l
loc_ff3d00:
	move.b #$0,($200026).l
	move.b #$1,($200020).l
	bsr.w sub_ff3c90
	tst.b ($200021).l
	bne.s loc_ff3d38
	bsr.w sub_ff3e8e
	tst.b ($200027).l
	beq.s loc_ff3d2e
	move.w #$0,d0
	rts
loc_ff3d2e:
	move.w #$1,d0
	move.w #$0,d1
	rts
loc_ff3d38:
	move.w #$ffff,d0
	rts
loc_ff3d3e:
	move.w #$fffe,d0
	rts

sub_ff3d44:
	btst.b #$7,($400001).l
	beq.s loc_ff3d74
	lea ($400010).l,a0
	lea (dat_ff3e44).l,a1
	moveq #$2,d0
loc_ff3d5c:
	cmpm.l (a0)+,(a1)+
	bne.s loc_ff3d74
	dbf d0,loc_ff3d5c
	movea.l #$fffffdae,a0
	jsr ($400020).l
	bra.w loc_ff3e38
loc_ff3d74:
	btst.b #$7,($400001).l
	bne.w loc_ff3e40
	move.b ($400001).l,d0
	andi.l #$7,d0
	move.l #$2000,d1
	lsl.l d0,d1
	lsl.l #$1,d1
	lea ($5fff80).l,a2
	adda.l d1,a2
	movea.l a2,a0
	adda.w #$60,a0
	lea (dat_ff3e44).l,a1
	movep.l $1(a0),d1
	cmp.l (a1),d1
	bne.w loc_ff3dfe
	movep.l $9(a0),d1
	cmp.l $4(a1),d1
	bne.w loc_ff3dfe
	movep.l $11(a0),d1
	cmp.l $8(a1),d1
	bne.w loc_ff3dfe
	movea.l a2,a0
	adda.w #$40,a0
	lea (dat_ff3e50).l,a1
	movep.l $1(a0),d1
	cmp.l (a1),d1
	bne.w loc_ff3dfe
	movep.l $9(a0),d1
	cmp.l $4(a1),d1
	bne.w loc_ff3dfe
	movep.l $11(a0),d1
	cmp.l $8(a1),d1
	bne.w loc_ff3dfe
	bra.w loc_ff3e38
loc_ff3dfe:
	bset.b #$0,($7fffff).l
	lea ($600001).l,a0
	move.b (a0),d0
	move.b #$5a,(a0)
	cmpi.b #$5a,(a0)
	bne.s loc_ff3e2e
	move.b #$a5,(a0)
	cmpi.b #$a5,(a0)
	bne.s loc_ff3e2e
	move.b d0,(a0)
	bclr.b #$0,($7fffff).l
	bra.s loc_ff3e3c
loc_ff3e2e:
	bclr.b #$0,($7fffff).l
	bra.s loc_ff3e40
loc_ff3e38:
	moveq #$0,d0
	rts
loc_ff3e3c:
	moveq #$0,d0
	rts
loc_ff3e40:
	moveq #$ffffffff,d0
	rts
dat_ff3e44:
	dc.b $52,$41,$4d,$5f,$43,$41,$52,$54
	dc.b $52,$49,$44,$47
dat_ff3e50:
	dc.b $53,$45,$47,$41,$5f,$43,$44,$5f
	dc.b $52,$4f,$4d,$00

sub_ff3e5c:
	move.l d0,-(a7)
	jsr (sub_ff2372).l
	move.l (a7)+,d0
	move.l d0,($200040).l
	lea (dat_ff3e82).l,a0
	bsr.w sub_ff3c78
	move.b #$8,($200020).l
	bra.w sub_ff3c90
dat_ff3e82:
	dc.b $2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a
	dc.b $2a,$2a,$2a,$00

sub_ff3e8e:
	jsr (sub_ff2372).l
	move.b #$2,($200020).l
	bra.w sub_ff3c90

sub_ff3ea0:
	jsr (sub_ff2372).l
	move.b #$3,($200020).l
	bra.w sub_ff3c90
	.incbin 8114, 136

sub_ff3f3a:
	bclr.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	bsr.w sub_ff2396
	move.l #$60000003,($c00004).l
	move.w #$7ff,d7
loc_ff3f5e:
	move.w #$4026,($c00000).l
	dbf d7,loc_ff3f5e
	move.l #$1020304,d0
	jsr (sub_ff6280).l
	move.l #$5060708,d0
	jsr (sub_ff6280).l
	move.w #$0,d0
	jsr (sub_ff64aa).l
	move.w #$1,d0
	jsr (sub_ff64aa).l
	lea ($b000).w,a0
	moveq #$0,d0
	move.l d0,(a0)+
	move.l d0,(a0)+
	jsr (sub_ff6700).l
	bsr.w sub_ff2702
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	rts

sub_ff3fbe:
	moveq #$0,d0
	move.b ($cd15).w,d0
	add.w d0,d0
	move.w dat_ff3fd0(pc,d0.w),d0
	jsr dat_ff3fd0(pc,d0.w)
	rts
dat_ff3fd0:
	.incbin 8400, 3930

sub_ff4f2a:
	lea ($cfa0).w,a1
	bsr.w sub_ff3bea
	beq.s loc_ff4f38
	lea ($dfd0).w,a1
loc_ff4f38:
	rts
	.incbin 12346, 462

sub_ff5108:
	movem.l d0/a1,-(a7)
	lea (dat_ff3c6c).l,a1
	move.l (a1)+,d0
	cmp.l (a0),d0
	bne.s loc_ff512e
	move.l (a1)+,d0
	cmp.l $4(a0),d0
	bne.s loc_ff512e
	move.w (a1)+,d0
	cmp.w $8(a0),d0
	bne.s loc_ff512e
	move.b (a1)+,d0
	cmp.b $a(a0),d0
loc_ff512e:
	movem.l (a7)+,d0/a1
	rts

sub_ff5134:
	movem.l d0/a1,-(a7)
	lea (dat_ff3c6c).l,a1
	move.l (a1)+,d0
	cmp.l (a0),d0
	bne.s loc_ff5152
	move.l (a1)+,d0
	cmp.l $4(a0),d0
	bne.s loc_ff5152
	move.b (a1)+,d0
	cmp.b $8(a0),d0
loc_ff5152:
	movem.l (a7)+,d0/a1
	rts

sub_ff5158:
	movem.l d0-d2,-(a7)
	bsr.s sub_ff5134
	bne.s loc_ff5168
	bsr.w sub_ff519c
	bra.w loc_ff518a
loc_ff5168:
	movem.l d0-d1/a0,-(a7)
	move.w #$4000,d1
	lea dat_ff5190(pc),a0
	bsr.w sub_ff523a
	bsr.w sub_ff5266
	movem.l (a7)+,d0-d1/a0
	addq.b #$1,d0
	bsr.w sub_ff523a
	bsr.w sub_ff5266
loc_ff518a:
	movem.l (a7)+,d0-d2
	rts
dat_ff5190:
	dc.b $20,$20,$20,$20,$20,$20,$20,$20
	dc.b $20,$20,$20,$00

sub_ff519c:
	movem.l d0-d1/a0-a1,-(a7)
	moveq #$1,d1
	lea (dat_ff5231).l,a1
	adda.w #$9,a0
loc_ff51ac:
	move.b (a0)+,d0
	bsr.w sub_ff5290
	move.b d0,(a1)+
	dbf d1,loc_ff51ac
	movem.l (a7)+,d0-d1/a0-a1
	movem.l d0-d1,-(a7)
	lea (dat_ff5222).l,a0
	bsr.w sub_ff523a
	bsr.w sub_ff51e4
	movem.l (a7)+,d0-d1
	addq.b #$1,d0
	lea (dat_ff522e).l,a0
	bsr.w sub_ff523a
	bsr.w sub_ff51e4
	rts

sub_ff51e4:
	movem.l d0-d1/a0-a1,-(a7)
	move.l d0,($c00004).l
	lea ($c00000).l,a1
	move.w #$a,d2
loc_ff51f8:
	moveq #$0,d0
	move.b (a0)+,d0
	cmpi.w #$9,d2
	blt.s loc_ff5208
	addi.w #$6000,d0
	bra.s loc_ff5216
loc_ff5208:
	cmpi.b #$26,d0
	beq.s loc_ff5212
	add.w d1,d0
	bra.s loc_ff5216
loc_ff5212:
	addi.w #$4000,d0
loc_ff5216:
	move.w d0,(a1)
	dbf d2,loc_ff51f8
	movem.l (a7)+,d0-d1/a0-a1
	rts
dat_ff5222:
	dc.b $27,$29,$26,$26,$26,$26,$26,$26
	dc.b $26,$26,$26,$00
dat_ff522e:
	dc.b $28,$2a,$26
dat_ff5231:
	dc.b $26,$26,$26,$26,$26,$26,$26,$26
	dc.b $00

sub_ff523a:
	andi.l #$ff,d0
	cmpi.b #$20,d0
	blt.s loc_ff524a
	subi.b #$20,d0
loc_ff524a:
	mulu.w #$80,d0
	swap d0
	bsr.w sub_ff3bea
	beq.s loc_ff525e
	addi.l #$60040003,d0
	rts
loc_ff525e:
	addi.l #$60360003,d0
	rts

sub_ff5266:
	movem.l d0-d1/a0-a1,-(a7)
	move.l d0,($c00004).l
	lea ($c00000).l,a1
loc_ff5276:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.w loc_ff528a
	bsr.w sub_ff5290
	add.w d1,d0
	move.w d0,(a1)
	bra.w loc_ff5276
loc_ff528a:
	movem.l (a7)+,d0-d1/a0-a1
	rts

sub_ff5290:
	cmpi.b #$41,d0
	blt.s loc_ff52a2
	cmpi.b #$5a,d0
	bgt.s loc_ff52a2
	subi.b #$40,d0
	rts
loc_ff52a2:
	cmpi.b #$30,d0
	blt.s loc_ff52b4
	cmpi.b #$39,d0
	bgt.s loc_ff52b4
	subi.b #$15,d0
	rts
loc_ff52b4:
	cmpi.b #$5f,d0
	bne.s loc_ff52c0
	subi.b #$3a,d0
	rts
loc_ff52c0:
	cmpi.b #$20,d0
	move.b #$26,d0
	rts

sub_ff52ca:
	bsr.w sub_ff3bea
	beq.s loc_ff52d6
	bsr.w sub_ff3bf2
	beq.s loc_ff5302
loc_ff52d6:
	bsr.w sub_ff4f2a
	clr.w $2(a1)
	clr.w $4(a1)
	clr.w $6(a1)
	clr.w $8(a1)
	clr.b $a(a1)
	clr.b $c(a1)
	clr.w $12(a1)
	bsr.w sub_ff5610
	bsr.w sub_ff532c
	bsr.w sub_ff53e4
loc_ff5302:
	rts

sub_ff5304:
	moveq #$0,d0
	bsr.w sub_ff3bda
	lea (dat_ff3c6c).l,a0
	bsr.w sub_ff3c78
	bsr.w sub_ff3ea0
	bne.s loc_ff5322
	clr.b ($ff0f1f).l
	rts
loc_ff5322:
	move.b #$1,($ff0f1f).l
	rts

sub_ff532c:
	bsr.w sub_ff4f2a
	moveq #$0,d0
	move.w $12(a1),d0
	mulu.w #$fe,d0
	move.w $2(a1),d1
	sub.w d0,d1
	cmpi.w #$100,d1
	ble.s loc_ff534a
	move.w #$100,d1
loc_ff534a:
	move.w d1,$8(a1)
	swap d0
	move.w d1,d0
	movem.l a1,-(a7)
	bsr.w sub_ff3e5c
	movem.l (a7)+,a1
	movea.l #$200044,a0
	movea.l a1,a2
	adda.w #$30,a2
	move.w $8(a1),d0
loc_ff536e:
	subq.w #$1,d0
	bmi.s loc_ff537c
	move.l (a0)+,(a2)+
	move.l (a0)+,(a2)+
	move.l (a0)+,(a2)+
	move.l (a0)+,(a2)+
	bra.s loc_ff536e
loc_ff537c:
	move.w #$100,d0
	sub.w $8(a1),d0
	moveq #$0,d1
loc_ff5386:
	subq.w #$1,d0
	bmi.s loc_ff5394
	move.l d1,(a2)+
	move.l d1,(a2)+
	move.l d1,(a2)+
	move.l d1,(a2)+
	bra.s loc_ff5386
loc_ff5394:
	bsr.w sub_ff53a6
	tst.w $10(a1)
	bne.s loc_ff53a4
	move.w #$1,$6(a1)
loc_ff53a4:
	rts

sub_ff53a6:
	bsr.w sub_ff3bea
	bne.w loc_ff53d6
	bsr.w sub_ff4f2a
	tst.w $8(a1)
	beq.s loc_ff53d6
	movea.l a1,a0
	adda.w #$30,a0
	moveq #$0,d0
loc_ff53c0:
	bsr.w sub_ff5108
	beq.s loc_ff53de
	adda.w #$10,a0
	addq.w #$1,d0
	cmp.w $8(a1),d0
	bge.w loc_ff53d6
	bra.s loc_ff53c0
loc_ff53d6:
	move.w #$ffff,$10(a1)
	rts
loc_ff53de:
	move.w d0,$10(a1)
	rts

sub_ff53e4:
	bsr.w sub_ff4f2a
	clr.w $c(a1)
	clr.b $a(a1)
	moveq #$0,d0
	bsr.w sub_ff5650
	movea.l a0,a2
	move.w #$4000,d1
	moveq #$0,d3
	move.w #$4,d0
	move.w $8(a1),d4
	moveq #$0,d5
loc_ff5408:
	cmp.w $10(a1),d5
	bne.s loc_ff5416
	addq.w #$1,d5
	adda.w #$10,a2
	bra.s loc_ff5408
loc_ff5416:
	cmp.w d5,d4
	ble.s loc_ff5424
	move.b #$0,$b(a2)
	movea.l a2,a0
	bra.s loc_ff5428
loc_ff5424:
	lea dat_ff5446(pc),a0
loc_ff5428:
	movem.l d0-d5/a0,-(a7)
	bsr.w sub_ff5158
	movem.l (a7)+,d0-d5/a0
	addq.w #$2,d0
	adda.w #$10,a2
	addq.w #$1,d5
	addq.w #$1,d3
	cmpi.b #$c,d3
	bne.s loc_ff5408
	rts
dat_ff5446:
	.incbin 13638, 458

sub_ff5610:
	bsr.w sub_ff4f2a
	movem.l a1,-(a7)
	bsr.w sub_ff3e8e
	movem.l (a7)+,a1
	move.w ($200022).l,$0(a1)
	move.w ($200024).l,$2(a1)
	moveq #$0,d0
	move.w $2(a1),d0
	divu.w #$100,d0
	move.w d0,$14(a1)
	swap d0
	tst.w d0
	bne.s loc_ff564e
	tst.w $14(a1)
	bne.s loc_ff564e
	subq.w #$1,$14(a1)
loc_ff564e:
	rts

sub_ff5650:
	movem.l d0,-(a7)
	andi.l #$ffff,d0
	mulu.w #$10,d0
	movem.l a1,-(a7)
	bsr.w sub_ff4f2a
	movea.l a1,a0
	adda.w #$30,a0
	movem.l (a7)+,a1
	adda.w d0,a0
	movem.l (a7)+,d0
	rts
	.incbin 14200, 3080

sub_ff6280:
	lea ($c00004).l,a5
	moveq #$3,d2
loc_ff6288:
	moveq #$0,d1
	move.b d0,d1
	beq.s loc_ff62a0
	lsl.w #$3,d1
	lea dat_ff62a8(pc),a0
	move.l -$8(a0,d1.w),(a5)
	movea.l -$4(a0,d1.w),a0
	jsr sub_ff62e8(pc)
loc_ff62a0:
	ror.l #$8,d0
	dbf d2,loc_ff6288
	rts
dat_ff62a8:
	.incbin 17320, 64

sub_ff62e8:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff63b2).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff6304
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $63,$c8
loc_ff6304:
	lea ($a000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff6312
	adda.w #$a,a3
loc_ff6312:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff63de(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff633a
	nop
	nop
	nop
	nop
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff633a:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff6386
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff6362
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff6362:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff6370:
	lsr.w #$4,d0
loc_ff6372:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff6380
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff6380:
	dbf d0,loc_ff6372
	bra.s sub_ff633a
loc_ff6386:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff6394
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff6394:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff6370
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff6370
dat_ff63b2:
	.incbin 17586, 44

sub_ff63de:
	move.b (a0)+,d0
loc_ff63e0:
	cmpi.b #$ff,d0
	bne.s loc_ff63e8
	rts
loc_ff63e8:
	move.w d0,d7
loc_ff63ea:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff63e0
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
	bne.s loc_ff6418
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff63ea
loc_ff6418:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff6424:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff6424
	bra.s loc_ff63ea
	.incbin 17712, 122

sub_ff64aa:
	move.w d0,-(a7)
	andi.l #$ffff,d0
	mulu.w #$e,d0
	lea (dat_ff6504).l,a1
	adda.w d0,a1
	movea.l (a1)+,a0
	move.w (a1)+,d0
	move.l a1,-(a7)
	lea ($a000).w,a1
	bsr.w sub_ff6582
	movea.l (a7)+,a1
	move.w (a7)+,d0
	cmpi.w #$1,d0
	bne.s loc_ff64da
	bsr.w sub_ff6520
loc_ff64da:
	move.w (a1)+,d3
	move.w (a1)+,d2
	move.l (a1),d0
	lea ($a000).w,a0
	movea.l #$c00000,a1
loc_ff64ea:
	move.l d0,($c00004).l
	move.w d3,d1
loc_ff64f2:
	move.w (a0)+,(a1)
	dbf d1,loc_ff64f2
	addi.l #$800000,d0
	dbf d2,loc_ff64ea
	rts
dat_ff6504:
	.incbin 17924, 28

sub_ff6520:
	movem.l d0-d3/a0-a2,-(a7)
	lea (dat_ff656c).l,a2
	move.w (a2)+,d3
loc_ff652c:
	lea ($a000).w,a0
	clr.l d0
	move.b (a2)+,d0
	add.w d0,d0
	adda.w d0,a0
	clr.l d0
	move.b (a2)+,d0
	mulu.w #$50,d0
	adda.w d0,a0
	clr.l d1
	clr.l d2
	move.b (a2)+,d1
	move.b (a2)+,d2
loc_ff654a:
	movea.l a0,a1
	move.w d1,d0
loc_ff654e:
	andi.w #$9fff,(a1)
	adda.w #$2,a1
	dbf d0,loc_ff654e
	adda.w #$50,a0
	dbf d2,loc_ff654a
	dbf d3,loc_ff652c
	movem.l (a7)+,d0-d3/a0-a2
	rts
dat_ff656c:
	.incbin 18028, 22

sub_ff6582:
	movem.l d0-d7/a1-a5,-(a7)
	movea.w d0,a3
	move.b (a0)+,d0
	ext.w d0
	movea.w d0,a5
	move.b (a0)+,d4
	lsl.b #$3,d4
	movea.w (a0)+,a2
	adda.w a3,a2
	movea.w (a0)+,a4
	adda.w a3,a4
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	moveq #$10,d6
	moveq #$7,d0
	move.w d6,d7
	sub.w d0,d7
	move.w d5,d1
	lsr.w d7,d1
	andi.w #$7f,d1
	move.w d1,d2
	cmpi.w #$40,d1
	bcc.s loc_ff65bc
	moveq #$6,d0
	lsr.w #$1,d2
loc_ff65bc:
	bsr.w sub_ff66f0
	andi.w #$f,d2
	lsr.w #$4,d1
	add.w d1,d1
	jmp dat_ff6618(pc,d1.w)
	.incbin 18124, 76
dat_ff6618:
	.incbin 18200, 216

sub_ff66f0:
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff66fe
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff66fe:
	rts

sub_ff6700:
	lea (dat_ff6716).l,a0
	lea ($c420).w,a1
	move.w #$1f,d0
loc_ff670e:
	move.l (a0)+,(a1)+
	dbf d0,loc_ff670e
	rts
dat_ff6716:
	.incbin 18454, 128

sub_ff6796:
	addq.b #$1,($cd28).w
	lea ($c420).w,a0
	lea ($cd20).w,a1
	lea (dat_ff67fe).l,a2
	moveq #$7,d5
loc_ff67aa:
	tst.b (a1)
	beq.s loc_ff67da
	cmpi.b #$ff,(a1)
	bne.s loc_ff67be
	btst.b #$2,($cd28).w
	beq.s loc_ff67d4
	bra.s loc_ff67ce
loc_ff67be:
	cmpi.b #$1,(a1)
	beq.s loc_ff67ce
	subq.b #$1,(a1)
	btst.b #$2,($cd28).w
	beq.s loc_ff67d4
loc_ff67ce:
	move.w #$4,d0
	bra.s loc_ff67de
loc_ff67d4:
	move.w #$6,d0
	bra.s loc_ff67de
loc_ff67da:
	move.w #$2,d0
loc_ff67de:
	moveq #$2,d4
loc_ff67e0:
	move.w $0(a2,d0.w),d3
	move.w $0(a2),d2
	move.w d3,$0(a0,d2.w)
	adda.w #$8,a2
	dbf d4,loc_ff67e0
	adda.w #$1,a1
	dbf d5,loc_ff67aa
	rts
dat_ff67fe:
	.incbin 18686, 11634
