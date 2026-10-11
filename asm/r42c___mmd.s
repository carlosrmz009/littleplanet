; R42C__.MMD
; disassembled from the disc; code only, data comes from data/R42C__.MMD at build time
	.file "R42C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18
	jmp (loc_2022de).l
	jmp (loc_201df8).l
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
	bsr.w sub_20241a
	bsr.w sub_2023c2
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
	bsr.w sub_2027e0
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
	bsr.w sub_2027e0
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
	bsr.w sub_2027e0
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
	bsr.w sub_2027e0
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

sub_2009aa:
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

sub_200b12:
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
	lea (dat_239976).l,a2
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
	lea (dat_239a76).l,a2
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
	lea (dat_239976).l,a2
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
	lea (dat_239a76).l,a2
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
	lea (dat_239976).l,a2
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
	lea (dat_23aa76).l,a2
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
	lea (dat_239976).l,a2
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
	lea (dat_23aa76).l,a2
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
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_201442
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20766e
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201442
	move.b #$1,($ff1508).l
loc_201442:
	bset.b #$7,($f600).w
	bsr.w sub_2027d2
	tst.b ($ff156e).l
	bne.s loc_201468
	btst.b #$7,($ff152e).l
	beq.s loc_20148c
	bset.b #$0,($ff151d).l
	beq.s loc_201474
loc_201468:
	bsr.w sub_200402
	bclr.b #$0,($ff151d).l
loc_201474:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2014fc
	move.w #$0,($ff1502).l
	rts
loc_20148c:
	bset.b #$0,($ff151d).l
	beq.s loc_20149a
	bsr.w sub_2002d6
loc_20149a:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2014b6
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2014de
loc_2014b6:
	tst.b ($ff1508).l
	bne.s loc_2014fc
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2014de:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2014e6:
	move.l #$0,(a1)+
	dbf d6,loc_2014e6
	move.b #$c,($f62a).w
	bsr.w sub_200706
	rts
loc_2014fc:
	cmpi.w #$800,($f78e).w
	bne.s loc_20151a
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20151a:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201530
	btst.b #$7,($ff152e).l
	beq.s loc_201536
loc_201530:
	move.l #$eee0eee,d0
loc_201536:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20153e:
	move.l d0,(a1)+
	dbf d6,loc_20153e
loc_201544:
	move.b #$c,($f62a).w
	bsr.w sub_200706
	bsr.w sub_2027e0
	bne.s loc_201544
	tst.l ($f680).w
	bne.s loc_201544
	bsr.w sub_2019cc
	moveq #$0,d0
	lea (dat_20fdbe).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201570
	bsr.w sub_2028e6
loc_201570:
	moveq #$1,d0
	bsr.w sub_2028e6
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20158c:
	move.l d0,(a1)+
	dbf d1,loc_20158c
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_20159e:
	move.l d0,(a1)+
	dbf d1,loc_20159e
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2015ae:
	move.l d0,(a1)+
	dbf d1,loc_2015ae
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2015be:
	move.l d0,(a1)+
	dbf d1,loc_2015be
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2015ce:
	move.l d0,(a1)+
	dbf d1,loc_2015ce
	move.w #$2700,sr
	move.l #$213600,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_2024bc
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
	bne.s loc_201662
	move.w #$8014,(a6)
	moveq #$0,d0
	move.b ($ff1507).l,d0
	lsl.w #$3,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	add.w d1,d1
	add.w d1,d0
	lea (dat_201ae2).l,a1
	move.w $0(a1,d0.w),d0
	move.w d0,($f646).w
	move.w d0,($f648).w
	move.w d0,($f64a).w
	clr.b ($f64d).w
	clr.b ($f64e).w
	move.b #$1,($f64c).w
loc_201662:
	move.w #$1e,($ff150a).l
	move.w #$2300,sr
	moveq #$3,d0
	bsr.w sub_2004ac
	moveq #$3,d0
	bsr.w sub_200490
	bsr.w sub_202b48
	bsr.w sub_202ca4
	bset.b #$2,($f754).w
	bsr.w sub_2035d2
	bsr.w sub_203584
	jsr (sub_201328).l
	bsr.w sub_20192e
loc_20169a:
	move.b #$c,($f62a).w
	bsr.w sub_200706
	bsr.w sub_2027e0
	bne.s loc_20169a
	tst.l ($f680).w
	bne.s loc_20169a
	bsr.w sub_201912
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201a1c
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2016fe
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2016fe:
	move.b #$4,($d800).w
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20173e
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20173e:
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
	jsr (sub_20fdb8).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2017ce
loc_2017c8:
	bsr.w sub_200354
	bra.s loc_2017dc
loc_2017ce:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2017c8
	bsr.w sub_200234
loc_2017dc:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2017ec
	moveq #$0,d0
	bsr.w sub_2004c4
loc_2017ec:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2017fa:
	move.b #$8,($f62a).w
	bsr.w sub_200706
	tst.b ($f7cc).w
	bne.s loc_201818
	btst.b #$7,($f605).w
	beq.s loc_201818
	eori.b #$1,($f63a).w
loc_201818:
	btst.b #$0,($f63a).w
	beq.w loc_20189e
	bsr.w sub_201d76
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20187c
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2017fa
	subq.b #$1,($ff1508).l
	bpl.s loc_20184a
	clr.b ($ff1508).l
loc_20184a:
	move.w #$e,d0
	jsr (sub_205cd2).l
	bsr.w sub_20766e
	clr.b ($ff1522).l
	jsr (sub_202542).l
	move.b #$1,($a01c3e).l
	jsr (sub_20255e).l
	move.w #$1,($ff1502).l
	bra.s loc_20188a
loc_20187c:
	andi.b #$70,d0
	beq.w loc_2017fa
	clr.b ($ff1508).l
loc_20188a:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2013ba
loc_20189e:
	bsr.w sub_201dbc
	addq.w #$1,($ff1504).l
	jsr (sub_207684).l
	jsr (sub_2039d8).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2013ba
	tst.w ($ff1502).l
	bne.w loc_2013ba
	tst.w ($ff1906).l
	bne.s loc_2018e6
	cmpi.b #$6,($d024).w
	bcs.s loc_2018e6
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2018ea
loc_2018e6:
	bsr.w sub_202ca4
loc_2018ea:
	bsr.w sub_201c52
	jsr (sub_203b82).l
	tst.w ($ff190e).l
	bne.s loc_201900
	bsr.w sub_200184
loc_201900:
	jsr (sub_20bfc4).l
	bsr.w sub_2027e0
	bsr.w sub_201938
	bra.w loc_2017fa

sub_201912:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_20192a
	move.w #$78,$30(a1)
loc_20192a:
	rts
	dc.b $4e,$75

sub_20192e:
	move.l #$23ba76,($f796).w
	rts

sub_201938:
	subq.b #$1,($ff1910).l
	bpl.s loc_201956
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201956:
	subq.b #$1,($ff1912).l
	bpl.s loc_201974
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201974:
	subq.b #$1,($ff1914).l
	bpl.s loc_20199c
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_20199c
	move.b #$0,($ff1915).l
loc_20199c:
	tst.b ($ff1916).l
	beq.s loc_2019ca
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_2019ca:
	rts

sub_2019cc:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_2019ee
	cmpi.b #$2,d0
	bne.s loc_2019ee
	add.b ($ff156a).l,d0
loc_2019ee:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a06(pc,d1.w),d0
	jmp (sub_205cd2).l
dat_201a06:
	.incbin 6662, 22

sub_201a1c:
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

sub_201a80:
	tst.b ($f63a).w
	bne.s loc_201ae0
	cmpi.b #$6,($d024).w
	bcc.s loc_201a92
	bsr.w sub_201afa
loc_201a92:
	move.b #$0,($f64e).w
	moveq #$0,d0
	addq.b #$2,($ff1955).l
	move.b ($ff1955).l,d0
	jsr (sub_200712).l
	lsr.w #$6,d0
	ext.w d0
	add.w ($f648).w,d0
	move.w d0,($f646).w
	move.w ($f646).w,d0
	sub.w ($f704).w,d0
	bcc.s loc_201ad2
	tst.w d0
	bpl.s loc_201ad2
	move.b #$df,($f625).w
	move.b #$1,($f64e).w
loc_201ad2:
	cmpi.w #$df,d0
	bcs.s loc_201adc
	move.w #$df,d0
loc_201adc:
	move.b d0,($f625).w
loc_201ae0:
	rts
dat_201ae2:
	.incbin 6882, 24

sub_201afa:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_201b26(pc,d0.w),d0
	jsr dat_201b26(pc,d0.w)
	moveq #$0,d1
	move.b ($f64c).w,d1
	move.w ($f64a).w,d0
	sub.w ($f648).w,d0
	beq.s loc_201b24
	bcc.s loc_201b20
	neg.w d1
loc_201b20:
	add.w d1,($f648).w
loc_201b24:
	rts
dat_201b26:
	dc.b $00,$06,$00,$56,$00,$fa
	move.w ($d008).w,d2
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201b42
	rts
loc_201b42:
	cmpi.b #$1,d0
	bne.s loc_201b58
	move.w #$280,d1
	cmpi.w #$5e0,d2
	bcs.s loc_201b76
	move.w #$260,d1
	bra.s loc_201b76
loc_201b58:
	move.w #$1d0,d1
	cmpi.w #$920,d2
	bcs.s loc_201b76
	move.w #$110,d1
	cmpi.w #$1980,d2
	bcs.s loc_201b76
	move.w #$240,d1
	move.b #$3,($f64c).w
loc_201b76:
	move.w d1,($f64a).w
	rts
	move.w ($d008).w,d2
	move.w ($f704).w,d1
	addi.w #$e8,d1
	cmpi.w #$200,d2
	bcs.s loc_201ba4
	cmpi.w #$600,($d00c).w
	bcs.s loc_201baa
	cmpi.w #$6c0,($d00c).w
	bcc.s loc_201baa
	cmpi.w #$2a0,d2
	bcc.s loc_201baa
loc_201ba4:
	move.w d1,($f648).w
	bra.s loc_201c1a
loc_201baa:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201bc0
	move.w #$5b0,d1
	bra.s loc_201ba4
loc_201bc0:
	cmpi.b #$1,d0
	bne.s loc_201bf8
	move.w #$530,d1
	cmpi.w #$c00,d2
	bcs.s loc_201c1a
	move.w #$780,d1
	cmpi.w #$dc0,d2
	bcs.s loc_201c1a
	move.w #$500,d1
	cmpi.w #$1380,d2
	bcc.s loc_201c1a
	cmpi.w #$400,($d00c).w
	bcc.s loc_201bf6
	move.w #$3c0,d1
	cmpi.w #$1100,d2
	bcc.s loc_201c1a
loc_201bf6:
	rts
loc_201bf8:
	move.w #$510,d1
	cmpi.w #$400,d2
	bcs.s loc_201c1a
	move.w #$390,d1
	cmpi.w #$1600,d2
	bcs.s loc_201c1a
	move.w #$410,d1
	cmpi.w #$1900,d2
	bcs.s loc_201c1a
	move.w #$500,d1
loc_201c1a:
	move.w d1,($f64a).w
	rts
	move.w ($d008).w,d2
	move.w ($f704).w,d1
	addi.w #$e8,d1
	cmpi.w #$7c0,d2
	bcc.s loc_201c38
	move.w d1,($f648).w
	bra.s loc_201c4c
loc_201c38:
	move.w #$490,d1
	cmpi.w #$af0,d2
	bcs.s loc_201c4c
	move.b #$2,($f64c).w
	move.w #$5c0,d1
loc_201c4c:
	move.w d1,($f64a).w
	rts

sub_201c52:
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_201d72
	btst.b #$0,$2c(a1)
	bne.w loc_201d72
	tst.b (a1)
	beq.w loc_201d72
	tst.w ($ff1906).l
	bne.w loc_201d72
	moveq #$0,d0
	move.b ($ff1507).l,d0
	cmpi.b #$2,d0
	bcc.w loc_201d72
	lea (dat_20bd28).l,a2
loc_201c90:
	move.w $8(a1),d0
	cmp.w (a2),d0
	bcs.w loc_201d58
	cmp.w $4(a2),d0
	bcc.w loc_201d58
	move.w $c(a1),d2
	cmp.w $2(a2),d2
	bcs.w loc_201d58
	cmp.w $6(a2),d2
	bcc.w loc_201d58
	move.b ($ff190d).l,d0
	andi.b #$3f,d0
	bne.s loc_201cc6
	move.w #$d0,d0
loc_201cc6:
	lea ($f7e0).w,a3
	moveq #$0,d0
	move.b $d(a2),d0
	cmpi.b #$1,$c(a2)
	bne.s loc_201ce2
	btst.b #$6,$0(a3,d0.w)
	beq.w loc_201d72
loc_201ce2:
	cmpi.b #$4,$24(a1)
	bcc.w loc_201d6e
	move.b #$1,($f7c7).w
	clr.b $3c(a1)
	move.w $8(a2),$10(a1)
	move.w $a(a2),$12(a1)
	move.b #$f,$1c(a1)
	bset.b #$1,$22(a1)
	cmpi.b #$2,$c(a2)
	bne.s loc_201d26
	btst.b #$5,$0(a3,d0.w)
	beq.s loc_201d26
	neg.w $10(a1)
	neg.w $12(a1)
loc_201d26:
	btst.b #$0,($f602).w
	beq.s loc_201d32
	subq.w #$1,$c(a1)
loc_201d32:
	btst.b #$1,($f602).w
	beq.s loc_201d3e
	addq.w #$1,$c(a1)
loc_201d3e:
	btst.b #$2,($f602).w
	beq.s loc_201d4a
	subq.w #$1,$8(a1)
loc_201d4a:
	btst.b #$3,($f602).w
	beq.s loc_201d56
	addq.w #$1,$8(a1)
loc_201d56:
	rts
loc_201d58:
	adda.w #$e,a2
	tst.b (a2)
	bpl.w loc_201c90
	tst.b ($f7c7).w
	beq.s loc_201d72
	move.b #$0,$1c(a1)
loc_201d6e:
	clr.b ($f7c7).w
loc_201d72:
	rts
	dc.b $4e,$75

sub_201d76:
	move.w #$ab,d0
	jsr (sub_2025aa).l
	bset.b #$7,($f63a).w
	bne.s loc_201dba
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201da0
loc_201d96:
	move.w #$d5,d0
	jmp (sub_205cd2).l
loc_201da0:
	tst.b ($ff151f).l
	bne.s loc_201d96
	tst.b ($ff1520).l
	bne.s loc_201d96
	move.w #$90,d0
	jmp (sub_205cd2).l
loc_201dba:
	rts

sub_201dbc:
	bclr.b #$7,($f63a).w
	beq.s loc_201df6
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201ddc
loc_201dd2:
	move.w #$d6,d0
	jmp (sub_205cd2).l
loc_201ddc:
	tst.b ($ff151f).l
	bne.s loc_201dd2
	tst.b ($ff1520).l
	bne.s loc_201dd2
	move.w #$91,d0
	jmp (sub_205cd2).l
loc_201df6:
	rts
loc_201df8:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201e7e
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201e34
	move.w #$700,d0
loc_201e30:
	dbf d0,loc_201e30
loc_201e34:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201e64(pc,d0.w),d0
	jsr dat_201e64(pc,d0.w)
loc_201e4a:
	tst.b ($f63a).w
	bne.s loc_201e58
	bsr.w sub_202382
	bsr.w sub_202370
loc_201e58:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201e64:
	.incbin 7780, 26
loc_201e7e:
	tst.b ($ff1957).l
	beq.s loc_201e4a
	cmpi.b #$2,($ff1506).l
	bne.w loc_201e4a
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201eaa
	move.w #$700,d0
loc_201ea6:
	dbf d0,loc_201ea6
loc_201eaa:
	move.w #$1,($f6fc).w
	jsr (sub_202542).l
	jsr (sub_201a80).l
	tst.b ($f64e).w
	bne.s loc_201ee8
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201f0c
loc_201ee8:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201f0c:
	move.w ($f624).w,(a5)
	jsr (sub_20255e).l
	bra.w loc_201e4a
	.incbin 7962, 60
	jsr (sub_2025ce).l
	jsr (sub_202542).l
	bsr.w sub_2023de
	jsr (sub_201a80).l
	tst.b ($f64e).w
	bne.s loc_201f98
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201fbc
loc_201f98:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201fbc:
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
	bsr.w sub_205bf4
	tst.b ($f767).w
	beq.s loc_202046
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202046:
	tst.w ($ff190e).l
	bne.s loc_202054
	jsr (sub_20fdb8).l
loc_202054:
	jsr (sub_20255e).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	cmpi.b #$60,($f625).w
	bcc.s sub_20208a
	move.b #$1,($f64f).w
	addq.l #$4,a7
	bra.w loc_201e4a

sub_20208a:
	bsr.w sub_203260
	bsr.w sub_202852
	jmp (loc_20a22a).l
	dc.b $4e,$75
	jsr (sub_202542).l
	bsr.w sub_2023de
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
	jsr (sub_20255e).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203260
	bra.w loc_202836
	.incbin 8506, 16
	bsr.w sub_202236
	cmpi.b #$1,($ff1903).l
	bne.s loc_20216c
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_20216c:
	move.w ($f624).w,(a5)
	bra.w loc_202836
	.incbin 8564, 194

sub_202236:
	jsr (sub_202542).l
	bsr.w sub_2023de
	tst.b ($f64e).w
	bne.s loc_20226c
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202290
loc_20226c:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202290:
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
	jmp (sub_20255e).l
loc_2022de:
	move.w #$2700,sr
	tst.w ($f6fc).w
	beq.s loc_20235c
	move.w #$0,($f6fc).w
	cmpi.b #$df,($f625).w
	beq.s loc_20235c
	movem.l a0-a1,-(a7)
	lea ($c00000).l,a1
	lea ($fa80).w,a0
	move.l #$c0000000,$4(a1)
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
	bne.s loc_20235e
loc_20235c:
	rte
loc_20235e:
	clr.b ($f64f).w
	movem.l d0-d7/a0-a6,-(a7)
	bsr.w sub_20208a
	movem.l (a7)+,d0-d7/a0-a6
	rte

sub_202370:
	tst.b ($d02a).w
	bne.s loc_202380
	tst.w ($f786).w
	beq.s loc_202380
	addq.w #$1,($f786).w
loc_202380:
	rts

sub_202382:
	tst.w ($f780).w
	beq.s loc_20238c
	addq.w #$1,($f780).w
loc_20238c:
	tst.w ($f782).w
	beq.s loc_202396
	addq.w #$1,($f782).w
loc_202396:
	rts

sub_202398:
	move.l d1,-(a7)
	move.l ($f636).w,d1
	bne.s loc_2023a6
	move.l #$2a6d365a,d1
loc_2023a6:
	move.l d1,d0
	asl.l #$2,d1
	add.l d0,d1
	asl.l #$3,d1
	add.l d0,d1
	move.w d1,d0
	swap d1
	add.w d1,d0
	move.w d0,d1
	swap d1
	move.l d1,($f636).w
	move.l (a7)+,d1
	rts

sub_2023c2:
	bsr.w sub_202542
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_20255e

sub_2023de:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_2023ec
	addq.w #$2,a1

sub_2023ec:
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

sub_20241a:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202496).l,a2
	moveq #$12,d7
loc_20242e:
	move.w (a2)+,(a0)
	dbf d7,loc_20242e
	move.w (dat_202498).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202454:
	move.w d0,(a1)
	dbf d7,loc_202454
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202486:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202486
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202496:
	dc.b $80,$04
dat_202498:
	.incbin 9368, 36

sub_2024bc:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2024de:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2024de
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20250c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20250c
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_20252a:
	move.l d0,(a1)+
	dbf d1,loc_20252a
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_20253a:
	move.l d0,(a1)+
	dbf d1,loc_20253a
	rts

sub_202542:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202552:
	btst.b #$0,($a11100).l
	bne.s loc_202552
	rts

sub_20255e:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9580, 60

sub_2025a8:
	rts

sub_2025aa:
	tst.b ($f00a).w
	bne.s loc_2025b6
	move.b d0,($f00a).w
	rts
loc_2025b6:
	tst.b ($f00b).w
	bne.s loc_2025c2
	move.b d0,($f00b).w
	rts
loc_2025c2:
	tst.b ($f00c).w
	bne.s loc_2025cc
	move.b d0,($f00c).w
loc_2025cc:
	rts

sub_2025ce:
	jsr (sub_202542).l
	tst.b ($f00a).w
	beq.s loc_2025e8
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2025e8:
	tst.b ($f00b).w
	beq.s loc_2025fc
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2025fc:
	tst.b ($f00c).w
	beq.s loc_202610
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202610:
	bra.w sub_20255e
	.incbin 9748, 32

sub_202634:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2026f6).l,a3
	lea ($c00000).l,a4
	bra.s loc_202650

sub_202646:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20270c).l,a3
loc_202650:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_20265e
	adda.w #$a,a3
loc_20265e:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202722
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_20267e
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_20267e:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2026ca
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2026a6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2026a6:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2026b4:
	lsr.w #$4,d0
loc_2026b6:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2026c4
	jmp (a3)

sub_2026c0:
	moveq #$0,d4
	moveq #$8,d3
loc_2026c4:
	dbf d0,loc_2026b6
	bra.s sub_20267e
loc_2026ca:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2026d8
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2026d8:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2026b4
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2026b4
loc_2026f6:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2026c0
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2026c0
	rts
dat_20270c:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2026c0
	rts

sub_202722:
	move.b (a0)+,d0
loc_202724:
	cmpi.b #$ff,d0
	bne.s loc_20272c
	rts
loc_20272c:
	move.w d0,d7
loc_20272e:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202724
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
	bne.s loc_20275c
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_20272e
loc_20275c:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202768:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202768
	bra.s loc_20272e

sub_202774:
	movem.l a1-a2,-(a7)
	lea (dat_20fdce).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20278c:
	tst.l (a2)
	beq.s loc_202794
	addq.w #$6,a2
	bra.s loc_20278c
loc_202794:
	move.w (a1)+,d0
	bmi.s loc_2027a0
loc_202798:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202798
loc_2027a0:
	movem.l (a7)+,a1-a2
	rts
	.incbin 10150, 44

sub_2027d2:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2027d8:
	clr.l (a2)+
	dbf d0,loc_2027d8
	rts

sub_2027e0:
	tst.l ($f680).w
	beq.s loc_202834
	tst.w ($f6f8).w
	bne.s loc_202834
	movea.l ($f680).w,a0
	lea (loc_2026f6).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202802
	adda.w #$a,a3
loc_202802:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202722
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
loc_202834:
	rts
loc_202836:
	tst.w ($f6f8).w
	beq.w loc_2028d4
loc_20283e:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202870

sub_202852:
	tst.w ($f6f8).w
	beq.s loc_2028d4
	tst.b ($f744).w
	bne.s loc_20283e
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202870:
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
loc_2028a4:
	movea.w #$8,a5
	bsr.w sub_2026c0
	subq.w #$1,($f6f8).w
	beq.s loc_2028d6
	subq.w #$1,($f6fa).w
	bne.s loc_2028a4
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2028d4:
	rts
loc_2028d6:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2028dc:
	move.l $6(a0),(a0)+
	dbf d0,loc_2028dc
	rts

sub_2028e6:
	lea (dat_20fdce).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2028f8:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202634
	dbf d1,loc_2028f8
	rts
	.incbin 10520, 560

sub_202b48:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202ba4).l,a0
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
	bra.w loc_202bd0
dat_202ba4:
	dc.b $00,$04,$00,$00,$1c,$97,$00,$00
	dc.b $08,$00,$00,$60
dat_202bb0:
	.incbin 11184, 32
loc_202bd0:
	tst.b ($ff1522).l
	beq.s loc_202bec
	jsr (sub_206b9a).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bra.s loc_202c28
loc_202bec:
	lea (dat_202c64).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202c0e
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202bb0).l,a1
	adda.w d0,a1
	bra.s loc_202c18
loc_202c0e:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202c18:
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
	dc.b $00,$50,$04,$ec
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
	lea (dat_21f844).l,a4
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
	lea (dat_20fdbe).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202646
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
	bsr.w sub_202774
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
	lea (dat_23bd96).l,a1
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

sub_203a00:
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

sub_203ab8:
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
	cmpi.w #$100,d3
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

sub_203b64:
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

sub_203f40:
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
	bra.w sub_205cd2
loc_203fa6:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203fc4
	cmpa.w #$d040,a0
	beq.s loc_203fc4
	tst.b ($ff1906).l
	beq.s loc_203fc4
	jmp (loc_2074c0).l
loc_203fc4:
	move.b $2a(a0),d0
	beq.s loc_203fee
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203fe0
	cmpi.b #$2d,d0
	bcs.s loc_203fea
	move.b #$2d,d0
	bra.s loc_203fea
loc_203fe0:
	cmpi.b #$1e,d0
	bcs.s loc_203fea
	move.b #$1e,d0
loc_203fea:
	move.b d0,$2a(a0)
loc_203fee:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203ffc(pc,d0.w),d1
	jmp dat_203ffc(pc,d1.w)
dat_203ffc:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_204006:
	tst.b ($d300).w
	bne.s loc_204044
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_204044:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_20406c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_20406c:
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_2040a0:
	tst.b ($ff1506).l
	bne.s loc_204106
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_204106
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_20410a
	cmpi.b #$2f,d1
	bne.s loc_204108
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_204106
	tst.b $2c(a0)
	beq.s loc_204106
	jsr (sub_207880).l
	bne.s loc_204106
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_2040fe
	moveq #$0,d0
loc_2040fe:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_204106:
	rts
loc_204108:
	rts

sub_20410a:
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

sub_204130:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_20413c
	neg.w d0
loc_20413c:
	btst.b #$1,$2c(a0)
	beq.s loc_20414c
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204174
loc_20414c:
	cmpi.w #$600,d0
	bcs.s loc_204174
	tst.w $14(a0)
	bpl.s loc_204166
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204182
	move.w #$e0,d1
	bra.s loc_204182
loc_204166:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204182
	move.w #$60,d1
	bra.s loc_204182
loc_204174:
	cmpi.w #$a0,d1
	beq.s loc_204182
	bcc.s loc_204180
	addq.w #$2,d1
	bra.s loc_204182
loc_204180:
	subq.w #$2,d1
loc_204182:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_204130
	bsr.w sub_2040a0
	tst.w ($ff1588).l
	beq.s loc_2041a8
	btst.b #$4,($f605).w
	beq.s loc_2041a8
	move.b #$1,($ff1906).l
	rts
loc_2041a8:
	tst.b ($f7cc).w
	bne.s loc_2041b4
	move.w ($f604).w,($f602).w
loc_2041b4:
	btst.b #$0,$2c(a0)
	beq.s loc_2041d8
	cmpi.b #$6,($ff1506).l
	bne.s loc_2041d2
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2041f0
loc_2041d2:
	bsr.w sub_2044ba
	bra.s loc_2041f0
loc_2041d8:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204236(pc,d0.w),d1
	jsr dat_204236(pc,d1.w)
	jsr (sub_206ac6).l
loc_2041f0:
	bsr.s sub_204244
	bsr.w sub_204304
	bsr.w sub_20431e
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204218
	tst.b $1c(a0)
	bne.s loc_204218
	move.b $1d(a0),$1c(a0)
loc_204218:
	bsr.w sub_2056c2
	tst.b $2c(a0)
	bmi.s loc_204230
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204230
	jsr (sub_20706a).l
loc_204230:
	bsr.w sub_205578
	rts
dat_204236:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204244:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204268
	move.w $30(a0),d0
	beq.s loc_20425a
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204268
loc_20425a:
	btst.b #$6,$2c(a0)
	bne.s loc_204268
	jsr (sub_203ab8).l
loc_204268:
	tst.b ($ff151f).l
	beq.s loc_2042ac
	tst.w $32(a0)
	beq.s loc_2042ac
	subq.w #$1,$32(a0)
	bne.s loc_2042ac
	tst.b ($ff1520).l
	bne.s loc_2042a4
	tst.b ($ff1958).l
	bne.s loc_2042a4
	tst.b ($ff152e).l
	bne.s loc_20429e
	move.w #$e,d0
	jsr (sub_205cd2).l
loc_20429e:
	jsr (sub_2019cc).l
loc_2042a4:
	move.b #$0,($ff151f).l
loc_2042ac:
	tst.b ($ff1520).l
	beq.s loc_204302
	tst.w $34(a0)
	beq.s loc_204302
	subq.w #$1,$34(a0)
	bne.s loc_204302
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2042fa
	tst.b ($ff1958).l
	bne.s loc_2042fa
	tst.b ($ff152e).l
	bne.s loc_2042f4
	move.w #$e,d0
	jsr (sub_205cd2).l
loc_2042f4:
	jsr (sub_2019cc).l
loc_2042fa:
	move.b #$0,($ff1520).l
loc_204302:
	rts

sub_204304:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20431e:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20432a
loc_204328:
	rts
loc_20432a:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20433c
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204328
loc_20433c:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204380
	bset.b #$6,$22(a0)
	bne.s loc_204328
	bsr.w sub_206152
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204328
	bra.s loc_2043b8
loc_204380:
	tst.w $12(a0)
	beq.s loc_204388
	bpl.s loc_204328
loc_204388:
	bclr.b #$6,$22(a0)
	beq.s loc_204328
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204328
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2043b8
	move.w #$f000,$12(a0)
loc_2043b8:
	jsr (sub_207880).l
	bne.s loc_2043cc
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2043cc:
	rts

sub_2043ce:
	move.b ($ff1522).l,($ff1546).l
	move.w $8(a0),($ff1548).l
	move.w $c(a0),($ff154a).l
	move.w $14(a0),($ff1564).l
	move.w $10(a0),($ff1566).l
	move.w $12(a0),($ff1568).l
	move.b $22(a0),($ff154c).l
	bclr.b #$3,($ff154c).l
	bclr.b #$6,($ff154c).l
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
	bcs.s loc_2044a8
	move.l #$50000,d0
loc_2044a8:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2044ba:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2044e0
	tst.b ($ff152e).l
	beq.s loc_2044d6
	cmpi.b #$2,($ff152e).l
	bne.s loc_2044e0
loc_2044d6:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204590
loc_2044e0:
	tst.b $2a(a0)
	bne.w loc_20459e
	tst.b ($f784).w
	beq.w loc_20459e
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2044fe
	neg.w d0
loc_2044fe:
	tst.w ($f786).w
	bne.s loc_20450a
	move.w #$1,($f786).w
loc_20450a:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204520
	move.b #$1,($ff1502).l
	bra.w loc_205cce
loc_204520:
	cmpi.w #$d2,d1
	bcs.s loc_204574
	cmpi.b #$2,($ff1522).l
	beq.s loc_204572
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20454a
	move.w #$82,d0
	jsr (sub_205cd2).l
	moveq #$0,d0
loc_20454a:
	add.b ($f784).w,d0
	bpl.s loc_204554
	moveq #$0,d0
	bra.s loc_20455c
loc_204554:
	cmpi.b #$3,d0
	bcs.s loc_20455c
	moveq #$2,d0
loc_20455c:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2043ce
	move.b #$2,($ff1522).l
loc_204572:
	rts
loc_204574:
	cmpi.w #$5a,d1
	bcc.s loc_20458c
	cmp.w d2,d0
	bcc.w loc_204006
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20458c:
	cmp.w d2,d0
	bcc.s loc_20459e
loc_204590:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20459e:
	rts
	bsr.w sub_203f40
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045d0
	tst.b ($ff195b).l
	beq.s loc_2045be
	cmpi.b #$79,$1a(a0)
	bne.s loc_2045fa
	bra.s loc_2045c6
loc_2045be:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2045fa
loc_2045c6:
	bsr.w sub_204e62
	jmp (sub_203a00).l
loc_2045d0:
	bsr.w sub_2046a8
	bsr.w sub_2044ba
	bsr.w sub_204f4c
	bsr.w sub_205078
	bsr.w sub_20471c
	bsr.w sub_204ece
	bsr.w sub_204e62
	jsr (sub_203a62).l
	bsr.w sub_200b12
	bsr.w sub_2050f6
loc_2045fa:
	rts
	.incbin 17916, 76
	bsr.w sub_2046a8
	bsr.w sub_2044ba
	bsr.w sub_204f4c
	bsr.w sub_2050b4
	bsr.w sub_204bbc
	bsr.w sub_204e62
	tst.b $2a(a0)
	bne.s loc_20466c
	jsr (sub_203a62).l
loc_20466c:
	bsr.w sub_200b12
	bsr.w sub_2050f6
	rts
	bsr.w sub_2046a8
	bsr.w sub_2044ba
	bsr.w sub_205036
	bsr.w sub_204d82
	bsr.w sub_204e62
	jsr (sub_203a00).l
	btst.b #$6,$22(a0)
	beq.s loc_20469e
	subi.w #$28,$12(a0)
loc_20469e:
	bsr.w sub_205140
	bsr.w sub_205164
	rts

sub_2046a8:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204714
	tst.w ($ff1506).l
	bne.s loc_204714
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204716).l,a2
loc_2046dc:
	move.b (a2)+,d0
	bmi.s loc_2046ec
	cmp.b d0,d1
	bne.s loc_2046dc
	bset.b #$1,$2c(a0)
	rts
loc_2046ec:
	bclr.b #$1,$2c(a0)
	beq.s loc_204714
	tst.w $12(a0)
	bpl.s loc_204714
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204714
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204714
	neg.w $10(a0)
loc_204714:
	rts
dat_204716:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20471c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204a46
	tst.w $3e(a0)
	bne.w loc_2049f6
	btst.b #$2,($f602).w
	beq.s loc_204744
	bsr.w sub_204ad6
loc_204744:
	btst.b #$3,($f602).w
	beq.s loc_204750
	bsr.w sub_204b4c
loc_204750:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2049f6
	tst.w $14(a0)
	beq.s loc_204770
	tst.b $2a(a0)
	beq.w loc_2049f6
	bra.s loc_20477c
loc_204770:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20477c:
	btst.b #$3,$22(a0)
	beq.s loc_2047ce
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204826
	cmpi.b #$1e,$0(a1)
	bne.s loc_2047ae
	move.b #$0,$1c(a0)
	bra.w loc_2049f6
loc_2047ae:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20480a
	cmp.w d2,d1
	bge.s loc_2047f8
	bra.s loc_204826
loc_2047ce:
	jsr (sub_206dce).l
	cmpi.w #$c,d1
	blt.s loc_204826
	move.w #$ab,d0
	jsr (sub_2025aa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204802
loc_2047f8:
	btst.b #$0,$22(a0)
	bne.s loc_204812
	bra.s loc_20481c
loc_204802:
	cmpi.b #$3,$37(a0)
	bne.s loc_204826
loc_20480a:
	btst.b #$0,$22(a0)
	bne.s loc_20481c
loc_204812:
	move.b #$32,$1c(a0)
	bra.w loc_2049f6
loc_20481c:
	move.b #$6,$1c(a0)
	bra.w loc_2049f6
loc_204826:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20483a
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20483a:
	btst.b #$7,($f788).w
	bne.w loc_20493e
	btst.b #$6,($f788).w
	bne.w loc_20495e
	btst.b #$1,($f602).w
	bne.w loc_20495e
	andi.b #$f,($f788).w
	beq.s loc_204872
	btst.b #$0,($f603).w
	beq.s loc_204886
	bset.b #$7,($f788).w
	bra.w loc_204a1a
loc_204872:
	btst.b #$0,($f603).w
	beq.w loc_204886
	move.b #$1,($f788).w
	bra.w loc_204a1a
loc_204886:
	btst.b #$0,($f602).w
	beq.s loc_204902
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2048e4
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2048b6
	asr.w #$1,d2
	sub.w d2,d1
loc_2048b6:
	btst.b #$0,$22(a0)
	beq.s loc_2048c2
	neg.w d0
	neg.w d1
loc_2048c2:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2048d8
	cmp.w d0,d1
	ble.s loc_2048de
	bra.s loc_2048dc
loc_2048d8:
	cmp.w d1,d0
	ble.s loc_2048de
loc_2048dc:
	move.w d1,d0
loc_2048de:
	move.w d0,$14(a0)
	rts
loc_2048e4:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048fe
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2025aa).l
loc_2048fe:
	bra.w loc_204a1a
loc_204902:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204922
	move.w #$ab,d0
	jsr (sub_2025aa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_20495e
loc_204922:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2025aa).l
	bra.w loc_2049f6
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20493e:
	btst.b #$0,($f602).w
	beq.s loc_20495e
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204a1a
	addq.w #$2,($f73e).w
	bra.w loc_204a1a
loc_20495e:
	btst.b #$6,($f788).w
	bne.w loc_2049da
	andi.b #$f,($f788).w
	beq.s loc_204982
	btst.b #$1,($f603).w
	beq.s loc_204994
	bset.b #$6,($f788).w
	bra.w loc_204a1a
loc_204982:
	btst.b #$1,($f603).w
	beq.s loc_204994
	move.b #$1,($f788).w
	bra.w loc_204a1a
loc_204994:
	btst.b #$1,($f602).w
	beq.s loc_2049f6
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2049d8
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049d8
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2049ca
	neg.w $14(a0)
loc_2049ca:
	move.w #$9c,d0
	jsr (sub_2025aa).l
	bsr.w sub_204ef6
loc_2049d8:
	bra.s loc_204a1a
loc_2049da:
	btst.b #$1,($f602).w
	beq.s loc_2049f6
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204a1a
	subq.w #$2,($f73e).w
	bra.s loc_204a1a
loc_2049f6:
	cmpi.w #$60,($f73e).w
	bne.s loc_204a10
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204a1a
	move.b #$0,($f788).w
	bra.s loc_204a1a
loc_204a10:
	bcc.s loc_204a16
	addq.w #$4,($f73e).w
loc_204a16:
	subq.w #$2,($f73e).w
loc_204a1a:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a46
	move.w $14(a0),d0
	beq.s loc_204a46
	bmi.s loc_204a3a
	sub.w d5,d0
	bcc.s loc_204a34
	move.w #$0,d0
loc_204a34:
	move.w d0,$14(a0)
	bra.s loc_204a46
loc_204a3a:
	add.w d5,d0
	bcc.s loc_204a42
	move.w #$0,d0
loc_204a42:
	move.w d0,$14(a0)
loc_204a46:
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a64:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204ad4
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204ad4
	bmi.s loc_204a7c
	neg.w d1
loc_204a7c:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206c8e
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204ad4
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204ad0
	cmpi.b #$40,d0
	beq.s loc_204abe
	cmpi.b #$80,d0
	beq.s loc_204ab8
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204ab8:
	sub.w d1,$12(a0)
	rts
loc_204abe:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204ad0:
	add.w d1,$12(a0)
loc_204ad4:
	rts

sub_204ad6:
	tst.b $2a(a0)
	bne.s loc_204b4a
	move.w $14(a0),d0
	beq.s loc_204ae4
	bpl.s loc_204b14
loc_204ae4:
	bset.b #$0,$22(a0)
	bne.s loc_204af8
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204af8:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204b08
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204b08
	move.w d1,d0
loc_204b08:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b14:
	sub.w d4,d0
	bcc.s loc_204b1c
	move.w #$ff80,d0
loc_204b1c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b4a
	cmpi.w #$400,d0
	blt.s loc_204b4a
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2025aa).l
loc_204b4a:
	rts

sub_204b4c:
	tst.b $2a(a0)
	bne.s loc_204bba
	move.w $14(a0),d0
	bmi.s loc_204b84
	bclr.b #$0,$22(a0)
	beq.s loc_204b6c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b6c:
	cmp.w d6,d0
	bge.s loc_204b78
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b78
	move.w d6,d0
loc_204b78:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b84:
	add.w d4,d0
	bcc.s loc_204b8c
	move.w #$80,d0
loc_204b8c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204bba
	cmpi.w #$fc00,d0
	bgt.s loc_204bba
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2025aa).l
loc_204bba:
	rts

sub_204bbc:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204d06
	tst.w $3e(a0)
	bne.s loc_204bf4
	btst.b #$2,($f602).w
	beq.s loc_204be8
	bsr.w sub_204d3c
loc_204be8:
	btst.b #$3,($f602).w
	beq.s loc_204bf4
	bsr.w sub_204d60
loc_204bf4:
	tst.b $2a(a0)
	beq.w loc_204c9e
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204c14
	asr.w #$1,d2
	sub.w d2,d1
loc_204c14:
	btst.b #$0,$22(a0)
	beq.s loc_204c20
	neg.w d0
	neg.w d1
loc_204c20:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204c36
	cmp.w d0,d1
	ble.s loc_204c3c
	bra.s loc_204c3a
loc_204c36:
	cmp.w d1,d0
	ble.s loc_204c3c
loc_204c3a:
	move.w d1,d0
loc_204c3c:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204c70
	rts
loc_204c4a:
	move.w #$ab,d0
	jsr (sub_2025aa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204cd0
loc_204c70:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204c4a
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2025aa).l
	btst.b #$0,$22(a0)
	bne.s loc_204c96
	bsr.w sub_204d60
	bra.s loc_204c9e
loc_204c96:
	bsr.w sub_204d3c
	bra.s loc_204c9e
	dc.b $4e,$75
loc_204c9e:
	move.w $14(a0),d0
	beq.s loc_204cc0
	bmi.s loc_204cb4
	sub.w d5,d0
	bcc.s loc_204cae
	move.w #$0,d0
loc_204cae:
	move.w d0,$14(a0)
	bra.s loc_204cc0
loc_204cb4:
	add.w d5,d0
	bcc.s loc_204cbc
	move.w #$0,d0
loc_204cbc:
	move.w d0,$14(a0)
loc_204cc0:
	tst.w $14(a0)
	bne.s loc_204d06
	move.w #$ab,d0
	jsr (sub_2025aa).l
loc_204cd0:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204cf0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204d00
loc_204cf0:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204d00:
	move.b #$5,$1c(a0)
loc_204d06:
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204d2a
	move.w #$1000,d1
loc_204d2a:
	cmpi.w #$f000,d1
	bge.s loc_204d34
	move.w #$f000,d1
loc_204d34:
	move.w d1,$10(a0)
	bra.w loc_204a64

sub_204d3c:
	move.w $14(a0),d0
	beq.s loc_204d44
	bpl.s loc_204d52
loc_204d44:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d52:
	sub.w d4,d0
	bcc.s loc_204d5a
	move.w #$ff80,d0
loc_204d5a:
	move.w d0,$14(a0)
	rts

sub_204d60:
	move.w $14(a0),d0
	bmi.s loc_204d74
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d74:
	add.w d4,d0
	bcc.s loc_204d7c
	move.w #$80,d0
loc_204d7c:
	move.w d0,$14(a0)
	rts

sub_204d82:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204dbc
	tst.w ($ff1506).l
	bne.s loc_204dbc
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204db4
	cmpi.w #$840,$8(a0)
	bcc.s loc_204db4
	rts
loc_204db4:
	btst.b #$1,$2c(a0)
	bne.s loc_204dec
loc_204dbc:
	btst.b #$2,($f602).w
	beq.s loc_204dd6
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204dd6
	move.w d1,d0
loc_204dd6:
	btst.b #$3,($f602).w
	beq.s loc_204dec
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204dec
	move.w d6,d0
loc_204dec:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204e02
	bcc.s loc_204dfe
	addq.w #$4,($f73e).w
loc_204dfe:
	subq.w #$2,($f73e).w
loc_204e02:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204e30
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204e30
	bmi.s loc_204e24
	sub.w d1,d0
	bcc.s loc_204e1e
	move.w #$0,d0
loc_204e1e:
	move.w d0,$10(a0)
	rts
loc_204e24:
	sub.w d1,d0
	bcs.s loc_204e2c
	move.w #$0,d0
loc_204e2c:
	move.w d0,$10(a0)
loc_204e30:
	rts
	.incbin 20018, 48

sub_204e62:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204eb6
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204e90
	addi.w #$38,d0
loc_204e90:
	cmp.w d1,d0
	bls.s loc_204eb6
loc_204e94:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204ea4
	rts
loc_204ea4:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2072fc
	move.b #$6,$24(a0)
	rts
loc_204eb6:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204e94

sub_204ece:
	tst.b ($f7ca).w
	bne.s loc_204ef4
	move.w $14(a0),d0
	bpl.s loc_204edc
	neg.w d0
loc_204edc:
	cmpi.w #$80,d0
	bcs.s loc_204ef4
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204ef4
	btst.b #$1,($f602).w
	bne.s sub_204ef6
loc_204ef4:
	rts

sub_204ef6:
	btst.b #$2,$22(a0)
	beq.s loc_204f00
	bra.s loc_204f30
loc_204f00:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f20
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f30
loc_204f20:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f30:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204f4a
	cmpi.w #$200,$14(a0)
	bcc.s loc_204f4a
	move.w #$200,$14(a0)
loc_204f4a:
	rts

sub_204f4c:
	tst.b $2a(a0)
	beq.s loc_204f54
	rts
loc_204f54:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204f66
	tst.w $14(a0)
	beq.w loc_20502c
loc_204f66:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20502c
	btst.b #$3,$22(a0)
	beq.s loc_204f82
	jsr (sub_205c58).l
	beq.s loc_204fb2
loc_204f82:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206cf8
	cmpi.w #$6,d1
	blt.w loc_20502c
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204fa8
	move.w #$380,d2
loc_204fa8:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204fb2:
	jsr (sub_200712).l
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
	jsr (sub_2025aa).l
	btst.b #$2,$22(a0)
	bne.s loc_20502e
	tst.b ($ff195b).l
	beq.s loc_205010
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_205020
loc_205010:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205020:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_20502c:
	rts
loc_20502e:
	bset.b #$4,$22(a0)
	rts

sub_205036:
	tst.b $3c(a0)
	beq.s loc_205068
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_20504c
	move.w #$fe00,d1
loc_20504c:
	cmp.w $12(a0),d1
	ble.s loc_205066
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205066
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205066:
	rts
loc_205068:
	cmpi.w #$f040,$12(a0)
	bge.s loc_205076
	move.w #$f040,$12(a0)
loc_205076:
	rts

sub_205078:
	tst.b $2a(a0)
	bne.s loc_2050b2
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050b2
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_2050b2
	bmi.s loc_2050ae
	tst.w d0
	beq.s loc_2050ac
	add.w d0,$14(a0)
loc_2050ac:
	rts
loc_2050ae:
	add.w d0,$14(a0)
loc_2050b2:
	rts

sub_2050b4:
	tst.b $2a(a0)
	bne.s loc_2050f4
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050f4
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2050ea
	tst.w d0
	bpl.s loc_2050e4
	asr.l #$2,d0
loc_2050e4:
	add.w d0,$14(a0)
	rts
loc_2050ea:
	tst.w d0
	bmi.s loc_2050f0
	asr.l #$2,d0
loc_2050f0:
	add.w d0,$14(a0)
loc_2050f4:
	rts

sub_2050f6:
	nop
	tst.b $38(a0)
	bne.s loc_205138
	tst.w $3e(a0)
	bne.s loc_20513a
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205138
	move.w $14(a0),d0
	bpl.s loc_20511a
	neg.w d0
loc_20511a:
	cmpi.w #$280,d0
	bcc.s loc_205138
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205138:
	rts
loc_20513a:
	subq.w #$1,$3e(a0)
	rts

sub_205140:
	btst.b #$1,$2c(a0)
	bne.s loc_205162
	move.b $26(a0),d0
	beq.s loc_205162
	bpl.s loc_205158
	addq.b #$2,d0
	bcc.s loc_205156
	moveq #$0,d0
loc_205156:
	bra.s loc_20515e
loc_205158:
	subq.b #$2,d0
	bcc.s loc_20515e
	moveq #$0,d0
loc_20515e:
	move.b d0,$26(a0)
loc_205162:
	rts

sub_205164:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2009aa).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205248
	cmpi.b #$80,d0
	beq.w loc_2052aa
	cmpi.b #$c0,d0
	beq.w loc_205306
	bsr.w sub_20700e
	tst.w d1
	bpl.s loc_2051b6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051b6:
	bsr.w sub_206e70
	tst.w d1
	bpl.s loc_2051c8
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051c8:
	bsr.w sub_206d20
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205246
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2051e6
	cmp.b d2,d0
	blt.s loc_205246
loc_2051e6:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205368
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205224
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205216
	asr.w $12(a0)
	bra.s loc_205238
loc_205216:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205224:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205238
	move.w #$fc0,$12(a0)
loc_205238:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205246
	neg.w $14(a0)
loc_205246:
	rts
loc_205248:
	bsr.w sub_20700e
	tst.w d1
	bpl.s loc_205262
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205262:
	bsr.w sub_206ec8
	tst.w d1
	bpl.s loc_20527c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20527a
	move.w #$0,$12(a0)
loc_20527a:
	rts
loc_20527c:
	tst.w $12(a0)
	bmi.s loc_2052a8
	bsr.w sub_206d20
	tst.w d1
	bpl.s loc_2052a8
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205368
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2052a8:
	rts
loc_2052aa:
	bsr.w sub_20700e
	tst.w d1
	bpl.s loc_2052bc
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052bc:
	bsr.w sub_206e70
	tst.w d1
	bpl.s loc_2052ce
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052ce:
	bsr.w sub_206ec8
	tst.w d1
	bpl.s loc_205304
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052ee
	move.w #$0,$12(a0)
	rts
loc_2052ee:
	move.b d3,$26(a0)
	bsr.w sub_2053da
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205304
	neg.w $14(a0)
loc_205304:
	rts
loc_205306:
	bsr.w sub_206e70
	tst.w d1
	bpl.s loc_205320
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205320:
	bsr.w sub_206ec8
	tst.w d1
	bpl.s loc_20533a
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205338
	move.w #$0,$12(a0)
loc_205338:
	rts
loc_20533a:
	tst.w $12(a0)
	bmi.s loc_205366
	bsr.w sub_206d20
	tst.w d1
	bpl.s loc_205366
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205368
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205366:
	rts

sub_205368:
	btst.b #$4,$22(a0)
	beq.s loc_205372
	nop
loc_205372:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2053cc
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2053ac
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2053bc
loc_2053ac:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2053bc:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2025aa).l
loc_2053cc:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2053da:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21498, 382

sub_205578:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2055a0
	cmpi.b #$5,($ff1506).l
	beq.s loc_2055a0
	cmpi.b #$2,($ff1506).l
	beq.s loc_2055a0
	tst.b ($ff1506).l
	bne.w loc_205662
loc_2055a0:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2055de
	tst.b ($ff1506).l
	bne.w loc_205664
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205664
	bra.s loc_2055e6
loc_2055de:
	cmp.b ($f7af).w,d1
	beq.w loc_205664
loc_2055e6:
	cmp.b ($f7ac).w,d1
	beq.s loc_205616
	cmp.b ($f7ad).w,d1
	beq.s loc_2055fa
	bclr.b #$6,$1(a0)
	rts
loc_2055fa:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20567c
	btst.b #$1,$22(a0)
	beq.s loc_205616
	bclr.b #$6,$1(a0)
	rts
loc_205616:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205628
	bclr.b #$6,$1(a0)
	rts
loc_205628:
	cmpi.b #$e0,d2
	bcs.s loc_205636
	bset.b #$6,$1(a0)
	rts
loc_205636:
	btst.b #$6,$1(a0)
	bne.s loc_205652
	move.b $26(a0),d1
	beq.s loc_205662
	cmpi.b #$80,d1
	bhi.s loc_205662
	bset.b #$6,$1(a0)
	rts
loc_205652:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205662
	bclr.b #$6,$1(a0)
loc_205662:
	rts
loc_205664:
	btst.b #$2,$22(a0)
	bne.s loc_205676
	move.w #$9c,d0
	jsr (sub_2025aa).l
loc_205676:
	jmp (sub_204ef6).l
loc_20567c:
	tst.w $12(a0)
	bmi.s loc_2056c0
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2056b4
	cmpi.w #$38,d1
	bcs.s loc_2056ac
	cmpi.w #$80,d1
	bcs.s loc_2056c0
loc_2056a4:
	bclr.b #$6,$1(a0)
	rts
loc_2056ac:
	bset.b #$6,$1(a0)
	rts
loc_2056b4:
	cmpi.w #$38,d1
	bcs.s loc_2056a4
	cmpi.w #$80,d1
	bcc.s loc_2056ac
loc_2056c0:
	rts

sub_2056c2:
	lea (dat_2059b2).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2056e4
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2056e4:
	bsr.w sub_205954
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20575c
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20572a
	move.b d0,$1e(a0)

sub_20570e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205722
	bpl.s loc_205722
	cmpi.b #$fd,d0
	bge.s loc_20572c
loc_205722:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20572a:
	rts
loc_20572c:
	addq.b #$1,d0
	bne.s loc_20573c
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205722
loc_20573c:
	addq.b #$1,d0
	bne.s loc_205750
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205722
loc_205750:
	addq.b #$1,d0
	bne.s loc_20575a
	move.b $2(a1,d1.w),$1c(a0)
loc_20575a:
	rts
loc_20575c:
	subq.b #$1,$1e(a0)
	bpl.s loc_20572a
	addq.b #$1,d0
	bne.w loc_205816
	tst.b ($ff195b).l
	bne.w loc_2058de
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205784
	not.b d0
loc_205784:
	btst.b #$1,$2c(a0)
	bne.s loc_205792
	addi.b #$10,d0
	bra.s loc_205794
loc_205792:
	addq.b #$8,d0
loc_205794:
	bpl.s loc_205798
	moveq #$3,d1
loc_205798:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20588a
	move.w $14(a0),d2
	bpl.s loc_2057b6
	neg.w d2
loc_2057b6:
	btst.b #$1,$2c(a0)
	beq.s loc_2057ce
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205bb4).l,a1
	bra.s loc_2057f8
loc_2057ce:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205b8e).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2057f8
	lea (dat_205a32).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2057f8
	lea (dat_205a2a).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2057f8:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205806
	moveq #$0,d2
loc_205806:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20570e
	add.b d3,$1a(a0)
	rts
loc_205816:
	addq.b #$1,d0
	bne.s loc_205886
	move.w $14(a0),d2
	bpl.s loc_205822
	neg.w d2
loc_205822:
	lea (dat_205b10).l,a1
	tst.b ($ff195b).l
	bne.s loc_205860
	lea (dat_205a42).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205854
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205860
	lea (dat_205bbc).l,a1
	bra.s loc_205860
loc_205854:
	cmpi.w #$600,d2
	bcc.s loc_205860
	lea (dat_205a3a).l,a1
loc_205860:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20586a
	moveq #$0,d2
loc_20586a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20570e
loc_205886:
	addq.b #$1,d0
	bne.s loc_2058ca
loc_20588a:
	move.w $14(a0),d2
	bmi.s loc_205892
	neg.w d2
loc_205892:
	addi.w #$800,d2
	bpl.s loc_20589a
	moveq #$0,d2
loc_20589a:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205b22).l,a1
	tst.b ($ff195b).l
	bne.s loc_2058b4
	lea (dat_205a4a).l,a1
loc_2058b4:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20570e
loc_2058ca:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2058de:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2058f0
	not.b d0
loc_2058f0:
	addi.b #$10,d0
	bpl.s loc_2058f8
	moveq #$0,d1
loc_2058f8:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205926
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205816
loc_205926:
	move.w $14(a0),d2
	bpl.s loc_20592e
	neg.w d2
loc_20592e:
	lea (dat_205b0a).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205940
	lea (dat_205b04).l,a1
loc_205940:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20594a
	moveq #$0,d2
loc_20594a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20570e

sub_205954:
	tst.b ($ff195b).l
	beq.s loc_205960
	move.b dat_205962(pc,d0.w),d0
loc_205960:
	rts
dat_205962:
	.incbin 22882, 80
dat_2059b2:
	.incbin 22962, 120
dat_205a2a:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205a32:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205a3a:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205a42:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205a4a:
	.incbin 23114, 186
dat_205b04:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205b0a:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205b10:
	.incbin 23312, 18
dat_205b22:
	.incbin 23330, 108
dat_205b8e:
	.incbin 23438, 38
dat_205bb4:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205bbc:
	.incbin 23484, 56

sub_205bf4:
	tst.b (a0)
	beq.w loc_205c56
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c56
	move.b d0,(a2)
	lea (dat_233a26).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c56
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205c28:
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
loc_205c42:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c42
	dbf d1,loc_205c28
loc_205c56:
	rts

sub_205c58:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205ccc
	move.w #$98,d0
	jsr (sub_2025aa).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_2009aa).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205cba
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205cba:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205ccc:
	rts
loc_205cce:
	move.w #$e,d0

sub_205cd2:
	cmpi.w #$67,d0
	bne.s loc_205ce0
	move.b #$1,($ff1958).l
loc_205ce0:
	move.w d0,($a12010).l
loc_205ce6:
	move.w ($a12020).l,d0
	beq.s loc_205ce6
	cmp.w ($a12020).l,d0
	bne.s loc_205ce6
	move.w #$0,($a12010).l
loc_205cfe:
	move.w ($a12020).l,d0
	bne.s loc_205cfe
	move.w ($a12020).l,d0
	bne.s loc_205cfe
	rts
	dc.b $00,$00

sub_205d12:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205d2e
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205d2e:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d6e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d70
loc_205d4a:
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
loc_205d6e:
	rts
loc_205d70:
	addq.b #$1,d0
	bne.s loc_205d80
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205d4a
loc_205d80:
	addq.b #$1,d0
	bne.s loc_205d94
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205d4a
loc_205d94:
	addq.b #$1,d0
	bne.s loc_205d9e
	move.b $2(a1,d1.w),$1c(a0)
loc_205d9e:
	addq.b #$1,d0
	bne.s loc_205da6
	addq.b #$2,$24(a0)
loc_205da6:
	addq.b #$1,d0
	bne.s loc_205db4
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205db4:
	addq.b #$1,d0
	bne.s loc_205dbc
	addq.b #$2,$25(a0)
loc_205dbc:
	rts

sub_205dbe:
	move.b ($ff1522).l,($ff1523).l
	move.w ($d008).w,($ff1524).l
	move.w ($d00c).w,($ff1526).l
	move.b ($f64d).w,($ff1543).l
	move.w ($f72e).w,($ff1530).l
	move.w ($f700).w,($ff1532).l
	move.w ($f704).w,($ff1534).l
	move.w ($f708).w,($ff1536).l
	move.w ($f70c).w,($ff1538).l
	move.w ($f710).w,($ff153a).l
	move.w ($f714).w,($ff153c).l
	move.w ($f718).w,($ff153e).l
	move.w ($f71c).w,($ff1540).l
	move.w ($f648).w,($ff1542).l
	move.b ($f64d).w,($ff1543).l
	move.b ($f64e).w,($ff1544).l
	move.l ($ff1514).l,d0
	cmpi.l #$50000,d0
	bcs.s loc_205e54
	move.l #$50000,d0
loc_205e54:
	move.l d0,($ff152a).l
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e76(pc,d0.w),d0
	jsr dat_205e76(pc,d0.w)
	jsr (sub_203ab8).l
	jmp (loc_2078b6).l
dat_205e76:
	.incbin 24182, 20
	move.w #$6cb,$2(a0)
	move.b #$4,$1(a0)
	move.b #$8,$19(a0)
	move.b #$18,$16(a0)
	move.b #$4,$18(a0)
	move.b ($ff158e).l,d0
	cmp.b $28(a0),d0
	bcs.s loc_205ebc
	move.b #$1,$2e(a0)
	bra.s loc_205ec2
loc_205ebc:
	move.b #$e3,$20(a0)
loc_205ec2:
	jsr (sub_207880).l
	bne.s loc_205f34
	move.b #$13,$0(a1)
	addq.b #$4,$24(a1)
	tst.b $2e(a0)
	beq.s loc_205ede
	addq.b #$2,$24(a1)
loc_205ede:
	move.l #$21f94a,$4(a1)
	move.w #$6cb,$2(a1)
	move.b #$4,$1(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$3,$18(a1)
	move.b #$1,$1a(a1)
	move.l a0,$30(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$20,$c(a1)
	move.w $8(a0),$2a(a1)
	move.w $c(a0),$2c(a1)
	subi.w #$18,$2c(a1)
	rts
loc_205f34:
	jmp (sub_203b64).l
	tst.b $2e(a0)
	bne.s loc_205f6e
	tst.b $21(a0)
	beq.s loc_205f6e
	clr.b $20(a0)
	move.b #$1,$2e(a0)
	move.b $28(a0),($ff158e).l
	move.b #$1,($ff1522).l
	bsr.w sub_205dbe
	move.w #$ae,d0
	jmp (sub_2025aa).l
loc_205f6e:
	rts
	tst.b $2e(a0)
	bne.s loc_205f86
	movea.l $30(a0),a1
	tst.b $2e(a1)
	beq.s loc_205fc0
	move.b #$1,$2e(a0)
loc_205f86:
	addq.b #$8,$34(a0)
	moveq #$0,d0
	move.b $34(a0),d0
	jsr (sub_200712).l
	muls.w #$8,d0
	lsr.l #$8,d0
	move.w $2a(a0),$8(a0)
	add.w d0,$8(a0)
	muls.w #$fff8,d1
	lsr.l #$8,d1
	move.w $2c(a0),$c(a0)
	add.w d1,$c(a0)
	tst.b $34(a0)
	bne.s loc_205fc0
	addq.b #$2,$24(a0)
loc_205fc0:
	rts
	.incbin 24514, 400

sub_206152:
	cmpi.w #$c,($ff150a).l
	bhi.s loc_20618a
	move.w #$82,d0
	cmpi.w #$103,($ff1506).l
	bne.s loc_20616e
	move.w #$86,d0
loc_20616e:
	tst.b ($ff151f).l
	beq.s loc_20617a
	move.w #$87,d0
loc_20617a:
	tst.b ($f7aa).w
	beq.s loc_206184
	move.w #$8c,d0
loc_206184:
	jsr (sub_2025a8).l
loc_20618a:
	move.w #$1e,($ff150a).l
	clr.b ($d1f2).w
	rts
	.incbin 24984, 458
	bne.s loc_206376
	bset.b #$6,$36(a0)
	bne.s loc_20638e
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_206376:
	tst.b $34(a0)
	bne.s loc_20638e
	bset.b #$6,$36(a0)
	bne.s loc_20638e
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_20638e:
	subq.b #$1,$34(a0)
	bpl.s loc_206398
	clr.w $36(a0)
loc_206398:
	rts
	.incbin 25498, 154

sub_206434:
	tst.b $25(a0)
	bne.s loc_206464
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207880).l
	bne.s loc_206464
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206464:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206474(pc,d0.w),d0
	jmp dat_206474(pc,d0.w)
dat_206474:
	dc.b $00,$06,$00,$4a,$00,$5a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$680,$2(a0)
	move.l #$21f7b2,$4(a0)
	bsr.s sub_206434
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_2064be
	move.w #$100,$1c(a0)
loc_2064be:
	lea (dat_21f79e).l,a1
	bsr.w sub_205d12
	jmp (sub_203ab8).l
	tst.b $25(a0)
	beq.s loc_2064da
	jmp (sub_203b64).l
loc_2064da:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2064fc(pc,d0.w),d0
	jsr dat_2064fc(pc,d0.w)
	jmp (sub_203ab8).l
dat_2064fc:
	dc.b $00,$0a,$00,$5a,$00,$aa,$00,$fa
	dc.b $01,$08
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$26d7,$2(a0)
	move.l #$238e9e,$4(a0)
	tst.b $28(a0)
	bne.s loc_206544
	bsr.w sub_2065b0
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_2065a6
loc_206544:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206dce).l
	tst.w d1
	bpl.s loc_2065a2
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_20658c
	bsr.w sub_2065b0
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2065d6
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_20658c:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_2065a6
loc_2065a2:
	addq.w #$2,$c(a0)
loc_2065a6:
	lea (dat_238e82).l,a1
	bra.w sub_205d12

sub_2065b0:
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

sub_2065d6:
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
	bra.s loc_2065a6
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_2065a6
	.incbin 26130, 428
loc_2067be:
	bclr.b #$7,($ff156b).l
	beq.s loc_20680c
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20680e(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2067e2:
	move.l (a1)+,(a2)+
	dbf d0,loc_2067e2
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20680c:
	rts
dat_20680e:
	.incbin 26638, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206836(pc,d0.w),d0
	jsr dat_206836(pc,d0.w)
	jmp (sub_203ab8).l
dat_206836:
	dc.b $00,$04,$00,$1c
	ori.b #$4,$1(a0)
	move.w #$8280,$2(a0)
	move.l #$2068c6,$4(a0)
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$a0,d0
	moveq #$0,d1
	move.b $2a(a0),d1
	addq.b #$1,d1
	cmpi.b #$2,d1
	bcs.s loc_20686a
	moveq #$0,d1
loc_20686a:
	move.b d1,$2a(a0)
	move.b dat_206890(pc,d1.w),d1
	ext.w d1
	add.w d1,d0
	move.w d0,$8(a0)
	move.w ($f646).w,$c(a0)
	addq.w #$2,$c(a0)
	lea (dat_206892).l,a1
	jmp (sub_205d12).l
dat_206890:
	dc.b $a0,$60
dat_206892:
	.incbin 26770, 564

sub_206ac6:
	rts
loc_206ac8:
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
	bne.s loc_206b82
	move.b ($ff1593).l,($ff195b).l
loc_206b82:
	tst.b ($ff1522).l
	bpl.s loc_206b98
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b98:
	rts

sub_206b9a:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206ac8
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
	bne.s loc_206c54
	move.b ($ff1591).l,($ff195b).l
loc_206c54:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c76
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c76:
	tst.b ($ff1522).l
	bpl.s loc_206c8c
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c8c:
	rts

sub_206c8e:
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
	bpl.s loc_206cca
	move.b d1,d0
	bpl.s loc_206cc4
	subq.b #$1,d0
loc_206cc4:
	addi.b #$20,d0
	bra.s loc_206cd4
loc_206cca:
	move.b d1,d0
	bpl.s loc_206cd0
	addq.b #$1,d0
loc_206cd0:
	addi.b #$1f,d0
loc_206cd4:
	andi.b #$c0,d0
	beq.w loc_206da4
	cmpi.b #$80,d0
	beq.w loc_206f40
	andi.b #$38,d1
	bne.s loc_206cec
	addq.w #$8,d2
loc_206cec:
	cmpi.b #$40,d0
	beq.w loc_207016
	bra.w loc_206e78

sub_206cf8:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206f9e
	cmpi.b #$80,d0
	beq.w sub_206ec8
	cmpi.b #$c0,d0
	beq.w loc_206e08

sub_206d20:
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
loc_206d84:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206d92
	move.b ($f768).w,d3
	exg d0,d1
loc_206d92:
	btst.l #$0,d3
	beq.s loc_206d9a
	move.b d2,d3
loc_206d9a:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206da4:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201068).l
	move.b #$0,d2
loc_206dc0:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206dcc
	move.b d2,d3
loc_206dcc:
	rts

sub_206dce:
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
	jsr (sub_201068).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e06
	move.b #$0,d3
loc_206e06:
	rts
loc_206e08:
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
	jsr (sub_2011d8).l
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
	jsr (sub_2011d8).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206d84

sub_206e70:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e78:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b #$c0,d2
	bra.w loc_206dc0
	.incbin 28312, 48

sub_206ec8:
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
	bra.w loc_206d84

sub_206f38:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f40:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201068).l
	move.b #$80,d2
	bra.w loc_206dc0
	.incbin 28516, 58
loc_206f9e:
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
	jsr (sub_2011d8).l
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
	jsr (sub_2011d8).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206d84

sub_20700e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207016:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b #$40,d2
	bra.w loc_206dc0
	.incbin 28730, 48

sub_20706a:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_20708e
	addi.w #$c,d3
	moveq #$a,d5
loc_20708e:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_20709c:
	tst.b $1(a1)
	bpl.s loc_2070a8
	move.b $20(a1),d0
	bne.s loc_2070b4
loc_2070a8:
	lea $40(a1),a1
	dbf d6,loc_20709c
	moveq #$0,d0
	rts
loc_2070b4:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207442).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070dc
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070e2
	bra.w loc_2070a8
loc_2070dc:
	cmp.w d4,d0
	bhi.w loc_2070a8
loc_2070e2:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2070fa
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_207100
	bra.w loc_2070a8
loc_2070fa:
	cmp.w d5,d0
	bhi.w loc_2070a8
loc_207100:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207174
	cmpi.b #$c0,d1
	beq.w loc_207354
	tst.b d1
	bmi.w sub_20723e
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207138
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207136
	addq.b #$2,$24(a1)
loc_207136:
	rts
loc_207138:
	tst.w $12(a0)
	bpl.s loc_207162
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207172
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207172
	addq.b #$4,$25(a1)
	rts
loc_207162:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207172
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207172:
	rts

sub_207174:
	tst.b ($ff1521).l
	bne.s loc_20718e
	tst.b ($ff151f).l
	bne.s loc_20718e
	cmpi.b #$2,$1c(a0)
	bne.w sub_20723e
loc_20718e:
	tst.b $21(a1)
	beq.s loc_2071b8
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2071b6
	bset.b #$7,$22(a1)
loc_2071b6:
	rts
loc_2071b8:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071d0
	moveq #$6,d0
loc_2071d0:
	move.w d0,$3e(a1)
	move.w dat_207230(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2071ea
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2071ea:
	bsr.w sub_20a1e2
	move.w #$96,d0
	jsr (sub_2025aa).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207220
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207228
	neg.w $12(a0)
	rts
loc_207220:
	addi.w #$100,$12(a0)
	rts
loc_207228:
	subi.w #$100,$12(a0)
	rts
dat_207230:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_20723e:
	tst.b ($ff1521).l
	bne.s loc_20724e
	tst.b ($ff151f).l
	beq.s loc_207252
loc_20724e:
	moveq #$ffffffff,d0
	rts
loc_207252:
	nop
	tst.w $30(a0)
	bne.s loc_20724e
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_207288
	tst.w ($ff1512).l
	beq.w loc_2072f2
	jsr (sub_207880).l
	bne.s loc_207288
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207288:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_20729e
	move.b #$0,($ff156f).l
loc_20729e:
	move.b #$4,$24(a0)
	bsr.w sub_205368
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072ce
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072ce:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072dc
	neg.w $10(a0)
loc_2072dc:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2072f2:
	tst.w ($ff1588).l
	bne.w loc_207288

sub_2072fc:
	tst.w ($ff1906).l
	bne.s loc_207350
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205368
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2025aa).l
loc_207350:
	moveq #$ffffffff,d0
	rts
loc_207354:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2073dc
	cmpi.b #$23,d1
	beq.w loc_2073dc
	cmpi.b #$33,d1
	beq.w loc_207434
	cmpi.b #$3a,d1
	beq.w loc_207434
	cmpi.b #$3b,d1
	beq.w loc_207434
	tst.b ($f7aa).w
	beq.w loc_2073da
	cmpi.b #$1,($f7aa).w
	beq.s loc_2073a4
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073c6
	cmpi.b #$5,($f7aa).w
	beq.s loc_2073d4
loc_2073a4:
	cmpi.b #$3c,d1
	blt.s loc_2073da
	cmpi.b #$3f,d1
	bgt.s loc_2073da
	bsr.w sub_207174
	tst.b $20(a1)
	bne.s loc_2073be
	addq.b #$3,$21(a1)
loc_2073be:
	clr.b $20(a1)
	bra.w loc_2073dc
loc_2073c6:
	cmpi.b #$3f,d1
	beq.s loc_2073e8
	cmpi.b #$3e,d1
	beq.s loc_2073e2
	bra.s loc_2073da
loc_2073d4:
	cmpi.b #$3d,d1
	beq.s loc_2073e2
loc_2073da:
	rts
loc_2073dc:
	addq.b #$1,$21(a1)
	rts
loc_2073e2:
	bsr.w sub_20723e
	bra.s loc_2073dc
loc_2073e8:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207432
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$ad,d0
	jsr (sub_2025aa).l
	jsr (sub_206152).l
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207432
	neg.w $10(a0)
loc_207432:
	rts
loc_207434:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207440
	addq.b #$1,$21(a1)
loc_207440:
	rts
dat_207442:
	.incbin 29762, 126
loc_2074c0:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2074d6
	move.l #$4000,(dat_207650).l
	bra.s loc_2074f6
loc_2074d6:
	addi.l #$2000,(dat_207650).l
	cmpi.l #$80000,(dat_207650).l
	bls.s loc_2074f6
	move.l #$80000,(dat_207650).l
loc_2074f6:
	move.l (dat_207650).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207508
	sub.l d0,$c(a0)
loc_207508:
	btst.b #$1,($f604).w
	beq.s loc_207514
	add.l d0,$c(a0)
loc_207514:
	btst.b #$2,($f604).w
	beq.s loc_207520
	sub.l d0,$8(a0)
loc_207520:
	btst.b #$3,($f604).w
	beq.s loc_20752c
	add.l d0,$8(a0)
loc_20752c:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e80).l
	move.w (a1),($ff194e).l
	lea (dat_207654).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20756e
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207568
	move.b #$0,d1
loc_207568:
	move.b d1,($ff1904).l
loc_20756e:
	btst.b #$7,($f605).w
	beq.s loc_20758e
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207588
	add.b (a2),d1
loc_207588:
	move.b d1,($ff1904).l
loc_20758e:
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
	beq.s loc_20761a
	bsr.w sub_207880
	bne.s loc_20761a
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
loc_20761a:
	btst.b #$4,($f605).w
	beq.s loc_20764a
	move.b #$0,($ff1906).l
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20764a:
	jmp (sub_203ab8).l
dat_207650:
	dc.b $00,$00,$40,$00
dat_207654:
	.incbin 30292, 26

sub_20766e:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20767c:
	clr.l (a2)+
	dbf d0,loc_20767c
	rts

sub_207684:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207692(pc,d0.w),d0
	jmp dat_207692(pc,d0.w)
dat_207692:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207932).l,a0
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
	bcc.s loc_2076d0
	moveq #$0,d6
loc_2076d0:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2076d8:
	cmp.w (a0),d6
	bls.s loc_2076ea
	tst.b $4(a0)
	bpl.s loc_2076e6
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2076e6:
	addq.w #$8,a0
	bra.s loc_2076d8
loc_2076ea:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20770a
loc_2076f8:
	cmp.w (a0),d6
	bls.s loc_20770a
	tst.b $4(a0)
	bpl.s loc_207706
	addq.b #$1,$1(a2)
loc_207706:
	addq.w #$8,a0
	bra.s loc_2076f8
loc_20770a:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2077f4
	bge.s loc_20779a
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207776
loc_207744:
	cmp.w -$8(a0),d6
	bge.s loc_207776
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20775a
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20775a:
	bsr.w sub_207818
	bne.s loc_207764
	subq.w #$8,a0
	bra.s loc_207744
loc_207764:
	tst.b $4(a0)
	bpl.s loc_207774
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207774:
	addq.w #$8,a0
loc_207776:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207782:
	cmp.w -$8(a0),d6
	bgt.s loc_207794
	tst.b -$4(a0)
	bpl.s loc_207790
	subq.b #$1,(a2)
loc_207790:
	subq.w #$8,a0
	bra.s loc_207782
loc_207794:
	move.l a0,($f770).w
	rts
loc_20779a:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2077ae:
	cmp.w (a0),d6
	bls.s loc_2077d0
	tst.b $4(a0)
	bpl.s loc_2077bc
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077bc:
	bsr.w sub_207818
	beq.s loc_2077ae
	tst.b $4(a0)
	bpl.s loc_2077d0
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077d0:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2077f0
loc_2077de:
	cmp.w (a0),d6
	bls.s loc_2077f0
	tst.b $4(a0)
	bpl.s loc_2077ec
	addq.b #$1,$1(a2)
loc_2077ec:
	addq.w #$8,a0
	bra.s loc_2077de
loc_2077f0:
	move.l a0,($f774).w
loc_2077f4:
	rts

sub_2077f6:
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

sub_207818:
	bsr.s sub_2077f6
	beq.s loc_20782a
	tst.b $4(a0)
	bpl.s loc_207830
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207830
loc_20782a:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207830:
	bsr.w sub_207880
	bne.s loc_20787e
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
	bpl.s loc_207860
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207860:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207872
	nop
	nop
	nop
	nop
loc_207872:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_20787e:
	rts

sub_207880:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207888:
	tst.b (a1)
	beq.s loc_207894
	lea $40(a1),a1
	dbf d0,loc_207888
loc_207894:
	rts

sub_207896:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078b4
loc_2078a8:
	tst.b (a1)
	beq.s loc_2078b4
	lea $40(a1),a1
	dbf d0,loc_2078a8
loc_2078b4:
	rts
loc_2078b6:
	move.w $8(a0),d0
loc_2078ba:
	tst.b $1(a0)
	bmi.s loc_207924
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207924
loc_2078d8:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20791a
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207912
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20790a
	moveq #$0,d1
	bra.s loc_207912
loc_20790a:
	cmpi.w #$3,d1
	bcs.s loc_207912
	moveq #$2,d1
loc_207912:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20791a:
	jsr (sub_203b64).l
	moveq #$1,d0
	rts
loc_207924:
	btst.b #$7,($ff152e).l
	bne.s loc_2078d8
	moveq #$0,d0
	rts
dat_207932:
	.incbin 31026, 3434

sub_20869c:
	btst.b #$3,$22(a0)
	beq.s loc_20870c
	btst.b #$3,$22(a1)
	beq.s loc_20870c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20870c
	tst.b $2a(a1)
	beq.s loc_2086ce
	move.w #$ab,d0
	jsr (sub_2025aa).l
loc_2086ce:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2086fa
	cmpi.b #$17,$1c(a1)
	beq.s loc_2086fa
	bclr.b #$0,$2c(a1)
loc_2086fa:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20870c
	bclr.b #$1,$22(a1)
loc_20870c:
	rts

sub_20870e:
	cmpi.b #$4,$24(a1)
	bne.s loc_208720
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208720:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208780
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208742
	bclr.b #$3,$22(a0)
	bra.w sub_20869c
loc_208742:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208780
	tst.b ($ff195b).l
	beq.s loc_20876a
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_20877a
loc_20876a:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_20877a:
	move.b #$0,$1c(a1)
loc_208780:
	bset.b #$3,$22(a1)
	beq.s loc_2087a2
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2087da
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_2087a2:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2087ce
	cmpi.b #$2,$24(a0)
	beq.s loc_2087d4
loc_2087ce:
	move.w $10(a1),$14(a1)
loc_2087d4:
	bclr.b #$1,$22(a1)
loc_2087da:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_2087ea:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208a9e
	btst.b #$6,$2c(a1)
	bne.w loc_208a9e
	cmpi.b #$6,$24(a1)
	bcc.w loc_208a9e
	tst.b $0(a1)
	beq.w loc_208a9e
	tst.b $1(a0)
	bpl.w loc_208a9e
	tst.b ($ff1906).l
	bne.w loc_208a9e
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208a9e
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208a9e
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208858
	btst.b #$3,$22(a0)
	bne.s loc_20886a
	bra.w loc_208a9e
loc_208858:
	cmpi.b #$1,$25(a0)
	bne.s loc_20886a
	tst.w $12(a1)
	beq.s loc_20886a
	bmi.w loc_208a9e
loc_20886a:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208a9e
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208a9e
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2088a0
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2088a0:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2088ae
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2088ae:
	cmp.w d4,d5
	bcs.w loc_208942
	cmpi.b #$1,$25(a0)
	beq.w loc_208a9e
	cmpi.b #$a,$0(a0)
	bne.s loc_2088d0
	btst.b #$1,$22(a1)
	bne.w loc_208a9e
loc_2088d0:
	cmpi.b #$4,d5
	bls.w loc_208a9e
	bsr.w sub_208aee
	move.l d0,-(a7)
	bsr.w sub_20869c
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2088fa
	tst.w $10(a1)
	beq.s loc_20892a
	bpl.s loc_208902
	bra.s loc_20892a
loc_2088fa:
	tst.w $10(a1)
	beq.s loc_20892a
	bpl.s loc_20892a
loc_208902:
	bsr.w sub_208aae
	btst.b #$1,$22(a1)
	bne.s loc_208920
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208920:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20892a:
	bsr.w sub_208b64
	bsr.w sub_208aae
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208942:
	cmpi.b #$19,$0(a0)
	bne.s loc_208954
	btst.b #$2,$22(a1)
	bne.w loc_208a9e
loc_208954:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20896a
	bmi.w loc_208a3a
loc_20896a:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20897c
	tst.w $12(a1)
	beq.s loc_20897c
	bmi.w loc_208a9e
loc_20897c:
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
	beq.s loc_2089c8
	bpl.s loc_2089a8
	neg.b d0
loc_2089a8:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c8e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2089c8
	tst.w $10(a0)
	bpl.s loc_2089c4
	neg.w d1
loc_2089c4:
	add.w d1,$8(a1)
loc_2089c8:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208a32
	tst.w $12(a0)
	bmi.s loc_208a06
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d20).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a06
	add.w d1,$c(a1)
	bra.w loc_208a9e
loc_208a06:
	tst.w $12(a0)
	bpl.s loc_208a32
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f38).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a32
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072fc).l
	movem.l (a7)+,a0-a1
	bra.s loc_208a9e
loc_208a32:
	bsr.w sub_20870e
	moveq #$1,d0
	rts
loc_208a3a:
	cmpi.b #$1,$25(a0)
	beq.s loc_208a9e
	cmpi.b #$9,$0(a0)
	beq.s loc_208a9e
	cmpi.b #$a,$0(a0)
	bne.s loc_208a64
	cmpi.b #$2,$25(a0)
	beq.s loc_208a84
	btst.b #$1,$1(a0)
	bne.s loc_208a84
	bra.s loc_208a9e
loc_208a64:
	btst.b #$1,$22(a1)
	bne.s loc_208a84
	tst.w $12(a0)
	beq.s loc_208a84
	bmi.s loc_208a84
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072fc).l
	movem.l (a7)+,a0-a1
loc_208a84:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208b64
	bsr.w sub_20869c
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208a9e:
	bsr.w sub_208b64
	bsr.w sub_20869c
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208aae:
	tst.w $10(a0)
	beq.s loc_208aec
	cmpi.b #$a,$0(a0)
	beq.s loc_208aec
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208ac8
	neg.b d0
loc_208ac8:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c8e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208aec
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072fc).l
	movem.l (a7)+,a0-a1
loc_208aec:
	rts

sub_208aee:
	cmpi.b #$a,$0(a0)
	bne.s loc_208afe
	move.b #$0,$20(a1)
	rts
loc_208afe:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208b52
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208b62
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208b20
	tst.w $10(a2)
	beq.s loc_208b62
loc_208b20:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208b32
	cmp.w $8(a2),d1
	bcs.s loc_208b62
	bra.s loc_208b38
loc_208b32:
	cmp.w $8(a2),d1
	bcc.s loc_208b62
loc_208b38:
	cmpi.b #$15,$0(a0)
	beq.s loc_208b62
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072fc).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208b52:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208b62:
	rts

sub_208b64:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208b7e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208b7e
	move.b #$0,$20(a1)
loc_208b7e:
	rts
	.incbin 35712, 374
loc_208cf6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d04(pc,d0.w),d0
	jmp dat_208d04(pc,d0.w)
dat_208d04:
	.incbin 36100, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208cf6
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208d5a
	tst.b $1(a0)
	bpl.s loc_208d62
loc_208d5a:
	move.w dat_208db4(pc,d0.w),d1
	jsr dat_208db4(pc,d1.w)
loc_208d62:
	bsr.w sub_203ab8
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208d94
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208d94:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b64
	rts
dat_208db4:
	.incbin 36276, 26
	addq.b #$2,$24(a0)
	move.l #$209136,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208e24
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20913c,$4(a0)
	bra.s loc_208e66
loc_208e24:
	btst.l #$3,d0
	beq.s loc_208e52
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209186,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bfc4).l
	move.l (a7)+,d0
	bra.s loc_208e66
loc_208e52:
	btst.b #$1,$1(a0)
	beq.s loc_208e66
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208e66:
	btst.l #$1,d0
	beq.s loc_208e72
	bset.b #$5,$2(a0)
loc_208e72:
	andi.w #$2,d0
	move.w dat_208e7e(pc,d0.w),$30(a0)
	rts
dat_208e7e:
	.incbin 36478, 918
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209222(pc,d0.w),d1
	jmp dat_209222(pc,d1.w)
dat_209222:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20922c:
	.incbin 37420, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209284
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20927c
	moveq #$0,d1
	bra.s loc_209284
loc_20927c:
	cmpi.w #$3,d1
	bcs.s loc_209284
	moveq #$2,d1
loc_209284:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2092a0
	moveq #$6,d1
loc_2092a0:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20922c).l,a1
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
	beq.s loc_2092f0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2092e8
	moveq #$0,d0
	bra.s loc_2092f0
loc_2092e8:
	cmpi.w #$3,d0
	bcs.s loc_2092f0
	moveq #$2,d0
loc_2092f0:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2093be
	dbf d0,loc_2092f0
	bclr.b #$7,(a2)
	bra.s loc_209346
loc_209302:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20932e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209326
	moveq #$0,d0
	bra.s loc_20932e
loc_209326:
	cmpi.w #$3,d0
	bcs.s loc_20932e
	moveq #$2,d0
loc_20932e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2093be
	dbf d0,loc_20932e
	bclr.b #$7,(a2)
	bsr.w sub_207896
	bne.w loc_2093ca
loc_209346:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209690,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20939c
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20939c
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20939c:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2093be:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209302
loc_2093ca:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2093f0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2093e8
	moveq #$0,d0
	bra.s loc_2093f0
loc_2093e8:
	cmpi.w #$3,d0
	bcs.s loc_2093f0
	moveq #$2,d0
loc_2093f0:
	lea $1(a2),a3
loc_2093f4:
	btst.b #$0,-(a3)
	bne.w sub_203b64
	dbf d0,loc_2093f4
	tst.b $1(a0)
	bmi.s loc_209424
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20949e
loc_209424:
	tst.w ($ff190e).l
	bne.s loc_209434
	move.b ($ff1913).l,$1a(a0)
loc_209434:
	bra.w sub_203ab8
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_2094a2
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209484
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20947c
	moveq #$0,d1
	bra.s loc_209484
loc_20947c:
	cmpi.w #$3,d1
	bcs.s loc_209484
	moveq #$2,d1
loc_209484:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209688).l,a1
	bsr.w sub_205d12
	bra.w sub_203ab8
loc_20949e:
	bra.w sub_203b64

sub_2094a2:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2094f2
	bset.b #$1,($ff150d).l
	beq.s loc_2094dc
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2094f2
	bset.b #$2,($ff150d).l
	bne.s loc_2094f2
loc_2094dc:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cd2).l
loc_2094f2:
	jmp (sub_2025aa).l
	.incbin 38136, 400
dat_209688:
	.incbin 38536, 402
loc_20981a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209848(pc,d0.w),d0
	jsr dat_209848(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209846
	cmpi.w #$5a,($f786).w
	bcs.s loc_209840
	btst.b #$0,($ff1505).l
	bne.s loc_209846
loc_209840:
	jmp (sub_203ab8).l
loc_209846:
	rts
dat_209848:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$209e22,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20987c
	move.b #$13,$1a(a0)
loc_20987c:
	rts
loc_20987e:
	tst.b ($ff0f01).l
	beq.s loc_20988c
	jmp (sub_203b64).l
loc_20988c:
	cmpi.b #$a,$28(a0)
	beq.w loc_20981a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2098b0(pc,d0.w),d0
	jsr dat_2098b0(pc,d0.w)
	jsr (sub_203ab8).l
	jmp (loc_2078b6).l
dat_2098b0:
	.incbin 39088, 282

sub_2099ca:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209a02
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2099fa
	moveq #$0,d1
	bra.s loc_209a02
loc_2099fa:
	cmpi.w #$3,d1
	bcs.s loc_209a02
	moveq #$2,d1
loc_209a02:
	add.w d1,d0
	rts

sub_209a06:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209a28
	tst.b ($ff1956).l
	beq.s loc_209a20
	tst.b $29(a0)
	bne.s loc_209a28
	rts
loc_209a20:
	tst.b $29(a0)
	beq.s loc_209a28
	rts
loc_209a28:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2087ea).l
	tst.b $28(a0)
	bne.s loc_209a4a
	tst.b ($ff0f01).l
	beq.s loc_209a4a
	jmp (loc_2078b6).l
loc_209a4a:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20987e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209a62(pc,d0.w),d1
	jmp dat_209a62(pc,d1.w)
dat_209a62:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209e22,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209aac
	tst.b $29(a0)
	bne.s loc_209aac
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209aac:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_2099ca
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209ad8
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209ad8:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209b32
	move.b $25(a0),d0
	beq.s loc_209b12
	bsr.w sub_203a00
	jsr (sub_206dce).l
	tst.w d1
	bpl.w loc_209b20
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209b20
loc_209b12:
	tst.b $1(a0)
	bpl.s loc_209b20
	lea ($d000).w,a1
	bsr.w sub_209a06
loc_209b20:
	tst.w ($ff190e).l
	bne.s loc_209b32
	lea (dat_209d9a).l,a1
	bsr.w sub_205d12
loc_209b32:
	bsr.w sub_203ab8
	jmp (loc_2078b6).l
	.incbin 39740, 606
dat_209d9a:
	.incbin 40346, 586
loc_209fe4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ff8(pc,d0.w),d0
	jsr dat_209ff8(pc,d0.w)
	jmp (sub_203ab8).l
dat_209ff8:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a038,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a032
	jmp (sub_203b64).l
loc_20a032:
	subq.w #$2,$c(a0)
	rts
	.incbin 41016, 82
	tst.b $28(a0)
	bmi.w loc_209fe4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a0a0(pc,d0.w),d0
	jmp dat_20a0a0(pc,d0.w)
dat_20a0a0:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a13a,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a0d0
	move.b #$3,$1a(a0)
	bra.s loc_20a0f0
loc_20a0d0:
	tst.w ($ff1588).l
	beq.s loc_20a0de
	move.b #$2,$1a(a0)
loc_20a0de:
	tst.b $28(a0)
	beq.s loc_20a0f0
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a0f0:
	tst.b $28(a0)
	bne.s loc_20a134
	tst.b $29(a0)
	beq.s loc_20a120
	tst.w ($ff1512).l
	beq.s loc_20a10c
	bclr.b #$5,$2(a0)
	bra.s loc_20a134
loc_20a10c:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a134
	eori.b #$20,$2(a0)
	bra.s loc_20a134
loc_20a120:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a134
	move.b #$2,$1a(a0)
loc_20a134:
	jmp (sub_203ab8).l
	.incbin 41274, 168

sub_20a1e2:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a1fe
	move.l d1,(a3)
loc_20a1fe:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a228
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cd2).l
loc_20a228:
	rts
loc_20a22a:
	tst.w ($ff1588).l
	beq.s loc_20a280
	bsr.w sub_20a47c
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
	lea (dat_20a5dc).l,a2
	moveq #$2,d6
	bsr.w sub_20a634
	bra.w loc_20a2da
loc_20a280:
	tst.b ($ff1511).l
	beq.s loc_20a2a4
	bpl.s loc_20a28e
	bsr.w sub_20a426
loc_20a28e:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a516
loc_20a2a4:
	tst.b ($ff150f).l
	beq.s loc_20a2da
	bpl.s loc_20a2b2
	bsr.w sub_20a412
loc_20a2b2:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a2d6
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a2d6:
	bsr.w sub_20a50c
loc_20a2da:
	tst.w ($ff1588).l
	bne.w loc_20a386
	tst.b ($ff1510).l
	beq.w loc_20a386
	tst.w ($f63a).w
	bne.w loc_20a386
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a3e4
	tst.b ($f7cc).w
	bne.s loc_20a330
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a330
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a330
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a330
	move.b #$9,(a1)
loc_20a330:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a622
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a62c
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a382
	move.w #$63,d1
loc_20a382:
	bsr.w sub_20a62c
loc_20a386:
	tst.b ($ff150e).l
	beq.s loc_20a398
	clr.b ($ff150e).l
	bsr.w sub_20a602
loc_20a398:
	tst.b ($f7d6).w
	beq.s loc_20a3e2
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a3b8
	move.l #$6d400001,d0
loc_20a3b8:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a49a
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a3d8
	move.l #$6e800001,d0
loc_20a3d8:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a49a
loc_20a3e2:
	rts
loc_20a3e4:
	btst.b #$7,($ff152e).l
	bne.s loc_20a410
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2072fc
	move.b #$1,($ff150c).l
loc_20a410:
	rts

sub_20a412:
	move.l #$73600002,($c00004).l
	lea dat_20a478(pc),a2
	move.w #$2,d2
	bra.s loc_20a442

sub_20a426:
	lea ($c00000).l,a6
	bsr.w sub_20a602
	move.l #$70600002,($c00004).l
	lea dat_20a470(pc),a2
	move.w #$6,d2
loc_20a442:
	lea (dat_238442).l,a1
loc_20a448:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a464
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a458:
	move.l (a3)+,(a6)
	dbf d1,loc_20a458
loc_20a45e:
	dbf d2,loc_20a448
	rts
loc_20a464:
	move.l #$0,(a6)
	dbf d1,loc_20a464
	bra.s loc_20a45e
dat_20a470:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a478:
	dc.b $ff,$ff,$00,$00

sub_20a47c:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a5f8
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a5f8

sub_20a49a:
	lea (dat_20a5d4).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a4aa:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a4ae:
	sub.l d3,d1
	bcs.s loc_20a4b6
	addq.w #$1,d2
	bra.s loc_20a4ae
loc_20a4b6:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a4c0
	move.w #$1,d4
loc_20a4c0:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a4cc
	tst.w d6
	bne.s loc_20a4fe
loc_20a4cc:
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
loc_20a4f2:
	addi.l #$400000,d0
	dbf d6,loc_20a4aa
	rts
loc_20a4fe:
	moveq #$f,d5
loc_20a500:
	move.l #$0,(a6)
	dbf d5,loc_20a500
	bra.s loc_20a4f2

sub_20a50c:
	lea (dat_20a5dc).l,a2
	moveq #$2,d6
	bra.s loc_20a51e

sub_20a516:
	lea (dat_20a5d0).l,a2
	moveq #$5,d6
loc_20a51e:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a526:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a52a:
	sub.l d3,d1
	bcs.s loc_20a532
	addq.w #$1,d2
	bra.s loc_20a52a
loc_20a532:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a53c
	move.w #$1,d4
loc_20a53c:
	tst.w d4
	beq.s loc_20a56a
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
loc_20a56a:
	addi.l #$400000,d0
	dbf d6,loc_20a526
	rts
	.incbin 42358, 90
dat_20a5d0:
	dc.b $00,$01,$86,$a0
dat_20a5d4:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a5dc:
	dc.b $00,$00,$00,$64
dat_20a5e0:
	dc.b $00,$00,$00,$0a
dat_20a5e4:
	dc.b $00,$00,$00,$01
dat_20a5e8:
	.incbin 42472, 16

sub_20a5f8:
	moveq #$3,d6
	lea (dat_20a5e8).l,a2
	bra.s sub_20a634

sub_20a602:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a618
	moveq #$9,d1
loc_20a618:
	lea (dat_20a5e4).l,a2
	moveq #$0,d6
	bra.s sub_20a634

sub_20a622:
	lea (dat_20a5e4).l,a2
	moveq #$0,d6
	bra.s sub_20a634

sub_20a62c:
	lea (dat_20a5e0).l,a2
	moveq #$1,d6

sub_20a634:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a63c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a640:
	sub.l d3,d1
	bcs.s loc_20a648
	addq.w #$1,d2
	bra.s loc_20a640
loc_20a648:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a652
	move.w #$1,d4
loc_20a652:
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
	dbf d6,loc_20a63c
	rts
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a69a(pc,d0.w),d1
	jmp dat_20a69a(pc,d1.w)
dat_20a69a:
	dc.b $00,$0c,$00,$6a,$00,$84,$01,$3a
	dc.b $01,$58,$01,$5c
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	move.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_20a6ea
	addq.b #$8,$24(a0)
	andi.w #$7f,d0
	move.b d0,$32(a0)
	move.b d0,$33(a0)
	move.b #$6,$1c(a0)
	bra.w loc_20a7f6
loc_20a6ea:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	jsr (sub_202398).l
	move.b d0,$26(a0)
	lea (dat_20a98e).l,a1
	jsr (sub_205d12).l
	cmpi.b #$6,$1a(a0)
	bne.s loc_20a71e
	move.b #$1,$2e(a0)
loc_20a71e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a736
loc_20a728:
	move.b #$6,$24(a0)
	addq.b #$3,$1c(a0)
	bra.w loc_20a7d4
loc_20a736:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_21f844).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	tst.b $2e(a0)
	beq.s loc_20a7be
	bsr.w sub_20a954
	beq.s loc_20a7be
	bsr.w sub_206152
	move.w #$ad,d0
	jsr (sub_2025aa).l
	clr.w $10(a6)
	clr.w $12(a6)
	clr.w $14(a6)
	move.b #$15,$1c(a6)
	move.w #$23,$3e(a6)
	move.b #$0,$3c(a6)
	bclr.b #$5,$22(a6)
	bclr.b #$4,$22(a6)
	btst.b #$2,$22(a6)
	beq.w loc_20a728
	bclr.b #$2,$22(a6)
	move.b #$13,$16(a6)
	move.b #$9,$17(a6)
	subq.w #$5,$c(a6)
	bra.w loc_20a728
loc_20a7be:
	bsr.w sub_203a62
	tst.b $1(a0)
	bpl.s loc_20a7ce
	jmp (sub_203ab8).l
loc_20a7ce:
	jmp (sub_203b64).l
loc_20a7d4:
	lea (dat_20a98e).l,a1
	jsr (sub_205d12).l
	tst.b $1(a0)
	bpl.s loc_20a7ec
	jmp (sub_203ab8).l
loc_20a7ec:
	jmp (sub_203b64).l
	dc.b $60,$00,$93,$70
loc_20a7f6:
	tst.w $36(a0)
	bne.s loc_20a858
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcc.w loc_20a90a
	tst.b $1(a0)
	bpl.w loc_20a90a
	subq.w #$1,$38(a0)
	bpl.w loc_20a8fe
	move.w #$1,$36(a0)
loc_20a81e:
	jsr (sub_202398).l
	move.w d0,d1
	andi.w #$7,d0
	cmpi.w #$6,d0
	bcc.s loc_20a81e
	move.b d0,$34(a0)
	andi.w #$c,d1
	lea (dat_20a942).l,a1
	adda.w d1,a1
	move.l a1,$3c(a0)
	subq.b #$1,$32(a0)
	bpl.s loc_20a856
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_20a856:
	bra.s loc_20a860
loc_20a858:
	subq.w #$1,$38(a0)
	bpl.w loc_20a8fe
loc_20a860:
	jsr (sub_202398).l
	andi.w #$1f,d0
	move.w d0,$38(a0)
	tst.b $1(a0)
	bpl.s loc_20a8e2
	bsr.w sub_207880
	bne.s loc_20a8e2
	move.b #$20,$0(a1)
	move.w $8(a0),$8(a1)
	jsr (sub_202398).l
	andi.w #$f,d0
	subq.w #$8,d0
	add.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$0,d0
	move.b $34(a0),d0
	movea.l $3c(a0),a2
	move.b $0(a2,d0.w),$28(a1)
	btst.b #$7,$36(a0)
	beq.s loc_20a8e2
	jsr (sub_202398).l
	andi.w #$3,d0
	bne.s loc_20a8ce
	bset.b #$6,$36(a0)
	bne.s loc_20a8e2
	move.b #$2,$28(a1)
loc_20a8ce:
	tst.b $34(a0)
	bne.s loc_20a8e2
	bset.b #$6,$36(a0)
	bne.s loc_20a8e2
	move.b #$2,$28(a1)
loc_20a8e2:
	subq.b #$1,$34(a0)
	bpl.s loc_20a8fe
	jsr (sub_202398).l
	andi.w #$7f,d0
	addi.w #$80,d0
	add.w d0,$38(a0)
	clr.w $36(a0)
loc_20a8fe:
	lea (dat_20a98e).l,a1
	jsr (sub_205d12).l
loc_20a90a:
	tst.b $1(a0)
	bmi.s loc_20a92e
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b64
loc_20a92e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.w sub_203ab8
	bclr.b #$7,$1(a0)
	rts
dat_20a942:
	.incbin 43330, 18

sub_20a954:
	tst.b $2c(a6)
	bmi.s loc_20a98a
	move.w $8(a6),d0
	move.w $8(a0),d1
	subi.w #$10,d1
	cmp.w d0,d1
	bcc.s loc_20a98a
	addi.w #$20,d1
	cmp.w d0,d1
	bcs.s loc_20a98a
	move.w $c(a6),d0
	move.w $c(a0),d1
	cmp.w d0,d1
	bcc.s loc_20a98a
	addi.w #$10,d1
	cmp.w d0,d1
	bcs.s loc_20a98a
	moveq #$1,d0
	rts
loc_20a98a:
	moveq #$0,d0
	rts
dat_20a98e:
	.incbin 43406, 2958
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b52a(pc,d0.w),d0
	jmp dat_20b52a(pc,d0.w)
dat_20b52a:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20bc28,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20bbe8).l,a2
loc_20b578:
	jsr (sub_207880).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20bc28,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b5ca
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b5ca:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b578
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b5f2
	bge.s loc_20b5e8
	neg.w d0
loc_20b5e8:
	add.w d0,$a(a0)
	jmp (sub_203ab8).l
loc_20b5f2:
	addq.b #$4,$24(a0)
	jmp (sub_203ab8).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b616
	bge.s loc_20b60c
	neg.w d0
loc_20b60c:
	add.w d0,$8(a0)
	jmp (sub_203ab8).l
loc_20b616:
	addq.b #$4,$24(a0)
	jmp (sub_203ab8).l
	tst.b $1e(a0)
	beq.s loc_20b630
	subq.b #$1,$1e(a0)
	jmp (sub_203ab8).l
loc_20b630:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b64a
	bge.s loc_20b640
	neg.w d0
loc_20b640:
	add.w d0,$a(a0)
	jmp (sub_203ab8).l
loc_20b64a:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202774).l
	tst.b $1e(a0)
	beq.s loc_20b66c
	subq.b #$1,$1e(a0)
	jmp (sub_203ab8).l
loc_20b66c:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b686
	bge.s loc_20b67c
	neg.w d0
loc_20b67c:
	add.w d0,$8(a0)
	jmp (sub_203ab8).l
loc_20b686:
	jmp (sub_203b64).l
	tst.l ($f680).w
	bne.s loc_20b6a0
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b64).l
loc_20b6a0:
	rts
	.incbin 46754, 1350
dat_20bbe8:
	.incbin 48104, 320
dat_20bd28:
	.incbin 48424, 668

sub_20bfc4:
	rts
	.incbin 49094, 1266
	move.w $36(a0),d0
	jmp (loc_2078ba).l
	.incbin 50370, 1712
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20cb82(pc,d0.w),d0
	jmp dat_20cb82(pc,d0.w)
dat_20cb82:
	.incbin 52098, 18
loc_20cb94:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2087ea).l
loc_20cba6:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20cbc4
	rts
loc_20cbc4:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20cbe8
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20cbe8:
	jmp (sub_203b64).l
	.incbin 52206, 1438
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d1a4(pc,d0.w),d0
	jsr dat_20d1a4(pc,d0.w)
	jsr (sub_203ab8).l
	bra.w loc_20cba6
dat_20d1a4:
	dc.b $00,$04,$00,$b4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20d296,$4(a0)
	move.b #$10,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20d222
	move.w $8(a0),d0
	move.w d0,$36(a0)
	moveq #$1,d1
	moveq #$2,d2
loc_20d1de:
	jsr (sub_207880).l
	bne.s loc_20d21c
	move.b #$24,$0(a1)
	move.b #$6,$28(a1)
	move.b d1,$3c(a1)
	move.w $36(a0),$36(a1)
	move.b d1,d0
	asl.b #$4,d0
	ext.w d0
	neg.w d0
	add.w $8(a0),d0
	move.w d0,$8(a1)
	moveq #$0,d0
	move.b d1,d0
	mulu.w #$20,d0
	add.w $c(a0),d0
	move.w d0,$c(a1)
loc_20d21c:
	addq.b #$1,d1
	dbf d2,loc_20d1de
loc_20d222:
	moveq #$0,d0
	move.b $3c(a0),d0
	move.b d0,$1a(a0)
	addq.b #$1,d0
	move.b d0,$3b(a0)
	move.b $3c(a0),d0
	moveq #$0,d1
loc_20d238:
	addi.b #$10,d1
	dbf d0,loc_20d238
	move.b d1,$19(a0)
	andi.w #$ff,d1
	move.w $8(a0),d0
	add.w d1,d0
	move.w d0,$32(a0)
	move.b #$80,$3a(a0)
	move.w $8(a0),-(a7)
	moveq #$0,d0
	move.b $3a(a0),d0
	jsr (sub_200712).l
	moveq #$0,d2
	moveq #$0,d3
	move.b $3b(a0),d2
	beq.s loc_20d278
loc_20d272:
	add.w d0,d3
	subq.b #$1,d2
	bne.s loc_20d272
loc_20d278:
	asr.w #$4,d3
	move.w d3,d0
	add.w $32(a0),d0
	move.w d0,$8(a0)
	move.w (a7)+,d1
	sub.w d1,d0
	asl.w #$8,d0
	move.w d0,$10(a0)
	addq.b #$1,$3a(a0)
	bra.w loc_20cb94
	.incbin 53910, 312
	tst.b $24(a0)
	bne.w loc_20d418
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$50a,$2(a0)
	move.l #$20d534,$4(a0)
	move.b #$a,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20d418:
	move.w $34(a0),d0
	beq.s loc_20d448
	movea.w d0,a1
	move.w $8(a0),d1
	move.b $38(a0),d0
	ext.w d0
	add.w $8(a1),d0
	move.w d0,$8(a0)
	sub.w d1,d0
	asl.w #$8,d0
	move.w d0,$10(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w $c(a1),d0
	move.w d0,$c(a0)
loc_20d448:
	move.b $3f(a0),$3e(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_2087ea).l
	beq.s loc_20d466
	bsr.w sub_20d518
loc_20d466:
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20d476
	bclr.b #$7,(a4)
	bra.s loc_20d482
loc_20d476:
	bsr.w sub_20d518
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20d482:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20d4bc
	tst.b $1(a0)
	bpl.s loc_20d49a
	move.w #$bf,d0
	jsr (sub_2025aa).l
loc_20d49a:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20d4ae
	addq.b #$4,$39(a0)
	bra.s loc_20d4b2
loc_20d4ae:
	addq.w #$4,$c(a0)
loc_20d4b2:
	move.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20d4bc:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20d4e0
	subq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20d4d4
	subq.b #$4,$39(a0)
	bra.s loc_20d4d8
loc_20d4d4:
	subq.w #$4,$c(a0)
loc_20d4d8:
	clr.b $1a(a0)
	addq.b #$4,$16(a0)
loc_20d4e0:
	jsr (sub_203ab8).l
	move.w $34(a0),d0
	bne.s loc_20d4f2
	jmp (loc_2078b6).l
loc_20d4f2:
	movea.w d0,a1
	move.w $36(a1),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20d512
	rts
loc_20d512:
	jmp (loc_2078d8).l

sub_20d518:
	move.w $c(a0),d0
	move.b $16(a0),d1
	ext.w d1
	sub.w d1,d0
	move.b $16(a1),d1
	ext.w d1
	sub.w d1,d0
	addq.w #$1,d0
	move.w d0,$c(a1)
	rts
	.incbin 54580, 976
	jsr (sub_20fd3e).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d928(pc,d0.w),d0
	jsr dat_20d928(pc,d0.w)
	jsr (sub_203ab8).l
	move.w $3e(a0),d0
	jmp (loc_2078ba).l
dat_20d928:
	.incbin 55592, 1204
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	movea.l $38(a0),a1
	jsr (sub_205d12).l
	jsr (sub_203ab8).l
	jmp (loc_2078b6).l
	.incbin 56828, 3654
	tst.b $24(a0)
	bne.s loc_20ec86
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$446a,$2(a0)
	move.l #$20ecaa,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20ec9c(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20ec86:
	lea ($d000).w,a1
	jsr (sub_2087ea).l
	jsr (sub_203ab8).l
	jmp (loc_2078b6).l
dat_20ec9c:
	.incbin 60572, 3346
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f9bc(pc,d0.w),d0
	jmp dat_20f9bc(pc,d0.w)
dat_20f9bc:
	dc.b $00,$06,$00,$3c,$00,$d6
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	adda.w d0,a1
	tst.b (a1)
	bne.w loc_20fab0
	move.l a1,$30(a0)
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.l #$20fab6,$4(a0)
	move.l #$40400340,$16(a0)
	movea.l $30(a0),a1
	tst.b (a1)
	bne.s loc_20fa16
	lea ($d000).w,a1
	jsr (sub_2087ea).l
	jsr (sub_203ab8).l
	jmp (loc_2078b6).l
loc_20fa16:
	addq.b #$2,$24(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$80,$2a(a0)
	move.l #$ffff0000,$2c(a0)
	addq.b #$1,$1a(a0)
	subi.w #$30,$8(a0)
	move.w #$2,d6
	move.w $8(a0),d5
loc_20fa46:
	jsr (sub_207896).l
	bne.w loc_20fab0
	movea.w a0,a2
	movea.w a1,a3
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
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	addi.w #$20,d5
	move.w d5,$8(a1)
	move.w d6,d0
	andi.w #$1,d0
	bne.s loc_20fa8c
	neg.l $2c(a1)
	addq.b #$1,$1a(a1)
loc_20fa8c:
	dbf d6,loc_20fa46
	bra.s loc_20faa0
	dc.b $53,$68,$00,$2a,$6b,$18,$20,$28
	dc.b $00,$2c,$d1,$a8,$00,$0c
loc_20faa0:
	lea ($d000).w,a1
	jsr (sub_2087ea).l
	jmp (sub_203ab8).l
loc_20fab0:
	jmp (sub_203b64).l
	.incbin 64182, 648

sub_20fd3e:
	tst.b ($ff156a).l
	beq.s loc_20fd84
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fd56
	tst.b $28(a0)
	beq.s loc_20fd84
loc_20fd56:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203b64).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fd82
	move.w #$9e,d0
	jsr (sub_2025aa).l
loc_20fd82:
	addq.l #$4,a7
loc_20fd84:
	rts
	.incbin 64902, 50

sub_20fdb8:
	jmp (loc_2067be).l
dat_20fdbe:
	.incbin 64958, 16
dat_20fdce:
	.incbin 64974, 63952
dat_21f79e:
	.incbin 128926, 166
dat_21f844:
	.incbin 129092, 1980
dat_220000:
	.incbin 131072, 80422
dat_233a26:
	.incbin 211494, 18588
dat_2382c2:
	.incbin 230082, 384
dat_238442:
	.incbin 230466, 2624
dat_238e82:
	.incbin 233090, 2804
dat_239976:
	.incbin 235894, 256
dat_239a76:
	.incbin 236150, 4096
dat_23aa76:
	.incbin 240246, 4896
dat_23bd96:
	.incbin 245142, 17002
