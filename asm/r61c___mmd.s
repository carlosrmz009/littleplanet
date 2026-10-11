; R61C__.MMD
; disassembled from the disc; code only, data comes from data/R61C__.MMD at build time
	.file "R61C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$21,$16
	jmp (loc_201c8c).l
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
	bsr.w sub_2021c2
	bsr.w sub_20216a
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201506

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
	bsr.w sub_20084a
	bsr.s sub_20028c
	bsr.w sub_202588
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
	bsr.w sub_20084a
	bsr.s sub_20031c
	bsr.w sub_202588
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
	bsr.w sub_20084a
	bsr.s sub_2003b4
	bsr.w sub_202588
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
	bsr.w sub_20084a
	bsr.s sub_200448
	bsr.w sub_202588
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
	.incbin 1624, 498

sub_20084a:
	move.w #$2300,sr
loc_20084e:
	tst.b ($f62a).w
	bne.s loc_20084e
	rts

sub_200856:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_20086e(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_20086e(pc,d0.w),d0
	rts
dat_20086e:
	.incbin 2158, 640

sub_200aee:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200b4a
	move.w d2,d4
	tst.w d3
	bpl.w loc_200b08
	neg.w d3
loc_200b08:
	tst.w d4
	bpl.w loc_200b10
	neg.w d4
loc_200b10:
	cmp.w d3,d4
	bcc.w loc_200b22
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200b54(pc,d4.w),d0
	bra.s loc_200b2c
loc_200b22:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200b54(pc,d3.w),d0
loc_200b2c:
	tst.w d1
	bpl.w loc_200b38
	neg.w d0
	addi.w #$80,d0
loc_200b38:
	tst.w d2
	bpl.w loc_200b44
	neg.w d0
	addi.w #$100,d0
loc_200b44:
	movem.l (a7)+,d3-d4
	rts
loc_200b4a:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200b54:
	.incbin 2900, 258

sub_200c56:
	btst.b #$3,$22(a0)
	beq.s loc_200c6a
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200c6a:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c8c
	move.b $26(a0),d0
	bpl.s loc_200c86
	subq.b #$1,d0
loc_200c86:
	addi.b #$20,d0
	bra.s loc_200c98
loc_200c8c:
	move.b $26(a0),d0
	bpl.s loc_200c94
	addq.b #$1,d0
loc_200c94:
	addi.b #$1f,d0
loc_200c98:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200f22
	cmpi.b #$80,d0
	beq.w loc_200e80
	cmpi.b #$c0,d0
	beq.w loc_200de4
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
	bsr.w sub_2011ac
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
	bsr.w sub_2011ac
	move.w (a7)+,d0
	bsr.w sub_200db8
	tst.w d1
	beq.s loc_200d26
	bpl.s loc_200d28
	cmpi.w #$fff2,d1
	blt.s loc_200d4e
	add.w d1,$c(a0)
loc_200d26:
	rts
loc_200d28:
	cmpi.w #$e,d1
	bgt.s loc_200d34
loc_200d2e:
	add.w d1,$c(a0)
	rts
loc_200d34:
	tst.b $38(a0)
	bne.s loc_200d2e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d4e:
	rts
	.incbin 3408, 34
loc_200d72:
	rts
	.incbin 3444, 68

sub_200db8:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200dc6
	move.b ($f768).w,d2
	move.w d0,d1
loc_200dc6:
	btst.l #$0,d2
	bne.s loc_200dd2
	move.b d2,$26(a0)
	rts
loc_200dd2:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200de4:
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
	bsr.w sub_20131c
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
	bsr.w sub_20131c
	move.w (a7)+,d0
	bsr.w sub_200db8
	tst.w d1
	beq.s loc_200e58
	bpl.s loc_200e5a
	cmpi.w #$fff2,d1
	blt.w loc_200d72
	add.w d1,$8(a0)
loc_200e58:
	rts
loc_200e5a:
	cmpi.w #$e,d1
	bgt.s loc_200e66
loc_200e60:
	add.w d1,$8(a0)
	rts
loc_200e66:
	tst.b $38(a0)
	bne.s loc_200e60
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e80:
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
	bsr.w sub_2011ac
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
	bsr.w sub_2011ac
	move.w (a7)+,d0
	bsr.w sub_200db8
	tst.w d1
	beq.s loc_200efa
	bpl.s loc_200efc
	cmpi.w #$fff2,d1
	blt.w loc_200d4e
	sub.w d1,$c(a0)
loc_200efa:
	rts
loc_200efc:
	cmpi.w #$e,d1
	bgt.s loc_200f08
loc_200f02:
	sub.w d1,$c(a0)
	rts
loc_200f08:
	tst.b $38(a0)
	bne.s loc_200f02
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200f22:
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
	bsr.w sub_20131c
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
	bsr.w sub_20131c
	move.w (a7)+,d0
	bsr.w sub_200db8
	tst.w d1
	beq.s loc_200f9c
	bpl.s loc_200f9e
	cmpi.w #$fff2,d1
	blt.w loc_200d72
	sub.w d1,$8(a0)
loc_200f9c:
	rts
loc_200f9e:
	cmpi.w #$e,d1
	bgt.s loc_200faa
loc_200fa4:
	sub.w d1,$8(a0)
	rts
loc_200faa:
	tst.b $38(a0)
	bne.s loc_200fa4
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200fc4:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200fda
	andi.w #$380,d0
loc_200fda:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_20103a
	bmi.s loc_20103e
	cmpi.b #$5,($ff1506).l
	beq.s loc_20100a
	cmpi.b #$6,($ff1506).l
	bne.s loc_201010
loc_20100a:
	andi.w #$7fff,$2(a0)
loc_201010:
	cmpi.b #$4,($ff1506).l
	bne.s loc_201020
	bclr.b #$6,$1(a0)
loc_201020:
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
loc_20103a:
	movea.l d1,a1
	rts
loc_20103e:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_2010a6
	btst.b #$6,$1(a0)
	bne.s loc_20106c
	cmpi.b #$14,d1
	bne.w loc_201190
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201190
loc_20106c:
	cmpi.b #$15,d1
	bne.s loc_20107a
	move.w #$60,d1
	bra.w loc_201190
loc_20107a:
	cmpi.b #$1e,d1
	bne.s loc_201088
	move.w #$61,d1
	bra.w loc_201190
loc_201088:
	cmpi.b #$1f,d1
	bne.s loc_201096
	move.w #$62,d1
	bra.w loc_201190
loc_201096:
	cmpi.b #$32,d1
	bne.w loc_201190
	move.w #$63,d1
	bra.w loc_201190
loc_2010a6:
	cmpi.b #$5,($ff1506).l
	bne.w loc_20110c
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_2010f6
	cmpi.b #$6,d1
	beq.s loc_2010f6
	tst.b ($ff1956).l
	beq.w loc_201190
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201106
	cmpi.b #$3c,d1
	beq.s loc_201106
	cmpi.b #$37,d1
	beq.s loc_201106
	cmpi.b #$2f,d1
	beq.s loc_201106
	cmpi.b #$16,d1
	beq.s loc_201106
	bra.w loc_201190
loc_2010f6:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201190
loc_201106:
	addq.b #$1,d1
	bra.w loc_201190
loc_20110c:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20117c
	cmpi.b #$3,$0(a0)
	bcc.w loc_201190
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201190
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_201140
	move.w #$6a,d1
	bra.s loc_201190
loc_201140:
	cmpi.b #$48,d1
	bne.s loc_20114c
	move.w #$6b,d1
	bra.s loc_201190
loc_20114c:
	cmpi.b #$4a,d1
	bne.s loc_201158
	move.w #$6c,d1
	bra.s loc_201190
loc_201158:
	cmpi.b #$10,d1
	bne.s loc_201164
	move.w #$6d,d1
	bra.s loc_201190
loc_201164:
	cmpi.b #$63,d1
	bne.s loc_201170
	move.w #$6e,d1
	bra.s loc_201190
loc_201170:
	cmpi.b #$43,d1
	bne.s loc_201190
	move.w #$6f,d1
	bra.s loc_201190
loc_20117c:
	btst.b #$6,$1(a0)
	beq.s loc_201190
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201190
	move.w #$51,d1
loc_201190:
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

sub_2011ac:
	bsr.w sub_200fc4
	cmpi.l #$210000,d1
	beq.s loc_2011c6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011c6
	btst.l d5,d4
	bne.s loc_2011d4
loc_2011c6:
	add.w a3,d2
	bsr.w sub_20126c
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2011d4:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011c6
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011fa
	not.w d1
	neg.b (a4)
loc_2011fa:
	btst.l #$c,d4
	beq.s loc_20120a
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20120a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201226
	neg.w d0
loc_201226:
	tst.w d0
	beq.s loc_2011c6
	bmi.s loc_201242
	cmpi.b #$10,d0
	beq.s loc_20125e
loc_201232:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201242:
	cmpa.w #$10,a3
	bne.s loc_201252
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201232
loc_201252:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011c6
loc_20125e:
	sub.w a3,d2
	bsr.w sub_20126c
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_20126c:
	bsr.w sub_200fc4
	cmpi.l #$210000,d1
	beq.s loc_201286
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201286
	btst.l d5,d4
	bne.s loc_201294
loc_201286:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201294:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201286
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2012ba
	not.w d1
	neg.b (a4)
loc_2012ba:
	btst.l #$c,d4
	beq.s loc_2012ca
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012ca:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2012e6
	neg.w d0
loc_2012e6:
	tst.w d0
	beq.s loc_201286
	bmi.s loc_2012fc
loc_2012ec:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012fc:
	cmpa.w #$10,a3
	bne.s loc_20130c
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2012ec
loc_20130c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201286
	not.w d1
	rts

sub_20131c:
	bsr.w sub_200fc4
	cmpi.l #$210000,d1
	beq.s loc_201336
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201336
	btst.l d5,d4
	bne.s loc_201344
loc_201336:
	add.w a3,d3
	bsr.w sub_2013cc
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201344:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201336
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201372
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201372:
	btst.l #$b,d4
	beq.s loc_20137a
	neg.b (a4)
loc_20137a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201396
	neg.w d0
loc_201396:
	tst.w d0
	beq.s loc_201336
	bmi.s loc_2013b2
	cmpi.b #$10,d0
	beq.s loc_2013be
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013b2:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201336
loc_2013be:
	sub.w a3,d3
	bsr.w sub_2013cc
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2013cc:
	bsr.w sub_200fc4
	cmpi.l #$210000,d1
	beq.s loc_2013e6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2013e6
	btst.l d5,d4
	bne.s loc_2013f4
loc_2013e6:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2013f4:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2013e6
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201422
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201422:
	btst.l #$b,d4
	beq.s loc_20142a
	neg.b (a4)
loc_20142a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201446
	neg.w d0
loc_201446:
	tst.w d0
	beq.s loc_2013e6
	bmi.s loc_20145c
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20145c:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2013e6
	not.w d1
	rts

sub_20146c:
	rts
	.incbin 5230, 152
loc_201506:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201526
	tst.b ($ff0f01).l
	bne.s loc_201526
	move.b #$1,($ff156a).l
loc_201526:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_20158c
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20773e
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_20158c
	move.b #$1,($ff1508).l
loc_20158c:
	bset.b #$7,($f600).w
	bsr.w sub_20257a
	tst.b ($ff156e).l
	bne.s loc_2015b2
	btst.b #$7,($ff152e).l
	beq.s loc_2015e8
	bset.b #$0,($ff151d).l
	beq.s loc_2015be
loc_2015b2:
	bsr.w sub_200428
	bclr.b #$0,($ff151d).l
loc_2015be:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201658
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2015e6
	bclr.b #$7,($ff152e).l
loc_2015e6:
	rts
loc_2015e8:
	bset.b #$0,($ff151d).l
	beq.s loc_2015f6
	bsr.w sub_2002fc
loc_2015f6:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201612
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_20163a
loc_201612:
	tst.b ($ff1508).l
	bne.s loc_201658
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_20163a:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201642:
	move.l #$0,(a1)+
	dbf d6,loc_201642
	move.b #$c,($f62a).w
	bsr.w sub_20084a
	rts
loc_201658:
	cmpi.w #$800,($f78e).w
	bne.s loc_201676
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201676:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_20168c
	btst.b #$7,($ff152e).l
	beq.s loc_201692
loc_20168c:
	move.l #$eee0eee,d0
loc_201692:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20169a:
	move.l d0,(a1)+
	dbf d6,loc_20169a
loc_2016a0:
	move.b #$c,($f62a).w
	bsr.w sub_20084a
	bsr.w sub_202588
	bne.s loc_2016a0
	tst.l ($f680).w
	bsr.w sub_201b46
	moveq #$0,d0
	lea (dat_20fe20).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2016ca
	bsr.w sub_20268e
loc_2016ca:
	moveq #$1,d0
	bsr.w sub_20268e
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2016e6:
	move.l d0,(a1)+
	dbf d1,loc_2016e6
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2016f8:
	move.l d0,(a1)+
	dbf d1,loc_2016f8
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201708:
	move.l d0,(a1)+
	dbf d1,loc_201708
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_20171a:
	move.l d0,(a1)+
	dbf d1,loc_20171a
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20172a:
	move.l d0,(a1)+
	dbf d1,loc_20172a
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_20173a:
	move.l d0,(a1)+
	dbf d1,loc_20173a
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202264
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
	bsr.w sub_2028f0
	bsr.w sub_202a44
	bset.b #$2,($f754).w
	bsr.w sub_203446
	bsr.w sub_20334c
	jsr (sub_20146c).l
	bsr.w sub_201a80
loc_2017ba:
	move.b #$c,($f62a).w
	bsr.w sub_20084a
	bsr.w sub_202588
	bne.s loc_2017ba
	tst.l ($f680).w
	bne.s loc_2017ba
	bsr.w sub_201a0c
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201ba6
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_20181e
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_20181e:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201860
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201860:
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
	jsr (sub_20fcee).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2018f0
loc_2018ea:
	bsr.w sub_20037a
	bra.s loc_2018fe
loc_2018f0:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2018ea
	bsr.w sub_20025a
loc_2018fe:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_20190c:
	move.b #$8,($f62a).w
	bsr.w sub_20084a
	tst.b ($f7cc).w
	bne.s loc_20192a
	btst.b #$7,($f605).w
	beq.s loc_20192a
	eori.b #$1,($f63a).w
loc_20192a:
	btst.b #$0,($f63a).w
	beq.w loc_20199c
	bsr.w sub_201c0a
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20197a
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_20190c
	subq.b #$1,($ff1508).l
	bpl.s loc_20195c
	clr.b ($ff1508).l
loc_20195c:
	move.w #$e,d0
	jsr (sub_205e76).l
	bsr.w sub_20773e
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201988
loc_20197a:
	andi.b #$70,d0
	beq.w loc_20190c
	clr.b ($ff1508).l
loc_201988:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201506
loc_20199c:
	bsr.w sub_201c50
	addq.w #$1,($ff1504).l
	jsr (sub_207754).l
	jsr (sub_20384c).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201506
	tst.w ($ff1502).l
	bne.w loc_201506
	tst.w ($ff1906).l
	bne.s loc_2019e4
	cmpi.b #$6,($d024).w
	bcs.s loc_2019e4
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2019e8
loc_2019e4:
	bsr.w sub_202a44
loc_2019e8:
	jsr (sub_2039f6).l
	tst.w ($ff190e).l
	bne.s loc_2019fa
	bsr.w sub_200184
loc_2019fa:
	jsr (sub_20ca5a).l
	bsr.w sub_202588
	bsr.w sub_201ab2
	bra.w loc_20190c

sub_201a0c:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201a24
	move.w #$78,$30(a1)
loc_201a24:
	rts
	.incbin 6694, 90

sub_201a80:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a92(pc,d0.w),($f796).w
	rts
dat_201a92:
	.incbin 6802, 32

sub_201ab2:
	subq.b #$1,($ff1910).l
	bpl.s loc_201ad0
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201ad0:
	subq.b #$1,($ff1912).l
	bpl.s loc_201aee
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201aee:
	subq.b #$1,($ff1914).l
	bpl.s loc_201b16
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201b16
	move.b #$0,($ff1915).l
loc_201b16:
	tst.b ($ff1916).l
	beq.s loc_201b44
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201b44:
	rts

sub_201b46:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b68
	cmpi.b #$2,d0
	bne.s loc_201b68
	add.b ($ff156a).l,d0
loc_201b68:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b80(pc,d1.w),d0
	jmp (sub_205e76).l
dat_201b80:
	.incbin 7040, 38

sub_201ba6:
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

sub_201c0a:
	move.w #$ab,d0
	jsr (sub_202352).l
	bset.b #$7,($f63a).w
	bne.s loc_201c4e
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c34
loc_201c2a:
	move.w #$d5,d0
	jmp (sub_205e76).l
loc_201c34:
	tst.b ($ff151f).l
	bne.s loc_201c2a
	tst.b ($ff1520).l
	bne.s loc_201c2a
	move.w #$90,d0
	jmp (sub_205e76).l
loc_201c4e:
	rts

sub_201c50:
	bclr.b #$7,($f63a).w
	beq.s loc_201c8a
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c70
loc_201c66:
	move.w #$d6,d0
	jmp (sub_205e76).l
loc_201c70:
	tst.b ($ff151f).l
	bne.s loc_201c66
	tst.b ($ff1520).l
	bne.s loc_201c66
	move.w #$91,d0
	jmp (sub_205e76).l
loc_201c8a:
	rts
loc_201c8c:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201d18
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201cc8
	move.w #$700,d0
loc_201cc4:
	dbf d0,loc_201cc4
loc_201cc8:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201cfe(pc,d0.w),d0
	jsr dat_201cfe(pc,d0.w)
loc_201cde:
	jsr (sub_202376).l
	tst.b ($f63a).w
	bne.s loc_201cf2
	bsr.w sub_20212a
	bsr.w sub_202118
loc_201cf2:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201cfe:
	.incbin 7422, 26
loc_201d18:
	tst.b ($ff1957).l
	beq.w loc_201cde
	cmpi.b #$2,($ff1506).l
	bne.w loc_201cde
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201d46
	move.w #$700,d0
loc_201d42:
	dbf d0,loc_201d42
loc_201d46:
	move.w #$1,($f6fc).w
	jsr (sub_2022ea).l
	tst.b ($f64e).w
	bne.s loc_201d7e
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201da2
loc_201d7e:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201da2:
	move.w ($f624).w,(a5)
	jsr (sub_202306).l
	bra.w loc_201cde
	.incbin 7600, 60
	jsr (sub_2022ea).l
	bsr.w sub_202186
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
	bsr.w sub_205da2
	tst.b ($f767).w
	beq.s loc_201e9a
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e9a:
	jsr (sub_20fcee).l
	jsr (sub_202306).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f42
	bsr.w sub_2025fa
	jmp (loc_20b28a).l
	dc.b $4e,$75
	jsr (sub_2022ea).l
	bsr.w sub_202186
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
	jsr (sub_202306).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f42
	bra.w loc_2025de
	.incbin 8050, 16
	bsr.w sub_20206e
	cmpi.b #$1,($ff1903).l
	bne.s loc_201fa4
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201fa4:
	move.w ($f624).w,(a5)
	bra.w loc_2025de
	.incbin 8108, 82
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jsr (sub_202306).l
	lea ($d000).w,a0
	bsr.w sub_205da2
	tst.b ($f767).w
	beq.s loc_202060
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202060:
	tst.w ($f614).w
	beq.w loc_20206c
	subq.w #$1,($f614).w
loc_20206c:
	rts

sub_20206e:
	jsr (sub_2022ea).l
	bsr.w sub_202186
	tst.b ($f64e).w
	bne.s loc_2020a4
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_2020c8
loc_2020a4:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_2020c8:
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
	jmp (sub_202306).l
	dc.b $4e,$73

sub_202118:
	tst.b ($d02a).w
	bne.s loc_202128
	tst.w ($f786).w
	beq.s loc_202128
	addq.w #$1,($f786).w
loc_202128:
	rts

sub_20212a:
	tst.w ($f780).w
	beq.s loc_202134
	addq.w #$1,($f780).w
loc_202134:
	tst.w ($f782).w
	beq.s loc_20213e
	addq.w #$1,($f782).w
loc_20213e:
	rts
	.incbin 8512, 42

sub_20216a:
	bsr.w sub_2022ea
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202306

sub_202186:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202194
	addq.w #$2,a1

sub_202194:
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

sub_2021c2:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_20223e).l,a2
	moveq #$12,d7
loc_2021d6:
	move.w (a2)+,(a0)
	dbf d7,loc_2021d6
	move.w (dat_202240).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2021fc:
	move.w d0,(a1)
	dbf d7,loc_2021fc
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_20222e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20222e
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_20223e:
	dc.b $80,$04
dat_202240:
	.incbin 8768, 36

sub_202264:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202286:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202286
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2022b4:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022b4
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2022d2:
	move.l d0,(a1)+
	dbf d1,loc_2022d2
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2022e2:
	move.l d0,(a1)+
	dbf d1,loc_2022e2
	rts

sub_2022ea:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022fa:
	btst.b #$0,($a11100).l
	bne.s loc_2022fa
	rts

sub_202306:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8980, 62

sub_202352:
	tst.b ($f00a).w
	bne.s loc_20235e
	move.b d0,($f00a).w
	rts
loc_20235e:
	tst.b ($f00b).w
	bne.s loc_20236a
	move.b d0,($f00b).w
	rts
loc_20236a:
	tst.b ($f00c).w
	bne.s loc_202374
	move.b d0,($f00c).w
loc_202374:
	rts

sub_202376:
	jsr (sub_2022ea).l
	tst.b ($f00a).w
	beq.s loc_202390
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202390:
	tst.b ($f00b).w
	beq.s loc_2023a4
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2023a4:
	tst.b ($f00c).w
	beq.s loc_2023b8
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2023b8:
	bra.w sub_202306
	.incbin 9148, 32

sub_2023dc:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_20249e).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023f8

sub_2023ee:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2024b4).l,a3
loc_2023f8:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202406
	adda.w #$a,a3
loc_202406:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2024ca
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202426
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202426:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202472
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20244e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20244e:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_20245c:
	lsr.w #$4,d0
loc_20245e:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_20246c
	jmp (a3)

sub_202468:
	moveq #$0,d4
	moveq #$8,d3
loc_20246c:
	dbf d0,loc_20245e
	bra.s sub_202426
loc_202472:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202480
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202480:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_20245c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_20245c
loc_20249e:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202468
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202468
	rts
dat_2024b4:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202468
	rts

sub_2024ca:
	move.b (a0)+,d0
loc_2024cc:
	cmpi.b #$ff,d0
	bne.s loc_2024d4
	rts
loc_2024d4:
	move.w d0,d7
loc_2024d6:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2024cc
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
	bne.s loc_202504
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2024d6
loc_202504:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202510:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202510
	bra.s loc_2024d6

sub_20251c:
	movem.l a1-a2,-(a7)
	lea (dat_20fe30).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202534:
	tst.l (a2)
	beq.s loc_20253c
	addq.w #$6,a2
	bra.s loc_202534
loc_20253c:
	move.w (a1)+,d0
	bmi.s loc_202548
loc_202540:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202540
loc_202548:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9550, 44

sub_20257a:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202580:
	clr.l (a2)+
	dbf d0,loc_202580
	rts

sub_202588:
	tst.l ($f680).w
	beq.s loc_2025dc
	tst.w ($f6f8).w
	bne.s loc_2025dc
	movea.l ($f680).w,a0
	lea (loc_20249e).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2025aa
	adda.w #$a,a3
loc_2025aa:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2024ca
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
loc_2025dc:
	rts
loc_2025de:
	tst.w ($f6f8).w
	beq.w loc_20267c
loc_2025e6:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202618

sub_2025fa:
	tst.w ($f6f8).w
	beq.s loc_20267c
	tst.b ($f744).w
	bne.s loc_2025e6
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202618:
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
loc_20264c:
	movea.w #$8,a5
	bsr.w sub_202468
	subq.w #$1,($f6f8).w
	beq.s loc_20267e
	subq.w #$1,($f6fa).w
	bne.s loc_20264c
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_20267c:
	rts
loc_20267e:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202684:
	move.l $6(a0),(a0)+
	dbf d0,loc_202684
	rts

sub_20268e:
	lea (dat_20fe30).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2026a0:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2023dc
	dbf d1,loc_2026a0
	rts
	.incbin 9920, 560

sub_2028f0:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_20294c).l,a0
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
	bra.w loc_202978
dat_20294c:
	dc.b $00,$04,$00,$00,$22,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_202958:
	.incbin 10584, 32
loc_202978:
	tst.b ($ff1522).l
	beq.s loc_202998
	jsr (sub_206a00).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202996
	moveq #$0,d0
loc_202996:
	bra.s loc_2029d4
loc_202998:
	lea (dat_202a10).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2029ba
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202958).l,a1
	adda.w d0,a1
	bra.s loc_2029c4
loc_2029ba:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2029c4:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2029d4:
	subi.w #$a0,d1
	bcc.s loc_2029dc
	moveq #$0,d1
loc_2029dc:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2029e6
	move.w d2,d1
loc_2029e6:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2029f2
	moveq #$0,d0
loc_2029f2:
	cmp.w ($f72e).w,d0
	blt.s loc_2029fc
	move.w ($f72e).w,d0
loc_2029fc:
	move.w d0,($f704).w
	bsr.w sub_202a18
	lea (dat_202a14).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202a10:
	dc.b $00,$30,$04,$ac
dat_202a14:
	dc.b $7f,$7f,$7f,$7f

sub_202a18:
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

sub_202a44:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202a50
	rts
loc_202a50:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202bb8
	bsr.w sub_202c58
	bsr.w sub_2034e0
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202ee2
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202eae
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e7a
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202e4a
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
	bsr.w sub_202b30
	move.w ($f718).w,d0
	neg.w d0
	moveq #$17,d6
loc_202af4:
	move.w d0,(a1)+
	dbf d6,loc_202af4
	move.w ($f710).w,d0
	neg.w d0
	moveq #$2d,d6
loc_202b02:
	move.w d0,(a1)+
	dbf d6,loc_202b02
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b76
dat_202b26:
	dc.b $05,$03,$02,$02,$01,$01,$01,$01
	dc.b $01,$00

sub_202b30:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$0,d3
	move.w ($f708).w,d4
	moveq #$8,d6
	adda.w #$34,a1
loc_202b48:
	move.b d3,d0
	jsr (sub_200856).l
	move.w #$100,d5
	sub.w d1,d5
	muls.w d2,d5
	lsr.l #$8,d5
	add.w d4,d5
	neg.w d5
	moveq #$0,d1
	move.b dat_202b26(pc,d6.w),d1
loc_202b64:
	move.w d5,-(a1)
	dbf d1,loc_202b64
	addq.b #$6,d3
	dbf d6,loc_202b48
	adda.w #$34,a1
	rts
loc_202b76:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b84(pc,d2.w)
loc_202b82:
	move.w (a2)+,d0
loc_202b84:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b82
	rts
	dc.b $44,$40,$4e,$fb,$20,$04,$44,$40
	dc.b $22,$c0
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b82
	rts

sub_202bb8:
	move.w ($f700).w,d4
	bsr.s sub_202bec
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bea
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202be4
	bset.b #$2,($f754).w
	rts
loc_202be4:
	bset.b #$3,($f754).w
loc_202bea:
	rts

sub_202bec:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202bfe
	bcs.s loc_202c2e
	bra.s loc_202c04
loc_202bfe:
	clr.w ($f73a).w
	rts
loc_202c04:
	cmpi.w #$10,d0
	blt.s loc_202c0e
	move.w #$10,d0
loc_202c0e:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202c1c
	move.w ($f72a).w,d0
loc_202c1c:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c2e:
	cmpi.w #$fff0,d0
	bge.s loc_202c38
	move.w #$fff0,d0
loc_202c38:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202c1c
	move.w ($f728).w,d0
	bra.s loc_202c1c
	.incbin 11336, 16

sub_202c58:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c6c
	subq.w #$5,d0
loc_202c6c:
	btst.b #$1,$22(a6)
	beq.s loc_202c8c
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202cd8
	subi.w #$40,d0
	bcc.s loc_202cd8
	tst.b ($f75c).w
	bne.s loc_202cea
	bra.s loc_202c98
loc_202c8c:
	sub.w ($f73e).w,d0
	bne.s loc_202c9e
	tst.b ($f75c).w
	bne.s loc_202cea
loc_202c98:
	clr.w ($f73c).w
	rts
loc_202c9e:
	cmpi.w #$60,($f73e).w
	bne.s loc_202cc6
	move.w $14(a6),d1
	bpl.s loc_202cae
	neg.w d1
loc_202cae:
	cmpi.w #$800,d1
	bcc.s loc_202cd8
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d38
	cmpi.w #$fffa,d0
	blt.s loc_202d02
	bra.s loc_202cf0
loc_202cc6:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d38
	cmpi.w #$fffe,d0
	blt.s loc_202d02
	bra.s loc_202cf0
loc_202cd8:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d38
	cmpi.w #$fff0,d0
	blt.s loc_202d02
	bra.s loc_202cf0
loc_202cea:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202cf0:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d42
	bra.w loc_202d0e
loc_202d02:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d0e:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d66
	cmpi.w #$ff00,d1
	bgt.s loc_202d32
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d66
loc_202d32:
	move.w ($f72c).w,d1
	bra.s loc_202d66
loc_202d38:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d42:
	cmp.w ($f72e).w,d1
	blt.s loc_202d66
	subi.w #$800,d1
	bcs.s loc_202d62
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d66
loc_202d62:
	move.w ($f72e).w,d1
loc_202d66:
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
	bne.s loc_202da8
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202da2
	bset.b #$0,($f754).w
	rts
loc_202da2:
	bset.b #$1,($f754).w
loc_202da8:
	rts
	.incbin 11690, 118
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e48
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e42
	bset.b #$4,($f756).w
	rts
loc_202e42:
	bset.b #$5,($f756).w
loc_202e48:
	rts

sub_202e4a:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e78
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e72
	bset.b #$0,($f756).w
	rts
loc_202e72:
	bset.b #$1,($f756).w
loc_202e78:
	rts

sub_202e7a:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202eac
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202ea6
	bset.b d6,($f756).w
	bra.s loc_202eac
loc_202ea6:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202eac:
	rts

sub_202eae:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202ee0
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202eda
	bset.b d6,($f758).w
	bra.s loc_202ee0
loc_202eda:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202ee0:
	rts

sub_202ee2:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202f14
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f0e
	bset.b d6,($f75a).w
	bra.s loc_202f14
loc_202f0e:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202f14:
	rts
	.incbin 12054, 44

sub_202f42:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203000
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030e6
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030e8
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202ffe
	bclr.b #$0,(a2)
	beq.s loc_202fb4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203314
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030ea
loc_202fb4:
	bclr.b #$1,(a2)
	beq.s loc_202fce
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203314
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030ea
loc_202fce:
	bclr.b #$2,(a2)
	beq.s loc_202fe4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203314
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203140
loc_202fe4:
	bclr.b #$3,(a2)
	beq.s loc_202ffe
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203314
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203140
loc_202ffe:
	rts

sub_203000:
	lea (dat_2033cc).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20301c
	bclr.b #$1,(a2)
	beq.s loc_203066
	move.w #$e0,d4
loc_20301c:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203096(pc,d0.w),a3
	beq.s loc_20304e
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203314
	movem.l (a7)+,d4-d5
	bsr.w sub_2030ea
	movea.l (a7)+,a0
	bra.s loc_203066
loc_20304e:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203316
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203116
	movea.l (a7)+,a0
loc_203066:
	tst.b (a2)
	bne.s loc_20306c
	rts
loc_20306c:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203080
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203080:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2030a6
dat_203096:
	.incbin 12438, 16
loc_2030a6:
	moveq #$f,d6
	move.l #$800000,d7
loc_2030ae:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2030da
	btst.b d0,(a2)
	beq.s loc_2030da
	add.w d0,d0
	movea.l dat_203096(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ec
	movem.l (a7)+,d4-d5
	bsr.w sub_203314
	bsr.w sub_20316e
	movem.l (a7)+,d4-d5/a0
loc_2030da:
	addi.w #$10,d4
	dbf d6,loc_2030ae
	clr.b (a2)
	rts

sub_2030e6:
	rts

sub_2030e8:
	rts

sub_2030ea:
	moveq #$15,d6

sub_2030ec:
	move.l #$800000,d7
	move.l d0,d1
loc_2030f4:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ec
	move.l d1,d0
	bsr.w sub_20316e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030f4
	rts

sub_203116:
	move.l #$800000,d7
	move.l d0,d1
loc_20311e:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ee
	move.l d1,d0
	bsr.w sub_20316e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20311e
	rts

sub_203140:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20314a:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ec
	move.l d1,d0
	bsr.w sub_20316e
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20314a
	rts

sub_20316e:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2031aa
	btst.b #$3,(a0)
	bne.s loc_20318a
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20318a:
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
loc_2031aa:
	btst.b #$3,(a0)
	bne.s loc_2031cc
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
loc_2031cc:
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

sub_2031ec:
	add.w (a3),d5

sub_2031ee:
	add.w $4(a3),d4

sub_2031f2:
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
	beq.s loc_20323c
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
loc_20323c:
	rts
	.incbin 12862, 62
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_2031f2
	bne.s loc_2032a2
	movem.l (a7)+,d3-d5
	bra.s loc_2032cc
loc_2032a2:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_2032d0
	bne.s loc_2032cc
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_20331a
	bsr.w sub_20316e
	movem.l (a7)+,d3-d5
loc_2032cc:
	movea.l (a7)+,a0
	rts

sub_2032d0:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_203310
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_203310
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_203310
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_203310
	moveq #$0,d0
	rts
loc_203310:
	moveq #$1,d0
	rts

sub_203314:
	add.w (a3),d5

sub_203316:
	add.w $4(a3),d4

sub_20331a:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13104, 28

sub_20334c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203376
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_20339e

sub_203376:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20337a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203314
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030ec
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20337a
	rts
loc_20339e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033a2:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033cc).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20340e
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2033a2
	rts
dat_2033cc:
	.incbin 13260, 50
dat_2033fe:
	.incbin 13310, 16

sub_20340e:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033fe(pc,d0.w),a3
	beq.s loc_203430
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203314
	movem.l (a7)+,d4-d5
	bsr.w sub_2030ea
	bra.s loc_203444
loc_203430:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203316
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203116
loc_203444:
	rts

sub_203446:
	moveq #$0,d0
	lea (dat_20fe20).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023ee
	movea.l (a2)+,a0
	bsr.w sub_203492
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2005ec
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203490
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203490
	bsr.w sub_20251c
loc_203490:
	rts

sub_203492:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20349c:
	move.l d0,(a3)+
	dbf d1,loc_20349c
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2034b2
	lea ($a040).w,a3
	moveq #$2,d1

sub_2034b2:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_236ab2).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034cc:
	move.w d1,d0
	movea.l a3,a0
loc_2034d0:
	move.b (a1)+,(a0)+
	dbf d0,loc_2034d0
	lea $80(a3),a3
	dbf d2,loc_2034cc
	rts

sub_2034e0:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20355a(pc,d0.w),d0
	jsr dat_20355a(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203506
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203506:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203534
	bcc.s loc_203536
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20352a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20352a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203534:
	rts
loc_203536:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20354e
	btst.b #$1,($d022).w
	beq.s loc_20354e
	add.w d1,d1
	add.w d1,d1
loc_20354e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20355a:
	.incbin 13658, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203614(pc,d0.w),d0
	jmp dat_203614(pc,d0.w)
dat_203614:
	.incbin 13844, 38
	btst.b #$4,($f7a7).w
	bne.s loc_20364a
	move.w #$710,($f726).w
	rts
loc_20364a:
	move.w #$ba0,d0
	move.w #$1d0,d1
	bsr.w sub_203806
	bne.w loc_203696
	lea ($d000).w,a1
	cmpi.w #$298,$c(a1)
	ble.s loc_20367a
	cmpi.w #$498,$c(a1)
	ble.s loc_203674
	move.w #$5d0,d0
	bra.s loc_20367e
loc_203674:
	move.w #$3d0,d0
	bra.s loc_20367e
loc_20367a:
	move.w #$1d0,d0
loc_20367e:
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d0
	bge.s loc_20368c
	neg.w d0
loc_20368c:
	cmpi.w #$2,d0
	bgt.s loc_203696
	move.w d1,($f72e).w
loc_203696:
	rts
	.incbin 13976, 24
	move.w #$310,($f726).w
	rts
	.incbin 14008, 334

sub_203806:
	cmp.w ($d008).w,d0
	ble.s loc_203810
	moveq #$0,d0
	rts
loc_203810:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_20381c
	neg.w d1
loc_20381c:
	cmpi.w #$4,d1
	bge.s loc_203828
	move.w ($f726).w,($f72e).w
loc_203828:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_203848
	cmp.w ($f72a).w,d0
	ble.s loc_203840
	move.w ($f72a).w,d0
loc_203840:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_203848:
	moveq #$1,d0
	rts

sub_20384c:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203854:
	move.b (a0),d0
	beq.s loc_20386a
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c6e).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20386a:
	lea $40(a0),a0
	dbf d7,loc_203854
	rts

sub_203874:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2038b2
	bpl.s loc_2038a4
	btst.b #$1,$2c(a0)
	beq.s loc_2038a4
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2038b2
loc_2038a4:
	btst.b #$2,$2c(a0)
	bne.s loc_2038b2
	addi.w #$38,$12(a0)
loc_2038b2:
	tst.w $12(a0)
	bmi.s loc_2038c6
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2038c6
	move.w #$1000,$12(a0)
loc_2038c6:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2038d6:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203912
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203912
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203910
	neg.w d1
loc_203910:
	add.w d1,d0
loc_203912:
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

sub_20392c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20399c
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039b8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2039b8
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203976
	cmpi.w #$800,d3
	bcs.s loc_203988
	subi.w #$800,d3
	bra.s loc_203988
loc_203976:
	cmpi.w #$700,($f704).w
	bcs.s loc_203988
	cmpi.w #$100,d3
	bcc.s loc_203988
	addi.w #$800,d3
loc_203988:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039b8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2039b8
loc_20399c:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2039b8
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2039b8:
	rts
	.incbin 14778, 30

sub_2039d8:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2039de:
	move.l d1,(a1)+
	dbf d0,loc_2039de
	rts
dat_2039e6:
	.incbin 14822, 16

sub_2039f6:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203a02:
	tst.w (a4)
	beq.w loc_203ac2
	moveq #$2,d6
loc_203a0a:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203aba
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a70
	movea.l dat_2039e6(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a54
	cmpi.w #$800,d2
	bcs.s loc_203a66
	subi.w #$800,d2
	bra.s loc_203a66
loc_203a54:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a66
	cmpi.w #$100,d2
	bcc.s loc_203a66
	addi.w #$800,d2
loc_203a66:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a92
loc_203a70:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a92
	dc.b $34,$28,$00,$0c
	sub.w $4(a1),d2
	addi.w #$80,d2
	cmpi.w #$60,d2
	bcs.s loc_203aba
	cmpi.w #$180,d2
	bcc.s loc_203aba
loc_203a92:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203ab0
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203ab4
loc_203ab0:
	bsr.w sub_203ae4
loc_203ab4:
	bset.b #$7,$1(a0)
loc_203aba:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203a0a
loc_203ac2:
	lea $80(a4),a4
	dbf d7,loc_203a02
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203adc
	move.l #$0,(a2)
	rts
loc_203adc:
	move.b #$0,-$5(a2)
	rts

sub_203ae4:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203b2a
	btst.l #$1,d4
	bne.w loc_203b78
loc_203af6:
	cmpi.b #$50,d5
	beq.s loc_203b28
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
	bne.s loc_203b22
	addq.w #$1,d0
loc_203b22:
	move.w d0,(a2)+
	dbf d1,loc_203af6
loc_203b28:
	rts
loc_203b2a:
	btst.l #$1,d4
	bne.w loc_203bbe
loc_203b32:
	cmpi.b #$50,d5
	beq.s loc_203b76
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
	bne.s loc_203b70
	addq.w #$1,d0
loc_203b70:
	move.w d0,(a2)+
	dbf d1,loc_203b32
loc_203b76:
	rts
loc_203b78:
	cmpi.b #$50,d5
	beq.s loc_203bbc
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
	bne.s loc_203bb6
	addq.w #$1,d0
loc_203bb6:
	move.w d0,(a2)+
	dbf d1,loc_203b78
loc_203bbc:
	rts
loc_203bbe:
	cmpi.b #$50,d5
	beq.s loc_203c10
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
	bne.s loc_203c0a
	addq.w #$1,d0
loc_203c0a:
	move.w d0,(a2)+
	dbf d1,loc_203bbe
loc_203c10:
	rts
	.incbin 15378, 92
dat_203c6e:
	.incbin 15470, 246

sub_203d64:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d76
	move.w #$0,(a1)
	rts
loc_203d76:
	tst.w (a1)
	bne.s loc_203d80
	move.b #$1,$1(a1)
loc_203d80:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203dca
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203dbc
	neg.w $10(a0)
loc_203dbc:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205e76
loc_203dca:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203de8
	cmpa.w #$d040,a0
	beq.s loc_203de8
	tst.b ($ff1906).l
	beq.s loc_203de8
	jmp (loc_20732c).l
loc_203de8:
	move.b $2a(a0),d0
	beq.s loc_203e12
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203e04
	cmpi.b #$2d,d0
	bcs.s loc_203e0e
	move.b #$2d,d0
	bra.s loc_203e0e
loc_203e04:
	cmpi.b #$1e,d0
	bcs.s loc_203e0e
	move.b #$1e,d0
loc_203e0e:
	move.b d0,$2a(a0)
loc_203e12:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203e20(pc,d0.w),d1
	jmp dat_203e20(pc,d1.w)
dat_203e20:
	dc.b $00,$4c,$05,$34,$17,$ac,$18,$18
	dc.b $18,$a0
loc_203e2a:
	tst.b ($d300).w
	bne.s loc_203e68
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e68:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e90
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e90:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203ec4:
	tst.b ($ff1506).l
	bne.s loc_203f2a
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_203f2a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203fa4
	cmpi.b #$2f,d1
	bne.s loc_203f2c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f2a
	tst.b $2c(a0)
	beq.s loc_203f2a
	jsr (sub_207950).l
	bne.s loc_203f2a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203f22
	moveq #$0,d0
loc_203f22:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f2a:
	rts
loc_203f2c:
	rts
	.incbin 16174, 118

sub_203fa4:
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

sub_203fca:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204048
	cmpi.b #$4,$24(a0)
	bcc.s loc_204048
	btst.b #$3,$2c(a0)
	bne.s loc_204048
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	bne.s loc_204048
	bset.b #$3,$2c(a0)
	move.w #$0,$10(a0)
	move.w #$fe00,d0
	tst.w $12(a0)
	bmi.s loc_204014
	neg.w d0
loc_204014:
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
loc_204048:
	rts

sub_20404a:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2040e6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2040e6
	btst.b #$0,$2c(a0)
	bne.s loc_2040e6
	btst.b #$2,$2c(a0)
	bne.s loc_2040e6
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_2040e6
	move.w ($f786).w,d0
	beq.s loc_2040a8
	clr.w ($f786).w
	clr.b ($ff1521).l
	cmpi.w #$5a,d0
	bcs.s loc_2040a8
	clr.b ($f784).w
loc_2040a8:
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
loc_2040e6:
	rts

sub_2040e8:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204146
	cmpi.b #$4,$24(a0)
	bcc.s loc_204146
	tst.b ($ff1521).l
	bne.s loc_204146
	tst.b ($ff151f).l
	bne.s loc_204146
	tst.w $30(a0)
	bne.s loc_204146
	moveq #$0,d0
	move.b ($ff195a).l,d0
	beq.s loc_204146
	subq.b #$1,d0
	add.w d0,d0
	move.w dat_204148(pc,d0.w),d0
	lea dat_204148(pc,d0.w),a3
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
loc_20413a:
	move.w (a3)+,d1
	bmi.s loc_204146
	cmp.w d1,d0
	bne.s loc_20413a
	bra.w sub_2070ce
loc_204146:
	rts
dat_204148:
	.incbin 16712, 32

sub_204168:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204222
	tst.b ($ff1521).l
	bne.w loc_204222
	tst.b ($ff151f).l
	bne.w loc_204222
	cmpi.w #$980,$8(a0)
	bcs.s loc_204198
	cmpi.w #$a20,$8(a0)
	bcs.w loc_204222
loc_204198:
	btst.b #$7,($f7a7).w
	bne.w loc_204222
	tst.w $30(a0)
	bne.s loc_204222
	cmpi.b #$2,($ff1507).l
	bne.s loc_2041cc
	cmpi.w #$a10,$8(a0)
	bcs.s loc_2041e4
	tst.b ($ff1958).l
	beq.s loc_204222
	tst.b ($ff156a).l
	bne.s loc_2041de
	bra.s loc_2041e4
loc_2041cc:
	cmpi.b #$2,($ff152e).l
	bne.s loc_2041e4
	tst.b ($ff156a).l
	beq.s loc_2041e4
loc_2041de:
	tst.b ($f668).w
	beq.s loc_204222
loc_2041e4:
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$2,d6
	lea (dat_204224).l,a1
	cmpi.b #$2,($ff152e).l
	bne.s loc_204218
	tst.b ($ff156a).l
	bne.s loc_204218
	lea (dat_20422a).l,a1
loc_204218:
	cmp.w (a1)+,d0
	beq.w sub_2070ce
	dbf d6,loc_204218
loc_204222:
	rts
dat_204224:
	dc.b $02,$43,$02,$44,$02,$45
dat_20422a:
	dc.b $02,$87,$02,$88,$02,$89

sub_204230:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204300
	tst.b ($f7a7).w
	bne.w loc_204300
	cmpi.b #$2,($ff152e).l
	bcc.s loc_204264
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_20425c
	addi.b #$1e,d0
loc_20425c:
	cmp.b ($f7b3).w,d0
	beq.w loc_204300
loc_204264:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	beq.s loc_2042bc
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	bne.s loc_204300
loc_2042bc:
	move.w #$ea00,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	bset.b #$2,$22(a0)
	bne.s loc_204300
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
	move.b #$2,$1c(a0)
	move.w #$da,d0
	jsr (sub_202352).l
loc_204300:
	rts

sub_204302:
	rts
	.incbin 17156, 80
	bsr.s sub_204302
	bsr.w sub_203ec4
	tst.w ($ff1588).l
	beq.s loc_204374
	btst.b #$4,($f605).w
	beq.s loc_204374
	move.b #$1,($ff1906).l
	rts
loc_204374:
	tst.b ($f7cc).w
	bne.s loc_204380
	move.w ($f604).w,($f602).w
loc_204380:
	btst.b #$0,$2c(a0)
	beq.s loc_20438e
	bsr.w sub_2045a8
	bra.s loc_2043b4
loc_20438e:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_2043e4(pc,d0.w),d1
	jsr dat_2043e4(pc,d1.w)
	bsr.w sub_204230
	bsr.w sub_204168
	bsr.w sub_2040e8
	bsr.w sub_20404a
	bsr.w sub_203fca
loc_2043b4:
	bsr.s sub_2043f2
	bsr.w sub_2044b2
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	bsr.w sub_20586c
	tst.b $2c(a0)
	bmi.s loc_2043de
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2043de
	jsr (sub_206ed0).l
loc_2043de:
	bsr.w sub_205730
	rts
dat_2043e4:
	dc.b $02,$84,$02,$f2,$03,$46,$03,$74
	dc.b $81,$82,$83,$84,$85,$86

sub_2043f2:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204416
	move.w $30(a0),d0
	beq.s loc_204408
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204416
loc_204408:
	btst.b #$6,$2c(a0)
	bne.s loc_204416
	jsr (sub_20392c).l
loc_204416:
	tst.b ($ff151f).l
	beq.s loc_20445a
	tst.w $32(a0)
	beq.s loc_20445a
	subq.w #$1,$32(a0)
	bne.s loc_20445a
	tst.b ($ff1520).l
	bne.s loc_204452
	tst.b ($ff1958).l
	bne.s loc_204452
	tst.b ($ff152e).l
	bne.s loc_20444c
	move.w #$e,d0
	jsr (sub_205e76).l
loc_20444c:
	jsr (sub_201b46).l
loc_204452:
	move.b #$0,($ff151f).l
loc_20445a:
	tst.b ($ff1520).l
	beq.s loc_2044b0
	tst.w $34(a0)
	beq.s loc_2044b0
	subq.w #$1,$34(a0)
	bne.s loc_2044b0
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2044a8
	tst.b ($ff1958).l
	bne.s loc_2044a8
	tst.b ($ff152e).l
	bne.s loc_2044a2
	move.w #$e,d0
	jsr (sub_205e76).l
loc_2044a2:
	jsr (sub_201b46).l
loc_2044a8:
	move.b #$0,($ff1520).l
loc_2044b0:
	rts

sub_2044b2:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts
	dc.b $4e,$75

sub_2044ce:
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
	bcs.s loc_2045a0
	move.l #$50000,d0
loc_2045a0:
	move.l d0,($ff1570).l
	rts

sub_2045a8:
	tst.b $2a(a0)
	bne.w loc_204666
	tst.b ($f784).w
	beq.w loc_204666
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2045c6
	neg.w d0
loc_2045c6:
	tst.w ($f786).w
	bne.s loc_2045d2
	move.w #$1,($f786).w
loc_2045d2:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2045e8
	move.b #$1,($ff1502).l
	bra.w loc_205e72
loc_2045e8:
	cmpi.w #$d2,d1
	bcs.s loc_20463c
	cmpi.b #$2,($ff1522).l
	beq.s loc_20463a
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204612
	move.w #$82,d0
	jsr (sub_205e76).l
	moveq #$0,d0
loc_204612:
	add.b ($f784).w,d0
	bpl.s loc_20461c
	moveq #$0,d0
	bra.s loc_204624
loc_20461c:
	cmpi.b #$3,d0
	bcs.s loc_204624
	moveq #$2,d0
loc_204624:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2044ce
	move.b #$2,($ff1522).l
loc_20463a:
	rts
loc_20463c:
	cmpi.w #$5a,d1
	bcc.s loc_204654
	cmp.w d2,d0
	bcc.w loc_203e2a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204654:
	cmp.w d2,d0
	bcc.s loc_204666
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204666:
	rts
	tst.b ($f75f).w
	beq.s loc_20467a
	cmpi.b #$5,$1c(a0)
	bne.s loc_2046d4
	clr.b ($f75f).w
loc_20467a:
	bsr.w sub_203d64
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2046aa
	tst.b ($ff195b).l
	beq.s loc_204698
	cmpi.b #$79,$1a(a0)
	bne.s loc_2046d4
	bra.s loc_2046a0
loc_204698:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2046d4
loc_2046a0:
	bsr.w sub_205068
	jmp (sub_203874).l
loc_2046aa:
	bsr.w sub_2048de
	bsr.w sub_2045a8
	bsr.w sub_205146
	bsr.w sub_205260
	bsr.w sub_204954
	bsr.w sub_2050d4
	bsr.w sub_205068
	jsr (sub_2038d6).l
	bsr.w sub_200c56
	bsr.w sub_2052de
loc_2046d4:
	rts
	tst.w $12(a0)
	bmi.s loc_2046ea
	cmpi.b #$2c,$1c(a0)
	beq.s loc_2046ea
	move.b #$0,$1c(a0)
loc_2046ea:
	btst.b #$2,$2c(a0)
	beq.s loc_2046f8
	bsr.w sub_20484a
	bra.s loc_204724
loc_2046f8:
	bsr.w sub_2048de
	bsr.w sub_2045a8
	bsr.w sub_20522c
	bsr.w sub_204f94
	bsr.w sub_205068
	jsr (sub_203874).l
	btst.b #$6,$22(a0)
	beq.s loc_204720
	subi.w #$28,$12(a0)
loc_204720:
	bsr.w sub_205320
loc_204724:
	bsr.w sub_205344
	rts
	bsr.w sub_2048de
	bsr.w sub_2045a8
	bsr.w sub_205146
	bsr.w sub_20529c
	bsr.w sub_204ddc
	bsr.w sub_205068
	tst.b $2a(a0)
	bne.s loc_20474e
	jsr (sub_2038d6).l
loc_20474e:
	bsr.w sub_200c56
	bsr.w sub_2052de
	rts
	btst.b #$3,$2c(a0)
	beq.s loc_20476a
	bsr.w sub_2047ae
	bsr.w sub_2045a8
	bra.s loc_2047a8
loc_20476a:
	btst.b #$2,$2c(a0)
	beq.s loc_20477c
	bsr.w sub_20484a
	bsr.w sub_2045a8
	bra.s loc_2047a8
loc_20477c:
	bsr.w sub_2048de
	bsr.w sub_2045a8
	bsr.w sub_20522c
	bsr.w sub_204f94
	bsr.w sub_205068
	jsr (sub_203874).l
	btst.b #$6,$22(a0)
	beq.s loc_2047a4
	subi.w #$28,$12(a0)
loc_2047a4:
	bsr.w sub_205320
loc_2047a8:
	bsr.w sub_205344
	rts

sub_2047ae:
	btst.b #$4,$2c(a0)
	beq.s loc_2047e2
	move.b $2b(a0),d0
	andi.b #$7f,d0
	bne.s loc_2047f2
	move.w #$f400,$10(a0)
	tst.b $2b(a0)
	bmi.s loc_2047d0
	neg.w $10(a0)
loc_2047d0:
	andi.b #$7f,$2(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	rts
loc_2047e2:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047f2
	bset.b #$4,$2c(a0)
loc_2047f2:
	addq.b #$8,$2b(a0)
	ori.w #$8000,$2(a0)
	move.b $2b(a0),d0
	bpl.s loc_204808
	andi.w #$7fff,$2(a0)
loc_204808:
	jsr (sub_200856).l
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
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	beq.s loc_204848
	neg.w $12(a0)
loc_204848:
	rts

sub_20484a:
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_204872
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20488c
loc_204872:
	bclr.b #$2,$2c(a0)
	addi.w #$10,$c(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	rts
loc_20488c:
	moveq #$2,d0
	btst.b #$2,($f602).w
	beq.s loc_2048a6
	neg.w d0
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a0)
	bra.s loc_2048ba
loc_2048a6:
	btst.b #$3,($f602).w
	beq.s loc_2048dc
	bclr.b #$0,$22(a0)
	bclr.b #$0,$1(a0)
loc_2048ba:
	add.w d0,$8(a0)
	subq.b #$1,$1f(a0)
	bpl.s loc_2048dc
	move.b #$7,$1f(a0)
	addq.b #$1,$1b(a0)
	cmpi.b #$4,$1b(a0)
	bcs.s loc_2048dc
	move.b #$0,$1b(a0)
loc_2048dc:
	rts

sub_2048de:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20494a
	tst.w ($ff1506).l
	bne.s loc_20494a
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20494c).l,a2
loc_204912:
	move.b (a2)+,d0
	bmi.s loc_204922
	cmp.b d0,d1
	bne.s loc_204912
	bset.b #$1,$2c(a0)
	rts
loc_204922:
	bclr.b #$1,$2c(a0)
	beq.s loc_20494a
	tst.w $12(a0)
	bpl.s loc_20494a
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20494a
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20494a
	neg.w $10(a0)
loc_20494a:
	rts
dat_20494c:
	dc.b $06,$07,$08,$44,$45,$46,$49,$ff

sub_204954:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204c66
	tst.w $3e(a0)
	bne.w loc_204c16
	btst.b #$2,($f602).w
	beq.s loc_20497c
	bsr.w sub_204cf6
loc_20497c:
	btst.b #$3,($f602).w
	beq.s loc_204988
	bsr.w sub_204d6c
loc_204988:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204c16
	tst.w $14(a0)
	beq.s loc_2049a8
	tst.b $2a(a0)
	beq.w loc_204c16
	bra.s loc_2049b4
loc_2049a8:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2049b4:
	btst.b #$3,$22(a0)
	beq.s loc_204a04
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.s loc_204a46
	cmpi.b #$1e,$0(a1)
	bne.s loc_2049e4
	move.b #$0,$1c(a0)
	bra.w loc_204c16
loc_2049e4:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204a2a
	cmp.w d2,d1
	bge.s loc_204a18
	bra.s loc_204a46
loc_204a04:
	jsr (sub_206c34).l
	cmpi.w #$c,d1
	blt.s loc_204a46
	cmpi.b #$3,$36(a0)
	bne.s loc_204a22
loc_204a18:
	btst.b #$0,$22(a0)
	bne.s loc_204a32
	bra.s loc_204a3c
loc_204a22:
	cmpi.b #$3,$37(a0)
	bne.s loc_204a46
loc_204a2a:
	btst.b #$0,$22(a0)
	bne.s loc_204a3c
loc_204a32:
	move.b #$32,$1c(a0)
	bra.w loc_204c16
loc_204a3c:
	move.b #$6,$1c(a0)
	bra.w loc_204c16
loc_204a46:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204a5a
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204a5a:
	btst.b #$7,($f788).w
	bne.w loc_204b5e
	btst.b #$6,($f788).w
	bne.w loc_204b7e
	btst.b #$1,($f602).w
	bne.w loc_204b7e
	andi.b #$f,($f788).w
	beq.s loc_204a92
	btst.b #$0,($f603).w
	beq.s loc_204aa6
	bset.b #$7,($f788).w
	bra.w loc_204c3a
loc_204a92:
	btst.b #$0,($f603).w
	beq.w loc_204aa6
	move.b #$1,($f788).w
	bra.w loc_204c3a
loc_204aa6:
	btst.b #$0,($f602).w
	beq.s loc_204b22
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204b04
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204ad6
	asr.w #$1,d2
	sub.w d2,d1
loc_204ad6:
	btst.b #$0,$22(a0)
	beq.s loc_204ae2
	neg.w d0
	neg.w d1
loc_204ae2:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204af8
	cmp.w d0,d1
	ble.s loc_204afe
	bra.s loc_204afc
loc_204af8:
	cmp.w d1,d0
	ble.s loc_204afe
loc_204afc:
	move.w d1,d0
loc_204afe:
	move.w d0,$14(a0)
	rts
loc_204b04:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204b1e
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202352).l
loc_204b1e:
	bra.w loc_204c3a
loc_204b22:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204b42
	move.w #$ab,d0
	jsr (sub_202352).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204b7e
loc_204b42:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202352).l
	bra.w loc_204c16
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204b5e:
	btst.b #$0,($f602).w
	beq.s loc_204b7e
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204c3a
	addq.w #$2,($f73e).w
	bra.w loc_204c3a
loc_204b7e:
	btst.b #$6,($f788).w
	bne.w loc_204bfa
	andi.b #$f,($f788).w
	beq.s loc_204ba2
	btst.b #$1,($f603).w
	beq.s loc_204bb4
	bset.b #$6,($f788).w
	bra.w loc_204c3a
loc_204ba2:
	btst.b #$1,($f603).w
	beq.s loc_204bb4
	move.b #$1,($f788).w
	bra.w loc_204c3a
loc_204bb4:
	btst.b #$1,($f602).w
	beq.s loc_204c16
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204bf8
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204bf8
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204bea
	neg.w $14(a0)
loc_204bea:
	move.w #$9c,d0
	jsr (sub_202352).l
	bsr.w sub_2050fc
loc_204bf8:
	bra.s loc_204c3a
loc_204bfa:
	btst.b #$1,($f602).w
	beq.s loc_204c16
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204c3a
	subq.w #$2,($f73e).w
	bra.s loc_204c3a
loc_204c16:
	cmpi.w #$60,($f73e).w
	bne.s loc_204c30
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204c3a
	move.b #$0,($f788).w
	bra.s loc_204c3a
loc_204c30:
	bcc.s loc_204c36
	addq.w #$4,($f73e).w
loc_204c36:
	subq.w #$2,($f73e).w
loc_204c3a:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c66
	move.w $14(a0),d0
	beq.s loc_204c66
	bmi.s loc_204c5a
	sub.w d5,d0
	bcc.s loc_204c54
	move.w #$0,d0
loc_204c54:
	move.w d0,$14(a0)
	bra.s loc_204c66
loc_204c5a:
	add.w d5,d0
	bcc.s loc_204c62
	move.w #$0,d0
loc_204c62:
	move.w d0,$14(a0)
loc_204c66:
	move.b $26(a0),d0
	jsr (sub_200856).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204c84:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204cf4
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204cf4
	bmi.s loc_204c9c
	neg.w d1
loc_204c9c:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206af4
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204cf4
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204cf0
	cmpi.b #$40,d0
	beq.s loc_204cde
	cmpi.b #$80,d0
	beq.s loc_204cd8
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204cd8:
	sub.w d1,$12(a0)
	rts
loc_204cde:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204cf0:
	add.w d1,$12(a0)
loc_204cf4:
	rts

sub_204cf6:
	tst.b $2a(a0)
	bne.s loc_204d6a
	move.w $14(a0),d0
	beq.s loc_204d04
	bpl.s loc_204d34
loc_204d04:
	bset.b #$0,$22(a0)
	bne.s loc_204d18
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204d18:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204d28
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204d28
	move.w d1,d0
loc_204d28:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204d34:
	sub.w d4,d0
	bcc.s loc_204d3c
	move.w #$ff80,d0
loc_204d3c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d6a
	cmpi.w #$400,d0
	blt.s loc_204d6a
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202352).l
loc_204d6a:
	rts

sub_204d6c:
	tst.b $2a(a0)
	bne.s loc_204dda
	move.w $14(a0),d0
	bmi.s loc_204da4
	bclr.b #$0,$22(a0)
	beq.s loc_204d8c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204d8c:
	cmp.w d6,d0
	bge.s loc_204d98
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d98
	move.w d6,d0
loc_204d98:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204da4:
	add.w d4,d0
	bcc.s loc_204dac
	move.w #$80,d0
loc_204dac:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204dda
	cmpi.w #$fc00,d0
	bgt.s loc_204dda
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202352).l
loc_204dda:
	rts

sub_204ddc:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204f18
	tst.w $3e(a0)
	bne.s loc_204e14
	btst.b #$2,($f602).w
	beq.s loc_204e08
	bsr.w sub_204f4e
loc_204e08:
	btst.b #$3,($f602).w
	beq.s loc_204e14
	bsr.w sub_204f72
loc_204e14:
	tst.b $2a(a0)
	beq.w loc_204ebe
	move.w #$32,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204e34
	asr.w #$1,d2
	sub.w d2,d1
loc_204e34:
	btst.b #$0,$22(a0)
	beq.s loc_204e40
	neg.w d0
	neg.w d1
loc_204e40:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204e56
	cmp.w d0,d1
	ble.s loc_204e5c
	bra.s loc_204e5a
loc_204e56:
	cmp.w d1,d0
	ble.s loc_204e5c
loc_204e5a:
	move.w d1,d0
loc_204e5c:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204e90
	rts
loc_204e6a:
	move.w #$ab,d0
	jsr (sub_202352).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204ee6
loc_204e90:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204e6a
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202352).l
	btst.b #$0,$22(a0)
	bne.s loc_204eb6
	bsr.w sub_204f72
	bra.s loc_204ebe
loc_204eb6:
	bsr.w sub_204f4e
	bra.s loc_204ebe
	dc.b $4e,$75
loc_204ebe:
	move.w $14(a0),d0
	beq.s loc_204ee0
	bmi.s loc_204ed4
	sub.w d5,d0
	bcc.s loc_204ece
	move.w #$0,d0
loc_204ece:
	move.w d0,$14(a0)
	bra.s loc_204ee0
loc_204ed4:
	add.w d5,d0
	bcc.s loc_204edc
	move.w #$0,d0
loc_204edc:
	move.w d0,$14(a0)
loc_204ee0:
	tst.w $14(a0)
	bne.s loc_204f18
loc_204ee6:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f02
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_204f12
loc_204f02:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204f12:
	move.b #$5,$1c(a0)
loc_204f18:
	move.b $26(a0),d0
	jsr (sub_200856).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204f3c
	move.w #$1000,d1
loc_204f3c:
	cmpi.w #$f000,d1
	bge.s loc_204f46
	move.w #$f000,d1
loc_204f46:
	move.w d1,$10(a0)
	bra.w loc_204c84

sub_204f4e:
	move.w $14(a0),d0
	beq.s loc_204f56
	bpl.s loc_204f64
loc_204f56:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204f64:
	sub.w d4,d0
	bcc.s loc_204f6c
	move.w #$ff80,d0
loc_204f6c:
	move.w d0,$14(a0)
	rts

sub_204f72:
	move.w $14(a0),d0
	bmi.s loc_204f86
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204f86:
	add.w d4,d0
	bcc.s loc_204f8e
	move.w #$80,d0
loc_204f8e:
	move.w d0,$14(a0)
	rts

sub_204f94:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	tst.w ($ff1506).l
	bne.s loc_204fc2
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204fba
	cmpi.w #$840,$8(a0)
	bcs.s loc_204ff2
loc_204fba:
	btst.b #$1,$2c(a0)
	bne.s loc_204ff2
loc_204fc2:
	btst.b #$2,($f602).w
	beq.s loc_204fdc
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204fdc
	move.w d1,d0
loc_204fdc:
	btst.b #$3,($f602).w
	beq.s loc_204ff2
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204ff2
	move.w d6,d0
loc_204ff2:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_205008
	bcc.s loc_205004
	addq.w #$4,($f73e).w
loc_205004:
	subq.w #$2,($f73e).w
loc_205008:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_205036
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_205036
	bmi.s loc_20502a
	sub.w d1,d0
	bcc.s loc_205024
	move.w #$0,d0
loc_205024:
	move.w d0,$10(a0)
	rts
loc_20502a:
	sub.w d1,d0
	bcs.s loc_205032
	move.w #$0,d0
loc_205032:
	move.w d0,$10(a0)
loc_205036:
	rts
	.incbin 20536, 48

sub_205068:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_2050bc
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_205096
	addi.w #$38,d0
loc_205096:
	cmp.w d1,d0
	bls.s loc_2050bc
loc_20509a:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_2050aa
	rts
loc_2050aa:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207178
	move.b #$6,$24(a0)
	rts
loc_2050bc:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_20509a

sub_2050d4:
	tst.b ($f7ca).w
	bne.s loc_2050fa
	move.w $14(a0),d0
	bpl.s loc_2050e2
	neg.w d0
loc_2050e2:
	cmpi.w #$80,d0
	bcs.s loc_2050fa
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2050fa
	btst.b #$1,($f602).w
	bne.s sub_2050fc
loc_2050fa:
	rts

sub_2050fc:
	btst.b #$2,$22(a0)
	beq.s loc_205106
	rts
loc_205106:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205122
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205132
loc_205122:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205132:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bne.s loc_205144
	move.w #$200,$14(a0)
loc_205144:
	rts

sub_205146:
	tst.b $2a(a0)
	beq.s loc_20514e
	rts
loc_20514e:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_205160
	tst.w $14(a0)
	beq.w loc_205222
loc_205160:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205222
	btst.b #$3,$22(a0)
	beq.s loc_20517c
	jsr (sub_205e06).l
	beq.s loc_2051ac
loc_20517c:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206b5e
	cmpi.w #$6,d1
	blt.w loc_205222
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_2051a2
	move.w #$380,d2
loc_2051a2:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_2051ac:
	jsr (sub_200856).l
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
	jsr (sub_202352).l
	btst.b #$2,$22(a0)
	bne.s loc_205224
	tst.b ($ff195b).l
	beq.s loc_205206
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205216
loc_205206:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205216:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205222:
	rts
loc_205224:
	bset.b #$4,$22(a0)
	rts

sub_20522c:
	tst.b $3c(a0)
	beq.s loc_20525e
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205242
	move.w #$fe00,d1
loc_205242:
	cmp.w $12(a0),d1
	ble.s loc_20525c
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_20525c
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_20525c:
	rts
loc_20525e:
	rts

sub_205260:
	tst.b $2a(a0)
	bne.s loc_20529a
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20529a
	move.b $26(a0),d0
	jsr (sub_200856).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_20529a
	bmi.s loc_205296
	tst.w d0
	beq.s loc_205294
	add.w d0,$14(a0)
loc_205294:
	rts
loc_205296:
	add.w d0,$14(a0)
loc_20529a:
	rts

sub_20529c:
	tst.b $2a(a0)
	bne.s loc_2052dc
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2052dc
	move.b $26(a0),d0
	jsr (sub_200856).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2052d2
	tst.w d0
	bpl.s loc_2052cc
	asr.l #$2,d0
loc_2052cc:
	add.w d0,$14(a0)
	rts
loc_2052d2:
	tst.w d0
	bmi.s loc_2052d8
	asr.l #$2,d0
loc_2052d8:
	add.w d0,$14(a0)
loc_2052dc:
	rts

sub_2052de:
	nop
	tst.b $38(a0)
	bne.s loc_205318
	tst.w $3e(a0)
	bne.s loc_20531a
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205318
	move.w $14(a0),d0
	bpl.s loc_205302
	neg.w d0
loc_205302:
	cmpi.w #$280,d0
	bcc.s loc_205318
	clr.w $14(a0)
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205318:
	rts
loc_20531a:
	subq.w #$1,$3e(a0)
	rts

sub_205320:
	btst.b #$1,$2c(a0)
	bne.s loc_205342
	move.b $26(a0),d0
	beq.s loc_205342
	bpl.s loc_205338
	addq.b #$2,d0
	bcc.s loc_205336
	moveq #$0,d0
loc_205336:
	bra.s loc_20533e
loc_205338:
	subq.b #$2,d0
	bcc.s loc_20533e
	moveq #$0,d0
loc_20533e:
	move.b d0,$26(a0)
loc_205342:
	rts

sub_205344:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200aee).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205428
	cmpi.b #$80,d0
	beq.w loc_20548a
	cmpi.b #$c0,d0
	beq.w loc_2054e6
	bsr.w sub_206e74
	tst.w d1
	bpl.s loc_205396
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205396:
	bsr.w sub_206cd6
	tst.w d1
	bpl.s loc_2053a8
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2053a8:
	bsr.w sub_206b86
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205426
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2053c6
	cmp.b d2,d0
	blt.s loc_205426
loc_2053c6:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205548
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205404
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2053f6
	asr.w $12(a0)
	bra.s loc_205418
loc_2053f6:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205404:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205418
	move.w #$fc0,$12(a0)
loc_205418:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205426
	neg.w $14(a0)
loc_205426:
	rts
loc_205428:
	bsr.w sub_206e74
	tst.w d1
	bpl.s loc_205442
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205442:
	bsr.w sub_206d2e
	tst.w d1
	bpl.s loc_20545c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20545a
	move.w #$0,$12(a0)
loc_20545a:
	rts
loc_20545c:
	tst.w $12(a0)
	bmi.s loc_205488
	bsr.w sub_206b86
	tst.w d1
	bpl.s loc_205488
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205548
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205488:
	rts
loc_20548a:
	bsr.w sub_206e74
	tst.w d1
	bpl.s loc_20549c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20549c:
	bsr.w sub_206cd6
	tst.w d1
	bpl.s loc_2054ae
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2054ae:
	bsr.w sub_206d2e
	tst.w d1
	bpl.s loc_2054e4
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2054ce
	move.w #$0,$12(a0)
	rts
loc_2054ce:
	move.b d3,$26(a0)
	bsr.w sub_2055ac
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2054e4
	neg.w $14(a0)
loc_2054e4:
	rts
loc_2054e6:
	bsr.w sub_206cd6
	tst.w d1
	bpl.s loc_205500
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205500:
	bsr.w sub_206d2e
	tst.w d1
	bpl.s loc_20551a
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205518
	move.w #$0,$12(a0)
loc_205518:
	rts
loc_20551a:
	tst.w $12(a0)
	bmi.s loc_205546
	bsr.w sub_206b86
	tst.w d1
	bpl.s loc_205546
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205548
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205546:
	rts

sub_205548:
	btst.b #$4,$22(a0)
	beq.s loc_205552
	nop
loc_205552:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_20559e
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205588
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205598
loc_205588:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205598:
	move.b #$0,$1c(a0)
loc_20559e:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2055ac:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2038d6).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2055e6
	subi.w #$20,$12(a0)
loc_2055e6:
	bsr.w sub_2055fc
	bsr.w sub_205068
	bsr.w sub_2044b2
	bsr.w sub_20586c
	jmp (sub_20392c).l

sub_2055fc:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_207178
	bsr.w sub_205344
	btst.b #$1,$22(a0)
	bne.s loc_205636
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_205636:
	rts
	bsr.w sub_205650
	jsr (sub_203874).l
	bsr.w sub_2044b2
	bsr.w sub_20586c
	jmp (sub_20392c).l

sub_205650:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_2056be
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_205684
	clr.b ($ff1508).l
loc_205684:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20569e
	tst.b ($ff0f01).l
	beq.s loc_20569e
	move.b #$0,($ff1508).l
	bra.s loc_2056b8
loc_20569e:
	jsr (sub_207950).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_2056be
loc_2056b8:
	move.w #$3c,$3a(a0)
loc_2056be:
	rts
	tst.w $3a(a0)
	beq.w loc_20572e
	subq.w #$1,$3a(a0)
	bne.w loc_20572e
	move.w #$1,($ff1502).l
	bsr.w sub_20773e
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_2056fc
	cmpi.b #$1,($ff152e).l
	bne.s loc_2056fc
	bclr.b #$1,($ff151c).l
loc_2056fc:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_20572a
	cmpi.b #$1,($ff152e).l
	bne.s loc_205724
	tst.b ($ff158e).l
	beq.s loc_20572a
	move.b #$1,($ff1522).l
	bra.s loc_20572a
loc_205724:
	clr.b ($ff1522).l
loc_20572a:
	bra.w sub_205e76
loc_20572e:
	rts

sub_205730:
	rts
	.incbin 22322, 314

sub_20586c:
	lea (dat_205b5c).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20588e
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20588e:
	bsr.w sub_205afe
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205906
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2058d4
	move.b d0,$1e(a0)

sub_2058b8:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2058cc
	bpl.s loc_2058cc
	cmpi.b #$fd,d0
	bge.s loc_2058d6
loc_2058cc:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2058d4:
	rts
loc_2058d6:
	addq.b #$1,d0
	bne.s loc_2058e6
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2058cc
loc_2058e6:
	addq.b #$1,d0
	bne.s loc_2058fa
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2058cc
loc_2058fa:
	addq.b #$1,d0
	bne.s loc_205904
	move.b $2(a1,d1.w),$1c(a0)
loc_205904:
	rts
loc_205906:
	subq.b #$1,$1e(a0)
	bpl.s loc_2058d4
	addq.b #$1,d0
	bne.w loc_2059c0
	tst.b ($ff195b).l
	bne.w loc_205a88
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20592e
	not.b d0
loc_20592e:
	btst.b #$1,$2c(a0)
	bne.s loc_20593c
	addi.b #$10,d0
	bra.s loc_20593e
loc_20593c:
	addq.b #$8,d0
loc_20593e:
	bpl.s loc_205942
	moveq #$3,d1
loc_205942:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205a34
	move.w $14(a0),d2
	bpl.s loc_205960
	neg.w d2
loc_205960:
	btst.b #$1,$2c(a0)
	beq.s loc_205978
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205d5e).l,a1
	bra.s loc_2059a2
loc_205978:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205d38).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2059a2
	lea (dat_205bdc).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2059a2
	lea (dat_205bd4).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2059a2:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2059b0
	moveq #$0,d2
loc_2059b0:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2058b8
	add.b d3,$1a(a0)
	rts
loc_2059c0:
	addq.b #$1,d0
	bne.s loc_205a30
	move.w $14(a0),d2
	bpl.s loc_2059cc
	neg.w d2
loc_2059cc:
	lea (dat_205cba).l,a1
	tst.b ($ff195b).l
	bne.s loc_205a0a
	lea (dat_205bec).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2059fe
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205a0a
	lea (dat_205d66).l,a1
	bra.s loc_205a0a
loc_2059fe:
	cmpi.w #$600,d2
	bcc.s loc_205a0a
	lea (dat_205be4).l,a1
loc_205a0a:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205a14
	moveq #$0,d2
loc_205a14:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2058b8
loc_205a30:
	addq.b #$1,d0
	bne.s loc_205a74
loc_205a34:
	move.w $14(a0),d2
	bmi.s loc_205a3c
	neg.w d2
loc_205a3c:
	addi.w #$800,d2
	bpl.s loc_205a44
	moveq #$0,d2
loc_205a44:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205ccc).l,a1
	tst.b ($ff195b).l
	bne.s loc_205a5e
	lea (dat_205bf4).l,a1
loc_205a5e:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2058b8
loc_205a74:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205a88:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205a9a
	not.b d0
loc_205a9a:
	addi.b #$10,d0
	bpl.s loc_205aa2
	moveq #$0,d1
loc_205aa2:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205ad0
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2059c0
loc_205ad0:
	move.w $14(a0),d2
	bpl.s loc_205ad8
	neg.w d2
loc_205ad8:
	lea (dat_205cb4).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205aea
	lea (dat_205cae).l,a1
loc_205aea:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205af4
	moveq #$0,d2
loc_205af4:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2058b8

sub_205afe:
	tst.b ($ff195b).l
	beq.s loc_205b0a
	move.b dat_205b0c(pc,d0.w),d0
loc_205b0a:
	rts
dat_205b0c:
	.incbin 23308, 80
dat_205b5c:
	.incbin 23388, 120
dat_205bd4:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205bdc:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205be4:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205bec:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205bf4:
	.incbin 23540, 186
dat_205cae:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205cb4:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205cba:
	.incbin 23738, 18
dat_205ccc:
	.incbin 23756, 108
dat_205d38:
	.incbin 23864, 38
dat_205d5e:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205d66:
	.incbin 23910, 60

sub_205da2:
	tst.b (a0)
	beq.w loc_205e04
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205e04
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205e04
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205dd6:
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
loc_205df0:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205df0
	dbf d1,loc_205dd6
loc_205e04:
	rts

sub_205e06:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205e70
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200aee).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205e5e
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205e5e:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205e70:
	rts
loc_205e72:
	move.w #$e,d0

sub_205e76:
	cmpi.w #$67,d0
	bne.s loc_205e84
	move.b #$1,($ff1958).l
loc_205e84:
	move.w d0,($a12010).l
loc_205e8a:
	move.w ($a12020).l,d0
	beq.s loc_205e8a
	cmp.w ($a12020).l,d0
	bne.s loc_205e8a
	move.w #$0,($a12010).l
loc_205ea2:
	move.w ($a12020).l,d0
	bne.s loc_205ea2
	move.w ($a12020).l,d0
	bne.s loc_205ea2
	rts
	dc.b $00,$00

sub_205eb6:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205ed2
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205ed2:
	subq.b #$1,$1e(a0)
	bpl.s loc_205f12
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205f14
loc_205eee:
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
loc_205f12:
	rts
loc_205f14:
	addq.b #$1,d0
	bne.s loc_205f24
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205eee
loc_205f24:
	addq.b #$1,d0
	bne.s loc_205f38
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205eee
loc_205f38:
	addq.b #$1,d0
	bne.s loc_205f42
	move.b $2(a1,d1.w),$1c(a0)
loc_205f42:
	addq.b #$1,d0
	bne.s loc_205f4a
	addq.b #$2,$24(a0)
loc_205f4a:
	addq.b #$1,d0
	bne.s loc_205f58
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205f58:
	addq.b #$1,d0
	bne.s loc_205f60
	addq.b #$2,$25(a0)
loc_205f60:
	rts
	.incbin 24418, 654

sub_2061f0:
	tst.b $25(a0)
	bne.s loc_206220
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207950).l
	bne.s loc_206220
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206220:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206230(pc,d0.w),d0
	jmp dat_206230(pc,d0.w)
dat_206230:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_206258
	andi.b #$7f,$2(a0)
loc_206258:
	move.l #$23a08c,$4(a0)
	bsr.s sub_2061f0
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_206286
	move.w #$100,$1c(a0)
loc_206286:
	lea (dat_23a078).l,a1
	bsr.w sub_205eb6
	jmp (sub_20392c).l
	tst.b $25(a0)
	beq.s loc_2062a2
	jmp (sub_2039d8).l
loc_2062a2:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2062c4(pc,d0.w),d0
	jsr dat_2062c4(pc,d0.w)
	jmp (sub_20392c).l
dat_2062c4:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_2062f2
	andi.b #$7f,$2(a0)
loc_2062f2:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_206318
	bsr.w sub_206384
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_20637a
loc_206318:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206c34).l
	tst.w d1
	bpl.s loc_206376
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206360
	bsr.w sub_206384
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2063aa
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206360:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_20637a
loc_206376:
	addq.w #$2,$c(a0)
loc_20637a:
	lea (dat_2336bc).l,a1
	bra.w sub_205eb6

sub_206384:
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

sub_2063aa:
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
	bra.s loc_20637a
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_20637a
	.incbin 25574, 836

sub_20672a:
	bclr.b #$7,($ff156b).l
	beq.s loc_206778
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20677a(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20674e:
	move.l (a1)+,(a2)+
	dbf d0,loc_20674e
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206778:
	rts
dat_20677a:
	.incbin 26490, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2067b0(pc,d0.w),d0
	jsr dat_2067b0(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_2067aa
	jsr (sub_20392c).l
loc_2067aa:
	jmp (loc_207986).l
dat_2067b0:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$239ea0,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206892
	cmpi.b #$6,$24(a1)
	bcc.w loc_206892
	bsr.w sub_2068f6
	beq.w loc_206892
	tst.b $28(a0)
	bne.s loc_206844
	move.w $10(a1),d0
	bpl.s loc_206804
	neg.w d0
loc_206804:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206816
	move.w #$d00,d1
loc_206816:
	cmp.w d1,d0
	bcc.s loc_20681c
	move.w d1,d0
loc_20681c:
	tst.w $10(a1)
	bpl.s loc_206824
	neg.w d0
loc_206824:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_206874
	neg.w $14(a1)
	bra.s loc_206874
loc_206844:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206894
	move.w $12(a1),d0
	bpl.s loc_206854
	neg.w d0
loc_206854:
	cmpi.w #$d00,d0
	bcc.s loc_20685e
	move.w #$d00,d0
loc_20685e:
	tst.w $12(a1)
	bpl.s loc_206866
	neg.w d0
loc_206866:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206874:
	bset.b #$2,$22(a1)
	bne.s loc_206892
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206892:
	rts
loc_206894:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_2068e0
	cmpi.b #$2,$28(a0)
	bne.s loc_2068b0
	tst.w $12(a1)
	bpl.s loc_206874
	bra.s loc_2068b6
loc_2068b0:
	tst.w $12(a1)
	bmi.s loc_206874
loc_2068b6:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_2068c8
	btst.l #$2,d1
	beq.s loc_206874
	neg.w d0
loc_2068c8:
	cmpi.b #$2,$28(a0)
	beq.s loc_2068d6
	bset.b #$1,$22(a1)
loc_2068d6:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206874
loc_2068e0:
	tst.w $10(a1)
	bmi.s loc_206874
	btst.l #$0,d1
	beq.w loc_206874
	move.w #$f600,d0
	bra.w loc_206866

sub_2068f6:
	tst.b ($ff1906).l
	bne.s loc_20692a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_20692a
	cmpi.w #$50,d0
	bcc.s loc_20692a
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_20692a
	cmpi.w #$50,d0
	bcc.s loc_20692a
	moveq #$1,d0
	rts
loc_20692a:
	moveq #$0,d0
	rts
loc_20692e:
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
	bne.s loc_2069e8
	move.b ($ff1593).l,($ff195b).l
loc_2069e8:
	tst.b ($ff1522).l
	bpl.s loc_2069fe
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2069fe:
	rts

sub_206a00:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20692e
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
	bne.s loc_206aba
	move.b ($ff1591).l,($ff195b).l
loc_206aba:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206adc
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206adc:
	tst.b ($ff1522).l
	bpl.s loc_206af2
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206af2:
	rts

sub_206af4:
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
	bpl.s loc_206b30
	move.b d1,d0
	bpl.s loc_206b2a
	subq.b #$1,d0
loc_206b2a:
	addi.b #$20,d0
	bra.s loc_206b3a
loc_206b30:
	move.b d1,d0
	bpl.s loc_206b36
	addq.b #$1,d0
loc_206b36:
	addi.b #$1f,d0
loc_206b3a:
	andi.b #$c0,d0
	beq.w loc_206c0a
	cmpi.b #$80,d0
	beq.w loc_206da6
	andi.b #$38,d1
	bne.s loc_206b52
	addq.w #$8,d2
loc_206b52:
	cmpi.b #$40,d0
	beq.w loc_206e7c
	bra.w loc_206cde

sub_206b5e:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206e04
	cmpi.b #$80,d0
	beq.w sub_206d2e
	cmpi.b #$c0,d0
	beq.w loc_206c6e

sub_206b86:
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
	jsr (sub_2011ac).l
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
	jsr (sub_2011ac).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206bea:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206bf8
	move.b ($f768).w,d3
	exg d0,d1
loc_206bf8:
	btst.l #$0,d3
	beq.s loc_206c00
	move.b d2,d3
loc_206c00:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206c0a:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011ac).l
	move.b #$0,d2
loc_206c26:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c32
	move.b d2,d3
loc_206c32:
	rts

sub_206c34:
	move.w $8(a0),d3

sub_206c38:
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
	jsr (sub_2011ac).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c6c
	move.b #$0,d3
loc_206c6c:
	rts
loc_206c6e:
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
	jsr (sub_20131c).l
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
	jsr (sub_20131c).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206bea

sub_206cd6:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cde:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20131c).l
	move.b #$c0,d2
	bra.w loc_206c26
	.incbin 27902, 48

sub_206d2e:
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
	jsr (sub_2011ac).l
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
	jsr (sub_2011ac).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206bea

sub_206d9e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206da6:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2011ac).l
	move.b #$80,d2
	bra.w loc_206c26
	.incbin 28106, 58
loc_206e04:
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
	jsr (sub_20131c).l
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
	jsr (sub_20131c).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206bea

sub_206e74:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e7c:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20131c).l
	move.b #$40,d2
	bra.w loc_206c26
	.incbin 28320, 48

sub_206ed0:
	btst.b #$6,$2c(a0)
	beq.s loc_206edc
	moveq #$0,d0
	rts
loc_206edc:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206f00
	addi.w #$c,d3
	moveq #$a,d5
loc_206f00:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206f0e:
	tst.b $1(a1)
	bpl.s loc_206f1a
	move.b $20(a1),d0
	bne.s loc_206f26
loc_206f1a:
	lea $40(a1),a1
	dbf d6,loc_206f0e
	moveq #$0,d0
	rts
loc_206f26:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2072ae).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206f4e
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206f54
	bra.w loc_206f1a
loc_206f4e:
	cmp.w d4,d0
	bhi.w loc_206f1a
loc_206f54:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206f6c
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206f72
	bra.w loc_206f1a
loc_206f6c:
	cmp.w d5,d0
	bhi.w loc_206f1a
loc_206f72:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206fe6
	cmpi.b #$c0,d1
	beq.w loc_2071d0
	tst.b d1
	bmi.w sub_2070b0
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206faa
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206fa8
	addq.b #$2,$24(a1)
loc_206fa8:
	rts
loc_206faa:
	tst.w $12(a0)
	bpl.s loc_206fd4
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206fe4
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206fe4
	addq.b #$4,$25(a1)
	rts
loc_206fd4:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206fe4
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206fe4:
	rts

sub_206fe6:
	tst.b ($ff1521).l
	bne.s loc_207000
	tst.b ($ff151f).l
	bne.s loc_207000
	cmpi.b #$2,$1c(a0)
	bne.w sub_2070b0
loc_207000:
	tst.b $21(a1)
	beq.s loc_20702a
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_207028
	bset.b #$7,$22(a1)
loc_207028:
	rts
loc_20702a:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_207042
	moveq #$6,d0
loc_207042:
	move.w d0,$3e(a1)
	move.w dat_2070a2(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_20705c
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_20705c:
	bsr.w sub_20b242
	move.w #$96,d0
	jsr (sub_202352).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207092
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20709a
	neg.w $12(a0)
	rts
loc_207092:
	addi.w #$100,$12(a0)
	rts
loc_20709a:
	subi.w #$100,$12(a0)
	rts
dat_2070a2:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_2070b0:
	tst.b ($ff1521).l
	bne.s loc_2070c0
	tst.b ($ff151f).l
	beq.s loc_2070c4
loc_2070c0:
	moveq #$ffffffff,d0
	rts
loc_2070c4:
	nop
	tst.w $30(a0)
	bne.s loc_2070c0
	movea.l a1,a2

sub_2070ce:
	clr.b $2a(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	tst.b ($ff151e).l
	bne.s loc_207108
	tst.w ($ff1512).l
	beq.w loc_20716e
	jsr (sub_207950).l
	bne.s loc_207108
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207108:
	bclr.b #$0,($ff151e).l
	bne.s loc_20711a
	move.b #$0,($ff156f).l
loc_20711a:
	move.b #$4,$24(a0)
	bsr.w sub_205548
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20714a
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_20714a:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_207158
	neg.w $10(a0)
loc_207158:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_20716e:
	tst.w ($ff1588).l
	bne.w loc_207108

sub_207178:
	tst.w ($ff1906).l
	bne.s loc_2071cc
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205548
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202352).l
loc_2071cc:
	moveq #$ffffffff,d0
	rts
loc_2071d0:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207258
	cmpi.b #$23,d1
	beq.w loc_207258
	cmpi.b #$38,d1
	beq.w loc_2072a0
	cmpi.b #$3a,d1
	beq.w loc_2072a0
	cmpi.b #$3b,d1
	beq.w loc_2072a0
	tst.b ($f7aa).w
	beq.w loc_207256
	cmpi.b #$1,($f7aa).w
	beq.s loc_207220
	cmpi.b #$4,($f7aa).w
	beq.s loc_207242
	cmpi.b #$5,($f7aa).w
	beq.s loc_207250
loc_207220:
	cmpi.b #$3c,d1
	blt.s loc_207256
	cmpi.b #$3f,d1
	bgt.s loc_207256
	bsr.w sub_206fe6
	tst.b $20(a1)
	bne.s loc_20723a
	addq.b #$3,$21(a1)
loc_20723a:
	clr.b $20(a1)
	bra.w loc_207258
loc_207242:
	cmpi.b #$3f,d1
	beq.s loc_207264
	cmpi.b #$3e,d1
	beq.s loc_20725e
	bra.s loc_207256
loc_207250:
	cmpi.b #$3d,d1
	beq.s loc_20725e
loc_207256:
	rts
loc_207258:
	addq.b #$1,$21(a1)
	rts
loc_20725e:
	bsr.w sub_2070b0
	bra.s loc_207258
loc_207264:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20729e
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20729e
	neg.w $10(a0)
loc_20729e:
	rts
loc_2072a0:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2072ac
	addq.b #$1,$21(a1)
loc_2072ac:
	rts
dat_2072ae:
	.incbin 29358, 126
loc_20732c:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207342
	move.l #$4000,(dat_2074bc).l
	bra.s loc_207362
loc_207342:
	addi.l #$2000,(dat_2074bc).l
	cmpi.l #$80000,(dat_2074bc).l
	bls.s loc_207362
	move.l #$80000,(dat_2074bc).l
loc_207362:
	move.l (dat_2074bc).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207374
	sub.l d0,$c(a0)
loc_207374:
	btst.b #$1,($f604).w
	beq.s loc_207380
	add.l d0,$c(a0)
loc_207380:
	btst.b #$2,($f604).w
	beq.s loc_20738c
	sub.l d0,$8(a0)
loc_20738c:
	btst.b #$3,($f604).w
	beq.s loc_207398
	add.l d0,$8(a0)
loc_207398:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200fc4).l
	move.w (a1),($ff194e).l
	lea (dat_2074c0).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2073da
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2073d4
	move.b #$0,d1
loc_2073d4:
	move.b d1,($ff1904).l
loc_2073da:
	btst.b #$7,($f605).w
	beq.s loc_2073fa
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2073f4
	add.b (a2),d1
loc_2073f4:
	move.b d1,($ff1904).l
loc_2073fa:
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
	beq.s loc_207486
	bsr.w sub_207950
	bne.s loc_207486
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
loc_207486:
	btst.b #$4,($f605).w
	beq.s loc_2074b6
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2074b6:
	jmp (sub_20392c).l
dat_2074bc:
	dc.b $00,$00,$40,$00
dat_2074c0:
	.incbin 29888, 638

sub_20773e:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20774c:
	clr.l (a2)+
	dbf d0,loc_20774c
	rts

sub_207754:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207762(pc,d0.w),d0
	jmp dat_207762(pc,d0.w)
dat_207762:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207a02).l,a0
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
	bcc.s loc_2077a0
	moveq #$0,d6
loc_2077a0:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2077a8:
	cmp.w (a0),d6
	bls.s loc_2077ba
	tst.b $4(a0)
	bpl.s loc_2077b6
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077b6:
	addq.w #$8,a0
	bra.s loc_2077a8
loc_2077ba:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077da
loc_2077c8:
	cmp.w (a0),d6
	bls.s loc_2077da
	tst.b $4(a0)
	bpl.s loc_2077d6
	addq.b #$1,$1(a2)
loc_2077d6:
	addq.w #$8,a0
	bra.s loc_2077c8
loc_2077da:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2078c4
	bge.s loc_20786a
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207846
loc_207814:
	cmp.w -$8(a0),d6
	bge.s loc_207846
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20782a
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20782a:
	bsr.w sub_2078e8
	bne.s loc_207834
	subq.w #$8,a0
	bra.s loc_207814
loc_207834:
	tst.b $4(a0)
	bpl.s loc_207844
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207844:
	addq.w #$8,a0
loc_207846:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207852:
	cmp.w -$8(a0),d6
	bgt.s loc_207864
	tst.b -$4(a0)
	bpl.s loc_207860
	subq.b #$1,(a2)
loc_207860:
	subq.w #$8,a0
	bra.s loc_207852
loc_207864:
	move.l a0,($f770).w
	rts
loc_20786a:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_20787e:
	cmp.w (a0),d6
	bls.s loc_2078a0
	tst.b $4(a0)
	bpl.s loc_20788c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20788c:
	bsr.w sub_2078e8
	beq.s loc_20787e
	tst.b $4(a0)
	bpl.s loc_2078a0
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2078a0:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2078c0
loc_2078ae:
	cmp.w (a0),d6
	bls.s loc_2078c0
	tst.b $4(a0)
	bpl.s loc_2078bc
	addq.b #$1,$1(a2)
loc_2078bc:
	addq.w #$8,a0
	bra.s loc_2078ae
loc_2078c0:
	move.l a0,($f774).w
loc_2078c4:
	rts

sub_2078c6:
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

sub_2078e8:
	bsr.s sub_2078c6
	beq.s loc_2078fa
	tst.b $4(a0)
	bpl.s loc_207900
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207900
loc_2078fa:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207900:
	bsr.w sub_207950
	bne.s loc_20794e
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
	bpl.s loc_207930
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207930:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207942
	nop
	nop
	nop
	nop
loc_207942:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_20794e:
	rts

sub_207950:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207958:
	tst.b (a1)
	beq.s loc_207964
	lea $40(a1),a1
	dbf d0,loc_207958
loc_207964:
	rts

sub_207966:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207984
loc_207978:
	tst.b (a1)
	beq.s loc_207984
	lea $40(a1),a1
	dbf d0,loc_207978
loc_207984:
	rts
loc_207986:
	move.w $8(a0),d0
loc_20798a:
	tst.b $1(a0)
	bmi.s loc_2079f4
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2079f4
loc_2079a8:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2079ea
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2079e2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2079da
	moveq #$0,d1
	bra.s loc_2079e2
loc_2079da:
	cmpi.w #$3,d1
	bcs.s loc_2079e2
	moveq #$2,d1
loc_2079e2:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2079ea:
	jsr (sub_2039d8).l
	moveq #$1,d0
	rts
loc_2079f4:
	btst.b #$7,($ff152e).l
	bne.s loc_2079a8
	moveq #$0,d0
	rts
dat_207a02:
	.incbin 31234, 3976
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2089a4(pc,d0.w),d0
	jsr dat_2089a4(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_2089a4:
	dc.b $00,$0e,$00,$2c,$00,$7c,$00,$8c
	dc.b $00,$9c,$00,$e2,$01,$72
	ori.b #$4,$1(a0)
	move.w #$310,$2(a0)
	move.l #$208dc4,$4(a0)
	move.b #$78,$2a(a0)
	addq.b #$2,$24(a0)
	tst.b $2a(a0)
	beq.s loc_208a1e
	subq.b #$1,$2a(a0)
	bne.s loc_208a1e
	jsr (sub_207950).l
	bne.s loc_208a1e
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
loc_208a1e:
	rts
	bsr.w sub_208cd0
	lea (dat_208d48).l,a1
	jmp (sub_205eb6).l
	movea.l $2a(a0),a1
	move.b #$78,$2a(a1)
	jmp (sub_2039d8).l
	addi.w #$38,$12(a0)
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206c34).l
	tst.w d1
	bpl.s loc_208a7a
	move.w #$92,d0
	jsr (sub_205e76).l
	move.b #$f,$30(a0)
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_208a7a:
	movea.l $2a(a0),a1
	move.l $c(a0),$c(a1)
	rts
	movea.l $2a(a0),a1
	tst.b $30(a0)
	beq.s loc_208ade
	subq.b #$1,$30(a0)
	move.b ($f605).w,d0
	andi.b #$70,d0
	beq.s loc_208b14
	bclr.b #$0,$2c(a1)
	bclr.b #$6,$2c(a1)
	move.w #$f980,$12(a1)
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	bset.b #$2,$22(a1)
	bclr.b #$5,$22(a1)
	move.b #$2,$1c(a1)
	move.w #$92,d0
	jsr (sub_202352).l
	bra.s loc_208afa
loc_208ade:
	movea.l a0,a3
	movea.l a0,a2
	movea.l $2a(a0),a0
	bclr.b #$0,$2c(a0)
	bclr.b #$6,$2c(a0)
	jsr (sub_2070ce).l
	movea.l a3,a0
loc_208afa:
	addq.b #$2,$24(a0)
	move.b #$a,$1a(a0)
	move.b #$14,$30(a0)
	move.b #$2,$31(a0)
	bsr.w sub_208bb8
loc_208b14:
	rts
	subq.b #$1,$30(a0)
	bne.s loc_208b40
	cmpi.b #$b,$1a(a0)
	beq.s loc_208b3a
	moveq #$0,d0
	move.b $31(a0),d0
	add.w d0,d0
	move.w dat_208b52(pc,d0.w),d0
	lea dat_208b52(pc,d0.w),a3
	moveq #$3,d6
	bsr.w sub_208bc0
loc_208b3a:
	jmp (sub_2039d8).l
loc_208b40:
	move.w $10(a0),d0
	add.w d0,$8(a0)
	move.w $12(a0),d0
	add.w d0,$c(a0)
	rts
dat_208b52:
	.incbin 35666, 102

sub_208bb8:
	moveq #$5,d6
	lea (dat_208c40).l,a3

sub_208bc0:
	moveq #$0,d1
loc_208bc2:
	jsr (sub_207950).l
	bne.s loc_208c3e
	move.b #$5,$0(a1)
	move.b #$c,$24(a1)
	ori.b #$4,$1(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w #$2e1,$2(a1)
	move.l #$208dc4,$4(a1)
	move.b $0(a3,d1.w),d2
	ext.w d2
	add.w d2,$8(a1)
	move.b $1(a3,d1.w),d2
	ext.w d2
	add.w d2,$c(a1)
	move.b $2(a3,d1.w),$30(a1)
	move.b $3(a3,d1.w),$1a(a1)
	move.b $4(a3,d1.w),d2
	or.b d2,$1(a1)
	move.b $5(a3,d1.w),d2
	ext.w d2
	move.w d2,$10(a1)
	move.b $6(a3,d1.w),d2
	ext.w d2
	move.w d2,$12(a1)
	move.b $7(a3,d1.w),$31(a1)
	addq.w #$8,d1
	dbf d6,loc_208bc2
loc_208c3e:
	rts
dat_208c40:
	.incbin 35904, 48
loc_208c70:
	movea.l a1,a2
	jsr (sub_207950).l
	bne.s loc_208cce
	bset.b #$0,$2c(a2)
	bset.b #$6,$2c(a2)
	move.l a2,$2a(a1)
	move.b #$5,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a2),$8(a1)
	move.w $c(a2),$c(a1)
	move.w #$2e1,$2(a1)
	move.l #$208dc4,$4(a1)
	move.b #$18,$17(a1)
	move.b #$18,$19(a1)
	move.b #$18,$16(a1)
	move.b #$8,$1a(a1)
	move.b #$8,$24(a1)
loc_208cce:
	rts

sub_208cd0:
	cmpi.b #$1,$1c(a0)
	bne.s loc_208ce8
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208ce8
	bsr.s sub_208cea
	bne.s loc_208c70
loc_208ce8:
	rts

sub_208cea:
	tst.b ($ff151f).l
	bne.s loc_208d44
	tst.b ($ff1521).l
	bne.s loc_208d44
	cmpi.b #$4,$24(a1)
	bcc.s loc_208d44
	tst.b $2c(a1)
	bne.s loc_208d44
	move.b $17(a1),d1
	ext.w d1
	addi.w #$10,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_208d44
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_208d44
	move.b $16(a1),d1
	ext.w d1
	addi.w #$20,d1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_208d44
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_208d44
	moveq #$1,d0
	rts
loc_208d44:
	moveq #$0,d0
	rts
dat_208d48:
	.incbin 36168, 314
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208e9c(pc,d0.w),d0
	jsr dat_208e9c(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_208e9c:
	dc.b $00,$0a,$00,$76,$00,$a6,$01,$48
	dc.b $01,$64
	ori.b #$4,$1(a0)
	move.w #$400,$2(a0)
	move.l #$209030,$4(a0)
	move.w $8(a0),$2e(a0)
	move.b #$1c,$17(a0)
	move.b #$1c,$19(a0)
	move.b #$4,$16(a0)
	addq.b #$2,$24(a0)
	jsr (sub_207966).l
	move.b #$4,$0(a1)
	ori.b #$4,$1(a1)
	move.w #$400,$2(a1)
	move.l #$209030,$4(a1)
	move.b #$4,$17(a1)
	move.b #$c,$16(a1)
	move.b #$1,$1a(a1)
	move.l a0,$2a(a1)
	move.b #$8,$24(a1)
	lea ($d000).w,a1
	jsr (sub_209844).l
	beq.s loc_208f40
	bset.b #$0,$2c(a1)
	move.w $8(a0),$8(a1)
	bclr.b #$0,$22(a1)
	move.b #$3a,$1c(a1)
	addq.b #$2,$24(a0)
	move.w #$c00,$10(a0)
loc_208f40:
	rts
	.incbin 36674, 190
	movea.l $2a(a0),a1
	cmpi.b #$4,$24(a1)
	bcc.s loc_20902e
	move.w $8(a1),$8(a0)
	subi.w #$18,$8(a0)
	move.w $c(a1),$c(a0)
	subi.w #$10,$c(a0)
	lea ($d000).w,a1
	jmp (sub_20984a).l
loc_20902e:
	rts
	.incbin 36912, 32
	btst.b #$7,($ff152e).l
	beq.s loc_20909a
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20909a
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
	bpl.s loc_20908a
	moveq #$0,d1
	bra.s loc_209092
loc_20908a:
	cmpi.w #$3,d1
	bcs.s loc_209092
	moveq #$2,d1
loc_209092:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20909a:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_2090ca
	cmpi.b #$6,$24(a6)
	bcc.s loc_2090ca
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2090cc(pc,d0.w),d1
	jsr dat_2090cc(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_2090ca
	jmp (loc_207986).l
loc_2090ca:
	rts
dat_2090cc:
	dc.b $00,$08,$00,$52,$01,$18,$01,$32
	move.l #$239ea0,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$541,$2(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	andi.b #$7f,d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_209362(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	cmpi.b #$6,$24(a6)
	bcc.w loc_2091e2
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$20,d0
	cmpi.w #$40,d0
	bcc.w loc_2091e2
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$30,d1
	cmpi.w #$60,d1
	bcc.w loc_2091e2
	tst.b $2c(a6)
	bne.w loc_2091e2
	cmpi.b #$4,$24(a6)
	bne.s loc_20916a
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_20916a:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	tst.b $29(a0)
	beq.s loc_209180
	bset.b #$6,$2c(a6)
loc_209180:
	move.b #$2,$1c(a6)
	move.w #$800,$14(a6)
	bclr.b #$6,$1(a6)
	tst.b $28(a0)
	bpl.s loc_20919e
	bset.b #$6,$1(a6)
loc_20919e:
	cmpi.b #$4,$24(a6)
	bne.s loc_2091aa
	subq.b #$2,$24(a6)
loc_2091aa:
	move.w #$0,$10(a6)
	move.w #$0,$12(a6)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a6)
	bset.b #$1,$22(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	clr.b $32(a0)
	move.w #$91,d0
	jsr (sub_202352).l
loc_2091e2:
	rts
	move.b #$2,$1c(a6)
	bsr.w sub_2092ba
	addq.b #$2,$24(a0)
	move.w #$91,d0
	jsr (sub_202352).l
	rts
	move.b #$2,$1c(a6)
	addq.l #$4,a7
	subq.b #$1,$2e(a0)
	bpl.s loc_20924e
	move.w $36(a0),d0
	add.w $8(a0),d0
	move.w d0,$8(a6)
	move.w $38(a0),d0
	add.w $c(a0),d0
	move.w d0,$c(a6)
	moveq #$0,d1
	move.b $3a(a0),d1
	addq.b #$6,d1
	cmp.b $3b(a0),d1
	bcs.s loc_209236
	moveq #$0,d1
	bra.s loc_2092a4
loc_209236:
	move.b d1,$3a(a0)
loc_20923a:
	movea.l $3c(a0),a2
	move.w $0(a2,d1.w),$36(a0)
	move.w $2(a2,d1.w),$38(a0)
	bra.w sub_2092ba
loc_20924e:
	move.l $8(a6),d2
	move.l $c(a6),d3
	move.w $10(a6),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a6),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a6)
	move.l d3,$c(a6)
	moveq #$0,d1
	move.b $3a(a0),d1
	movea.l $3c(a0),a2
	move.w $4(a2,d1.w),d1
	bmi.s loc_209284
loc_209282:
	rts
loc_209284:
	move.b ($f604).w,d0
	andi.b #$70,d0
	beq.s loc_209282
	andi.w #$7fff,d1
	add.b d1,d1
	move.b d1,d0
	add.b d0,d0
	add.b d0,d1
	add.b $3b(a0),d1
	move.b d1,$3a(a0)
	bra.s loc_20923a
loc_2092a4:
	andi.w #$7ff,$c(a6)
	clr.b $24(a0)
	clr.b $2c(a6)
	move.w #$2,$24(a0)
	rts

sub_2092ba:
	moveq #$0,d0
	move.w $14(a6),d2
	move.w $14(a6),d3
	move.w $36(a0),d0
	add.w $8(a0),d0
	sub.w $8(a6),d0
	bge.s loc_2092d6
	neg.w d0
	neg.w d2
loc_2092d6:
	moveq #$0,d1
	move.w $38(a0),d1
	add.w $c(a0),d1
	sub.w $c(a6),d1
	bge.s loc_2092ea
	neg.w d1
	neg.w d3
loc_2092ea:
	cmp.w d0,d1
	bcs.s loc_209328
	moveq #$0,d1
	move.w $38(a0),d1
	add.w $c(a0),d1
	sub.w $c(a6),d1
	swap d1
	divs.w d3,d1
	moveq #$0,d0
	move.w $36(a0),d0
	add.w $8(a0),d0
	sub.w $8(a6),d0
	beq.s loc_209314
	swap d0
	divs.w d1,d0
loc_209314:
	move.w d0,$10(a6)
	move.w d3,$12(a6)
	tst.w d1
	bpl.s loc_209322
	neg.w d1
loc_209322:
	move.w d1,$2e(a0)
	rts
loc_209328:
	moveq #$0,d0
	move.w $36(a0),d0
	add.w $8(a0),d0
	sub.w $8(a6),d0
	swap d0
	divs.w d2,d0
	moveq #$0,d1
	move.w $38(a0),d1
	add.w $c(a0),d1
	sub.w $c(a6),d1
	beq.s loc_20934e
	swap d1
	divs.w d0,d1
loc_20934e:
	move.w d1,$12(a6)
	move.w d2,$10(a6)
	tst.w d0
	bpl.s loc_20935c
	neg.w d0
loc_20935c:
	move.w d0,$2e(a0)
	rts
dat_209362:
	.incbin 37730, 922

sub_2096fc:
	btst.b #$3,$22(a0)
	beq.s loc_20976c
	btst.b #$3,$22(a1)
	beq.s loc_20976c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20976c
	tst.b $2a(a1)
	beq.s loc_20972e
	move.w #$ab,d0
	jsr (sub_202352).l
loc_20972e:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_20975a
	cmpi.b #$17,$1c(a1)
	beq.s loc_20975a
	bclr.b #$0,$2c(a1)
loc_20975a:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20976c
	bclr.b #$1,$22(a1)
loc_20976c:
	rts

sub_20976e:
	cmpi.b #$4,$24(a1)
	bne.s loc_209780
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_209780:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_2097e0
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2097a2
	bclr.b #$3,$22(a0)
	bra.w sub_2096fc
loc_2097a2:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_2097e0
	tst.b ($ff195b).l
	beq.s loc_2097ca
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_2097da
loc_2097ca:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_2097da:
	move.b #$0,$1c(a1)
loc_2097e0:
	bset.b #$3,$22(a1)
	beq.s loc_209802
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_20983a
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_209802:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_20982e
	cmpi.b #$2,$24(a0)
	beq.s loc_209834
loc_20982e:
	move.w $10(a1),$14(a1)
loc_209834:
	bclr.b #$1,$22(a1)
loc_20983a:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_209844:
	move.b #$1,$25(a0)

sub_20984a:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209afe
	btst.b #$6,$2c(a1)
	bne.w loc_209afe
	cmpi.b #$6,$24(a1)
	bcc.w loc_209afe
	tst.b $0(a1)
	beq.w loc_209afe
	tst.b $1(a0)
	bpl.w loc_209afe
	tst.b ($ff1906).l
	bne.w loc_209afe
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209afe
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209afe
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2098b8
	btst.b #$3,$22(a0)
	bne.s loc_2098ca
	bra.w loc_209afe
loc_2098b8:
	cmpi.b #$1,$25(a0)
	bne.s loc_2098ca
	tst.w $12(a1)
	beq.s loc_2098ca
	bmi.w loc_209afe
loc_2098ca:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209afe
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209afe
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_209900
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_209900:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_20990e
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_20990e:
	cmp.w d4,d5
	bcs.w loc_2099a2
	cmpi.b #$1,$25(a0)
	beq.w loc_209afe
	cmpi.b #$a,$0(a0)
	bne.s loc_209930
	btst.b #$1,$22(a1)
	bne.w loc_209afe
loc_209930:
	cmpi.b #$4,d5
	bls.w loc_209afe
	bsr.w sub_209b4e
	move.l d0,-(a7)
	bsr.w sub_2096fc
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_20995a
	tst.w $10(a1)
	beq.s loc_20998a
	bpl.s loc_209962
	bra.s loc_20998a
loc_20995a:
	tst.w $10(a1)
	beq.s loc_20998a
	bpl.s loc_20998a
loc_209962:
	bsr.w sub_209b0e
	btst.b #$1,$22(a1)
	bne.s loc_209980
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209980:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20998a:
	bsr.w sub_209bc4
	bsr.w sub_209b0e
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_2099a2:
	cmpi.b #$19,$0(a0)
	bne.s loc_2099b4
	btst.b #$2,$22(a1)
	bne.w loc_209afe
loc_2099b4:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_2099ca
	bmi.w loc_209a9a
loc_2099ca:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_2099dc
	tst.w $12(a1)
	beq.s loc_2099dc
	bmi.w loc_209afe
loc_2099dc:
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
	beq.s loc_209a28
	bpl.s loc_209a08
	neg.b d0
loc_209a08:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206af4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209a28
	tst.w $10(a0)
	bpl.s loc_209a24
	neg.w d1
loc_209a24:
	add.w d1,$8(a1)
loc_209a28:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209a92
	tst.w $12(a0)
	bmi.s loc_209a66
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b86).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209a66
	add.w d1,$c(a1)
	bra.w loc_209afe
loc_209a66:
	tst.w $12(a0)
	bpl.s loc_209a92
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d9e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209a92
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207178).l
	movem.l (a7)+,a0-a1
	bra.s loc_209afe
loc_209a92:
	bsr.w sub_20976e
	moveq #$1,d0
	rts
loc_209a9a:
	cmpi.b #$1,$25(a0)
	beq.s loc_209afe
	cmpi.b #$9,$0(a0)
	beq.s loc_209afe
	cmpi.b #$a,$0(a0)
	bne.s loc_209ac4
	cmpi.b #$2,$25(a0)
	beq.s loc_209ae4
	btst.b #$1,$1(a0)
	bne.s loc_209ae4
	bra.s loc_209afe
loc_209ac4:
	btst.b #$1,$22(a1)
	bne.s loc_209ae4
	tst.w $12(a0)
	beq.s loc_209ae4
	bmi.s loc_209ae4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207178).l
	movem.l (a7)+,a0-a1
loc_209ae4:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209bc4
	bsr.w sub_2096fc
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209afe:
	bsr.w sub_209bc4
	bsr.w sub_2096fc
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209b0e:
	tst.w $10(a0)
	beq.s loc_209b4c
	cmpi.b #$a,$0(a0)
	beq.s loc_209b4c
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209b28
	neg.b d0
loc_209b28:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206af4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209b4c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207178).l
	movem.l (a7)+,a0-a1
loc_209b4c:
	rts

sub_209b4e:
	cmpi.b #$a,$0(a0)
	bne.s loc_209b5e
	move.b #$0,$20(a1)
	rts
loc_209b5e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209bb2
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209bc2
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209b80
	tst.w $10(a2)
	beq.s loc_209bc2
loc_209b80:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209b92
	cmp.w $8(a2),d1
	bcs.s loc_209bc2
	bra.s loc_209b98
loc_209b92:
	cmp.w $8(a2),d1
	bcc.s loc_209bc2
loc_209b98:
	cmpi.b #$15,$0(a0)
	beq.s loc_209bc2
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207178).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209bb2:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209bc2:
	rts

sub_209bc4:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209bde
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209bde
	move.b #$0,$20(a1)
loc_209bde:
	rts
	.incbin 39904, 374
loc_209d56:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d64(pc,d0.w),d0
	jmp dat_209d64(pc,d0.w)
dat_209d64:
	.incbin 40292, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209d56
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209dba
	tst.b $1(a0)
	bpl.s loc_209dc2
loc_209dba:
	move.w dat_209e14(pc,d0.w),d1
	jsr dat_209e14(pc,d1.w)
loc_209dc2:
	bsr.w sub_20392c
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209df4
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209df4:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2039d8
	rts
dat_209e14:
	.incbin 40468, 26
	addq.b #$2,$24(a0)
	move.l #$20a196,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209e84
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20a19c,$4(a0)
	bra.s loc_209ec6
loc_209e84:
	btst.l #$3,d0
	beq.s loc_209eb2
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20a1e6,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20ca5a).l
	move.l (a7)+,d0
	bra.s loc_209ec6
loc_209eb2:
	btst.b #$1,$1(a0)
	beq.s loc_209ec6
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209ec6:
	btst.l #$1,d0
	beq.s loc_209ed2
	bset.b #$5,$2(a0)
loc_209ed2:
	andi.w #$2,d0
	move.w dat_209ede(pc,d0.w),$30(a0)
	rts
dat_209ede:
	dc.b $f0,$00,$f6,$00

sub_209ee2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20984a).l
	tst.b $1(a0)
	bpl.s loc_209efe
	lea ($d000).w,a1
	bsr.s sub_209ee2
	bne.s loc_209f00
loc_209efe:
	rts
loc_209f00:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202352).l
	lea (dat_20a188).l,a1
	bra.w sub_205eb6
	.incbin 40764, 24

sub_209f54:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20984a).l
	tst.b $1(a0)
	bpl.s loc_209f76
	lea ($d000).w,a1
	bsr.s sub_209f54
	btst.b #$5,$22(a0)
	bne.s loc_209f78
loc_209f76:
	rts
loc_209f78:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209fa6
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209fa6:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209fc0
	move.b #$0,$1c(a1)
loc_209fc0:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_202352).l
	.incbin 40922, 430
dat_20a188:
	.incbin 41352, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a282(pc,d0.w),d1
	jmp dat_20a282(pc,d1.w)
dat_20a282:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20a28c:
	.incbin 41612, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a2e4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a2dc
	moveq #$0,d1
	bra.s loc_20a2e4
loc_20a2dc:
	cmpi.w #$3,d1
	bcs.s loc_20a2e4
	moveq #$2,d1
loc_20a2e4:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20a300
	moveq #$6,d1
loc_20a300:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20a28c).l,a1
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
	beq.s loc_20a350
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a348
	moveq #$0,d0
	bra.s loc_20a350
loc_20a348:
	cmpi.w #$3,d0
	bcs.s loc_20a350
	moveq #$2,d0
loc_20a350:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a41e
	dbf d0,loc_20a350
	bclr.b #$7,(a2)
	bra.s loc_20a3a6
loc_20a362:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a38e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a386
	moveq #$0,d0
	bra.s loc_20a38e
loc_20a386:
	cmpi.w #$3,d0
	bcs.s loc_20a38e
	moveq #$2,d0
loc_20a38e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a41e
	dbf d0,loc_20a38e
	bclr.b #$7,(a2)
	bsr.w sub_207966
	bne.w loc_20a42a
loc_20a3a6:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a6f0,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a3fc
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20a3fc
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20a3fc:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20a41e:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20a362
loc_20a42a:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a450
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a448
	moveq #$0,d0
	bra.s loc_20a450
loc_20a448:
	cmpi.w #$3,d0
	bcs.s loc_20a450
	moveq #$2,d0
loc_20a450:
	lea $1(a2),a3
loc_20a454:
	btst.b #$0,-(a3)
	bne.w sub_2039d8
	dbf d0,loc_20a454
	tst.b $1(a0)
	bmi.s loc_20a484
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20a4fe
loc_20a484:
	tst.w ($ff190e).l
	bne.s loc_20a494
	move.b ($ff1913).l,$1a(a0)
loc_20a494:
	bra.w sub_20392c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a502
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a4e4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a4dc
	moveq #$0,d1
	bra.s loc_20a4e4
loc_20a4dc:
	cmpi.w #$3,d1
	bcs.s loc_20a4e4
	moveq #$2,d1
loc_20a4e4:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a6e8).l,a1
	bsr.w sub_205eb6
	bra.w sub_20392c
loc_20a4fe:
	bra.w sub_2039d8

sub_20a502:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a552
	bset.b #$1,($ff150d).l
	beq.s loc_20a53c
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a552
	bset.b #$2,($ff150d).l
	bne.s loc_20a552
loc_20a53c:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e76).l
loc_20a552:
	jmp (sub_202352).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a566(pc,d0.w),d1
	jmp dat_20a566(pc,d1.w)
dat_20a566:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_20a582
	move.w d0,d5
loc_20a582:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_20a592
loc_20a58a:
	bsr.w sub_207950
	bne.w loc_20a648
loc_20a592:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20a6f0,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a5f0
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20a5f0
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20a5f0:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_20a638
	move.w d4,d0
	jsr (sub_200856).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_20a638
	subi.w #$80,d4
	bcc.s loc_20a638
	move.w #$288,d4
loc_20a638:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_20a58a
loc_20a648:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202352).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2038d6
	addi.w #$18,$12(a0)
	bmi.s loc_20a6a8
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20a6a8
	jsr (sub_206c34).l
	tst.w d1
	bpl.s loc_20a6a8
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20a6a8:
	tst.b ($ff1916).l
	beq.s loc_20a6e4
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a6e4
	bra.w sub_20392c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a502
	lea (dat_20a6e8).l,a1
	bsr.w sub_205eb6
	bra.w sub_20392c
loc_20a6e4:
	bra.w sub_2039d8
dat_20a6e8:
	.incbin 42728, 402
loc_20a87a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a8a8(pc,d0.w),d0
	jsr dat_20a8a8(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a8a6
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a8a0
	btst.b #$0,($ff1505).l
	bne.s loc_20a8a6
loc_20a8a0:
	jmp (sub_20392c).l
loc_20a8a6:
	rts
dat_20a8a8:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20ae82,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a8dc
	move.b #$13,$1a(a0)
loc_20a8dc:
	rts
loc_20a8de:
	tst.b ($ff0f01).l
	beq.s loc_20a8ec
	jmp (sub_2039d8).l
loc_20a8ec:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a87a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a910(pc,d0.w),d0
	jsr dat_20a910(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20a910:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20ae82,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a95e
	tst.b $29(a0)
	bne.s loc_20a95e
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a95e:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20aa2a
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a986
	addq.b #$2,$1a(a0)
loc_20a986:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a99a
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a99a:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20aa00
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a9cc
	tst.b $29(a0)
	beq.s loc_20a9c4
	tst.b ($ff1956).l
	beq.s loc_20aa00
	bra.s loc_20a9cc
loc_20a9c4:
	tst.b ($ff1956).l
	bne.s loc_20aa00
loc_20a9cc:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20aa2a
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a9fa
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a9fa:
	jsr (sub_205e76).l
loc_20aa00:
	rts
	.incbin 43522, 40

sub_20aa2a:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20aa62
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20aa5a
	moveq #$0,d1
	bra.s loc_20aa62
loc_20aa5a:
	cmpi.w #$3,d1
	bcs.s loc_20aa62
	moveq #$2,d1
loc_20aa62:
	add.w d1,d0
	rts

sub_20aa66:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20aa88
	tst.b ($ff1956).l
	beq.s loc_20aa80
	tst.b $29(a0)
	bne.s loc_20aa88
	rts
loc_20aa80:
	tst.b $29(a0)
	beq.s loc_20aa88
	rts
loc_20aa88:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20984a).l
	tst.b $28(a0)
	bne.s loc_20aaaa
	tst.b ($ff0f01).l
	beq.s loc_20aaaa
	jmp (loc_207986).l
loc_20aaaa:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a8de
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aac2(pc,d0.w),d1
	jmp dat_20aac2(pc,d1.w)
dat_20aac2:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20ae82,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20ab0c
	tst.b $29(a0)
	bne.s loc_20ab0c
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20ab0c:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20aa2a
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20ab38
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20ab38:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20ab92
	move.b $25(a0),d0
	beq.s loc_20ab72
	bsr.w sub_203874
	jsr (sub_206c34).l
	tst.w d1
	bpl.w loc_20ab80
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20ab80
loc_20ab72:
	tst.b $1(a0)
	bpl.s loc_20ab80
	lea ($d000).w,a1
	bsr.w sub_20aa66
loc_20ab80:
	tst.w ($ff190e).l
	bne.s loc_20ab92
	lea (dat_20adfa).l,a1
	bsr.w sub_205eb6
loc_20ab92:
	bsr.w sub_20392c
	jmp (loc_207986).l
	.incbin 43932, 606
dat_20adfa:
	.incbin 44538, 586
loc_20b044:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b058(pc,d0.w),d0
	jsr dat_20b058(pc,d0.w)
	jmp (sub_20392c).l
dat_20b058:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20b098,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20b092
	jmp (sub_2039d8).l
loc_20b092:
	subq.w #$2,$c(a0)
	rts
	.incbin 45208, 82
	tst.b $28(a0)
	bmi.w loc_20b044
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b100(pc,d0.w),d0
	jmp dat_20b100(pc,d0.w)
dat_20b100:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20b19a,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20b130
	move.b #$3,$1a(a0)
	bra.s loc_20b150
loc_20b130:
	tst.w ($ff1588).l
	beq.s loc_20b13e
	move.b #$2,$1a(a0)
loc_20b13e:
	tst.b $28(a0)
	beq.s loc_20b150
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20b150:
	tst.b $28(a0)
	bne.s loc_20b194
	tst.b $29(a0)
	beq.s loc_20b180
	tst.w ($ff1512).l
	beq.s loc_20b16c
	bclr.b #$5,$2(a0)
	bra.s loc_20b194
loc_20b16c:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20b194
	eori.b #$20,$2(a0)
	bra.s loc_20b194
loc_20b180:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20b194
	move.b #$2,$1a(a0)
loc_20b194:
	jmp (sub_20392c).l
	.incbin 45466, 168

sub_20b242:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20b25e
	move.l d1,(a3)
loc_20b25e:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20b288
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e76).l
loc_20b288:
	rts
loc_20b28a:
	tst.w ($ff1588).l
	beq.s loc_20b2e0
	bsr.w sub_20b4dc
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
	lea (dat_20b63c).l,a2
	moveq #$2,d6
	bsr.w sub_20b694
	bra.w loc_20b33a
loc_20b2e0:
	tst.b ($ff1511).l
	beq.s loc_20b304
	bpl.s loc_20b2ee
	bsr.w sub_20b486
loc_20b2ee:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b576
loc_20b304:
	tst.b ($ff150f).l
	beq.s loc_20b33a
	bpl.s loc_20b312
	bsr.w sub_20b472
loc_20b312:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20b336
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20b336:
	bsr.w sub_20b56c
loc_20b33a:
	tst.w ($ff1588).l
	bne.w loc_20b3e6
	tst.b ($ff1510).l
	beq.w loc_20b3e6
	tst.w ($f63a).w
	bne.w loc_20b3e6
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b444
	tst.b ($f7cc).w
	bne.s loc_20b390
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20b390
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20b390
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20b390
	move.b #$9,(a1)
loc_20b390:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b682
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b68c
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20b3e2
	move.w #$63,d1
loc_20b3e2:
	bsr.w sub_20b68c
loc_20b3e6:
	tst.b ($ff150e).l
	beq.s loc_20b3f8
	clr.b ($ff150e).l
	bsr.w sub_20b662
loc_20b3f8:
	tst.b ($f7d6).w
	beq.s loc_20b442
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b418
	move.l #$6d400001,d0
loc_20b418:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b4fa
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b438
	move.l #$6e800001,d0
loc_20b438:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b4fa
loc_20b442:
	rts
loc_20b444:
	btst.b #$7,($ff152e).l
	bne.s loc_20b470
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207178
	move.b #$1,($ff150c).l
loc_20b470:
	rts

sub_20b472:
	move.l #$73600002,($c00004).l
	lea dat_20b4d8(pc),a2
	move.w #$2,d2
	bra.s loc_20b4a2

sub_20b486:
	lea ($c00000).l,a6
	bsr.w sub_20b662
	move.l #$70600002,($c00004).l
	lea dat_20b4d0(pc),a2
	move.w #$6,d2
loc_20b4a2:
	lea (dat_2330bc).l,a1
loc_20b4a8:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b4c4
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b4b8:
	move.l (a3)+,(a6)
	dbf d1,loc_20b4b8
loc_20b4be:
	dbf d2,loc_20b4a8
	rts
loc_20b4c4:
	move.l #$0,(a6)
	dbf d1,loc_20b4c4
	bra.s loc_20b4be
dat_20b4d0:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b4d8:
	dc.b $ff,$ff,$00,$00

sub_20b4dc:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b658
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b658

sub_20b4fa:
	lea (dat_20b634).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b50a:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b50e:
	sub.l d3,d1
	bcs.s loc_20b516
	addq.w #$1,d2
	bra.s loc_20b50e
loc_20b516:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b520
	move.w #$1,d4
loc_20b520:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b52c
	tst.w d6
	bne.s loc_20b55e
loc_20b52c:
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
loc_20b552:
	addi.l #$400000,d0
	dbf d6,loc_20b50a
	rts
loc_20b55e:
	moveq #$f,d5
loc_20b560:
	move.l #$0,(a6)
	dbf d5,loc_20b560
	bra.s loc_20b552

sub_20b56c:
	lea (dat_20b63c).l,a2
	moveq #$2,d6
	bra.s loc_20b57e

sub_20b576:
	lea (dat_20b630).l,a2
	moveq #$5,d6
loc_20b57e:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b586:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b58a:
	sub.l d3,d1
	bcs.s loc_20b592
	addq.w #$1,d2
	bra.s loc_20b58a
loc_20b592:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b59c
	move.w #$1,d4
loc_20b59c:
	tst.w d4
	beq.s loc_20b5ca
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
loc_20b5ca:
	addi.l #$400000,d0
	dbf d6,loc_20b586
	rts
	.incbin 46550, 90
dat_20b630:
	dc.b $00,$01,$86,$a0
dat_20b634:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b63c:
	dc.b $00,$00,$00,$64
dat_20b640:
	dc.b $00,$00,$00,$0a
dat_20b644:
	dc.b $00,$00,$00,$01
dat_20b648:
	.incbin 46664, 16

sub_20b658:
	moveq #$3,d6
	lea (dat_20b648).l,a2
	bra.s sub_20b694

sub_20b662:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b678
	moveq #$9,d1
loc_20b678:
	lea (dat_20b644).l,a2
	moveq #$0,d6
	bra.s sub_20b694

sub_20b682:
	lea (dat_20b644).l,a2
	moveq #$0,d6
	bra.s sub_20b694

sub_20b68c:
	lea (dat_20b640).l,a2
	moveq #$1,d6

sub_20b694:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b69c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b6a0:
	sub.l d3,d1
	bcs.s loc_20b6a8
	addq.w #$1,d2
	bra.s loc_20b6a0
loc_20b6a8:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b6b2
	move.w #$1,d4
loc_20b6b2:
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
	dbf d6,loc_20b69c
	rts
	.incbin 46824, 1074
	move.b #$10,$19(a0)
	move.b #$20,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20bb78
	move.w $c(a6),d0
	sub.w $c(a0),d0
	addi.w #$80,d0
	bmi.s loc_20bb74
	cmpi.w #$100,d0
	bcc.s loc_20bb74
	move.w $8(a6),d0
	cmp.w $8(a0),d0
	bcs.s loc_20bb74
	addq.b #$2,$24(a0)
	move.w ($f700).w,($f728).w
	move.w ($f700).w,($f720).w
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
	moveq #$12,d0
	jmp (sub_20251c).l
loc_20bb74:
	rts
	dc.b $4e,$75

sub_20bb78:
	moveq #$0,d0
	move.w ($ff1506).l,d0
	lsl.b #$7,d0
	lsr.w #$4,d0
	move.b ($ff152e).l,d1
	cmpi.b #$2,d1
	bne.s loc_20bb96
	add.b ($ff156a).l,d1
loc_20bb96:
	add.b d1,d1
	add.b d1,d0
	move.w dat_20bbb2(pc,d0.w),$2(a0)
	cmpi.b #$3,($ff1506).l
	beq.s loc_20bbb0
	ori.w #$8000,$2(a0)
loc_20bbb0:
	rts
dat_20bbb2:
	.incbin 48050, 1400
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c138(pc,d0.w),d0
	jmp dat_20c138(pc,d0.w)
dat_20c138:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205e76).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20c20e,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20c194
	tst.b ($ff1508).l
	beq.s loc_20c19c
	move.l #$20c212,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20c19c
loc_20c194:
	tst.b ($ff1508).l
	bne.s loc_20c1ac
loc_20c19c:
	bset.b #$7,($ff156b).l
	jsr (sub_207950).l
	beq.s loc_20c1b2
loc_20c1ac:
	jmp (sub_2039d8).l
loc_20c1b2:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20c1f4
	move.w #$6e,d0
	jmp (sub_205e76).l
loc_20c1f4:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c208
	bge.s loc_20c204
	neg.w d0
loc_20c204:
	add.w d0,$8(a0)
loc_20c208:
	jmp (sub_20392c).l
	.incbin 49678, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c254(pc,d0.w),d0
	jmp dat_20c254(pc,d0.w)
dat_20c254:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c952,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c912).l,a2
loc_20c2a2:
	jsr (sub_207950).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c952,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20c2f4
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20c2f4:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20c2a2
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c31c
	bge.s loc_20c312
	neg.w d0
loc_20c312:
	add.w d0,$a(a0)
	jmp (sub_20392c).l
loc_20c31c:
	addq.b #$4,$24(a0)
	jmp (sub_20392c).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c340
	bge.s loc_20c336
	neg.w d0
loc_20c336:
	add.w d0,$8(a0)
	jmp (sub_20392c).l
loc_20c340:
	addq.b #$4,$24(a0)
	jmp (sub_20392c).l
	tst.b $1e(a0)
	beq.s loc_20c35a
	subq.b #$1,$1e(a0)
	jmp (sub_20392c).l
loc_20c35a:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c374
	bge.s loc_20c36a
	neg.w d0
loc_20c36a:
	add.w d0,$a(a0)
	jmp (sub_20392c).l
loc_20c374:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20251c).l
	tst.b $1e(a0)
	beq.s loc_20c396
	subq.b #$1,$1e(a0)
	jmp (sub_20392c).l
loc_20c396:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c3b0
	bge.s loc_20c3a6
	neg.w d0
loc_20c3a6:
	add.w d0,$8(a0)
	jmp (sub_20392c).l
loc_20c3b0:
	jmp (sub_2039d8).l
	tst.l ($f680).w
	bne.s loc_20c3ca
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2039d8).l
loc_20c3ca:
	rts
	dc.b $70,$00,$10,$28,$00,$24
	move.w dat_20c3da(pc,d0.w),d0
	jmp dat_20c3da(pc,d0.w)
dat_20c3da:
	.incbin 50138, 1336
dat_20c912:
	.incbin 51474, 328

sub_20ca5a:
	rts
	tst.b $28(a0)
	bmi.w loc_20cb94
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ca7e(pc,d0.w),d0
	jsr dat_20ca7e(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20ca7e:
	dc.b $00,$0e,$00,$5e
loc_20ca82:
	lea ($d000).w,a1
	jmp (sub_209844).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$340,$2(a0)
	move.l #$20cbbc,$4(a0)
	move.b #$28,$16(a0)
	move.b #$20,$19(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	jsr (sub_207950).l
	bne.s loc_20cacc
	move.w #$ffe0,d0
	bsr.w sub_20cb5a
loc_20cacc:
	jsr (sub_207950).l
	bne.s loc_20cadc
	move.w #$20,d0
	bsr.w sub_20cb5a
loc_20cadc:
	jsr sub_20cb12(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	tst.b $3c(a0)
	beq.s loc_20cafc
	tst.b $3a(a0)
	beq.s loc_20cb0e
loc_20cafc:
	cmpi.b #$21,$3b(a0)
	bcs.s loc_20cb0e
	lea ($d000).w,a1
	jmp (sub_2096fc).l
loc_20cb0e:
	jmp loc_20ca82(pc)

sub_20cb12:
	tst.b $3a(a0)
	beq.s loc_20cb1e
	subq.b #$1,$3a(a0)
	bne.s loc_20cb58
loc_20cb1e:
	tst.b $3c(a0)
	beq.s loc_20cb3a
	subq.b #$1,$3b(a0)
	bcc.s loc_20cb58
	clr.b $3b(a0)
	clr.b $3c(a0)
	move.b #$3c,$3a(a0)
	rts
loc_20cb3a:
	addq.b #$8,$3b(a0)
	cmpi.b #$50,$3b(a0)
	bcs.s loc_20cb58
	move.b #$50,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20cb58:
	rts

sub_20cb5a:
	move.b #$20,$0(a1)
	move.w a0,$34(a1)
	move.b #$ff,$28(a1)
	add.w $8(a0),d0
	move.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	ori.b #$4,$1(a1)
	move.l #$20cbbc,$4(a1)
	move.b #$28,$16(a1)
	move.b #$1,$1a(a1)
	rts
loc_20cb94:
	movea.w $34(a0),a1
	cmpi.b #$20,$0(a1)
	bne.s loc_20cbb6
	move.w $c(a1),$c(a0)
	lea ($d000).w,a1
	jsr (sub_20984a).l
	jmp (sub_20392c).l
loc_20cbb6:
	jmp (sub_2039d8).l
	.incbin 52156, 38
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cbfc(pc,d0.w),d0
	jsr dat_20cbfc(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20cbfc:
	dc.b $00,$06,$00,$3a,$00,$bc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$6358,$2(a0)
	move.l #$20ceb2,$4(a0)
	move.b #$10,$16(a0)
	move.b #$10,$19(a0)
	move.b $28(a0),$1a(a0)
	bsr.w sub_20cd24
	tst.b $28(a0)
	beq.s loc_20cc8a
	bsr.w sub_20cd12
	tst.w $3a(a0)
	bne.s loc_20cc8c
	bsr.w sub_20cd68
	cmpi.b #$2,($ff152e).l
	bne.s loc_20cc5c
	tst.b ($ff156a).l
	bne.s loc_20cc8a
loc_20cc5c:
	tst.b ($ff1507).l
	bne.s loc_20cc6e
	move.w ($f704).w,d0
	cmpi.w #$400,d0
	bcc.s loc_20cc8a
loc_20cc6e:
	move.w #$168,d0
	move.b ($ff152e).l,d1
	beq.s loc_20cc86
	move.w #$1e0,d0
	subq.b #$1,d1
	beq.s loc_20cc86
	move.w #$f0,d0
loc_20cc86:
	move.w d0,$3a(a0)
loc_20cc8a:
	rts
loc_20cc8c:
	subq.w #$1,$3a(a0)
	bne.s loc_20cc8a
	addq.b #$2,$24(a0)
	move.w #$78,$3a(a0)
	move.w #$5a,$30(a0)
	clr.b $2e(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20ccb8
	move.w #$b2,d0
	jsr (sub_202352).l
loc_20ccb8:
	bsr.w sub_20cd12
	tst.w $30(a0)
	beq.s loc_20ccd6
	move.b $3c(a0),d0
	bsr.w sub_20ce8c
	subq.w #$1,$30(a0)
	beq.s loc_20ccd2
	rts
loc_20ccd2:
	bsr.w sub_20cd68
loc_20ccd6:
	move.b $3c(a0),d0
	addq.b #$1,d0
	move.b d0,($ff195a).l
	moveq #$0,d0
	move.b $3c(a0),d0
	bsr.w sub_20cdb0
	subq.w #$1,$3a(a0)
	bne.s loc_20cd10
	subq.b #$2,$24(a0)
	clr.b ($ff195a).l
	addq.b #$1,$3c(a0)
	cmpi.b #$3,$3c(a0)
	bcs.s loc_20cd10
	clr.b $3c(a0)
	clr.w $3e(a0)
loc_20cd10:
	rts

sub_20cd12:
	lea ($d000).w,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	rts

sub_20cd24:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20cd2c:
	cmpi.b #$21,$0(a1)
	bne.s loc_20cd3a
	tst.b $28(a1)
	bne.s loc_20cd66
loc_20cd3a:
	lea $40(a1),a1
	dbf d0,loc_20cd2c
	jsr (sub_207950).l
	bne.s loc_20cd66
	move.b #$21,$0(a1)
	move.b #$1,$28(a1)
	lea ($d000).w,a2
	move.w $8(a2),$8(a1)
	move.w $c(a2),$c(a1)
loc_20cd66:
	rts

sub_20cd68:
	lea ($fb40).w,a3
	move.w #$626,d0
	move.w #$646,d2
	move.b ($ff152e).l,d1
	beq.s loc_20cd9e
	lea ($fb7a).w,a3
	move.w #$222,d0
	move.w #$680,d2
	subq.b #$1,d1
	beq.s loc_20cd9e
	move.w #$402,d0
	move.w #$246,d2
	tst.b ($ff156a).l
	beq.s loc_20cd9e
	rts
loc_20cd9e:
	lea ($fb64).w,a2
	move.w d0,(a2)+
	move.w d0,(a2)+
	move.w d0,(a2)+
	move.w d2,(a3)+
	rts
dat_20cdac:
	dc.b $00,$02,$04,$00

sub_20cdb0:
	move.b dat_20cdac(pc,d0.w),d0
	lea ($fb64).w,a2
	lea $0(a2,d0.w),a2
	lea (dat_20ce58).l,a1
	move.b ($ff152e).l,d1
	beq.s loc_20cdda
	lea (dat_20ce3e).l,a1
	subq.b #$1,d1
	beq.s loc_20cdda
	lea (dat_20ce72).l,a1
loc_20cdda:
	moveq #$0,d1
	move.b $3e(a0),d1
	add.b d1,d1
	lea $0(a1,d1.w),a1
	move.w (a1)+,(a2)+
	addq.b #$1,$3e(a0)
	move.w (a1),d1
	cmpi.w #$ffff,d1
	bne.s loc_20cdf8
	clr.b $3e(a0)
loc_20cdf8:
	lea ($fb40).w,a2
	lea (dat_20ce68).l,a1
	move.b ($ff152e).l,d1
	beq.s loc_20ce1e
	lea ($fb7a).w,a2
	lea (dat_20ce4e).l,a1
	subq.b #$1,d1
	beq.s loc_20ce1e
	lea (dat_20ce82).l,a1
loc_20ce1e:
	moveq #$0,d1
	move.b $3f(a0),d1
	add.b d1,d1
	lea $0(a1,d1.w),a1
	move.w (a1)+,(a2)+
	addq.b #$1,$3f(a0)
	move.w (a1),d1
	cmpi.w #$ffff,d1
	bne.s loc_20ce3c
	clr.b $3f(a0)
loc_20ce3c:
	rts
dat_20ce3e:
	.incbin 52798, 16
dat_20ce4e:
	dc.b $0a,$60,$0a,$a0,$0a,$60,$0a,$a0
	dc.b $ff,$ff
dat_20ce58:
	.incbin 52824, 16
dat_20ce68:
	dc.b $08,$46,$08,$4a,$08,$46,$08,$4a
	dc.b $ff,$ff
dat_20ce72:
	.incbin 52850, 16
dat_20ce82:
	dc.b $02,$44,$02,$48,$02,$44,$02,$48
	dc.b $ff,$ff

sub_20ce8c:
	move.b dat_20ceae(pc,d0.w),d0
	lea ($fb64).w,a2
	lea $0(a2,d0.w),a2
	move.w #$80,d0
	tst.b $2e(a0)
	beq.s loc_20cea4
	moveq #$0,d0
loc_20cea4:
	move.w d0,(a2)
	eori.b #$1,$2e(a0)
	rts
dat_20ceae:
	.incbin 52910, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ceec(pc,d0.w),d0
	jsr dat_20ceec(pc,d0.w)
	jsr (sub_20392c).l
	move.w $36(a0),d0
	jmp (loc_20798a).l
dat_20ceec:
	dc.b $00,$16,$00,$4c
loc_20cef0:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209844).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20cfd0,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$18,$19(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20cf48(pc,d0.w),d0
	jmp dat_20cf48(pc,d0.w)
dat_20cf48:
	dc.b $00,$2a,$00,$4a,$00,$08,$00,$1a
	bsr.w sub_20cfb4
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cef0
	bsr.w sub_20cfb4
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cef0
	move.l $8(a0),-(a7)
	bsr.w sub_20cfb4
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cef0
	move.l $8(a0),-(a7)
	bsr.w sub_20cfb4
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cef0

sub_20cfb4:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_200856).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
	.incbin 53200, 490
	tst.b $24(a0)
	bne.s loc_20d202
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$39a,$2(a0)
	move.l #$20d27a,$4(a0)
	move.b #$8,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20d202:
	move.b $3f(a0),$3e(a0)
	lea ($d000).w,a1
	jsr (sub_20984a).l
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20d222
	bclr.b #$7,(a4)
	bra.s loc_20d22a
loc_20d222:
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20d22a:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20d256
	tst.b $1(a0)
	bpl.s loc_20d242
	move.w #$bf,d0
	jsr (sub_202352).l
loc_20d242:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	addq.w #$4,$c(a0)
	addq.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20d256:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20d26e
	subq.w #$8,$c(a1)
	subq.w #$4,$c(a0)
	subq.b #$1,$1a(a0)
	addq.b #$4,$16(a0)
loc_20d26e:
	jsr (sub_20392c).l
	jmp (loc_207986).l
	.incbin 53882, 28
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d2b0(pc,d0.w),d0
	jsr dat_20d2b0(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20d2b0:
	dc.b $00,$1a,$00,$7e,$00,$ba,$01,$00

sub_20d2b8:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20984a).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20d406,$4(a0)
	move.w $c(a0),$32(a0)
	move.w #$3a0,$2(a0)
	move.b #$20,$16(a0)
	move.b #$8,$19(a0)
	cmpi.b #$2,($ff1507).l
	bne.s loc_20d31c
	move.w #$330,$2(a0)
	move.b #$20,$16(a0)
	move.b #$20,$19(a0)
	move.b #$1,$1a(a0)
loc_20d31c:
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b d0,$30(a0)
	move.b #$ff,$3c(a0)
	moveq #$0,d0
	move.b $30(a0),d0
	lea ($f7e0).w,a1
	btst.b #$7,$0(a1,d0.w)
	beq.s loc_20d344
	clr.b $3c(a0)
loc_20d344:
	lea ($d000).w,a1
	move.w $8(a1),$38(a0)
	move.w $c(a1),$3e(a0)
	bsr.w sub_20d3c8
	bsr.w sub_20d2b8
	cmpi.b #$40,$3a(a0)
	bne.s loc_20d368
	addq.b #$2,$24(a0)
loc_20d368:
	rts
	lea ($d000).w,a1
	move.w $8(a0),d0
	sub.w $38(a0),d0
	bcc.s loc_20d392
	move.b $17(a1),d0
	ext.w d0
	add.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d3ae
	neg.w d0
	cmp.b $19(a0),d0
	bcs.s loc_20d3ae
	bra.s loc_20d3aa
loc_20d392:
	move.b $17(a1),d0
	neg.b d0
	ext.w d0
	add.w $8(a1),d0
	sub.w $8(a0),d0
	bcs.s loc_20d3ae
	cmp.b $19(a0),d0
	bcs.s loc_20d3ae
loc_20d3aa:
	addq.b #$2,$24(a0)
loc_20d3ae:
	rts
	st $3c(a0)
	bsr.w sub_20d3c8
	tst.b $3a(a0)
	bne.s loc_20d3c4
	move.b #$2,$24(a0)
loc_20d3c4:
	bra.w sub_20d2b8

sub_20d3c8:
	bsr.w sub_20d3de
	moveq #$0,d0
	move.b $3a(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts

sub_20d3de:
	tst.b $3c(a0)
	beq.s loc_20d3f0
	subq.b #$4,$3a(a0)
	bcc.s loc_20d404
	clr.b $3a(a0)
	bra.s loc_20d404
loc_20d3f0:
	addq.b #$4,$3a(a0)
	move.b $3a(a0),d0
	cmpi.b #$40,d0
	bcs.s loc_20d404
	move.b #$40,$3a(a0)
loc_20d404:
	rts
	.incbin 54278, 38
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d446(pc,d0.w),d0
	jsr dat_20d446(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20d446:
	dc.b $00,$24,$00,$60,$00,$b4,$00,$cc
	dc.b $01,$18
loc_20d450:
	tst.b $1a(a0)
	beq.s loc_20d458
	rts
loc_20d458:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20984a).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4410,$2(a0)
	move.l #$20d59a,$4(a0)
	move.b #$4,$19(a0)
	move.b #$20,$16(a0)
	tst.b $28(a0)
	beq.s loc_20d4a6
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d4a6:
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d4b6
	neg.w d0
loc_20d4b6:
	cmpi.w #$40,d0
	bcc.s loc_20d4f6
	move.w $8(a0),d1
	move.w $8(a1),d0
	tst.b $28(a0)
	bne.s loc_20d4d2
	move.w $8(a0),d0
	move.w $8(a1),d1
loc_20d4d2:
	sub.w d1,d0
	bcs.s loc_20d4f6
	cmpi.w #$40,d0
	bcc.s loc_20d4f6
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20d4f6
	move.w #$a4,d0
	jsr (sub_202352).l
loc_20d4f6:
	bra.w loc_20d450
	clr.b $3c(a0)
	jsr sub_20d578(pc)
	cmpi.b #$3,$1a(a0)
	bne.s loc_20d50e
	addq.b #$2,$24(a0)
loc_20d50e:
	bra.w loc_20d450
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d522
	neg.w d0
loc_20d522:
	cmpi.w #$40,d0
	bcc.s loc_20d55a
	move.w $8(a1),d1
	move.w $8(a0),d0
	tst.b $28(a0)
	bne.s loc_20d53e
	move.w $8(a1),d0
	move.w $8(a0),d1
loc_20d53e:
	sub.w d1,d0
	bcs.s loc_20d55a
	cmpi.w #$40,d0
	bcs.s loc_20d55a
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	move.w #$a4,d0
	jsr (sub_202352).l
loc_20d55a:
	bra.w loc_20d450
	move.b #$1,$3c(a0)
	jsr sub_20d578(pc)
	tst.b $1a(a0)
	bne.s loc_20d574
	move.b #$2,$24(a0)
loc_20d574:
	bra.w loc_20d450

sub_20d578:
	addi.b #$40,$3a(a0)
	bcs.s loc_20d582
	rts
loc_20d582:
	tst.b $3c(a0)
	bne.s loc_20d58e
	addq.b #$1,$1a(a0)
	rts
loc_20d58e:
	subq.b #$1,$1a(a0)
	bcc.s loc_20d598
	clr.b $1a(a0)
loc_20d598:
	rts
	.incbin 54682, 44
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d5e4(pc,d0.w),d0
	jsr dat_20d5e4(pc,d0.w)
	jsr (sub_20392c).l
	move.w $36(a0),d0
	jmp (loc_20798a).l
dat_20d5e4:
	dc.b $00,$12,$00,$48

sub_20d5e8:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209844).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20d8b0,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20d816
	lea dat_20d8a6(pc),a1
	jsr (sub_205eb6).l
	lea ($d000).w,a1
	bsr.w sub_20d5e8
	beq.s loc_20d68a
	bset.b #$0,$22(a1)
	andi.b #$fc,$1(a1)
	ori.b #$1,$1(a1)
	bset.b #$0,$2c(a1)
	bne.s loc_20d680
	move.b #$2d,$1c(a1)
	moveq #$0,d0
	move.b d0,$2b(a1)
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d67c
	neg.w d0
	move.b #$80,$2b(a1)
loc_20d67c:
	move.b d0,$39(a1)
loc_20d680:
	cmpi.b #$6,$24(a1)
	bcc.s loc_20d68a
	bra.s loc_20d6aa
loc_20d68a:
	rts
	.incbin 54924, 30
loc_20d6aa:
	addq.b #$4,$2b(a1)
	move.b $2b(a1),d0
	jsr (sub_200856).l
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
	move.b dat_20d708(pc,d0.w),$1b(a1)
	andi.b #$3f,d1
	bne.s loc_20d6ea
	addq.b #$1,$39(a1)
loc_20d6ea:
	move.w ($f604).w,($f602).w
	cmpi.b #$1,$0(a1)
	beq.s loc_20d6fe
	move.w ($f606).w,($f602).w
loc_20d6fe:
	bsr.w sub_20d718
	bra.w loc_20d766
	dc.b $4e,$75
dat_20d708:
	.incbin 55048, 16

sub_20d718:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d744
	btst.b #$2,($f602).w
	beq.s loc_20d730
	addq.b #$1,$39(a1)
	bra.s loc_20d764
loc_20d730:
	btst.b #$3,($f602).w
	beq.s loc_20d764
	subq.b #$1,$39(a1)
	bcc.s loc_20d764
	clr.b $39(a1)
	bra.s loc_20d764
loc_20d744:
	btst.b #$3,($f602).w
	beq.s loc_20d752
	addq.b #$1,$39(a1)
	bra.s loc_20d764
loc_20d752:
	btst.b #$2,($f602).w
	beq.s loc_20d764
	subq.b #$1,$39(a1)
	bcc.s loc_20d764
	clr.b $39(a1)
loc_20d764:
	rts
loc_20d766:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20d80c
	clr.b $2c(a1)
	move.w #$680,d2
	moveq #$0,d0
	move.b $26(a1),d0
	subi.b #$40,d0
	jsr (sub_200856).l
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
	beq.s loc_20d7c6
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d7d2
loc_20d7c6:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
loc_20d7d2:
	btst.b #$2,$22(a1)
	bne.s loc_20d80e
	tst.b ($ff195b).l
	beq.s loc_20d7f0
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d800
loc_20d7f0:
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
loc_20d800:
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
loc_20d80c:
	rts
loc_20d80e:
	bset.b #$4,$22(a1)
	rts

sub_20d816:
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20d826(pc,d0.w),d0
	jmp dat_20d826(pc,d0.w)
dat_20d826:
	dc.b $00,$26,$00,$44,$00,$08,$00,$18
	bsr.w sub_20d88a
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	bsr.w sub_20d88a
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	move.l $8(a0),-(a7)
	bsr.w sub_20d88a
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts
	move.l $8(a0),-(a7)
	bsr.w sub_20d88a
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts

sub_20d88a:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_200856).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
dat_20d8a6:
	.incbin 55462, 118
	jsr (sub_20fc74).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d93c(pc,d0.w),d0
	jsr dat_20d93c(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20d93c:
	.incbin 55612, 614
	tst.b $28(a0)
	bmi.w loc_20dfb2
	jsr (sub_20fc74).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dbd4(pc,d0.w),d0
	jsr dat_20dbd4(pc,d0.w)
	lea dat_20de40(pc),a1
	jsr (sub_205eb6).l
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20dbd4:
	.incbin 56276, 620
dat_20de40:
	.incbin 56896, 370
loc_20dfb2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dfcc(pc,d0.w),d0
	jsr dat_20dfcc(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20dfcc:
	.incbin 57292, 182
	tst.b $29(a0)
	bmi.w loc_20e3e8
	jsr (sub_20fc74).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e0aa(pc,d0.w),d0
	jsr dat_20e0aa(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20e0aa:
	.incbin 57514, 830
loc_20e3e8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e402(pc,d0.w),d0
	jsr dat_20e402(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20e402:
	.incbin 58370, 198
	tst.b $29(a0)
	beq.s loc_20e4d6
	bmi.w loc_20e744
	bra.w loc_20e724
loc_20e4d6:
	jsr (sub_20fc74).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e4f6(pc,d0.w),d0
	jsr dat_20e4f6(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20e4f6:
	.incbin 58614, 558
loc_20e724:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	bne.s loc_20e73e
	cmpi.b #$1,$1b(a1)
	beq.s loc_20e73e
	jmp (sub_20392c).l
loc_20e73e:
	jmp (sub_2039d8).l
loc_20e744:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	beq.s loc_20e756
	jmp (sub_2039d8).l
loc_20e756:
	move.w $c(a1),d0
	sub.w $34(a1),d0
	subi.w #$18,d0
	asr.w #$3,d0
	bpl.s loc_20e768
	moveq #$0,d0
loc_20e768:
	move.b d0,$1a(a0)
	asl.w #$2,d0
	add.w $34(a1),d0
	addi.w #$10,d0
	move.w d0,$c(a0)
	jmp (sub_20392c).l
	.incbin 59264, 440
	jsr (sub_20fcbc).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ea5a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e958(pc,d0.w),d0
	jmp dat_20e958(pc,d0.w)
dat_20e958:
	dc.b $00,$06,$00,$60,$00,$a4
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080108,$16(a0)
	move.l #$20ebda,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20eb30
	bsr.w sub_20eb3e
	tst.b $28(a0)
	bmi.s loc_20e9a6
	move.b #$1,$18(a0)
	ori.w #$8000,$2(a0)
	move.w #$101,$2e(a0)
	rts
loc_20e9a6:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20ea3a
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20e9de
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20eb30
loc_20e9de:
	move.b d0,$2e(a0)
	lea dat_20eb5c(pc),a1
	jsr (sub_205eb6).l
	jsr (sub_20392c).l
	move.w $2a(a0),d0
	jmp (loc_20798a).l
	.incbin 59900, 62

sub_20ea3a:
	move.b $2e(a0),d0
	jsr (sub_200856).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20ea5a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ea68(pc,d0.w),d0
	jmp dat_20ea68(pc,d0.w)
dat_20ea68:
	dc.b $00,$0a,$00,$48,$00,$48,$00,$8e
	dc.b $00,$9c
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20ebee,$4(a0)
	bsr.w sub_20eb3e
	tst.b $28(a0)
	bmi.s loc_20eaa8
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
loc_20eaa8:
	move.b #$8,$24(a0)
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_206c34).l
	tst.w d1
	bpl.s loc_20eaea
	addq.b #$2,$24(a0)
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
loc_20eaea:
	jsr (sub_20392c).l
	jmp (loc_207986).l
	move.b #$2,$24(a0)
	neg.l $2c(a0)
	bsr.s sub_20eb30
	bra.s loc_20eaea
	.incbin 60164, 44

sub_20eb30:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20eb3e:
	lea dat_20ec12(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20eb5c:
	.incbin 60252, 182
dat_20ec12:
	.incbin 60434, 22
	tst.b $28(a0)
	bmi.w loc_20ecda
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ec54(pc,d0.w),d0
	jsr dat_20ec54(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_20984a).l
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20ec54:
	dc.b $00,$04,$00,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$3a8,$2(a0)
	move.l #$20eeae,$4(a0)
	move.w a0,$2a(a0)
	st $34(a0)
	move.w #$0,$32(a0)
	tst.b $34(a0)
	beq.s loc_20ecd8
	sf $34(a0)
	lea dat_20eeb6(pc),a1
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.w $32(a0),d0
	adda.w $0(a1,d0.w),a1
	move.l a1,$2c(a0)
	addq.w #$2,$32(a0)
	cmpi.w #$8,$32(a0)
	blt.s loc_20eccc
	clr.w $32(a0)
loc_20eccc:
	bsr.w sub_20ee6c
	beq.s loc_20ecd8
	jmp (sub_2039d8).l
loc_20ecd8:
	rts
loc_20ecda:
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20ee66
	move.b $29(a0),d0
	cmp.b $29(a1),d0
	bne.w loc_20ee66
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ed12(pc,d0.w),d0
	jsr dat_20ed12(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_20984a).l
	jmp (sub_20392c).l
dat_20ed12:
	.incbin 60690, 20
	addq.b #$2,$24(a0)
	move.w #$3f,$30(a0)
	move.l #$0,$38(a0)
	move.l #$0,$3c(a0)
	movea.l $2c(a0),a1
	move.b -$1(a1),d0
	bne.s loc_20ed52
	move.l #$ffff8000,$3c(a0)
loc_20ed52:
	subq.b #$1,d0
	bne.s loc_20ed5e
	move.l #$8000,$38(a0)
loc_20ed5e:
	subq.b #$1,d0
	bne.s loc_20ed6a
	move.l #$8000,$3c(a0)
loc_20ed6a:
	subq.b #$1,d0
	bne.s loc_20ed76
	move.l #$ffff8000,$38(a0)
loc_20ed76:
	movea.w $2a(a0),a1
	cmpi.b #$2,$28(a1)
	bne.s loc_20ed94
	moveq #$1,d0
	tst.w $3c(a0)
	bpl.s loc_20ed8c
	moveq #$ffffffff,d0
loc_20ed8c:
	move.w d0,$34(a0)
	move.w d0,$12(a0)
loc_20ed94:
	move.l $38(a0),d0
	add.l d0,$8(a0)
	move.l $3c(a0),d0
	add.l d0,$c(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20edae
	addq.b #$2,$24(a0)
loc_20edae:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20edc8
	move.w #$0,d0
loc_20edc8:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ede8
	addq.b #$2,$24(a0)
	bsr.w sub_20ee6c
	beq.s loc_20ede8
	addq.b #$2,$24(a0)
	movea.w $2a(a0),a1
	st $34(a1)
loc_20ede8:
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
	bpl.s loc_20ee1a
	addq.b #$2,$24(a0)
loc_20ee1a:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20ee34
	move.w #$0,d0
loc_20ee34:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ee50
	movea.w $36(a0),a1
	tst.b $28(a1)
	bpl.s loc_20ee4c
	addq.b #$2,$24(a1)
loc_20ee4c:
	addq.b #$2,$24(a0)
loc_20ee50:
	rts
	lea ($d000).w,a1
	jsr (sub_20984a).l
	beq.s loc_20ee64
	jsr (sub_2096fc).l
loc_20ee64:
	addq.l #$4,a7
loc_20ee66:
	jmp (sub_2039d8).l

sub_20ee6c:
	movea.l $2c(a0),a6
	tst.b (a6)+
	bmi.s loc_20eeac
	jsr (sub_207950).l
	bne.s loc_20eeac
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
loc_20eeac:
	rts
	dc.b $00,$02,$01,$f0,$0f,$00,$00,$f0
dat_20eeb6:
	.incbin 61110, 104
	tst.b $28(a0)
	bne.w loc_20f0e8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ef4a(pc,d0.w),d0
	jsr dat_20ef4a(pc,d0.w)
	jsr (sub_20392c).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20ef48
	jmp (loc_207986).l
loc_20ef48:
	rts
dat_20ef4a:
	dc.b $00,$0a,$00,$58,$00,$84,$00,$e8
	dc.b $00,$f4
	tst.b ($ff156a).l
	beq.s loc_20ef64
	addq.l #$4,a7
	jmp (sub_2039d8).l
loc_20ef64:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$14,$17(a0)
	move.b #$14,$19(a0)
	move.b #$1c,$16(a0)
	move.w #$44e8,$2(a0)
	move.l #$20f096,$4(a0)
	move.b #$f8,$20(a0)
	move.l #$20f0b6,$2c(a0)
	tst.b $21(a0)
	beq.s loc_20efc4
	clr.w $20(a0)
	addq.b #$2,$24(a0)
	lea ($d000).w,a1
	jsr (sub_20984a).l
	beq.s loc_20efc2
	jsr (sub_2096fc).l
loc_20efc2:
	rts
loc_20efc4:
	lea ($d000).w,a1
	jmp (sub_20984a).l
	.incbin 61390, 282
loc_20f0e8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f0fc(pc,d0.w),d0
	jsr dat_20f0fc(pc,d0.w)
	jmp (sub_20392c).l
dat_20f0fc:
	.incbin 61692, 158
	tst.b $28(a0)
	bne.w loc_20f3e2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f1bc(pc,d0.w),d0
	jsr dat_20f1bc(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_207986).l
dat_20f1bc:
	dc.b $00,$06,$00,$d4,$01,$be
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.w #$3b8,$2(a0)
	move.l #$20f41e,$4(a0)
	jsr (sub_207950).l
	bne.w loc_20f3f0
	bsr.w sub_20f23c
	move.w a1,$2a(a0)
	subi.w #$28,$8(a1)
	subi.w #$18,$c(a1)
	jsr (sub_207950).l
	bne.w loc_20f3f0
	bsr.w sub_20f23c
	move.w a1,$2c(a0)
	addi.w #$28,$8(a1)
	addi.w #$18,$c(a1)
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
	rts

sub_20f23c:
	move.b $0(a0),$0(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$ff,$28(a1)
	move.b #$10,$17(a1)
	move.b #$10,$19(a1)
	move.b #$8,$16(a1)
	move.b #$9,$1a(a1)
	move.w a0,$2a(a1)
	move.w #$78,$2e(a0)
	rts
	lea loc_20f2fc(pc),a1
	tst.w $12(a0)
	beq.s loc_20f29e
	lea loc_20f31e(pc),a1
loc_20f29e:
	jsr (a1)
	move.w a0,-(a7)
	movea.w $2c(a0),a0
	lea ($d000).w,a1
	jsr (sub_209844).l
	jsr (sub_20392c).l
	movea.w (a7)+,a0
	move.w a0,-(a7)
	movea.w $2a(a0),a0
	lea ($d000).w,a1
	jsr (sub_209844).l
	sne $3f(a0)
	jsr (sub_20392c).l
	movea.w (a7)+,a0
	movea.w $2a(a0),a1
	tst.b $3f(a1)
	bne.s loc_20f2e8
	lea dat_20f3f6(pc),a1
	jmp (sub_205eb6).l
loc_20f2e8:
	move.b #$4,$24(a0)
	move.w #$3,$2e(a0)
	move.b #$8,$1a(a0)
	rts
loc_20f2fc:
	tst.w $2e(a0)
	bmi.s loc_20f31c
	subq.w #$1,$2e(a0)
	bmi.s loc_20f312
	cmpi.w #$3c,$2e(a0)
	beq.s loc_20f318
	bra.s loc_20f31c
loc_20f312:
	move.w #$100,$12(a0)
loc_20f318:
	addq.b #$1,$1c(a0)
loc_20f31c:
	rts
loc_20f31e:
	movea.w $2a(a0),a1
	movea.w $2c(a0),a2
	moveq #$0,d0
	move.b $12(a0),d0
	add.w d0,$c(a0)
	add.w d0,$c(a1)
	add.w d0,$c(a2)
	moveq #$0,d0
	move.b $19(a2),d0
	move.w $8(a2),d3
	cmp.w $8(a0),d3
	blt.s loc_20f34a
	neg.w d0
loc_20f34a:
	add.w d0,d3
	move.w a0,-(a7)
	movea.w a2,a0
	jsr (sub_206c38).l
	movea.w (a7)+,a0
	tst.w d1
	bmi.s loc_20f35e
	rts
loc_20f35e:
	movea.w $2a(a0),a1
	movea.w $2c(a0),a2
	add.w d1,$c(a0)
	add.w d1,$c(a1)
	add.w d1,$c(a2)
	move.w #$0,$12(a0)
	rts
	.incbin 62330, 104
loc_20f3e2:
	movea.w $2a(a0),a1
	cmpi.b #$2c,$0(a1)
	bne.s loc_20f3f0
	rts
loc_20f3f0:
	jmp (sub_2039d8).l
dat_20f3f6:
	.incbin 62454, 210
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f4ec(pc,d0.w),d0
	jsr dat_20f4ec(pc,d0.w)
	jsr (sub_20392c).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20f4ea
	jmp (loc_207986).l
loc_20f4ea:
	rts
dat_20f4ec:
	dc.b $00,$08,$00,$9e,$01,$08,$01,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$22,$17(a0)
	move.b #$22,$19(a0)
	move.b #$20,$16(a0)
	lea dat_20f91a(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	move.l #$20f69c,$4(a0)
	move.l #$20f8da,$2c(a0)
	move.w $c(a0),$30(a0)
	move.w #$4,$2a(a0)
	move.w #$1,$32(a0)
	moveq #$0,d0
	tst.b ($ff156a).l
	bne.s loc_20f560
	addq.b #$2,d0
loc_20f560:
	tst.b ($ff152e).l
	bne.s loc_20f56a
	addq.b #$1,d0
loc_20f56a:
	move.b d0,$1a(a0)
	tst.b ($ff156a).l
	bne.s loc_20f58a
	tst.b ($ff152e).l
	bne.s loc_20f58a
	move.b #$fa,$20(a0)
	subi.w #$10,$c(a0)
loc_20f58a:
	tst.b ($ff156a).l
	bne.s loc_20f5f2
	tst.b ($ff152e).l
	bne.s loc_20f5f2
	bsr.w sub_20f66e
	tst.b $21(a0)
	beq.s loc_20f5de
	clr.w $20(a0)
	clr.w $2a(a0)
	move.b #$7,$1a(a0)
	addq.b #$2,$24(a0)
	move.b #$1,($ff156a).l
	move.l #$96,d0
	jsr (sub_20b242).l
	lea ($d000).w,a1
	jsr (sub_20984a).l
	beq.s loc_20f5dc
	jsr (sub_2096fc).l
loc_20f5dc:
	rts
loc_20f5de:
	lea ($d000).w,a1
	jsr (sub_20984a).l
	lea dat_20f694(pc),a1
	jmp (sub_205eb6).l
loc_20f5f2:
	rts
	.incbin 62964, 122

sub_20f66e:
	addq.w #$1,$2a(a0)
	move.w $2a(a0),d0
	andi.w #$7,d0
	bne.s loc_20f684
	move.w $32(a0),d0
	add.w d0,$c(a0)
loc_20f684:
	move.w $2a(a0),d0
	andi.w #$1f,d0
	bne.s loc_20f692
	neg.w $32(a0)
loc_20f692:
	rts
dat_20f694:
	.incbin 63124, 646
dat_20f91a:
	.incbin 63770, 858

sub_20fc74:
	tst.b ($ff156a).l
	beq.s loc_20fcba
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fc8c
	tst.b $28(a0)
	beq.s loc_20fcba
loc_20fc8c:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2039d8).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fcb8
	move.w #$9e,d0
	jsr (sub_202352).l
loc_20fcb8:
	addq.l #$4,a7
loc_20fcba:
	rts

sub_20fcbc:
	tst.b $28(a0)
	bmi.s loc_20fcec
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fcdc
	tst.b ($ff156d).l
	bne.s loc_20fcec
	addq.l #$4,a7
	jmp (loc_207986).l
loc_20fcdc:
	tst.b ($ff156a).l
	bne.s loc_20fcec
	addq.l #$4,a7
	jmp (sub_2039d8).l
loc_20fcec:
	rts

sub_20fcee:
	jsr (sub_20672a).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fe16).l,a1
	move.w #$1f,d6
	bsr.w sub_20fdc4
	bne.s loc_20fd30
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4580,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd30:
	subq.b #$1,($f66e).w
	bmi.s loc_20fd38
	bra.s loc_20fd4a
loc_20fd38:
	eori.b #$1,($f668).w
	move.b ($f668).w,d0
	ext.w d0
	move.b dat_20fd52(pc,d0.w),($f66e).w
loc_20fd4a:
	tst.b ($f668).w
	beq.s loc_20fd8a
	bra.s loc_20fd54
dat_20fd52:
	dc.b $5a,$1e
loc_20fd54:
	lea (dat_20fe08).l,a1
	move.w #$3f,d6
	bsr.w sub_20fdc4
	bne.s loc_20fd88
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4600,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd88:
	rts
loc_20fd8a:
	lea ($ff1980).l,a3
	move.w #$3f,d6
loc_20fd94:
	move.l #$0,(a3)+
	dbf d6,loc_20fd94
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4600,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
	rts

sub_20fdc4:
	subq.b #$1,(a2)
	bpl.w loc_20fdfc
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fdda
	moveq #$0,d0
loc_20fdda:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fdea:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fdea
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fdfc:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fe08:
	dc.b $04,$03,$00,$23,$3c,$0c,$00,$23
	dc.b $3d,$0c,$00,$23,$3e,$0c
dat_20fe16:
	dc.b $03,$02,$00,$23,$3b,$0c,$00,$23
	dc.b $3b,$8c
dat_20fe20:
	.incbin 65056, 16
dat_20fe30:
	.incbin 65072, 66000
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
	.incbin 219126, 4796
dat_236ab2:
	.incbin 223922, 13766
dat_23a078:
	.incbin 237688, 24456
