; R62D__.MMD
; disassembled from the disc; code only, data comes from data/R62D__.MMD at build time
	.file "R62D__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$be
	jmp (loc_201c34).l
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
	bsr.w sub_20216a
	bsr.w sub_202112
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2014ae

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
	dc.b $0a,$ca,$04,$64,$00,$00
dat_200220:
	dc.b $22,$03,$01,$00,$01,$01,$01,$02
dat_200228:
	dc.b $04,$64,$00,$00,$0a,$ca
dat_20022e:
	dc.b $23,$03,$01,$00,$01,$01,$01,$02
dat_200236:
	dc.b $00,$00,$0a,$ca,$04,$64
dat_20023c:
	dc.b $31,$06,$01,$01,$01,$00,$01,$02
	dc.b $01,$00,$01,$03,$01,$00
dat_20024a:
	dc.b $00,$00,$04,$04,$00,$ee,$0e,$ee
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
	bsr.w sub_2007f2
	bsr.s sub_20028c
	bsr.w sub_202530
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
	bsr.w sub_2007f2
	bsr.s sub_20031c
	bsr.w sub_202530
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
	bsr.w sub_2007f2
	bsr.s sub_2003b4
	bsr.w sub_202530
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
	bsr.w sub_2007f2
	bsr.s sub_200448
	bsr.w sub_202530
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
	.incbin 1206, 334

sub_200604:
	lea (dat_200670).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200618:
	move.l (a2)+,(a3)+
	dbf d7,loc_200618
	rts

sub_200620:
	lea (dat_200670).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200630:
	move.l (a2)+,(a3)+
	dbf d7,loc_200630
	rts
	.incbin 1592, 56
dat_200670:
	.incbin 1648, 386

sub_2007f2:
	move.w #$2300,sr
loc_2007f6:
	tst.b ($f62a).w
	bne.s loc_2007f6
	rts

sub_2007fe:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200816(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200816(pc,d0.w),d0
	rts
dat_200816:
	.incbin 2070, 640

sub_200a96:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200af2
	move.w d2,d4
	tst.w d3
	bpl.w loc_200ab0
	neg.w d3
loc_200ab0:
	tst.w d4
	bpl.w loc_200ab8
	neg.w d4
loc_200ab8:
	cmp.w d3,d4
	bcc.w loc_200aca
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200afc(pc,d4.w),d0
	bra.s loc_200ad4
loc_200aca:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200afc(pc,d3.w),d0
loc_200ad4:
	tst.w d1
	bpl.w loc_200ae0
	neg.w d0
	addi.w #$80,d0
loc_200ae0:
	tst.w d2
	bpl.w loc_200aec
	neg.w d0
	addi.w #$100,d0
loc_200aec:
	movem.l (a7)+,d3-d4
	rts
loc_200af2:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200afc:
	.incbin 2812, 258

sub_200bfe:
	btst.b #$3,$22(a0)
	beq.s loc_200c12
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200c12:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c34
	move.b $26(a0),d0
	bpl.s loc_200c2e
	subq.b #$1,d0
loc_200c2e:
	addi.b #$20,d0
	bra.s loc_200c40
loc_200c34:
	move.b $26(a0),d0
	bpl.s loc_200c3c
	addq.b #$1,d0
loc_200c3c:
	addi.b #$1f,d0
loc_200c40:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200eca
	cmpi.b #$80,d0
	beq.w loc_200e28
	cmpi.b #$c0,d0
	beq.w loc_200d8c
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
	bsr.w sub_201154
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
	bsr.w sub_201154
	move.w (a7)+,d0
	bsr.w sub_200d60
	tst.w d1
	beq.s loc_200cce
	bpl.s loc_200cd0
	cmpi.w #$fff2,d1
	blt.s loc_200cf6
	add.w d1,$c(a0)
loc_200cce:
	rts
loc_200cd0:
	cmpi.w #$e,d1
	bgt.s loc_200cdc
loc_200cd6:
	add.w d1,$c(a0)
	rts
loc_200cdc:
	tst.b $38(a0)
	bne.s loc_200cd6
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200cf6:
	rts
	.incbin 3320, 34
loc_200d1a:
	rts
	.incbin 3356, 68

sub_200d60:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d6e
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d6e:
	btst.l #$0,d2
	bne.s loc_200d7a
	move.b d2,$26(a0)
	rts
loc_200d7a:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d8c:
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
	bsr.w sub_2012c4
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
	bsr.w sub_2012c4
	move.w (a7)+,d0
	bsr.w sub_200d60
	tst.w d1
	beq.s loc_200e00
	bpl.s loc_200e02
	cmpi.w #$fff2,d1
	blt.w loc_200d1a
	add.w d1,$8(a0)
loc_200e00:
	rts
loc_200e02:
	cmpi.w #$e,d1
	bgt.s loc_200e0e
loc_200e08:
	add.w d1,$8(a0)
	rts
loc_200e0e:
	tst.b $38(a0)
	bne.s loc_200e08
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e28:
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
	bsr.w sub_201154
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
	bsr.w sub_201154
	move.w (a7)+,d0
	bsr.w sub_200d60
	tst.w d1
	beq.s loc_200ea2
	bpl.s loc_200ea4
	cmpi.w #$fff2,d1
	blt.w loc_200cf6
	sub.w d1,$c(a0)
loc_200ea2:
	rts
loc_200ea4:
	cmpi.w #$e,d1
	bgt.s loc_200eb0
loc_200eaa:
	sub.w d1,$c(a0)
	rts
loc_200eb0:
	tst.b $38(a0)
	bne.s loc_200eaa
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200eca:
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
	bsr.w sub_2012c4
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
	bsr.w sub_2012c4
	move.w (a7)+,d0
	bsr.w sub_200d60
	tst.w d1
	beq.s loc_200f44
	bpl.s loc_200f46
	cmpi.w #$fff2,d1
	blt.w loc_200d1a
	sub.w d1,$8(a0)
loc_200f44:
	rts
loc_200f46:
	cmpi.w #$e,d1
	bgt.s loc_200f52
loc_200f4c:
	sub.w d1,$8(a0)
	rts
loc_200f52:
	tst.b $38(a0)
	bne.s loc_200f4c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f6c:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f82
	andi.w #$380,d0
loc_200f82:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200fe2
	bmi.s loc_200fe6
	cmpi.b #$5,($ff1506).l
	beq.s loc_200fb2
	cmpi.b #$6,($ff1506).l
	bne.s loc_200fb8
loc_200fb2:
	andi.w #$7fff,$2(a0)
loc_200fb8:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fc8
	bclr.b #$6,$1(a0)
loc_200fc8:
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
loc_200fe2:
	movea.l d1,a1
	rts
loc_200fe6:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_20104e
	btst.b #$6,$1(a0)
	bne.s loc_201014
	cmpi.b #$14,d1
	bne.w loc_201138
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201138
loc_201014:
	cmpi.b #$15,d1
	bne.s loc_201022
	move.w #$60,d1
	bra.w loc_201138
loc_201022:
	cmpi.b #$1e,d1
	bne.s loc_201030
	move.w #$61,d1
	bra.w loc_201138
loc_201030:
	cmpi.b #$1f,d1
	bne.s loc_20103e
	move.w #$62,d1
	bra.w loc_201138
loc_20103e:
	cmpi.b #$32,d1
	bne.w loc_201138
	move.w #$63,d1
	bra.w loc_201138
loc_20104e:
	cmpi.b #$5,($ff1506).l
	bne.w loc_2010b4
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_20109e
	cmpi.b #$6,d1
	beq.s loc_20109e
	tst.b ($ff1956).l
	beq.w loc_201138
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_2010ae
	cmpi.b #$3c,d1
	beq.s loc_2010ae
	cmpi.b #$37,d1
	beq.s loc_2010ae
	cmpi.b #$2f,d1
	beq.s loc_2010ae
	cmpi.b #$16,d1
	beq.s loc_2010ae
	bra.w loc_201138
loc_20109e:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201138
loc_2010ae:
	addq.b #$1,d1
	bra.w loc_201138
loc_2010b4:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201124
	cmpi.b #$3,$0(a0)
	bcc.w loc_201138
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201138
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2010e8
	move.w #$6a,d1
	bra.s loc_201138
loc_2010e8:
	cmpi.b #$48,d1
	bne.s loc_2010f4
	move.w #$6b,d1
	bra.s loc_201138
loc_2010f4:
	cmpi.b #$4a,d1
	bne.s loc_201100
	move.w #$6c,d1
	bra.s loc_201138
loc_201100:
	cmpi.b #$10,d1
	bne.s loc_20110c
	move.w #$6d,d1
	bra.s loc_201138
loc_20110c:
	cmpi.b #$63,d1
	bne.s loc_201118
	move.w #$6e,d1
	bra.s loc_201138
loc_201118:
	cmpi.b #$43,d1
	bne.s loc_201138
	move.w #$6f,d1
	bra.s loc_201138
loc_201124:
	btst.b #$6,$1(a0)
	beq.s loc_201138
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201138
	move.w #$51,d1
loc_201138:
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

sub_201154:
	bsr.w sub_200f6c
	cmpi.l #$210000,d1
	beq.s loc_20116e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20116e
	btst.l d5,d4
	bne.s loc_20117c
loc_20116e:
	add.w a3,d2
	bsr.w sub_201214
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_20117c:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20116e
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011a2
	not.w d1
	neg.b (a4)
loc_2011a2:
	btst.l #$c,d4
	beq.s loc_2011b2
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011b2:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011ce
	neg.w d0
loc_2011ce:
	tst.w d0
	beq.s loc_20116e
	bmi.s loc_2011ea
	cmpi.b #$10,d0
	beq.s loc_201206
loc_2011da:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011ea:
	cmpa.w #$10,a3
	bne.s loc_2011fa
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011da
loc_2011fa:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20116e
loc_201206:
	sub.w a3,d2
	bsr.w sub_201214
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201214:
	bsr.w sub_200f6c
	cmpi.l #$210000,d1
	beq.s loc_20122e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20122e
	btst.l d5,d4
	bne.s loc_20123c
loc_20122e:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20123c:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20122e
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201262
	not.w d1
	neg.b (a4)
loc_201262:
	btst.l #$c,d4
	beq.s loc_201272
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201272:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20128e
	neg.w d0
loc_20128e:
	tst.w d0
	beq.s loc_20122e
	bmi.s loc_2012a4
loc_201294:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012a4:
	cmpa.w #$10,a3
	bne.s loc_2012b4
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201294
loc_2012b4:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20122e
	not.w d1
	rts

sub_2012c4:
	bsr.w sub_200f6c
	cmpi.l #$210000,d1
	beq.s loc_2012de
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012de
	btst.l d5,d4
	bne.s loc_2012ec
loc_2012de:
	add.w a3,d3
	bsr.w sub_201374
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2012ec:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012de
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20131a
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20131a:
	btst.l #$b,d4
	beq.s loc_201322
	neg.b (a4)
loc_201322:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20133e
	neg.w d0
loc_20133e:
	tst.w d0
	beq.s loc_2012de
	bmi.s loc_20135a
	cmpi.b #$10,d0
	beq.s loc_201366
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20135a:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012de
loc_201366:
	sub.w a3,d3
	bsr.w sub_201374
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201374:
	bsr.w sub_200f6c
	cmpi.l #$210000,d1
	beq.s loc_20138e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20138e
	btst.l d5,d4
	bne.s loc_20139c
loc_20138e:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20139c:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20138e
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2013ca
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2013ca:
	btst.l #$b,d4
	beq.s loc_2013d2
	neg.b (a4)
loc_2013d2:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2013ee
	neg.w d0
loc_2013ee:
	tst.w d0
	beq.s loc_20138e
	bmi.s loc_201404
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201404:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20138e
	not.w d1
	rts

sub_201414:
	rts
	.incbin 5142, 152
loc_2014ae:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2014ce
	tst.b ($ff0f01).l
	bne.s loc_2014ce
	move.b #$1,($ff156a).l
loc_2014ce:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201534
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20768e
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201534
	move.b #$1,($ff1508).l
loc_201534:
	bset.b #$7,($f600).w
	bsr.w sub_202522
	tst.b ($ff156e).l
	bne.s loc_20155a
	btst.b #$7,($ff152e).l
	beq.s loc_201590
	bset.b #$0,($ff151d).l
	beq.s loc_201566
loc_20155a:
	bsr.w sub_200428
	bclr.b #$0,($ff151d).l
loc_201566:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201600
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_20158e
	bclr.b #$7,($ff152e).l
loc_20158e:
	rts
loc_201590:
	bset.b #$0,($ff151d).l
	beq.s loc_20159e
	bsr.w sub_2002fc
loc_20159e:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2015ba
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015e2
loc_2015ba:
	tst.b ($ff1508).l
	bne.s loc_201600
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015e2:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015ea:
	move.l #$0,(a1)+
	dbf d6,loc_2015ea
	move.b #$c,($f62a).w
	bsr.w sub_2007f2
	rts
loc_201600:
	cmpi.w #$800,($f78e).w
	bne.s loc_20161e
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20161e:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201634
	btst.b #$7,($ff152e).l
	beq.s loc_20163a
loc_201634:
	move.l #$eee0eee,d0
loc_20163a:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201642:
	move.l d0,(a1)+
	dbf d6,loc_201642
loc_201648:
	move.b #$c,($f62a).w
	bsr.w sub_2007f2
	bsr.w sub_202530
	bne.s loc_201648
	tst.l ($f680).w
	bsr.w sub_201aee
	moveq #$0,d0
	lea (dat_20fedc).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201672
	bsr.w sub_202636
loc_201672:
	moveq #$1,d0
	bsr.w sub_202636
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20168e:
	move.l d0,(a1)+
	dbf d1,loc_20168e
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2016a0:
	move.l d0,(a1)+
	dbf d1,loc_2016a0
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2016b0:
	move.l d0,(a1)+
	dbf d1,loc_2016b0
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_2016c2:
	move.l d0,(a1)+
	dbf d1,loc_2016c2
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2016d2:
	move.l d0,(a1)+
	dbf d1,loc_2016d2
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2016e2:
	move.l d0,(a1)+
	dbf d1,loc_2016e2
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20220c
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
	bsr.w sub_200620
	moveq #$3,d0
	bsr.w sub_200604
	bsr.w sub_202886
	bsr.w sub_202994
	bset.b #$2,($f754).w
	bsr.w sub_203396
	bsr.w sub_20329c
	jsr (sub_201414).l
	bsr.w sub_201a28
loc_201762:
	move.b #$c,($f62a).w
	bsr.w sub_2007f2
	bsr.w sub_202530
	bne.s loc_201762
	tst.l ($f680).w
	bne.s loc_201762
	bsr.w sub_2019b4
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b4e
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2017c6
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2017c6:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201808
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201808:
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
	jsr (sub_20fd68).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201898
loc_201892:
	bsr.w sub_20037a
	bra.s loc_2018a6
loc_201898:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201892
	bsr.w sub_20025a
loc_2018a6:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2018b4:
	move.b #$8,($f62a).w
	bsr.w sub_2007f2
	tst.b ($f7cc).w
	bne.s loc_2018d2
	btst.b #$7,($f605).w
	beq.s loc_2018d2
	eori.b #$1,($f63a).w
loc_2018d2:
	btst.b #$0,($f63a).w
	beq.w loc_201944
	bsr.w sub_201bb2
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201922
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2018b4
	subq.b #$1,($ff1508).l
	bpl.s loc_201904
	clr.b ($ff1508).l
loc_201904:
	move.w #$e,d0
	jsr (sub_205dc6).l
	bsr.w sub_20768e
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201930
loc_201922:
	andi.b #$70,d0
	beq.w loc_2018b4
	clr.b ($ff1508).l
loc_201930:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2014ae
loc_201944:
	bsr.w sub_201bf8
	addq.w #$1,($ff1504).l
	jsr (sub_2076a4).l
	jsr (sub_20379c).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2014ae
	tst.w ($ff1502).l
	bne.w loc_2014ae
	tst.w ($ff1906).l
	bne.s loc_20198c
	cmpi.b #$6,($d024).w
	bcs.s loc_20198c
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201990
loc_20198c:
	bsr.w sub_202994
loc_201990:
	jsr (sub_203946).l
	tst.w ($ff190e).l
	bne.s loc_2019a2
	bsr.w sub_200184
loc_2019a2:
	jsr (sub_20c672).l
	bsr.w sub_202530
	bsr.w sub_201a5a
	bra.w loc_2018b4

sub_2019b4:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2019cc
	move.w #$78,$30(a1)
loc_2019cc:
	rts
	.incbin 6606, 90

sub_201a28:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a3a(pc,d0.w),($f796).w
	rts
dat_201a3a:
	.incbin 6714, 32

sub_201a5a:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a78
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a78:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a96
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a96:
	subq.b #$1,($ff1914).l
	bpl.s loc_201abe
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201abe
	move.b #$0,($ff1915).l
loc_201abe:
	tst.b ($ff1916).l
	beq.s loc_201aec
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201aec:
	rts

sub_201aee:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b10
	cmpi.b #$2,d0
	bne.s loc_201b10
	add.b ($ff156a).l,d0
loc_201b10:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b28(pc,d1.w),d0
	jmp (sub_205dc6).l
dat_201b28:
	.incbin 6952, 38

sub_201b4e:
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

sub_201bb2:
	move.w #$ab,d0
	jsr (sub_2022fa).l
	bset.b #$7,($f63a).w
	bne.s loc_201bf6
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201bdc
loc_201bd2:
	move.w #$d5,d0
	jmp (sub_205dc6).l
loc_201bdc:
	tst.b ($ff151f).l
	bne.s loc_201bd2
	tst.b ($ff1520).l
	bne.s loc_201bd2
	move.w #$90,d0
	jmp (sub_205dc6).l
loc_201bf6:
	rts

sub_201bf8:
	bclr.b #$7,($f63a).w
	beq.s loc_201c32
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c18
loc_201c0e:
	move.w #$d6,d0
	jmp (sub_205dc6).l
loc_201c18:
	tst.b ($ff151f).l
	bne.s loc_201c0e
	tst.b ($ff1520).l
	bne.s loc_201c0e
	move.w #$91,d0
	jmp (sub_205dc6).l
loc_201c32:
	rts
loc_201c34:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201cc0
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c70
	move.w #$700,d0
loc_201c6c:
	dbf d0,loc_201c6c
loc_201c70:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201ca6(pc,d0.w),d0
	jsr dat_201ca6(pc,d0.w)
loc_201c86:
	jsr (sub_20231e).l
	tst.b ($f63a).w
	bne.s loc_201c9a
	bsr.w sub_2020d2
	bsr.w sub_2020c0
loc_201c9a:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201ca6:
	.incbin 7334, 26
loc_201cc0:
	tst.b ($ff1957).l
	beq.w loc_201c86
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c86
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201cee
	move.w #$700,d0
loc_201cea:
	dbf d0,loc_201cea
loc_201cee:
	move.w #$1,($f6fc).w
	jsr (sub_202292).l
	tst.b ($f64e).w
	bne.s loc_201d26
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d4a
loc_201d26:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d4a:
	move.w ($f624).w,(a5)
	jsr (sub_2022ae).l
	bra.w loc_201c86
	.incbin 7512, 60
	jsr (sub_202292).l
	bsr.w sub_20212e
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
	bsr.w sub_205cf2
	tst.b ($f767).w
	beq.s loc_201e42
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e42:
	jsr (sub_20fd68).l
	jsr (sub_2022ae).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e92
	bsr.w sub_2025a2
	jmp (loc_20aea2).l
	dc.b $4e,$75
	jsr (sub_202292).l
	bsr.w sub_20212e
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
	jsr (sub_2022ae).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e92
	bra.w loc_202586
	.incbin 7962, 16
	bsr.w sub_202016
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f4c
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f4c:
	move.w ($f624).w,(a5)
	bra.w loc_202586
	dc.b $4e,$b9,$00,$20,$22,$92,$61,$00
	dc.b $01,$d2
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
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
	jsr (sub_2022ae).l
	lea ($d000).w,a0
	bsr.w sub_205cf2
	tst.b ($f767).w
	beq.s loc_202008
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202008:
	tst.w ($f614).w
	beq.w loc_202014
	subq.w #$1,($f614).w
loc_202014:
	rts

sub_202016:
	jsr (sub_202292).l
	bsr.w sub_20212e
	tst.b ($f64e).w
	bne.s loc_20204c
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202070
loc_20204c:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202070:
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
	jmp (sub_2022ae).l
	dc.b $4e,$73

sub_2020c0:
	tst.b ($d02a).w
	bne.s loc_2020d0
	tst.w ($f786).w
	beq.s loc_2020d0
	addq.w #$1,($f786).w
loc_2020d0:
	rts

sub_2020d2:
	tst.w ($f780).w
	beq.s loc_2020dc
	addq.w #$1,($f780).w
loc_2020dc:
	tst.w ($f782).w
	beq.s loc_2020e6
	addq.w #$1,($f782).w
loc_2020e6:
	rts
	.incbin 8424, 42

sub_202112:
	bsr.w sub_202292
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2022ae

sub_20212e:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20213c
	addq.w #$2,a1

sub_20213c:
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

sub_20216a:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2021e6).l,a2
	moveq #$12,d7
loc_20217e:
	move.w (a2)+,(a0)
	dbf d7,loc_20217e
	move.w (dat_2021e8).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2021a4:
	move.w d0,(a1)
	dbf d7,loc_2021a4
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2021d6:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021d6
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2021e6:
	dc.b $80,$04
dat_2021e8:
	.incbin 8680, 36

sub_20220c:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20222e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20222e
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20225c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20225c
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_20227a:
	move.l d0,(a1)+
	dbf d1,loc_20227a
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_20228a:
	move.l d0,(a1)+
	dbf d1,loc_20228a
	rts

sub_202292:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022a2:
	btst.b #$0,($a11100).l
	bne.s loc_2022a2
	rts

sub_2022ae:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8892, 62

sub_2022fa:
	tst.b ($f00a).w
	bne.s loc_202306
	move.b d0,($f00a).w
	rts
loc_202306:
	tst.b ($f00b).w
	bne.s loc_202312
	move.b d0,($f00b).w
	rts
loc_202312:
	tst.b ($f00c).w
	bne.s loc_20231c
	move.b d0,($f00c).w
loc_20231c:
	rts

sub_20231e:
	jsr (sub_202292).l
	tst.b ($f00a).w
	beq.s loc_202338
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202338:
	tst.b ($f00b).w
	beq.s loc_20234c
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20234c:
	tst.b ($f00c).w
	beq.s loc_202360
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202360:
	bra.w sub_2022ae
	.incbin 9060, 32

sub_202384:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202446).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023a0

sub_202396:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20245c).l,a3
loc_2023a0:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2023ae
	adda.w #$a,a3
loc_2023ae:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202472
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2023ce
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2023ce:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20241a
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2023f6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023f6:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202404:
	lsr.w #$4,d0
loc_202406:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202414
	jmp (a3)

sub_202410:
	moveq #$0,d4
	moveq #$8,d3
loc_202414:
	dbf d0,loc_202406
	bra.s sub_2023ce
loc_20241a:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202428
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202428:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202404
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202404
loc_202446:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202410
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202410
	rts
dat_20245c:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202410
	rts

sub_202472:
	move.b (a0)+,d0
loc_202474:
	cmpi.b #$ff,d0
	bne.s loc_20247c
	rts
loc_20247c:
	move.w d0,d7
loc_20247e:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202474
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
	bne.s loc_2024ac
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_20247e
loc_2024ac:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2024b8:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2024b8
	bra.s loc_20247e

sub_2024c4:
	movem.l a1-a2,-(a7)
	lea (dat_20feec).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2024dc:
	tst.l (a2)
	beq.s loc_2024e4
	addq.w #$6,a2
	bra.s loc_2024dc
loc_2024e4:
	move.w (a1)+,d0
	bmi.s loc_2024f0
loc_2024e8:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2024e8
loc_2024f0:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9462, 44

sub_202522:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202528:
	clr.l (a2)+
	dbf d0,loc_202528
	rts

sub_202530:
	tst.l ($f680).w
	beq.s loc_202584
	tst.w ($f6f8).w
	bne.s loc_202584
	movea.l ($f680).w,a0
	lea (loc_202446).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202552
	adda.w #$a,a3
loc_202552:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202472
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
loc_202584:
	rts
loc_202586:
	tst.w ($f6f8).w
	beq.w loc_202624
loc_20258e:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2025c0

sub_2025a2:
	tst.w ($f6f8).w
	beq.s loc_202624
	tst.b ($f744).w
	bne.s loc_20258e
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2025c0:
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
loc_2025f4:
	movea.w #$8,a5
	bsr.w sub_202410
	subq.w #$1,($f6f8).w
	beq.s loc_202626
	subq.w #$1,($f6fa).w
	bne.s loc_2025f4
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202624:
	rts
loc_202626:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20262c:
	move.l $6(a0),(a0)+
	dbf d0,loc_20262c
	rts

sub_202636:
	lea (dat_20feec).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202648:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202384
	dbf d1,loc_202648
	rts
	.incbin 9832, 542

sub_202886:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2028e2).l,a0
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
	bra.w loc_2028ee
dat_2028e2:
	dc.b $00,$04,$00,$00,$23,$97,$00,$00
	dc.b $07,$10,$00,$60
loc_2028ee:
	tst.b ($ff1522).l
	beq.s loc_20290e
	jsr (sub_206950).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_20290c
	moveq #$0,d0
loc_20290c:
	bra.s loc_202924
loc_20290e:
	lea (dat_202960).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202924:
	subi.w #$a0,d1
	bcc.s loc_20292c
	moveq #$0,d1
loc_20292c:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202936
	move.w d2,d1
loc_202936:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202942
	moveq #$0,d0
loc_202942:
	cmp.w ($f72e).w,d0
	blt.s loc_20294c
	move.w ($f72e).w,d0
loc_20294c:
	move.w d0,($f704).w
	bsr.w sub_202968
	lea (dat_202964).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202960:
	dc.b $00,$30,$01,$9c
dat_202964:
	dc.b $7f,$7f,$7f,$7f

sub_202968:
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

sub_202994:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2029a0
	rts
loc_2029a0:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b08
	bsr.w sub_202ba8
	bsr.w sub_203430
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202e32
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202dfe
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202dca
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202d9a
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
	bsr.w sub_202a80
	move.w ($f718).w,d0
	neg.w d0
	moveq #$17,d6
loc_202a44:
	move.w d0,(a1)+
	dbf d6,loc_202a44
	move.w ($f710).w,d0
	neg.w d0
	moveq #$2d,d6
loc_202a52:
	move.w d0,(a1)+
	dbf d6,loc_202a52
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202ac6
dat_202a76:
	dc.b $05,$03,$02,$02,$01,$01,$01,$01
	dc.b $01,$00

sub_202a80:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$0,d3
	move.w ($f708).w,d4
	moveq #$8,d6
	adda.w #$34,a1
loc_202a98:
	move.b d3,d0
	jsr (sub_2007fe).l
	move.w #$100,d5
	sub.w d1,d5
	muls.w d2,d5
	lsr.l #$8,d5
	add.w d4,d5
	neg.w d5
	moveq #$0,d1
	move.b dat_202a76(pc,d6.w),d1
loc_202ab4:
	move.w d5,-(a1)
	dbf d1,loc_202ab4
	addq.b #$6,d3
	dbf d6,loc_202a98
	adda.w #$34,a1
	rts
loc_202ac6:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202ad4(pc,d2.w)
loc_202ad2:
	move.w (a2)+,d0
loc_202ad4:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202ad2
	rts
	.incbin 10986, 30

sub_202b08:
	move.w ($f700).w,d4
	bsr.s sub_202b3c
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b3a
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b34
	bset.b #$2,($f754).w
	rts
loc_202b34:
	bset.b #$3,($f754).w
loc_202b3a:
	rts

sub_202b3c:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b4e
	bcs.s loc_202b7e
	bra.s loc_202b54
loc_202b4e:
	clr.w ($f73a).w
	rts
loc_202b54:
	cmpi.w #$10,d0
	blt.s loc_202b5e
	move.w #$10,d0
loc_202b5e:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b6c
	move.w ($f72a).w,d0
loc_202b6c:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b7e:
	cmpi.w #$fff0,d0
	bge.s loc_202b88
	move.w #$fff0,d0
loc_202b88:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b6c
	move.w ($f728).w,d0
	bra.s loc_202b6c
	.incbin 11160, 16

sub_202ba8:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202bbc
	subq.w #$5,d0
loc_202bbc:
	btst.b #$1,$22(a6)
	beq.s loc_202bdc
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c28
	subi.w #$40,d0
	bcc.s loc_202c28
	tst.b ($f75c).w
	bne.s loc_202c3a
	bra.s loc_202be8
loc_202bdc:
	sub.w ($f73e).w,d0
	bne.s loc_202bee
	tst.b ($f75c).w
	bne.s loc_202c3a
loc_202be8:
	clr.w ($f73c).w
	rts
loc_202bee:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c16
	move.w $14(a6),d1
	bpl.s loc_202bfe
	neg.w d1
loc_202bfe:
	cmpi.w #$800,d1
	bcc.s loc_202c28
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c88
	cmpi.w #$fffa,d0
	blt.s loc_202c52
	bra.s loc_202c40
loc_202c16:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c88
	cmpi.w #$fffe,d0
	blt.s loc_202c52
	bra.s loc_202c40
loc_202c28:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c88
	cmpi.w #$fff0,d0
	blt.s loc_202c52
	bra.s loc_202c40
loc_202c3a:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c40:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c92
	bra.w loc_202c5e
loc_202c52:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c5e:
	cmp.w ($f72c).w,d1
	bgt.s loc_202cb6
	cmpi.w #$ff00,d1
	bgt.s loc_202c82
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202cb6
loc_202c82:
	move.w ($f72c).w,d1
	bra.s loc_202cb6
loc_202c88:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c92:
	cmp.w ($f72e).w,d1
	blt.s loc_202cb6
	subi.w #$800,d1
	bcs.s loc_202cb2
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202cb6
loc_202cb2:
	move.w ($f72e).w,d1
loc_202cb6:
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
	bne.s loc_202cf8
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202cf2
	bset.b #$0,($f754).w
	rts
loc_202cf2:
	bset.b #$1,($f754).w
loc_202cf8:
	rts
	.incbin 11514, 160

sub_202d9a:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202dc8
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202dc2
	bset.b #$0,($f756).w
	rts
loc_202dc2:
	bset.b #$1,($f756).w
loc_202dc8:
	rts

sub_202dca:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202dfc
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202df6
	bset.b d6,($f756).w
	bra.s loc_202dfc
loc_202df6:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202dfc:
	rts

sub_202dfe:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e30
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e2a
	bset.b d6,($f758).w
	bra.s loc_202e30
loc_202e2a:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e30:
	rts

sub_202e32:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e64
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e5e
	bset.b d6,($f75a).w
	bra.s loc_202e64
loc_202e5e:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e64:
	rts
	.incbin 11878, 44

sub_202e92:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f50
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203036
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203038
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f4e
	bclr.b #$0,(a2)
	beq.s loc_202f04
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203264
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20303a
loc_202f04:
	bclr.b #$1,(a2)
	beq.s loc_202f1e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203264
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20303a
loc_202f1e:
	bclr.b #$2,(a2)
	beq.s loc_202f34
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203264
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203090
loc_202f34:
	bclr.b #$3,(a2)
	beq.s loc_202f4e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203264
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203090
loc_202f4e:
	rts

sub_202f50:
	lea (dat_20331c).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f6c
	bclr.b #$1,(a2)
	beq.s loc_202fb6
	move.w #$e0,d4
loc_202f6c:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202fe6(pc,d0.w),a3
	beq.s loc_202f9e
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203264
	movem.l (a7)+,d4-d5
	bsr.w sub_20303a
	movea.l (a7)+,a0
	bra.s loc_202fb6
loc_202f9e:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203266
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203066
	movea.l (a7)+,a0
loc_202fb6:
	tst.b (a2)
	bne.s loc_202fbc
	rts
loc_202fbc:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202fd0
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202fd0:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202ff6
dat_202fe6:
	.incbin 12262, 16
loc_202ff6:
	moveq #$f,d6
	move.l #$800000,d7
loc_202ffe:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20302a
	btst.b d0,(a2)
	beq.s loc_20302a
	add.w d0,d0
	movea.l dat_202fe6(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20313c
	movem.l (a7)+,d4-d5
	bsr.w sub_203264
	bsr.w sub_2030be
	movem.l (a7)+,d4-d5/a0
loc_20302a:
	addi.w #$10,d4
	dbf d6,loc_202ffe
	clr.b (a2)
	rts

sub_203036:
	rts

sub_203038:
	rts

sub_20303a:
	moveq #$15,d6

sub_20303c:
	move.l #$800000,d7
	move.l d0,d1
loc_203044:
	movem.l d4-d5,-(a7)
	bsr.w sub_20313c
	move.l d1,d0
	bsr.w sub_2030be
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203044
	rts

sub_203066:
	move.l #$800000,d7
	move.l d0,d1
loc_20306e:
	movem.l d4-d5,-(a7)
	bsr.w sub_20313e
	move.l d1,d0
	bsr.w sub_2030be
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20306e
	rts

sub_203090:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20309a:
	movem.l d4-d5,-(a7)
	bsr.w sub_20313c
	move.l d1,d0
	bsr.w sub_2030be
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20309a
	rts

sub_2030be:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2030fa
	btst.b #$3,(a0)
	bne.s loc_2030da
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2030da:
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
loc_2030fa:
	btst.b #$3,(a0)
	bne.s loc_20311c
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
loc_20311c:
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

sub_20313c:
	add.w (a3),d5

sub_20313e:
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
	beq.s loc_20318c
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
loc_20318c:
	rts
	.incbin 12686, 214

sub_203264:
	add.w (a3),d5

sub_203266:
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
	.incbin 12928, 28

sub_20329c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2032c6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032ee

sub_2032c6:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032ca:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203264
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20303c
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2032ca
	rts
loc_2032ee:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032f2:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20331c).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20335e
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2032f2
	rts
dat_20331c:
	.incbin 13084, 50
dat_20334e:
	.incbin 13134, 16

sub_20335e:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20334e(pc,d0.w),a3
	beq.s loc_203380
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203264
	movem.l (a7)+,d4-d5
	bsr.w sub_20303a
	bra.s loc_203394
loc_203380:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203266
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203066
loc_203394:
	rts

sub_203396:
	moveq #$0,d0
	lea (dat_20fedc).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202396
	movea.l (a2)+,a0
	bsr.w sub_2033e2
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200604
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2033e0
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033e0
	bsr.w sub_2024c4
loc_2033e0:
	rts

sub_2033e2:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033ec:
	move.l d0,(a3)+
	dbf d1,loc_2033ec
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203402
	lea ($a040).w,a3
	moveq #$2,d1

sub_203402:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_236b7a).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20341c:
	move.w d1,d0
	movea.l a3,a0
loc_203420:
	move.b (a1)+,(a0)+
	dbf d0,loc_203420
	lea $80(a3),a3
	dbf d2,loc_20341c
	rts

sub_203430:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2034aa(pc,d0.w),d0
	jsr dat_2034aa(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203456
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203456:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203484
	bcc.s loc_203486
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20347a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20347a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203484:
	rts
loc_203486:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20349e
	btst.b #$1,($d022).w
	beq.s loc_20349e
	add.w d1,d1
	add.w d1,d1
loc_20349e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2034aa:
	.incbin 13482, 224
	btst.b #$4,($f7a7).w
	bne.s loc_20359a
	move.w #$710,($f726).w
	rts
loc_20359a:
	move.w #$ba0,d0
	move.w #$1d0,d1
	bsr.w sub_203756
	bne.w loc_2035e6
	lea ($d000).w,a1
	cmpi.w #$298,$c(a1)
	ble.s loc_2035ca
	cmpi.w #$498,$c(a1)
	ble.s loc_2035c4
	move.w #$5d0,d0
	bra.s loc_2035ce
loc_2035c4:
	move.w #$3d0,d0
	bra.s loc_2035ce
loc_2035ca:
	move.w #$1d0,d0
loc_2035ce:
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d0
	bge.s loc_2035dc
	neg.w d0
loc_2035dc:
	cmpi.w #$2,d0
	bgt.s loc_2035e6
	move.w d1,($f72e).w
loc_2035e6:
	rts
	.incbin 13800, 366

sub_203756:
	cmp.w ($d008).w,d0
	ble.s loc_203760
	moveq #$0,d0
	rts
loc_203760:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_20376c
	neg.w d1
loc_20376c:
	cmpi.w #$4,d1
	bge.s loc_203778
	move.w ($f726).w,($f72e).w
loc_203778:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_203798
	cmp.w ($f72a).w,d0
	ble.s loc_203790
	move.w ($f72a).w,d0
loc_203790:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_203798:
	moveq #$1,d0
	rts

sub_20379c:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2037a4:
	move.b (a0),d0
	beq.s loc_2037ba
	add.w d0,d0
	add.w d0,d0
	lea (dat_203bbe).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2037ba:
	lea $40(a0),a0
	dbf d7,loc_2037a4
	rts

sub_2037c4:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203802
	bpl.s loc_2037f4
	btst.b #$1,$2c(a0)
	beq.s loc_2037f4
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203802
loc_2037f4:
	btst.b #$2,$2c(a0)
	bne.s loc_203802
	addi.w #$38,$12(a0)
loc_203802:
	tst.w $12(a0)
	bmi.s loc_203816
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203816
	move.w #$1000,$12(a0)
loc_203816:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203826:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203862
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203862
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203860
	neg.w d1
loc_203860:
	add.w d1,d0
loc_203862:
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

sub_20387c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038ec
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203908
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203908
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2038c6
	cmpi.w #$800,d3
	bcs.s loc_2038d8
	subi.w #$800,d3
	bra.s loc_2038d8
loc_2038c6:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038d8
	cmpi.w #$100,d3
	bcc.s loc_2038d8
	addi.w #$800,d3
loc_2038d8:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203908
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203908
loc_2038ec:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203908
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203908:
	rts
	.incbin 14602, 30

sub_203928:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_20392e:
	move.l d1,(a1)+
	dbf d0,loc_20392e
	rts
dat_203936:
	.incbin 14646, 16

sub_203946:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203952:
	tst.w (a4)
	beq.w loc_203a12
	moveq #$2,d6
loc_20395a:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a0a
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2039c0
	movea.l dat_203936(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_2039a4
	cmpi.w #$800,d2
	bcs.s loc_2039b6
	subi.w #$800,d2
	bra.s loc_2039b6
loc_2039a4:
	cmpi.w #$700,$4(a1)
	bcs.s loc_2039b6
	cmpi.w #$100,d2
	bcc.s loc_2039b6
	addi.w #$800,d2
loc_2039b6:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039e2
loc_2039c0:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039e2
	.incbin 14794, 24
loc_2039e2:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a00
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a04
loc_203a00:
	bsr.w sub_203a34
loc_203a04:
	bset.b #$7,$1(a0)
loc_203a0a:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_20395a
loc_203a12:
	lea $80(a4),a4
	dbf d7,loc_203952
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a2c
	move.l #$0,(a2)
	rts
loc_203a2c:
	move.b #$0,-$5(a2)
	rts

sub_203a34:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a7a
	btst.l #$1,d4
	bne.w loc_203ac8
loc_203a46:
	cmpi.b #$50,d5
	beq.s loc_203a78
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
	bne.s loc_203a72
	addq.w #$1,d0
loc_203a72:
	move.w d0,(a2)+
	dbf d1,loc_203a46
loc_203a78:
	rts
loc_203a7a:
	btst.l #$1,d4
	bne.w loc_203b0e
loc_203a82:
	cmpi.b #$50,d5
	beq.s loc_203ac6
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
	bne.s loc_203ac0
	addq.w #$1,d0
loc_203ac0:
	move.w d0,(a2)+
	dbf d1,loc_203a82
loc_203ac6:
	rts
loc_203ac8:
	cmpi.b #$50,d5
	beq.s loc_203b0c
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
	bne.s loc_203b06
	addq.w #$1,d0
loc_203b06:
	move.w d0,(a2)+
	dbf d1,loc_203ac8
loc_203b0c:
	rts
loc_203b0e:
	cmpi.b #$50,d5
	beq.s loc_203b60
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
	bne.s loc_203b5a
	addq.w #$1,d0
loc_203b5a:
	move.w d0,(a2)+
	dbf d1,loc_203b0e
loc_203b60:
	rts
	.incbin 15202, 92
dat_203bbe:
	.incbin 15294, 246

sub_203cb4:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203cc6
	move.w #$0,(a1)
	rts
loc_203cc6:
	tst.w (a1)
	bne.s loc_203cd0
	move.b #$1,$1(a1)
loc_203cd0:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d1a
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d0c
	neg.w $10(a0)
loc_203d0c:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205dc6
loc_203d1a:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d38
	cmpa.w #$d040,a0
	beq.s loc_203d38
	tst.b ($ff1906).l
	beq.s loc_203d38
	jmp (loc_20727c).l
loc_203d38:
	move.b $2a(a0),d0
	beq.s loc_203d62
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d54
	cmpi.b #$2d,d0
	bcs.s loc_203d5e
	move.b #$2d,d0
	bra.s loc_203d5e
loc_203d54:
	cmpi.b #$1e,d0
	bcs.s loc_203d5e
	move.b #$1e,d0
loc_203d5e:
	move.b d0,$2a(a0)
loc_203d62:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d70(pc,d0.w),d1
	jmp dat_203d70(pc,d1.w)
dat_203d70:
	dc.b $00,$4c,$05,$34,$17,$ac,$18,$18
	dc.b $18,$a0
loc_203d7a:
	tst.b ($d300).w
	bne.s loc_203db8
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203db8:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203de0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203de0:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e14:
	tst.b ($ff1506).l
	bne.s loc_203e7a
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_203e7a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203ef4
	cmpi.b #$2f,d1
	bne.s loc_203e7c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e7a
	tst.b $2c(a0)
	beq.s loc_203e7a
	jsr (sub_2078a0).l
	bne.s loc_203e7a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e72
	moveq #$0,d0
loc_203e72:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e7a:
	rts
loc_203e7c:
	rts
	.incbin 15998, 118

sub_203ef4:
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

sub_203f1a:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f98
	cmpi.b #$4,$24(a0)
	bcc.s loc_203f98
	btst.b #$3,$2c(a0)
	bne.s loc_203f98
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	bne.s loc_203f98
	bset.b #$3,$2c(a0)
	move.w #$0,$10(a0)
	move.w #$fe00,d0
	tst.w $12(a0)
	bmi.s loc_203f64
	neg.w d0
loc_203f64:
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
loc_203f98:
	rts

sub_203f9a:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204036
	cmpi.b #$2,($ff1522).l
	beq.w loc_204036
	btst.b #$0,$2c(a0)
	bne.s loc_204036
	btst.b #$2,$2c(a0)
	bne.s loc_204036
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_204036
	move.w ($f786).w,d0
	beq.s loc_203ff8
	clr.w ($f786).w
	clr.b ($ff1521).l
	cmpi.w #$5a,d0
	bcs.s loc_203ff8
	clr.b ($f784).w
loc_203ff8:
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
loc_204036:
	rts

sub_204038:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204096
	cmpi.b #$4,$24(a0)
	bcc.s loc_204096
	tst.b ($ff1521).l
	bne.s loc_204096
	tst.b ($ff151f).l
	bne.s loc_204096
	tst.w $30(a0)
	bne.s loc_204096
	moveq #$0,d0
	move.b ($ff195a).l,d0
	beq.s loc_204096
	subq.b #$1,d0
	add.w d0,d0
	move.w dat_204098(pc,d0.w),d0
	lea dat_204098(pc,d0.w),a3
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
loc_20408a:
	move.w (a3)+,d1
	bmi.s loc_204096
	cmp.w d1,d0
	bne.s loc_20408a
	bra.w loc_20701e
loc_204096:
	rts
dat_204098:
	.incbin 16536, 32

sub_2040b8:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204172
	tst.b ($ff1521).l
	bne.w loc_204172
	tst.b ($ff151f).l
	bne.w loc_204172
	cmpi.w #$980,$8(a0)
	bcs.s loc_2040e8
	cmpi.w #$a20,$8(a0)
	bcs.w loc_204172
loc_2040e8:
	btst.b #$7,($f7a7).w
	bne.w loc_204172
	tst.w $30(a0)
	bne.s loc_204172
	cmpi.b #$2,($ff1507).l
	bne.s loc_20411c
	cmpi.w #$a10,$8(a0)
	bcs.s loc_204134
	tst.b ($ff1958).l
	beq.s loc_204172
	tst.b ($ff156a).l
	bne.s loc_20412e
	bra.s loc_204134
loc_20411c:
	cmpi.b #$2,($ff152e).l
	bne.s loc_204134
	tst.b ($ff156a).l
	beq.s loc_204134
loc_20412e:
	tst.b ($f668).w
	beq.s loc_204172
loc_204134:
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$2,d6
	lea (dat_204174).l,a1
	cmpi.b #$2,($ff152e).l
	bne.s loc_204168
	tst.b ($ff156a).l
	bne.s loc_204168
	lea (dat_20417a).l,a1
loc_204168:
	cmp.w (a1)+,d0
	beq.w loc_20701e
	dbf d6,loc_204168
loc_204172:
	rts
dat_204174:
	dc.b $02,$43,$02,$44,$02,$45
dat_20417a:
	dc.b $02,$87,$02,$88,$02,$89

sub_204180:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204250
	tst.b ($f7a7).w
	bne.w loc_204250
	cmpi.b #$2,($ff152e).l
	bcc.s loc_2041b4
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_2041ac
	addi.b #$1e,d0
loc_2041ac:
	cmp.b ($f7b3).w,d0
	beq.w loc_204250
loc_2041b4:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	beq.s loc_20420c
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	bne.s loc_204250
loc_20420c:
	move.w #$ea00,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	bset.b #$2,$22(a0)
	bne.s loc_204250
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
	move.b #$2,$1c(a0)
	move.w #$da,d0
	jsr (sub_2022fa).l
loc_204250:
	rts

sub_204252:
	rts
	.incbin 16980, 80
	bsr.s sub_204252
	bsr.w sub_203e14
	tst.w ($ff1588).l
	beq.s loc_2042c4
	btst.b #$4,($f605).w
	beq.s loc_2042c4
	move.b #$1,($ff1906).l
	rts
loc_2042c4:
	tst.b ($f7cc).w
	bne.s loc_2042d0
	move.w ($f604).w,($f602).w
loc_2042d0:
	btst.b #$0,$2c(a0)
	beq.s loc_2042de
	bsr.w sub_2044f8
	bra.s loc_204304
loc_2042de:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204334(pc,d0.w),d1
	jsr dat_204334(pc,d1.w)
	bsr.w sub_204180
	bsr.w sub_2040b8
	bsr.w sub_204038
	bsr.w sub_203f9a
	bsr.w sub_203f1a
loc_204304:
	bsr.s sub_204342
	bsr.w sub_204402
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	bsr.w sub_2057bc
	tst.b $2c(a0)
	bmi.s loc_20432e
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20432e
	jsr (sub_206e20).l
loc_20432e:
	bsr.w sub_205680
	rts
dat_204334:
	dc.b $02,$84,$02,$f2,$03,$46,$03,$74
	dc.b $81,$82,$83,$84,$85,$86

sub_204342:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204366
	move.w $30(a0),d0
	beq.s loc_204358
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204366
loc_204358:
	btst.b #$6,$2c(a0)
	bne.s loc_204366
	jsr (sub_20387c).l
loc_204366:
	tst.b ($ff151f).l
	beq.s loc_2043aa
	tst.w $32(a0)
	beq.s loc_2043aa
	subq.w #$1,$32(a0)
	bne.s loc_2043aa
	tst.b ($ff1520).l
	bne.s loc_2043a2
	tst.b ($ff1958).l
	bne.s loc_2043a2
	tst.b ($ff152e).l
	bne.s loc_20439c
	move.w #$e,d0
	jsr (sub_205dc6).l
loc_20439c:
	jsr (sub_201aee).l
loc_2043a2:
	move.b #$0,($ff151f).l
loc_2043aa:
	tst.b ($ff1520).l
	beq.s loc_204400
	tst.w $34(a0)
	beq.s loc_204400
	subq.w #$1,$34(a0)
	bne.s loc_204400
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2043f8
	tst.b ($ff1958).l
	bne.s loc_2043f8
	tst.b ($ff152e).l
	bne.s loc_2043f2
	move.w #$e,d0
	jsr (sub_205dc6).l
loc_2043f2:
	jsr (sub_201aee).l
loc_2043f8:
	move.b #$0,($ff1520).l
loc_204400:
	rts

sub_204402:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts
	dc.b $4e,$75

sub_20441e:
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
	bcs.s loc_2044f0
	move.l #$50000,d0
loc_2044f0:
	move.l d0,($ff1570).l
	rts

sub_2044f8:
	tst.b $2a(a0)
	bne.w loc_2045b6
	tst.b ($f784).w
	beq.w loc_2045b6
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204516
	neg.w d0
loc_204516:
	tst.w ($f786).w
	bne.s loc_204522
	move.w #$1,($f786).w
loc_204522:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204538
	move.b #$1,($ff1502).l
	bra.w loc_205dc2
loc_204538:
	cmpi.w #$d2,d1
	bcs.s loc_20458c
	cmpi.b #$2,($ff1522).l
	beq.s loc_20458a
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204562
	move.w #$82,d0
	jsr (sub_205dc6).l
	moveq #$0,d0
loc_204562:
	add.b ($f784).w,d0
	bpl.s loc_20456c
	moveq #$0,d0
	bra.s loc_204574
loc_20456c:
	cmpi.b #$3,d0
	bcs.s loc_204574
	moveq #$2,d0
loc_204574:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20441e
	move.b #$2,($ff1522).l
loc_20458a:
	rts
loc_20458c:
	cmpi.w #$5a,d1
	bcc.s loc_2045a4
	cmp.w d2,d0
	bcc.w loc_203d7a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2045a4:
	cmp.w d2,d0
	bcc.s loc_2045b6
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2045b6:
	rts
	tst.b ($f75f).w
	beq.s loc_2045ca
	cmpi.b #$5,$1c(a0)
	bne.s loc_204624
	clr.b ($f75f).w
loc_2045ca:
	bsr.w sub_203cb4
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045fa
	tst.b ($ff195b).l
	beq.s loc_2045e8
	cmpi.b #$79,$1a(a0)
	bne.s loc_204624
	bra.s loc_2045f0
loc_2045e8:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204624
loc_2045f0:
	bsr.w sub_204fb8
	jmp (sub_2037c4).l
loc_2045fa:
	bsr.w sub_20482e
	bsr.w sub_2044f8
	bsr.w sub_205096
	bsr.w sub_2051b0
	bsr.w sub_2048a4
	bsr.w sub_205024
	bsr.w sub_204fb8
	jsr (sub_203826).l
	bsr.w sub_200bfe
	bsr.w sub_20522e
loc_204624:
	rts
	tst.w $12(a0)
	bmi.s loc_20463a
	cmpi.b #$2c,$1c(a0)
	beq.s loc_20463a
	move.b #$0,$1c(a0)
loc_20463a:
	btst.b #$2,$2c(a0)
	beq.s loc_204648
	bsr.w sub_20479a
	bra.s loc_204674
loc_204648:
	bsr.w sub_20482e
	bsr.w sub_2044f8
	bsr.w sub_20517c
	bsr.w sub_204ee4
	bsr.w sub_204fb8
	jsr (sub_2037c4).l
	btst.b #$6,$22(a0)
	beq.s loc_204670
	subi.w #$28,$12(a0)
loc_204670:
	bsr.w sub_205270
loc_204674:
	bsr.w sub_205294
	rts
	bsr.w sub_20482e
	bsr.w sub_2044f8
	bsr.w sub_205096
	bsr.w sub_2051ec
	bsr.w sub_204d2c
	bsr.w sub_204fb8
	tst.b $2a(a0)
	bne.s loc_20469e
	jsr (sub_203826).l
loc_20469e:
	bsr.w sub_200bfe
	bsr.w sub_20522e
	rts
	btst.b #$3,$2c(a0)
	beq.s loc_2046ba
	bsr.w sub_2046fe
	bsr.w sub_2044f8
	bra.s loc_2046f8
loc_2046ba:
	btst.b #$2,$2c(a0)
	beq.s loc_2046cc
	bsr.w sub_20479a
	bsr.w sub_2044f8
	bra.s loc_2046f8
loc_2046cc:
	bsr.w sub_20482e
	bsr.w sub_2044f8
	bsr.w sub_20517c
	bsr.w sub_204ee4
	bsr.w sub_204fb8
	jsr (sub_2037c4).l
	btst.b #$6,$22(a0)
	beq.s loc_2046f4
	subi.w #$28,$12(a0)
loc_2046f4:
	bsr.w sub_205270
loc_2046f8:
	bsr.w sub_205294
	rts

sub_2046fe:
	btst.b #$4,$2c(a0)
	beq.s loc_204732
	move.b $2b(a0),d0
	andi.b #$7f,d0
	bne.s loc_204742
	move.w #$f400,$10(a0)
	tst.b $2b(a0)
	bmi.s loc_204720
	neg.w $10(a0)
loc_204720:
	andi.b #$7f,$2(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	rts
loc_204732:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204742
	bset.b #$4,$2c(a0)
loc_204742:
	addq.b #$8,$2b(a0)
	ori.w #$8000,$2(a0)
	move.b $2b(a0),d0
	bpl.s loc_204758
	andi.w #$7fff,$2(a0)
loc_204758:
	jsr (sub_2007fe).l
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
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	beq.s loc_204798
	neg.w $12(a0)
loc_204798:
	rts

sub_20479a:
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_2047c2
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047dc
loc_2047c2:
	bclr.b #$2,$2c(a0)
	addi.w #$10,$c(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	rts
loc_2047dc:
	moveq #$2,d0
	btst.b #$2,($f602).w
	beq.s loc_2047f6
	neg.w d0
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a0)
	bra.s loc_20480a
loc_2047f6:
	btst.b #$3,($f602).w
	beq.s loc_20482c
	bclr.b #$0,$22(a0)
	bclr.b #$0,$1(a0)
loc_20480a:
	add.w d0,$8(a0)
	subq.b #$1,$1f(a0)
	bpl.s loc_20482c
	move.b #$7,$1f(a0)
	addq.b #$1,$1b(a0)
	cmpi.b #$4,$1b(a0)
	bcs.s loc_20482c
	move.b #$0,$1b(a0)
loc_20482c:
	rts

sub_20482e:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20489a
	tst.w ($ff1506).l
	bne.s loc_20489a
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20489c).l,a2
loc_204862:
	move.b (a2)+,d0
	bmi.s loc_204872
	cmp.b d0,d1
	bne.s loc_204862
	bset.b #$1,$2c(a0)
	rts
loc_204872:
	bclr.b #$1,$2c(a0)
	beq.s loc_20489a
	tst.w $12(a0)
	bpl.s loc_20489a
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20489a
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20489a
	neg.w $10(a0)
loc_20489a:
	rts
dat_20489c:
	dc.b $06,$07,$08,$44,$45,$46,$49,$ff

sub_2048a4:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204bb6
	tst.w $3e(a0)
	bne.w loc_204b66
	btst.b #$2,($f602).w
	beq.s loc_2048cc
	bsr.w sub_204c46
loc_2048cc:
	btst.b #$3,($f602).w
	beq.s loc_2048d8
	bsr.w sub_204cbc
loc_2048d8:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204b66
	tst.w $14(a0)
	beq.s loc_2048f8
	tst.b $2a(a0)
	beq.w loc_204b66
	bra.s loc_204904
loc_2048f8:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204904:
	btst.b #$3,$22(a0)
	beq.s loc_204954
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.s loc_204996
	cmpi.b #$1e,$0(a1)
	bne.s loc_204934
	move.b #$0,$1c(a0)
	bra.w loc_204b66
loc_204934:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20497a
	cmp.w d2,d1
	bge.s loc_204968
	bra.s loc_204996
loc_204954:
	jsr (sub_206b84).l
	cmpi.w #$c,d1
	blt.s loc_204996
	cmpi.b #$3,$36(a0)
	bne.s loc_204972
loc_204968:
	btst.b #$0,$22(a0)
	bne.s loc_204982
	bra.s loc_20498c
loc_204972:
	cmpi.b #$3,$37(a0)
	bne.s loc_204996
loc_20497a:
	btst.b #$0,$22(a0)
	bne.s loc_20498c
loc_204982:
	move.b #$32,$1c(a0)
	bra.w loc_204b66
loc_20498c:
	move.b #$6,$1c(a0)
	bra.w loc_204b66
loc_204996:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2049aa
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2049aa:
	btst.b #$7,($f788).w
	bne.w loc_204aae
	btst.b #$6,($f788).w
	bne.w loc_204ace
	btst.b #$1,($f602).w
	bne.w loc_204ace
	andi.b #$f,($f788).w
	beq.s loc_2049e2
	btst.b #$0,($f603).w
	beq.s loc_2049f6
	bset.b #$7,($f788).w
	bra.w loc_204b8a
loc_2049e2:
	btst.b #$0,($f603).w
	beq.w loc_2049f6
	move.b #$1,($f788).w
	bra.w loc_204b8a
loc_2049f6:
	btst.b #$0,($f602).w
	beq.s loc_204a72
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204a54
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a26
	asr.w #$1,d2
	sub.w d2,d1
loc_204a26:
	btst.b #$0,$22(a0)
	beq.s loc_204a32
	neg.w d0
	neg.w d1
loc_204a32:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a48
	cmp.w d0,d1
	ble.s loc_204a4e
	bra.s loc_204a4c
loc_204a48:
	cmp.w d1,d0
	ble.s loc_204a4e
loc_204a4c:
	move.w d1,d0
loc_204a4e:
	move.w d0,$14(a0)
	rts
loc_204a54:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204a6e
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022fa).l
loc_204a6e:
	bra.w loc_204b8a
loc_204a72:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204a92
	move.w #$ab,d0
	jsr (sub_2022fa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ace
loc_204a92:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022fa).l
	bra.w loc_204b66
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204aae:
	btst.b #$0,($f602).w
	beq.s loc_204ace
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204b8a
	addq.w #$2,($f73e).w
	bra.w loc_204b8a
loc_204ace:
	btst.b #$6,($f788).w
	bne.w loc_204b4a
	andi.b #$f,($f788).w
	beq.s loc_204af2
	btst.b #$1,($f603).w
	beq.s loc_204b04
	bset.b #$6,($f788).w
	bra.w loc_204b8a
loc_204af2:
	btst.b #$1,($f603).w
	beq.s loc_204b04
	move.b #$1,($f788).w
	bra.w loc_204b8a
loc_204b04:
	btst.b #$1,($f602).w
	beq.s loc_204b66
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204b48
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204b48
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204b3a
	neg.w $14(a0)
loc_204b3a:
	move.w #$9c,d0
	jsr (sub_2022fa).l
	bsr.w sub_20504c
loc_204b48:
	bra.s loc_204b8a
loc_204b4a:
	btst.b #$1,($f602).w
	beq.s loc_204b66
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204b8a
	subq.w #$2,($f73e).w
	bra.s loc_204b8a
loc_204b66:
	cmpi.w #$60,($f73e).w
	bne.s loc_204b80
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204b8a
	move.b #$0,($f788).w
	bra.s loc_204b8a
loc_204b80:
	bcc.s loc_204b86
	addq.w #$4,($f73e).w
loc_204b86:
	subq.w #$2,($f73e).w
loc_204b8a:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204bb6
	move.w $14(a0),d0
	beq.s loc_204bb6
	bmi.s loc_204baa
	sub.w d5,d0
	bcc.s loc_204ba4
	move.w #$0,d0
loc_204ba4:
	move.w d0,$14(a0)
	bra.s loc_204bb6
loc_204baa:
	add.w d5,d0
	bcc.s loc_204bb2
	move.w #$0,d0
loc_204bb2:
	move.w d0,$14(a0)
loc_204bb6:
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204bd4:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204c44
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204c44
	bmi.s loc_204bec
	neg.w d1
loc_204bec:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206a44
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204c44
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204c40
	cmpi.b #$40,d0
	beq.s loc_204c2e
	cmpi.b #$80,d0
	beq.s loc_204c28
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c28:
	sub.w d1,$12(a0)
	rts
loc_204c2e:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c40:
	add.w d1,$12(a0)
loc_204c44:
	rts

sub_204c46:
	tst.b $2a(a0)
	bne.s loc_204cba
	move.w $14(a0),d0
	beq.s loc_204c54
	bpl.s loc_204c84
loc_204c54:
	bset.b #$0,$22(a0)
	bne.s loc_204c68
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204c68:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204c78
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204c78
	move.w d1,d0
loc_204c78:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204c84:
	sub.w d4,d0
	bcc.s loc_204c8c
	move.w #$ff80,d0
loc_204c8c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204cba
	cmpi.w #$400,d0
	blt.s loc_204cba
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022fa).l
loc_204cba:
	rts

sub_204cbc:
	tst.b $2a(a0)
	bne.s loc_204d2a
	move.w $14(a0),d0
	bmi.s loc_204cf4
	bclr.b #$0,$22(a0)
	beq.s loc_204cdc
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204cdc:
	cmp.w d6,d0
	bge.s loc_204ce8
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204ce8
	move.w d6,d0
loc_204ce8:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204cf4:
	add.w d4,d0
	bcc.s loc_204cfc
	move.w #$80,d0
loc_204cfc:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d2a
	cmpi.w #$fc00,d0
	bgt.s loc_204d2a
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022fa).l
loc_204d2a:
	rts

sub_204d2c:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204e68
	tst.w $3e(a0)
	bne.s loc_204d64
	btst.b #$2,($f602).w
	beq.s loc_204d58
	bsr.w sub_204e9e
loc_204d58:
	btst.b #$3,($f602).w
	beq.s loc_204d64
	bsr.w sub_204ec2
loc_204d64:
	tst.b $2a(a0)
	beq.w loc_204e0e
	move.w #$32,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204d84
	asr.w #$1,d2
	sub.w d2,d1
loc_204d84:
	btst.b #$0,$22(a0)
	beq.s loc_204d90
	neg.w d0
	neg.w d1
loc_204d90:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204da6
	cmp.w d0,d1
	ble.s loc_204dac
	bra.s loc_204daa
loc_204da6:
	cmp.w d1,d0
	ble.s loc_204dac
loc_204daa:
	move.w d1,d0
loc_204dac:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204de0
	rts
loc_204dba:
	move.w #$ab,d0
	jsr (sub_2022fa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204e36
loc_204de0:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204dba
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022fa).l
	btst.b #$0,$22(a0)
	bne.s loc_204e06
	bsr.w sub_204ec2
	bra.s loc_204e0e
loc_204e06:
	bsr.w sub_204e9e
	bra.s loc_204e0e
	dc.b $4e,$75
loc_204e0e:
	move.w $14(a0),d0
	beq.s loc_204e30
	bmi.s loc_204e24
	sub.w d5,d0
	bcc.s loc_204e1e
	move.w #$0,d0
loc_204e1e:
	move.w d0,$14(a0)
	bra.s loc_204e30
loc_204e24:
	add.w d5,d0
	bcc.s loc_204e2c
	move.w #$0,d0
loc_204e2c:
	move.w d0,$14(a0)
loc_204e30:
	tst.w $14(a0)
	bne.s loc_204e68
loc_204e36:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e52
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_204e62
loc_204e52:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204e62:
	move.b #$5,$1c(a0)
loc_204e68:
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204e8c
	move.w #$1000,d1
loc_204e8c:
	cmpi.w #$f000,d1
	bge.s loc_204e96
	move.w #$f000,d1
loc_204e96:
	move.w d1,$10(a0)
	bra.w loc_204bd4

sub_204e9e:
	move.w $14(a0),d0
	beq.s loc_204ea6
	bpl.s loc_204eb4
loc_204ea6:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204eb4:
	sub.w d4,d0
	bcc.s loc_204ebc
	move.w #$ff80,d0
loc_204ebc:
	move.w d0,$14(a0)
	rts

sub_204ec2:
	move.w $14(a0),d0
	bmi.s loc_204ed6
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ed6:
	add.w d4,d0
	bcc.s loc_204ede
	move.w #$80,d0
loc_204ede:
	move.w d0,$14(a0)
	rts

sub_204ee4:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	tst.w ($ff1506).l
	bne.s loc_204f12
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204f0a
	cmpi.w #$840,$8(a0)
	bcs.s loc_204f42
loc_204f0a:
	btst.b #$1,$2c(a0)
	bne.s loc_204f42
loc_204f12:
	btst.b #$2,($f602).w
	beq.s loc_204f2c
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204f2c
	move.w d1,d0
loc_204f2c:
	btst.b #$3,($f602).w
	beq.s loc_204f42
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204f42
	move.w d6,d0
loc_204f42:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204f58
	bcc.s loc_204f54
	addq.w #$4,($f73e).w
loc_204f54:
	subq.w #$2,($f73e).w
loc_204f58:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204f86
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204f86
	bmi.s loc_204f7a
	sub.w d1,d0
	bcc.s loc_204f74
	move.w #$0,d0
loc_204f74:
	move.w d0,$10(a0)
	rts
loc_204f7a:
	sub.w d1,d0
	bcs.s loc_204f82
	move.w #$0,d0
loc_204f82:
	move.w d0,$10(a0)
loc_204f86:
	rts
	.incbin 20360, 48

sub_204fb8:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_20500c
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204fe6
	addi.w #$38,d0
loc_204fe6:
	cmp.w d1,d0
	bls.s loc_20500c
loc_204fea:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204ffa
	rts
loc_204ffa:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2070c8
	move.b #$6,$24(a0)
	rts
loc_20500c:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204fea

sub_205024:
	tst.b ($f7ca).w
	bne.s loc_20504a
	move.w $14(a0),d0
	bpl.s loc_205032
	neg.w d0
loc_205032:
	cmpi.w #$80,d0
	bcs.s loc_20504a
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20504a
	btst.b #$1,($f602).w
	bne.s sub_20504c
loc_20504a:
	rts

sub_20504c:
	btst.b #$2,$22(a0)
	beq.s loc_205056
	rts
loc_205056:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205072
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205082
loc_205072:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205082:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bne.s loc_205094
	move.w #$200,$14(a0)
loc_205094:
	rts

sub_205096:
	tst.b $2a(a0)
	beq.s loc_20509e
	rts
loc_20509e:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_2050b0
	tst.w $14(a0)
	beq.w loc_205172
loc_2050b0:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205172
	btst.b #$3,$22(a0)
	beq.s loc_2050cc
	jsr (sub_205d56).l
	beq.s loc_2050fc
loc_2050cc:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206aae
	cmpi.w #$6,d1
	blt.w loc_205172
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_2050f2
	move.w #$380,d2
loc_2050f2:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_2050fc:
	jsr (sub_2007fe).l
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
	jsr (sub_2022fa).l
	btst.b #$2,$22(a0)
	bne.s loc_205174
	tst.b ($ff195b).l
	beq.s loc_205156
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205166
loc_205156:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205166:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205172:
	rts
loc_205174:
	bset.b #$4,$22(a0)
	rts

sub_20517c:
	tst.b $3c(a0)
	beq.s loc_2051ae
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205192
	move.w #$fe00,d1
loc_205192:
	cmp.w $12(a0),d1
	ble.s loc_2051ac
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_2051ac
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_2051ac:
	rts
loc_2051ae:
	rts

sub_2051b0:
	tst.b $2a(a0)
	bne.s loc_2051ea
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2051ea
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_2051ea
	bmi.s loc_2051e6
	tst.w d0
	beq.s loc_2051e4
	add.w d0,$14(a0)
loc_2051e4:
	rts
loc_2051e6:
	add.w d0,$14(a0)
loc_2051ea:
	rts

sub_2051ec:
	tst.b $2a(a0)
	bne.s loc_20522c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20522c
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_205222
	tst.w d0
	bpl.s loc_20521c
	asr.l #$2,d0
loc_20521c:
	add.w d0,$14(a0)
	rts
loc_205222:
	tst.w d0
	bmi.s loc_205228
	asr.l #$2,d0
loc_205228:
	add.w d0,$14(a0)
loc_20522c:
	rts

sub_20522e:
	nop
	tst.b $38(a0)
	bne.s loc_205268
	tst.w $3e(a0)
	bne.s loc_20526a
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205268
	move.w $14(a0),d0
	bpl.s loc_205252
	neg.w d0
loc_205252:
	cmpi.w #$280,d0
	bcc.s loc_205268
	clr.w $14(a0)
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205268:
	rts
loc_20526a:
	subq.w #$1,$3e(a0)
	rts

sub_205270:
	btst.b #$1,$2c(a0)
	bne.s loc_205292
	move.b $26(a0),d0
	beq.s loc_205292
	bpl.s loc_205288
	addq.b #$2,d0
	bcc.s loc_205286
	moveq #$0,d0
loc_205286:
	bra.s loc_20528e
loc_205288:
	subq.b #$2,d0
	bcc.s loc_20528e
	moveq #$0,d0
loc_20528e:
	move.b d0,$26(a0)
loc_205292:
	rts

sub_205294:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a96).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205378
	cmpi.b #$80,d0
	beq.w loc_2053da
	cmpi.b #$c0,d0
	beq.w loc_205436
	bsr.w sub_206dc4
	tst.w d1
	bpl.s loc_2052e6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052e6:
	bsr.w sub_206c26
	tst.w d1
	bpl.s loc_2052f8
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052f8:
	bsr.w sub_206ad6
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205376
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205316
	cmp.b d2,d0
	blt.s loc_205376
loc_205316:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205498
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205354
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205346
	asr.w $12(a0)
	bra.s loc_205368
loc_205346:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205354:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205368
	move.w #$fc0,$12(a0)
loc_205368:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205376
	neg.w $14(a0)
loc_205376:
	rts
loc_205378:
	bsr.w sub_206dc4
	tst.w d1
	bpl.s loc_205392
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205392:
	bsr.w sub_206c7e
	tst.w d1
	bpl.s loc_2053ac
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2053aa
	move.w #$0,$12(a0)
loc_2053aa:
	rts
loc_2053ac:
	tst.w $12(a0)
	bmi.s loc_2053d8
	bsr.w sub_206ad6
	tst.w d1
	bpl.s loc_2053d8
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205498
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2053d8:
	rts
loc_2053da:
	bsr.w sub_206dc4
	tst.w d1
	bpl.s loc_2053ec
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2053ec:
	bsr.w sub_206c26
	tst.w d1
	bpl.s loc_2053fe
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2053fe:
	bsr.w sub_206c7e
	tst.w d1
	bpl.s loc_205434
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20541e
	move.w #$0,$12(a0)
	rts
loc_20541e:
	move.b d3,$26(a0)
	bsr.w sub_2054fc
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205434
	neg.w $14(a0)
loc_205434:
	rts
loc_205436:
	bsr.w sub_206c26
	tst.w d1
	bpl.s loc_205450
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205450:
	bsr.w sub_206c7e
	tst.w d1
	bpl.s loc_20546a
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205468
	move.w #$0,$12(a0)
loc_205468:
	rts
loc_20546a:
	tst.w $12(a0)
	bmi.s loc_205496
	bsr.w sub_206ad6
	tst.w d1
	bpl.s loc_205496
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205498
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205496:
	rts

sub_205498:
	btst.b #$4,$22(a0)
	beq.s loc_2054a2
	nop
loc_2054a2:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2054ee
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2054d8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_2054e8
loc_2054d8:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2054e8:
	move.b #$0,$1c(a0)
loc_2054ee:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2054fc:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_203826).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205536
	subi.w #$20,$12(a0)
loc_205536:
	bsr.w sub_20554c
	bsr.w sub_204fb8
	bsr.w sub_204402
	bsr.w sub_2057bc
	jmp (sub_20387c).l

sub_20554c:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_2070c8
	bsr.w sub_205294
	btst.b #$1,$22(a0)
	bne.s loc_205586
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_205586:
	rts
	bsr.w sub_2055a0
	jsr (sub_2037c4).l
	bsr.w sub_204402
	bsr.w sub_2057bc
	jmp (sub_20387c).l

sub_2055a0:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_20560e
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_2055d4
	clr.b ($ff1508).l
loc_2055d4:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2055ee
	tst.b ($ff0f01).l
	beq.s loc_2055ee
	move.b #$0,($ff1508).l
	bra.s loc_205608
loc_2055ee:
	jsr (sub_2078a0).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_20560e
loc_205608:
	move.w #$3c,$3a(a0)
loc_20560e:
	rts
	tst.w $3a(a0)
	beq.w loc_20567e
	subq.w #$1,$3a(a0)
	bne.w loc_20567e
	move.w #$1,($ff1502).l
	bsr.w sub_20768e
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_20564c
	cmpi.b #$1,($ff152e).l
	bne.s loc_20564c
	bclr.b #$1,($ff151c).l
loc_20564c:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_20567a
	cmpi.b #$1,($ff152e).l
	bne.s loc_205674
	tst.b ($ff158e).l
	beq.s loc_20567a
	move.b #$1,($ff1522).l
	bra.s loc_20567a
loc_205674:
	clr.b ($ff1522).l
loc_20567a:
	bra.w sub_205dc6
loc_20567e:
	rts

sub_205680:
	rts
	.incbin 22146, 314

sub_2057bc:
	lea (dat_205aac).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2057de
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2057de:
	bsr.w sub_205a4e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205856
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205824
	move.b d0,$1e(a0)

sub_205808:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20581c
	bpl.s loc_20581c
	cmpi.b #$fd,d0
	bge.s loc_205826
loc_20581c:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205824:
	rts
loc_205826:
	addq.b #$1,d0
	bne.s loc_205836
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20581c
loc_205836:
	addq.b #$1,d0
	bne.s loc_20584a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20581c
loc_20584a:
	addq.b #$1,d0
	bne.s loc_205854
	move.b $2(a1,d1.w),$1c(a0)
loc_205854:
	rts
loc_205856:
	subq.b #$1,$1e(a0)
	bpl.s loc_205824
	addq.b #$1,d0
	bne.w loc_205910
	tst.b ($ff195b).l
	bne.w loc_2059d8
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20587e
	not.b d0
loc_20587e:
	btst.b #$1,$2c(a0)
	bne.s loc_20588c
	addi.b #$10,d0
	bra.s loc_20588e
loc_20588c:
	addq.b #$8,d0
loc_20588e:
	bpl.s loc_205892
	moveq #$3,d1
loc_205892:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205984
	move.w $14(a0),d2
	bpl.s loc_2058b0
	neg.w d2
loc_2058b0:
	btst.b #$1,$2c(a0)
	beq.s loc_2058c8
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205cae).l,a1
	bra.s loc_2058f2
loc_2058c8:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205c88).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2058f2
	lea (dat_205b2c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2058f2
	lea (dat_205b24).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2058f2:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205900
	moveq #$0,d2
loc_205900:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205808
	add.b d3,$1a(a0)
	rts
loc_205910:
	addq.b #$1,d0
	bne.s loc_205980
	move.w $14(a0),d2
	bpl.s loc_20591c
	neg.w d2
loc_20591c:
	lea (dat_205c0a).l,a1
	tst.b ($ff195b).l
	bne.s loc_20595a
	lea (dat_205b3c).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20594e
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20595a
	lea (dat_205cb6).l,a1
	bra.s loc_20595a
loc_20594e:
	cmpi.w #$600,d2
	bcc.s loc_20595a
	lea (dat_205b34).l,a1
loc_20595a:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205964
	moveq #$0,d2
loc_205964:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205808
loc_205980:
	addq.b #$1,d0
	bne.s loc_2059c4
loc_205984:
	move.w $14(a0),d2
	bmi.s loc_20598c
	neg.w d2
loc_20598c:
	addi.w #$800,d2
	bpl.s loc_205994
	moveq #$0,d2
loc_205994:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205c1c).l,a1
	tst.b ($ff195b).l
	bne.s loc_2059ae
	lea (dat_205b44).l,a1
loc_2059ae:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205808
loc_2059c4:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2059d8:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2059ea
	not.b d0
loc_2059ea:
	addi.b #$10,d0
	bpl.s loc_2059f2
	moveq #$0,d1
loc_2059f2:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205a20
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205910
loc_205a20:
	move.w $14(a0),d2
	bpl.s loc_205a28
	neg.w d2
loc_205a28:
	lea (dat_205c04).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205a3a
	lea (dat_205bfe).l,a1
loc_205a3a:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205a44
	moveq #$0,d2
loc_205a44:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205808

sub_205a4e:
	tst.b ($ff195b).l
	beq.s loc_205a5a
	move.b dat_205a5c(pc,d0.w),d0
loc_205a5a:
	rts
dat_205a5c:
	.incbin 23132, 80
dat_205aac:
	.incbin 23212, 120
dat_205b24:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205b2c:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205b34:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205b3c:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205b44:
	.incbin 23364, 186
dat_205bfe:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205c04:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205c0a:
	.incbin 23562, 18
dat_205c1c:
	.incbin 23580, 108
dat_205c88:
	.incbin 23688, 38
dat_205cae:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205cb6:
	.incbin 23734, 60

sub_205cf2:
	tst.b (a0)
	beq.w loc_205d54
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205d54
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205d54
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205d26:
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
loc_205d40:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205d40
	dbf d1,loc_205d26
loc_205d54:
	rts

sub_205d56:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205dc0
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a96).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205dae
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205dae:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205dc0:
	rts
loc_205dc2:
	move.w #$e,d0

sub_205dc6:
	cmpi.w #$67,d0
	bne.s loc_205dd4
	move.b #$1,($ff1958).l
loc_205dd4:
	move.w d0,($a12010).l
loc_205dda:
	move.w ($a12020).l,d0
	beq.s loc_205dda
	cmp.w ($a12020).l,d0
	bne.s loc_205dda
	move.w #$0,($a12010).l
loc_205df2:
	move.w ($a12020).l,d0
	bne.s loc_205df2
	move.w ($a12020).l,d0
	bne.s loc_205df2
	rts
	dc.b $00,$00

sub_205e06:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205e22
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205e22:
	subq.b #$1,$1e(a0)
	bpl.s loc_205e62
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205e64
loc_205e3e:
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
loc_205e62:
	rts
loc_205e64:
	addq.b #$1,d0
	bne.s loc_205e74
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205e3e
loc_205e74:
	addq.b #$1,d0
	bne.s loc_205e88
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205e3e
loc_205e88:
	addq.b #$1,d0
	bne.s loc_205e92
	move.b $2(a1,d1.w),$1c(a0)
loc_205e92:
	addq.b #$1,d0
	bne.s loc_205e9a
	addq.b #$2,$24(a0)
loc_205e9a:
	addq.b #$1,d0
	bne.s loc_205ea8
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205ea8:
	addq.b #$1,d0
	bne.s loc_205eb0
	addq.b #$2,$25(a0)
loc_205eb0:
	rts
	.incbin 24242, 654

sub_206140:
	tst.b $25(a0)
	bne.s loc_206170
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_2078a0).l
	bne.s loc_206170
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206170:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206180(pc,d0.w),d0
	jmp dat_206180(pc,d0.w)
dat_206180:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_2061a8
	andi.b #$7f,$2(a0)
loc_2061a8:
	move.l #$23ad50,$4(a0)
	bsr.s sub_206140
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_2061d6
	move.w #$100,$1c(a0)
loc_2061d6:
	lea (dat_23ad3c).l,a1
	bsr.w sub_205e06
	jmp (sub_20387c).l
	tst.b $25(a0)
	beq.s loc_2061f2
	jmp (sub_203928).l
loc_2061f2:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206214(pc,d0.w),d0
	jsr dat_206214(pc,d0.w)
	jmp (sub_20387c).l
dat_206214:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_206242
	andi.b #$7f,$2(a0)
loc_206242:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_206268
	bsr.w sub_2062d4
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_2062ca
loc_206268:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206b84).l
	tst.w d1
	bpl.s loc_2062c6
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_2062b0
	bsr.w sub_2062d4
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2062fa
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_2062b0:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_2062ca
loc_2062c6:
	addq.w #$2,$c(a0)
loc_2062ca:
	lea (dat_2336bc).l,a1
	bra.w sub_205e06

sub_2062d4:
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

sub_2062fa:
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
	bra.s loc_2062ca
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_2062ca
	.incbin 25398, 348
	bcc.s loc_206498
	moveq #$1,d0
	rts
loc_206498:
	moveq #$0,d0
	rts
	.incbin 25756, 478

sub_20667a:
	bclr.b #$7,($ff156b).l
	beq.s loc_2066c8
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2066ca(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20669e:
	move.l (a1)+,(a2)+
	dbf d0,loc_20669e
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2066c8:
	rts
dat_2066ca:
	.incbin 26314, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206700(pc,d0.w),d0
	jsr dat_206700(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_2066fa
	jsr (sub_20387c).l
loc_2066fa:
	jmp (loc_2078d6).l
dat_206700:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23ab64,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_2067e2
	cmpi.b #$6,$24(a1)
	bcc.w loc_2067e2
	bsr.w sub_206846
	beq.w loc_2067e2
	tst.b $28(a0)
	bne.s loc_206794
	move.w $10(a1),d0
	bpl.s loc_206754
	neg.w d0
loc_206754:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206766
	move.w #$d00,d1
loc_206766:
	cmp.w d1,d0
	bcc.s loc_20676c
	move.w d1,d0
loc_20676c:
	tst.w $10(a1)
	bpl.s loc_206774
	neg.w d0
loc_206774:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2067c4
	neg.w $14(a1)
	bra.s loc_2067c4
loc_206794:
	cmpi.b #$2,$28(a0)
	bcc.s loc_2067e4
	move.w $12(a1),d0
	bpl.s loc_2067a4
	neg.w d0
loc_2067a4:
	cmpi.w #$d00,d0
	bcc.s loc_2067ae
	move.w #$d00,d0
loc_2067ae:
	tst.w $12(a1)
	bpl.s loc_2067b6
	neg.w d0
loc_2067b6:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_2067c4:
	bset.b #$2,$22(a1)
	bne.s loc_2067e2
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_2067e2:
	rts
loc_2067e4:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206830
	cmpi.b #$2,$28(a0)
	bne.s loc_206800
	tst.w $12(a1)
	bpl.s loc_2067c4
	bra.s loc_206806
loc_206800:
	tst.w $12(a1)
	bmi.s loc_2067c4
loc_206806:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206818
	btst.l #$2,d1
	beq.s loc_2067c4
	neg.w d0
loc_206818:
	cmpi.b #$2,$28(a0)
	beq.s loc_206826
	bset.b #$1,$22(a1)
loc_206826:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2067c4
loc_206830:
	tst.w $10(a1)
	bmi.s loc_2067c4
	btst.l #$0,d1
	beq.w loc_2067c4
	move.w #$f600,d0
	bra.w loc_2067b6

sub_206846:
	tst.b ($ff1906).l
	bne.s loc_20687a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_20687a
	cmpi.w #$50,d0
	bcc.s loc_20687a
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_20687a
	cmpi.w #$50,d0
	bcc.s loc_20687a
	moveq #$1,d0
	rts
loc_20687a:
	moveq #$0,d0
	rts
loc_20687e:
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
	bne.s loc_206938
	move.b ($ff1593).l,($ff195b).l
loc_206938:
	tst.b ($ff1522).l
	bpl.s loc_20694e
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20694e:
	rts

sub_206950:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20687e
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
	bne.s loc_206a0a
	move.b ($ff1591).l,($ff195b).l
loc_206a0a:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206a2c
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206a2c:
	tst.b ($ff1522).l
	bpl.s loc_206a42
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206a42:
	rts

sub_206a44:
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
	bpl.s loc_206a80
	move.b d1,d0
	bpl.s loc_206a7a
	subq.b #$1,d0
loc_206a7a:
	addi.b #$20,d0
	bra.s loc_206a8a
loc_206a80:
	move.b d1,d0
	bpl.s loc_206a86
	addq.b #$1,d0
loc_206a86:
	addi.b #$1f,d0
loc_206a8a:
	andi.b #$c0,d0
	beq.w loc_206b5a
	cmpi.b #$80,d0
	beq.w loc_206cf6
	andi.b #$38,d1
	bne.s loc_206aa2
	addq.w #$8,d2
loc_206aa2:
	cmpi.b #$40,d0
	beq.w loc_206dcc
	bra.w loc_206c2e

sub_206aae:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206d54
	cmpi.b #$80,d0
	beq.w sub_206c7e
	cmpi.b #$c0,d0
	beq.w loc_206bbe

sub_206ad6:
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
	jsr (sub_201154).l
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
	jsr (sub_201154).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206b3a:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206b48
	move.b ($f768).w,d3
	exg d0,d1
loc_206b48:
	btst.l #$0,d3
	beq.s loc_206b50
	move.b d2,d3
loc_206b50:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b5a:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201154).l
	move.b #$0,d2
loc_206b76:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b82
	move.b d2,d3
loc_206b82:
	rts

sub_206b84:
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
	jsr (sub_201154).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206bbc
	move.b #$0,d3
loc_206bbc:
	rts
loc_206bbe:
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
	jsr (sub_2012c4).l
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
	jsr (sub_2012c4).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206b3a

sub_206c26:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c2e:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012c4).l
	move.b #$c0,d2
	bra.w loc_206b76
dat_206c4e:
	dc.b $d6,$68,$00,$08,$34,$28,$00,$0c
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012c4).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c7c
	move.b #$c0,d3
loc_206c7c:
	rts

sub_206c7e:
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
	jsr (sub_201154).l
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
	jsr (sub_201154).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206b3a

sub_206cee:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cf6:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201154).l
	move.b #$80,d2
	bra.w loc_206b76

sub_206d1a:
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
	jsr (sub_201154).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206d52
	move.b #$80,d3
loc_206d52:
	rts
loc_206d54:
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
	jsr (sub_2012c4).l
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
	jsr (sub_2012c4).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206b3a

sub_206dc4:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206dcc:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012c4).l
	move.b #$40,d2
	bra.w loc_206b76
loc_206df0:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012c4).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e1e
	move.b #$40,d3
loc_206e1e:
	rts

sub_206e20:
	btst.b #$6,$2c(a0)
	beq.s loc_206e2c
	moveq #$0,d0
	rts
loc_206e2c:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206e50
	addi.w #$c,d3
	moveq #$a,d5
loc_206e50:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206e5e:
	tst.b $1(a1)
	bpl.s loc_206e6a
	move.b $20(a1),d0
	bne.s loc_206e76
loc_206e6a:
	lea $40(a1),a1
	dbf d6,loc_206e5e
	moveq #$0,d0
	rts
loc_206e76:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2071fe).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206e9e
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206ea4
	bra.w loc_206e6a
loc_206e9e:
	cmp.w d4,d0
	bhi.w loc_206e6a
loc_206ea4:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206ebc
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206ec2
	bra.w loc_206e6a
loc_206ebc:
	cmp.w d5,d0
	bhi.w loc_206e6a
loc_206ec2:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206f36
	cmpi.b #$c0,d1
	beq.w loc_207120
	tst.b d1
	bmi.w sub_207000
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206efa
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206ef8
	addq.b #$2,$24(a1)
loc_206ef8:
	rts
loc_206efa:
	tst.w $12(a0)
	bpl.s loc_206f24
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206f34
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206f34
	addq.b #$4,$25(a1)
	rts
loc_206f24:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206f34
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206f34:
	rts

sub_206f36:
	tst.b ($ff1521).l
	bne.s loc_206f50
	tst.b ($ff151f).l
	bne.s loc_206f50
	cmpi.b #$2,$1c(a0)
	bne.w sub_207000
loc_206f50:
	tst.b $21(a1)
	beq.s loc_206f7a
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206f78
	bset.b #$7,$22(a1)
loc_206f78:
	rts
loc_206f7a:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206f92
	moveq #$6,d0
loc_206f92:
	move.w d0,$3e(a1)
	move.w dat_206ff2(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206fac
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206fac:
	bsr.w sub_20ae5a
	move.w #$96,d0
	jsr (sub_2022fa).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206fe2
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206fea
	neg.w $12(a0)
	rts
loc_206fe2:
	addi.w #$100,$12(a0)
	rts
loc_206fea:
	subi.w #$100,$12(a0)
	rts
dat_206ff2:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207000:
	tst.b ($ff1521).l
	bne.s loc_207010
	tst.b ($ff151f).l
	beq.s loc_207014
loc_207010:
	moveq #$ffffffff,d0
	rts
loc_207014:
	nop
	tst.w $30(a0)
	bne.s loc_207010
	movea.l a1,a2
loc_20701e:
	clr.b $2a(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	tst.b ($ff151e).l
	bne.s loc_207058
	tst.w ($ff1512).l
	beq.w loc_2070be
	jsr (sub_2078a0).l
	bne.s loc_207058
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207058:
	bclr.b #$0,($ff151e).l
	bne.s loc_20706a
	move.b #$0,($ff156f).l
loc_20706a:
	move.b #$4,$24(a0)
	bsr.w sub_205498
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20709a
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_20709a:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2070a8
	neg.w $10(a0)
loc_2070a8:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2070be:
	tst.w ($ff1588).l
	bne.w loc_207058

sub_2070c8:
	tst.w ($ff1906).l
	bne.s loc_20711c
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205498
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2022fa).l
loc_20711c:
	moveq #$ffffffff,d0
	rts
loc_207120:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2071a8
	cmpi.b #$23,d1
	beq.w loc_2071a8
	cmpi.b #$38,d1
	beq.w loc_2071f0
	cmpi.b #$3a,d1
	beq.w loc_2071f0
	cmpi.b #$3b,d1
	beq.w loc_2071f0
	tst.b ($f7aa).w
	beq.w loc_2071a6
	cmpi.b #$1,($f7aa).w
	beq.s loc_207170
	cmpi.b #$4,($f7aa).w
	beq.s loc_207192
	cmpi.b #$5,($f7aa).w
	beq.s loc_2071a0
loc_207170:
	cmpi.b #$3c,d1
	blt.s loc_2071a6
	cmpi.b #$3f,d1
	bgt.s loc_2071a6
	bsr.w sub_206f36
	tst.b $20(a1)
	bne.s loc_20718a
	addq.b #$3,$21(a1)
loc_20718a:
	clr.b $20(a1)
	bra.w loc_2071a8
loc_207192:
	cmpi.b #$3f,d1
	beq.s loc_2071b4
	cmpi.b #$3e,d1
	beq.s loc_2071ae
	bra.s loc_2071a6
loc_2071a0:
	cmpi.b #$3d,d1
	beq.s loc_2071ae
loc_2071a6:
	rts
loc_2071a8:
	addq.b #$1,$21(a1)
	rts
loc_2071ae:
	bsr.w sub_207000
	bra.s loc_2071a8
loc_2071b4:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_2071ee
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_2071ee
	neg.w $10(a0)
loc_2071ee:
	rts
loc_2071f0:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2071fc
	addq.b #$1,$21(a1)
loc_2071fc:
	rts
dat_2071fe:
	.incbin 29182, 126
loc_20727c:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207292
	move.l #$4000,(dat_20740c).l
	bra.s loc_2072b2
loc_207292:
	addi.l #$2000,(dat_20740c).l
	cmpi.l #$80000,(dat_20740c).l
	bls.s loc_2072b2
	move.l #$80000,(dat_20740c).l
loc_2072b2:
	move.l (dat_20740c).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2072c4
	sub.l d0,$c(a0)
loc_2072c4:
	btst.b #$1,($f604).w
	beq.s loc_2072d0
	add.l d0,$c(a0)
loc_2072d0:
	btst.b #$2,($f604).w
	beq.s loc_2072dc
	sub.l d0,$8(a0)
loc_2072dc:
	btst.b #$3,($f604).w
	beq.s loc_2072e8
	add.l d0,$8(a0)
loc_2072e8:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f6c).l
	move.w (a1),($ff194e).l
	lea (dat_207410).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20732a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207324
	move.b #$0,d1
loc_207324:
	move.b d1,($ff1904).l
loc_20732a:
	btst.b #$7,($f605).w
	beq.s loc_20734a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207344
	add.b (a2),d1
loc_207344:
	move.b d1,($ff1904).l
loc_20734a:
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
	beq.s loc_2073d6
	bsr.w sub_2078a0
	bne.s loc_2073d6
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
loc_2073d6:
	btst.b #$4,($f605).w
	beq.s loc_207406
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207406:
	jmp (sub_20387c).l
dat_20740c:
	dc.b $00,$00,$40,$00
dat_207410:
	.incbin 29712, 638

sub_20768e:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20769c:
	clr.l (a2)+
	dbf d0,loc_20769c
	rts

sub_2076a4:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2076b2(pc,d0.w),d0
	jmp dat_2076b2(pc,d0.w)
dat_2076b2:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207952).l,a0
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
	bcc.s loc_2076f0
	moveq #$0,d6
loc_2076f0:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2076f8:
	cmp.w (a0),d6
	bls.s loc_20770a
	tst.b $4(a0)
	bpl.s loc_207706
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207706:
	addq.w #$8,a0
	bra.s loc_2076f8
loc_20770a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20772a
loc_207718:
	cmp.w (a0),d6
	bls.s loc_20772a
	tst.b $4(a0)
	bpl.s loc_207726
	addq.b #$1,$1(a2)
loc_207726:
	addq.w #$8,a0
	bra.s loc_207718
loc_20772a:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207814
	bge.s loc_2077ba
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207796
loc_207764:
	cmp.w -$8(a0),d6
	bge.s loc_207796
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20777a
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20777a:
	bsr.w sub_207838
	bne.s loc_207784
	subq.w #$8,a0
	bra.s loc_207764
loc_207784:
	tst.b $4(a0)
	bpl.s loc_207794
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207794:
	addq.w #$8,a0
loc_207796:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2077a2:
	cmp.w -$8(a0),d6
	bgt.s loc_2077b4
	tst.b -$4(a0)
	bpl.s loc_2077b0
	subq.b #$1,(a2)
loc_2077b0:
	subq.w #$8,a0
	bra.s loc_2077a2
loc_2077b4:
	move.l a0,($f770).w
	rts
loc_2077ba:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2077ce:
	cmp.w (a0),d6
	bls.s loc_2077f0
	tst.b $4(a0)
	bpl.s loc_2077dc
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077dc:
	bsr.w sub_207838
	beq.s loc_2077ce
	tst.b $4(a0)
	bpl.s loc_2077f0
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077f0:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207810
loc_2077fe:
	cmp.w (a0),d6
	bls.s loc_207810
	tst.b $4(a0)
	bpl.s loc_20780c
	addq.b #$1,$1(a2)
loc_20780c:
	addq.w #$8,a0
	bra.s loc_2077fe
loc_207810:
	move.l a0,($f774).w
loc_207814:
	rts

sub_207816:
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

sub_207838:
	bsr.s sub_207816
	beq.s loc_20784a
	tst.b $4(a0)
	bpl.s loc_207850
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207850
loc_20784a:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207850:
	bsr.w sub_2078a0
	bne.s loc_20789e
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
	bpl.s loc_207880
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207880:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207892
	nop
	nop
	nop
	nop
loc_207892:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_20789e:
	rts

sub_2078a0:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2078a8:
	tst.b (a1)
	beq.s loc_2078b4
	lea $40(a1),a1
	dbf d0,loc_2078a8
loc_2078b4:
	rts

sub_2078b6:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078d4
loc_2078c8:
	tst.b (a1)
	beq.s loc_2078d4
	lea $40(a1),a1
	dbf d0,loc_2078c8
loc_2078d4:
	rts
loc_2078d6:
	move.w $8(a0),d0
loc_2078da:
	tst.b $1(a0)
	bmi.s loc_207944
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207944
loc_2078f8:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20793a
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207932
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20792a
	moveq #$0,d1
	bra.s loc_207932
loc_20792a:
	cmpi.w #$3,d1
	bcs.s loc_207932
	moveq #$2,d1
loc_207932:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20793a:
	jsr (sub_203928).l
	moveq #$1,d0
	rts
loc_207944:
	btst.b #$7,($ff152e).l
	bne.s loc_2078f8
	moveq #$0,d0
	rts
dat_207952:
	.incbin 31058, 3152
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2085bc(pc,d0.w),d0
	jsr dat_2085bc(pc,d0.w)
	jsr (sub_20387c).l
	jmp (loc_2078d6).l
dat_2085bc:
	dc.b $00,$0e,$00,$2c,$00,$7c,$00,$8c
	dc.b $00,$9c,$00,$e2,$01,$72
	ori.b #$4,$1(a0)
	move.w #$310,$2(a0)
	move.l #$2089dc,$4(a0)
	move.b #$78,$2a(a0)
	addq.b #$2,$24(a0)
	tst.b $2a(a0)
	beq.s loc_208636
	subq.b #$1,$2a(a0)
	bne.s loc_208636
	jsr (sub_2078a0).l
	bne.s loc_208636
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
loc_208636:
	rts
	bsr.w sub_2088e8
	lea (dat_208960).l,a1
	jmp (sub_205e06).l
	movea.l $2a(a0),a1
	move.b #$78,$2a(a1)
	jmp (sub_203928).l
	.incbin 34392, 560
loc_208888:
	movea.l a1,a2
	jsr (sub_2078a0).l
	bne.s loc_2088e6
	bset.b #$0,$2c(a2)
	bset.b #$6,$2c(a2)
	move.l a2,$2a(a1)
	move.b #$5,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a2),$8(a1)
	move.w $c(a2),$c(a1)
	move.w #$2e1,$2(a1)
	move.l #$2089dc,$4(a1)
	move.b #$18,$17(a1)
	move.b #$18,$19(a1)
	move.b #$18,$16(a1)
	move.b #$8,$1a(a1)
	move.b #$8,$24(a1)
loc_2088e6:
	rts

sub_2088e8:
	cmpi.b #$1,$1c(a0)
	bne.s loc_208900
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208900
	bsr.s sub_208902
	bne.s loc_208888
loc_208900:
	rts

sub_208902:
	tst.b ($ff151f).l
	bne.s loc_20895c
	tst.b ($ff1521).l
	bne.s loc_20895c
	cmpi.b #$4,$24(a1)
	bcc.s loc_20895c
	tst.b $2c(a1)
	bne.s loc_20895c
	move.b $17(a1),d1
	ext.w d1
	addi.w #$10,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20895c
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20895c
	move.b $16(a1),d1
	ext.w d1
	addi.w #$20,d1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_20895c
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20895c
	moveq #$1,d0
	rts
loc_20895c:
	moveq #$0,d0
	rts
dat_208960:
	.incbin 35168, 314
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208ab4(pc,d0.w),d0
	jsr dat_208ab4(pc,d0.w)
	jsr (sub_20387c).l
	jmp (loc_2078d6).l
dat_208ab4:
	dc.b $00,$0a,$00,$76,$00,$a6,$01,$48
	dc.b $01,$64
	ori.b #$4,$1(a0)
	move.w #$400,$2(a0)
	move.l #$208c48,$4(a0)
	move.w $8(a0),$2e(a0)
	move.b #$1c,$17(a0)
	move.b #$1c,$19(a0)
	move.b #$4,$16(a0)
	addq.b #$2,$24(a0)
	jsr (sub_2078b6).l
	move.b #$4,$0(a1)
	ori.b #$4,$1(a1)
	move.w #$400,$2(a1)
	move.l #$208c48,$4(a1)
	move.b #$4,$17(a1)
	move.b #$c,$16(a1)
	move.b #$1,$1a(a1)
	move.l a0,$2a(a1)
	move.b #$8,$24(a1)
	lea ($d000).w,a1
	jsr (sub_20945c).l
	beq.s loc_208b58
	bset.b #$0,$2c(a1)
	move.w $8(a0),$8(a1)
	bclr.b #$0,$22(a1)
	move.b #$3a,$1c(a1)
	addq.b #$2,$24(a0)
	move.w #$c00,$10(a0)
loc_208b58:
	rts
	.incbin 35674, 190
	movea.l $2a(a0),a1
	cmpi.b #$4,$24(a1)
	bcc.s loc_208c46
	move.w $8(a1),$8(a0)
	subi.w #$18,$8(a0)
	move.w $c(a1),$c(a0)
	subi.w #$10,$c(a0)
	lea ($d000).w,a1
	jmp (loc_209462).l
loc_208c46:
	rts
	.incbin 35912, 32
	btst.b #$7,($ff152e).l
	beq.s loc_208cb2
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_208cb2
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
	bpl.s loc_208ca2
	moveq #$0,d1
	bra.s loc_208caa
loc_208ca2:
	cmpi.w #$3,d1
	bcs.s loc_208caa
	moveq #$2,d1
loc_208caa:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_208cb2:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_208ce2
	cmpi.b #$6,$24(a6)
	bcc.s loc_208ce2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208ce4(pc,d0.w),d1
	jsr dat_208ce4(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_208ce2
	jmp (loc_2078d6).l
loc_208ce2:
	rts
dat_208ce4:
	dc.b $00,$08,$00,$52,$01,$18,$01,$32
	move.l #$23ab64,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$541,$2(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	andi.b #$7f,d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_208f7a(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	cmpi.b #$6,$24(a6)
	bcc.w loc_208dfa
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$20,d0
	cmpi.w #$40,d0
	bcc.w loc_208dfa
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$30,d1
	cmpi.w #$60,d1
	bcc.w loc_208dfa
	tst.b $2c(a6)
	bne.w loc_208dfa
	cmpi.b #$4,$24(a6)
	bne.s loc_208d82
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_208d82:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	tst.b $29(a0)
	beq.s loc_208d98
	bset.b #$6,$2c(a6)
loc_208d98:
	move.b #$2,$1c(a6)
	move.w #$800,$14(a6)
	bclr.b #$6,$1(a6)
	tst.b $28(a0)
	bpl.s loc_208db6
	bset.b #$6,$1(a6)
loc_208db6:
	cmpi.b #$4,$24(a6)
	bne.s loc_208dc2
	subq.b #$2,$24(a6)
loc_208dc2:
	move.w #$0,$10(a6)
	move.w #$0,$12(a6)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a6)
	bset.b #$1,$22(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	clr.b $32(a0)
	move.w #$91,d0
	jsr (sub_2022fa).l
loc_208dfa:
	rts
	.incbin 36348, 24
	rts
	.incbin 36374, 356
dat_208f7a:
	.incbin 36730, 922

sub_209314:
	btst.b #$3,$22(a0)
	beq.s loc_209384
	btst.b #$3,$22(a1)
	beq.s loc_209384
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_209384
	tst.b $2a(a1)
	beq.s loc_209346
	move.w #$ab,d0
	jsr (sub_2022fa).l
loc_209346:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_209372
	cmpi.b #$17,$1c(a1)
	beq.s loc_209372
	bclr.b #$0,$2c(a1)
loc_209372:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209384
	bclr.b #$1,$22(a1)
loc_209384:
	rts

sub_209386:
	cmpi.b #$4,$24(a1)
	bne.s loc_209398
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_209398:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_2093f8
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2093ba
	bclr.b #$3,$22(a0)
	bra.w sub_209314
loc_2093ba:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_2093f8
	tst.b ($ff195b).l
	beq.s loc_2093e2
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_2093f2
loc_2093e2:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_2093f2:
	move.b #$0,$1c(a1)
loc_2093f8:
	bset.b #$3,$22(a1)
	beq.s loc_20941a
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_209452
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_20941a:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_209446
	cmpi.b #$2,$24(a0)
	beq.s loc_20944c
loc_209446:
	move.w $10(a1),$14(a1)
loc_20944c:
	bclr.b #$1,$22(a1)
loc_209452:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_20945c:
	move.b #$1,$25(a0)
loc_209462:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209716
	btst.b #$6,$2c(a1)
	bne.w loc_209716
	cmpi.b #$6,$24(a1)
	bcc.w loc_209716
	tst.b $0(a1)
	beq.w loc_209716
	tst.b $1(a0)
	bpl.w loc_209716
	tst.b ($ff1906).l
	bne.w loc_209716
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209716
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209716
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2094d0
	btst.b #$3,$22(a0)
	bne.s loc_2094e2
	bra.w loc_209716
loc_2094d0:
	cmpi.b #$1,$25(a0)
	bne.s loc_2094e2
	tst.w $12(a1)
	beq.s loc_2094e2
	bmi.w loc_209716
loc_2094e2:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209716
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209716
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_209518
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_209518:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_209526
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_209526:
	cmp.w d4,d5
	bcs.w loc_2095ba
	cmpi.b #$1,$25(a0)
	beq.w loc_209716
	cmpi.b #$a,$0(a0)
	bne.s loc_209548
	btst.b #$1,$22(a1)
	bne.w loc_209716
loc_209548:
	cmpi.b #$4,d5
	bls.w loc_209716
	bsr.w sub_209766
	move.l d0,-(a7)
	bsr.w sub_209314
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_209572
	tst.w $10(a1)
	beq.s loc_2095a2
	bpl.s loc_20957a
	bra.s loc_2095a2
loc_209572:
	tst.w $10(a1)
	beq.s loc_2095a2
	bpl.s loc_2095a2
loc_20957a:
	bsr.w sub_209726
	btst.b #$1,$22(a1)
	bne.s loc_209598
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209598:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_2095a2:
	bsr.w sub_2097dc
	bsr.w sub_209726
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_2095ba:
	cmpi.b #$19,$0(a0)
	bne.s loc_2095cc
	btst.b #$2,$22(a1)
	bne.w loc_209716
loc_2095cc:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_2095e2
	bmi.w loc_2096b2
loc_2095e2:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_2095f4
	tst.w $12(a1)
	beq.s loc_2095f4
	bmi.w loc_209716
loc_2095f4:
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
	beq.s loc_209640
	bpl.s loc_209620
	neg.b d0
loc_209620:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a44).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209640
	tst.w $10(a0)
	bpl.s loc_20963c
	neg.w d1
loc_20963c:
	add.w d1,$8(a1)
loc_209640:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_2096aa
	tst.w $12(a0)
	bmi.s loc_20967e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ad6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20967e
	add.w d1,$c(a1)
	bra.w loc_209716
loc_20967e:
	tst.w $12(a0)
	bpl.s loc_2096aa
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206cee).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2096aa
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070c8).l
	movem.l (a7)+,a0-a1
	bra.s loc_209716
loc_2096aa:
	bsr.w sub_209386
	moveq #$1,d0
	rts
loc_2096b2:
	cmpi.b #$1,$25(a0)
	beq.s loc_209716
	cmpi.b #$9,$0(a0)
	beq.s loc_209716
	cmpi.b #$a,$0(a0)
	bne.s loc_2096dc
	cmpi.b #$2,$25(a0)
	beq.s loc_2096fc
	btst.b #$1,$1(a0)
	bne.s loc_2096fc
	bra.s loc_209716
loc_2096dc:
	btst.b #$1,$22(a1)
	bne.s loc_2096fc
	tst.w $12(a0)
	beq.s loc_2096fc
	bmi.s loc_2096fc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070c8).l
	movem.l (a7)+,a0-a1
loc_2096fc:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_2097dc
	bsr.w sub_209314
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209716:
	bsr.w sub_2097dc
	bsr.w sub_209314
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209726:
	tst.w $10(a0)
	beq.s loc_209764
	cmpi.b #$a,$0(a0)
	beq.s loc_209764
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209740
	neg.b d0
loc_209740:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a44).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209764
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070c8).l
	movem.l (a7)+,a0-a1
loc_209764:
	rts

sub_209766:
	cmpi.b #$a,$0(a0)
	bne.s loc_209776
	move.b #$0,$20(a1)
	rts
loc_209776:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2097ca
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_2097da
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209798
	tst.w $10(a2)
	beq.s loc_2097da
loc_209798:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_2097aa
	cmp.w $8(a2),d1
	bcs.s loc_2097da
	bra.s loc_2097b0
loc_2097aa:
	cmp.w $8(a2),d1
	bcc.s loc_2097da
loc_2097b0:
	cmpi.b #$15,$0(a0)
	beq.s loc_2097da
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070c8).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2097ca:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_2097da:
	rts

sub_2097dc:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2097f6
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2097f6
	move.b #$0,$20(a1)
loc_2097f6:
	rts
	.incbin 38904, 374
loc_20996e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20997c(pc,d0.w),d0
	jmp dat_20997c(pc,d0.w)
dat_20997c:
	.incbin 39292, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_20996e
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_2099d2
	tst.b $1(a0)
	bpl.s loc_2099da
loc_2099d2:
	move.w dat_209a2c(pc,d0.w),d1
	jsr dat_209a2c(pc,d1.w)
loc_2099da:
	bsr.w sub_20387c
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209a0c
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209a0c:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203928
	rts
dat_209a2c:
	.incbin 39468, 26
	addq.b #$2,$24(a0)
	move.l #$209dae,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209a9c
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209db4,$4(a0)
	bra.s loc_209ade
loc_209a9c:
	btst.l #$3,d0
	beq.s loc_209aca
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209dfe,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c672).l
	move.l (a7)+,d0
	bra.s loc_209ade
loc_209aca:
	btst.b #$1,$1(a0)
	beq.s loc_209ade
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209ade:
	btst.l #$1,d0
	beq.s loc_209aea
	bset.b #$5,$2(a0)
loc_209aea:
	andi.w #$2,d0
	move.w dat_209af6(pc,d0.w),$30(a0)
	rts
dat_209af6:
	dc.b $f0,$00,$f6,$00

sub_209afa:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_209462).l
	tst.b $1(a0)
	bpl.s loc_209b16
	lea ($d000).w,a1
	bsr.s sub_209afa
	bne.s loc_209b18
loc_209b16:
	rts
loc_209b18:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2022fa).l
	.incbin 39754, 834
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209e9a(pc,d0.w),d1
	jmp dat_209e9a(pc,d1.w)
dat_209e9a:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209ea4:
	.incbin 40612, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209efc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209ef4
	moveq #$0,d1
	bra.s loc_209efc
loc_209ef4:
	cmpi.w #$3,d1
	bcs.s loc_209efc
	moveq #$2,d1
loc_209efc:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209f18
	moveq #$6,d1
loc_209f18:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209ea4).l,a1
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
	beq.s loc_209f68
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209f60
	moveq #$0,d0
	bra.s loc_209f68
loc_209f60:
	cmpi.w #$3,d0
	bcs.s loc_209f68
	moveq #$2,d0
loc_209f68:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a036
	dbf d0,loc_209f68
	bclr.b #$7,(a2)
	bra.s loc_209fbe
loc_209f7a:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209fa6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209f9e
	moveq #$0,d0
	bra.s loc_209fa6
loc_209f9e:
	cmpi.w #$3,d0
	bcs.s loc_209fa6
	moveq #$2,d0
loc_209fa6:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a036
	dbf d0,loc_209fa6
	bclr.b #$7,(a2)
	bsr.w sub_2078b6
	bne.w loc_20a042
loc_209fbe:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a308,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a014
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20a014
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20a014:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20a036:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209f7a
loc_20a042:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a068
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a060
	moveq #$0,d0
	bra.s loc_20a068
loc_20a060:
	cmpi.w #$3,d0
	bcs.s loc_20a068
	moveq #$2,d0
loc_20a068:
	lea $1(a2),a3
loc_20a06c:
	btst.b #$0,-(a3)
	bne.w sub_203928
	dbf d0,loc_20a06c
	tst.b $1(a0)
	bmi.s loc_20a09c
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20a116
loc_20a09c:
	tst.w ($ff190e).l
	bne.s loc_20a0ac
	move.b ($ff1913).l,$1a(a0)
loc_20a0ac:
	bra.w sub_20387c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a11a
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a0fc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a0f4
	moveq #$0,d1
	bra.s loc_20a0fc
loc_20a0f4:
	cmpi.w #$3,d1
	bcs.s loc_20a0fc
	moveq #$2,d1
loc_20a0fc:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a300).l,a1
	bsr.w sub_205e06
	bra.w sub_20387c
loc_20a116:
	bra.w sub_203928

sub_20a11a:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a16a
	bset.b #$1,($ff150d).l
	beq.s loc_20a154
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a16a
	bset.b #$2,($ff150d).l
	bne.s loc_20a16a
loc_20a154:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205dc6).l
loc_20a16a:
	jmp (sub_2022fa).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a17e(pc,d0.w),d1
	jmp dat_20a17e(pc,d1.w)
dat_20a17e:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_20a19a
	move.w d0,d5
loc_20a19a:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_20a1aa
loc_20a1a2:
	bsr.w sub_2078a0
	bne.w loc_20a260
loc_20a1aa:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20a308,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a208
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20a208
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20a208:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_20a250
	move.w d4,d0
	jsr (sub_2007fe).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_20a250
	subi.w #$80,d4
	bcc.s loc_20a250
	move.w #$288,d4
loc_20a250:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_20a1a2
loc_20a260:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_2022fa).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203826
	addi.w #$18,$12(a0)
	bmi.s loc_20a2c0
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20a2c0
	jsr (sub_206b84).l
	tst.w d1
	bpl.s loc_20a2c0
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20a2c0:
	tst.b ($ff1916).l
	beq.s loc_20a2fc
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a2fc
	bra.w sub_20387c
	.incbin 41690, 34
loc_20a2fc:
	bra.w sub_203928
dat_20a300:
	.incbin 41728, 402
loc_20a492:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4c0(pc,d0.w),d0
	jsr dat_20a4c0(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a4be
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a4b8
	btst.b #$0,($ff1505).l
	bne.s loc_20a4be
loc_20a4b8:
	jmp (sub_20387c).l
loc_20a4be:
	rts
dat_20a4c0:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20aa9a,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a4f4
	move.b #$13,$1a(a0)
loc_20a4f4:
	rts
loc_20a4f6:
	tst.b ($ff0f01).l
	beq.s loc_20a504
	jmp (sub_203928).l
loc_20a504:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a492
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a528(pc,d0.w),d0
	jsr dat_20a528(pc,d0.w)
	jsr (sub_20387c).l
	jmp (loc_2078d6).l
dat_20a528:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aa9a,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a576
	tst.b $29(a0)
	bne.s loc_20a576
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a576:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a642
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a59e
	addq.b #$2,$1a(a0)
loc_20a59e:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a5b2
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a5b2:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a618
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a5e4
	tst.b $29(a0)
	beq.s loc_20a5dc
	tst.b ($ff1956).l
	beq.s loc_20a618
	bra.s loc_20a5e4
loc_20a5dc:
	tst.b ($ff1956).l
	bne.s loc_20a618
loc_20a5e4:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a642
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a612
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a612:
	jsr (sub_205dc6).l
loc_20a618:
	rts
	.incbin 42522, 40

sub_20a642:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a67a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a672
	moveq #$0,d1
	bra.s loc_20a67a
loc_20a672:
	cmpi.w #$3,d1
	bcs.s loc_20a67a
	moveq #$2,d1
loc_20a67a:
	add.w d1,d0
	rts

sub_20a67e:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a6a0
	tst.b ($ff1956).l
	beq.s loc_20a698
	tst.b $29(a0)
	bne.s loc_20a6a0
	rts
loc_20a698:
	tst.b $29(a0)
	beq.s loc_20a6a0
	rts
loc_20a6a0:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_209462).l
	tst.b $28(a0)
	bne.s loc_20a6c2
	tst.b ($ff0f01).l
	beq.s loc_20a6c2
	jmp (loc_2078d6).l
loc_20a6c2:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a4f6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a6da(pc,d0.w),d1
	jmp dat_20a6da(pc,d1.w)
dat_20a6da:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aa9a,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a724
	tst.b $29(a0)
	bne.s loc_20a724
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a724:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a642
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a750
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a750:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a7aa
	move.b $25(a0),d0
	beq.s loc_20a78a
	bsr.w sub_2037c4
	jsr (sub_206b84).l
	tst.w d1
	bpl.w loc_20a798
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a798
loc_20a78a:
	tst.b $1(a0)
	bpl.s loc_20a798
	lea ($d000).w,a1
	bsr.w sub_20a67e
loc_20a798:
	tst.w ($ff190e).l
	bne.s loc_20a7aa
	lea (dat_20aa12).l,a1
	bsr.w sub_205e06
loc_20a7aa:
	bsr.w sub_20387c
	jmp (loc_2078d6).l
	.incbin 42932, 606
dat_20aa12:
	.incbin 43538, 586
loc_20ac5c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac70(pc,d0.w),d0
	jsr dat_20ac70(pc,d0.w)
	jmp (sub_20387c).l
dat_20ac70:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20acb0,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20acaa
	jmp (sub_203928).l
loc_20acaa:
	subq.w #$2,$c(a0)
	rts
	.incbin 44208, 82
	tst.b $28(a0)
	bmi.w loc_20ac5c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ad18(pc,d0.w),d0
	jmp dat_20ad18(pc,d0.w)
dat_20ad18:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20adb2,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20ad48
	move.b #$3,$1a(a0)
	bra.s loc_20ad68
loc_20ad48:
	tst.w ($ff1588).l
	beq.s loc_20ad56
	move.b #$2,$1a(a0)
loc_20ad56:
	tst.b $28(a0)
	beq.s loc_20ad68
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20ad68:
	tst.b $28(a0)
	bne.s loc_20adac
	tst.b $29(a0)
	beq.s loc_20ad98
	tst.w ($ff1512).l
	beq.s loc_20ad84
	bclr.b #$5,$2(a0)
	bra.s loc_20adac
loc_20ad84:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20adac
	eori.b #$20,$2(a0)
	bra.s loc_20adac
loc_20ad98:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20adac
	move.b #$2,$1a(a0)
loc_20adac:
	jmp (sub_20387c).l
	.incbin 44466, 168

sub_20ae5a:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ae76
	move.l d1,(a3)
loc_20ae76:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20aea0
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205dc6).l
loc_20aea0:
	rts
loc_20aea2:
	tst.w ($ff1588).l
	beq.s loc_20aef8
	bsr.w sub_20b0f4
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
	lea (dat_20b254).l,a2
	moveq #$2,d6
	bsr.w sub_20b2ac
	bra.w loc_20af52
loc_20aef8:
	tst.b ($ff1511).l
	beq.s loc_20af1c
	bpl.s loc_20af06
	bsr.w sub_20b09e
loc_20af06:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b18e
loc_20af1c:
	tst.b ($ff150f).l
	beq.s loc_20af52
	bpl.s loc_20af2a
	bsr.w sub_20b08a
loc_20af2a:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20af4e
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20af4e:
	bsr.w sub_20b184
loc_20af52:
	tst.w ($ff1588).l
	bne.w loc_20affe
	tst.b ($ff1510).l
	beq.w loc_20affe
	tst.w ($f63a).w
	bne.w loc_20affe
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b05c
	tst.b ($f7cc).w
	bne.s loc_20afa8
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20afa8
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20afa8
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20afa8
	move.b #$9,(a1)
loc_20afa8:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b29a
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b2a4
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20affa
	move.w #$63,d1
loc_20affa:
	bsr.w sub_20b2a4
loc_20affe:
	tst.b ($ff150e).l
	beq.s loc_20b010
	clr.b ($ff150e).l
	bsr.w sub_20b27a
loc_20b010:
	tst.b ($f7d6).w
	beq.s loc_20b05a
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b030
	move.l #$6d400001,d0
loc_20b030:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b112
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b050
	move.l #$6e800001,d0
loc_20b050:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b112
loc_20b05a:
	rts
loc_20b05c:
	btst.b #$7,($ff152e).l
	bne.s loc_20b088
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2070c8
	move.b #$1,($ff150c).l
loc_20b088:
	rts

sub_20b08a:
	move.l #$73600002,($c00004).l
	lea dat_20b0f0(pc),a2
	move.w #$2,d2
	bra.s loc_20b0ba

sub_20b09e:
	lea ($c00000).l,a6
	bsr.w sub_20b27a
	move.l #$70600002,($c00004).l
	lea dat_20b0e8(pc),a2
	move.w #$6,d2
loc_20b0ba:
	lea (dat_2330bc).l,a1
loc_20b0c0:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b0dc
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b0d0:
	move.l (a3)+,(a6)
	dbf d1,loc_20b0d0
loc_20b0d6:
	dbf d2,loc_20b0c0
	rts
loc_20b0dc:
	move.l #$0,(a6)
	dbf d1,loc_20b0dc
	bra.s loc_20b0d6
dat_20b0e8:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b0f0:
	dc.b $ff,$ff,$00,$00

sub_20b0f4:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b270
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b270

sub_20b112:
	lea (dat_20b24c).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b122:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b126:
	sub.l d3,d1
	bcs.s loc_20b12e
	addq.w #$1,d2
	bra.s loc_20b126
loc_20b12e:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b138
	move.w #$1,d4
loc_20b138:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b144
	tst.w d6
	bne.s loc_20b176
loc_20b144:
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
loc_20b16a:
	addi.l #$400000,d0
	dbf d6,loc_20b122
	rts
loc_20b176:
	moveq #$f,d5
loc_20b178:
	move.l #$0,(a6)
	dbf d5,loc_20b178
	bra.s loc_20b16a

sub_20b184:
	lea (dat_20b254).l,a2
	moveq #$2,d6
	bra.s loc_20b196

sub_20b18e:
	lea (dat_20b248).l,a2
	moveq #$5,d6
loc_20b196:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b19e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b1a2:
	sub.l d3,d1
	bcs.s loc_20b1aa
	addq.w #$1,d2
	bra.s loc_20b1a2
loc_20b1aa:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b1b4
	move.w #$1,d4
loc_20b1b4:
	tst.w d4
	beq.s loc_20b1e2
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
loc_20b1e2:
	addi.l #$400000,d0
	dbf d6,loc_20b19e
	rts
	.incbin 45550, 90
dat_20b248:
	dc.b $00,$01,$86,$a0
dat_20b24c:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b254:
	dc.b $00,$00,$00,$64
dat_20b258:
	dc.b $00,$00,$00,$0a
dat_20b25c:
	dc.b $00,$00,$00,$01
dat_20b260:
	.incbin 45664, 16

sub_20b270:
	moveq #$3,d6
	lea (dat_20b260).l,a2
	bra.s sub_20b2ac

sub_20b27a:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b290
	moveq #$9,d1
loc_20b290:
	lea (dat_20b25c).l,a2
	moveq #$0,d6
	bra.s sub_20b2ac

sub_20b29a:
	lea (dat_20b25c).l,a2
	moveq #$0,d6
	bra.s sub_20b2ac

sub_20b2a4:
	lea (dat_20b258).l,a2
	moveq #$1,d6

sub_20b2ac:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b2b4:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b2b8:
	sub.l d3,d1
	bcs.s loc_20b2c0
	addq.w #$1,d2
	bra.s loc_20b2b8
loc_20b2c0:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b2ca
	move.w #$1,d4
loc_20b2ca:
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
	dbf d6,loc_20b2b4
	rts
	.incbin 45824, 2626
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bd50(pc,d0.w),d0
	jmp dat_20bd50(pc,d0.w)
dat_20bd50:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205dc6).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20be26,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20bdac
	tst.b ($ff1508).l
	beq.s loc_20bdb4
	move.l #$20be2a,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20bdb4
loc_20bdac:
	tst.b ($ff1508).l
	bne.s loc_20bdc4
loc_20bdb4:
	bset.b #$7,($ff156b).l
	jsr (sub_2078a0).l
	beq.s loc_20bdca
loc_20bdc4:
	jmp (sub_203928).l
loc_20bdca:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20be0c
	move.w #$6e,d0
	jmp (sub_205dc6).l
loc_20be0c:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20be20
	bge.s loc_20be1c
	neg.w d0
loc_20be1c:
	add.w d0,$8(a0)
loc_20be20:
	jmp (sub_20387c).l
	.incbin 48678, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be6c(pc,d0.w),d0
	jmp dat_20be6c(pc,d0.w)
dat_20be6c:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c56a,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c52a).l,a2
loc_20beba:
	jsr (sub_2078a0).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c56a,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20bf0c
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20bf0c:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20beba
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bf34
	bge.s loc_20bf2a
	neg.w d0
loc_20bf2a:
	add.w d0,$a(a0)
	jmp (sub_20387c).l
loc_20bf34:
	addq.b #$4,$24(a0)
	jmp (sub_20387c).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bf58
	bge.s loc_20bf4e
	neg.w d0
loc_20bf4e:
	add.w d0,$8(a0)
	jmp (sub_20387c).l
loc_20bf58:
	addq.b #$4,$24(a0)
	jmp (sub_20387c).l
	tst.b $1e(a0)
	beq.s loc_20bf72
	subq.b #$1,$1e(a0)
	jmp (sub_20387c).l
loc_20bf72:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bf8c
	bge.s loc_20bf82
	neg.w d0
loc_20bf82:
	add.w d0,$a(a0)
	jmp (sub_20387c).l
loc_20bf8c:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2024c4).l
	tst.b $1e(a0)
	beq.s loc_20bfae
	subq.b #$1,$1e(a0)
	jmp (sub_20387c).l
loc_20bfae:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bfc8
	bge.s loc_20bfbe
	neg.w d0
loc_20bfbe:
	add.w d0,$8(a0)
	jmp (sub_20387c).l
loc_20bfc8:
	jmp (sub_203928).l
	tst.l ($f680).w
	bne.s loc_20bfe2
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203928).l
loc_20bfe2:
	rts
	.incbin 49124, 1350
dat_20c52a:
	.incbin 50474, 328

sub_20c672:
	rts
	.incbin 50804, 1138
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cb04(pc,d0.w),d0
	jsr dat_20cb04(pc,d0.w)
	jsr (sub_20387c).l
	move.w $36(a0),d0
	jmp (loc_2078da).l
dat_20cb04:
	dc.b $00,$16,$00,$4c
loc_20cb08:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20945c).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20cbe8,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$18,$19(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20cb60(pc,d0.w),d0
	jmp dat_20cb60(pc,d0.w)
dat_20cb60:
	dc.b $00,$2a,$00,$4a,$00,$08,$00,$1a
	bsr.w sub_20cbcc
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cb08
	bsr.w sub_20cbcc
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cb08
	move.l $8(a0),-(a7)
	bsr.w sub_20cbcc
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cb08
	move.l $8(a0),-(a7)
	bsr.w sub_20cbcc
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cb08

sub_20cbcc:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_2007fe).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
	.incbin 52200, 744

sub_20ced0:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_209462).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20d01e,$4(a0)
	move.w $c(a0),$32(a0)
	move.w #$3a0,$2(a0)
	move.b #$20,$16(a0)
	move.b #$8,$19(a0)
	cmpi.b #$2,($ff1507).l
	bne.s loc_20cf34
	move.w #$330,$2(a0)
	move.b #$20,$16(a0)
	move.b #$20,$19(a0)
	move.b #$1,$1a(a0)
loc_20cf34:
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b d0,$30(a0)
	move.b #$ff,$3c(a0)
	moveq #$0,d0
	move.b $30(a0),d0
	lea ($f7e0).w,a1
	btst.b #$7,$0(a1,d0.w)
	beq.s loc_20cf5c
	clr.b $3c(a0)
loc_20cf5c:
	lea ($d000).w,a1
	move.w $8(a1),$38(a0)
	move.w $c(a1),$3e(a0)
	bsr.w sub_20cfe0
	bsr.w sub_20ced0
	cmpi.b #$40,$3a(a0)
	bne.s loc_20cf80
	addq.b #$2,$24(a0)
loc_20cf80:
	rts
	.incbin 53122, 94

sub_20cfe0:
	bsr.w sub_20cff6
	moveq #$0,d0
	move.b $3a(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts

sub_20cff6:
	tst.b $3c(a0)
	beq.s loc_20d008
	subq.b #$4,$3a(a0)
	bcc.s loc_20d01c
	clr.b $3a(a0)
	bra.s loc_20d01c
loc_20d008:
	addq.b #$4,$3a(a0)
	move.b $3a(a0),d0
	cmpi.b #$40,d0
	bcs.s loc_20d01c
	move.b #$40,$3a(a0)
loc_20d01c:
	rts
	.incbin 53278, 476
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d214(pc,d0.w),d0
	jsr dat_20d214(pc,d0.w)
	jsr (sub_20387c).l
	jmp (loc_2078d6).l
dat_20d214:
	dc.b $00,$24,$00,$60,$00,$b4,$00,$cc
	dc.b $01,$18
loc_20d21e:
	tst.b $1a(a0)
	beq.s loc_20d226
	rts
loc_20d226:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_209462).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4410,$2(a0)
	move.l #$20d368,$4(a0)
	move.b #$4,$19(a0)
	move.b #$20,$16(a0)
	tst.b $28(a0)
	beq.s loc_20d274
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d274:
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d284
	neg.w d0
loc_20d284:
	cmpi.w #$40,d0
	bcc.s loc_20d2c4
	move.w $8(a0),d1
	move.w $8(a1),d0
	tst.b $28(a0)
	bne.s loc_20d2a0
	move.w $8(a0),d0
	move.w $8(a1),d1
loc_20d2a0:
	sub.w d1,d0
	bcs.s loc_20d2c4
	cmpi.w #$40,d0
	bcc.s loc_20d2c4
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20d2c4
	move.w #$a4,d0
	jsr (sub_2022fa).l
loc_20d2c4:
	bra.w loc_20d21e
	.incbin 53960, 204
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d3b2(pc,d0.w),d0
	jsr dat_20d3b2(pc,d0.w)
	jsr (sub_20387c).l
	move.w $36(a0),d0
	jmp (loc_2078da).l
dat_20d3b2:
	dc.b $00,$12,$00,$48

sub_20d3b6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20945c).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20d67e,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20d5e4
	lea dat_20d674(pc),a1
	jsr (sub_205e06).l
	lea ($d000).w,a1
	bsr.w sub_20d3b6
	beq.s loc_20d458
	bset.b #$0,$22(a1)
	andi.b #$fc,$1(a1)
	ori.b #$1,$1(a1)
	bset.b #$0,$2c(a1)
	bne.s loc_20d44e
	move.b #$2d,$1c(a1)
	moveq #$0,d0
	move.b d0,$2b(a1)
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d44a
	neg.w d0
	move.b #$80,$2b(a1)
loc_20d44a:
	move.b d0,$39(a1)
loc_20d44e:
	cmpi.b #$6,$24(a1)
	bcc.s loc_20d458
	bra.s loc_20d478
loc_20d458:
	rts
	.incbin 54362, 30
loc_20d478:
	addq.b #$4,$2b(a1)
	move.b $2b(a1),d0
	jsr (sub_2007fe).l
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
	move.b dat_20d4d6(pc,d0.w),$1b(a1)
	andi.b #$3f,d1
	bne.s loc_20d4b8
	addq.b #$1,$39(a1)
loc_20d4b8:
	move.w ($f604).w,($f602).w
	cmpi.b #$1,$0(a1)
	beq.s loc_20d4cc
	move.w ($f606).w,($f602).w
loc_20d4cc:
	bsr.w sub_20d4e6
	bra.w loc_20d534
	dc.b $4e,$75
dat_20d4d6:
	.incbin 54486, 16

sub_20d4e6:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d512
	btst.b #$2,($f602).w
	beq.s loc_20d4fe
	addq.b #$1,$39(a1)
	bra.s loc_20d532
loc_20d4fe:
	btst.b #$3,($f602).w
	beq.s loc_20d532
	subq.b #$1,$39(a1)
	bcc.s loc_20d532
	clr.b $39(a1)
	bra.s loc_20d532
loc_20d512:
	btst.b #$3,($f602).w
	beq.s loc_20d520
	addq.b #$1,$39(a1)
	bra.s loc_20d532
loc_20d520:
	btst.b #$2,($f602).w
	beq.s loc_20d532
	subq.b #$1,$39(a1)
	bcc.s loc_20d532
	clr.b $39(a1)
loc_20d532:
	rts
loc_20d534:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20d5da
	clr.b $2c(a1)
	move.w #$680,d2
	moveq #$0,d0
	move.b $26(a1),d0
	subi.b #$40,d0
	jsr (sub_2007fe).l
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
	beq.s loc_20d594
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d5a0
loc_20d594:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
loc_20d5a0:
	btst.b #$2,$22(a1)
	bne.s loc_20d5dc
	tst.b ($ff195b).l
	beq.s loc_20d5be
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d5ce
loc_20d5be:
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
loc_20d5ce:
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
loc_20d5da:
	rts
loc_20d5dc:
	bset.b #$4,$22(a1)
	rts

sub_20d5e4:
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20d5f4(pc,d0.w),d0
	jmp dat_20d5f4(pc,d0.w)
dat_20d5f4:
	.incbin 54772, 38
	move.l $8(a0),-(a7)
	bsr.w sub_20d658
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts
	move.l $8(a0),-(a7)
	bsr.w sub_20d658
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts

sub_20d658:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_2007fe).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
dat_20d674:
	.incbin 54900, 118
	jsr (sub_20fcee).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d70a(pc,d0.w),d0
	jsr dat_20d70a(pc,d0.w)
	jsr (sub_20387c).l
	jmp (loc_2078d6).l
dat_20d70a:
	dc.b $00,$08,$00,$8c,$01,$08,$01,$68
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$2438,$2(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.l #$70000,$2e(a0)
	move.l #loc_206df0,$36(a0)
	move.w #$fff0,$34(a0)
	move.b #$1,$1a(a0)
	bsr.w sub_20d906
	movea.l #$20d928,a1
	move.l #$ffff6000,d0
	move.b #$7,d1
	tst.b $28(a0)
	beq.s loc_20d77a
	movea.l #$20d94c,a1
	move.l #$ffff8000,d0
	move.b #$3,d1
loc_20d77a:
	move.l a1,$4(a0)
	move.l d0,$2a(a0)
	move.l #$70000,$2e(a0)
	move.b d1,$33(a0)
	move.b d1,$32(a0)
	addq.b #$1,$32(a0)
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206b84).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20d7d0
	tst.w $3e(a0)
	bpl.w loc_20d8d2
	cmp.w $3e(a0),d1
	ble.w loc_20d8d2
	bra.s loc_20d7f2
loc_20d7d0:
	tst.w $3e(a0)
	bmi.s loc_20d7f2
	addi.l #$2000,$2e(a0)
	cmpi.l #$70000,$2e(a0)
	blt.s loc_20d7f0
	move.l #$70000,$2e(a0)
loc_20d7f0:
	rts
loc_20d7f2:
	addq.b #$2,$24(a0)
	move.w $3e(a0),d0
	add.w d0,$c(a0)
	move.w #$1,d0
	tst.b $28(a0)
	beq.s loc_20d80c
	move.w #$14,d0
loc_20d80c:
	move.w d0,$3a(a0)
	rts
	tst.b $28(a0)
	beq.s loc_20d842
	move.w #$7,d6
	move.w $3a(a0),d0
	cmpi.w #$6,d0
	beq.s loc_20d83a
	cmpi.w #$b,d0
	beq.s loc_20d838
	cmpi.w #$f,d0
	beq.s loc_20d83a
	cmpi.w #$12,d0
	bne.s loc_20d842
loc_20d838:
	neg.w d6
loc_20d83a:
	add.w d6,$c(a0)
	bsr.w sub_20d906
loc_20d842:
	subq.w #$1,$3a(a0)
	bne.s loc_20d870
	addq.b #$2,$24(a0)
	subq.w #$7,$c(a0)
	bsr.w sub_20d906
	move.l #$fffa0000,d0
	tst.b $28(a0)
	beq.s loc_20d866
	move.l #$fffb0000,d0
loc_20d866:
	move.l d0,$2e(a0)
	subq.b #$1,$32(a0)
	bmi.s loc_20d8d2
loc_20d870:
	rts
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206d1a).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20d8a8
	tst.w $3e(a0)
	bpl.s loc_20d8d2
	cmp.w $3e(a0),d1
	ble.s loc_20d8d2
	bra.s loc_20d8ba
loc_20d8a8:
	tst.w $3e(a0)
	bmi.s loc_20d8ba
	addi.l #$2000,$2e(a0)
	bpl.s loc_20d8c6
	rts
loc_20d8ba:
	move.w $3e(a0),d0
	sub.w d0,$c(a0)
	clr.l $2e(a0)
loc_20d8c6:
	subq.b #$4,$24(a0)
	subi.w #$b,$c(a0)
	bra.s sub_20d906
loc_20d8d2:
	move.b $33(a0),$32(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $2a(a0)
	neg.w $34(a0)
	lea (loc_206df0).l,a1
	lea (dat_206c4e).l,a2
	cmpa.l $36(a0),a1
	bne.s loc_20d900
	exg a1,a2
loc_20d900:
	move.l a1,$36(a0)
	rts

sub_20d906:
	tst.b $1a(a0)
	beq.s loc_20d914
	moveq #$0,d0
	moveq #$13,d1
	moveq #$2f,d2
	bra.s loc_20d91a
loc_20d914:
	moveq #$1,d0
	moveq #$1c,d1
	moveq #$30,d2
loc_20d91a:
	move.b d0,$1a(a0)
	move.b d1,$16(a0)
	move.b d2,$20(a0)
	rts
	.incbin 55592, 72
	tst.b $28(a0)
	bmi.w loc_20dd80
	jsr (sub_20fcee).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d9a2(pc,d0.w),d0
	jsr dat_20d9a2(pc,d0.w)
	lea dat_20dc0e(pc),a1
	jsr (sub_205e06).l
	jsr (sub_20387c).l
	jmp (loc_2078d6).l
dat_20d9a2:
	.incbin 55714, 20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.w #$a457,$2(a0)
	move.b #$31,$20(a0)
	move.w #$fff8,$30(a0)
	lea dat_20dc1a(pc),a1
	move.l #$ffff0000,d0
	tst.b $28(a0)
	beq.s loc_20da04
	lea dat_20dd02(pc),a1
	move.l #$ffff8000,d0
loc_20da04:
	move.l a1,$4(a0)
	move.l d0,$2c(a0)
	addq.b #$2,$24(a0)
	move.w #$200,d0
	tst.b $28(a0)
	beq.s loc_20da1e
	move.w #$400,d0
loc_20da1e:
	move.w d0,$2a(a0)
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	tst.b $28(a0)
	bne.s loc_20da4c
	tst.w $32(a0)
	beq.s loc_20da3c
	subq.w #$1,$32(a0)
	bra.s loc_20da4c
loc_20da3c:
	lea ($d000).w,a1
	bsr.s sub_20da5a
	beq.s loc_20da4c
	move.b #$c,$24(a0)
	rts
loc_20da4c:
	subq.w #$1,$2a(a0)
	bpl.s loc_20da58
	move.b #$6,$24(a0)
loc_20da58:
	rts

sub_20da5a:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20daa4
	move.w $8(a1),d0
	sub.w $8(a0),d0
	spl d1
	subi.w #$ff88,d0
	subi.w #$f0,d0
	bcc.s loc_20daa4
	btst.b #$0,$1(a0)
	sne d2
	eor.b d1,d2
	beq.s loc_20daa0
	neg.l $2c(a0)
	neg.w $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20daa0:
	moveq #$ffffffff,d0
	rts
loc_20daa4:
	moveq #$0,d0
	rts
	.incbin 55976, 358
dat_20dc0e:
	dc.b $00,$04,$00,$08,$01,$00,$01,$ff
	dc.b $01,$02,$03,$ff
dat_20dc1a:
	.incbin 56346, 232
dat_20dd02:
	.incbin 56578, 126
loc_20dd80:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dd9a(pc,d0.w),d0
	jsr dat_20dd9a(pc,d0.w)
	jsr (sub_20387c).l
	jmp (loc_2078d6).l
dat_20dd9a:
	.incbin 56730, 1052
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e1d0(pc,d0.w),d0
	jsr dat_20e1d0(pc,d0.w)
	jsr (sub_20387c).l
	jmp (loc_2078d6).l
dat_20e1d0:
	.incbin 57808, 198
	tst.b $29(a0)
	beq.s loc_20e2a4
	bmi.w loc_20e512
	bra.w loc_20e4f2
loc_20e2a4:
	jsr (sub_20fcee).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e2c4(pc,d0.w),d0
	jsr dat_20e2c4(pc,d0.w)
	jsr (sub_20387c).l
	jmp (loc_2078d6).l
dat_20e2c4:
	.incbin 58052, 18
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$16(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$2488,$2(a0)
	move.b #$34,$20(a0)
	addq.w #$8,$c(a0)
	move.w $c(a0),$34(a0)
	move.w $c(a0),$36(a0)
	addi.w #$5f,$36(a0)
	lea dat_20e59c(pc),a1
	tst.b $28(a0)
	beq.s loc_20e328
	lea dat_20e5f4(pc),a1
loc_20e328:
	move.l a1,$4(a0)
	jsr (sub_2078b6).l
	beq.s loc_20e33a
	jmp (sub_203928).l
loc_20e33a:
	move.b $0(a0),$0(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$20,$16(a1)
	move.b #$1,$17(a1)
	move.b #$1,$19(a1)
	move.w a0,$38(a1)
	addq.b #$2,$24(a0)
	move.b #$9,$1a(a0)
	move.w #$79,$2a(a0)
	subq.w #$1,$2a(a0)
	bne.s loc_20e3b4
	move.w #$79,$2a(a0)
	move.b #$2,d6
	lea ($d000).w,a1
	bsr.w sub_20e3b6
	bcs.s loc_20e3b0
	neg.b d6
loc_20e3b0:
	add.b d6,$24(a0)
loc_20e3b4:
	rts

sub_20e3b6:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$28,d0
	subi.w #$78,d0
	bcc.s loc_20e3d8
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$ff58,d0
	subi.w #$150,d0
loc_20e3d8:
	rts
	.incbin 58330, 280
loc_20e4f2:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	bne.s loc_20e50c
	cmpi.b #$1,$1b(a1)
	beq.s loc_20e50c
	jmp (sub_20387c).l
loc_20e50c:
	jmp (sub_203928).l
loc_20e512:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	beq.s loc_20e524
	jmp (sub_203928).l
loc_20e524:
	move.w $c(a1),d0
	sub.w $34(a1),d0
	subi.w #$18,d0
	asr.w #$3,d0
	bpl.s loc_20e536
	moveq #$0,d0
loc_20e536:
	move.b d0,$1a(a0)
	asl.w #$2,d0
	add.w $34(a1),d0
	addi.w #$10,d0
	move.w d0,$c(a0)
	jmp (sub_20387c).l
	.incbin 58702, 78
dat_20e59c:
	.incbin 58780, 88
dat_20e5f4:
	.incbin 58868, 274
	jsr (sub_20fd36).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20e828
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e726(pc,d0.w),d0
	jmp dat_20e726(pc,d0.w)
dat_20e726:
	.incbin 59174, 258
loc_20e828:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e836(pc,d0.w),d0
	jmp dat_20e836(pc,d0.w)
dat_20e836:
	.incbin 59446, 1214
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ed18(pc,d0.w),d0
	jsr dat_20ed18(pc,d0.w)
	jsr (sub_20387c).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20ed16
	jmp (loc_2078d6).l
loc_20ed16:
	rts
dat_20ed18:
	.incbin 60696, 1406
	move.b $28(a0),d0
	bpl.s loc_20f2a0
	bra.w loc_20f4de
loc_20f2a0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f2ba(pc,d0.w),d0
	jsr dat_20f2ba(pc,d0.w)
	jsr (sub_20387c).l
	jmp (loc_2078d6).l
dat_20f2ba:
	dc.b $00,$04,$01,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.l #$20f4d6,$4(a0)
	move.w #$3f8,$2(a0)
	move.w #$100,$2c(a0)
	move.b $28(a0),d0
	beq.s loc_20f2f8
	neg.w $2c(a0)
loc_20f2f8:
	jsr (sub_2078b6).l
	bne.w loc_20f3f6
	move.w a0,$3e(a1)
	move.w a1,$2e(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078b6).l
	bne.w loc_20f3f6
	move.w a0,$3e(a1)
	move.w a1,$30(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078b6).l
	bne.w loc_20f3f6
	move.w a0,$3e(a1)
	move.w a1,$32(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078b6).l
	bne.w loc_20f3f6
	move.w a0,$3e(a1)
	move.w a1,$34(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078b6).l
	bne.w loc_20f3f6
	move.w a0,$3e(a1)
	move.w a1,$36(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078b6).l
	bne.w loc_20f3f6
	move.w a0,$3e(a1)
	move.w a1,$38(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	bra.s loc_20f3fc
loc_20f3f6:
	jmp (sub_203928).l
loc_20f3fc:
	move.w $2c(a0),d0
	add.w d0,$2a(a0)
	move.w $2a(a0),d0
	lsr.w #$8,d0
	jsr (sub_2007fe).l
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
loc_20f4de:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f504(pc,d0.w),d0
	jsr dat_20f504(pc,d0.w)
	movea.w $3e(a0),a1
	cmpi.b #$2d,$0(a1)
	beq.s loc_20f4fe
	jmp (sub_203928).l
loc_20f4fe:
	jmp (sub_20387c).l
dat_20f504:
	dc.b $00,$04,$00,$28
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$20f53a,$4(a0)
	move.w #$3f8,$2(a0)
	move.b #$b9,$20(a0)
	move.w $2a(a0),$8(a0)
	move.w $2e(a0),$c(a0)
	rts
	.incbin 62778, 1972

sub_20fcee:
	tst.b ($ff156a).l
	beq.s loc_20fd34
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fd06
	tst.b $28(a0)
	beq.s loc_20fd34
loc_20fd06:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203928).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fd32
	move.w #$9e,d0
	jsr (sub_2022fa).l
loc_20fd32:
	addq.l #$4,a7
loc_20fd34:
	rts

sub_20fd36:
	tst.b $28(a0)
	bmi.s loc_20fd66
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fd56
	tst.b ($ff156d).l
	bne.s loc_20fd66
	addq.l #$4,a7
	jmp (loc_2078d6).l
loc_20fd56:
	tst.b ($ff156a).l
	bne.s loc_20fd66
	addq.l #$4,a7
	jmp (sub_203928).l
loc_20fd66:
	rts

sub_20fd68:
	jsr (sub_20667a).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fec4).l,a1
	move.w #$3f,d6
	bsr.w sub_20fe80
	bne.s loc_20fdaa
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$5640,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fdaa:
	lea (dat_20fed2).l,a1
	move.w #$1f,d6
	bsr.w sub_20fe80
	bne.s loc_20fdde
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$55c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fdde:
	lea (dat_20fe66).l,a1
	move.w #$1f,d6
	bsr.w sub_20fe14
	bne.s loc_20fe12
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$5540,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fe12:
	rts

sub_20fe14:
	subq.b #$1,(a2)
	bpl.s loc_20fe5a
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20fe24
	moveq #$0,d0
loc_20fe24:
	move.b d0,(a4)
	add.w d0,d0
	move.b $2(a1,d0.w),(a2)
	move.b $3(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	add.w d0,d0
	moveq #$0,d1
	move.b (a1),d1
	add.w d1,d1
	add.w d1,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fe48:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fe48
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fe5a:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fe66:
	.incbin 65126, 26

sub_20fe80:
	subq.b #$1,(a2)
	bpl.w loc_20feb8
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fe96
	moveq #$0,d0
loc_20fe96:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fea6:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fea6
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20feb8:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fec4:
	dc.b $04,$03,$00,$23,$3c,$0c,$00,$23
	dc.b $3d,$0c,$00,$23,$3e,$0c
dat_20fed2:
	dc.b $03,$02,$00,$23,$3b,$0c,$00,$23
	dc.b $3b,$8c
dat_20fedc:
	.incbin 65244, 16
dat_20feec:
	.incbin 65260, 65812
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
	.incbin 219126, 4996
dat_236b7a:
	.incbin 224122, 16834
dat_23ad3c:
	.incbin 240956, 21188
