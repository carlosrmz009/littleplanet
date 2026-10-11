; R62C__.MMD
; disassembled from the disc; code only, data comes from data/R62C__.MMD at build time
	.file "R62C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$96
	jmp (loc_201c0c).l
	dc.b $4e,$71,$4e,$71,$60,$fa
loc_20011e:
	btst.b #$6,($a1000d).l
	beq.s loc_200136
	cmpi.l #$696e6974,($ff158a).l
	beq.w loc_200166
loc_200136:
	lea ($ff1000).l,a6
	moveq #$0,d7
	move.w #$ff,d6
	move.w #$7f,d6
loc_200146:
	move.l d7,(a6)+
	dbf d6,loc_200146
	move.b ($a10001).l,d0
	andi.b #$c0,d0
	move.b d0,($ff1586).l
	move.l #$696e6974,($ff158a).l
loc_200166:
	bsr.w sub_202142
	bsr.w sub_2020ea
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201486

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200212).l,a1
	lea (dat_20021a).l,a2
	bsr.w sub_2001d4
	lea (dat_200220).l,a1
	lea (dat_200228).l,a2
	bsr.w sub_2001d4
	lea (dat_20022e).l,a1
	lea (dat_200236).l,a2
	bsr.s sub_2001d4
	lea (dat_20023c).l,a1
	lea (dat_20024a).l,a2
	btst.b #$5,($f7a7).w
	beq.s sub_2001d4
	lea (dat_200252).l,a2

sub_2001d4:
	subq.b #$1,(a5)
	bpl.s loc_200208
	moveq #$0,d0
	move.b (a1)+,d0
	move.b (a1)+,d1
	add.w d0,d0
	lea ($fb00).w,a3
	lea $0(a3,d0.w),a3
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b d1,d0
	bcs.s loc_2001f4
	moveq #$0,d0
loc_2001f4:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_200208:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200212:
	dc.b $21,$03,$01,$00,$01,$01,$01,$02
dat_20021a:
	dc.b $00,$ee,$00,$c0,$00,$40
dat_200220:
	dc.b $22,$03,$01,$00,$01,$01,$01,$02
dat_200228:
	dc.b $00,$c0,$00,$40,$00,$ee
dat_20022e:
	dc.b $23,$03,$01,$00,$01,$01,$01,$02
dat_200236:
	dc.b $00,$40,$00,$ee,$00,$c0
dat_20023c:
	dc.b $31,$06,$01,$01,$01,$00,$01,$02
	dc.b $01,$00,$01,$03,$01,$00
dat_20024a:
	dc.b $00,$00,$0e,$04,$00,$ee,$0e,$ee
dat_200252:
	dc.b $00,$00,$00,$00,$00,$00,$00,$00

sub_20025a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20026c:
	move.w d1,(a0)+
	dbf d0,loc_20026c
	move.w #$15,d4
loc_200276:
	move.b #$12,($f62a).w
	bsr.w sub_2007ca
	bsr.s sub_20028c
	bsr.w sub_202508
	dbf d4,loc_200276
	rts

sub_20028c:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002a2:
	bsr.s sub_2002d0
	dbf d0,loc_2002a2
	cmpi.b #$1,($ff1506).l
	bne.s loc_2002ce
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002c8:
	bsr.s sub_2002d0
	dbf d0,loc_2002c8
loc_2002ce:
	rts

sub_2002d0:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2002f8
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002e6
	move.w d1,(a0)+
	rts
loc_2002e6:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2002f4
	move.w d1,(a0)+
	rts
loc_2002f4:
	addq.w #$2,(a0)+
	rts
loc_2002f8:
	addq.w #$2,a0
	rts

sub_2002fc:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200306:
	move.b #$12,($f62a).w
	bsr.w sub_2007ca
	bsr.s sub_20031c
	bsr.w sub_202508
	dbf d4,loc_200306
	rts

sub_20031c:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20032c:
	bsr.s sub_20034a
	dbf d0,loc_20032c
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200342:
	bsr.s sub_20034a
	dbf d0,loc_200342
	rts

sub_20034a:
	move.w (a0),d2
	beq.s loc_200376
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_20035a
	subq.w #$2,(a0)+
	rts
loc_20035a:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200368
	subi.w #$20,(a0)+
	rts
loc_200368:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200376
	subi.w #$200,(a0)+
	rts
loc_200376:
	addq.w #$2,a0
	rts

sub_20037a:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200394:
	move.w d1,(a0)+
	dbf d0,loc_200394
	move.w #$15,d4
loc_20039e:
	move.b #$12,($f62a).w
	bsr.w sub_2007ca
	bsr.s sub_2003b4
	bsr.w sub_202508
	dbf d4,loc_20039e
	rts

sub_2003b4:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003ca:
	bsr.s sub_2003f8
	dbf d0,loc_2003ca
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003f6
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003f0:
	bsr.s sub_2003f8
	dbf d0,loc_2003f0
loc_2003f6:
	rts

sub_2003f8:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200424
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200410
	cmp.w d2,d1
	bcs.s loc_200410
	move.w d1,(a0)+
	rts
loc_200410:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200420
	cmp.w d2,d1
	bcs.s loc_200420
	move.w d1,(a0)+
	rts
loc_200420:
	subq.w #$2,(a0)+
	rts
loc_200424:
	addq.w #$2,a0
	rts

sub_200428:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200432:
	move.b #$12,($f62a).w
	bsr.w sub_2007ca
	bsr.s sub_200448
	bsr.w sub_202508
	dbf d4,loc_200432
	rts

sub_200448:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200458:
	bsr.s sub_200476
	dbf d0,loc_200458
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20046e:
	bsr.s sub_200476
	dbf d0,loc_20046e
	rts

sub_200476:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2004b2
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_20048e
	addq.w #$2,(a0)+
	rts
loc_20048e:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2004a0
	addi.w #$20,(a0)+
	rts
loc_2004a0:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2004b2
	addi.w #$200,(a0)+
	rts
loc_2004b2:
	addq.w #$2,a0
	rts
	.incbin 1206, 310

sub_2005ec:
	lea (dat_200658).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200600:
	move.l (a2)+,(a3)+
	dbf d7,loc_200600
	rts

sub_200608:
	lea (dat_200658).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200618:
	move.l (a2)+,(a3)+
	dbf d7,loc_200618
	rts
	dc.b $43,$f9,$00,$20,$06,$58
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$80,a3
	move.w (a1)+,d7
loc_200634:
	move.l (a2)+,(a3)+
	dbf d7,loc_200634
	rts
	.incbin 1596, 28
dat_200658:
	.incbin 1624, 370

sub_2007ca:
	move.w #$2300,sr
loc_2007ce:
	tst.b ($f62a).w
	bne.s loc_2007ce
	rts

sub_2007d6:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_2007ee(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_2007ee(pc,d0.w),d0
	rts
dat_2007ee:
	.incbin 2030, 640

sub_200a6e:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200aca
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a88
	neg.w d3
loc_200a88:
	tst.w d4
	bpl.w loc_200a90
	neg.w d4
loc_200a90:
	cmp.w d3,d4
	bcc.w loc_200aa2
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200ad4(pc,d4.w),d0
	bra.s loc_200aac
loc_200aa2:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200ad4(pc,d3.w),d0
loc_200aac:
	tst.w d1
	bpl.w loc_200ab8
	neg.w d0
	addi.w #$80,d0
loc_200ab8:
	tst.w d2
	bpl.w loc_200ac4
	neg.w d0
	addi.w #$100,d0
loc_200ac4:
	movem.l (a7)+,d3-d4
	rts
loc_200aca:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200ad4:
	.incbin 2772, 258

sub_200bd6:
	btst.b #$3,$22(a0)
	beq.s loc_200bea
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200bea:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c0c
	move.b $26(a0),d0
	bpl.s loc_200c06
	subq.b #$1,d0
loc_200c06:
	addi.b #$20,d0
	bra.s loc_200c18
loc_200c0c:
	move.b $26(a0),d0
	bpl.s loc_200c14
	addq.b #$1,d0
loc_200c14:
	addi.b #$1f,d0
loc_200c18:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200ea2
	cmpi.b #$80,d0
	beq.w loc_200e00
	cmpi.b #$c0,d0
	beq.w loc_200d64
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	bsr.w sub_20112c
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	neg.w d0
	add.w d0,d3
	lea ($f76a).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	bsr.w sub_20112c
	move.w (a7)+,d0
	bsr.w sub_200d38
	tst.w d1
	beq.s loc_200ca6
	bpl.s loc_200ca8
	cmpi.w #$fff2,d1
	blt.s loc_200cce
	add.w d1,$c(a0)
loc_200ca6:
	rts
loc_200ca8:
	cmpi.w #$e,d1
	bgt.s loc_200cb4
loc_200cae:
	add.w d1,$c(a0)
	rts
loc_200cb4:
	tst.b $38(a0)
	bne.s loc_200cae
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200cce:
	rts
	.incbin 3280, 34
loc_200cf2:
	rts
	.incbin 3316, 68

sub_200d38:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d46
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d46:
	btst.l #$0,d2
	bne.s loc_200d52
	move.b d2,$26(a0)
	rts
loc_200d52:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d64:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	neg.w d0
	add.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	bsr.w sub_20129c
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f76a).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	bsr.w sub_20129c
	move.w (a7)+,d0
	bsr.w sub_200d38
	tst.w d1
	beq.s loc_200dd8
	bpl.s loc_200dda
	cmpi.w #$fff2,d1
	blt.w loc_200cf2
	add.w d1,$8(a0)
loc_200dd8:
	rts
loc_200dda:
	cmpi.w #$e,d1
	bgt.s loc_200de6
loc_200de0:
	add.w d1,$8(a0)
	rts
loc_200de6:
	tst.b $38(a0)
	bne.s loc_200de0
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e00:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$d,d5
	bsr.w sub_20112c
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	lea ($f76a).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$d,d5
	bsr.w sub_20112c
	move.w (a7)+,d0
	bsr.w sub_200d38
	tst.w d1
	beq.s loc_200e7a
	bpl.s loc_200e7c
	cmpi.w #$fff2,d1
	blt.w loc_200cce
	sub.w d1,$c(a0)
loc_200e7a:
	rts
loc_200e7c:
	cmpi.w #$e,d1
	bgt.s loc_200e88
loc_200e82:
	sub.w d1,$c(a0)
	rts
loc_200e88:
	tst.b $38(a0)
	bne.s loc_200e82
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200ea2:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$d,d5
	bsr.w sub_20129c
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d3
	eori.w #$f,d3
	lea ($f76a).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$d,d5
	bsr.w sub_20129c
	move.w (a7)+,d0
	bsr.w sub_200d38
	tst.w d1
	beq.s loc_200f1c
	bpl.s loc_200f1e
	cmpi.w #$fff2,d1
	blt.w loc_200cf2
	sub.w d1,$8(a0)
loc_200f1c:
	rts
loc_200f1e:
	cmpi.w #$e,d1
	bgt.s loc_200f2a
loc_200f24:
	sub.w d1,$8(a0)
	rts
loc_200f2a:
	tst.b $38(a0)
	bne.s loc_200f24
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f44:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f5a
	andi.w #$380,d0
loc_200f5a:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200fba
	bmi.s loc_200fbe
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f8a
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f90
loc_200f8a:
	andi.w #$7fff,$2(a0)
loc_200f90:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fa0
	bclr.b #$6,$1(a0)
loc_200fa0:
	subq.b #$1,d1
	ext.w d1
	ror.w #$7,d1
	move.w d2,d0
	add.w d0,d0
	andi.w #$1e0,d0
	add.w d0,d1
	move.w d3,d0
	lsr.w #$3,d0
	andi.w #$1e,d0
	add.w d0,d1
loc_200fba:
	movea.l d1,a1
	rts
loc_200fbe:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_201026
	btst.b #$6,$1(a0)
	bne.s loc_200fec
	cmpi.b #$14,d1
	bne.w loc_201110
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201110
loc_200fec:
	cmpi.b #$15,d1
	bne.s loc_200ffa
	move.w #$60,d1
	bra.w loc_201110
loc_200ffa:
	cmpi.b #$1e,d1
	bne.s loc_201008
	move.w #$61,d1
	bra.w loc_201110
loc_201008:
	cmpi.b #$1f,d1
	bne.s loc_201016
	move.w #$62,d1
	bra.w loc_201110
loc_201016:
	cmpi.b #$32,d1
	bne.w loc_201110
	move.w #$63,d1
	bra.w loc_201110
loc_201026:
	cmpi.b #$5,($ff1506).l
	bne.w loc_20108c
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201076
	cmpi.b #$6,d1
	beq.s loc_201076
	tst.b ($ff1956).l
	beq.w loc_201110
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201086
	cmpi.b #$3c,d1
	beq.s loc_201086
	cmpi.b #$37,d1
	beq.s loc_201086
	cmpi.b #$2f,d1
	beq.s loc_201086
	cmpi.b #$16,d1
	beq.s loc_201086
	bra.w loc_201110
loc_201076:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201110
loc_201086:
	addq.b #$1,d1
	bra.w loc_201110
loc_20108c:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010fc
	cmpi.b #$3,$0(a0)
	bcc.w loc_201110
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201110
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2010c0
	move.w #$6a,d1
	bra.s loc_201110
loc_2010c0:
	cmpi.b #$48,d1
	bne.s loc_2010cc
	move.w #$6b,d1
	bra.s loc_201110
loc_2010cc:
	cmpi.b #$4a,d1
	bne.s loc_2010d8
	move.w #$6c,d1
	bra.s loc_201110
loc_2010d8:
	cmpi.b #$10,d1
	bne.s loc_2010e4
	move.w #$6d,d1
	bra.s loc_201110
loc_2010e4:
	cmpi.b #$63,d1
	bne.s loc_2010f0
	move.w #$6e,d1
	bra.s loc_201110
loc_2010f0:
	cmpi.b #$43,d1
	bne.s loc_201110
	move.w #$6f,d1
	bra.s loc_201110
loc_2010fc:
	btst.b #$6,$1(a0)
	beq.s loc_201110
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201110
	move.w #$51,d1
loc_201110:
	subq.b #$1,d1
	ror.w #$7,d1
	move.w d2,d0
	add.w d0,d0
	andi.w #$1e0,d0
	add.w d0,d1
	move.w d3,d0
	lsr.w #$3,d0
	andi.w #$1e,d0
	add.w d0,d1
	movea.l d1,a1
	rts

sub_20112c:
	bsr.w sub_200f44
	cmpi.l #$210000,d1
	beq.s loc_201146
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201146
	btst.l d5,d4
	bne.s loc_201154
loc_201146:
	add.w a3,d2
	bsr.w sub_2011ec
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201154:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201146
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20117a
	not.w d1
	neg.b (a4)
loc_20117a:
	btst.l #$c,d4
	beq.s loc_20118a
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20118a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011a6
	neg.w d0
loc_2011a6:
	tst.w d0
	beq.s loc_201146
	bmi.s loc_2011c2
	cmpi.b #$10,d0
	beq.s loc_2011de
loc_2011b2:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011c2:
	cmpa.w #$10,a3
	bne.s loc_2011d2
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011b2
loc_2011d2:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201146
loc_2011de:
	sub.w a3,d2
	bsr.w sub_2011ec
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_2011ec:
	bsr.w sub_200f44
	cmpi.l #$210000,d1
	beq.s loc_201206
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201206
	btst.l d5,d4
	bne.s loc_201214
loc_201206:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201214:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201206
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20123a
	not.w d1
	neg.b (a4)
loc_20123a:
	btst.l #$c,d4
	beq.s loc_20124a
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20124a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201266
	neg.w d0
loc_201266:
	tst.w d0
	beq.s loc_201206
	bmi.s loc_20127c
loc_20126c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20127c:
	cmpa.w #$10,a3
	bne.s loc_20128c
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20126c
loc_20128c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201206
	not.w d1
	rts

sub_20129c:
	bsr.w sub_200f44
	cmpi.l #$210000,d1
	beq.s loc_2012b6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012b6
	btst.l d5,d4
	bne.s loc_2012c4
loc_2012b6:
	add.w a3,d3
	bsr.w sub_20134c
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2012c4:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012b6
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012f2
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012f2:
	btst.l #$b,d4
	beq.s loc_2012fa
	neg.b (a4)
loc_2012fa:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201316
	neg.w d0
loc_201316:
	tst.w d0
	beq.s loc_2012b6
	bmi.s loc_201332
	cmpi.b #$10,d0
	beq.s loc_20133e
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201332:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012b6
loc_20133e:
	sub.w a3,d3
	bsr.w sub_20134c
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_20134c:
	bsr.w sub_200f44
	cmpi.l #$210000,d1
	beq.s loc_201366
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201366
	btst.l d5,d4
	bne.s loc_201374
loc_201366:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201374:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201366
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2013a2
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2013a2:
	btst.l #$b,d4
	beq.s loc_2013aa
	neg.b (a4)
loc_2013aa:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2013c6
	neg.w d0
loc_2013c6:
	tst.w d0
	beq.s loc_201366
	bmi.s loc_2013dc
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013dc:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201366
	not.w d1
	rts

sub_2013ec:
	rts
	.incbin 5102, 152
loc_201486:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2014a6
	tst.b ($ff0f01).l
	bne.s loc_2014a6
	move.b #$1,($ff156a).l
loc_2014a6:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_20150c
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207666
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_20150c
	move.b #$1,($ff1508).l
loc_20150c:
	bset.b #$7,($f600).w
	bsr.w sub_2024fa
	tst.b ($ff156e).l
	bne.s loc_201532
	btst.b #$7,($ff152e).l
	beq.s loc_201568
	bset.b #$0,($ff151d).l
	beq.s loc_20153e
loc_201532:
	bsr.w sub_200428
	bclr.b #$0,($ff151d).l
loc_20153e:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2015d8
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_201566
	bclr.b #$7,($ff152e).l
loc_201566:
	rts
loc_201568:
	bset.b #$0,($ff151d).l
	beq.s loc_201576
	bsr.w sub_2002fc
loc_201576:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201592
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015ba
loc_201592:
	tst.b ($ff1508).l
	bne.s loc_2015d8
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015ba:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015c2:
	move.l #$0,(a1)+
	dbf d6,loc_2015c2
	move.b #$c,($f62a).w
	bsr.w sub_2007ca
	rts
loc_2015d8:
	cmpi.w #$800,($f78e).w
	bne.s loc_2015f6
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_2015f6:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_20160c
	btst.b #$7,($ff152e).l
	beq.s loc_201612
loc_20160c:
	move.l #$eee0eee,d0
loc_201612:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20161a:
	move.l d0,(a1)+
	dbf d6,loc_20161a
loc_201620:
	move.b #$c,($f62a).w
	bsr.w sub_2007ca
	bsr.w sub_202508
	bne.s loc_201620
	tst.l ($f680).w
	bsr.w sub_201ac6
	moveq #$0,d0
	lea (dat_20fe72).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20164a
	bsr.w sub_20260e
loc_20164a:
	moveq #$1,d0
	bsr.w sub_20260e
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201666:
	move.l d0,(a1)+
	dbf d1,loc_201666
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201678:
	move.l d0,(a1)+
	dbf d1,loc_201678
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201688:
	move.l d0,(a1)+
	dbf d1,loc_201688
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_20169a:
	move.l d0,(a1)+
	dbf d1,loc_20169a
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2016aa:
	move.l d0,(a1)+
	dbf d1,loc_2016aa
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2016ba:
	move.l d0,(a1)+
	dbf d1,loc_2016ba
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_2021e4
	lea ($c00004).l,a6
	move.w #$8b03,(a6)
	move.w #$8230,(a6)
	move.w #$8407,(a6)
	move.w #$857c,(a6)
	move.w #$9001,(a6)
	move.w #$8004,(a6)
	move.w #$8720,(a6)
	move.w #$8adf,($f624).w
	move.w ($f624).w,(a6)
	move.w #$1e,($ff150a).l
	move.w #$2300,sr
	moveq #$3,d0
	bsr.w sub_200608
	moveq #$3,d0
	bsr.w sub_2005ec
	bsr.w sub_20285e
	bsr.w sub_20296c
	bset.b #$2,($f754).w
	bsr.w sub_20336e
	bsr.w sub_203274
	jsr (sub_2013ec).l
	bsr.w sub_201a00
loc_20173a:
	move.b #$c,($f62a).w
	bsr.w sub_2007ca
	bsr.w sub_202508
	bne.s loc_20173a
	tst.l ($f680).w
	bne.s loc_20173a
	bsr.w sub_20198c
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b26
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_20179e
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_20179e:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_2017e0
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_2017e0:
	move.b d0,($ff150c).l
	move.b d0,($ff151e).l
	move.b d0,($ff151f).l
	move.b d0,($ff1520).l
	move.b d0,($ff1521).l
	move.w d0,($ff1906).l
	move.w d0,($ff1502).l
	move.w d0,($ff1504).l
	move.b d0,($ff1522).l
	move.b #$1,($ff1511).l
	move.b #$1,($ff150f).l
	move.b #$1,($ff1510).l
	move.b #$1,($ff150e).l
	move.b #$80,($ff150f).l
	move.b #$80,($ff1511).l
	move.w #$0,($f790).w
	move.w #$202f,($f626).w
	jsr (sub_20fd40).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201870
loc_20186a:
	bsr.w sub_20037a
	bra.s loc_20187e
loc_201870:
	bclr.b #$0,($ff0f22).l
	bne.s loc_20186a
	bsr.w sub_20025a
loc_20187e:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_20188c:
	move.b #$8,($f62a).w
	bsr.w sub_2007ca
	tst.b ($f7cc).w
	bne.s loc_2018aa
	btst.b #$7,($f605).w
	beq.s loc_2018aa
	eori.b #$1,($f63a).w
loc_2018aa:
	btst.b #$0,($f63a).w
	beq.w loc_20191c
	bsr.w sub_201b8a
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2018fa
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_20188c
	subq.b #$1,($ff1508).l
	bpl.s loc_2018dc
	clr.b ($ff1508).l
loc_2018dc:
	move.w #$e,d0
	jsr (sub_205d9e).l
	bsr.w sub_207666
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201908
loc_2018fa:
	andi.b #$70,d0
	beq.w loc_20188c
	clr.b ($ff1508).l
loc_201908:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201486
loc_20191c:
	bsr.w sub_201bd0
	addq.w #$1,($ff1504).l
	jsr (sub_20767c).l
	jsr (sub_203774).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201486
	tst.w ($ff1502).l
	bne.w loc_201486
	tst.w ($ff1906).l
	bne.s loc_201964
	cmpi.b #$6,($d024).w
	bcs.s loc_201964
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201968
loc_201964:
	bsr.w sub_20296c
loc_201968:
	jsr (sub_20391e).l
	tst.w ($ff190e).l
	bne.s loc_20197a
	bsr.w sub_200184
loc_20197a:
	jsr (sub_20c64a).l
	bsr.w sub_202508
	bsr.w sub_201a32
	bra.w loc_20188c

sub_20198c:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2019a4
	move.w #$78,$30(a1)
loc_2019a4:
	rts
	.incbin 6566, 90

sub_201a00:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a12(pc,d0.w),($f796).w
	rts
dat_201a12:
	.incbin 6674, 32

sub_201a32:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a50
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a50:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a6e
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a6e:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a96
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a96
	move.b #$0,($ff1915).l
loc_201a96:
	tst.b ($ff1916).l
	beq.s loc_201ac4
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201ac4:
	rts

sub_201ac6:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201ae8
	cmpi.b #$2,d0
	bne.s loc_201ae8
	add.b ($ff156a).l,d0
loc_201ae8:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b00(pc,d1.w),d0
	jmp (sub_205d9e).l
dat_201b00:
	.incbin 6912, 38

sub_201b26:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_232f3c).l,a1
	lea $0(a1,d2.w),a3
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	rts

sub_201b8a:
	move.w #$ab,d0
	jsr (sub_2022d2).l
	bset.b #$7,($f63a).w
	bne.s loc_201bce
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201bb4
loc_201baa:
	move.w #$d5,d0
	jmp (sub_205d9e).l
loc_201bb4:
	tst.b ($ff151f).l
	bne.s loc_201baa
	tst.b ($ff1520).l
	bne.s loc_201baa
	move.w #$90,d0
	jmp (sub_205d9e).l
loc_201bce:
	rts

sub_201bd0:
	bclr.b #$7,($f63a).w
	beq.s loc_201c0a
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201bf0
loc_201be6:
	move.w #$d6,d0
	jmp (sub_205d9e).l
loc_201bf0:
	tst.b ($ff151f).l
	bne.s loc_201be6
	tst.b ($ff1520).l
	bne.s loc_201be6
	move.w #$91,d0
	jmp (sub_205d9e).l
loc_201c0a:
	rts
loc_201c0c:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c98
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c48
	move.w #$700,d0
loc_201c44:
	dbf d0,loc_201c44
loc_201c48:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c7e(pc,d0.w),d0
	jsr dat_201c7e(pc,d0.w)
loc_201c5e:
	jsr (sub_2022f6).l
	tst.b ($f63a).w
	bne.s loc_201c72
	bsr.w sub_2020aa
	bsr.w sub_202098
loc_201c72:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c7e:
	.incbin 7294, 26
loc_201c98:
	tst.b ($ff1957).l
	beq.w loc_201c5e
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c5e
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201cc6
	move.w #$700,d0
loc_201cc2:
	dbf d0,loc_201cc2
loc_201cc6:
	move.w #$1,($f6fc).w
	jsr (sub_20226a).l
	tst.b ($f64e).w
	bne.s loc_201cfe
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d22
loc_201cfe:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d22:
	move.w ($f624).w,(a5)
	jsr (sub_202286).l
	bra.w loc_201c5e
	.incbin 7472, 60
	jsr (sub_20226a).l
	bsr.w sub_202106
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$94019340,(a5)
	move.l #$96fc9500,(a5)
	move.w #$977f,(a5)
	move.w #$7800,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	lea ($d000).w,a0
	bsr.w sub_205cca
	tst.b ($f767).w
	beq.s loc_201e1a
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e1a:
	jsr (sub_20fd40).l
	jsr (sub_202286).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e6a
	bsr.w sub_20257a
	jmp (loc_20ae7a).l
	dc.b $4e,$75
	jsr (sub_20226a).l
	bsr.w sub_202106
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$94019340,(a5)
	move.l #$96fc9500,(a5)
	move.w #$977f,(a5)
	move.w #$7800,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jsr (sub_202286).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e6a
	bra.w loc_20255e
	.incbin 7922, 16
	bsr.w sub_201fee
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f24
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f24:
	move.w ($f624).w,(a5)
	bra.w loc_20255e
	.incbin 7980, 194

sub_201fee:
	jsr (sub_20226a).l
	bsr.w sub_202106
	tst.b ($f64e).w
	bne.s loc_202024
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202048
loc_202024:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202048:
	lea ($c00004).l,a5
	move.l #$94019340,(a5)
	move.l #$96fc9500,(a5)
	move.w #$977f,(a5)
	move.w #$7800,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jmp (sub_202286).l
	dc.b $4e,$73

sub_202098:
	tst.b ($d02a).w
	bne.s loc_2020a8
	tst.w ($f786).w
	beq.s loc_2020a8
	addq.w #$1,($f786).w
loc_2020a8:
	rts

sub_2020aa:
	tst.w ($f780).w
	beq.s loc_2020b4
	addq.w #$1,($f780).w
loc_2020b4:
	tst.w ($f782).w
	beq.s loc_2020be
	addq.w #$1,($f782).w
loc_2020be:
	rts
	.incbin 8384, 42

sub_2020ea:
	bsr.w sub_20226a
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202286

sub_202106:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202114
	addq.w #$2,a1

sub_202114:
	move.b #$0,(a1)
	nop
	nop
	move.b (a1),d0
	lsl.b #$2,d0
	andi.b #$c0,d0
	move.b #$40,(a1)
	nop
	nop
	move.b (a1),d1
	andi.b #$3f,d1
	or.b d1,d0
	not.b d0
	move.b (a0),d1
	eor.b d0,d1
	move.b d0,(a0)+
	and.b d0,d1
	move.b d1,(a0)+
	rts

sub_202142:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2021be).l,a2
	moveq #$12,d7
loc_202156:
	move.w (a2)+,(a0)
	dbf d7,loc_202156
	move.w (dat_2021c0).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_20217c:
	move.w d0,(a1)
	dbf d7,loc_20217c
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2021ae:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021ae
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2021be:
	dc.b $80,$04
dat_2021c0:
	.incbin 8640, 36

sub_2021e4:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202206:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202206
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_202234:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202234
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202252:
	move.l d0,(a1)+
	dbf d1,loc_202252
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202262:
	move.l d0,(a1)+
	dbf d1,loc_202262
	rts

sub_20226a:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_20227a:
	btst.b #$0,($a11100).l
	bne.s loc_20227a
	rts

sub_202286:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8852, 62

sub_2022d2:
	tst.b ($f00a).w
	bne.s loc_2022de
	move.b d0,($f00a).w
	rts
loc_2022de:
	tst.b ($f00b).w
	bne.s loc_2022ea
	move.b d0,($f00b).w
	rts
loc_2022ea:
	tst.b ($f00c).w
	bne.s loc_2022f4
	move.b d0,($f00c).w
loc_2022f4:
	rts

sub_2022f6:
	jsr (sub_20226a).l
	tst.b ($f00a).w
	beq.s loc_202310
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202310:
	tst.b ($f00b).w
	beq.s loc_202324
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202324:
	tst.b ($f00c).w
	beq.s loc_202338
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202338:
	bra.w sub_202286
	.incbin 9020, 32

sub_20235c:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_20241e).l,a3
	lea ($c00000).l,a4
	bra.s loc_202378

sub_20236e:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_202434).l,a3
loc_202378:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202386
	adda.w #$a,a3
loc_202386:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_20244a
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2023a6
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2023a6:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2023f2
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2023ce
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023ce:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2023dc:
	lsr.w #$4,d0
loc_2023de:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2023ec
	jmp (a3)

sub_2023e8:
	moveq #$0,d4
	moveq #$8,d3
loc_2023ec:
	dbf d0,loc_2023de
	bra.s sub_2023a6
loc_2023f2:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202400
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202400:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2023dc
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2023dc
loc_20241e:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023e8
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023e8
	rts
dat_202434:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023e8
	rts

sub_20244a:
	move.b (a0)+,d0
loc_20244c:
	cmpi.b #$ff,d0
	bne.s loc_202454
	rts
loc_202454:
	move.w d0,d7
loc_202456:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_20244c
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
	bne.s loc_202484
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202456
loc_202484:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202490:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202490
	bra.s loc_202456

sub_20249c:
	movem.l a1-a2,-(a7)
	lea (dat_20fe82).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2024b4:
	tst.l (a2)
	beq.s loc_2024bc
	addq.w #$6,a2
	bra.s loc_2024b4
loc_2024bc:
	move.w (a1)+,d0
	bmi.s loc_2024c8
loc_2024c0:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2024c0
loc_2024c8:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9422, 44

sub_2024fa:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202500:
	clr.l (a2)+
	dbf d0,loc_202500
	rts

sub_202508:
	tst.l ($f680).w
	beq.s loc_20255c
	tst.w ($f6f8).w
	bne.s loc_20255c
	movea.l ($f680).w,a0
	lea (loc_20241e).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_20252a
	adda.w #$a,a3
loc_20252a:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_20244a
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	moveq #$10,d6
	moveq #$0,d0
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d0,($f6e8).w
	move.l d0,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_20255c:
	rts
loc_20255e:
	tst.w ($f6f8).w
	beq.w loc_2025fc
loc_202566:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202598

sub_20257a:
	tst.w ($f6f8).w
	beq.s loc_2025fc
	tst.b ($f744).w
	bne.s loc_202566
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202598:
	lea ($c00004).l,a4
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,(a4)
	subq.w #$4,a4
	movea.l ($f680).w,a0
	movea.l ($f6e0).w,a3
	move.l ($f6e4).w,d0
	move.l ($f6e8).w,d1
	move.l ($f6ec).w,d2
	move.l ($f6f0).w,d5
	move.l ($f6f4).w,d6
	lea ($aa00).w,a1
loc_2025cc:
	movea.w #$8,a5
	bsr.w sub_2023e8
	subq.w #$1,($f6f8).w
	beq.s loc_2025fe
	subq.w #$1,($f6fa).w
	bne.s loc_2025cc
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2025fc:
	rts
loc_2025fe:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202604:
	move.l $6(a0),(a0)+
	dbf d0,loc_202604
	rts

sub_20260e:
	lea (dat_20fe82).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202620:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_20235c
	dbf d1,loc_202620
	rts
	.incbin 9792, 542

sub_20285e:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2028ba).l,a0
	move.w (a0)+,d0
	move.w d0,($f730).w
	move.l (a0)+,d0
	move.l d0,($f728).w
	move.l d0,($f720).w
	move.l (a0)+,d0
	move.l d0,($f72c).w
	move.l d0,($f724).w
	move.w ($f728).w,d0
	addi.w #$240,d0
	move.w d0,($f732).w
	move.w #$1010,($f74a).w
	move.w (a0)+,d0
	move.w d0,($f73e).w
	move.w #$a0,($f7a0).w
	bra.w loc_2028c6
dat_2028ba:
	dc.b $00,$04,$00,$00,$23,$97,$00,$00
	dc.b $07,$10,$00,$60
loc_2028c6:
	tst.b ($ff1522).l
	beq.s loc_2028e6
	jsr (sub_206928).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_2028e4
	moveq #$0,d0
loc_2028e4:
	bra.s loc_2028fc
loc_2028e6:
	lea (dat_202938).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2028fc:
	subi.w #$a0,d1
	bcc.s loc_202904
	moveq #$0,d1
loc_202904:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_20290e
	move.w d2,d1
loc_20290e:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20291a
	moveq #$0,d0
loc_20291a:
	cmp.w ($f72e).w,d0
	blt.s loc_202924
	move.w ($f72e).w,d0
loc_202924:
	move.w d0,($f704).w
	bsr.w sub_202940
	lea (dat_20293c).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202938:
	dc.b $00,$30,$01,$9c
dat_20293c:
	dc.b $7f,$7f,$7f,$7f

sub_202940:
	swap d0
	lsr.l #$2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$1,d1
	move.w d1,($f710).w
	lsr.l #$1,d1
	move.w d1,($f718).w
	lsr.l #$2,d1
	move.l d1,d2
	add.l d2,d2
	add.l d2,d1
	move.w d1,($f708).w
	rts

sub_20296c:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202978
	rts
loc_202978:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202ae0
	bsr.w sub_202b80
	bsr.w sub_203408
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202e0a
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202dd6
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202da2
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202d72
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a1
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	bsr.w sub_202a58
	move.w ($f718).w,d0
	neg.w d0
	moveq #$17,d6
loc_202a1c:
	move.w d0,(a1)+
	dbf d6,loc_202a1c
	move.w ($f710).w,d0
	neg.w d0
	moveq #$2d,d6
loc_202a2a:
	move.w d0,(a1)+
	dbf d6,loc_202a2a
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202a9e
dat_202a4e:
	dc.b $05,$03,$02,$02,$01,$01,$01,$01
	dc.b $01,$00

sub_202a58:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$0,d3
	move.w ($f708).w,d4
	moveq #$8,d6
	adda.w #$34,a1
loc_202a70:
	move.b d3,d0
	jsr (sub_2007d6).l
	move.w #$100,d5
	sub.w d1,d5
	muls.w d2,d5
	lsr.l #$8,d5
	add.w d4,d5
	neg.w d5
	moveq #$0,d1
	move.b dat_202a4e(pc,d6.w),d1
loc_202a8c:
	move.w d5,-(a1)
	dbf d1,loc_202a8c
	addq.b #$6,d3
	dbf d6,loc_202a70
	adda.w #$34,a1
	rts
loc_202a9e:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202aac(pc,d2.w)
loc_202aaa:
	move.w (a2)+,d0
loc_202aac:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202aaa
	rts
	dc.b $44,$40,$4e,$fb,$20,$04,$44,$40
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202aaa
	rts

sub_202ae0:
	move.w ($f700).w,d4
	bsr.s sub_202b14
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b12
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b0c
	bset.b #$2,($f754).w
	rts
loc_202b0c:
	bset.b #$3,($f754).w
loc_202b12:
	rts

sub_202b14:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b26
	bcs.s loc_202b56
	bra.s loc_202b2c
loc_202b26:
	clr.w ($f73a).w
	rts
loc_202b2c:
	cmpi.w #$10,d0
	blt.s loc_202b36
	move.w #$10,d0
loc_202b36:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b44
	move.w ($f72a).w,d0
loc_202b44:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b56:
	cmpi.w #$fff0,d0
	bge.s loc_202b60
	move.w #$fff0,d0
loc_202b60:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b44
	move.w ($f728).w,d0
	bra.s loc_202b44
	.incbin 11120, 16

sub_202b80:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202b94
	subq.w #$5,d0
loc_202b94:
	btst.b #$1,$22(a6)
	beq.s loc_202bb4
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c00
	subi.w #$40,d0
	bcc.s loc_202c00
	tst.b ($f75c).w
	bne.s loc_202c12
	bra.s loc_202bc0
loc_202bb4:
	sub.w ($f73e).w,d0
	bne.s loc_202bc6
	tst.b ($f75c).w
	bne.s loc_202c12
loc_202bc0:
	clr.w ($f73c).w
	rts
loc_202bc6:
	cmpi.w #$60,($f73e).w
	bne.s loc_202bee
	move.w $14(a6),d1
	bpl.s loc_202bd6
	neg.w d1
loc_202bd6:
	cmpi.w #$800,d1
	bcc.s loc_202c00
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c60
	cmpi.w #$fffa,d0
	blt.s loc_202c2a
	bra.s loc_202c18
loc_202bee:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c60
	cmpi.w #$fffe,d0
	blt.s loc_202c2a
	bra.s loc_202c18
loc_202c00:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c60
	cmpi.w #$fff0,d0
	blt.s loc_202c2a
	bra.s loc_202c18
loc_202c12:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c18:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c6a
	bra.w loc_202c36
loc_202c2a:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c36:
	cmp.w ($f72c).w,d1
	bgt.s loc_202c8e
	cmpi.w #$ff00,d1
	bgt.s loc_202c5a
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c8e
loc_202c5a:
	move.w ($f72c).w,d1
	bra.s loc_202c8e
loc_202c60:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c6a:
	cmp.w ($f72e).w,d1
	blt.s loc_202c8e
	subi.w #$800,d1
	bcs.s loc_202c8a
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c8e
loc_202c8a:
	move.w ($f72e).w,d1
loc_202c8e:
	move.w ($f704).w,d4
	swap d1
	move.l d1,d3
	sub.l ($f704).w,d3
	ror.l #$8,d3
	move.w d3,($f73c).w
	move.l d1,($f704).w
	move.w ($f704).w,d0
	andi.w #$10,d0
	move.b ($f74b).w,d1
	eor.b d1,d0
	bne.s loc_202cd0
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202cca
	bset.b #$0,($f754).w
	rts
loc_202cca:
	bset.b #$1,($f754).w
loc_202cd0:
	rts
	.incbin 11474, 160

sub_202d72:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202da0
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202d9a
	bset.b #$0,($f756).w
	rts
loc_202d9a:
	bset.b #$1,($f756).w
loc_202da0:
	rts

sub_202da2:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202dd4
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202dce
	bset.b d6,($f756).w
	bra.s loc_202dd4
loc_202dce:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202dd4:
	rts

sub_202dd6:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e08
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e02
	bset.b d6,($f758).w
	bra.s loc_202e08
loc_202e02:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e08:
	rts

sub_202e0a:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e3c
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e36
	bset.b d6,($f75a).w
	bra.s loc_202e3c
loc_202e36:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e3c:
	rts
	.incbin 11838, 44

sub_202e6a:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f28
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20300e
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203010
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f26
	bclr.b #$0,(a2)
	beq.s loc_202edc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20323c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203012
loc_202edc:
	bclr.b #$1,(a2)
	beq.s loc_202ef6
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20323c
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203012
loc_202ef6:
	bclr.b #$2,(a2)
	beq.s loc_202f0c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20323c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203068
loc_202f0c:
	bclr.b #$3,(a2)
	beq.s loc_202f26
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20323c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203068
loc_202f26:
	rts

sub_202f28:
	lea (dat_2032f4).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f44
	bclr.b #$1,(a2)
	beq.s loc_202f8e
	move.w #$e0,d4
loc_202f44:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202fbe(pc,d0.w),a3
	beq.s loc_202f76
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20323c
	movem.l (a7)+,d4-d5
	bsr.w sub_203012
	movea.l (a7)+,a0
	bra.s loc_202f8e
loc_202f76:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20323e
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20303e
	movea.l (a7)+,a0
loc_202f8e:
	tst.b (a2)
	bne.s loc_202f94
	rts
loc_202f94:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202fa8
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202fa8:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202fce
dat_202fbe:
	.incbin 12222, 16
loc_202fce:
	moveq #$f,d6
	move.l #$800000,d7
loc_202fd6:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203002
	btst.b d0,(a2)
	beq.s loc_203002
	add.w d0,d0
	movea.l dat_202fbe(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203114
	movem.l (a7)+,d4-d5
	bsr.w sub_20323c
	bsr.w sub_203096
	movem.l (a7)+,d4-d5/a0
loc_203002:
	addi.w #$10,d4
	dbf d6,loc_202fd6
	clr.b (a2)
	rts

sub_20300e:
	rts

sub_203010:
	rts

sub_203012:
	moveq #$15,d6

sub_203014:
	move.l #$800000,d7
	move.l d0,d1
loc_20301c:
	movem.l d4-d5,-(a7)
	bsr.w sub_203114
	move.l d1,d0
	bsr.w sub_203096
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20301c
	rts

sub_20303e:
	move.l #$800000,d7
	move.l d0,d1
loc_203046:
	movem.l d4-d5,-(a7)
	bsr.w sub_203116
	move.l d1,d0
	bsr.w sub_203096
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203046
	rts

sub_203068:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203072:
	movem.l d4-d5,-(a7)
	bsr.w sub_203114
	move.l d1,d0
	bsr.w sub_203096
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203072
	rts

sub_203096:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2030d2
	btst.b #$3,(a0)
	bne.s loc_2030b2
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2030b2:
	move.l d0,(a5)
	move.l (a1)+,d4
	eori.l #$8000800,d4
	swap d4
	move.l d4,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,d4
	eori.l #$8000800,d4
	swap d4
	move.l d4,(a6)
	rts
loc_2030d2:
	btst.b #$3,(a0)
	bne.s loc_2030f4
	move.l d0,(a5)
	move.l (a1)+,d5
	move.l (a1)+,d4
	eori.l #$10001000,d4
	move.l d4,(a6)
	add.l d7,d0
	move.l d0,(a5)
	eori.l #$10001000,d5
	move.l d5,(a6)
	rts
loc_2030f4:
	move.l d0,(a5)
	move.l (a1)+,d5
	move.l (a1)+,d4
	eori.l #$18001800,d4
	swap d4
	move.l d4,(a6)
	add.l d7,d0
	move.l d0,(a5)
	eori.l #$18001800,d5
	swap d5
	move.l d5,(a6)
	rts

sub_203114:
	add.w (a3),d5

sub_203116:
	add.w $4(a3),d4
	lea ($ff2000).l,a1
	move.w d4,d3
	lsr.w #$1,d3
	andi.w #$380,d3
	lsr.w #$3,d5
	move.w d5,d0
	lsr.w #$5,d0
	andi.w #$7f,d0
	add.w d3,d0
	move.l #$210000,d3
	move.b $0(a4,d0.w),d3
	beq.s loc_203164
	subq.b #$1,d3
	andi.w #$7f,d3
	ror.w #$7,d3
	add.w d4,d4
	andi.w #$1e0,d4
	andi.w #$1e,d5
	add.w d4,d3
	add.w d5,d3
	movea.l d3,a0
	move.w (a0),d3
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	moveq #$1,d0
loc_203164:
	rts
	.incbin 12646, 214

sub_20323c:
	add.w (a3),d5

sub_20323e:
	add.w $4(a3),d4
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 12888, 28

sub_203274:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20329e
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032c6

sub_20329e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032a2:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20323c
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203014
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2032a2
	rts
loc_2032c6:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032ca:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2032f4).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203336
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2032ca
	rts
dat_2032f4:
	.incbin 13044, 50
dat_203326:
	.incbin 13094, 16

sub_203336:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203326(pc,d0.w),a3
	beq.s loc_203358
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20323c
	movem.l (a7)+,d4-d5
	bsr.w sub_203012
	bra.s loc_20336c
loc_203358:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20323e
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20303e
loc_20336c:
	rts

sub_20336e:
	moveq #$0,d0
	lea (dat_20fe72).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20236e
	movea.l (a2)+,a0
	bsr.w sub_2033ba
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2005ec
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2033b8
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033b8
	bsr.w sub_20249c
loc_2033b8:
	rts

sub_2033ba:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033c4:
	move.l d0,(a3)+
	dbf d1,loc_2033c4
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2033da
	lea ($a040).w,a3
	moveq #$2,d1

sub_2033da:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_236b16).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2033f4:
	move.w d1,d0
	movea.l a3,a0
loc_2033f8:
	move.b (a1)+,(a0)+
	dbf d0,loc_2033f8
	lea $80(a3),a3
	dbf d2,loc_2033f4
	rts

sub_203408:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203482(pc,d0.w),d0
	jsr dat_203482(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20342e
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20342e:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20345c
	bcc.s loc_20345e
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203452
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203452:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20345c:
	rts
loc_20345e:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203476
	btst.b #$1,($d022).w
	beq.s loc_203476
	add.w d1,d1
	add.w d1,d1
loc_203476:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203482:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2034a2(pc,d0.w),d0
	jmp dat_2034a2(pc,d0.w)
dat_2034a2:
	.incbin 13474, 110
	tst.b ($f7a7).w
	bne.s loc_203528
	move.w #$310,($f726).w
	move.w #$d70,d0
	move.w #$310,d1
	bsr.w sub_20372e
loc_203528:
	rts
	.incbin 13610, 56
	btst.b #$4,($f7a7).w
	bne.s loc_203572
	move.w #$710,($f726).w
	rts
loc_203572:
	move.w #$ba0,d0
	move.w #$1d0,d1
	bsr.w sub_20372e
	bne.w loc_2035be
	lea ($d000).w,a1
	cmpi.w #$298,$c(a1)
	ble.s loc_2035a2
	cmpi.w #$498,$c(a1)
	ble.s loc_20359c
	move.w #$5d0,d0
	bra.s loc_2035a6
loc_20359c:
	move.w #$3d0,d0
	bra.s loc_2035a6
loc_2035a2:
	move.w #$1d0,d0
loc_2035a6:
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d0
	bge.s loc_2035b4
	neg.w d0
loc_2035b4:
	cmpi.w #$2,d0
	bgt.s loc_2035be
	move.w d1,($f72e).w
loc_2035be:
	rts
	.incbin 13760, 74
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20361c(pc,d0.w),d0
	jmp dat_20361c(pc,d0.w)
dat_20361c:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$710,($f726).w
	rts
	.incbin 13866, 260

sub_20372e:
	cmp.w ($d008).w,d0
	ble.s loc_203738
	moveq #$0,d0
	rts
loc_203738:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_203744
	neg.w d1
loc_203744:
	cmpi.w #$4,d1
	bge.s loc_203750
	move.w ($f726).w,($f72e).w
loc_203750:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_203770
	cmp.w ($f72a).w,d0
	ble.s loc_203768
	move.w ($f72a).w,d0
loc_203768:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_203770:
	moveq #$1,d0
	rts

sub_203774:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20377c:
	move.b (a0),d0
	beq.s loc_203792
	add.w d0,d0
	add.w d0,d0
	lea (dat_203b96).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203792:
	lea $40(a0),a0
	dbf d7,loc_20377c
	rts

sub_20379c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037da
	bpl.s loc_2037cc
	btst.b #$1,$2c(a0)
	beq.s loc_2037cc
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037da
loc_2037cc:
	btst.b #$2,$2c(a0)
	bne.s loc_2037da
	addi.w #$38,$12(a0)
loc_2037da:
	tst.w $12(a0)
	bmi.s loc_2037ee
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2037ee
	move.w #$1000,$12(a0)
loc_2037ee:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2037fe:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_20383a
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_20383a
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203838
	neg.w d1
loc_203838:
	add.w d1,d0
loc_20383a:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203854:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038c4
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038e0
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038e0
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_20389e
	cmpi.w #$800,d3
	bcs.s loc_2038b0
	subi.w #$800,d3
	bra.s loc_2038b0
loc_20389e:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038b0
	cmpi.w #$100,d3
	bcc.s loc_2038b0
	addi.w #$800,d3
loc_2038b0:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038e0
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038e0
loc_2038c4:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038e0
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038e0:
	rts
	.incbin 14562, 30

sub_203900:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203906:
	move.l d1,(a1)+
	dbf d0,loc_203906
	rts
dat_20390e:
	.incbin 14606, 16

sub_20391e:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_20392a:
	tst.w (a4)
	beq.w loc_2039ea
	moveq #$2,d6
loc_203932:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039e2
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203998
	movea.l dat_20390e(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_20397c
	cmpi.w #$800,d2
	bcs.s loc_20398e
	subi.w #$800,d2
	bra.s loc_20398e
loc_20397c:
	cmpi.w #$700,$4(a1)
	bcs.s loc_20398e
	cmpi.w #$100,d2
	bcc.s loc_20398e
	addi.w #$800,d2
loc_20398e:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039ba
loc_203998:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039ba
	.incbin 14754, 24
loc_2039ba:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2039d8
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039dc
loc_2039d8:
	bsr.w sub_203a0c
loc_2039dc:
	bset.b #$7,$1(a0)
loc_2039e2:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203932
loc_2039ea:
	lea $80(a4),a4
	dbf d7,loc_20392a
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a04
	move.l #$0,(a2)
	rts
loc_203a04:
	move.b #$0,-$5(a2)
	rts

sub_203a0c:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a52
	btst.l #$1,d4
	bne.w loc_203aa0
loc_203a1e:
	cmpi.b #$50,d5
	beq.s loc_203a50
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
	bne.s loc_203a4a
	addq.w #$1,d0
loc_203a4a:
	move.w d0,(a2)+
	dbf d1,loc_203a1e
loc_203a50:
	rts
loc_203a52:
	btst.l #$1,d4
	bne.w loc_203ae6
loc_203a5a:
	cmpi.b #$50,d5
	beq.s loc_203a9e
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
	bne.s loc_203a98
	addq.w #$1,d0
loc_203a98:
	move.w d0,(a2)+
	dbf d1,loc_203a5a
loc_203a9e:
	rts
loc_203aa0:
	cmpi.b #$50,d5
	beq.s loc_203ae4
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
	bne.s loc_203ade
	addq.w #$1,d0
loc_203ade:
	move.w d0,(a2)+
	dbf d1,loc_203aa0
loc_203ae4:
	rts
loc_203ae6:
	cmpi.b #$50,d5
	beq.s loc_203b38
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
	bne.s loc_203b32
	addq.w #$1,d0
loc_203b32:
	move.w d0,(a2)+
	dbf d1,loc_203ae6
loc_203b38:
	rts
	.incbin 15162, 92
dat_203b96:
	.incbin 15254, 246

sub_203c8c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203c9e
	move.w #$0,(a1)
	rts
loc_203c9e:
	tst.w (a1)
	bne.s loc_203ca8
	move.b #$1,$1(a1)
loc_203ca8:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203cf2
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ce4
	neg.w $10(a0)
loc_203ce4:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205d9e
loc_203cf2:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d10
	cmpa.w #$d040,a0
	beq.s loc_203d10
	tst.b ($ff1906).l
	beq.s loc_203d10
	jmp (loc_207254).l
loc_203d10:
	move.b $2a(a0),d0
	beq.s loc_203d3a
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d2c
	cmpi.b #$2d,d0
	bcs.s loc_203d36
	move.b #$2d,d0
	bra.s loc_203d36
loc_203d2c:
	cmpi.b #$1e,d0
	bcs.s loc_203d36
	move.b #$1e,d0
loc_203d36:
	move.b d0,$2a(a0)
loc_203d3a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d48(pc,d0.w),d1
	jmp dat_203d48(pc,d1.w)
dat_203d48:
	dc.b $00,$4c,$05,$34,$17,$ac,$18,$18
	dc.b $18,$a0
loc_203d52:
	tst.b ($d300).w
	bne.s loc_203d90
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203d90:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203db8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203db8:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203dec:
	tst.b ($ff1506).l
	bne.s loc_203e52
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_203e52
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203ecc
	cmpi.b #$2f,d1
	bne.s loc_203e54
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e52
	tst.b $2c(a0)
	beq.s loc_203e52
	jsr (sub_207878).l
	bne.s loc_203e52
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e4a
	moveq #$0,d0
loc_203e4a:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e52:
	rts
loc_203e54:
	rts
	.incbin 15958, 118

sub_203ecc:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	andi.b #$7f,d1
	rts

sub_203ef2:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f70
	cmpi.b #$4,$24(a0)
	bcc.s loc_203f70
	btst.b #$3,$2c(a0)
	bne.s loc_203f70
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f44).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	bne.s loc_203f70
	bset.b #$3,$2c(a0)
	move.w #$0,$10(a0)
	move.w #$fe00,d0
	tst.w $12(a0)
	bmi.s loc_203f3c
	neg.w d0
loc_203f3c:
	move.w d0,$12(a0)
	move.b #$40,$2b(a0)
	move.w $8(a0),d0
	andi.w #$fff0,d0
	addq.w #$8,d0
	move.w d0,$8(a0)
	move.w d0,$3e(a0)
	move.b #$2,$1c(a0)
	bset.b #$2,$22(a0)
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
loc_203f70:
	rts

sub_203f72:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_20400e
	cmpi.b #$2,($ff1522).l
	beq.w loc_20400e
	btst.b #$0,$2c(a0)
	bne.s loc_20400e
	btst.b #$2,$2c(a0)
	bne.s loc_20400e
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f44).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_20400e
	move.w ($f786).w,d0
	beq.s loc_203fd0
	clr.w ($f786).w
	clr.b ($ff1521).l
	cmpi.w #$5a,d0
	bcs.s loc_203fd0
	clr.b ($f784).w
loc_203fd0:
	bclr.b #$2,$22(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.w #$0,$14(a0)
	move.b #$2c,$1c(a0)
	bset.b #$2,$2c(a0)
	move.b #$7,$1f(a0)
	move.w $c(a0),d0
	subi.w #$18,d0
	andi.w #$fff0,d0
	addi.w #$18,d0
	move.w d0,$c(a0)
loc_20400e:
	rts

sub_204010:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_20406e
	cmpi.b #$4,$24(a0)
	bcc.s loc_20406e
	tst.b ($ff1521).l
	bne.s loc_20406e
	tst.b ($ff151f).l
	bne.s loc_20406e
	tst.w $30(a0)
	bne.s loc_20406e
	moveq #$0,d0
	move.b ($ff195a).l,d0
	beq.s loc_20406e
	subq.b #$1,d0
	add.w d0,d0
	move.w dat_204070(pc,d0.w),d0
	lea dat_204070(pc,d0.w),a3
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f44).l
	move.w (a1),d0
	andi.w #$7ff,d0
loc_204062:
	move.w (a3)+,d1
	bmi.s loc_20406e
	cmp.w d1,d0
	bne.s loc_204062
	bra.w loc_206ff6
loc_20406e:
	rts
dat_204070:
	.incbin 16496, 32

sub_204090:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_20414a
	tst.b ($ff1521).l
	bne.w loc_20414a
	tst.b ($ff151f).l
	bne.w loc_20414a
	cmpi.w #$980,$8(a0)
	bcs.s loc_2040c0
	cmpi.w #$a20,$8(a0)
	bcs.w loc_20414a
loc_2040c0:
	btst.b #$7,($f7a7).w
	bne.w loc_20414a
	tst.w $30(a0)
	bne.s loc_20414a
	cmpi.b #$2,($ff1507).l
	bne.s loc_2040f4
	cmpi.w #$a10,$8(a0)
	bcs.s loc_20410c
	tst.b ($ff1958).l
	beq.s loc_20414a
	tst.b ($ff156a).l
	bne.s loc_204106
	bra.s loc_20410c
loc_2040f4:
	cmpi.b #$2,($ff152e).l
	bne.s loc_20410c
	tst.b ($ff156a).l
	beq.s loc_20410c
loc_204106:
	tst.b ($f668).w
	beq.s loc_20414a
loc_20410c:
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f44).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$2,d6
	lea (dat_20414c).l,a1
	cmpi.b #$2,($ff152e).l
	bne.s loc_204140
	tst.b ($ff156a).l
	bne.s loc_204140
	lea (dat_204152).l,a1
loc_204140:
	cmp.w (a1)+,d0
	beq.w loc_206ff6
	dbf d6,loc_204140
loc_20414a:
	rts
dat_20414c:
	dc.b $02,$43,$02,$44,$02,$45
dat_204152:
	dc.b $02,$87,$02,$88,$02,$89

sub_204158:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204228
	tst.b ($f7a7).w
	bne.w loc_204228
	cmpi.b #$2,($ff152e).l
	bcc.s loc_20418c
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_204184
	addi.b #$1e,d0
loc_204184:
	cmp.b ($f7b3).w,d0
	beq.w loc_204228
loc_20418c:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200f44).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	beq.s loc_2041e4
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200f44).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	bne.s loc_204228
loc_2041e4:
	move.w #$ea00,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	bset.b #$2,$22(a0)
	bne.s loc_204228
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
	move.b #$2,$1c(a0)
	move.w #$da,d0
	jsr (sub_2022d2).l
loc_204228:
	rts

sub_20422a:
	rts
	.incbin 16940, 80
	bsr.s sub_20422a
	bsr.w sub_203dec
	tst.w ($ff1588).l
	beq.s loc_20429c
	btst.b #$4,($f605).w
	beq.s loc_20429c
	move.b #$1,($ff1906).l
	rts
loc_20429c:
	tst.b ($f7cc).w
	bne.s loc_2042a8
	move.w ($f604).w,($f602).w
loc_2042a8:
	btst.b #$0,$2c(a0)
	beq.s loc_2042b6
	bsr.w sub_2044d0
	bra.s loc_2042dc
loc_2042b6:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20430c(pc,d0.w),d1
	jsr dat_20430c(pc,d1.w)
	bsr.w sub_204158
	bsr.w sub_204090
	bsr.w sub_204010
	bsr.w sub_203f72
	bsr.w sub_203ef2
loc_2042dc:
	bsr.s sub_20431a
	bsr.w sub_2043da
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	bsr.w sub_205794
	tst.b $2c(a0)
	bmi.s loc_204306
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204306
	jsr (sub_206df8).l
loc_204306:
	bsr.w sub_205658
	rts
dat_20430c:
	dc.b $02,$84,$02,$f2,$03,$46,$03,$74
	dc.b $81,$82,$83,$84,$85,$86

sub_20431a:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20433e
	move.w $30(a0),d0
	beq.s loc_204330
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20433e
loc_204330:
	btst.b #$6,$2c(a0)
	bne.s loc_20433e
	jsr (sub_203854).l
loc_20433e:
	tst.b ($ff151f).l
	beq.s loc_204382
	tst.w $32(a0)
	beq.s loc_204382
	subq.w #$1,$32(a0)
	bne.s loc_204382
	tst.b ($ff1520).l
	bne.s loc_20437a
	tst.b ($ff1958).l
	bne.s loc_20437a
	tst.b ($ff152e).l
	bne.s loc_204374
	move.w #$e,d0
	jsr (sub_205d9e).l
loc_204374:
	jsr (sub_201ac6).l
loc_20437a:
	move.b #$0,($ff151f).l
loc_204382:
	tst.b ($ff1520).l
	beq.s loc_2043d8
	tst.w $34(a0)
	beq.s loc_2043d8
	subq.w #$1,$34(a0)
	bne.s loc_2043d8
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2043d0
	tst.b ($ff1958).l
	bne.s loc_2043d0
	tst.b ($ff152e).l
	bne.s loc_2043ca
	move.w #$e,d0
	jsr (sub_205d9e).l
loc_2043ca:
	jsr (sub_201ac6).l
loc_2043d0:
	move.b #$0,($ff1520).l
loc_2043d8:
	rts

sub_2043da:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts
	dc.b $4e,$75

sub_2043f6:
	move.b ($ff1522).l,($ff1546).l
	move.w $8(a0),($ff1548).l
	move.w $c(a0),($ff154a).l
	move.w $14(a0),($ff1564).l
	move.w $10(a0),($ff1566).l
	move.w $12(a0),($ff1568).l
	move.b $22(a0),($ff154c).l
	bclr.b #$3,($ff154c).l
	move.b ($f64d).w,($ff1562).l
	move.w ($f72e).w,($ff154e).l
	move.w ($f700).w,($ff1550).l
	move.w ($f704).w,($ff1552).l
	move.w ($f708).w,($ff1554).l
	move.w ($f70c).w,($ff1556).l
	move.w ($f710).w,($ff1558).l
	move.w ($f714).w,($ff155a).l
	move.w ($f718).w,($ff155c).l
	move.w ($f71c).w,($ff155e).l
	move.w ($f648).w,($ff1560).l
	move.b ($f64d).w,($ff1562).l
	move.b ($f64e).w,($ff1563).l
	move.w ($ff1512).l,($ff1528).l
	move.b ($ff150d).l,($ff1545).l
	move.l ($ff1514).l,d0
	cmpi.l #$50000,d0
	bcs.s loc_2044c8
	move.l #$50000,d0
loc_2044c8:
	move.l d0,($ff1570).l
	rts

sub_2044d0:
	tst.b $2a(a0)
	bne.w loc_20458e
	tst.b ($f784).w
	beq.w loc_20458e
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2044ee
	neg.w d0
loc_2044ee:
	tst.w ($f786).w
	bne.s loc_2044fa
	move.w #$1,($f786).w
loc_2044fa:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204510
	move.b #$1,($ff1502).l
	bra.w loc_205d9a
loc_204510:
	cmpi.w #$d2,d1
	bcs.s loc_204564
	cmpi.b #$2,($ff1522).l
	beq.s loc_204562
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20453a
	move.w #$82,d0
	jsr (sub_205d9e).l
	moveq #$0,d0
loc_20453a:
	add.b ($f784).w,d0
	bpl.s loc_204544
	moveq #$0,d0
	bra.s loc_20454c
loc_204544:
	cmpi.b #$3,d0
	bcs.s loc_20454c
	moveq #$2,d0
loc_20454c:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2043f6
	move.b #$2,($ff1522).l
loc_204562:
	rts
loc_204564:
	cmpi.w #$5a,d1
	bcc.s loc_20457c
	cmp.w d2,d0
	bcc.w loc_203d52
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20457c:
	cmp.w d2,d0
	bcc.s loc_20458e
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20458e:
	rts
	tst.b ($f75f).w
	beq.s loc_2045a2
	cmpi.b #$5,$1c(a0)
	bne.s loc_2045fc
	clr.b ($f75f).w
loc_2045a2:
	bsr.w sub_203c8c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045d2
	tst.b ($ff195b).l
	beq.s loc_2045c0
	cmpi.b #$79,$1a(a0)
	bne.s loc_2045fc
	bra.s loc_2045c8
loc_2045c0:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2045fc
loc_2045c8:
	bsr.w sub_204f90
	jmp (sub_20379c).l
loc_2045d2:
	bsr.w sub_204806
	bsr.w sub_2044d0
	bsr.w sub_20506e
	bsr.w sub_205188
	bsr.w sub_20487c
	bsr.w sub_204ffc
	bsr.w sub_204f90
	jsr (sub_2037fe).l
	bsr.w sub_200bd6
	bsr.w sub_205206
loc_2045fc:
	rts
	tst.w $12(a0)
	bmi.s loc_204612
	cmpi.b #$2c,$1c(a0)
	beq.s loc_204612
	move.b #$0,$1c(a0)
loc_204612:
	btst.b #$2,$2c(a0)
	beq.s loc_204620
	bsr.w sub_204772
	bra.s loc_20464c
loc_204620:
	bsr.w sub_204806
	bsr.w sub_2044d0
	bsr.w sub_205154
	bsr.w sub_204ebc
	bsr.w sub_204f90
	jsr (sub_20379c).l
	btst.b #$6,$22(a0)
	beq.s loc_204648
	subi.w #$28,$12(a0)
loc_204648:
	bsr.w sub_205248
loc_20464c:
	bsr.w sub_20526c
	rts
	bsr.w sub_204806
	bsr.w sub_2044d0
	bsr.w sub_20506e
	bsr.w sub_2051c4
	bsr.w sub_204d04
	bsr.w sub_204f90
	tst.b $2a(a0)
	bne.s loc_204676
	jsr (sub_2037fe).l
loc_204676:
	bsr.w sub_200bd6
	bsr.w sub_205206
	rts
	btst.b #$3,$2c(a0)
	beq.s loc_204692
	bsr.w sub_2046d6
	bsr.w sub_2044d0
	bra.s loc_2046d0
loc_204692:
	btst.b #$2,$2c(a0)
	beq.s loc_2046a4
	bsr.w sub_204772
	bsr.w sub_2044d0
	bra.s loc_2046d0
loc_2046a4:
	bsr.w sub_204806
	bsr.w sub_2044d0
	bsr.w sub_205154
	bsr.w sub_204ebc
	bsr.w sub_204f90
	jsr (sub_20379c).l
	btst.b #$6,$22(a0)
	beq.s loc_2046cc
	subi.w #$28,$12(a0)
loc_2046cc:
	bsr.w sub_205248
loc_2046d0:
	bsr.w sub_20526c
	rts

sub_2046d6:
	btst.b #$4,$2c(a0)
	beq.s loc_20470a
	move.b $2b(a0),d0
	andi.b #$7f,d0
	bne.s loc_20471a
	move.w #$f400,$10(a0)
	tst.b $2b(a0)
	bmi.s loc_2046f8
	neg.w $10(a0)
loc_2046f8:
	andi.b #$7f,$2(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	rts
loc_20470a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20471a
	bset.b #$4,$2c(a0)
loc_20471a:
	addq.b #$8,$2b(a0)
	ori.w #$8000,$2(a0)
	move.b $2b(a0),d0
	bpl.s loc_204730
	andi.w #$7fff,$2(a0)
loc_204730:
	jsr (sub_2007d6).l
	muls.w #$17,d1
	asr.l #$8,d1
	move.w $3e(a0),$8(a0)
	add.w d1,$8(a0)
	move.w $12(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$c(a0)
	move.w $3e(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f44).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	beq.s loc_204770
	neg.w $12(a0)
loc_204770:
	rts

sub_204772:
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f44).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_20479a
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047b4
loc_20479a:
	bclr.b #$2,$2c(a0)
	addi.w #$10,$c(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	rts
loc_2047b4:
	moveq #$2,d0
	btst.b #$2,($f602).w
	beq.s loc_2047ce
	neg.w d0
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a0)
	bra.s loc_2047e2
loc_2047ce:
	btst.b #$3,($f602).w
	beq.s loc_204804
	bclr.b #$0,$22(a0)
	bclr.b #$0,$1(a0)
loc_2047e2:
	add.w d0,$8(a0)
	subq.b #$1,$1f(a0)
	bpl.s loc_204804
	move.b #$7,$1f(a0)
	addq.b #$1,$1b(a0)
	cmpi.b #$4,$1b(a0)
	bcs.s loc_204804
	move.b #$0,$1b(a0)
loc_204804:
	rts

sub_204806:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204872
	tst.w ($ff1506).l
	bne.s loc_204872
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204874).l,a2
loc_20483a:
	move.b (a2)+,d0
	bmi.s loc_20484a
	cmp.b d0,d1
	bne.s loc_20483a
	bset.b #$1,$2c(a0)
	rts
loc_20484a:
	bclr.b #$1,$2c(a0)
	beq.s loc_204872
	tst.w $12(a0)
	bpl.s loc_204872
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204872
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204872
	neg.w $10(a0)
loc_204872:
	rts
dat_204874:
	dc.b $06,$07,$08,$44,$45,$46,$49,$ff

sub_20487c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204b8e
	tst.w $3e(a0)
	bne.w loc_204b3e
	btst.b #$2,($f602).w
	beq.s loc_2048a4
	bsr.w sub_204c1e
loc_2048a4:
	btst.b #$3,($f602).w
	beq.s loc_2048b0
	bsr.w sub_204c94
loc_2048b0:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204b3e
	tst.w $14(a0)
	beq.s loc_2048d0
	tst.b $2a(a0)
	beq.w loc_204b3e
	bra.s loc_2048dc
loc_2048d0:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2048dc:
	btst.b #$3,$22(a0)
	beq.s loc_20492c
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.s loc_20496e
	cmpi.b #$1e,$0(a1)
	bne.s loc_20490c
	move.b #$0,$1c(a0)
	bra.w loc_204b3e
loc_20490c:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204952
	cmp.w d2,d1
	bge.s loc_204940
	bra.s loc_20496e
loc_20492c:
	jsr (sub_206b5c).l
	cmpi.w #$c,d1
	blt.s loc_20496e
	cmpi.b #$3,$36(a0)
	bne.s loc_20494a
loc_204940:
	btst.b #$0,$22(a0)
	bne.s loc_20495a
	bra.s loc_204964
loc_20494a:
	cmpi.b #$3,$37(a0)
	bne.s loc_20496e
loc_204952:
	btst.b #$0,$22(a0)
	bne.s loc_204964
loc_20495a:
	move.b #$32,$1c(a0)
	bra.w loc_204b3e
loc_204964:
	move.b #$6,$1c(a0)
	bra.w loc_204b3e
loc_20496e:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204982
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204982:
	btst.b #$7,($f788).w
	bne.w loc_204a86
	btst.b #$6,($f788).w
	bne.w loc_204aa6
	btst.b #$1,($f602).w
	bne.w loc_204aa6
	andi.b #$f,($f788).w
	beq.s loc_2049ba
	btst.b #$0,($f603).w
	beq.s loc_2049ce
	bset.b #$7,($f788).w
	bra.w loc_204b62
loc_2049ba:
	btst.b #$0,($f603).w
	beq.w loc_2049ce
	move.b #$1,($f788).w
	bra.w loc_204b62
loc_2049ce:
	btst.b #$0,($f602).w
	beq.s loc_204a4a
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204a2c
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2049fe
	asr.w #$1,d2
	sub.w d2,d1
loc_2049fe:
	btst.b #$0,$22(a0)
	beq.s loc_204a0a
	neg.w d0
	neg.w d1
loc_204a0a:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a20
	cmp.w d0,d1
	ble.s loc_204a26
	bra.s loc_204a24
loc_204a20:
	cmp.w d1,d0
	ble.s loc_204a26
loc_204a24:
	move.w d1,d0
loc_204a26:
	move.w d0,$14(a0)
	rts
loc_204a2c:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204a46
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022d2).l
loc_204a46:
	bra.w loc_204b62
loc_204a4a:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204a6a
	move.w #$ab,d0
	jsr (sub_2022d2).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204aa6
loc_204a6a:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022d2).l
	bra.w loc_204b3e
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204a86:
	btst.b #$0,($f602).w
	beq.s loc_204aa6
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204b62
	addq.w #$2,($f73e).w
	bra.w loc_204b62
loc_204aa6:
	btst.b #$6,($f788).w
	bne.w loc_204b22
	andi.b #$f,($f788).w
	beq.s loc_204aca
	btst.b #$1,($f603).w
	beq.s loc_204adc
	bset.b #$6,($f788).w
	bra.w loc_204b62
loc_204aca:
	btst.b #$1,($f603).w
	beq.s loc_204adc
	move.b #$1,($f788).w
	bra.w loc_204b62
loc_204adc:
	btst.b #$1,($f602).w
	beq.s loc_204b3e
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204b20
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204b20
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204b12
	neg.w $14(a0)
loc_204b12:
	move.w #$9c,d0
	jsr (sub_2022d2).l
	bsr.w sub_205024
loc_204b20:
	bra.s loc_204b62
loc_204b22:
	btst.b #$1,($f602).w
	beq.s loc_204b3e
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204b62
	subq.w #$2,($f73e).w
	bra.s loc_204b62
loc_204b3e:
	cmpi.w #$60,($f73e).w
	bne.s loc_204b58
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204b62
	move.b #$0,($f788).w
	bra.s loc_204b62
loc_204b58:
	bcc.s loc_204b5e
	addq.w #$4,($f73e).w
loc_204b5e:
	subq.w #$2,($f73e).w
loc_204b62:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204b8e
	move.w $14(a0),d0
	beq.s loc_204b8e
	bmi.s loc_204b82
	sub.w d5,d0
	bcc.s loc_204b7c
	move.w #$0,d0
loc_204b7c:
	move.w d0,$14(a0)
	bra.s loc_204b8e
loc_204b82:
	add.w d5,d0
	bcc.s loc_204b8a
	move.w #$0,d0
loc_204b8a:
	move.w d0,$14(a0)
loc_204b8e:
	move.b $26(a0),d0
	jsr (sub_2007d6).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204bac:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204c1c
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204c1c
	bmi.s loc_204bc4
	neg.w d1
loc_204bc4:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206a1c
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204c1c
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204c18
	cmpi.b #$40,d0
	beq.s loc_204c06
	cmpi.b #$80,d0
	beq.s loc_204c00
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c00:
	sub.w d1,$12(a0)
	rts
loc_204c06:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c18:
	add.w d1,$12(a0)
loc_204c1c:
	rts

sub_204c1e:
	tst.b $2a(a0)
	bne.s loc_204c92
	move.w $14(a0),d0
	beq.s loc_204c2c
	bpl.s loc_204c5c
loc_204c2c:
	bset.b #$0,$22(a0)
	bne.s loc_204c40
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204c40:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204c50
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204c50
	move.w d1,d0
loc_204c50:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204c5c:
	sub.w d4,d0
	bcc.s loc_204c64
	move.w #$ff80,d0
loc_204c64:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204c92
	cmpi.w #$400,d0
	blt.s loc_204c92
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022d2).l
loc_204c92:
	rts

sub_204c94:
	tst.b $2a(a0)
	bne.s loc_204d02
	move.w $14(a0),d0
	bmi.s loc_204ccc
	bclr.b #$0,$22(a0)
	beq.s loc_204cb4
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204cb4:
	cmp.w d6,d0
	bge.s loc_204cc0
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204cc0
	move.w d6,d0
loc_204cc0:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204ccc:
	add.w d4,d0
	bcc.s loc_204cd4
	move.w #$80,d0
loc_204cd4:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d02
	cmpi.w #$fc00,d0
	bgt.s loc_204d02
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022d2).l
loc_204d02:
	rts

sub_204d04:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204e40
	tst.w $3e(a0)
	bne.s loc_204d3c
	btst.b #$2,($f602).w
	beq.s loc_204d30
	bsr.w sub_204e76
loc_204d30:
	btst.b #$3,($f602).w
	beq.s loc_204d3c
	bsr.w sub_204e9a
loc_204d3c:
	tst.b $2a(a0)
	beq.w loc_204de6
	move.w #$32,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204d5c
	asr.w #$1,d2
	sub.w d2,d1
loc_204d5c:
	btst.b #$0,$22(a0)
	beq.s loc_204d68
	neg.w d0
	neg.w d1
loc_204d68:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204d7e
	cmp.w d0,d1
	ble.s loc_204d84
	bra.s loc_204d82
loc_204d7e:
	cmp.w d1,d0
	ble.s loc_204d84
loc_204d82:
	move.w d1,d0
loc_204d84:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204db8
	rts
loc_204d92:
	move.w #$ab,d0
	jsr (sub_2022d2).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204e0e
loc_204db8:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204d92
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022d2).l
	btst.b #$0,$22(a0)
	bne.s loc_204dde
	bsr.w sub_204e9a
	bra.s loc_204de6
loc_204dde:
	bsr.w sub_204e76
	bra.s loc_204de6
	dc.b $4e,$75
loc_204de6:
	move.w $14(a0),d0
	beq.s loc_204e08
	bmi.s loc_204dfc
	sub.w d5,d0
	bcc.s loc_204df6
	move.w #$0,d0
loc_204df6:
	move.w d0,$14(a0)
	bra.s loc_204e08
loc_204dfc:
	add.w d5,d0
	bcc.s loc_204e04
	move.w #$0,d0
loc_204e04:
	move.w d0,$14(a0)
loc_204e08:
	tst.w $14(a0)
	bne.s loc_204e40
loc_204e0e:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e2a
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_204e3a
loc_204e2a:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204e3a:
	move.b #$5,$1c(a0)
loc_204e40:
	move.b $26(a0),d0
	jsr (sub_2007d6).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204e64
	move.w #$1000,d1
loc_204e64:
	cmpi.w #$f000,d1
	bge.s loc_204e6e
	move.w #$f000,d1
loc_204e6e:
	move.w d1,$10(a0)
	bra.w loc_204bac

sub_204e76:
	move.w $14(a0),d0
	beq.s loc_204e7e
	bpl.s loc_204e8c
loc_204e7e:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204e8c:
	sub.w d4,d0
	bcc.s loc_204e94
	move.w #$ff80,d0
loc_204e94:
	move.w d0,$14(a0)
	rts

sub_204e9a:
	move.w $14(a0),d0
	bmi.s loc_204eae
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204eae:
	add.w d4,d0
	bcc.s loc_204eb6
	move.w #$80,d0
loc_204eb6:
	move.w d0,$14(a0)
	rts

sub_204ebc:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	tst.w ($ff1506).l
	bne.s loc_204eea
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204ee2
	cmpi.w #$840,$8(a0)
	bcs.s loc_204f1a
loc_204ee2:
	btst.b #$1,$2c(a0)
	bne.s loc_204f1a
loc_204eea:
	btst.b #$2,($f602).w
	beq.s loc_204f04
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204f04
	move.w d1,d0
loc_204f04:
	btst.b #$3,($f602).w
	beq.s loc_204f1a
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204f1a
	move.w d6,d0
loc_204f1a:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204f30
	bcc.s loc_204f2c
	addq.w #$4,($f73e).w
loc_204f2c:
	subq.w #$2,($f73e).w
loc_204f30:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204f5e
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204f5e
	bmi.s loc_204f52
	sub.w d1,d0
	bcc.s loc_204f4c
	move.w #$0,d0
loc_204f4c:
	move.w d0,$10(a0)
	rts
loc_204f52:
	sub.w d1,d0
	bcs.s loc_204f5a
	move.w #$0,d0
loc_204f5a:
	move.w d0,$10(a0)
loc_204f5e:
	rts
	.incbin 20320, 48

sub_204f90:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204fe4
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204fbe
	addi.w #$38,d0
loc_204fbe:
	cmp.w d1,d0
	bls.s loc_204fe4
loc_204fc2:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204fd2
	rts
loc_204fd2:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2070a0
	move.b #$6,$24(a0)
	rts
loc_204fe4:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204fc2

sub_204ffc:
	tst.b ($f7ca).w
	bne.s loc_205022
	move.w $14(a0),d0
	bpl.s loc_20500a
	neg.w d0
loc_20500a:
	cmpi.w #$80,d0
	bcs.s loc_205022
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_205022
	btst.b #$1,($f602).w
	bne.s sub_205024
loc_205022:
	rts

sub_205024:
	btst.b #$2,$22(a0)
	beq.s loc_20502e
	rts
loc_20502e:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20504a
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_20505a
loc_20504a:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_20505a:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bne.s loc_20506c
	move.w #$200,$14(a0)
loc_20506c:
	rts

sub_20506e:
	tst.b $2a(a0)
	beq.s loc_205076
	rts
loc_205076:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_205088
	tst.w $14(a0)
	beq.w loc_20514a
loc_205088:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20514a
	btst.b #$3,$22(a0)
	beq.s loc_2050a4
	jsr (sub_205d2e).l
	beq.s loc_2050d4
loc_2050a4:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206a86
	cmpi.w #$6,d1
	blt.w loc_20514a
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_2050ca
	move.w #$380,d2
loc_2050ca:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_2050d4:
	jsr (sub_2007d6).l
	muls.w d2,d1
	asr.l #$8,d1
	add.w d1,$10(a0)
	muls.w d2,d0
	asr.l #$8,d0
	add.w d0,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	addq.l #$4,a7
	move.b #$1,$3c(a0)
	clr.b $38(a0)
	clr.b ($f788).w
	move.w #$92,d0
	jsr (sub_2022d2).l
	btst.b #$2,$22(a0)
	bne.s loc_20514c
	tst.b ($ff195b).l
	beq.s loc_20512e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_20513e
loc_20512e:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_20513e:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_20514a:
	rts
loc_20514c:
	bset.b #$4,$22(a0)
	rts

sub_205154:
	tst.b $3c(a0)
	beq.s loc_205186
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_20516a
	move.w #$fe00,d1
loc_20516a:
	cmp.w $12(a0),d1
	ble.s loc_205184
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205184
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205184:
	rts
loc_205186:
	rts

sub_205188:
	tst.b $2a(a0)
	bne.s loc_2051c2
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2051c2
	move.b $26(a0),d0
	jsr (sub_2007d6).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_2051c2
	bmi.s loc_2051be
	tst.w d0
	beq.s loc_2051bc
	add.w d0,$14(a0)
loc_2051bc:
	rts
loc_2051be:
	add.w d0,$14(a0)
loc_2051c2:
	rts

sub_2051c4:
	tst.b $2a(a0)
	bne.s loc_205204
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205204
	move.b $26(a0),d0
	jsr (sub_2007d6).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2051fa
	tst.w d0
	bpl.s loc_2051f4
	asr.l #$2,d0
loc_2051f4:
	add.w d0,$14(a0)
	rts
loc_2051fa:
	tst.w d0
	bmi.s loc_205200
	asr.l #$2,d0
loc_205200:
	add.w d0,$14(a0)
loc_205204:
	rts

sub_205206:
	nop
	tst.b $38(a0)
	bne.s loc_205240
	tst.w $3e(a0)
	bne.s loc_205242
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205240
	move.w $14(a0),d0
	bpl.s loc_20522a
	neg.w d0
loc_20522a:
	cmpi.w #$280,d0
	bcc.s loc_205240
	clr.w $14(a0)
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205240:
	rts
loc_205242:
	subq.w #$1,$3e(a0)
	rts

sub_205248:
	btst.b #$1,$2c(a0)
	bne.s loc_20526a
	move.b $26(a0),d0
	beq.s loc_20526a
	bpl.s loc_205260
	addq.b #$2,d0
	bcc.s loc_20525e
	moveq #$0,d0
loc_20525e:
	bra.s loc_205266
loc_205260:
	subq.b #$2,d0
	bcc.s loc_205266
	moveq #$0,d0
loc_205266:
	move.b d0,$26(a0)
loc_20526a:
	rts

sub_20526c:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a6e).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205350
	cmpi.b #$80,d0
	beq.w loc_2053b2
	cmpi.b #$c0,d0
	beq.w loc_20540e
	bsr.w sub_206d9c
	tst.w d1
	bpl.s loc_2052be
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052be:
	bsr.w sub_206bfe
	tst.w d1
	bpl.s loc_2052d0
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052d0:
	bsr.w sub_206aae
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20534e
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2052ee
	cmp.b d2,d0
	blt.s loc_20534e
loc_2052ee:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205470
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20532c
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20531e
	asr.w $12(a0)
	bra.s loc_205340
loc_20531e:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_20532c:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205340
	move.w #$fc0,$12(a0)
loc_205340:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20534e
	neg.w $14(a0)
loc_20534e:
	rts
loc_205350:
	bsr.w sub_206d9c
	tst.w d1
	bpl.s loc_20536a
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20536a:
	bsr.w sub_206c56
	tst.w d1
	bpl.s loc_205384
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205382
	move.w #$0,$12(a0)
loc_205382:
	rts
loc_205384:
	tst.w $12(a0)
	bmi.s loc_2053b0
	bsr.w sub_206aae
	tst.w d1
	bpl.s loc_2053b0
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205470
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2053b0:
	rts
loc_2053b2:
	bsr.w sub_206d9c
	tst.w d1
	bpl.s loc_2053c4
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2053c4:
	bsr.w sub_206bfe
	tst.w d1
	bpl.s loc_2053d6
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2053d6:
	bsr.w sub_206c56
	tst.w d1
	bpl.s loc_20540c
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2053f6
	move.w #$0,$12(a0)
	rts
loc_2053f6:
	move.b d3,$26(a0)
	bsr.w sub_2054d4
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20540c
	neg.w $14(a0)
loc_20540c:
	rts
loc_20540e:
	bsr.w sub_206bfe
	tst.w d1
	bpl.s loc_205428
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205428:
	bsr.w sub_206c56
	tst.w d1
	bpl.s loc_205442
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205440
	move.w #$0,$12(a0)
loc_205440:
	rts
loc_205442:
	tst.w $12(a0)
	bmi.s loc_20546e
	bsr.w sub_206aae
	tst.w d1
	bpl.s loc_20546e
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205470
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20546e:
	rts

sub_205470:
	btst.b #$4,$22(a0)
	beq.s loc_20547a
	nop
loc_20547a:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2054c6
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2054b0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_2054c0
loc_2054b0:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2054c0:
	move.b #$0,$1c(a0)
loc_2054c6:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2054d4:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2037fe).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20550e
	subi.w #$20,$12(a0)
loc_20550e:
	bsr.w sub_205524
	bsr.w sub_204f90
	bsr.w sub_2043da
	bsr.w sub_205794
	jmp (sub_203854).l

sub_205524:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_2070a0
	bsr.w sub_20526c
	btst.b #$1,$22(a0)
	bne.s loc_20555e
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_20555e:
	rts
	.incbin 21856, 248

sub_205658:
	rts
	.incbin 22106, 314

sub_205794:
	lea (dat_205a84).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2057b6
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2057b6:
	bsr.w sub_205a26
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20582e
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2057fc
	move.b d0,$1e(a0)

sub_2057e0:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2057f4
	bpl.s loc_2057f4
	cmpi.b #$fd,d0
	bge.s loc_2057fe
loc_2057f4:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2057fc:
	rts
loc_2057fe:
	addq.b #$1,d0
	bne.s loc_20580e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2057f4
loc_20580e:
	addq.b #$1,d0
	bne.s loc_205822
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2057f4
loc_205822:
	addq.b #$1,d0
	bne.s loc_20582c
	move.b $2(a1,d1.w),$1c(a0)
loc_20582c:
	rts
loc_20582e:
	subq.b #$1,$1e(a0)
	bpl.s loc_2057fc
	addq.b #$1,d0
	bne.w loc_2058e8
	tst.b ($ff195b).l
	bne.w loc_2059b0
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205856
	not.b d0
loc_205856:
	btst.b #$1,$2c(a0)
	bne.s loc_205864
	addi.b #$10,d0
	bra.s loc_205866
loc_205864:
	addq.b #$8,d0
loc_205866:
	bpl.s loc_20586a
	moveq #$3,d1
loc_20586a:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20595c
	move.w $14(a0),d2
	bpl.s loc_205888
	neg.w d2
loc_205888:
	btst.b #$1,$2c(a0)
	beq.s loc_2058a0
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205c86).l,a1
	bra.s loc_2058ca
loc_2058a0:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205c60).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2058ca
	lea (dat_205b04).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2058ca
	lea (dat_205afc).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2058ca:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2058d8
	moveq #$0,d2
loc_2058d8:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2057e0
	add.b d3,$1a(a0)
	rts
loc_2058e8:
	addq.b #$1,d0
	bne.s loc_205958
	move.w $14(a0),d2
	bpl.s loc_2058f4
	neg.w d2
loc_2058f4:
	lea (dat_205be2).l,a1
	tst.b ($ff195b).l
	bne.s loc_205932
	lea (dat_205b14).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205926
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205932
	lea (dat_205c8e).l,a1
	bra.s loc_205932
loc_205926:
	cmpi.w #$600,d2
	bcc.s loc_205932
	lea (dat_205b0c).l,a1
loc_205932:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20593c
	moveq #$0,d2
loc_20593c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057e0
loc_205958:
	addq.b #$1,d0
	bne.s loc_20599c
loc_20595c:
	move.w $14(a0),d2
	bmi.s loc_205964
	neg.w d2
loc_205964:
	addi.w #$800,d2
	bpl.s loc_20596c
	moveq #$0,d2
loc_20596c:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205bf4).l,a1
	tst.b ($ff195b).l
	bne.s loc_205986
	lea (dat_205b1c).l,a1
loc_205986:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057e0
loc_20599c:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2059b0:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2059c2
	not.b d0
loc_2059c2:
	addi.b #$10,d0
	bpl.s loc_2059ca
	moveq #$0,d1
loc_2059ca:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2059f8
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2058e8
loc_2059f8:
	move.w $14(a0),d2
	bpl.s loc_205a00
	neg.w d2
loc_205a00:
	lea (dat_205bdc).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205a12
	lea (dat_205bd6).l,a1
loc_205a12:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205a1c
	moveq #$0,d2
loc_205a1c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2057e0

sub_205a26:
	tst.b ($ff195b).l
	beq.s loc_205a32
	move.b dat_205a34(pc,d0.w),d0
loc_205a32:
	rts
dat_205a34:
	.incbin 23092, 80
dat_205a84:
	.incbin 23172, 120
dat_205afc:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205b04:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205b0c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205b14:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205b1c:
	.incbin 23324, 186
dat_205bd6:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205bdc:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205be2:
	.incbin 23522, 18
dat_205bf4:
	.incbin 23540, 108
dat_205c60:
	.incbin 23648, 38
dat_205c86:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205c8e:
	.incbin 23694, 60

sub_205cca:
	tst.b (a0)
	beq.w loc_205d2c
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205d2c
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205d2c
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205cfe:
	moveq #$0,d2
	move.b (a2)+,d2
	move.w d2,d0
	lsr.b #$4,d0
	lsl.w #$8,d2
	move.b (a2)+,d2
	andi.w #$fff,d2
	lsl.l #$5,d2
	lea (dat_220000).l,a1
	adda.l d2,a1
loc_205d18:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205d18
	dbf d1,loc_205cfe
loc_205d2c:
	rts

sub_205d2e:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205d98
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a6e).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205d86
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205d86:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205d98:
	rts
loc_205d9a:
	move.w #$e,d0

sub_205d9e:
	cmpi.w #$67,d0
	bne.s loc_205dac
	move.b #$1,($ff1958).l
loc_205dac:
	move.w d0,($a12010).l
loc_205db2:
	move.w ($a12020).l,d0
	beq.s loc_205db2
	cmp.w ($a12020).l,d0
	bne.s loc_205db2
	move.w #$0,($a12010).l
loc_205dca:
	move.w ($a12020).l,d0
	bne.s loc_205dca
	move.w ($a12020).l,d0
	bne.s loc_205dca
	rts
	dc.b $00,$00

sub_205dde:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205dfa
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205dfa:
	subq.b #$1,$1e(a0)
	bpl.s loc_205e3a
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205e3c
loc_205e16:
	move.b d0,d1
	andi.b #$1f,d0
	move.b d0,$1a(a0)
	move.b $22(a0),d0
	rol.b #$3,d1
	eor.b d0,d1
	andi.b #$3,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	addq.b #$1,$1b(a0)
loc_205e3a:
	rts
loc_205e3c:
	addq.b #$1,d0
	bne.s loc_205e4c
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205e16
loc_205e4c:
	addq.b #$1,d0
	bne.s loc_205e60
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205e16
loc_205e60:
	addq.b #$1,d0
	bne.s loc_205e6a
	move.b $2(a1,d1.w),$1c(a0)
loc_205e6a:
	addq.b #$1,d0
	bne.s loc_205e72
	addq.b #$2,$24(a0)
loc_205e72:
	addq.b #$1,d0
	bne.s loc_205e80
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205e80:
	addq.b #$1,d0
	bne.s loc_205e88
	addq.b #$2,$25(a0)
loc_205e88:
	rts
	.incbin 24202, 654

sub_206118:
	tst.b $25(a0)
	bne.s loc_206148
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207878).l
	bne.s loc_206148
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206148:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206158(pc,d0.w),d0
	jmp dat_206158(pc,d0.w)
dat_206158:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_206180
	andi.b #$7f,$2(a0)
loc_206180:
	move.l #$23a810,$4(a0)
	bsr.s sub_206118
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_2061ae
	move.w #$100,$1c(a0)
loc_2061ae:
	lea (dat_23a7fc).l,a1
	bsr.w sub_205dde
	jmp (sub_203854).l
	tst.b $25(a0)
	beq.s loc_2061ca
	jmp (sub_203900).l
loc_2061ca:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2061ec(pc,d0.w),d0
	jsr dat_2061ec(pc,d0.w)
	jmp (sub_203854).l
dat_2061ec:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_20621a
	andi.b #$7f,$2(a0)
loc_20621a:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_206240
	bsr.w sub_2062ac
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_2062a2
loc_206240:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206b5c).l
	tst.w d1
	bpl.s loc_20629e
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206288
	bsr.w sub_2062ac
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2062d2
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206288:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_2062a2
loc_20629e:
	addq.w #$2,$c(a0)
loc_2062a2:
	lea (dat_2336bc).l,a1
	bra.w sub_205dde

sub_2062ac:
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	add.w d1,d0
	lea ($ff1200).l,a1
	lea $2(a1,d0.w),a1
	rts

sub_2062d2:
	andi.w #$3f,d0
	add.w d0,d0
	add.w d0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	lsl.w #$8,d1
	add.w d1,d0
	lea ($ff1600).l,a1
	rts
	move.w #$26d7,$2(a0)
	move.b #$2,$1c(a0)
	bra.s loc_2062a2
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_2062a2
	.incbin 25358, 20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$23a7e4,$4(a0)
	move.w #$3e4,$2(a0)
	tst.b ($ff152e).l
	bne.s loc_206348
	move.w #$39e,$2(a0)
loc_206348:
	move.b #$1,$18(a0)
	lea (dat_23a7dc).l,a1
	bsr.w sub_205dde
	jmp (sub_203854).l
	.incbin 25438, 756

sub_206652:
	bclr.b #$7,($ff156b).l
	beq.s loc_2066a0
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2066a2(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206676:
	move.l (a1)+,(a2)+
	dbf d0,loc_206676
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2066a0:
	rts
dat_2066a2:
	.incbin 26274, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2066d8(pc,d0.w),d0
	jsr dat_2066d8(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_2066d2
	jsr (sub_203854).l
loc_2066d2:
	jmp (loc_2078ae).l
dat_2066d8:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23a624,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_2067ba
	cmpi.b #$6,$24(a1)
	bcc.w loc_2067ba
	bsr.w sub_20681e
	beq.w loc_2067ba
	tst.b $28(a0)
	bne.s loc_20676c
	move.w $10(a1),d0
	bpl.s loc_20672c
	neg.w d0
loc_20672c:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_20673e
	move.w #$d00,d1
loc_20673e:
	cmp.w d1,d0
	bcc.s loc_206744
	move.w d1,d0
loc_206744:
	tst.w $10(a1)
	bpl.s loc_20674c
	neg.w d0
loc_20674c:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_20679c
	neg.w $14(a1)
	bra.s loc_20679c
loc_20676c:
	cmpi.b #$2,$28(a0)
	bcc.s loc_2067bc
	move.w $12(a1),d0
	bpl.s loc_20677c
	neg.w d0
loc_20677c:
	cmpi.w #$d00,d0
	bcc.s loc_206786
	move.w #$d00,d0
loc_206786:
	tst.w $12(a1)
	bpl.s loc_20678e
	neg.w d0
loc_20678e:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_20679c:
	bset.b #$2,$22(a1)
	bne.s loc_2067ba
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_2067ba:
	rts
loc_2067bc:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206808
	cmpi.b #$2,$28(a0)
	bne.s loc_2067d8
	tst.w $12(a1)
	bpl.s loc_20679c
	bra.s loc_2067de
loc_2067d8:
	tst.w $12(a1)
	bmi.s loc_20679c
loc_2067de:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_2067f0
	btst.l #$2,d1
	beq.s loc_20679c
	neg.w d0
loc_2067f0:
	cmpi.b #$2,$28(a0)
	beq.s loc_2067fe
	bset.b #$1,$22(a1)
loc_2067fe:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_20679c
loc_206808:
	tst.w $10(a1)
	bmi.s loc_20679c
	btst.l #$0,d1
	beq.w loc_20679c
	move.w #$f600,d0
	bra.w loc_20678e

sub_20681e:
	tst.b ($ff1906).l
	bne.s loc_206852
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_206852
	cmpi.w #$50,d0
	bcc.s loc_206852
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_206852
	cmpi.w #$50,d0
	bcc.s loc_206852
	moveq #$1,d0
	rts
loc_206852:
	moveq #$0,d0
	rts
loc_206856:
	move.w ($ff1548).l,$8(a6)
	move.w ($ff154a).l,$c(a6)
	move.b ($ff154c).l,$22(a6)
	move.w ($ff1564).l,$14(a6)
	move.w ($ff1566).l,$10(a6)
	move.w ($ff1568).l,$12(a6)
	move.w ($ff1528).l,($ff1512).l
	move.b ($ff1545).l,($ff150d).l
	move.l ($ff1570).l,($ff1514).l
	move.b ($ff1562).l,($f64d).w
	move.w ($ff154e).l,($f72e).w
	move.w ($ff154e).l,($f726).w
	move.w ($ff1550).l,($f700).w
	move.w ($ff1552).l,($f704).w
	move.w ($ff1554).l,($f708).w
	move.w ($ff1556).l,($f70c).w
	move.w ($ff1558).l,($f710).w
	move.w ($ff155a).l,($f714).w
	move.w ($ff155c).l,($f718).w
	move.w ($ff155e).l,($f71c).w
	cmpi.b #$6,($ff1506).l
	bne.s loc_206910
	move.b ($ff1593).l,($ff195b).l
loc_206910:
	tst.b ($ff1522).l
	bpl.s loc_206926
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206926:
	rts

sub_206928:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206856
	move.b ($ff1523).l,($ff1522).l
	move.w ($ff1524).l,$8(a6)
	move.w ($ff1526).l,$c(a6)
	clr.w ($ff1512).l
	clr.b ($ff150d).l
	move.l ($ff152a).l,($ff1514).l
	move.b #$3b,($ff1517).l
	subq.b #$1,($ff1516).l
	move.b ($ff1543).l,($f64d).w
	move.w ($ff1530).l,($f72e).w
	move.w ($ff1530).l,($f726).w
	move.w ($ff1532).l,($f700).w
	move.w ($ff1534).l,($f704).w
	move.w ($ff1536).l,($f708).w
	move.w ($ff1538).l,($f70c).w
	move.w ($ff153a).l,($f710).w
	move.w ($ff153c).l,($f714).w
	move.w ($ff153e).l,($f718).w
	move.w ($ff1540).l,($f71c).w
	cmpi.b #$6,($ff1506).l
	bne.s loc_2069e2
	move.b ($ff1591).l,($ff195b).l
loc_2069e2:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206a04
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206a04:
	tst.b ($ff1522).l
	bpl.s loc_206a1a
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206a1a:
	rts

sub_206a1c:
	move.l $8(a0),d3
	move.l $c(a0),d2
	move.w $10(a0),d1
	ext.l d1
	asl.l #$8,d1
	add.l d1,d3
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	add.l d1,d2
	swap d2
	swap d3
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b d0,d1
	addi.b #$20,d0
	bpl.s loc_206a58
	move.b d1,d0
	bpl.s loc_206a52
	subq.b #$1,d0
loc_206a52:
	addi.b #$20,d0
	bra.s loc_206a62
loc_206a58:
	move.b d1,d0
	bpl.s loc_206a5e
	addq.b #$1,d0
loc_206a5e:
	addi.b #$1f,d0
loc_206a62:
	andi.b #$c0,d0
	beq.w loc_206b32
	cmpi.b #$80,d0
	beq.w loc_206cce
	andi.b #$38,d1
	bne.s loc_206a7a
	addq.w #$8,d2
loc_206a7a:
	cmpi.b #$40,d0
	beq.w loc_206da4
	bra.w loc_206c06

sub_206a86:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206d2c
	cmpi.b #$80,d0
	beq.w sub_206c56
	cmpi.b #$c0,d0
	beq.w loc_206b96

sub_206aae:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	jsr (sub_20112c).l
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	lea ($f76a).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	jsr (sub_20112c).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206b12:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206b20
	move.b ($f768).w,d3
	exg d0,d1
loc_206b20:
	btst.l #$0,d3
	beq.s loc_206b28
	move.b d2,d3
loc_206b28:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b32:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20112c).l
	move.b #$0,d2
loc_206b4e:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b5a
	move.b d2,d3
loc_206b5a:
	rts

sub_206b5c:
	move.w $8(a0),d3
	move.w $c(a0),d2
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	jsr (sub_20112c).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b94
	move.b #$0,d3
loc_206b94:
	rts
loc_206b96:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20129c).l
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f76a).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20129c).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206b12

sub_206bfe:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c06:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20129c).l
	move.b #$c0,d2
	bra.w loc_206b4e
	.incbin 27686, 16
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20129c).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c54
	move.b #$c0,d3
loc_206c54:
	rts

sub_206c56:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20112c).l
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	lea ($f76a).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20112c).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206b12

sub_206cc6:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cce:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20112c).l
	move.b #$80,d2
	bra.w loc_206b4e
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20112c).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206d2a
	move.b #$80,d3
loc_206d2a:
	rts
loc_206d2c:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20129c).l
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d3
	eori.w #$f,d3
	lea ($f76a).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20129c).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206b12

sub_206d9c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206da4:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20129c).l
	move.b #$40,d2
	bra.w loc_206b4e
	.incbin 28104, 16
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20129c).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206df6
	move.b #$40,d3
loc_206df6:
	rts

sub_206df8:
	btst.b #$6,$2c(a0)
	beq.s loc_206e04
	moveq #$0,d0
	rts
loc_206e04:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206e28
	addi.w #$c,d3
	moveq #$a,d5
loc_206e28:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206e36:
	tst.b $1(a1)
	bpl.s loc_206e42
	move.b $20(a1),d0
	bne.s loc_206e4e
loc_206e42:
	lea $40(a1),a1
	dbf d6,loc_206e36
	moveq #$0,d0
	rts
loc_206e4e:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2071d6).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206e76
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206e7c
	bra.w loc_206e42
loc_206e76:
	cmp.w d4,d0
	bhi.w loc_206e42
loc_206e7c:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206e94
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206e9a
	bra.w loc_206e42
loc_206e94:
	cmp.w d5,d0
	bhi.w loc_206e42
loc_206e9a:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206f0e
	cmpi.b #$c0,d1
	beq.w loc_2070f8
	tst.b d1
	bmi.w sub_206fd8
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206ed2
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206ed0
	addq.b #$2,$24(a1)
loc_206ed0:
	rts
loc_206ed2:
	tst.w $12(a0)
	bpl.s loc_206efc
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206f0c
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206f0c
	addq.b #$4,$25(a1)
	rts
loc_206efc:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206f0c
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206f0c:
	rts

sub_206f0e:
	tst.b ($ff1521).l
	bne.s loc_206f28
	tst.b ($ff151f).l
	bne.s loc_206f28
	cmpi.b #$2,$1c(a0)
	bne.w sub_206fd8
loc_206f28:
	tst.b $21(a1)
	beq.s loc_206f52
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206f50
	bset.b #$7,$22(a1)
loc_206f50:
	rts
loc_206f52:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206f6a
	moveq #$6,d0
loc_206f6a:
	move.w d0,$3e(a1)
	move.w dat_206fca(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206f84
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206f84:
	bsr.w sub_20ae32
	move.w #$96,d0
	jsr (sub_2022d2).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206fba
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206fc2
	neg.w $12(a0)
	rts
loc_206fba:
	addi.w #$100,$12(a0)
	rts
loc_206fc2:
	subi.w #$100,$12(a0)
	rts
dat_206fca:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206fd8:
	tst.b ($ff1521).l
	bne.s loc_206fe8
	tst.b ($ff151f).l
	beq.s loc_206fec
loc_206fe8:
	moveq #$ffffffff,d0
	rts
loc_206fec:
	nop
	tst.w $30(a0)
	bne.s loc_206fe8
	movea.l a1,a2
loc_206ff6:
	clr.b $2a(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	tst.b ($ff151e).l
	bne.s loc_207030
	tst.w ($ff1512).l
	beq.w loc_207096
	jsr (sub_207878).l
	bne.s loc_207030
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207030:
	bclr.b #$0,($ff151e).l
	bne.s loc_207042
	move.b #$0,($ff156f).l
loc_207042:
	move.b #$4,$24(a0)
	bsr.w sub_205470
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_207072
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_207072:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_207080
	neg.w $10(a0)
loc_207080:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207096:
	tst.w ($ff1588).l
	bne.w loc_207030

sub_2070a0:
	tst.w ($ff1906).l
	bne.s loc_2070f4
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205470
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2022d2).l
loc_2070f4:
	moveq #$ffffffff,d0
	rts
loc_2070f8:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207180
	cmpi.b #$23,d1
	beq.w loc_207180
	cmpi.b #$38,d1
	beq.w loc_2071c8
	cmpi.b #$3a,d1
	beq.w loc_2071c8
	cmpi.b #$3b,d1
	beq.w loc_2071c8
	tst.b ($f7aa).w
	beq.w loc_20717e
	cmpi.b #$1,($f7aa).w
	beq.s loc_207148
	cmpi.b #$4,($f7aa).w
	beq.s loc_20716a
	cmpi.b #$5,($f7aa).w
	beq.s loc_207178
loc_207148:
	cmpi.b #$3c,d1
	blt.s loc_20717e
	cmpi.b #$3f,d1
	bgt.s loc_20717e
	bsr.w sub_206f0e
	tst.b $20(a1)
	bne.s loc_207162
	addq.b #$3,$21(a1)
loc_207162:
	clr.b $20(a1)
	bra.w loc_207180
loc_20716a:
	cmpi.b #$3f,d1
	beq.s loc_20718c
	cmpi.b #$3e,d1
	beq.s loc_207186
	bra.s loc_20717e
loc_207178:
	cmpi.b #$3d,d1
	beq.s loc_207186
loc_20717e:
	rts
loc_207180:
	addq.b #$1,$21(a1)
	rts
loc_207186:
	bsr.w sub_206fd8
	bra.s loc_207180
loc_20718c:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_2071c6
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_2071c6
	neg.w $10(a0)
loc_2071c6:
	rts
loc_2071c8:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2071d4
	addq.b #$1,$21(a1)
loc_2071d4:
	rts
dat_2071d6:
	.incbin 29142, 126
loc_207254:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_20726a
	move.l #$4000,(dat_2073e4).l
	bra.s loc_20728a
loc_20726a:
	addi.l #$2000,(dat_2073e4).l
	cmpi.l #$80000,(dat_2073e4).l
	bls.s loc_20728a
	move.l #$80000,(dat_2073e4).l
loc_20728a:
	move.l (dat_2073e4).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20729c
	sub.l d0,$c(a0)
loc_20729c:
	btst.b #$1,($f604).w
	beq.s loc_2072a8
	add.l d0,$c(a0)
loc_2072a8:
	btst.b #$2,($f604).w
	beq.s loc_2072b4
	sub.l d0,$8(a0)
loc_2072b4:
	btst.b #$3,($f604).w
	beq.s loc_2072c0
	add.l d0,$8(a0)
loc_2072c0:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f44).l
	move.w (a1),($ff194e).l
	lea (dat_2073e8).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207302
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2072fc
	move.b #$0,d1
loc_2072fc:
	move.b d1,($ff1904).l
loc_207302:
	btst.b #$7,($f605).w
	beq.s loc_207322
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20731c
	add.b (a2),d1
loc_20731c:
	move.b d1,($ff1904).l
loc_207322:
	moveq #$0,d1
	move.b ($ff1904).l,d1
	mulu.w #$c,d1
	move.l $4(a2,d1.w),$4(a0)
	move.w $8(a2,d1.w),$2(a0)
	move.b $3(a2,d1.w),$18(a0)
	move.b $d(a2,d1.w),$1a(a0)
	move.b $c(a2,d1.w),($ff1954).l
	move.b $b(a2,d1.w),d0
	ori.b #$4,d0
	move.b d0,$1(a0)
	move.b #$0,$1c(a0)
	btst.b #$5,($f605).w
	beq.s loc_2073ae
	bsr.w sub_207878
	bne.s loc_2073ae
	moveq #$0,d1
	move.b ($ff1904).l,d1
	mulu.w #$c,d1
	move.b $2(a2,d1.w),$0(a1)
	move.b $a(a2,d1.w),$28(a1)
	move.b $c(a2,d1.w),$29(a1)
	move.b $d(a2,d1.w),$1a(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),d0
	andi.b #$3,d0
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2073ae:
	btst.b #$4,($f605).w
	beq.s loc_2073de
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2073de:
	jmp (sub_203854).l
dat_2073e4:
	dc.b $00,$00,$40,$00
dat_2073e8:
	.incbin 29672, 638

sub_207666:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207674:
	clr.l (a2)+
	dbf d0,loc_207674
	rts

sub_20767c:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20768a(pc,d0.w),d0
	jmp dat_20768a(pc,d0.w)
dat_20768a:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_20792a).l,a0
	movea.l a0,a1
	adda.w (a0),a0
	move.l a0,($f770).w
	move.l a0,($f774).w
	adda.w $2(a1),a1
	move.l a1,($f778).w
	move.l a1,($f77c).w
	lea ($ff1200).l,a2
	move.w #$101,(a2)
	moveq #$0,d2
	move.w ($f700).w,d6
	subi.w #$80,d6
	bcc.s loc_2076c8
	moveq #$0,d6
loc_2076c8:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2076d0:
	cmp.w (a0),d6
	bls.s loc_2076e2
	tst.b $4(a0)
	bpl.s loc_2076de
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2076de:
	addq.w #$8,a0
	bra.s loc_2076d0
loc_2076e2:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207702
loc_2076f0:
	cmp.w (a0),d6
	bls.s loc_207702
	tst.b $4(a0)
	bpl.s loc_2076fe
	addq.b #$1,$1(a2)
loc_2076fe:
	addq.w #$8,a0
	bra.s loc_2076f0
loc_207702:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2077ec
	bge.s loc_207792
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20776e
loc_20773c:
	cmp.w -$8(a0),d6
	bge.s loc_20776e
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207752
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207752:
	bsr.w sub_207810
	bne.s loc_20775c
	subq.w #$8,a0
	bra.s loc_20773c
loc_20775c:
	tst.b $4(a0)
	bpl.s loc_20776c
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20776c:
	addq.w #$8,a0
loc_20776e:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20777a:
	cmp.w -$8(a0),d6
	bgt.s loc_20778c
	tst.b -$4(a0)
	bpl.s loc_207788
	subq.b #$1,(a2)
loc_207788:
	subq.w #$8,a0
	bra.s loc_20777a
loc_20778c:
	move.l a0,($f770).w
	rts
loc_207792:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2077a6:
	cmp.w (a0),d6
	bls.s loc_2077c8
	tst.b $4(a0)
	bpl.s loc_2077b4
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077b4:
	bsr.w sub_207810
	beq.s loc_2077a6
	tst.b $4(a0)
	bpl.s loc_2077c8
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077c8:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2077e8
loc_2077d6:
	cmp.w (a0),d6
	bls.s loc_2077e8
	tst.b $4(a0)
	bpl.s loc_2077e4
	addq.b #$1,$1(a2)
loc_2077e4:
	addq.w #$8,a0
	bra.s loc_2077d6
loc_2077e8:
	move.l a0,($f774).w
loc_2077ec:
	rts

sub_2077ee:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	move.w d2,d3
	add.w d3,d3
	add.w d2,d3
	add.w d0,d3
	move.b $6(a0),d1
	rol.b #$3,d1
	andi.b #$7,d1
	btst.l d0,d1
	rts

sub_207810:
	bsr.s sub_2077ee
	beq.s loc_207822
	tst.b $4(a0)
	bpl.s loc_207828
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207828
loc_207822:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207828:
	bsr.w sub_207878
	bne.s loc_207876
	move.w (a0)+,$8(a1)
	move.w (a0)+,d0
	move.w d0,d1
	andi.w #$fff,d0
	move.w d0,$c(a1)
	rol.w #$2,d1
	andi.b #$3,d1
	move.b d1,$1(a1)
	move.b d1,$22(a1)
	move.b (a0)+,d0
	bpl.s loc_207858
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207858:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20786a
	nop
	nop
	nop
	nop
loc_20786a:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207876:
	rts

sub_207878:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207880:
	tst.b (a1)
	beq.s loc_20788c
	lea $40(a1),a1
	dbf d0,loc_207880
loc_20788c:
	rts

sub_20788e:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078ac
loc_2078a0:
	tst.b (a1)
	beq.s loc_2078ac
	lea $40(a1),a1
	dbf d0,loc_2078a0
loc_2078ac:
	rts
loc_2078ae:
	move.w $8(a0),d0
loc_2078b2:
	tst.b $1(a0)
	bmi.s loc_20791c
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20791c
loc_2078d0:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207912
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20790a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207902
	moveq #$0,d1
	bra.s loc_20790a
loc_207902:
	cmpi.w #$3,d1
	bcs.s loc_20790a
	moveq #$2,d1
loc_20790a:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207912:
	jsr (sub_203900).l
	moveq #$1,d0
	rts
loc_20791c:
	btst.b #$7,($ff152e).l
	bne.s loc_2078d0
	moveq #$0,d0
	rts
dat_20792a:
	.incbin 31018, 3152
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208594(pc,d0.w),d0
	jsr dat_208594(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_208594:
	dc.b $00,$0e,$00,$2c,$00,$7c,$00,$8c
	dc.b $00,$9c,$00,$e2,$01,$72
	ori.b #$4,$1(a0)
	move.w #$310,$2(a0)
	move.l #$2089b4,$4(a0)
	move.b #$78,$2a(a0)
	addq.b #$2,$24(a0)
	tst.b $2a(a0)
	beq.s loc_20860e
	subq.b #$1,$2a(a0)
	bne.s loc_20860e
	jsr (sub_207878).l
	bne.s loc_20860e
	move.l a0,$2a(a1)
	move.b #$5,$0(a1)
	move.b #$3,$18(a1)
	ori.b #$4,$1(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addi.w #$24,$c(a1)
	move.b #$4,$24(a1)
loc_20860e:
	rts
	bsr.w sub_2088c0
	lea (dat_208938).l,a1
	jmp (sub_205dde).l
	.incbin 34336, 576
loc_208860:
	movea.l a1,a2
	jsr (sub_207878).l
	bne.s loc_2088be
	bset.b #$0,$2c(a2)
	bset.b #$6,$2c(a2)
	move.l a2,$2a(a1)
	move.b #$5,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a2),$8(a1)
	move.w $c(a2),$c(a1)
	move.w #$2e1,$2(a1)
	move.l #$2089b4,$4(a1)
	move.b #$18,$17(a1)
	move.b #$18,$19(a1)
	move.b #$18,$16(a1)
	move.b #$8,$1a(a1)
	move.b #$8,$24(a1)
loc_2088be:
	rts

sub_2088c0:
	cmpi.b #$1,$1c(a0)
	bne.s loc_2088d8
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.s loc_2088d8
	bsr.s sub_2088da
	bne.s loc_208860
loc_2088d8:
	rts

sub_2088da:
	tst.b ($ff151f).l
	bne.s loc_208934
	tst.b ($ff1521).l
	bne.s loc_208934
	cmpi.b #$4,$24(a1)
	bcc.s loc_208934
	tst.b $2c(a1)
	bne.s loc_208934
	move.b $17(a1),d1
	ext.w d1
	addi.w #$10,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_208934
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_208934
	move.b $16(a1),d1
	ext.w d1
	addi.w #$20,d1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_208934
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_208934
	moveq #$1,d0
	rts
loc_208934:
	moveq #$0,d0
	rts
dat_208938:
	.incbin 35128, 314
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208a8c(pc,d0.w),d0
	jsr dat_208a8c(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_208a8c:
	dc.b $00,$0a,$00,$76,$00,$a6,$01,$48
	dc.b $01,$64
	ori.b #$4,$1(a0)
	move.w #$400,$2(a0)
	move.l #$208c20,$4(a0)
	move.w $8(a0),$2e(a0)
	move.b #$1c,$17(a0)
	move.b #$1c,$19(a0)
	move.b #$4,$16(a0)
	addq.b #$2,$24(a0)
	jsr (sub_20788e).l
	move.b #$4,$0(a1)
	ori.b #$4,$1(a1)
	move.w #$400,$2(a1)
	move.l #$208c20,$4(a1)
	move.b #$4,$17(a1)
	move.b #$c,$16(a1)
	move.b #$1,$1a(a1)
	move.l a0,$2a(a1)
	move.b #$8,$24(a1)
	lea ($d000).w,a1
	jsr (sub_209434).l
	beq.s loc_208b30
	bset.b #$0,$2c(a1)
	move.w $8(a0),$8(a1)
	bclr.b #$0,$22(a1)
	move.b #$3a,$1c(a1)
	addq.b #$2,$24(a0)
	move.w #$c00,$10(a0)
loc_208b30:
	rts
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	move.l $8(a0),d1
	add.l d0,d1
	move.l d1,$8(a0)
	lea ($d000).w,a1
	jsr (sub_209434).l
	move.w ($f604).w,d0
	andi.b #$70,d0
	beq.s loc_208b96
	bclr.b #$0,$2c(a1)
	move.w #$f980,$12(a1)
	move.w $10(a0),$10(a1)
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	bset.b #$2,$22(a1)
	bclr.b #$5,$22(a1)
	move.b #$2,$1c(a1)
	move.w #$92,d0
	jsr (sub_2022d2).l
loc_208b96:
	move.w $2e(a0),d0
	addi.w #$390,d0
	cmp.w $8(a0),d0
	bcc.s loc_208bd2
	move.w d0,$8(a0)
	addq.b #$2,$24(a0)
	btst.b #$3,$22(a0)
	beq.s loc_208bd2
	bclr.b #$0,$2c(a1)
	move.w $10(a0),$10(a1)
	move.b #$0,$1c(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
loc_208bd2:
	rts
	subq.w #$4,$8(a0)
	move.w $2e(a0),d0
	cmp.w $8(a0),d0
	bcs.s loc_208bee
	move.w $2e(a0),$8(a0)
	move.b #$2,$24(a0)
loc_208bee:
	rts
	movea.l $2a(a0),a1
	cmpi.b #$4,$24(a1)
	bcc.s loc_208c1e
	move.w $8(a1),$8(a0)
	subi.w #$18,$8(a0)
	move.w $c(a1),$c(a0)
	subi.w #$10,$c(a0)
	lea ($d000).w,a1
	jmp (sub_20943a).l
loc_208c1e:
	rts
	.incbin 35872, 32
	btst.b #$7,($ff152e).l
	beq.s loc_208c8a
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_208c8a
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208c7a
	moveq #$0,d1
	bra.s loc_208c82
loc_208c7a:
	cmpi.w #$3,d1
	bcs.s loc_208c82
	moveq #$2,d1
loc_208c82:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_208c8a:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_208cba
	cmpi.b #$6,$24(a6)
	bcc.s loc_208cba
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208cbc(pc,d0.w),d1
	jsr dat_208cbc(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_208cba
	jmp (loc_2078ae).l
loc_208cba:
	rts
dat_208cbc:
	dc.b $00,$08,$00,$52,$01,$18,$01,$32
	move.l #$23a624,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$541,$2(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	andi.b #$7f,d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_208f52(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	cmpi.b #$6,$24(a6)
	bcc.w loc_208dd2
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$20,d0
	cmpi.w #$40,d0
	bcc.w loc_208dd2
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$30,d1
	cmpi.w #$60,d1
	bcc.w loc_208dd2
	tst.b $2c(a6)
	bne.w loc_208dd2
	cmpi.b #$4,$24(a6)
	bne.s loc_208d5a
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_208d5a:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	tst.b $29(a0)
	beq.s loc_208d70
	bset.b #$6,$2c(a6)
loc_208d70:
	move.b #$2,$1c(a6)
	move.w #$800,$14(a6)
	bclr.b #$6,$1(a6)
	tst.b $28(a0)
	bpl.s loc_208d8e
	bset.b #$6,$1(a6)
loc_208d8e:
	cmpi.b #$4,$24(a6)
	bne.s loc_208d9a
	subq.b #$2,$24(a6)
loc_208d9a:
	move.w #$0,$10(a6)
	move.w #$0,$12(a6)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a6)
	bset.b #$1,$22(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	clr.b $32(a0)
	move.w #$91,d0
	jsr (sub_2022d2).l
loc_208dd2:
	rts
	.incbin 36308, 382
dat_208f52:
	.incbin 36690, 922

sub_2092ec:
	btst.b #$3,$22(a0)
	beq.s loc_20935c
	btst.b #$3,$22(a1)
	beq.s loc_20935c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20935c
	tst.b $2a(a1)
	beq.s loc_20931e
	move.w #$ab,d0
	jsr (sub_2022d2).l
loc_20931e:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_20934a
	cmpi.b #$17,$1c(a1)
	beq.s loc_20934a
	bclr.b #$0,$2c(a1)
loc_20934a:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20935c
	bclr.b #$1,$22(a1)
loc_20935c:
	rts

sub_20935e:
	cmpi.b #$4,$24(a1)
	bne.s loc_209370
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_209370:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_2093d0
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209392
	bclr.b #$3,$22(a0)
	bra.w sub_2092ec
loc_209392:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_2093d0
	tst.b ($ff195b).l
	beq.s loc_2093ba
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_2093ca
loc_2093ba:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_2093ca:
	move.b #$0,$1c(a1)
loc_2093d0:
	bset.b #$3,$22(a1)
	beq.s loc_2093f2
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_20942a
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_2093f2:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_20941e
	cmpi.b #$2,$24(a0)
	beq.s loc_209424
loc_20941e:
	move.w $10(a1),$14(a1)
loc_209424:
	bclr.b #$1,$22(a1)
loc_20942a:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_209434:
	move.b #$1,$25(a0)

sub_20943a:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2096ee
	btst.b #$6,$2c(a1)
	bne.w loc_2096ee
	cmpi.b #$6,$24(a1)
	bcc.w loc_2096ee
	tst.b $0(a1)
	beq.w loc_2096ee
	tst.b $1(a0)
	bpl.w loc_2096ee
	tst.b ($ff1906).l
	bne.w loc_2096ee
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2096ee
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2096ee
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2094a8
	btst.b #$3,$22(a0)
	bne.s loc_2094ba
	bra.w loc_2096ee
loc_2094a8:
	cmpi.b #$1,$25(a0)
	bne.s loc_2094ba
	tst.w $12(a1)
	beq.s loc_2094ba
	bmi.w loc_2096ee
loc_2094ba:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2096ee
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2096ee
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2094f0
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2094f0:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2094fe
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2094fe:
	cmp.w d4,d5
	bcs.w loc_209592
	cmpi.b #$1,$25(a0)
	beq.w loc_2096ee
	cmpi.b #$a,$0(a0)
	bne.s loc_209520
	btst.b #$1,$22(a1)
	bne.w loc_2096ee
loc_209520:
	cmpi.b #$4,d5
	bls.w loc_2096ee
	bsr.w sub_20973e
	move.l d0,-(a7)
	bsr.w sub_2092ec
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_20954a
	tst.w $10(a1)
	beq.s loc_20957a
	bpl.s loc_209552
	bra.s loc_20957a
loc_20954a:
	tst.w $10(a1)
	beq.s loc_20957a
	bpl.s loc_20957a
loc_209552:
	bsr.w sub_2096fe
	btst.b #$1,$22(a1)
	bne.s loc_209570
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209570:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20957a:
	bsr.w sub_2097b4
	bsr.w sub_2096fe
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209592:
	cmpi.b #$19,$0(a0)
	bne.s loc_2095a4
	btst.b #$2,$22(a1)
	bne.w loc_2096ee
loc_2095a4:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_2095ba
	bmi.w loc_20968a
loc_2095ba:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_2095cc
	tst.w $12(a1)
	beq.s loc_2095cc
	bmi.w loc_2096ee
loc_2095cc:
	move.w $c(a0),$c(a1)
	sub.w d1,$c(a1)
	moveq #$0,d1
	move.w $10(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $8(a1),d0
	add.l d1,d0
	move.l d0,$8(a1)
	move.b #$c0,d0
	tst.w $10(a0)
	beq.s loc_209618
	bpl.s loc_2095f8
	neg.b d0
loc_2095f8:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a1c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209618
	tst.w $10(a0)
	bpl.s loc_209614
	neg.w d1
loc_209614:
	add.w d1,$8(a1)
loc_209618:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209682
	tst.w $12(a0)
	bmi.s loc_209656
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206aae).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209656
	add.w d1,$c(a1)
	bra.w loc_2096ee
loc_209656:
	tst.w $12(a0)
	bpl.s loc_209682
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206cc6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209682
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070a0).l
	movem.l (a7)+,a0-a1
	bra.s loc_2096ee
loc_209682:
	bsr.w sub_20935e
	moveq #$1,d0
	rts
loc_20968a:
	cmpi.b #$1,$25(a0)
	beq.s loc_2096ee
	cmpi.b #$9,$0(a0)
	beq.s loc_2096ee
	cmpi.b #$a,$0(a0)
	bne.s loc_2096b4
	cmpi.b #$2,$25(a0)
	beq.s loc_2096d4
	btst.b #$1,$1(a0)
	bne.s loc_2096d4
	bra.s loc_2096ee
loc_2096b4:
	btst.b #$1,$22(a1)
	bne.s loc_2096d4
	tst.w $12(a0)
	beq.s loc_2096d4
	bmi.s loc_2096d4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070a0).l
	movem.l (a7)+,a0-a1
loc_2096d4:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_2097b4
	bsr.w sub_2092ec
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2096ee:
	bsr.w sub_2097b4
	bsr.w sub_2092ec
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2096fe:
	tst.w $10(a0)
	beq.s loc_20973c
	cmpi.b #$a,$0(a0)
	beq.s loc_20973c
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209718
	neg.b d0
loc_209718:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a1c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20973c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070a0).l
	movem.l (a7)+,a0-a1
loc_20973c:
	rts

sub_20973e:
	cmpi.b #$a,$0(a0)
	bne.s loc_20974e
	move.b #$0,$20(a1)
	rts
loc_20974e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2097a2
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_2097b2
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209770
	tst.w $10(a2)
	beq.s loc_2097b2
loc_209770:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209782
	cmp.w $8(a2),d1
	bcs.s loc_2097b2
	bra.s loc_209788
loc_209782:
	cmp.w $8(a2),d1
	bcc.s loc_2097b2
loc_209788:
	cmpi.b #$15,$0(a0)
	beq.s loc_2097b2
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070a0).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2097a2:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_2097b2:
	rts

sub_2097b4:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2097ce
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2097ce
	move.b #$0,$20(a1)
loc_2097ce:
	rts
	.incbin 38864, 374
loc_209946:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209954(pc,d0.w),d0
	jmp dat_209954(pc,d0.w)
dat_209954:
	.incbin 39252, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209946
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_2099aa
	tst.b $1(a0)
	bpl.s loc_2099b2
loc_2099aa:
	move.w dat_209a04(pc,d0.w),d1
	jsr dat_209a04(pc,d1.w)
loc_2099b2:
	bsr.w sub_203854
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2099e4
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2099e4:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203900
	rts
dat_209a04:
	.incbin 39428, 26
	addq.b #$2,$24(a0)
	move.l #$209d86,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209a74
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209d8c,$4(a0)
	bra.s loc_209ab6
loc_209a74:
	btst.l #$3,d0
	beq.s loc_209aa2
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209dd6,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c64a).l
	move.l (a7)+,d0
	bra.s loc_209ab6
loc_209aa2:
	btst.b #$1,$1(a0)
	beq.s loc_209ab6
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209ab6:
	btst.l #$1,d0
	beq.s loc_209ac2
	bset.b #$5,$2(a0)
loc_209ac2:
	andi.w #$2,d0
	move.w dat_209ace(pc,d0.w),$30(a0)
	rts
dat_209ace:
	dc.b $f0,$00,$f6,$00

sub_209ad2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20943a).l
	tst.b $1(a0)
	bpl.s loc_209aee
	lea ($d000).w,a1
	bsr.s sub_209ad2
	bne.s loc_209af0
loc_209aee:
	rts
loc_209af0:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2022d2).l
	lea (dat_209d78).l,a1
	bra.w sub_205dde
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 39748, 564
dat_209d78:
	.incbin 40312, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209e72(pc,d0.w),d1
	jmp dat_209e72(pc,d1.w)
dat_209e72:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209e7c:
	.incbin 40572, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209ed4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209ecc
	moveq #$0,d1
	bra.s loc_209ed4
loc_209ecc:
	cmpi.w #$3,d1
	bcs.s loc_209ed4
	moveq #$2,d1
loc_209ed4:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209ef0
	moveq #$6,d1
loc_209ef0:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209e7c).l,a1
	move.b $0(a1,d0.w),d5
	ext.w d5
	move.b $1(a1,d0.w),d6
	ext.w d6
	movea.l a0,a1
	move.w $8(a0),d2
	move.w $c(a0),d3
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209f40
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209f38
	moveq #$0,d0
	bra.s loc_209f40
loc_209f38:
	cmpi.w #$3,d0
	bcs.s loc_209f40
	moveq #$2,d0
loc_209f40:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a00e
	dbf d0,loc_209f40
	bclr.b #$7,(a2)
	bra.s loc_209f96
loc_209f52:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209f7e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209f76
	moveq #$0,d0
	bra.s loc_209f7e
loc_209f76:
	cmpi.w #$3,d0
	bcs.s loc_209f7e
	moveq #$2,d0
loc_209f7e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a00e
	dbf d0,loc_209f7e
	bclr.b #$7,(a2)
	bsr.w sub_20788e
	bne.w loc_20a01a
loc_209f96:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a2e0,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209fec
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209fec
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209fec:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20a00e:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209f52
loc_20a01a:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a040
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a038
	moveq #$0,d0
	bra.s loc_20a040
loc_20a038:
	cmpi.w #$3,d0
	bcs.s loc_20a040
	moveq #$2,d0
loc_20a040:
	lea $1(a2),a3
loc_20a044:
	btst.b #$0,-(a3)
	bne.w sub_203900
	dbf d0,loc_20a044
	tst.b $1(a0)
	bmi.s loc_20a074
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20a0ee
loc_20a074:
	tst.w ($ff190e).l
	bne.s loc_20a084
	move.b ($ff1913).l,$1a(a0)
loc_20a084:
	bra.w sub_203854
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a0f2
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a0d4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a0cc
	moveq #$0,d1
	bra.s loc_20a0d4
loc_20a0cc:
	cmpi.w #$3,d1
	bcs.s loc_20a0d4
	moveq #$2,d1
loc_20a0d4:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a2d8).l,a1
	bsr.w sub_205dde
	bra.w sub_203854
loc_20a0ee:
	bra.w sub_203900

sub_20a0f2:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a142
	bset.b #$1,($ff150d).l
	beq.s loc_20a12c
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a142
	bset.b #$2,($ff150d).l
	bne.s loc_20a142
loc_20a12c:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205d9e).l
loc_20a142:
	jmp (sub_2022d2).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a156(pc,d0.w),d1
	jmp dat_20a156(pc,d1.w)
dat_20a156:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_20a172
	move.w d0,d5
loc_20a172:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_20a182
loc_20a17a:
	bsr.w sub_207878
	bne.w loc_20a238
loc_20a182:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20a2e0,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a1e0
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20a1e0
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20a1e0:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_20a228
	move.w d4,d0
	jsr (sub_2007d6).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_20a228
	subi.w #$80,d4
	bcc.s loc_20a228
	move.w #$288,d4
loc_20a228:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_20a17a
loc_20a238:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_2022d2).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2037fe
	addi.w #$18,$12(a0)
	bmi.s loc_20a298
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20a298
	jsr (sub_206b5c).l
	tst.w d1
	bpl.s loc_20a298
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20a298:
	tst.b ($ff1916).l
	beq.s loc_20a2d4
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a2d4
	bra.w sub_203854
	.incbin 41650, 34
loc_20a2d4:
	bra.w sub_203900
dat_20a2d8:
	.incbin 41688, 402
loc_20a46a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a498(pc,d0.w),d0
	jsr dat_20a498(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a496
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a490
	btst.b #$0,($ff1505).l
	bne.s loc_20a496
loc_20a490:
	jmp (sub_203854).l
loc_20a496:
	rts
dat_20a498:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20aa72,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a4cc
	move.b #$13,$1a(a0)
loc_20a4cc:
	rts
loc_20a4ce:
	tst.b ($ff0f01).l
	beq.s loc_20a4dc
	jmp (sub_203900).l
loc_20a4dc:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a46a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a500(pc,d0.w),d0
	jsr dat_20a500(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_20a500:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aa72,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a54e
	tst.b $29(a0)
	bne.s loc_20a54e
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a54e:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a61a
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a576
	addq.b #$2,$1a(a0)
loc_20a576:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a58a
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a58a:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a5f0
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a5bc
	tst.b $29(a0)
	beq.s loc_20a5b4
	tst.b ($ff1956).l
	beq.s loc_20a5f0
	bra.s loc_20a5bc
loc_20a5b4:
	tst.b ($ff1956).l
	bne.s loc_20a5f0
loc_20a5bc:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a61a
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a5ea
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a5ea:
	jsr (sub_205d9e).l
loc_20a5f0:
	rts
	.incbin 42482, 40

sub_20a61a:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a652
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a64a
	moveq #$0,d1
	bra.s loc_20a652
loc_20a64a:
	cmpi.w #$3,d1
	bcs.s loc_20a652
	moveq #$2,d1
loc_20a652:
	add.w d1,d0
	rts

sub_20a656:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a678
	tst.b ($ff1956).l
	beq.s loc_20a670
	tst.b $29(a0)
	bne.s loc_20a678
	rts
loc_20a670:
	tst.b $29(a0)
	beq.s loc_20a678
	rts
loc_20a678:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20943a).l
	tst.b $28(a0)
	bne.s loc_20a69a
	tst.b ($ff0f01).l
	beq.s loc_20a69a
	jmp (loc_2078ae).l
loc_20a69a:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a4ce
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a6b2(pc,d0.w),d1
	jmp dat_20a6b2(pc,d1.w)
dat_20a6b2:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aa72,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a6fc
	tst.b $29(a0)
	bne.s loc_20a6fc
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a6fc:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a61a
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a728
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a728:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a782
	move.b $25(a0),d0
	beq.s loc_20a762
	bsr.w sub_20379c
	jsr (sub_206b5c).l
	tst.w d1
	bpl.w loc_20a770
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a770
loc_20a762:
	tst.b $1(a0)
	bpl.s loc_20a770
	lea ($d000).w,a1
	bsr.w sub_20a656
loc_20a770:
	tst.w ($ff190e).l
	bne.s loc_20a782
	lea (dat_20a9ea).l,a1
	bsr.w sub_205dde
loc_20a782:
	bsr.w sub_203854
	jmp (loc_2078ae).l
	.incbin 42892, 606
dat_20a9ea:
	.incbin 43498, 586
loc_20ac34:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac48(pc,d0.w),d0
	jsr dat_20ac48(pc,d0.w)
	jmp (sub_203854).l
dat_20ac48:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20ac88,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20ac82
	jmp (sub_203900).l
loc_20ac82:
	subq.w #$2,$c(a0)
	rts
	.incbin 44168, 82
	tst.b $28(a0)
	bmi.w loc_20ac34
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20acf0(pc,d0.w),d0
	jmp dat_20acf0(pc,d0.w)
dat_20acf0:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20ad8a,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20ad20
	move.b #$3,$1a(a0)
	bra.s loc_20ad40
loc_20ad20:
	tst.w ($ff1588).l
	beq.s loc_20ad2e
	move.b #$2,$1a(a0)
loc_20ad2e:
	tst.b $28(a0)
	beq.s loc_20ad40
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20ad40:
	tst.b $28(a0)
	bne.s loc_20ad84
	tst.b $29(a0)
	beq.s loc_20ad70
	tst.w ($ff1512).l
	beq.s loc_20ad5c
	bclr.b #$5,$2(a0)
	bra.s loc_20ad84
loc_20ad5c:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20ad84
	eori.b #$20,$2(a0)
	bra.s loc_20ad84
loc_20ad70:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20ad84
	move.b #$2,$1a(a0)
loc_20ad84:
	jmp (sub_203854).l
	.incbin 44426, 168

sub_20ae32:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ae4e
	move.l d1,(a3)
loc_20ae4e:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ae78
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205d9e).l
loc_20ae78:
	rts
loc_20ae7a:
	tst.w ($ff1588).l
	beq.s loc_20aed0
	bsr.w sub_20b0cc
	move.l #$73600002,d0
	moveq #$0,d1
	move.b ($ff1200).l,d1
	move.w ($d00c).w,d2
	lsr.w #$1,d2
	andi.w #$380,d2
	move.b ($d008).w,d1
	andi.w #$7f,d1
	add.w d1,d2
	lea ($a000).w,a1
	moveq #$0,d1
	move.b $0(a1,d2.w),d1
	andi.w #$7f,d1
	move.w ($ff194e).l,d1
	andi.w #$7ff,d1
	lea (dat_20b22c).l,a2
	moveq #$2,d6
	bsr.w sub_20b284
	bra.w loc_20af2a
loc_20aed0:
	tst.b ($ff1511).l
	beq.s loc_20aef4
	bpl.s loc_20aede
	bsr.w sub_20b076
loc_20aede:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b166
loc_20aef4:
	tst.b ($ff150f).l
	beq.s loc_20af2a
	bpl.s loc_20af02
	bsr.w sub_20b062
loc_20af02:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20af26
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20af26:
	bsr.w sub_20b15c
loc_20af2a:
	tst.w ($ff1588).l
	bne.w loc_20afd6
	tst.b ($ff1510).l
	beq.w loc_20afd6
	tst.w ($f63a).w
	bne.w loc_20afd6
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b034
	tst.b ($f7cc).w
	bne.s loc_20af80
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20af80
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20af80
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20af80
	move.b #$9,(a1)
loc_20af80:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b272
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b27c
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20afd2
	move.w #$63,d1
loc_20afd2:
	bsr.w sub_20b27c
loc_20afd6:
	tst.b ($ff150e).l
	beq.s loc_20afe8
	clr.b ($ff150e).l
	bsr.w sub_20b252
loc_20afe8:
	tst.b ($f7d6).w
	beq.s loc_20b032
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b008
	move.l #$6d400001,d0
loc_20b008:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b0ea
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b028
	move.l #$6e800001,d0
loc_20b028:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b0ea
loc_20b032:
	rts
loc_20b034:
	btst.b #$7,($ff152e).l
	bne.s loc_20b060
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2070a0
	move.b #$1,($ff150c).l
loc_20b060:
	rts

sub_20b062:
	move.l #$73600002,($c00004).l
	lea dat_20b0c8(pc),a2
	move.w #$2,d2
	bra.s loc_20b092

sub_20b076:
	lea ($c00000).l,a6
	bsr.w sub_20b252
	move.l #$70600002,($c00004).l
	lea dat_20b0c0(pc),a2
	move.w #$6,d2
loc_20b092:
	lea (dat_2330bc).l,a1
loc_20b098:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b0b4
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b0a8:
	move.l (a3)+,(a6)
	dbf d1,loc_20b0a8
loc_20b0ae:
	dbf d2,loc_20b098
	rts
loc_20b0b4:
	move.l #$0,(a6)
	dbf d1,loc_20b0b4
	bra.s loc_20b0ae
dat_20b0c0:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b0c8:
	dc.b $ff,$ff,$00,$00

sub_20b0cc:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b248
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b248

sub_20b0ea:
	lea (dat_20b224).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b0fa:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b0fe:
	sub.l d3,d1
	bcs.s loc_20b106
	addq.w #$1,d2
	bra.s loc_20b0fe
loc_20b106:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b110
	move.w #$1,d4
loc_20b110:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b11c
	tst.w d6
	bne.s loc_20b14e
loc_20b11c:
	lsl.w #$6,d2
	lea $0(a1,d2.w),a3
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
loc_20b142:
	addi.l #$400000,d0
	dbf d6,loc_20b0fa
	rts
loc_20b14e:
	moveq #$f,d5
loc_20b150:
	move.l #$0,(a6)
	dbf d5,loc_20b150
	bra.s loc_20b142

sub_20b15c:
	lea (dat_20b22c).l,a2
	moveq #$2,d6
	bra.s loc_20b16e

sub_20b166:
	lea (dat_20b220).l,a2
	moveq #$5,d6
loc_20b16e:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b176:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b17a:
	sub.l d3,d1
	bcs.s loc_20b182
	addq.w #$1,d2
	bra.s loc_20b17a
loc_20b182:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b18c
	move.w #$1,d4
loc_20b18c:
	tst.w d4
	beq.s loc_20b1ba
	lsl.w #$6,d2
	move.l d0,$4(a6)
	lea $0(a1,d2.w),a3
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
loc_20b1ba:
	addi.l #$400000,d0
	dbf d6,loc_20b176
	rts
	.incbin 45510, 32
loc_20b1e6:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b1ea:
	sub.l d3,d1
	bcs.s loc_20b1f2
	addq.w #$1,d2
	bra.s loc_20b1ea
loc_20b1f2:
	add.l d3,d1
	lsl.w #$6,d2
	lea $0(a1,d2.w),a3
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	dbf d6,loc_20b1e6
	rts
dat_20b220:
	dc.b $00,$01,$86,$a0
dat_20b224:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b22c:
	dc.b $00,$00,$00,$64
dat_20b230:
	dc.b $00,$00,$00,$0a
dat_20b234:
	dc.b $00,$00,$00,$01
dat_20b238:
	.incbin 45624, 16

sub_20b248:
	moveq #$3,d6
	lea (dat_20b238).l,a2
	bra.s sub_20b284

sub_20b252:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b268
	moveq #$9,d1
loc_20b268:
	lea (dat_20b234).l,a2
	moveq #$0,d6
	bra.s sub_20b284

sub_20b272:
	lea (dat_20b234).l,a2
	moveq #$0,d6
	bra.s sub_20b284

sub_20b27c:
	lea (dat_20b230).l,a2
	moveq #$1,d6

sub_20b284:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b28c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b290:
	sub.l d3,d1
	bcs.s loc_20b298
	addq.w #$1,d2
	bra.s loc_20b290
loc_20b298:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b2a2
	move.w #$1,d4
loc_20b2a2:
	lsl.w #$6,d2
	move.l d0,$4(a6)
	lea $0(a1,d2.w),a3
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	addi.l #$400000,d0
	dbf d6,loc_20b28c
	rts
	.incbin 45784, 570
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b526(pc,d0.w),d0
	jsr dat_20b526(pc,d0.w)
	jmp (sub_203854).l
dat_20b526:
	.incbin 46374, 2320
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be44(pc,d0.w),d0
	jmp dat_20be44(pc,d0.w)
dat_20be44:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c542,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c502).l,a2
loc_20be92:
	jsr (sub_207878).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c542,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20bee4
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20bee4:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20be92
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bf0c
	bge.s loc_20bf02
	neg.w d0
loc_20bf02:
	add.w d0,$a(a0)
	jmp (sub_203854).l
loc_20bf0c:
	addq.b #$4,$24(a0)
	jmp (sub_203854).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bf30
	bge.s loc_20bf26
	neg.w d0
loc_20bf26:
	add.w d0,$8(a0)
	jmp (sub_203854).l
loc_20bf30:
	addq.b #$4,$24(a0)
	jmp (sub_203854).l
	tst.b $1e(a0)
	beq.s loc_20bf4a
	subq.b #$1,$1e(a0)
	jmp (sub_203854).l
loc_20bf4a:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bf64
	bge.s loc_20bf5a
	neg.w d0
loc_20bf5a:
	add.w d0,$a(a0)
	jmp (sub_203854).l
loc_20bf64:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20249c).l
	tst.b $1e(a0)
	beq.s loc_20bf86
	subq.b #$1,$1e(a0)
	jmp (sub_203854).l
loc_20bf86:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bfa0
	bge.s loc_20bf96
	neg.w d0
loc_20bf96:
	add.w d0,$8(a0)
	jmp (sub_203854).l
loc_20bfa0:
	jmp (sub_203900).l
	tst.l ($f680).w
	bne.s loc_20bfba
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203900).l
loc_20bfba:
	rts
	.incbin 49084, 1350
dat_20c502:
	.incbin 50434, 328

sub_20c64a:
	rts
	.incbin 50764, 390
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c7ec(pc,d0.w),d0
	jsr dat_20c7ec(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_20c7ec:
	.incbin 51180, 722
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cadc(pc,d0.w),d0
	jsr dat_20cadc(pc,d0.w)
	jsr (sub_203854).l
	move.w $36(a0),d0
	jmp (loc_2078b2).l
dat_20cadc:
	dc.b $00,$16,$00,$4c
loc_20cae0:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209434).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20cbc0,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$18,$19(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20cb38(pc,d0.w),d0
	jmp dat_20cb38(pc,d0.w)
dat_20cb38:
	dc.b $00,$2a,$00,$4a,$00,$08,$00,$1a
	bsr.w sub_20cba4
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cae0
	bsr.w sub_20cba4
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cae0
	move.l $8(a0),-(a7)
	bsr.w sub_20cba4
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cae0
	move.l $8(a0),-(a7)
	bsr.w sub_20cba4
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cae0

sub_20cba4:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_2007d6).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
	.incbin 52160, 272
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	rts
	.incbin 52442, 462

sub_20cea8:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20943a).l
	.incbin 52922, 70
	move.b #$20,$19(a0)
	move.b #$1,$1a(a0)
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b d0,$30(a0)
	move.b #$ff,$3c(a0)
	moveq #$0,d0
	move.b $30(a0),d0
	lea ($f7e0).w,a1
	btst.b #$7,$0(a1,d0.w)
	beq.s loc_20cf34
	clr.b $3c(a0)
loc_20cf34:
	lea ($d000).w,a1
	move.w $8(a1),$38(a0)
	move.w $c(a1),$3e(a0)
	bsr.w sub_20cfb8
	bsr.w sub_20cea8
	cmpi.b #$40,$3a(a0)
	bne.s loc_20cf58
	addq.b #$2,$24(a0)
loc_20cf58:
	rts
	.incbin 53082, 94

sub_20cfb8:
	bsr.w sub_20cfce
	moveq #$0,d0
	move.b $3a(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts

sub_20cfce:
	tst.b $3c(a0)
	beq.s loc_20cfe0
	subq.b #$4,$3a(a0)
	bcc.s loc_20cff4
	clr.b $3a(a0)
	bra.s loc_20cff4
loc_20cfe0:
	addq.b #$4,$3a(a0)
	move.b $3a(a0),d0
	cmpi.b #$40,d0
	bcs.s loc_20cff4
	move.b #$40,$3a(a0)
loc_20cff4:
	rts
	.incbin 53238, 38
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d036(pc,d0.w),d0
	jsr dat_20d036(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_20d036:
	dc.b $00,$1c,$00,$4c,$00,$82,$00,$9a
	dc.b $00,$cc
loc_20d040:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20943a).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$44e8,$2(a0)
	move.l #$20d184,$4(a0)
	move.b #$50,$16(a0)
	move.b #$30,$19(a0)
	move.w $c(a0),$32(a0)
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d092
	neg.w d0
loc_20d092:
	cmpi.w #$c0,d0
	bcc.s loc_20d0b4
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcs.s loc_20d0b4
	cmpi.w #$88,d0
	bcc.s loc_20d0b4
	clr.b $3c(a0)
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
loc_20d0b4:
	bra.w loc_20d040
	.incbin 53432, 282
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d1ec(pc,d0.w),d0
	jsr dat_20d1ec(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_20d1ec:
	dc.b $00,$24,$00,$60,$00,$b4,$00,$cc
	dc.b $01,$18
loc_20d1f6:
	tst.b $1a(a0)
	beq.s loc_20d1fe
	rts
loc_20d1fe:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20943a).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4410,$2(a0)
	move.l #$20d340,$4(a0)
	move.b #$4,$19(a0)
	move.b #$20,$16(a0)
	tst.b $28(a0)
	beq.s loc_20d24c
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d24c:
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d25c
	neg.w d0
loc_20d25c:
	cmpi.w #$40,d0
	bcc.s loc_20d29c
	move.w $8(a0),d1
	move.w $8(a1),d0
	tst.b $28(a0)
	bne.s loc_20d278
	move.w $8(a0),d0
	move.w $8(a1),d1
loc_20d278:
	sub.w d1,d0
	bcs.s loc_20d29c
	cmpi.w #$40,d0
	bcc.s loc_20d29c
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20d29c
	move.w #$a4,d0
	jsr (sub_2022d2).l
loc_20d29c:
	bra.w loc_20d1f6
	.incbin 53920, 204
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d38a(pc,d0.w),d0
	jsr dat_20d38a(pc,d0.w)
	jsr (sub_203854).l
	move.w $36(a0),d0
	jmp (loc_2078b2).l
dat_20d38a:
	dc.b $00,$12,$00,$48

sub_20d38e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209434).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20d656,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20d5bc
	lea dat_20d64c(pc),a1
	jsr (sub_205dde).l
	lea ($d000).w,a1
	bsr.w sub_20d38e
	beq.s loc_20d430
	bset.b #$0,$22(a1)
	andi.b #$fc,$1(a1)
	ori.b #$1,$1(a1)
	bset.b #$0,$2c(a1)
	bne.s loc_20d426
	move.b #$2d,$1c(a1)
	moveq #$0,d0
	move.b d0,$2b(a1)
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d422
	neg.w d0
	move.b #$80,$2b(a1)
loc_20d422:
	move.b d0,$39(a1)
loc_20d426:
	cmpi.b #$6,$24(a1)
	bcc.s loc_20d430
	bra.s loc_20d450
loc_20d430:
	rts
	.incbin 54322, 30
loc_20d450:
	addq.b #$4,$2b(a1)
	move.b $2b(a1),d0
	jsr (sub_2007d6).l
	moveq #$0,d0
	move.b $39(a1),d0
	muls.w d1,d0
	asr.l #$8,d0
	move.w $8(a0),$8(a1)
	add.w d0,$8(a1)
	moveq #$0,d0
	move.b $2b(a1),d0
	move.b d0,d1
	andi.b #$f0,d0
	lsr.b #$4,d0
	move.b dat_20d4ae(pc,d0.w),$1b(a1)
	andi.b #$3f,d1
	bne.s loc_20d490
	addq.b #$1,$39(a1)
loc_20d490:
	move.w ($f604).w,($f602).w
	cmpi.b #$1,$0(a1)
	beq.s loc_20d4a4
	move.w ($f606).w,($f602).w
loc_20d4a4:
	bsr.w sub_20d4be
	bra.w loc_20d50c
	dc.b $4e,$75
dat_20d4ae:
	.incbin 54446, 16

sub_20d4be:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d4ea
	btst.b #$2,($f602).w
	beq.s loc_20d4d6
	addq.b #$1,$39(a1)
	bra.s loc_20d50a
loc_20d4d6:
	btst.b #$3,($f602).w
	beq.s loc_20d50a
	subq.b #$1,$39(a1)
	bcc.s loc_20d50a
	clr.b $39(a1)
	bra.s loc_20d50a
loc_20d4ea:
	btst.b #$3,($f602).w
	beq.s loc_20d4f8
	addq.b #$1,$39(a1)
	bra.s loc_20d50a
loc_20d4f8:
	btst.b #$2,($f602).w
	beq.s loc_20d50a
	subq.b #$1,$39(a1)
	bcc.s loc_20d50a
	clr.b $39(a1)
loc_20d50a:
	rts
loc_20d50c:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20d5b2
	clr.b $2c(a1)
	move.w #$680,d2
	moveq #$0,d0
	move.b $26(a1),d0
	subi.b #$40,d0
	jsr (sub_2007d6).l
	muls.w d2,d1
	asr.l #$8,d1
	add.w d1,$10(a1)
	muls.w d2,d0
	asr.l #$8,d0
	add.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$5,$22(a1)
	move.b #$1,$3c(a1)
	clr.b $38(a1)
	tst.b ($ff195b).l
	beq.s loc_20d56c
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d578
loc_20d56c:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
loc_20d578:
	btst.b #$2,$22(a1)
	bne.s loc_20d5b4
	tst.b ($ff195b).l
	beq.s loc_20d596
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d5a6
loc_20d596:
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
loc_20d5a6:
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
loc_20d5b2:
	rts
loc_20d5b4:
	bset.b #$4,$22(a1)
	rts

sub_20d5bc:
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20d5cc(pc,d0.w),d0
	jmp dat_20d5cc(pc,d0.w)
dat_20d5cc:
	.incbin 54732, 38
	move.l $8(a0),-(a7)
	bsr.w sub_20d630
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts
	move.l $8(a0),-(a7)
	bsr.w sub_20d630
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts

sub_20d630:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_2007d6).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
dat_20d64c:
	.incbin 54860, 118
	jsr (sub_20fcc6).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d6e2(pc,d0.w),d0
	jsr dat_20d6e2(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_20d6e2:
	.incbin 55010, 614
	tst.b $28(a0)
	bmi.w loc_20dd58
	jsr (sub_20fcc6).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d97a(pc,d0.w),d0
	jsr dat_20d97a(pc,d0.w)
	lea dat_20dbe6(pc),a1
	jsr (sub_205dde).l
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_20d97a:
	.incbin 55674, 620
dat_20dbe6:
	.incbin 56294, 370
loc_20dd58:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dd72(pc,d0.w),d0
	jsr dat_20dd72(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_20dd72:
	.incbin 56690, 1276
	tst.b $29(a0)
	beq.s loc_20e27c
	bmi.w loc_20e4ea
	bra.w loc_20e4ca
loc_20e27c:
	jsr (sub_20fcc6).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e29c(pc,d0.w),d0
	jsr dat_20e29c(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_20e29c:
	.incbin 58012, 558
loc_20e4ca:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	bne.s loc_20e4e4
	cmpi.b #$1,$1b(a1)
	beq.s loc_20e4e4
	jmp (sub_203854).l
loc_20e4e4:
	jmp (sub_203900).l
loc_20e4ea:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	beq.s loc_20e4fc
	jmp (sub_203900).l
loc_20e4fc:
	move.w $c(a1),d0
	sub.w $34(a1),d0
	subi.w #$18,d0
	asr.w #$3,d0
	bpl.s loc_20e50e
	moveq #$0,d0
loc_20e50e:
	move.b d0,$1a(a0)
	asl.w #$2,d0
	add.w $34(a1),d0
	addi.w #$10,d0
	move.w d0,$c(a0)
	jmp (sub_203854).l
	.incbin 58662, 440
	jsr (sub_20fd0e).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20e800
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e6fe(pc,d0.w),d0
	jmp dat_20e6fe(pc,d0.w)
dat_20e6fe:
	dc.b $00,$06,$00,$60,$00,$a4
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080108,$16(a0)
	move.l #$20e980,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20e8d6
	bsr.w sub_20e8e4
	tst.b $28(a0)
	bmi.s loc_20e74c
	move.b #$1,$18(a0)
	ori.w #$8000,$2(a0)
	move.w #$101,$2e(a0)
	rts
loc_20e74c:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20e7e0
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20e784
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20e8d6
loc_20e784:
	move.b d0,$2e(a0)
	lea dat_20e902(pc),a1
	jsr (sub_205dde).l
	jsr (sub_203854).l
	move.w $2a(a0),d0
	jmp (loc_2078b2).l
	.incbin 59298, 62

sub_20e7e0:
	move.b $2e(a0),d0
	jsr (sub_2007d6).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20e800:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e80e(pc,d0.w),d0
	jmp dat_20e80e(pc,d0.w)
dat_20e80e:
	.incbin 59406, 200

sub_20e8d6:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20e8e4:
	lea dat_20e9b8(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20e902:
	.incbin 59650, 182
dat_20e9b8:
	.incbin 59832, 22
	tst.b $28(a0)
	bmi.w loc_20ea80
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e9fa(pc,d0.w),d0
	jsr dat_20e9fa(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_20943a).l
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_20e9fa:
	dc.b $00,$04,$00,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$3a8,$2(a0)
	move.l #$20ec54,$4(a0)
	move.w a0,$2a(a0)
	st $34(a0)
	move.w #$0,$32(a0)
	tst.b $34(a0)
	beq.s loc_20ea7e
	sf $34(a0)
	lea dat_20ec5c(pc),a1
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.w $32(a0),d0
	adda.w $0(a1,d0.w),a1
	move.l a1,$2c(a0)
	addq.w #$2,$32(a0)
	cmpi.w #$8,$32(a0)
	blt.s loc_20ea72
	clr.w $32(a0)
loc_20ea72:
	bsr.w sub_20ec12
	beq.s loc_20ea7e
	jmp (sub_203900).l
loc_20ea7e:
	rts
loc_20ea80:
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20ec0c
	move.b $29(a0),d0
	cmp.b $29(a1),d0
	bne.w loc_20ec0c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20eab8(pc,d0.w),d0
	jsr dat_20eab8(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_20943a).l
	jmp (sub_203854).l
dat_20eab8:
	.incbin 60088, 20
	addq.b #$2,$24(a0)
	move.w #$3f,$30(a0)
	move.l #$0,$38(a0)
	move.l #$0,$3c(a0)
	movea.l $2c(a0),a1
	move.b -$1(a1),d0
	bne.s loc_20eaf8
	move.l #$ffff8000,$3c(a0)
loc_20eaf8:
	subq.b #$1,d0
	bne.s loc_20eb04
	move.l #$8000,$38(a0)
loc_20eb04:
	subq.b #$1,d0
	bne.s loc_20eb10
	move.l #$8000,$3c(a0)
loc_20eb10:
	subq.b #$1,d0
	bne.s loc_20eb1c
	move.l #$ffff8000,$38(a0)
loc_20eb1c:
	movea.w $2a(a0),a1
	cmpi.b #$2,$28(a1)
	bne.s loc_20eb3a
	moveq #$1,d0
	tst.w $3c(a0)
	bpl.s loc_20eb32
	moveq #$ffffffff,d0
loc_20eb32:
	move.w d0,$34(a0)
	move.w d0,$12(a0)
loc_20eb3a:
	move.l $38(a0),d0
	add.l d0,$8(a0)
	move.l $3c(a0),d0
	add.l d0,$c(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20eb54
	addq.b #$2,$24(a0)
loc_20eb54:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20eb6e
	move.w #$0,d0
loc_20eb6e:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20eb8e
	addq.b #$2,$24(a0)
	bsr.w sub_20ec12
	beq.s loc_20eb8e
	addq.b #$2,$24(a0)
	movea.w $2a(a0),a1
	st $34(a1)
loc_20eb8e:
	rts
	rts
	addq.b #$2,$24(a0)
	move.w #$3f,$30(a0)
	move.w $34(a0),$12(a0)
	neg.w $12(a0)
	move.l $38(a0),d0
	sub.l d0,$8(a0)
	move.l $3c(a0),d0
	sub.l d0,$c(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ebc0
	addq.b #$2,$24(a0)
loc_20ebc0:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20ebda
	move.w #$0,d0
loc_20ebda:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ebf6
	movea.w $36(a0),a1
	tst.b $28(a1)
	bpl.s loc_20ebf2
	addq.b #$2,$24(a1)
loc_20ebf2:
	addq.b #$2,$24(a0)
loc_20ebf6:
	rts
	lea ($d000).w,a1
	jsr (sub_20943a).l
	beq.s loc_20ec0a
	jsr (sub_2092ec).l
loc_20ec0a:
	addq.l #$4,a7
loc_20ec0c:
	jmp (sub_203900).l

sub_20ec12:
	movea.l $2c(a0),a6
	tst.b (a6)+
	bmi.s loc_20ec52
	jsr (sub_207878).l
	bne.s loc_20ec52
	movea.l a0,a2
	movea.l a1,a3
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.b #$ff,$28(a1)
	move.w a0,$36(a1)
	move.l a6,$2c(a1)
	addq.b #$1,$18(a1)
	clr.b $24(a1)
loc_20ec52:
	rts
	dc.b $00,$02,$01,$f0,$0f,$00,$00,$f0
dat_20ec5c:
	.incbin 60508, 1554
	move.b $28(a0),d0
	bpl.s loc_20f278
	bra.w loc_20f4b6
loc_20f278:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f292(pc,d0.w),d0
	jsr dat_20f292(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2078ae).l
dat_20f292:
	dc.b $00,$04,$01,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.l #$20f4ae,$4(a0)
	move.w #$3f8,$2(a0)
	move.w #$100,$2c(a0)
	move.b $28(a0),d0
	beq.s loc_20f2d0
	neg.w $2c(a0)
loc_20f2d0:
	jsr (sub_20788e).l
	bne.w loc_20f3ce
	move.w a0,$3e(a1)
	move.w a1,$2e(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_20788e).l
	bne.w loc_20f3ce
	move.w a0,$3e(a1)
	move.w a1,$30(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_20788e).l
	bne.w loc_20f3ce
	move.w a0,$3e(a1)
	move.w a1,$32(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_20788e).l
	bne.w loc_20f3ce
	move.w a0,$3e(a1)
	move.w a1,$34(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_20788e).l
	bne.w loc_20f3ce
	move.w a0,$3e(a1)
	move.w a1,$36(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_20788e).l
	bne.w loc_20f3ce
	move.w a0,$3e(a1)
	move.w a1,$38(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	bra.s loc_20f3d4
loc_20f3ce:
	jmp (sub_203900).l
loc_20f3d4:
	move.w $2c(a0),d0
	add.w d0,$2a(a0)
	move.w $2a(a0),d0
	lsr.w #$8,d0
	jsr (sub_2007d6).l
	swap d0
	swap d1
	clr.w d0
	clr.w d1
	asr.l #$2,d0
	asr.l #$2,d1
	move.l d0,d4
	move.l d1,d5
	asr.l #$1,d0
	asr.l #$1,d1
	move.l d0,d2
	move.l d1,d3
	asr.l #$1,d0
	asr.l #$1,d1
	movea.w $2e(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d0,$2e(a1)
	add.l d1,$2a(a1)
	movea.w $30(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d2,$2e(a1)
	add.l d3,$2a(a1)
	movea.w $32(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d0,$2e(a1)
	add.l d1,$2a(a1)
	add.l d2,$2e(a1)
	add.l d3,$2a(a1)
	movea.w $34(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d4,$2e(a1)
	add.l d5,$2a(a1)
	movea.w $36(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d0,$2e(a1)
	add.l d1,$2a(a1)
	add.l d4,$2e(a1)
	add.l d5,$2a(a1)
	movea.w $38(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d2,$2e(a1)
	add.l d3,$2a(a1)
	add.l d4,$2e(a1)
	add.l d5,$2a(a1)
	rts
	dc.b $00,$02,$01,$f8,$05,$00,$00,$f8
loc_20f4b6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f4dc(pc,d0.w),d0
	jsr dat_20f4dc(pc,d0.w)
	movea.w $3e(a0),a1
	cmpi.b #$2d,$0(a1)
	beq.s loc_20f4d6
	jmp (sub_203900).l
loc_20f4d6:
	jmp (sub_203854).l
dat_20f4dc:
	dc.b $00,$04,$00,$28
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$20f512,$4(a0)
	move.w #$3f8,$2(a0)
	move.b #$b9,$20(a0)
	move.w $2a(a0),$8(a0)
	move.w $2e(a0),$c(a0)
	rts
	.incbin 62738, 1972

sub_20fcc6:
	tst.b ($ff156a).l
	beq.s loc_20fd0c
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fcde
	tst.b $28(a0)
	beq.s loc_20fd0c
loc_20fcde:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203900).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fd0a
	move.w #$9e,d0
	jsr (sub_2022d2).l
loc_20fd0a:
	addq.l #$4,a7
loc_20fd0c:
	rts

sub_20fd0e:
	tst.b $28(a0)
	bmi.s loc_20fd3e
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fd2e
	tst.b ($ff156d).l
	bne.s loc_20fd3e
	addq.l #$4,a7
	jmp (loc_2078ae).l
loc_20fd2e:
	tst.b ($ff156a).l
	bne.s loc_20fd3e
	addq.l #$4,a7
	jmp (sub_203900).l
loc_20fd3e:
	rts

sub_20fd40:
	jsr (sub_206652).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fe68).l,a1
	move.w #$1f,d6
	bsr.w sub_20fe16
	bne.s loc_20fd82
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4580,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd82:
	subq.b #$1,($f66e).w
	bmi.s loc_20fd8a
	bra.s loc_20fd9c
loc_20fd8a:
	eori.b #$1,($f668).w
	move.b ($f668).w,d0
	ext.w d0
	move.b dat_20fda4(pc,d0.w),($f66e).w
loc_20fd9c:
	tst.b ($f668).w
	beq.s loc_20fddc
	bra.s loc_20fda6
dat_20fda4:
	dc.b $5a,$1e
loc_20fda6:
	lea (dat_20fe5a).l,a1
	move.w #$3f,d6
	bsr.w sub_20fe16
	bne.s loc_20fdda
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4600,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fdda:
	rts
loc_20fddc:
	lea ($ff1980).l,a3
	move.w #$3f,d6
loc_20fde6:
	move.l #$0,(a3)+
	dbf d6,loc_20fde6
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4600,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
	rts

sub_20fe16:
	subq.b #$1,(a2)
	bpl.w loc_20fe4e
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fe2c
	moveq #$0,d0
loc_20fe2c:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fe3c:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fe3c
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fe4e:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fe5a:
	dc.b $04,$03,$00,$23,$3c,$0c,$00,$23
	dc.b $3d,$0c,$00,$23,$3e,$0c
dat_20fe68:
	dc.b $03,$02,$00,$23,$3b,$0c,$00,$23
	dc.b $3b,$8c
dat_20fe72:
	.incbin 65138, 16
dat_20fe82:
	.incbin 65154, 65918
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 1536
dat_2336bc:
	.incbin 210620, 4154
dat_2346f6:
	.incbin 214774, 256
dat_2347f6:
	.incbin 215030, 4096
dat_2357f6:
	.incbin 219126, 4896
dat_236b16:
	.incbin 224022, 15558
dat_23a7dc:
	.incbin 239580, 32
dat_23a7fc:
	.incbin 239612, 22532
