; DEMO43C.MMD
; disassembled from the disc; code only, data comes from data/DEMO43C.MMD at build time
	.file "DEMO43C.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	.incbin 262, 24
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
	bsr.w sub_202472
	bsr.w sub_2023e8
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2013ba

sub_200184:
	tst.b ($ff1507).l
	bne.s loc_20018e
	rts
loc_20018e:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_20020e).l,a1
	lea (dat_20022c).l,a2
	bsr.w sub_2001c6
	lea (dat_200218).l,a1
	lea (dat_20022c).l,a2
	bsr.w sub_2001c6
	lea (dat_200222).l,a1
	lea (dat_20022c).l,a2
	bra.w sub_2001c6

sub_2001c6:
	subq.b #$1,(a5)
	bpl.s loc_2001fa
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
	bcs.s loc_2001e6
	moveq #$0,d0
loc_2001e6:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_2001fa:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
	dc.b $31,$04,$02,$00,$02,$01,$02,$02
	dc.b $02,$03
dat_20020e:
	dc.b $32,$04,$02,$01,$02,$02,$02,$03
	dc.b $02,$00
dat_200218:
	dc.b $33,$04,$02,$02,$02,$03,$02,$00
	dc.b $02,$01
dat_200222:
	dc.b $34,$04,$02,$03,$02,$00,$02,$01
	dc.b $02,$02
dat_20022c:
	dc.b $0c,$cc,$0c,$82,$0e,$a6,$0e,$ca

sub_200234:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200246:
	move.w d1,(a0)+
	dbf d0,loc_200246
	move.w #$15,d4
loc_200250:
	move.b #$12,($f62a).w
	bsr.w sub_200706
	bsr.s sub_200266
	bsr.w sub_202806
	dbf d4,loc_200250
	rts

sub_200266:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20027c:
	bsr.s sub_2002aa
	dbf d0,loc_20027c
	cmpi.b #$1,($ff1506).l
	bne.s loc_2002a8
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002a2:
	bsr.s sub_2002aa
	dbf d0,loc_2002a2
loc_2002a8:
	rts

sub_2002aa:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2002d2
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002c0
	move.w d1,(a0)+
	rts
loc_2002c0:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2002ce
	move.w d1,(a0)+
	rts
loc_2002ce:
	addq.w #$2,(a0)+
	rts
loc_2002d2:
	addq.w #$2,a0
	rts

sub_2002d6:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2002e0:
	move.b #$12,($f62a).w
	bsr.w sub_200706
	bsr.s sub_2002f6
	bsr.w sub_202806
	dbf d4,loc_2002e0
	rts

sub_2002f6:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200306:
	bsr.s sub_200324
	dbf d0,loc_200306
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20031c:
	bsr.s sub_200324
	dbf d0,loc_20031c
	rts

sub_200324:
	move.w (a0),d2
	beq.s loc_200350
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200334
	subq.w #$2,(a0)+
	rts
loc_200334:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200342
	subi.w #$20,(a0)+
	rts
loc_200342:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200350
	subi.w #$200,(a0)+
	rts
loc_200350:
	addq.w #$2,a0
	rts

sub_200354:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_20036e:
	move.w d1,(a0)+
	dbf d0,loc_20036e
	move.w #$15,d4
loc_200378:
	move.b #$12,($f62a).w
	bsr.w sub_200706
	bsr.s sub_20038e
	bsr.w sub_202806
	dbf d4,loc_200378
	rts

sub_20038e:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003a4:
	bsr.s sub_2003d2
	dbf d0,loc_2003a4
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003d0
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003ca:
	bsr.s sub_2003d2
	dbf d0,loc_2003ca
loc_2003d0:
	rts

sub_2003d2:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003fe
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2003ea
	cmp.w d2,d1
	bcs.s loc_2003ea
	move.w d1,(a0)+
	rts
loc_2003ea:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2003fa
	cmp.w d2,d1
	bcs.s loc_2003fa
	move.w d1,(a0)+
	rts
loc_2003fa:
	subq.w #$2,(a0)+
	rts
loc_2003fe:
	addq.w #$2,a0
	rts

sub_200402:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20040c:
	move.b #$12,($f62a).w
	bsr.w sub_200706
	bsr.s sub_200422
	bsr.w sub_202806
	dbf d4,loc_20040c
	rts

sub_200422:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200432:
	bsr.s sub_200450
	dbf d0,loc_200432
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200448:
	bsr.s sub_200450
	dbf d0,loc_200448
	rts

sub_200450:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_20048c
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200468
	addq.w #$2,(a0)+
	rts
loc_200468:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_20047a
	addi.w #$20,(a0)+
	rts
loc_20047a:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_20048c
	addi.w #$200,(a0)+
	rts
loc_20048c:
	addq.w #$2,a0
	rts

sub_200490:
	lea (dat_2004fc).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_2004a4:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004a4
	rts

sub_2004ac:
	lea (dat_2004fc).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2004bc:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004bc
	rts

sub_2004c4:
	lea (dat_2004fc).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$80,a3
	move.w (a1)+,d7
loc_2004d8:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004d8
	rts
	.incbin 1248, 28
dat_2004fc:
	.incbin 1276, 522

sub_200706:
	move.w #$2300,sr
loc_20070a:
	tst.b ($f62a).w
	bne.s loc_20070a
	rts

sub_200712:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_20072a(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_20072a(pc,d0.w),d0
	rts
dat_20072a:
	.incbin 1834, 640
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a06
	move.w d2,d4
	tst.w d3
	bpl.w loc_2009c4
	neg.w d3
loc_2009c4:
	tst.w d4
	bpl.w loc_2009cc
	neg.w d4
loc_2009cc:
	cmp.w d3,d4
	bcc.w loc_2009de
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a10(pc,d4.w),d0
	bra.s loc_2009e8
loc_2009de:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a10(pc,d3.w),d0
loc_2009e8:
	tst.w d1
	bpl.w loc_2009f4
	neg.w d0
	addi.w #$80,d0
loc_2009f4:
	tst.w d2
	bpl.w loc_200a00
	neg.w d0
	addi.w #$100,d0
loc_200a00:
	movem.l (a7)+,d3-d4
	rts
loc_200a06:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a10:
	.incbin 2576, 258
	btst.b #$3,$22(a0)
	beq.s loc_200b26
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b26:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200b48
	move.b $26(a0),d0
	bpl.s loc_200b42
	subq.b #$1,d0
loc_200b42:
	addi.b #$20,d0
	bra.s loc_200b54
loc_200b48:
	move.b $26(a0),d0
	bpl.s loc_200b50
	addq.b #$1,d0
loc_200b50:
	addi.b #$1f,d0
loc_200b54:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200dde
	cmpi.b #$80,d0
	beq.w loc_200d3c
	cmpi.b #$c0,d0
	beq.w loc_200ca0
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
	bsr.w sub_201068
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
	bsr.w sub_201068
	move.w (a7)+,d0
	bsr.w sub_200c74
	tst.w d1
	beq.s loc_200be2
	bpl.s loc_200be4
	cmpi.w #$fff2,d1
	blt.s loc_200c0a
	add.w d1,$c(a0)
loc_200be2:
	rts
loc_200be4:
	cmpi.w #$e,d1
	bgt.s loc_200bf0
loc_200bea:
	add.w d1,$c(a0)
	rts
loc_200bf0:
	tst.b $38(a0)
	bne.s loc_200bea
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c0a:
	rts
	.incbin 3084, 34
loc_200c2e:
	rts
	.incbin 3120, 68

sub_200c74:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200c82
	move.b ($f768).w,d2
	move.w d0,d1
loc_200c82:
	btst.l #$0,d2
	bne.s loc_200c8e
	move.b d2,$26(a0)
	rts
loc_200c8e:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200ca0:
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
	bsr.w sub_2011d8
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
	bsr.w sub_2011d8
	move.w (a7)+,d0
	bsr.w sub_200c74
	tst.w d1
	beq.s loc_200d14
	bpl.s loc_200d16
	cmpi.w #$fff2,d1
	blt.w loc_200c2e
	add.w d1,$8(a0)
loc_200d14:
	rts
loc_200d16:
	cmpi.w #$e,d1
	bgt.s loc_200d22
loc_200d1c:
	add.w d1,$8(a0)
	rts
loc_200d22:
	tst.b $38(a0)
	bne.s loc_200d1c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d3c:
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
	bsr.w sub_201068
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
	bsr.w sub_201068
	move.w (a7)+,d0
	bsr.w sub_200c74
	tst.w d1
	beq.s loc_200db6
	bpl.s loc_200db8
	cmpi.w #$fff2,d1
	blt.w loc_200c0a
	sub.w d1,$c(a0)
loc_200db6:
	rts
loc_200db8:
	cmpi.w #$e,d1
	bgt.s loc_200dc4
loc_200dbe:
	sub.w d1,$c(a0)
	rts
loc_200dc4:
	tst.b $38(a0)
	bne.s loc_200dbe
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200dde:
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
	bsr.w sub_2011d8
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
	bsr.w sub_2011d8
	move.w (a7)+,d0
	bsr.w sub_200c74
	tst.w d1
	beq.s loc_200e58
	bpl.s loc_200e5a
	cmpi.w #$fff2,d1
	blt.w loc_200c2e
	sub.w d1,$8(a0)
loc_200e58:
	rts
loc_200e5a:
	cmpi.w #$e,d1
	bgt.s loc_200e66
loc_200e60:
	sub.w d1,$8(a0)
	rts
loc_200e66:
	tst.b $38(a0)
	bne.s loc_200e60
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200e80:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200e96
	andi.w #$380,d0
loc_200e96:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200ef6
	bmi.s loc_200efa
	cmpi.b #$5,($ff1506).l
	beq.s loc_200ec6
	cmpi.b #$6,($ff1506).l
	bne.s loc_200ecc
loc_200ec6:
	andi.w #$7fff,$2(a0)
loc_200ecc:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200edc
	bclr.b #$6,$1(a0)
loc_200edc:
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
loc_200ef6:
	movea.l d1,a1
	rts
loc_200efa:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f62
	btst.b #$6,$1(a0)
	bne.s loc_200f28
	cmpi.b #$14,d1
	bne.w loc_20104c
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_20104c
loc_200f28:
	cmpi.b #$15,d1
	bne.s loc_200f36
	move.w #$60,d1
	bra.w loc_20104c
loc_200f36:
	cmpi.b #$1e,d1
	bne.s loc_200f44
	move.w #$61,d1
	bra.w loc_20104c
loc_200f44:
	cmpi.b #$1f,d1
	bne.s loc_200f52
	move.w #$62,d1
	bra.w loc_20104c
loc_200f52:
	cmpi.b #$32,d1
	bne.w loc_20104c
	move.w #$63,d1
	bra.w loc_20104c
loc_200f62:
	cmpi.b #$5,($ff1506).l
	bne.w loc_200fc8
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_200fb2
	cmpi.b #$6,d1
	beq.s loc_200fb2
	tst.b ($ff1956).l
	beq.w loc_20104c
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_200fc2
	cmpi.b #$3c,d1
	beq.s loc_200fc2
	cmpi.b #$37,d1
	beq.s loc_200fc2
	cmpi.b #$2f,d1
	beq.s loc_200fc2
	cmpi.b #$16,d1
	beq.s loc_200fc2
	bra.w loc_20104c
loc_200fb2:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_20104c
loc_200fc2:
	addq.b #$1,d1
	bra.w loc_20104c
loc_200fc8:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201038
	cmpi.b #$3,$0(a0)
	bcc.w loc_20104c
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20104c
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_200ffc
	move.w #$6a,d1
	bra.s loc_20104c
loc_200ffc:
	cmpi.b #$48,d1
	bne.s loc_201008
	move.w #$6b,d1
	bra.s loc_20104c
loc_201008:
	cmpi.b #$4a,d1
	bne.s loc_201014
	move.w #$6c,d1
	bra.s loc_20104c
loc_201014:
	cmpi.b #$10,d1
	bne.s loc_201020
	move.w #$6d,d1
	bra.s loc_20104c
loc_201020:
	cmpi.b #$63,d1
	bne.s loc_20102c
	move.w #$6e,d1
	bra.s loc_20104c
loc_20102c:
	cmpi.b #$43,d1
	bne.s loc_20104c
	move.w #$6f,d1
	bra.s loc_20104c
loc_201038:
	btst.b #$6,$1(a0)
	beq.s loc_20104c
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_20104c
	move.w #$51,d1
loc_20104c:
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

sub_201068:
	bsr.w sub_200e80
	cmpi.l #$210000,d1
	beq.s loc_201082
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201082
	btst.l d5,d4
	bne.s loc_201090
loc_201082:
	add.w a3,d2
	bsr.w sub_201128
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201090:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201082
	lea (dat_21d400).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2010b6
	not.w d1
	neg.b (a4)
loc_2010b6:
	btst.l #$c,d4
	beq.s loc_2010c6
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2010c6:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21d500).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2010e2
	neg.w d0
loc_2010e2:
	tst.w d0
	beq.s loc_201082
	bmi.s loc_2010fe
	cmpi.b #$10,d0
	beq.s loc_20111a
loc_2010ee:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2010fe:
	cmpa.w #$10,a3
	bne.s loc_20110e
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2010ee
loc_20110e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201082
loc_20111a:
	sub.w a3,d2
	bsr.w sub_201128
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201128:
	bsr.w sub_200e80
	cmpi.l #$210000,d1
	beq.s loc_201142
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201142
	btst.l d5,d4
	bne.s loc_201150
loc_201142:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201150:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201142
	lea (dat_21d400).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201176
	not.w d1
	neg.b (a4)
loc_201176:
	btst.l #$c,d4
	beq.s loc_201186
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201186:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21d500).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011a2
	neg.w d0
loc_2011a2:
	tst.w d0
	beq.s loc_201142
	bmi.s loc_2011b8
loc_2011a8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011b8:
	cmpa.w #$10,a3
	bne.s loc_2011c8
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011a8
loc_2011c8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201142
	not.w d1
	rts

sub_2011d8:
	bsr.w sub_200e80
	cmpi.l #$210000,d1
	beq.s loc_2011f2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011f2
	btst.l d5,d4
	bne.s loc_201200
loc_2011f2:
	add.w a3,d3
	bsr.w sub_201288
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201200:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011f2
	lea (dat_21d400).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20122e
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20122e:
	btst.l #$b,d4
	beq.s loc_201236
	neg.b (a4)
loc_201236:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21e500).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201252
	neg.w d0
loc_201252:
	tst.w d0
	beq.s loc_2011f2
	bmi.s loc_20126e
	cmpi.b #$10,d0
	beq.s loc_20127a
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20126e:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011f2
loc_20127a:
	sub.w a3,d3
	bsr.w sub_201288
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201288:
	bsr.w sub_200e80
	cmpi.l #$210000,d1
	beq.s loc_2012a2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012a2
	btst.l d5,d4
	bne.s loc_2012b0
loc_2012a2:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2012b0:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012a2
	lea (dat_21d400).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012de
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012de:
	btst.l #$b,d4
	beq.s loc_2012e6
	neg.b (a4)
loc_2012e6:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21e500).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201302
	neg.w d0
loc_201302:
	tst.w d0
	beq.s loc_2012a2
	bmi.s loc_201318
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201318:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012a2
	not.w d1
	rts

sub_201328:
	rts
	.incbin 4906, 144
loc_2013ba:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2013da
	tst.b ($ff0f01).l
	bne.s loc_2013da
	move.b #$1,($ff156a).l
loc_2013da:
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($ff158e).l
	bset.b #$1,($ff151c).l
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_201452
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2076ea
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201452
	move.b #$1,($ff1508).l
loc_201452:
	bset.b #$7,($f600).w
	bsr.w sub_2027f8
	tst.b ($ff156e).l
	bne.s loc_201478
	btst.b #$7,($ff152e).l
	beq.s loc_20149c
	bset.b #$0,($ff151d).l
	beq.s loc_201484
loc_201478:
	bsr.w sub_200402
	bclr.b #$0,($ff151d).l
loc_201484:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_20150c
	move.w #$0,($ff1502).l
	rts
loc_20149c:
	bset.b #$0,($ff151d).l
	beq.s loc_2014aa
	bsr.w sub_2002d6
loc_2014aa:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2014c6
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2014ee
loc_2014c6:
	tst.b ($ff1508).l
	bne.s loc_20150c
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2014ee:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2014f6:
	move.l #$0,(a1)+
	dbf d6,loc_2014f6
	move.b #$c,($f62a).w
	bsr.w sub_200706
	rts
loc_20150c:
	cmpi.w #$800,($f78e).w
	bne.s loc_20152a
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20152a:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201540
	btst.b #$7,($ff152e).l
	beq.s loc_201546
loc_201540:
	move.l #$eee0eee,d0
loc_201546:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20154e:
	move.l d0,(a1)+
	dbf d6,loc_20154e
loc_201554:
	move.b #$c,($f62a).w
	bsr.w sub_200706
	bsr.w sub_202806
	bne.s loc_201554
	tst.l ($f680).w
	bne.s loc_201554
	bsr.w sub_2019f2
	moveq #$0,d0
	lea (dat_20d212).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201580
	bsr.w sub_20290c
loc_201580:
	moveq #$1,d0
	bsr.w sub_20290c
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20159c:
	move.l d0,(a1)+
	dbf d1,loc_20159c
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2015ae:
	move.l d0,(a1)+
	dbf d1,loc_2015ae
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2015be:
	move.l d0,(a1)+
	dbf d1,loc_2015be
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2015ce:
	move.l d0,(a1)+
	dbf d1,loc_2015ce
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2015de:
	move.l d0,(a1)+
	dbf d1,loc_2015de
	move.w #$2700,sr
	move.l #$213600,($f78a).w
	move.w #$1,($ff1580).l
	move.w #$0,($f78e).w
	bsr.w sub_202514
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
	cmpi.b #$2,($ff1506).l
	bne.s loc_20167a
	move.w #$8014,(a6)
	moveq #$0,d0
	move.b ($ff1507).l,d0
	lsl.w #$3,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	add.w d1,d1
	add.w d1,d0
	lea (dat_201b08).l,a1
	move.w $0(a1,d0.w),d0
	move.w d0,($f646).w
	move.w d0,($f648).w
	move.w d0,($f64a).w
	clr.b ($f64d).w
	clr.b ($f64e).w
	move.b #$1,($f64c).w
loc_20167a:
	move.w #$1e,($ff150a).l
	move.w #$2300,sr
	moveq #$3,d0
	bsr.w sub_2004ac
	moveq #$3,d0
	bsr.w sub_200490
	bsr.w sub_202b6e
	bsr.w sub_202ca4
	bset.b #$2,($f754).w
	bsr.w sub_2035d2
	bsr.w sub_203584
	jsr (sub_201328).l
	bsr.w sub_201954
loc_2016b2:
	move.b #$c,($f62a).w
	bsr.w sub_200706
	bsr.w sub_202806
	bne.s loc_2016b2
	tst.l ($f680).w
	bne.s loc_2016b2
	bsr.w sub_201938
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201a42
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201716
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201716:
	move.b #$4,($d800).w
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201756
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201756:
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
	jsr (sub_20d20c).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2017e6
loc_2017e0:
	bsr.w sub_200354
	bra.s loc_2017f4
loc_2017e6:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2017e0
	bsr.w sub_200234
loc_2017f4:
	cmpi.b #$2,($ff1506).l
	bne.s loc_201804
	moveq #$0,d0
	bsr.w sub_2004c4
loc_201804:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201812:
	move.b #$8,($f62a).w
	bsr.w sub_200706
	tst.b ($f7cc).w
	bne.s loc_201830
	btst.b #$7,($f605).w
	beq.s loc_201830
	eori.b #$1,($f63a).w
loc_201830:
	btst.b #$0,($f63a).w
	beq.w loc_2018c4
	bsr.w sub_201d9c
	tst.w ($ff1580).l
	bne.s loc_2018a4
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20189c
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201812
	subq.b #$1,($ff1508).l
	bpl.s loc_20186a
	clr.b ($ff1508).l
loc_20186a:
	move.w #$e,d0
	jsr (sub_205ce2).l
	bsr.w sub_2076ea
	clr.b ($ff1522).l
	jsr (sub_20259a).l
	move.b #$1,($a01c3e).l
	jsr (sub_2025b6).l
	move.w #$1,($ff1502).l
	bra.s loc_2018aa
loc_20189c:
	andi.b #$70,d0
	beq.w loc_201812
loc_2018a4:
	clr.b ($ff1508).l
loc_2018aa:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	move.w #$800,($f78e).w
	bra.w loc_2013ba
loc_2018c4:
	bsr.w sub_201de2
	addq.w #$1,($ff1504).l
	jsr (sub_207700).l
	jsr (sub_2039d8).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2013ba
	tst.w ($ff1502).l
	bne.w loc_2013ba
	tst.w ($ff1906).l
	bne.s loc_20190c
	cmpi.b #$6,($d024).w
	bcs.s loc_20190c
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201910
loc_20190c:
	bsr.w sub_202ca4
loc_201910:
	bsr.w sub_201c78
	jsr (sub_203b82).l
	tst.w ($ff190e).l
	bne.s loc_201926
	bsr.w sub_200184
loc_201926:
	jsr (sub_20b126).l
	bsr.w sub_202806
	bsr.w sub_20195e
	bra.w loc_201812

sub_201938:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201950
	move.w #$78,$30(a1)
loc_201950:
	rts
	dc.b $4e,$75

sub_201954:
	move.l #$21f500,($f796).w
	rts

sub_20195e:
	subq.b #$1,($ff1910).l
	bpl.s loc_20197c
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_20197c:
	subq.b #$1,($ff1912).l
	bpl.s loc_20199a
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_20199a:
	subq.b #$1,($ff1914).l
	bpl.s loc_2019c2
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_2019c2
	move.b #$0,($ff1915).l
loc_2019c2:
	tst.b ($ff1916).l
	beq.s loc_2019f0
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_2019f0:
	rts

sub_2019f2:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a14
	cmpi.b #$2,d0
	bne.s loc_201a14
	add.b ($ff156a).l,d0
loc_201a14:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a2c(pc,d1.w),d0
	jmp (sub_205ce2).l
dat_201a2c:
	.incbin 6700, 22

sub_201a42:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_2382c2).l,a1
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
	.incbin 6822, 98
dat_201b08:
	.incbin 6920, 194
loc_201bca:
	move.w d1,($f648).w
	bra.s loc_201c40
	dc.b $70,$00
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201be6
	move.w #$5b0,d1
	bra.s loc_201bca
loc_201be6:
	cmpi.b #$1,d0
	bne.s loc_201c1e
	move.w #$530,d1
	cmpi.w #$c00,d2
	bcs.s loc_201c40
	move.w #$780,d1
	cmpi.w #$dc0,d2
	bcs.s loc_201c40
	move.w #$500,d1
	cmpi.w #$1380,d2
	bcc.s loc_201c40
	cmpi.w #$400,($d00c).w
	bcc.s loc_201c1c
	move.w #$3c0,d1
	cmpi.w #$1100,d2
	bcc.s loc_201c40
loc_201c1c:
	rts
loc_201c1e:
	move.w #$510,d1
	cmpi.w #$400,d2
	bcs.s loc_201c40
	move.w #$390,d1
	cmpi.w #$1600,d2
	bcs.s loc_201c40
	move.w #$410,d1
	cmpi.w #$1900,d2
	bcs.s loc_201c40
	move.w #$500,d1
loc_201c40:
	move.w d1,($f64a).w
	rts
	.incbin 7238, 50

sub_201c78:
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_201d98
	btst.b #$0,$2c(a1)
	bne.w loc_201d98
	tst.b (a1)
	beq.w loc_201d98
	tst.w ($ff1906).l
	bne.w loc_201d98
	moveq #$0,d0
	move.b ($ff1507).l,d0
	cmpi.b #$2,d0
	bcc.w loc_201d98
	lea (dat_20b11c).l,a2
loc_201cb6:
	move.w $8(a1),d0
	cmp.w (a2),d0
	bcs.w loc_201d7e
	cmp.w $4(a2),d0
	bcc.w loc_201d7e
	move.w $c(a1),d2
	cmp.w $2(a2),d2
	bcs.w loc_201d7e
	cmp.w $6(a2),d2
	bcc.w loc_201d7e
	move.b ($ff190d).l,d0
	andi.b #$3f,d0
	bne.s loc_201cec
	move.w #$d0,d0
loc_201cec:
	lea ($f7e0).w,a3
	moveq #$0,d0
	move.b $d(a2),d0
	cmpi.b #$1,$c(a2)
	bne.s loc_201d08
	btst.b #$6,$0(a3,d0.w)
	beq.w loc_201d98
loc_201d08:
	cmpi.b #$4,$24(a1)
	bcc.w loc_201d94
	move.b #$1,($f7c7).w
	clr.b $3c(a1)
	move.w $8(a2),$10(a1)
	move.w $a(a2),$12(a1)
	move.b #$f,$1c(a1)
	bset.b #$1,$22(a1)
	cmpi.b #$2,$c(a2)
	bne.s loc_201d4c
	btst.b #$5,$0(a3,d0.w)
	beq.s loc_201d4c
	neg.w $10(a1)
	neg.w $12(a1)
loc_201d4c:
	btst.b #$0,($f602).w
	beq.s loc_201d58
	subq.w #$1,$c(a1)
loc_201d58:
	btst.b #$1,($f602).w
	beq.s loc_201d64
	addq.w #$1,$c(a1)
loc_201d64:
	btst.b #$2,($f602).w
	beq.s loc_201d70
	subq.w #$1,$8(a1)
loc_201d70:
	btst.b #$3,($f602).w
	beq.s loc_201d7c
	addq.w #$1,$8(a1)
loc_201d7c:
	rts
loc_201d7e:
	adda.w #$e,a2
	tst.b (a2)
	bpl.w loc_201cb6
	tst.b ($f7c7).w
	beq.s loc_201d98
	move.b #$0,$1c(a1)
loc_201d94:
	clr.b ($f7c7).w
loc_201d98:
	rts
	dc.b $4e,$75

sub_201d9c:
	move.w #$ab,d0
	jsr (sub_202602).l
	bset.b #$7,($f63a).w
	bne.s loc_201de0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201dc6
loc_201dbc:
	move.w #$d5,d0
	jmp (sub_205ce2).l
loc_201dc6:
	tst.b ($ff151f).l
	bne.s loc_201dbc
	tst.b ($ff1520).l
	bne.s loc_201dbc
	move.w #$90,d0
	jmp (sub_205ce2).l
loc_201de0:
	rts

sub_201de2:
	bclr.b #$7,($f63a).w
	beq.s loc_201e1c
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201e02
loc_201df8:
	move.w #$d6,d0
	jmp (sub_205ce2).l
loc_201e02:
	tst.b ($ff151f).l
	bne.s loc_201df8
	tst.b ($ff1520).l
	bne.s loc_201df8
	move.w #$91,d0
	jmp (sub_205ce2).l
loc_201e1c:
	rts
	.incbin 7710, 82
loc_201e70:
	tst.b ($f63a).w
	bne.s loc_201e7e
	bsr.w sub_2023a8
	bsr.w sub_202396
loc_201e7e:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
	.incbin 7818, 94
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201f32
	.incbin 7950, 36
loc_201f32:
	move.w ($f624).w,(a5)
	jsr (sub_2025b6).l
	bra.w loc_201e70
	.incbin 8000, 82
	tst.b ($f64e).w
	bne.s loc_201fbe
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201fe2
loc_201fbe:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201fe2:
	move.w ($f624).w,(a5)
	move.w #$1,($f6fc).w
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
	bsr.w sub_205c04
	tst.b ($f767).w
	beq.s loc_20206c
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_20206c:
	tst.w ($ff190e).l
	bne.s loc_20207a
	jsr (sub_20d20c).l
loc_20207a:
	jsr (sub_2025b6).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	cmpi.b #$60,($f625).w
	bcc.s sub_2020b0
	move.b #$1,($f64f).w
	addq.l #$4,a7
	bra.w loc_201e70

sub_2020b0:
	bsr.w sub_203260
	bsr.w sub_202878
	jmp (loc_209650).l
	dc.b $4e,$75,$4e,$b9,$00,$20,$25,$9a
	dc.b $61,$00,$03,$3c
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
	jsr (sub_2025b6).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203260
	bra.w loc_20285c
	.incbin 8544, 16
	bsr.w sub_20225c
	cmpi.b #$1,($ff1903).l
	bne.s loc_202192
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_202192:
	move.w ($f624).w,(a5)
	bra.w loc_20285c
	.incbin 8602, 194

sub_20225c:
	jsr (sub_20259a).l
	bsr.w sub_202404
	tst.b ($f64e).w
	bne.s loc_202292
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_2022b6
loc_202292:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_2022b6:
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
	jmp (sub_2025b6).l
	.incbin 8964, 46
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.w #$8adf,$4(a1)
	movem.l (a7)+,a0-a1
	tst.b ($f64f).w
	bne.s loc_202384
	rte
loc_202384:
	clr.b ($f64f).w
	movem.l d0-d7/a0-a6,-(a7)
	bsr.w sub_2020b0
	movem.l (a7)+,d0-d7/a0-a6
	rte

sub_202396:
	tst.b ($d02a).w
	bne.s loc_2023a6
	tst.w ($f786).w
	beq.s loc_2023a6
	addq.w #$1,($f786).w
loc_2023a6:
	rts

sub_2023a8:
	tst.w ($f780).w
	beq.s loc_2023b2
	addq.w #$1,($f780).w
loc_2023b2:
	tst.w ($f782).w
	beq.s loc_2023bc
	addq.w #$1,($f782).w
loc_2023bc:
	rts
	.incbin 9150, 42

sub_2023e8:
	bsr.w sub_20259a
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2025b6

sub_202404:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202444
	movea.l ($f78a).w,a2
	tst.w ($ff1580).l
	beq.s loc_202442
	move.w ($f78e).w,d0
	cmpi.w #$800,d0
	bcc.s loc_202442
	move.w d0,d1
	add.w d0,d0
	move.w -$2(a0),d2
	andi.w #$80,d2
	move.w $0(a2,d0.w),-$2(a0)
	or.w d2,-$2(a0)
	addq.w #$1,d1
	move.w d1,($f78e).w
loc_202442:
	addq.w #$2,a1

sub_202444:
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

sub_202472:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2024ee).l,a2
	moveq #$12,d7
loc_202486:
	move.w (a2)+,(a0)
	dbf d7,loc_202486
	move.w (dat_2024f0).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2024ac:
	move.w d0,(a1)
	dbf d7,loc_2024ac
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2024de:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2024de
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2024ee:
	dc.b $80,$04
dat_2024f0:
	.incbin 9456, 36

sub_202514:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202536:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202536
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_202564:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202564
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202582:
	move.l d0,(a1)+
	dbf d1,loc_202582
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202592:
	move.l d0,(a1)+
	dbf d1,loc_202592
	rts

sub_20259a:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2025aa:
	btst.b #$0,($a11100).l
	bne.s loc_2025aa
	rts

sub_2025b6:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9668, 60

sub_202600:
	rts

sub_202602:
	tst.b ($f00b).w
	bne.s loc_20260e
	move.b d0,($f00b).w
	rts
loc_20260e:
	move.b d0,($f00c).w
	rts
	.incbin 9748, 70

sub_20265a:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20271c).l,a3
	lea ($c00000).l,a4
	bra.s loc_202676

sub_20266c:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_202732).l,a3
loc_202676:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202684
	adda.w #$a,a3
loc_202684:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202748
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2026a4
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2026a4:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2026f0
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2026cc
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2026cc:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2026da:
	lsr.w #$4,d0
loc_2026dc:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2026ea
	jmp (a3)

sub_2026e6:
	moveq #$0,d4
	moveq #$8,d3
loc_2026ea:
	dbf d0,loc_2026dc
	bra.s sub_2026a4
loc_2026f0:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2026fe
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2026fe:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2026da
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2026da
dat_20271c:
	.incbin 10012, 22
dat_202732:
	.incbin 10034, 22

sub_202748:
	move.b (a0)+,d0
loc_20274a:
	cmpi.b #$ff,d0
	bne.s loc_202752
	rts
loc_202752:
	move.w d0,d7
loc_202754:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_20274a
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
	bne.s loc_202782
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202754
loc_202782:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_20278e:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_20278e
	bra.s loc_202754

sub_20279a:
	movem.l a1-a2,-(a7)
	lea (dat_20d222).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2027b2:
	tst.l (a2)
	beq.s loc_2027ba
	addq.w #$6,a2
	bra.s loc_2027b2
loc_2027ba:
	move.w (a1)+,d0
	bmi.s loc_2027c6
loc_2027be:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2027be
loc_2027c6:
	movem.l (a7)+,a1-a2
	rts
	.incbin 10188, 44

sub_2027f8:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2027fe:
	clr.l (a2)+
	dbf d0,loc_2027fe
	rts

sub_202806:
	tst.l ($f680).w
	beq.s loc_20285a
	tst.w ($f6f8).w
	bne.s loc_20285a
	movea.l ($f680).w,a0
	lea (dat_20271c).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202828
	adda.w #$a,a3
loc_202828:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202748
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
loc_20285a:
	rts
loc_20285c:
	tst.w ($f6f8).w
	beq.w loc_2028fa
loc_202864:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202896

sub_202878:
	tst.w ($f6f8).w
	beq.s loc_2028fa
	tst.b ($f744).w
	bne.s loc_202864
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202896:
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
loc_2028ca:
	movea.w #$8,a5
	bsr.w sub_2026e6
	subq.w #$1,($f6f8).w
	beq.s loc_2028fc
	subq.w #$1,($f6fa).w
	bne.s loc_2028ca
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2028fa:
	rts
loc_2028fc:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202902:
	move.l $6(a0),(a0)+
	dbf d0,loc_202902
	rts

sub_20290c:
	lea (dat_20d222).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_20291e:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_20265a
	dbf d1,loc_20291e
	rts
	.incbin 10558, 560

sub_202b6e:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202bca).l,a0
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
	bra.w loc_202bf6
dat_202bca:
	.incbin 11210, 44
loc_202bf6:
	tst.b ($ff1522).l
	beq.s loc_202c12
	jsr (sub_206baa).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bra.s loc_202c28
loc_202c12:
	lea (dat_202c64).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202c28:
	subi.w #$a0,d1
	bcc.s loc_202c30
	moveq #$0,d1
loc_202c30:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202c3a
	move.w d2,d1
loc_202c3a:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202c46
	moveq #$0,d0
loc_202c46:
	cmp.w ($f72e).w,d0
	blt.s loc_202c50
	move.w ($f72e).w,d0
loc_202c50:
	move.w d0,($f704).w
	bsr.w sub_202c6c
	lea (dat_202c68).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202c64:
	dc.b $03,$d0,$03,$ac
dat_202c68:
	dc.b $7f,$7f,$7f,$7f

sub_202c6c:
	move.w ($f704).w,d0
	lsr.w #$1,d0
	move.w d0,($f70c).w
	move.w #$0,($f70e).w
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$4,d1
	move.w d1,($f718).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f710).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f708).w
	rts

sub_202ca4:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202cb0
	rts
loc_202cb0:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202ed6
	bsr.w sub_202f76
	bsr.w sub_20366c
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	move.w ($f73c).w,d5
	ext.l d5
	asl.l #$7,d5
	bsr.w sub_2030c8
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a2
	move.w ($f708).w,d0
	neg.w d0
	move.w #$bf,d6
loc_202d2c:
	move.w d0,(a1)+
	dbf d6,loc_202d2c
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f700).w,d0
	neg.w d0
	move.w d0,d5
	swap d0
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	lea $0(a2,d0.w),a2
	bra.w loc_202d58
loc_202d58:
	lea (dat_202dd6).l,a3
	lea (dat_23d6e4).l,a4
	move.b ($f7d8).w,d3
	move.b d3,d4
	addi.w #$80,($f7d8).w
	add.w ($f70c).w,d3
	andi.w #$ff,d3
	add.w ($f704).w,d4
	andi.w #$ff,d4
	move.w #$e7,d6
	andi.w #$7,d2
	move.w (a2)+,d0
	move.w ($f704).w,d1
loc_202d8e:
	cmp.w ($f646).w,d1
	bge.s loc_202dae
	move.l d0,(a1)+
	addq.w #$1,d1
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202da8
	moveq #$0,d2
	move.w (a2)+,d0
loc_202da8:
	dbf d6,loc_202d8e
	rts
loc_202dae:
	move.w #$0,d1
	add.w d5,d1
	move.w d1,(a1)+
	move.b $0(a4,d3.w),d1
	ext.w d1
	add.w d0,d1
	move.w d1,(a1)+
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202dd0
	moveq #$0,d2
	move.w (a2)+,d0
loc_202dd0:
	dbf d6,loc_202dae
	rts
dat_202dd6:
	.incbin 11734, 256

sub_202ed6:
	move.w ($f700).w,d4
	bsr.s sub_202f0a
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202f08
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202f02
	bset.b #$2,($f754).w
	rts
loc_202f02:
	bset.b #$3,($f754).w
loc_202f08:
	rts

sub_202f0a:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202f1c
	bcs.s loc_202f4c
	bra.s loc_202f22
loc_202f1c:
	clr.w ($f73a).w
	rts
loc_202f22:
	cmpi.w #$10,d0
	blt.s loc_202f2c
	move.w #$10,d0
loc_202f2c:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202f3a
	move.w ($f72a).w,d0
loc_202f3a:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202f4c:
	cmpi.w #$fff0,d0
	bge.s loc_202f56
	move.w #$fff0,d0
loc_202f56:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202f3a
	move.w ($f728).w,d0
	bra.s loc_202f3a
	.incbin 12134, 16

sub_202f76:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202f8a
	subq.w #$5,d0
loc_202f8a:
	btst.b #$1,$22(a6)
	beq.s loc_202faa
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202ff6
	subi.w #$40,d0
	bcc.s loc_202ff6
	tst.b ($f75c).w
	bne.s loc_203008
	bra.s loc_202fb6
loc_202faa:
	sub.w ($f73e).w,d0
	bne.s loc_202fbc
	tst.b ($f75c).w
	bne.s loc_203008
loc_202fb6:
	clr.w ($f73c).w
	rts
loc_202fbc:
	cmpi.w #$60,($f73e).w
	bne.s loc_202fe4
	move.w $14(a6),d1
	bpl.s loc_202fcc
	neg.w d1
loc_202fcc:
	cmpi.w #$800,d1
	bcc.s loc_202ff6
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_203056
	cmpi.w #$fffa,d0
	blt.s loc_203020
	bra.s loc_20300e
loc_202fe4:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_203056
	cmpi.w #$fffe,d0
	blt.s loc_203020
	bra.s loc_20300e
loc_202ff6:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_203056
	cmpi.w #$fff0,d0
	blt.s loc_203020
	bra.s loc_20300e
loc_203008:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_20300e:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_203060
	bra.w loc_20302c
loc_203020:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_20302c:
	cmp.w ($f72c).w,d1
	bgt.s loc_203084
	cmpi.w #$0,d1
	bgt.s loc_203050
	addi.w #$800,d1
	addi.w #$800,$c(a6)
	addi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_203084
loc_203050:
	move.w ($f72c).w,d1
	bra.s loc_203084
loc_203056:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_203060:
	cmp.w ($f72e).w,d1
	blt.s loc_203084
	subi.w #$800,d1
	bcs.s loc_203080
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_203084
loc_203080:
	move.w ($f72e).w,d1
loc_203084:
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
	bne.s loc_2030c6
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_2030c0
	bset.b #$0,($f754).w
	rts
loc_2030c0:
	bset.b #$1,($f754).w
loc_2030c6:
	rts

sub_2030c8:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2030fc
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2030f6
	bset.b #$2,($f756).w
	bra.s loc_2030fc
loc_2030f6:
	bset.b #$3,($f756).w
loc_2030fc:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_203130
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_20312a
	bset.b #$0,($f756).w
	rts
loc_20312a:
	bset.b #$1,($f756).w
loc_203130:
	rts
	.incbin 12594, 258
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f756).w,a2
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_2032b8
	lea ($f758).w,a2
	lea ($f710).w,a3
	bra.w sub_20331e

sub_203260:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_2032b8
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20331e
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203320
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2

sub_2032b8:
	tst.b (a2)
	beq.s loc_20331c
	bclr.b #$0,(a2)
	beq.s loc_2032d2
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20354c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203322
loc_2032d2:
	bclr.b #$1,(a2)
	beq.s loc_2032ec
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20354c
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203322
loc_2032ec:
	bclr.b #$2,(a2)
	beq.s loc_203302
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20354c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203378
loc_203302:
	bclr.b #$3,(a2)
	beq.s loc_20331c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20354c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203378
loc_20331c:
	rts

sub_20331e:
	rts

sub_203320:
	rts

sub_203322:
	moveq #$15,d6

sub_203324:
	move.l #$800000,d7
	move.l d0,d1
loc_20332c:
	movem.l d4-d5,-(a7)
	bsr.w sub_203424
	move.l d1,d0
	bsr.w sub_2033a6
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20332c
	rts
	.incbin 13134, 42

sub_203378:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203382:
	movem.l d4-d5,-(a7)
	bsr.w sub_203424
	move.l d1,d0
	bsr.w sub_2033a6
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203382
	rts

sub_2033a6:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033e2
	btst.b #$3,(a0)
	bne.s loc_2033c2
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2033c2:
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
loc_2033e2:
	btst.b #$3,(a0)
	bne.s loc_203404
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
loc_203404:
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

sub_203424:
	add.w (a3),d5
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
	beq.s loc_203474
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
loc_203474:
	rts
	.incbin 13430, 214

sub_20354c:
	add.w (a3),d5
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
	.incbin 13672, 28

sub_203584:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2035aa
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2

sub_2035aa:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2035ae:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20354c
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203324
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2035ae
	rts

sub_2035d2:
	moveq #$0,d0
	lea (dat_20d212).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20266c
	movea.l (a2)+,a0
	bsr.w sub_20361e
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200490
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_20361c
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20361c
	bsr.w sub_20279a
loc_20361c:
	rts

sub_20361e:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203628:
	move.l d0,(a3)+
	dbf d1,loc_203628
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20363e
	lea ($a040).w,a3
	moveq #$2,d1

sub_20363e:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_21f884).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203658:
	move.w d1,d0
	movea.l a3,a0
loc_20365c:
	move.b (a1)+,(a0)+
	dbf d0,loc_20365c
	lea $80(a3),a3
	dbf d2,loc_203658
	rts

sub_20366c:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2036e6(pc,d0.w),d0
	jsr dat_2036e6(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203692
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203692:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2036c0
	bcc.s loc_2036c2
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2036b6
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2036b6:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2036c0:
	rts
loc_2036c2:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2036da
	btst.b #$1,($d022).w
	beq.s loc_2036da
	add.w d1,d1
	add.w d1,d1
loc_2036da:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2036e6:
	.incbin 14054, 460
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2038c4(pc,d0.w),d0
	jmp dat_2038c4(pc,d0.w)
dat_2038c4:
	dc.b $00,$06,$00,$0e,$00,$40,$31,$fc
	dc.b $05,$10,$f7,$26,$4e,$75
	cmpi.b #$2b,($d01c).w
	beq.s loc_2038f6
	cmpi.b #$6,($d024).w
	bcc.s loc_2038f6
	move.w #$800,($f72e).w
	move.w #$800,($f726).w
	cmpi.w #$200,($f700).w
	bcs.s loc_203902
loc_2038f6:
	move.w #$710,($f72e).w
	move.w #$710,($f726).w
loc_203902:
	rts
	.incbin 14596, 212

sub_2039d8:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2039e0:
	move.b (a0),d0
	beq.s loc_2039f6
	add.w d0,d0
	add.w d0,d0
	lea (dat_203dfa).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2039f6:
	lea $40(a0),a0
	dbf d7,loc_2039e0
	rts
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203a3e
	bpl.s loc_203a30
	btst.b #$1,$2c(a0)
	beq.s loc_203a30
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203a3e
loc_203a30:
	btst.b #$2,$2c(a0)
	bne.s loc_203a3e
	addi.w #$38,$12(a0)
loc_203a3e:
	tst.w $12(a0)
	bmi.s loc_203a52
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a52
	move.w #$1000,$12(a0)
loc_203a52:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a62:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a9e
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a9e
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a9c
	neg.w d1
loc_203a9c:
	add.w d1,d0
loc_203a9e:
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
loc_203ab8:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203b28
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b44
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b44
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203b02
	cmpi.w #$800,d3
	bcs.s loc_203b14
	subi.w #$800,d3
	bra.s loc_203b14
loc_203b02:
	cmpi.w #$700,($f704).w
	bcs.s loc_203b14
	dc.b $0c,$43

sub_203b0c:
	btst.l d0,d0
	bcc.s loc_203b14
	addi.w #$800,d3
loc_203b14:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b44
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b44
loc_203b28:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203b44
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b44:
	rts
	.incbin 15174, 30
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b6a:
	move.l d1,(a1)+
	dbf d0,loc_203b6a
	rts
dat_203b72:
	.incbin 15218, 16

sub_203b82:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b8e:
	tst.w (a4)
	beq.w loc_203c4e
	moveq #$2,d6
loc_203b96:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c46
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203bfc
	movea.l dat_203b72(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
loc_203bb8:
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203be0
	cmpi.w #$800,d2
	bcs.s loc_203bf2
	subi.w #$800,d2
	bra.s loc_203bf2
loc_203be0:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203bf2
	cmpi.w #$100,d2
	bcc.s loc_203bf2
	addi.w #$800,d2
loc_203bf2:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203c1e
loc_203bfc:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203c1e
	.incbin 15366, 24
loc_203c1e:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c3c
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c40
loc_203c3c:
	bsr.w sub_203c70
loc_203c40:
	bset.b #$7,$1(a0)
loc_203c46:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b96
loc_203c4e:
	lea $80(a4),a4
	dbf d7,loc_203b8e
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c68
	move.l #$0,(a2)
	rts
loc_203c68:
	move.b #$0,-$5(a2)
	rts

sub_203c70:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203cb6
	btst.l #$1,d4
	bne.w loc_203d04
loc_203c82:
	cmpi.b #$50,d5
	beq.s loc_203cb4
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
	bne.s loc_203cae
	addq.w #$1,d0
loc_203cae:
	move.w d0,(a2)+
	dbf d1,loc_203c82
loc_203cb4:
	rts
loc_203cb6:
	btst.l #$1,d4
	bne.w loc_203d4a
loc_203cbe:
	cmpi.b #$50,d5
	beq.s loc_203d02
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
	bne.s loc_203cfc
	addq.w #$1,d0
loc_203cfc:
	move.w d0,(a2)+
	dbf d1,loc_203cbe
loc_203d02:
	rts
loc_203d04:
	cmpi.b #$50,d5
	beq.s loc_203d48
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
	bne.s loc_203d42
	addq.w #$1,d0
loc_203d42:
	move.w d0,(a2)+
	dbf d1,loc_203d04
loc_203d48:
	rts
loc_203d4a:
	cmpi.b #$50,d5
	beq.s loc_203d9c
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
	bne.s loc_203d96
	addq.w #$1,d0
loc_203d96:
	move.w d0,(a2)+
	dbf d1,loc_203d4a
loc_203d9c:
	rts
	.incbin 15774, 92
dat_203dfa:
	.incbin 15866, 326
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203f52
	move.w #$0,(a1)
	rts
loc_203f52:
	tst.w (a1)
	bne.s loc_203f5c
	move.b #$1,$1(a1)
loc_203f5c:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203fa6
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203f98
	neg.w $10(a0)
loc_203f98:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205ce2
loc_203fa6:
	rts
	.incbin 16296, 2380
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20490e
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202602).l
loc_20490e:
	bra.w loc_204a2a
	.incbin 18706, 280
loc_204a2a:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a56
	move.w $14(a0),d0
	beq.s loc_204a56
	bmi.s loc_204a4a
	sub.w d5,d0
	bcc.s loc_204a44
	move.w #$0,d0
loc_204a44:
	move.w d0,$14(a0)
	bra.s loc_204a56
loc_204a4a:
	add.w d5,d0
	bcc.s loc_204a52
	move.w #$0,d0
loc_204a52:
	move.w d0,$14(a0)
loc_204a56:
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204ae4
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204ae4
	bmi.s loc_204a8c
	neg.w d1
loc_204a8c:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206c9e
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204ae4
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204ae0
	cmpi.b #$40,d0
	beq.s loc_204ace
	cmpi.b #$80,d0
	beq.s loc_204ac8
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204ac8:
	sub.w d1,$12(a0)
	rts
loc_204ace:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204ae0:
	add.w d1,$12(a0)
loc_204ae4:
	rts
	.incbin 19174, 154
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b88
	move.w d6,d0
loc_204b88:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
	.incbin 19348, 454
	move.b #$2,$1c(a0)
	rts
	.incbin 19810, 198
	bcc.s loc_204e2e
	move.w #$0,d0
loc_204e2e:
	move.w d0,$10(a0)
	rts
	.incbin 20020, 1010
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
	.incbin 21044, 120
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
	.incbin 21178, 60
	move.w #$0,$12(a0)
	rts
	dc.b $11,$43,$00,$26,$61,$00,$00,$e6
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205314
	neg.w $14(a0)
loc_205314:
	rts
	dc.b $61,$00,$1b,$68,$4a,$41,$6a,$12
	dc.b $d3,$68,$00,$08
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
	dc.b $61,$00,$1b,$a6
	tst.w d1
	bpl.s loc_20534a
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205348
	move.w #$0,$12(a0)
loc_205348:
	rts
loc_20534a:
	tst.w $12(a0)
	bmi.s loc_205376
	bsr.w sub_206d30
	tst.w d1
	bpl.s loc_205376
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205378
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205376:
	rts

sub_205378:
	btst.b #$4,$22(a0)
	beq.s loc_205382
	nop
loc_205382:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2053dc
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2053bc
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2053cc
loc_2053bc:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2053cc:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202602).l
loc_2053dc:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21482, 820

sub_20571e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205732
	bpl.s loc_205732
	cmpi.b #$fd,d0
	bge.s loc_20573c
loc_205732:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
	rts
loc_20573c:
	addq.b #$1,d0
	bne.s loc_20574c
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205732
loc_20574c:
	addq.b #$1,d0
	bne.s loc_205760
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205732
loc_205760:
	addq.b #$1,d0
	bne.s loc_20576a
	move.b $2(a1,d1.w),$1c(a0)
loc_20576a:
	rts
	.incbin 22380, 166
	bpl.s loc_205816
	moveq #$0,d2
loc_205816:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20571e
	add.b d3,$1a(a0)
	rts
	.incbin 22566, 286
	cmpi.w #$600,d2
	bcc.s loc_205950
	lea (dat_205b14).l,a1
loc_205950:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20595a
	moveq #$0,d2
loc_20595a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20571e
	.incbin 22884, 432
dat_205b14:
	.incbin 23316, 240

sub_205c04:
	tst.b (a0)
	beq.w loc_205c66
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c66
	move.b d0,(a2)
	lea (dat_233a26).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c66
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205c38:
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
loc_205c52:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c52
	dbf d1,loc_205c38
loc_205c66:
	rts
	.incbin 23656, 122

sub_205ce2:
	cmpi.w #$67,d0
	bne.s loc_205cf0
	move.b #$1,($ff1958).l
loc_205cf0:
	move.w d0,($a12010).l
loc_205cf6:
	move.w ($a12020).l,d0
	beq.s loc_205cf6
	cmp.w ($a12020).l,d0
	bne.s loc_205cf6
	move.w #$0,($a12010).l
loc_205d0e:
	move.w ($a12020).l,d0
	bne.s loc_205d0e
	move.w ($a12020).l,d0
	bne.s loc_205d0e
	rts
	dc.b $00,$00
loc_205d22:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205d3e
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205d3e:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d7e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d80
loc_205d5a:
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
loc_205d7e:
	rts
loc_205d80:
	addq.b #$1,d0
	bne.s loc_205d90
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205d5a
loc_205d90:
	addq.b #$1,d0
	bne.s loc_205da4
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205d5a
loc_205da4:
	addq.b #$1,d0
	bne.s loc_205dae
	move.b $2(a1,d1.w),$1c(a0)
loc_205dae:
	addq.b #$1,d0
	bne.s loc_205db6
	addq.b #$2,$24(a0)
loc_205db6:
	addq.b #$1,d0
	bne.s loc_205dc4
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205dc4:
	addq.b #$1,d0
	bne.s loc_205dcc
	addq.b #$2,$25(a0)
loc_205dcc:
	rts
	.incbin 24014, 916
	cmpi.w #$c,($ff150a).l
	bhi.s loc_20619a
	move.w #$82,d0
	cmpi.w #$103,($ff1506).l
	bne.s loc_20617e
	move.w #$86,d0
loc_20617e:
	tst.b ($ff151f).l
	beq.s loc_20618a
	move.w #$87,d0
loc_20618a:
	tst.b ($f7aa).w
	beq.s loc_206194
	move.w #$8c,d0
loc_206194:
	jsr (sub_202600).l
loc_20619a:
	move.w #$1e,($ff150a).l
	clr.b ($d1f2).w
	rts
	.incbin 25000, 1574
loc_2067ce:
	bclr.b #$7,($ff156b).l
	beq.s loc_20681c
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20681e(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2067f2:
	move.l (a1)+,(a2)+
	dbf d0,loc_2067f2
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20681c:
	rts
dat_20681e:
	.incbin 26654, 698
loc_206ad8:
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
	bne.s loc_206b92
	move.b ($ff1593).l,($ff195b).l
loc_206b92:
	tst.b ($ff1522).l
	bpl.s loc_206ba8
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206ba8:
	rts

sub_206baa:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206ad8
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
	bne.s loc_206c64
	move.b ($ff1591).l,($ff195b).l
loc_206c64:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c86
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c86:
	tst.b ($ff1522).l
	bpl.s loc_206c9c
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c9c:
	rts

sub_206c9e:
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
	bpl.s loc_206cda
	move.b d1,d0
	bpl.s loc_206cd4
	subq.b #$1,d0
loc_206cd4:
	addi.b #$20,d0
	bra.s loc_206ce4
loc_206cda:
	move.b d1,d0
	bpl.s loc_206ce0
	addq.b #$1,d0
loc_206ce0:
	addi.b #$1f,d0
loc_206ce4:
	andi.b #$c0,d0
	beq.w loc_206db4
	cmpi.b #$80,d0
	beq.w loc_206f50
	andi.b #$38,d1
	bne.s loc_206cfc
	addq.w #$8,d2
loc_206cfc:
	cmpi.b #$40,d0
	beq.w loc_207026
	bra.w loc_206e88
	.incbin 27912, 40

sub_206d30:
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
	jsr (sub_201068).l
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
	jsr (sub_201068).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206d94:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206da2
	move.b ($f768).w,d3
	exg d0,d1
loc_206da2:
	btst.l #$0,d3
	beq.s loc_206daa
	move.b d2,d3
loc_206daa:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206db4:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201068).l
	move.b #$0,d2
loc_206dd0:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ddc
	move.b d2,d3
loc_206ddc:
	rts
	.incbin 28126, 26
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	jsr (sub_201068).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e16
	move.b #$0,d3
loc_206e16:
	rts
	.incbin 28184, 112
loc_206e88:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b #$c0,d2
	bra.w loc_206dd0
	.incbin 28328, 32
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ed6
	move.b #$c0,d3
loc_206ed6:
	rts
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
	jsr (sub_201068).l
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
	jsr (sub_201068).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206d94
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f50:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201068).l
	move.b #$80,d2
	bra.w loc_206dd0
	.incbin 28532, 178
loc_207026:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b #$40,d2
	bra.w loc_206dd0
	.incbin 28746, 706

sub_20730c:
	tst.w ($ff1906).l
	bne.s loc_207360
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205378
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202602).l
loc_207360:
	moveq #$ffffffff,d0
	rts
	.incbin 29540, 902

sub_2076ea:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2076f8:
	clr.l (a2)+
	dbf d0,loc_2076f8
	rts

sub_207700:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20770e(pc,d0.w),d0
	jmp dat_20770e(pc,d0.w)
dat_20770e:
	.incbin 30478, 88
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207786
loc_207774:
	cmp.w (a0),d6
	bls.s loc_207786
	tst.b $4(a0)
	bpl.s loc_207782
	addq.b #$1,$1(a2)
loc_207782:
	addq.w #$8,a0
	bra.s loc_207774
loc_207786:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207870
	bge.s loc_207816
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077f2
loc_2077c0:
	cmp.w -$8(a0),d6
	bge.s loc_2077f2
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2077d6
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2077d6:
	bsr.w sub_207894
	bne.s loc_2077e0
	subq.w #$8,a0
	bra.s loc_2077c0
loc_2077e0:
	tst.b $4(a0)
	bpl.s loc_2077f0
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077f0:
	addq.w #$8,a0
loc_2077f2:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2077fe:
	cmp.w -$8(a0),d6
	bgt.s loc_207810
	tst.b -$4(a0)
	bpl.s loc_20780c
	subq.b #$1,(a2)
loc_20780c:
	subq.w #$8,a0
	bra.s loc_2077fe
loc_207810:
	move.l a0,($f770).w
	rts
loc_207816:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_20782a:
	cmp.w (a0),d6
	bls.s loc_20784c
	tst.b $4(a0)
	bpl.s loc_207838
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207838:
	bsr.w sub_207894
	beq.s loc_20782a
	tst.b $4(a0)
	bpl.s loc_20784c
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20784c:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_20786c
loc_20785a:
	cmp.w (a0),d6
	bls.s loc_20786c
	tst.b $4(a0)
	bpl.s loc_207868
	addq.b #$1,$1(a2)
loc_207868:
	addq.w #$8,a0
	bra.s loc_20785a
loc_20786c:
	move.l a0,($f774).w
loc_207870:
	rts

sub_207872:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	move.w d2,d3
	add.w d3,d3
	add.w d2,d3

sub_207884:
	add.w d0,d3
	move.b $6(a0),d1
	rol.b #$3,d1
	andi.b #$7,d1
	btst.l d0,d1
	rts

sub_207894:
	bsr.s sub_207872
	beq.s loc_2078a6
	tst.b $4(a0)
	bpl.s loc_2078ac
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2078ac
loc_2078a6:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2078ac:
	bsr.w sub_2078fc
	bne.s loc_2078fa
	move.w (a0)+,$8(a1)
	move.w (a0)+,d0
	move.w d0,d1
	andi.w #$fff,d0
loc_2078be:
	move.w d0,$c(a1)
	rol.w #$2,d1
	andi.b #$3,d1
	move.b d1,$1(a1)
	move.b d1,$22(a1)
	move.b (a0)+,d0
	bpl.s loc_2078dc
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2078dc:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2078ee
	nop
	nop
	nop
	nop
loc_2078ee:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2078fa:
	rts

sub_2078fc:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207904:
	tst.b (a1)
	beq.s loc_207910
	lea $40(a1),a1
	dbf d0,loc_207904
loc_207910:
	rts
	.incbin 30994, 5932
loc_20903e:
	bpl.w loc_20904e
	bsr.w sub_203a62
	addi.w #$18,$12(a0)
	rts
loc_20904e:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_209074
loc_20905e:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205ce2).l
loc_209074:
	cmpi.b #$1,d0
	bne.s loc_2090c0
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2090b6
	bset.b #$1,($ff150d).l
	beq.w loc_20905e
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2090b6
	bset.b #$2,($ff150d).l
	beq.w loc_20905e
loc_2090b6:
	move.w #$95,d0
	jmp (sub_202602).l
loc_2090c0:
	cmpi.b #$2,d0
	bne.s loc_2090de

sub_2090c6:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_202602).l
loc_2090de:
	cmpi.b #$3,d0
	bne.s loc_209140

sub_2090e4:
	move.b #$1,($ff151f).l
	move.w #$4b0,($d032).w
	move.b #$3,($d200).w
	move.b #$1,($d21c).w
	move.b #$3,($d240).w
	move.b #$2,($d25c).w
	move.b #$3,($d280).w
	move.b #$3,($d29c).w
	move.b #$3,($d2c0).w
	move.b #$4,($d2dc).w
	tst.b ($ff152e).l
	bne.s loc_209134
	move.w #$82,d0
	jsr (sub_205ce2).l
loc_209134:
	move.w #$6d,d0
	jmp (sub_205ce2).l
	dc.b $4e,$75
loc_209140:
	cmpi.b #$4,d0
	bne.s loc_209182
loc_209146:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_209178
	move.w #$82,d0
	jsr (sub_205ce2).l
loc_209178:
	move.w #$6c,d0
	jmp (sub_205ce2).l
loc_209182:
	cmpi.b #$5,d0
	bne.s loc_209192
	move.w #$12c,($ff190e).l
	rts
loc_209192:
	cmpi.b #$6,d0
	bne.s loc_2091ac
	move.w #$9d,d0
	jsr (sub_202602).l
	move.b #$1,($ff156f).l
	rts
loc_2091ac:
	bsr.w sub_2090c6
	bsr.w sub_2090e4
	bra.s loc_209146
	.incbin 37302, 1178
loc_209650:
	tst.w ($ff1588).l
	beq.s loc_2096a6
	bsr.w sub_2098a2
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
	lea (dat_209a02).l,a2
	moveq #$2,d6
	bsr.w sub_209a5a
	bra.w loc_209700
loc_2096a6:
	tst.b ($ff1511).l
	beq.s loc_2096ca
	bpl.s loc_2096b4
	bsr.w sub_20984c
loc_2096b4:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20993c
loc_2096ca:
	tst.b ($ff150f).l
	beq.s loc_209700
	bpl.s loc_2096d8
	bsr.w sub_209838
loc_2096d8:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_2096fc
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_2096fc:
	bsr.w sub_209932
loc_209700:
	tst.w ($ff1588).l
	bne.w loc_2097ac
	tst.b ($ff1510).l
	beq.w loc_2097ac
	tst.w ($f63a).w
	bne.w loc_2097ac
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20980a
	tst.b ($f7cc).w
	bne.s loc_209756
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209756
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209756
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_209756
	move.b #$9,(a1)
loc_209756:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209a48
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209a52
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_2097a8
	move.w #$63,d1
loc_2097a8:
	bsr.w sub_209a52
loc_2097ac:
	tst.b ($ff150e).l
	beq.s loc_2097be
	clr.b ($ff150e).l
	bsr.w sub_209a28
loc_2097be:
	tst.b ($f7d6).w
	beq.s loc_209808
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_2097de
	move.l #$6d400001,d0
loc_2097de:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_2098c0
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_2097fe
	move.l #$6e800001,d0
loc_2097fe:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_2098c0
loc_209808:
	rts
loc_20980a:
	btst.b #$7,($ff152e).l
	bne.s loc_209836
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_20730c
	move.b #$1,($ff150c).l
loc_209836:
	rts

sub_209838:
	move.l #$73600002,($c00004).l
	lea dat_20989e(pc),a2
	move.w #$2,d2
	bra.s loc_209868

sub_20984c:
	lea ($c00000).l,a6
	bsr.w sub_209a28
	move.l #$70600002,($c00004).l
	lea dat_209896(pc),a2
	move.w #$6,d2
loc_209868:
	lea (dat_238442).l,a1
loc_20986e:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20988a
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20987e:
	move.l (a3)+,(a6)
	dbf d1,loc_20987e
loc_209884:
	dbf d2,loc_20986e
	rts
loc_20988a:
	move.l #$0,(a6)
	dbf d1,loc_20988a
	bra.s loc_209884
dat_209896:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20989e:
	dc.b $ff,$ff,$00,$00

sub_2098a2:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209a1e
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209a1e

sub_2098c0:
	lea (dat_2099fa).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_2098d0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2098d4:
	sub.l d3,d1
	bcs.s loc_2098dc
	addq.w #$1,d2
	bra.s loc_2098d4
loc_2098dc:
	add.l d3,d1
	tst.w d2
	beq.s loc_2098e6
	move.w #$1,d4
loc_2098e6:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_2098f2
	tst.w d6
	bne.s loc_209924
loc_2098f2:
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
loc_209918:
	addi.l #$400000,d0
	dbf d6,loc_2098d0
	rts
loc_209924:
	moveq #$f,d5
loc_209926:
	move.l #$0,(a6)
	dbf d5,loc_209926
	bra.s loc_209918

sub_209932:
	lea (dat_209a02).l,a2
	moveq #$2,d6
	bra.s loc_209944

sub_20993c:
	lea (dat_2099f6).l,a2
	moveq #$5,d6
loc_209944:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20994c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209950:
	sub.l d3,d1
	bcs.s loc_209958
	addq.w #$1,d2
	bra.s loc_209950
loc_209958:
	add.l d3,d1
	tst.w d2
	beq.s loc_209962
	move.w #$1,d4
loc_209962:
	tst.w d4
	beq.s loc_209990
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
loc_209990:
	addi.l #$400000,d0
	dbf d6,loc_20994c
	rts
	.incbin 39324, 90
dat_2099f6:
	dc.b $00,$01,$86,$a0
dat_2099fa:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209a02:
	dc.b $00,$00,$00,$64
dat_209a06:
	dc.b $00,$00,$00,$0a
dat_209a0a:
	dc.b $00,$00,$00,$01
dat_209a0e:
	.incbin 39438, 16

sub_209a1e:
	moveq #$3,d6
	lea (dat_209a0e).l,a2
	bra.s sub_209a5a

sub_209a28:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209a3e
	moveq #$9,d1
loc_209a3e:
	lea (dat_209a0a).l,a2
	moveq #$0,d6
	bra.s sub_209a5a

sub_209a48:
	lea (dat_209a0a).l,a2
	moveq #$0,d6
	bra.s sub_209a5a

sub_209a52:
	lea (dat_209a06).l,a2
	moveq #$1,d6

sub_209a5a:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_209a62:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209a66:
	sub.l d3,d1
	bcs.s loc_209a6e
	addq.w #$1,d2
	bra.s loc_209a66
loc_209a6e:
	add.l d3,d1
	tst.w d2
	beq.s loc_209a78
	move.w #$1,d4
loc_209a78:
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
	dbf d6,loc_209a62
	rts
	.incbin 39598, 822
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209e10(pc,d0.w),d0
	jsr dat_209e10(pc,d0.w)
	tst.b $24(a0)
	beq.s loc_209e0e
	cmpi.b #$a,$24(a0)
	beq.s loc_209e08
	cmpi.b #$6,$24(a0)
	bcc.s loc_209e0e
loc_209e08:
	jmp (loc_203ab8).l
loc_209e0e:
	rts
dat_209e10:
	.incbin 40464, 3060
	cmp.w $a(a0),d1
	beq.s loc_20aa18
	bge.s loc_20aa0e
	neg.w d0
loc_20aa0e:
	add.w d0,$a(a0)
	jmp (loc_203ab8).l
loc_20aa18:
	addq.b #$4,$24(a0)
	jmp (loc_203ab8).l
	.incbin 43554, 1786
dat_20b11c:
	dc.b $ff,$ff,$70,$02,$4e,$f9,$00,$20
	dc.b $27,$9a

sub_20b126:
	rts
	.incbin 45352, 162
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $2e(a0),d0
	jsr (sub_200712).l
	swap d0
	clr.w d0
	asr.l #$4,d0
	add.l $2a(a0),d0
	move.l d0,$c(a0)
	move.w $34(a0),d0
	add.w d0,$2e(a0)
	addi.w #$ffff,$36(a0)
	bne.s loc_20b210
	move.w $38(a0),$36(a0)
	neg.l $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20b210:
	lea dat_20b21a(pc),a1
	jmp (loc_205d22).l
dat_20b21a:
	.incbin 45594, 4654
	move.b #$20,$19(a0)
	move.b #$2c,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20d07a,$4(a0)
	move.b #$2,$21(a0)
	bsr.w sub_20ced0
	move.w #$9b0,d0
	move.w d0,($f72a).w
	move.w d0,($f722).w
	lea ($d000).w,a1
	move.w $8(a1),d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_20c4ba
	cmpi.w #$a50,$8(a1)
	blt.s loc_20c4b2
	move.w #$67,d0
	jsr (sub_205ce2).l
	move.b #$6,$24(a0)
	move.w #$9b0,d0
	move.w d0,($f72a).w
	move.w d0,($f722).w
	move.w #$9b0,d0
loc_20c4b2:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_20c4ba:
	rts
	.incbin 50364, 2580

sub_20ced0:
	movea.l a0,a3
	jsr (sub_2078fc).l
	bne.w loc_20cef6
	move.w a1,$30(a3)
	move.w a3,$2e(a1)
	move.b #$4d,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20cef6:
	rts
	.incbin 52984, 788

sub_20d20c:
	jmp (loc_2067ce).l
dat_20d212:
	.incbin 53778, 16
dat_20d222:
	.incbin 53794, 2772
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dd12(pc,d0.w),d0
	jsr dat_20dd12(pc,d0.w)
	jsr (sub_203b0c).l
	move.w $2a(a0),d0
	bra.w loc_2078be
dat_20dd12:
	.incbin 56594, 2090
loc_20e53c:
	jmp (loc_203bb8).l
	.incbin 58690, 34
	move.b #$c,$17(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$fb,$20(a0)
	move.w #$403,d0
	tst.b ($ff1507).l
	beq.s loc_20e58c
	move.w #$3af,d0
loc_20e58c:
	move.w d0,$2(a0)
	move.l #$20e7d2,$4(a0)
	move.l #$20e816,$2c(a0)
	jsr (sub_207884).l
	bne.w loc_20e53c
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$15,$8(a1)
	subq.w #$7,$c(a1)
	move.b #$ff,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207884).l
	bne.w loc_20e53c
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	subq.w #$4,$c(a1)
	move.b #$1,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207884).l
	bne.w loc_20e53c
	move.b #$24,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	addi.w #$ffe8,$c(a1)
	move.b #$80,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207884).l
	bne.w loc_20e53c
	move.b #$24,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$64,$8(a1)
	addq.w #$4,$c(a1)
	move.b #$81,$28(a1)
	move.w a0,$3e(a1)
	tst.b $21(a0)
	beq.s loc_20e670
	clr.w $20(a0)
	addq.b #$2,$24(a0)
loc_20e670:
	lea ($d000).w,a1
	jmp (loc_20903e).l
	.incbin 59002, 60806
dat_21d400:
	.incbin 119808, 256
dat_21d500:
	.incbin 120064, 4096
dat_21e500:
	.incbin 124160, 4996
dat_21f884:
	.incbin 129156, 1916
dat_220000:
	.incbin 131072, 80422
dat_233a26:
	.incbin 211494, 18588
dat_2382c2:
	.incbin 230082, 384
dat_238442:
	.incbin 230466, 21154
dat_23d6e4:
	.incbin 251620, 10524
