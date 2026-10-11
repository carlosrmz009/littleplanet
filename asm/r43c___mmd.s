; R43C__.MMD
; disassembled from the disc; code only, data comes from data/R43C__.MMD at build time
	.file "R43C__.MMD", 262144

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
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_201442
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2076b4
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
	lea (dat_20d214).l,a2
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
	bsr.w sub_202c7e
	bset.b #$2,($f754).w
	bsr.w sub_2035ac
	bsr.w sub_20355e
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
	jsr (sub_20d20e).l
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
	jsr (sub_205cac).l
	bsr.w sub_2076b4
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
	jsr (sub_2076ca).l
	jsr (sub_2039b2).l
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
	bsr.w sub_202c7e
loc_2018ea:
	bsr.w sub_201c52
	jsr (sub_203b5c).l
	tst.w ($ff190e).l
	bne.s loc_201900
	bsr.w sub_200184
loc_201900:
	jsr (sub_20b128).l
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
	move.l #$21f500,($f796).w
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
	jmp (sub_205cac).l
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
	lea (dat_20b11e).l,a2
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
	jmp (sub_205cac).l
loc_201da0:
	tst.b ($ff151f).l
	bne.s loc_201d96
	tst.b ($ff1520).l
	bne.s loc_201d96
	move.w #$90,d0
	jmp (sub_205cac).l
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
	jmp (sub_205cac).l
loc_201ddc:
	tst.b ($ff151f).l
	bne.s loc_201dd2
	tst.b ($ff1520).l
	bne.s loc_201dd2
	move.w #$91,d0
	jmp (sub_205cac).l
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
	bsr.w sub_205bce
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
	jsr (sub_20d20e).l
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
	bsr.w sub_20323a
	bsr.w sub_202852
	jmp (loc_209620).l
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
	bsr.w sub_20323a
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
	.incbin 9580, 44

sub_202598:
	move.b d0,d1
	ror.b #$8,d0
	move.w #$100,($a11200).l
	jmp sub_20255e(pc)

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
	lea (dat_20d224).l,a1
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
	lea (dat_20d224).l,a1
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
	.incbin 11172, 44
loc_202bd0:
	tst.b ($ff1522).l
	beq.s loc_202bec
	jsr (sub_206b74).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bra.s loc_202c02
loc_202bec:
	lea (dat_202c3e).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202c02:
	subi.w #$a0,d1
	bcc.s loc_202c0a
	moveq #$0,d1
loc_202c0a:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202c14
	move.w d2,d1
loc_202c14:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202c20
	moveq #$0,d0
loc_202c20:
	cmp.w ($f72e).w,d0
	blt.s loc_202c2a
	move.w ($f72e).w,d0
loc_202c2a:
	move.w d0,($f704).w
	bsr.w sub_202c46
	lea (dat_202c42).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202c3e:
	dc.b $00,$50,$01,$6c
dat_202c42:
	dc.b $7f,$7f,$7f,$7f

sub_202c46:
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

sub_202c7e:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202c8a
	rts
loc_202c8a:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202eb0
	bsr.w sub_202f50
	bsr.w sub_203646
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
	bsr.w sub_2030a2
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
loc_202d06:
	move.w d0,(a1)+
	dbf d6,loc_202d06
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
	bra.w loc_202d32
loc_202d32:
	lea (dat_202db0).l,a3
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
loc_202d68:
	cmp.w ($f646).w,d1
	bge.s loc_202d88
	move.l d0,(a1)+
	addq.w #$1,d1
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202d82
	moveq #$0,d2
	move.w (a2)+,d0
loc_202d82:
	dbf d6,loc_202d68
	rts
loc_202d88:
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
	bne.s loc_202daa
	moveq #$0,d2
	move.w (a2)+,d0
loc_202daa:
	dbf d6,loc_202d88
	rts
dat_202db0:
	.incbin 11696, 256

sub_202eb0:
	move.w ($f700).w,d4
	bsr.s sub_202ee4
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202ee2
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202edc
	bset.b #$2,($f754).w
	rts
loc_202edc:
	bset.b #$3,($f754).w
loc_202ee2:
	rts

sub_202ee4:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202ef6
	bcs.s loc_202f26
	bra.s loc_202efc
loc_202ef6:
	clr.w ($f73a).w
	rts
loc_202efc:
	cmpi.w #$10,d0
	blt.s loc_202f06
	move.w #$10,d0
loc_202f06:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202f14
	move.w ($f72a).w,d0
loc_202f14:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202f26:
	cmpi.w #$fff0,d0
	bge.s loc_202f30
	move.w #$fff0,d0
loc_202f30:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202f14
	move.w ($f728).w,d0
	bra.s loc_202f14
	.incbin 12096, 16

sub_202f50:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202f64
	subq.w #$5,d0
loc_202f64:
	btst.b #$1,$22(a6)
	beq.s loc_202f84
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202fd0
	subi.w #$40,d0
	bcc.s loc_202fd0
	tst.b ($f75c).w
	bne.s loc_202fe2
	bra.s loc_202f90
loc_202f84:
	sub.w ($f73e).w,d0
	bne.s loc_202f96
	tst.b ($f75c).w
	bne.s loc_202fe2
loc_202f90:
	clr.w ($f73c).w
	rts
loc_202f96:
	cmpi.w #$60,($f73e).w
	bne.s loc_202fbe
	move.w $14(a6),d1
	bpl.s loc_202fa6
	neg.w d1
loc_202fa6:
	cmpi.w #$800,d1
	bcc.s loc_202fd0
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_203030
	cmpi.w #$fffa,d0
	blt.s loc_202ffa
	bra.s loc_202fe8
loc_202fbe:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_203030
	cmpi.w #$fffe,d0
	blt.s loc_202ffa
	bra.s loc_202fe8
loc_202fd0:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_203030
	cmpi.w #$fff0,d0
	blt.s loc_202ffa
	bra.s loc_202fe8
loc_202fe2:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202fe8:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_20303a
	bra.w loc_203006
loc_202ffa:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_203006:
	cmp.w ($f72c).w,d1
	bgt.s loc_20305e
	cmpi.w #$0,d1
	bgt.s loc_20302a
	addi.w #$800,d1
	addi.w #$800,$c(a6)
	addi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_20305e
loc_20302a:
	move.w ($f72c).w,d1
	bra.s loc_20305e
loc_203030:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_20303a:
	cmp.w ($f72e).w,d1
	blt.s loc_20305e
	subi.w #$800,d1
	bcs.s loc_20305a
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_20305e
loc_20305a:
	move.w ($f72e).w,d1
loc_20305e:
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
	bne.s loc_2030a0
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_20309a
	bset.b #$0,($f754).w
	rts
loc_20309a:
	bset.b #$1,($f754).w
loc_2030a0:
	rts

sub_2030a2:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2030d6
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2030d0
	bset.b #$2,($f756).w
	bra.s loc_2030d6
loc_2030d0:
	bset.b #$3,($f756).w
loc_2030d6:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_20310a
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_203104
	bset.b #$0,($f756).w
	rts
loc_203104:
	bset.b #$1,($f756).w
loc_20310a:
	rts
	.incbin 12556, 302

sub_20323a:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203292
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2032f8
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2032fa
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2

sub_203292:
	tst.b (a2)
	beq.s loc_2032f6
	bclr.b #$0,(a2)
	beq.s loc_2032ac
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203526
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032fc
loc_2032ac:
	bclr.b #$1,(a2)
	beq.s loc_2032c6
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203526
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032fc
loc_2032c6:
	bclr.b #$2,(a2)
	beq.s loc_2032dc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203526
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203352
loc_2032dc:
	bclr.b #$3,(a2)
	beq.s loc_2032f6
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203526
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203352
loc_2032f6:
	rts

sub_2032f8:
	rts

sub_2032fa:
	rts

sub_2032fc:
	moveq #$15,d6

sub_2032fe:
	move.l #$800000,d7
	move.l d0,d1
loc_203306:
	movem.l d4-d5,-(a7)
	bsr.w sub_2033fe
	move.l d1,d0
	bsr.w sub_203380
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203306
	rts
	.incbin 13096, 42

sub_203352:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20335c:
	movem.l d4-d5,-(a7)
	bsr.w sub_2033fe
	move.l d1,d0
	bsr.w sub_203380
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20335c
	rts

sub_203380:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033bc
	btst.b #$3,(a0)
	bne.s loc_20339c
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20339c:
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
loc_2033bc:
	btst.b #$3,(a0)
	bne.s loc_2033de
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
loc_2033de:
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

sub_2033fe:
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
	beq.s loc_20344e
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
loc_20344e:
	rts
	.incbin 13392, 214

sub_203526:
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
	.incbin 13634, 28

sub_20355e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203584
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2

sub_203584:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203588:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203526
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2032fe
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203588
	rts

sub_2035ac:
	moveq #$0,d0
	lea (dat_20d214).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202646
	movea.l (a2)+,a0
	bsr.w sub_2035f8
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200490
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2035f6
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2035f6
	bsr.w sub_202774
loc_2035f6:
	rts

sub_2035f8:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203602:
	move.l d0,(a3)+
	dbf d1,loc_203602
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203618
	lea ($a040).w,a3
	moveq #$2,d1

sub_203618:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_21f884).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203632:
	move.w d1,d0
	movea.l a3,a0
loc_203636:
	move.b (a1)+,(a0)+
	dbf d0,loc_203636
	lea $80(a3),a3
	dbf d2,loc_203632
	rts

sub_203646:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2036c0(pc,d0.w),d0
	jsr dat_2036c0(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20366c
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20366c:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20369a
	bcc.s loc_20369c
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203690
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203690:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20369a:
	rts
loc_20369c:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2036b4
	btst.b #$1,($d022).w
	beq.s loc_2036b4
	add.w d1,d1
	add.w d1,d1
loc_2036b4:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2036c0:
	.incbin 14016, 460
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20389e(pc,d0.w),d0
	jmp dat_20389e(pc,d0.w)
dat_20389e:
	.incbin 14494, 64
	move.w #$af8,d0
	move.w #$4c0,d1
	bsr.w sub_20396c
	bne.s loc_2038f2
	tst.b ($f7a7).w
	bne.s loc_2038f4
loc_2038f2:
	rts
loc_2038f4:
	move.w #$4f0,($f72e).w
	move.w #$4f0,($f726).w
	rts
	.incbin 14594, 106

sub_20396c:
	cmp.w ($d008).w,d0
	ble.s loc_203976
	moveq #$0,d0
	rts
loc_203976:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_203982
	neg.w d1
loc_203982:
	cmpi.w #$4,d1
	bge.s loc_20398e
	move.w ($f726).w,($f72e).w
loc_20398e:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_2039ae
	cmp.w ($f72a).w,d0
	ble.s loc_2039a6
	move.w ($f72a).w,d0
loc_2039a6:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_2039ae:
	moveq #$1,d0
	rts

sub_2039b2:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2039ba:
	move.b (a0),d0
	beq.s loc_2039d0
	add.w d0,d0
	add.w d0,d0
	lea (dat_203dd4).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2039d0:
	lea $40(a0),a0
	dbf d7,loc_2039ba
	rts

sub_2039da:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203a18
	bpl.s loc_203a0a
	btst.b #$1,$2c(a0)
	beq.s loc_203a0a
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203a18
loc_203a0a:
	btst.b #$2,$2c(a0)
	bne.s loc_203a18
	addi.w #$38,$12(a0)
loc_203a18:
	tst.w $12(a0)
	bmi.s loc_203a2c
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a2c
	move.w #$1000,$12(a0)
loc_203a2c:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a3c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a78
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a78
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a76
	neg.w d1
loc_203a76:
	add.w d1,d0
loc_203a78:
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

sub_203a92:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203b02
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b1e
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b1e
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203adc
	cmpi.w #$800,d3
	bcs.s loc_203aee
	subi.w #$800,d3
	bra.s loc_203aee
loc_203adc:
	cmpi.w #$700,($f704).w
	bcs.s loc_203aee
	cmpi.w #$100,d3
	bcc.s loc_203aee
	addi.w #$800,d3
loc_203aee:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b1e
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b1e
loc_203b02:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203b1e
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b1e:
	rts
	.incbin 15136, 30

sub_203b3e:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b44:
	move.l d1,(a1)+
	dbf d0,loc_203b44
	rts
dat_203b4c:
	dc.b $00,$00,$00,$00,$00,$ff
dat_203b52:
	dc.b $f7,$00,$00,$ff,$f7,$08,$00,$ff
	dc.b $f7,$18

sub_203b5c:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b68:
	tst.w (a4)
	beq.w loc_203c28
	moveq #$2,d6
loc_203b70:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c20
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203bd6
	movea.l dat_203b4c(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203bba
	cmpi.w #$800,d2
	bcs.s loc_203bcc
	subi.w #$800,d2
	bra.s loc_203bcc
loc_203bba:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203bcc
	cmpi.w #$100,d2
	bcc.s loc_203bcc
	addi.w #$800,d2
loc_203bcc:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203bf8
loc_203bd6:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203bf8
	.incbin 15328, 24
loc_203bf8:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c16
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c1a
loc_203c16:
	bsr.w sub_203c4a
loc_203c1a:
	bset.b #$7,$1(a0)
loc_203c20:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b70
loc_203c28:
	lea $80(a4),a4
	dbf d7,loc_203b68
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c42
	move.l #$0,(a2)
	rts
loc_203c42:
	move.b #$0,-$5(a2)
	rts

sub_203c4a:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c90
	btst.l #$1,d4
	bne.w loc_203cde
loc_203c5c:
	cmpi.b #$50,d5
	beq.s loc_203c8e
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
	bne.s loc_203c88
	addq.w #$1,d0
loc_203c88:
	move.w d0,(a2)+
	dbf d1,loc_203c5c
loc_203c8e:
	rts
loc_203c90:
	btst.l #$1,d4
	bne.w loc_203d24
loc_203c98:
	cmpi.b #$50,d5
	beq.s loc_203cdc
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
	bne.s loc_203cd6
	addq.w #$1,d0
loc_203cd6:
	move.w d0,(a2)+
	dbf d1,loc_203c98
loc_203cdc:
	rts
loc_203cde:
	cmpi.b #$50,d5
	beq.s loc_203d22
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
	bne.s loc_203d1c
	addq.w #$1,d0
loc_203d1c:
	move.w d0,(a2)+
	dbf d1,loc_203cde
loc_203d22:
	rts
loc_203d24:
	cmpi.b #$50,d5
	beq.s loc_203d76
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
	bne.s loc_203d70
	addq.w #$1,d0
loc_203d70:
	move.w d0,(a2)+
	dbf d1,loc_203d24
loc_203d76:
	rts
	.incbin 15736, 92
dat_203dd4:
	.incbin 15828, 326

sub_203f1a:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203f2c
	move.w #$0,(a1)
	rts
loc_203f2c:
	tst.w (a1)
	bne.s loc_203f36
	move.b #$1,$1(a1)
loc_203f36:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203f80
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203f72
	neg.w $10(a0)
loc_203f72:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205cac
loc_203f80:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203f9e
	cmpa.w #$d040,a0
	beq.s loc_203f9e
	tst.b ($ff1906).l
	beq.s loc_203f9e
	jmp (loc_20749a).l
loc_203f9e:
	move.b $2a(a0),d0
	beq.s loc_203fc8
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203fba
	cmpi.b #$2d,d0
	bcs.s loc_203fc4
	move.b #$2d,d0
	bra.s loc_203fc4
loc_203fba:
	cmpi.b #$1e,d0
	bcs.s loc_203fc4
	move.b #$1e,d0
loc_203fc4:
	move.b d0,$2a(a0)
loc_203fc8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203fd6(pc,d0.w),d1
	jmp dat_203fd6(pc,d1.w)
dat_203fd6:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203fe0:
	tst.b ($d300).w
	bne.s loc_20401e
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_20401e:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_204046
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_204046:
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_20407a:
	tst.b ($ff1506).l
	bne.s loc_2040e0
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_2040e0
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_2040e4
	cmpi.b #$2f,d1
	bne.s loc_2040e2
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_2040e0
	tst.b $2c(a0)
	beq.s loc_2040e0
	jsr (sub_2078c6).l
	bne.s loc_2040e0
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_2040d8
	moveq #$0,d0
loc_2040d8:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2040e0:
	rts
loc_2040e2:
	rts

sub_2040e4:
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

sub_20410a:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204116
	neg.w d0
loc_204116:
	btst.b #$1,$2c(a0)
	beq.s loc_204126
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_20414e
loc_204126:
	cmpi.w #$600,d0
	bcs.s loc_20414e
	tst.w $14(a0)
	bpl.s loc_204140
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_20415c
	move.w #$e0,d1
	bra.s loc_20415c
loc_204140:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_20415c
	move.w #$60,d1
	bra.s loc_20415c
loc_20414e:
	cmpi.w #$a0,d1
	beq.s loc_20415c
	bcc.s loc_20415a
	addq.w #$2,d1
	bra.s loc_20415c
loc_20415a:
	subq.w #$2,d1
loc_20415c:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_20410a
	bsr.w sub_20407a
	tst.w ($ff1588).l
	beq.s loc_204182
	btst.b #$4,($f605).w
	beq.s loc_204182
	move.b #$1,($ff1906).l
	rts
loc_204182:
	tst.b ($f7cc).w
	bne.s loc_20418e
	move.w ($f604).w,($f602).w
loc_20418e:
	btst.b #$0,$2c(a0)
	beq.s loc_2041b2
	cmpi.b #$6,($ff1506).l
	bne.s loc_2041ac
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2041ca
loc_2041ac:
	bsr.w sub_204494
	bra.s loc_2041ca
loc_2041b2:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204210(pc,d0.w),d1
	jsr dat_204210(pc,d1.w)
	jsr (sub_206aa0).l
loc_2041ca:
	bsr.s sub_20421e
	bsr.w sub_2042de
	bsr.w sub_2042f8
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2041f2
	tst.b $1c(a0)
	bne.s loc_2041f2
	move.b $1d(a0),$1c(a0)
loc_2041f2:
	bsr.w sub_20569c
	tst.b $2c(a0)
	bmi.s loc_20420a
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20420a
	jsr (sub_207044).l
loc_20420a:
	bsr.w sub_205552
	rts
dat_204210:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_20421e:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204242
	move.w $30(a0),d0
	beq.s loc_204234
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204242
loc_204234:
	btst.b #$6,$2c(a0)
	bne.s loc_204242
	jsr (sub_203a92).l
loc_204242:
	tst.b ($ff151f).l
	beq.s loc_204286
	tst.w $32(a0)
	beq.s loc_204286
	subq.w #$1,$32(a0)
	bne.s loc_204286
	tst.b ($ff1520).l
	bne.s loc_20427e
	tst.b ($ff1958).l
	bne.s loc_20427e
	tst.b ($ff152e).l
	bne.s loc_204278
	move.w #$e,d0
	jsr (sub_205cac).l
loc_204278:
	jsr (sub_2019cc).l
loc_20427e:
	move.b #$0,($ff151f).l
loc_204286:
	tst.b ($ff1520).l
	beq.s loc_2042dc
	tst.w $34(a0)
	beq.s loc_2042dc
	subq.w #$1,$34(a0)
	bne.s loc_2042dc
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2042d4
	tst.b ($ff1958).l
	bne.s loc_2042d4
	tst.b ($ff152e).l
	bne.s loc_2042ce
	move.w #$e,d0
	jsr (sub_205cac).l
loc_2042ce:
	jsr (sub_2019cc).l
loc_2042d4:
	move.b #$0,($ff1520).l
loc_2042dc:
	rts

sub_2042de:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2042f8:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204304
loc_204302:
	rts
loc_204304:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204316
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204302
loc_204316:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20435a
	bset.b #$6,$22(a0)
	bne.s loc_204302
	bsr.w sub_20612c
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204302
	bra.s loc_204392
loc_20435a:
	tst.w $12(a0)
	beq.s loc_204362
	bpl.s loc_204302
loc_204362:
	bclr.b #$6,$22(a0)
	beq.s loc_204302
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204302
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204392
	move.w #$f000,$12(a0)
loc_204392:
	jsr (sub_2078c6).l
	bne.s loc_2043a6
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2043a6:
	rts

sub_2043a8:
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
	bcs.s loc_204482
	move.l #$50000,d0
loc_204482:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204494:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2044ba
	tst.b ($ff152e).l
	beq.s loc_2044b0
	cmpi.b #$2,($ff152e).l
	bne.s loc_2044ba
loc_2044b0:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20456a
loc_2044ba:
	tst.b $2a(a0)
	bne.w loc_204578
	tst.b ($f784).w
	beq.w loc_204578
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2044d8
	neg.w d0
loc_2044d8:
	tst.w ($f786).w
	bne.s loc_2044e4
	move.w #$1,($f786).w
loc_2044e4:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2044fa
	move.b #$1,($ff1502).l
	bra.w loc_205ca8
loc_2044fa:
	cmpi.w #$d2,d1
	bcs.s loc_20454e
	cmpi.b #$2,($ff1522).l
	beq.s loc_20454c
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204524
	move.w #$82,d0
	jsr (sub_205cac).l
	moveq #$0,d0
loc_204524:
	add.b ($f784).w,d0
	bpl.s loc_20452e
	moveq #$0,d0
	bra.s loc_204536
loc_20452e:
	cmpi.b #$3,d0
	bcs.s loc_204536
	moveq #$2,d0
loc_204536:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2043a8
	move.b #$2,($ff1522).l
loc_20454c:
	rts
loc_20454e:
	cmpi.w #$5a,d1
	bcc.s loc_204566
	cmp.w d2,d0
	bcc.w loc_203fe0
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204566:
	cmp.w d2,d0
	bcc.s loc_204578
loc_20456a:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204578:
	rts
	bsr.w sub_203f1a
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045aa
	tst.b ($ff195b).l
	beq.s loc_204598
	cmpi.b #$79,$1a(a0)
	bne.s loc_2045d4
	bra.s loc_2045a0
loc_204598:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2045d4
loc_2045a0:
	bsr.w sub_204e3c
	jmp (sub_2039da).l
loc_2045aa:
	bsr.w sub_204682
	bsr.w sub_204494
	bsr.w sub_204f26
	bsr.w sub_205052
	bsr.w sub_2046f6
	bsr.w sub_204ea8
	bsr.w sub_204e3c
	jsr (sub_203a3c).l
	bsr.w sub_200b12
	bsr.w sub_2050d0
loc_2045d4:
	rts
	tst.b ($f7c7).w
	bne.s loc_2045f0
	cmpi.b #$15,$1c(a0)
	beq.s loc_2045f0
	tst.w $12(a0)
	bmi.s loc_2045f0
	move.b #$0,$1c(a0)
loc_2045f0:
	bsr.w sub_204682
	bsr.w sub_204494
	bsr.w sub_205010
	bsr.w sub_204d5c
	bsr.w sub_204e3c
	jsr (sub_2039da).l
	btst.b #$6,$22(a0)
	beq.s loc_204618
	subi.w #$28,$12(a0)
loc_204618:
	bsr.w sub_20511a
	bsr.w sub_20513e
	rts
	bsr.w sub_204682
	bsr.w sub_204494
	bsr.w sub_204f26
	bsr.w sub_20508e
	bsr.w sub_204b96
	bsr.w sub_204e3c
	tst.b $2a(a0)
	bne.s loc_204646
	jsr (sub_203a3c).l
loc_204646:
	bsr.w sub_200b12
	bsr.w sub_2050d0
	rts
	bsr.w sub_204682
	bsr.w sub_204494
	bsr.w sub_205010
	bsr.w sub_204d5c
	bsr.w sub_204e3c
	jsr (sub_2039da).l
	btst.b #$6,$22(a0)
	beq.s loc_204678
	subi.w #$28,$12(a0)
loc_204678:
	bsr.w sub_20511a
	bsr.w sub_20513e
	rts

sub_204682:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2046ee
	tst.w ($ff1506).l
	bne.s loc_2046ee
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2046f0).l,a2
loc_2046b6:
	move.b (a2)+,d0
	bmi.s loc_2046c6
	cmp.b d0,d1
	bne.s loc_2046b6
	bset.b #$1,$2c(a0)
	rts
loc_2046c6:
	bclr.b #$1,$2c(a0)
	beq.s loc_2046ee
	tst.w $12(a0)
	bpl.s loc_2046ee
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2046ee
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2046ee
	neg.w $10(a0)
loc_2046ee:
	rts
dat_2046f0:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2046f6:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204a20
	tst.w $3e(a0)
	bne.w loc_2049d0
	btst.b #$2,($f602).w
	beq.s loc_20471e
	bsr.w sub_204ab0
loc_20471e:
	btst.b #$3,($f602).w
	beq.s loc_20472a
	bsr.w sub_204b26
loc_20472a:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2049d0
	tst.w $14(a0)
	beq.s loc_20474a
	tst.b $2a(a0)
	beq.w loc_2049d0
	bra.s loc_204756
loc_20474a:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204756:
	btst.b #$3,$22(a0)
	beq.s loc_2047a8
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204800
	cmpi.b #$1e,$0(a1)
	bne.s loc_204788
	move.b #$0,$1c(a0)
	bra.w loc_2049d0
loc_204788:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2047e4
	cmp.w d2,d1
	bge.s loc_2047d2
	bra.s loc_204800
loc_2047a8:
	jsr (sub_206da8).l
	cmpi.w #$c,d1
	blt.s loc_204800
	move.w #$ab,d0
	jsr (sub_2025aa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2047dc
loc_2047d2:
	btst.b #$0,$22(a0)
	bne.s loc_2047ec
	bra.s loc_2047f6
loc_2047dc:
	cmpi.b #$3,$37(a0)
	bne.s loc_204800
loc_2047e4:
	btst.b #$0,$22(a0)
	bne.s loc_2047f6
loc_2047ec:
	move.b #$32,$1c(a0)
	bra.w loc_2049d0
loc_2047f6:
	move.b #$6,$1c(a0)
	bra.w loc_2049d0
loc_204800:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204814
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204814:
	btst.b #$7,($f788).w
	bne.w loc_204918
	btst.b #$6,($f788).w
	bne.w loc_204938
	btst.b #$1,($f602).w
	bne.w loc_204938
	andi.b #$f,($f788).w
	beq.s loc_20484c
	btst.b #$0,($f603).w
	beq.s loc_204860
	bset.b #$7,($f788).w
	bra.w loc_2049f4
loc_20484c:
	btst.b #$0,($f603).w
	beq.w loc_204860
	move.b #$1,($f788).w
	bra.w loc_2049f4
loc_204860:
	btst.b #$0,($f602).w
	beq.s loc_2048dc
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2048be
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204890
	asr.w #$1,d2
	sub.w d2,d1
loc_204890:
	btst.b #$0,$22(a0)
	beq.s loc_20489c
	neg.w d0
	neg.w d1
loc_20489c:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2048b2
	cmp.w d0,d1
	ble.s loc_2048b8
	bra.s loc_2048b6
loc_2048b2:
	cmp.w d1,d0
	ble.s loc_2048b8
loc_2048b6:
	move.w d1,d0
loc_2048b8:
	move.w d0,$14(a0)
	rts
loc_2048be:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048d8
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2025aa).l
loc_2048d8:
	bra.w loc_2049f4
loc_2048dc:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2048fc
	move.w #$ab,d0
	jsr (sub_2025aa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204938
loc_2048fc:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2025aa).l
	bra.w loc_2049d0
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204918:
	btst.b #$0,($f602).w
	beq.s loc_204938
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2049f4
	addq.w #$2,($f73e).w
	bra.w loc_2049f4
loc_204938:
	btst.b #$6,($f788).w
	bne.w loc_2049b4
	andi.b #$f,($f788).w
	beq.s loc_20495c
	btst.b #$1,($f603).w
	beq.s loc_20496e
	bset.b #$6,($f788).w
	bra.w loc_2049f4
loc_20495c:
	btst.b #$1,($f603).w
	beq.s loc_20496e
	move.b #$1,($f788).w
	bra.w loc_2049f4
loc_20496e:
	btst.b #$1,($f602).w
	beq.s loc_2049d0
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2049b2
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049b2
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2049a4
	neg.w $14(a0)
loc_2049a4:
	move.w #$9c,d0
	jsr (sub_2025aa).l
	bsr.w sub_204ed0
loc_2049b2:
	bra.s loc_2049f4
loc_2049b4:
	btst.b #$1,($f602).w
	beq.s loc_2049d0
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2049f4
	subq.w #$2,($f73e).w
	bra.s loc_2049f4
loc_2049d0:
	cmpi.w #$60,($f73e).w
	bne.s loc_2049ea
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2049f4
	move.b #$0,($f788).w
	bra.s loc_2049f4
loc_2049ea:
	bcc.s loc_2049f0
	addq.w #$4,($f73e).w
loc_2049f0:
	subq.w #$2,($f73e).w
loc_2049f4:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a20
	move.w $14(a0),d0
	beq.s loc_204a20
	bmi.s loc_204a14
	sub.w d5,d0
	bcc.s loc_204a0e
	move.w #$0,d0
loc_204a0e:
	move.w d0,$14(a0)
	bra.s loc_204a20
loc_204a14:
	add.w d5,d0
	bcc.s loc_204a1c
	move.w #$0,d0
loc_204a1c:
	move.w d0,$14(a0)
loc_204a20:
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a3e:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204aae
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204aae
	bmi.s loc_204a56
	neg.w d1
loc_204a56:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206c68
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204aae
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204aaa
	cmpi.b #$40,d0
	beq.s loc_204a98
	cmpi.b #$80,d0
	beq.s loc_204a92
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a92:
	sub.w d1,$12(a0)
	rts
loc_204a98:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204aaa:
	add.w d1,$12(a0)
loc_204aae:
	rts

sub_204ab0:
	tst.b $2a(a0)
	bne.s loc_204b24
	move.w $14(a0),d0
	beq.s loc_204abe
	bpl.s loc_204aee
loc_204abe:
	bset.b #$0,$22(a0)
	bne.s loc_204ad2
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204ad2:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204ae2
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204ae2
	move.w d1,d0
loc_204ae2:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204aee:
	sub.w d4,d0
	bcc.s loc_204af6
	move.w #$ff80,d0
loc_204af6:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b24
	cmpi.w #$400,d0
	blt.s loc_204b24
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2025aa).l
loc_204b24:
	rts

sub_204b26:
	tst.b $2a(a0)
	bne.s loc_204b94
	move.w $14(a0),d0
	bmi.s loc_204b5e
	bclr.b #$0,$22(a0)
	beq.s loc_204b46
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b46:
	cmp.w d6,d0
	bge.s loc_204b52
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b52
	move.w d6,d0
loc_204b52:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b5e:
	add.w d4,d0
	bcc.s loc_204b66
	move.w #$80,d0
loc_204b66:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b94
	cmpi.w #$fc00,d0
	bgt.s loc_204b94
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2025aa).l
loc_204b94:
	rts

sub_204b96:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204ce0
	tst.w $3e(a0)
	bne.s loc_204bce
	btst.b #$2,($f602).w
	beq.s loc_204bc2
	bsr.w sub_204d16
loc_204bc2:
	btst.b #$3,($f602).w
	beq.s loc_204bce
	bsr.w sub_204d3a
loc_204bce:
	tst.b $2a(a0)
	beq.w loc_204c78
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204bee
	asr.w #$1,d2
	sub.w d2,d1
loc_204bee:
	btst.b #$0,$22(a0)
	beq.s loc_204bfa
	neg.w d0
	neg.w d1
loc_204bfa:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204c10
	cmp.w d0,d1
	ble.s loc_204c16
	bra.s loc_204c14
loc_204c10:
	cmp.w d1,d0
	ble.s loc_204c16
loc_204c14:
	move.w d1,d0
loc_204c16:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204c4a
	rts
loc_204c24:
	move.w #$ab,d0
	jsr (sub_2025aa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204caa
loc_204c4a:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204c24
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2025aa).l
	btst.b #$0,$22(a0)
	bne.s loc_204c70
	bsr.w sub_204d3a
	bra.s loc_204c78
loc_204c70:
	bsr.w sub_204d16
	bra.s loc_204c78
	dc.b $4e,$75
loc_204c78:
	move.w $14(a0),d0
	beq.s loc_204c9a
	bmi.s loc_204c8e
	sub.w d5,d0
	bcc.s loc_204c88
	move.w #$0,d0
loc_204c88:
	move.w d0,$14(a0)
	bra.s loc_204c9a
loc_204c8e:
	add.w d5,d0
	bcc.s loc_204c96
	move.w #$0,d0
loc_204c96:
	move.w d0,$14(a0)
loc_204c9a:
	tst.w $14(a0)
	bne.s loc_204ce0
	move.w #$ab,d0
	jsr (sub_2025aa).l
loc_204caa:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204cca
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204cda
loc_204cca:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204cda:
	move.b #$5,$1c(a0)
loc_204ce0:
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204d04
	move.w #$1000,d1
loc_204d04:
	cmpi.w #$f000,d1
	bge.s loc_204d0e
	move.w #$f000,d1
loc_204d0e:
	move.w d1,$10(a0)
	bra.w loc_204a3e

sub_204d16:
	move.w $14(a0),d0
	beq.s loc_204d1e
	bpl.s loc_204d2c
loc_204d1e:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d2c:
	sub.w d4,d0
	bcc.s loc_204d34
	move.w #$ff80,d0
loc_204d34:
	move.w d0,$14(a0)
	rts

sub_204d3a:
	move.w $14(a0),d0
	bmi.s loc_204d4e
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d4e:
	add.w d4,d0
	bcc.s loc_204d56
	move.w #$80,d0
loc_204d56:
	move.w d0,$14(a0)
	rts

sub_204d5c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204d96
	tst.w ($ff1506).l
	bne.s loc_204d96
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204d8e
	cmpi.w #$840,$8(a0)
	bcc.s loc_204d8e
	rts
loc_204d8e:
	btst.b #$1,$2c(a0)
	bne.s loc_204dc6
loc_204d96:
	btst.b #$2,($f602).w
	beq.s loc_204db0
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204db0
	move.w d1,d0
loc_204db0:
	btst.b #$3,($f602).w
	beq.s loc_204dc6
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204dc6
	move.w d6,d0
loc_204dc6:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204ddc
	bcc.s loc_204dd8
	addq.w #$4,($f73e).w
loc_204dd8:
	subq.w #$2,($f73e).w
loc_204ddc:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204e0a
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204e0a
	bmi.s loc_204dfe
	sub.w d1,d0
	bcc.s loc_204df8
	move.w #$0,d0
loc_204df8:
	move.w d0,$10(a0)
	rts
loc_204dfe:
	sub.w d1,d0
	bcs.s loc_204e06
	move.w #$0,d0
loc_204e06:
	move.w d0,$10(a0)
loc_204e0a:
	rts
	.incbin 19980, 22
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
	rts

sub_204e3c:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204e90
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204e6a
	addi.w #$38,d0
loc_204e6a:
	cmp.w d1,d0
	bls.s loc_204e90
loc_204e6e:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204e7e
	rts
loc_204e7e:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2072d6
	move.b #$6,$24(a0)
	rts
loc_204e90:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204e6e

sub_204ea8:
	tst.b ($f7ca).w
	bne.s loc_204ece
	move.w $14(a0),d0
	bpl.s loc_204eb6
	neg.w d0
loc_204eb6:
	cmpi.w #$80,d0
	bcs.s loc_204ece
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204ece
	btst.b #$1,($f602).w
	bne.s sub_204ed0
loc_204ece:
	rts

sub_204ed0:
	btst.b #$2,$22(a0)
	beq.s loc_204eda
	bra.s loc_204f0a
loc_204eda:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204efa
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f0a
loc_204efa:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f0a:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204f24
	cmpi.w #$200,$14(a0)
	bcc.s loc_204f24
	move.w #$200,$14(a0)
loc_204f24:
	rts

sub_204f26:
	tst.b $2a(a0)
	beq.s loc_204f2e
	rts
loc_204f2e:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204f40
	tst.w $14(a0)
	beq.w loc_205006
loc_204f40:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205006
	btst.b #$3,$22(a0)
	beq.s loc_204f5c
	jsr (sub_205c32).l
	beq.s loc_204f8c
loc_204f5c:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206cd2
	cmpi.w #$6,d1
	blt.w loc_205006
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f82
	move.w #$380,d2
loc_204f82:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204f8c:
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
	bne.s loc_205008
	tst.b ($ff195b).l
	beq.s loc_204fea
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204ffa
loc_204fea:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204ffa:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205006:
	rts
loc_205008:
	bset.b #$4,$22(a0)
	rts

sub_205010:
	tst.b $3c(a0)
	beq.s loc_205042
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205026
	move.w #$fe00,d1
loc_205026:
	cmp.w $12(a0),d1
	ble.s loc_205040
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205040
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205040:
	rts
loc_205042:
	cmpi.w #$f040,$12(a0)
	bge.s loc_205050
	move.w #$f040,$12(a0)
loc_205050:
	rts

sub_205052:
	tst.b $2a(a0)
	bne.s loc_20508c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20508c
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_20508c
	bmi.s loc_205088
	tst.w d0
	beq.s loc_205086
	add.w d0,$14(a0)
loc_205086:
	rts
loc_205088:
	add.w d0,$14(a0)
loc_20508c:
	rts

sub_20508e:
	tst.b $2a(a0)
	bne.s loc_2050ce
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050ce
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2050c4
	tst.w d0
	bpl.s loc_2050be
	asr.l #$2,d0
loc_2050be:
	add.w d0,$14(a0)
	rts
loc_2050c4:
	tst.w d0
	bmi.s loc_2050ca
	asr.l #$2,d0
loc_2050ca:
	add.w d0,$14(a0)
loc_2050ce:
	rts

sub_2050d0:
	nop
	tst.b $38(a0)
	bne.s loc_205112
	tst.w $3e(a0)
	bne.s loc_205114
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205112
	move.w $14(a0),d0
	bpl.s loc_2050f4
	neg.w d0
loc_2050f4:
	cmpi.w #$280,d0
	bcc.s loc_205112
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205112:
	rts
loc_205114:
	subq.w #$1,$3e(a0)
	rts

sub_20511a:
	btst.b #$1,$2c(a0)
	bne.s loc_20513c
	move.b $26(a0),d0
	beq.s loc_20513c
	bpl.s loc_205132
	addq.b #$2,d0
	bcc.s loc_205130
	moveq #$0,d0
loc_205130:
	bra.s loc_205138
loc_205132:
	subq.b #$2,d0
	bcc.s loc_205138
	moveq #$0,d0
loc_205138:
	move.b d0,$26(a0)
loc_20513c:
	rts

sub_20513e:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2009aa).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205222
	cmpi.b #$80,d0
	beq.w loc_205284
	cmpi.b #$c0,d0
	beq.w loc_2052e0
	bsr.w sub_206fe8
	tst.w d1
	bpl.s loc_205190
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205190:
	bsr.w sub_206e4a
	tst.w d1
	bpl.s loc_2051a2
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051a2:
	bsr.w sub_206cfa
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205220
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2051c0
	cmp.b d2,d0
	blt.s loc_205220
loc_2051c0:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205342
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2051fe
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2051f0
	asr.w $12(a0)
	bra.s loc_205212
loc_2051f0:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2051fe:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205212
	move.w #$fc0,$12(a0)
loc_205212:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205220
	neg.w $14(a0)
loc_205220:
	rts
loc_205222:
	bsr.w sub_206fe8
	tst.w d1
	bpl.s loc_20523c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20523c:
	bsr.w sub_206ea2
	tst.w d1
	bpl.s loc_205256
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205254
	move.w #$0,$12(a0)
loc_205254:
	rts
loc_205256:
	tst.w $12(a0)
	bmi.s loc_205282
	bsr.w sub_206cfa
	tst.w d1
	bpl.s loc_205282
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205342
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205282:
	rts
loc_205284:
	bsr.w sub_206fe8
	tst.w d1
	bpl.s loc_205296
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205296:
	bsr.w sub_206e4a
	tst.w d1
	bpl.s loc_2052a8
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052a8:
	bsr.w sub_206ea2
	tst.w d1
	bpl.s loc_2052de
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052c8
	move.w #$0,$12(a0)
	rts
loc_2052c8:
	move.b d3,$26(a0)
	bsr.w sub_2053b4
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2052de
	neg.w $14(a0)
loc_2052de:
	rts
loc_2052e0:
	bsr.w sub_206e4a
	tst.w d1
	bpl.s loc_2052fa
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2052fa:
	bsr.w sub_206ea2
	tst.w d1
	bpl.s loc_205314
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205312
	move.w #$0,$12(a0)
loc_205312:
	rts
loc_205314:
	tst.w $12(a0)
	bmi.s loc_205340
	bsr.w sub_206cfa
	tst.w d1
	bpl.s loc_205340
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205342
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205340:
	rts

sub_205342:
	btst.b #$4,$22(a0)
	beq.s loc_20534c
	nop
loc_20534c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2053a6
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205386
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205396
loc_205386:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205396:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2025aa).l
loc_2053a6:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2053b4:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21460, 382

sub_205552:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20557a
	cmpi.b #$5,($ff1506).l
	beq.s loc_20557a
	cmpi.b #$2,($ff1506).l
	beq.s loc_20557a
	tst.b ($ff1506).l
	bne.w loc_20563c
loc_20557a:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2055b8
	tst.b ($ff1506).l
	bne.w loc_20563e
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_20563e
	bra.s loc_2055c0
loc_2055b8:
	cmp.b ($f7af).w,d1
	beq.w loc_20563e
loc_2055c0:
	cmp.b ($f7ac).w,d1
	beq.s loc_2055f0
	cmp.b ($f7ad).w,d1
	beq.s loc_2055d4
	bclr.b #$6,$1(a0)
	rts
loc_2055d4:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205656
	btst.b #$1,$22(a0)
	beq.s loc_2055f0
	bclr.b #$6,$1(a0)
	rts
loc_2055f0:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205602
	bclr.b #$6,$1(a0)
	rts
loc_205602:
	cmpi.b #$e0,d2
	bcs.s loc_205610
	bset.b #$6,$1(a0)
	rts
loc_205610:
	btst.b #$6,$1(a0)
	bne.s loc_20562c
	move.b $26(a0),d1
	beq.s loc_20563c
	cmpi.b #$80,d1
	bhi.s loc_20563c
	bset.b #$6,$1(a0)
	rts
loc_20562c:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20563c
	bclr.b #$6,$1(a0)
loc_20563c:
	rts
loc_20563e:
	btst.b #$2,$22(a0)
	bne.s loc_205650
	move.w #$9c,d0
	jsr (sub_2025aa).l
loc_205650:
	jmp (sub_204ed0).l
loc_205656:
	tst.w $12(a0)
	bmi.s loc_20569a
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_20568e
	cmpi.w #$38,d1
	bcs.s loc_205686
	cmpi.w #$80,d1
	bcs.s loc_20569a
loc_20567e:
	bclr.b #$6,$1(a0)
	rts
loc_205686:
	bset.b #$6,$1(a0)
	rts
loc_20568e:
	cmpi.w #$38,d1
	bcs.s loc_20567e
	cmpi.w #$80,d1
	bcc.s loc_205686
loc_20569a:
	rts

sub_20569c:
	lea (dat_20598c).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2056be
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2056be:
	bsr.w sub_20592e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205736
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205704
	move.b d0,$1e(a0)

sub_2056e8:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2056fc
	bpl.s loc_2056fc
	cmpi.b #$fd,d0
	bge.s loc_205706
loc_2056fc:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205704:
	rts
loc_205706:
	addq.b #$1,d0
	bne.s loc_205716
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2056fc
loc_205716:
	addq.b #$1,d0
	bne.s loc_20572a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2056fc
loc_20572a:
	addq.b #$1,d0
	bne.s loc_205734
	move.b $2(a1,d1.w),$1c(a0)
loc_205734:
	rts
loc_205736:
	subq.b #$1,$1e(a0)
	bpl.s loc_205704
	addq.b #$1,d0
	bne.w loc_2057f0
	tst.b ($ff195b).l
	bne.w loc_2058b8
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20575e
	not.b d0
loc_20575e:
	btst.b #$1,$2c(a0)
	bne.s loc_20576c
	addi.b #$10,d0
	bra.s loc_20576e
loc_20576c:
	addq.b #$8,d0
loc_20576e:
	bpl.s loc_205772
	moveq #$3,d1
loc_205772:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205864
	move.w $14(a0),d2
	bpl.s loc_205790
	neg.w d2
loc_205790:
	btst.b #$1,$2c(a0)
	beq.s loc_2057a8
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205b8e).l,a1
	bra.s loc_2057d2
loc_2057a8:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205b68).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2057d2
	lea (dat_205a0c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2057d2
	lea (dat_205a04).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2057d2:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2057e0
	moveq #$0,d2
loc_2057e0:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2056e8
	add.b d3,$1a(a0)
	rts
loc_2057f0:
	addq.b #$1,d0
	bne.s loc_205860
	move.w $14(a0),d2
	bpl.s loc_2057fc
	neg.w d2
loc_2057fc:
	lea (dat_205aea).l,a1
	tst.b ($ff195b).l
	bne.s loc_20583a
	lea (dat_205a1c).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20582e
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20583a
	lea (dat_205b96).l,a1
	bra.s loc_20583a
loc_20582e:
	cmpi.w #$600,d2
	bcc.s loc_20583a
	lea (dat_205a14).l,a1
loc_20583a:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205844
	moveq #$0,d2
loc_205844:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056e8
loc_205860:
	addq.b #$1,d0
	bne.s loc_2058a4
loc_205864:
	move.w $14(a0),d2
	bmi.s loc_20586c
	neg.w d2
loc_20586c:
	addi.w #$800,d2
	bpl.s loc_205874
	moveq #$0,d2
loc_205874:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205afc).l,a1
	tst.b ($ff195b).l
	bne.s loc_20588e
	lea (dat_205a24).l,a1
loc_20588e:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056e8
loc_2058a4:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2058b8:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2058ca
	not.b d0
loc_2058ca:
	addi.b #$10,d0
	bpl.s loc_2058d2
	moveq #$0,d1
loc_2058d2:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205900
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2057f0
loc_205900:
	move.w $14(a0),d2
	bpl.s loc_205908
	neg.w d2
loc_205908:
	lea (dat_205ae4).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20591a
	lea (dat_205ade).l,a1
loc_20591a:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205924
	moveq #$0,d2
loc_205924:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2056e8

sub_20592e:
	tst.b ($ff195b).l
	beq.s loc_20593a
	move.b dat_20593c(pc,d0.w),d0
loc_20593a:
	rts
dat_20593c:
	.incbin 22844, 80
dat_20598c:
	.incbin 22924, 120
dat_205a04:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205a0c:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205a14:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205a1c:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205a24:
	.incbin 23076, 186
dat_205ade:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205ae4:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205aea:
	.incbin 23274, 18
dat_205afc:
	.incbin 23292, 108
dat_205b68:
	.incbin 23400, 38
dat_205b8e:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205b96:
	.incbin 23446, 56

sub_205bce:
	tst.b (a0)
	beq.w loc_205c30
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c30
	move.b d0,(a2)
	lea (dat_233a26).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c30
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205c02:
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
loc_205c1c:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c1c
	dbf d1,loc_205c02
loc_205c30:
	rts

sub_205c32:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205ca6
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
	bne.s loc_205c94
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205c94:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205ca6:
	rts
loc_205ca8:
	move.w #$e,d0

sub_205cac:
	cmpi.w #$67,d0
	bne.s loc_205cba
	move.b #$1,($ff1958).l
loc_205cba:
	move.w d0,($a12010).l
loc_205cc0:
	move.w ($a12020).l,d0
	beq.s loc_205cc0
	cmp.w ($a12020).l,d0
	bne.s loc_205cc0
	move.w #$0,($a12010).l
loc_205cd8:
	move.w ($a12020).l,d0
	bne.s loc_205cd8
	move.w ($a12020).l,d0
	bne.s loc_205cd8
	rts
	dc.b $00,$00

sub_205cec:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205d08
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205d08:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d48
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d4a
loc_205d24:
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
loc_205d48:
	rts
loc_205d4a:
	addq.b #$1,d0
	bne.s loc_205d5a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205d24
loc_205d5a:
	addq.b #$1,d0
	bne.s loc_205d6e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205d24
loc_205d6e:
	addq.b #$1,d0
	bne.s loc_205d78
	move.b $2(a1,d1.w),$1c(a0)
loc_205d78:
	addq.b #$1,d0
	bne.s loc_205d80
	addq.b #$2,$24(a0)
loc_205d80:
	addq.b #$1,d0
	bne.s loc_205d8e
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205d8e:
	addq.b #$1,d0
	bne.s loc_205d96
	addq.b #$2,$25(a0)
loc_205d96:
	rts
	.incbin 23960, 916

sub_20612c:
	cmpi.w #$c,($ff150a).l
	bhi.s loc_206164
	move.w #$82,d0
	cmpi.w #$103,($ff1506).l
	bne.s loc_206148
	move.w #$86,d0
loc_206148:
	tst.b ($ff151f).l
	beq.s loc_206154
	move.w #$87,d0
loc_206154:
	tst.b ($f7aa).w
	beq.s loc_20615e
	move.w #$8c,d0
loc_20615e:
	jsr (sub_2025a8).l
loc_206164:
	move.w #$1e,($ff150a).l
	clr.b ($d1f2).w
	rts
	.incbin 24946, 668

sub_20640e:
	tst.b $25(a0)
	bne.s loc_20643e
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_2078c6).l
	bne.s loc_20643e
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_20643e:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20644e(pc,d0.w),d0
	jmp dat_20644e(pc,d0.w)
dat_20644e:
	dc.b $00,$06,$00,$4a,$00,$5a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$680,$2(a0)
	move.l #$23d652,$4(a0)
	bsr.s sub_20640e
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_206498
	move.w #$100,$1c(a0)
loc_206498:
	lea (dat_23d63e).l,a1
	bsr.w sub_205cec
	jmp (sub_203a92).l
	tst.b $25(a0)
	beq.s loc_2064b4
	jmp (sub_203b3e).l
loc_2064b4:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	.incbin 25794, 726
loc_206798:
	bclr.b #$7,($ff156b).l
	beq.s loc_2067e6
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
loc_2067ac:
	add.w d0,d0
	movea.l dat_2067e8(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2067bc:
	move.l (a1)+,(a2)+
	dbf d0,loc_2067bc
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2067e6:
	rts
dat_2067e8:
	.incbin 26600, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206810(pc,d0.w),d0
	jsr dat_206810(pc,d0.w)
	jmp (sub_203a92).l
dat_206810:
	dc.b $00,$04,$00,$1c
	ori.b #$4,$1(a0)
	move.w #$8280,$2(a0)
	move.l #$2068a0,$4(a0)
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$a0,d0
	moveq #$0,d1
	move.b $2a(a0),d1
	addq.b #$1,d1
	cmpi.b #$2,d1
	bcs.s loc_206844
	moveq #$0,d1
loc_206844:
	move.b d1,$2a(a0)
	move.b dat_20686a(pc,d1.w),d1
	ext.w d1
	add.w d1,d0
	move.w d0,$8(a0)
	move.w ($f646).w,$c(a0)
	addq.w #$2,$c(a0)
	lea (dat_20686c).l,a1
	jmp (sub_205cec).l
dat_20686a:
	dc.b $a0,$60
dat_20686c:
	.incbin 26732, 564

sub_206aa0:
	rts
loc_206aa2:
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
	bne.s loc_206b5c
	move.b ($ff1593).l,($ff195b).l
loc_206b5c:
	tst.b ($ff1522).l
	bpl.s loc_206b72
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b72:
	rts

sub_206b74:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206aa2
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
	bne.s loc_206c2e
	move.b ($ff1591).l,($ff195b).l
loc_206c2e:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c50
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c50:
	tst.b ($ff1522).l
	bpl.s loc_206c66
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c66:
	rts

sub_206c68:
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
	bpl.s loc_206ca4
	move.b d1,d0
	bpl.s loc_206c9e
	subq.b #$1,d0
loc_206c9e:
	addi.b #$20,d0
	bra.s loc_206cae
loc_206ca4:
	move.b d1,d0
	bpl.s loc_206caa
	addq.b #$1,d0
loc_206caa:
	addi.b #$1f,d0
loc_206cae:
	andi.b #$c0,d0
	beq.w loc_206d7e
	cmpi.b #$80,d0
	beq.w loc_206f1a
	andi.b #$38,d1
	bne.s loc_206cc6
	addq.w #$8,d2
loc_206cc6:
	cmpi.b #$40,d0
	beq.w loc_206ff0
	bra.w loc_206e52

sub_206cd2:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206f78
	cmpi.b #$80,d0
	beq.w sub_206ea2
	cmpi.b #$c0,d0
	beq.w loc_206de2

sub_206cfa:
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
loc_206d5e:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206d6c
	move.b ($f768).w,d3
	exg d0,d1
loc_206d6c:
	btst.l #$0,d3
	beq.s loc_206d74
	move.b d2,d3
loc_206d74:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206d7e:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201068).l
	move.b #$0,d2
loc_206d9a:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206da6
	move.b d2,d3
loc_206da6:
	rts

sub_206da8:
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
	beq.s loc_206de0
	move.b #$0,d3
loc_206de0:
	rts
loc_206de2:
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
	bra.w loc_206d5e

sub_206e4a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e52:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b #$c0,d2
	bra.w loc_206d9a
	.incbin 28274, 16
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ea0
	move.b #$c0,d3
loc_206ea0:
	rts

sub_206ea2:
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
	bra.w loc_206d5e

sub_206f12:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f1a:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201068).l
	move.b #$80,d2
	bra.w loc_206d9a
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
	jsr (sub_201068).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206f76
	move.b #$80,d3
loc_206f76:
	rts
loc_206f78:
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
	bra.w loc_206d5e

sub_206fe8:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206ff0:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b #$40,d2
	bra.w loc_206d9a
	.incbin 28692, 16
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_207042
	move.b #$40,d3
loc_207042:
	rts

sub_207044:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_207068
	addi.w #$c,d3
	moveq #$a,d5
loc_207068:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_207076:
	tst.b $1(a1)
	bpl.s loc_207082
	move.b $20(a1),d0
	bne.s loc_20708e
loc_207082:
	lea $40(a1),a1
	dbf d6,loc_207076
	moveq #$0,d0
	rts
loc_20708e:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20741c).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070b6
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070bc
	bra.w loc_207082
loc_2070b6:
	cmp.w d4,d0
	bhi.w loc_207082
loc_2070bc:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2070d4
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2070da
	bra.w loc_207082
loc_2070d4:
	cmp.w d5,d0
	bhi.w loc_207082
loc_2070da:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_20714e
	cmpi.b #$c0,d1
	beq.w loc_20732e
	tst.b d1
	bmi.w sub_207218
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207112
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207110
	addq.b #$2,$24(a1)
loc_207110:
	rts
loc_207112:
	tst.w $12(a0)
	bpl.s loc_20713c
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_20714c
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_20714c
	addq.b #$4,$25(a1)
	rts
loc_20713c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20714c
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_20714c:
	rts

sub_20714e:
	tst.b ($ff1521).l
	bne.s loc_207168
	tst.b ($ff151f).l
	bne.s loc_207168
	cmpi.b #$2,$1c(a0)
	bne.w sub_207218
loc_207168:
	tst.b $21(a1)
	beq.s loc_207192
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_207190
	bset.b #$7,$22(a1)
loc_207190:
	rts
loc_207192:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071aa
	moveq #$6,d0
loc_2071aa:
	move.w d0,$3e(a1)
	move.w dat_20720a(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2071c4
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2071c4:
	bsr.w sub_2095d8
	move.w #$96,d0
	jsr (sub_2025aa).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_2071fa
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207202
	neg.w $12(a0)
	rts
loc_2071fa:
	addi.w #$100,$12(a0)
	rts
loc_207202:
	subi.w #$100,$12(a0)
	rts
dat_20720a:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207218:
	tst.b ($ff1521).l
	bne.s loc_207228
	tst.b ($ff151f).l
	beq.s loc_20722c
loc_207228:
	moveq #$ffffffff,d0
	rts
loc_20722c:
	nop
	tst.w $30(a0)
	bne.s loc_207228
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_207262
	tst.w ($ff1512).l
	beq.w loc_2072cc
	jsr (sub_2078c6).l
	bne.s loc_207262
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207262:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_207278
	move.b #$0,($ff156f).l
loc_207278:
	move.b #$4,$24(a0)
	bsr.w sub_205342
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072a8
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072a8:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072b6
	neg.w $10(a0)
loc_2072b6:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2072cc:
	tst.w ($ff1588).l
	bne.w loc_207262

sub_2072d6:
	tst.w ($ff1906).l
	bne.s loc_20732a
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205342
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
loc_20732a:
	moveq #$ffffffff,d0
	rts
loc_20732e:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2073b6
	cmpi.b #$23,d1
	beq.w loc_2073b6
	cmpi.b #$33,d1
	beq.w loc_20740e
	cmpi.b #$3a,d1
	beq.w loc_20740e
	cmpi.b #$3b,d1
	beq.w loc_20740e
	tst.b ($f7aa).w
	beq.w loc_2073b4
	cmpi.b #$1,($f7aa).w
	beq.s loc_20737e
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073a0
	cmpi.b #$5,($f7aa).w
	beq.s loc_2073ae
loc_20737e:
	cmpi.b #$3c,d1
	blt.s loc_2073b4
	cmpi.b #$3f,d1
	bgt.s loc_2073b4
	bsr.w sub_20714e
	tst.b $20(a1)
	bne.s loc_207398
	addq.b #$3,$21(a1)
loc_207398:
	clr.b $20(a1)
	bra.w loc_2073b6
loc_2073a0:
	cmpi.b #$3f,d1
	beq.s loc_2073c2
	cmpi.b #$3e,d1
	beq.s loc_2073bc
	bra.s loc_2073b4
loc_2073ae:
	cmpi.b #$3d,d1
	beq.s loc_2073bc
loc_2073b4:
	rts
loc_2073b6:
	addq.b #$1,$21(a1)
	rts
loc_2073bc:
	bsr.w sub_207218
	bra.s loc_2073b6
loc_2073c2:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20740c
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$ad,d0
	jsr (sub_2025aa).l
	jsr (sub_20612c).l
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20740c
	neg.w $10(a0)
loc_20740c:
	rts
loc_20740e:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20741a
	addq.b #$1,$21(a1)
loc_20741a:
	rts
dat_20741c:
	.incbin 29724, 126
loc_20749a:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2074b0
	move.l #$4000,(dat_20762a).l
	bra.s loc_2074d0
loc_2074b0:
	addi.l #$2000,(dat_20762a).l
	cmpi.l #$80000,(dat_20762a).l
	bls.s loc_2074d0
	move.l #$80000,(dat_20762a).l
loc_2074d0:
	move.l (dat_20762a).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2074e2
	sub.l d0,$c(a0)
loc_2074e2:
	btst.b #$1,($f604).w
	beq.s loc_2074ee
	add.l d0,$c(a0)
loc_2074ee:
	btst.b #$2,($f604).w
	beq.s loc_2074fa
	sub.l d0,$8(a0)
loc_2074fa:
	btst.b #$3,($f604).w
	beq.s loc_207506
	add.l d0,$8(a0)
loc_207506:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e80).l
	move.w (a1),($ff194e).l
	lea (dat_20762e).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207548
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207542
	move.b #$0,d1
loc_207542:
	move.b d1,($ff1904).l
loc_207548:
	btst.b #$7,($f605).w
	beq.s loc_207568
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207562
	add.b (a2),d1
loc_207562:
	move.b d1,($ff1904).l
loc_207568:
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
	beq.s loc_2075f4
	bsr.w sub_2078c6
	bne.s loc_2075f4
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
loc_2075f4:
	btst.b #$4,($f605).w
	beq.s loc_207624
	move.b #$0,($ff1906).l
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207624:
	jmp (sub_203a92).l
dat_20762a:
	dc.b $00,$00,$40,$00
dat_20762e:
	.incbin 30254, 134

sub_2076b4:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2076c2:
	clr.l (a2)+
	dbf d0,loc_2076c2
	rts

sub_2076ca:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2076d8(pc,d0.w),d0
	jmp dat_2076d8(pc,d0.w)
dat_2076d8:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207978).l,a0
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
	bcc.s loc_207716
	moveq #$0,d6
loc_207716:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_20771e:
	cmp.w (a0),d6
	bls.s loc_207730
	tst.b $4(a0)
	bpl.s loc_20772c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20772c:
	addq.w #$8,a0
	bra.s loc_20771e
loc_207730:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207750
loc_20773e:
	cmp.w (a0),d6
	bls.s loc_207750
	tst.b $4(a0)
	bpl.s loc_20774c
	addq.b #$1,$1(a2)
loc_20774c:
	addq.w #$8,a0
	bra.s loc_20773e
loc_207750:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20783a
	bge.s loc_2077e0
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077bc
loc_20778a:
	cmp.w -$8(a0),d6
	bge.s loc_2077bc
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2077a0
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2077a0:
	bsr.w sub_20785e
	bne.s loc_2077aa
	subq.w #$8,a0
	bra.s loc_20778a
loc_2077aa:
	tst.b $4(a0)
	bpl.s loc_2077ba
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077ba:
	addq.w #$8,a0
loc_2077bc:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2077c8:
	cmp.w -$8(a0),d6
	bgt.s loc_2077da
	tst.b -$4(a0)
	bpl.s loc_2077d6
	subq.b #$1,(a2)
loc_2077d6:
	subq.w #$8,a0
	bra.s loc_2077c8
loc_2077da:
	move.l a0,($f770).w
	rts
loc_2077e0:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2077f4:
	cmp.w (a0),d6
	bls.s loc_207816
	tst.b $4(a0)
	bpl.s loc_207802
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207802:
	bsr.w sub_20785e
	beq.s loc_2077f4
	tst.b $4(a0)
	bpl.s loc_207816
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207816:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207836
loc_207824:
	cmp.w (a0),d6
	bls.s loc_207836
	tst.b $4(a0)
	bpl.s loc_207832
	addq.b #$1,$1(a2)
loc_207832:
	addq.w #$8,a0
	bra.s loc_207824
loc_207836:
	move.l a0,($f774).w
loc_20783a:
	rts

sub_20783c:
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

sub_20785e:
	bsr.s sub_20783c
	beq.s loc_207870
	tst.b $4(a0)
	bpl.s loc_207876
	bset.b #$7,$2(a2,d3.w)

sub_20786e:
	beq.s loc_207876
loc_207870:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207876:
	bsr.w sub_2078c6
	bne.s loc_2078c4
	move.w (a0)+,$8(a1)
	move.w (a0)+,d0
	move.w d0,d1

sub_207884:
	andi.w #$fff,d0
	move.w d0,$c(a1)
	rol.w #$2,d1
	andi.b #$3,d1
	move.b d1,$1(a1)
	move.b d1,$22(a1)
	move.b (a0)+,d0
	bpl.s loc_2078a6
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2078a6:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2078b8
	nop
	nop
	nop
	nop
loc_2078b8:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2078c4:
	rts

sub_2078c6:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2078ce:
	tst.b (a1)
	beq.s loc_2078da
	lea $40(a1),a1
	dbf d0,loc_2078ce
loc_2078da:
	rts

sub_2078dc:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078fa
loc_2078ee:
	tst.b (a1)
	beq.s loc_2078fa
	lea $40(a1),a1
	dbf d0,loc_2078ee
loc_2078fa:
	rts
loc_2078fc:
	move.w $8(a0),d0
	tst.b $1(a0)
	bmi.s loc_20796a
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20796a
loc_20791e:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207960
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207958
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207950
	moveq #$0,d1
	bra.s loc_207958
loc_207950:
	cmpi.w #$3,d1
	bcs.s loc_207958
	moveq #$2,d1
loc_207958:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207960:
	jsr (sub_203b3e).l
	moveq #$1,d0
	rts
loc_20796a:
	btst.b #$7,($ff152e).l
	bne.s loc_20791e
	moveq #$0,d0
	rts
dat_207978:
	.incbin 31096, 282

sub_207a92:
	btst.b #$3,$22(a0)
	beq.s loc_207b02
	btst.b #$3,$22(a1)
	beq.s loc_207b02
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207b02
	tst.b $2a(a1)
	beq.s loc_207ac4
	move.w #$ab,d0
	jsr (sub_2025aa).l
loc_207ac4:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207af0
	cmpi.b #$17,$1c(a1)
	beq.s loc_207af0
	bclr.b #$0,$2c(a1)
loc_207af0:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207b02
	bclr.b #$1,$22(a1)
loc_207b02:
	rts

sub_207b04:
	cmpi.b #$4,$24(a1)
	bne.s loc_207b16
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207b16:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207b76
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207b38
	bclr.b #$3,$22(a0)
	bra.w sub_207a92
loc_207b38:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207b76
	tst.b ($ff195b).l
	beq.s loc_207b60
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207b70
loc_207b60:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207b70:
	move.b #$0,$1c(a1)
loc_207b76:
	bset.b #$3,$22(a1)
	beq.s loc_207b98
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207bd0
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207b98:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207bc4
	cmpi.b #$2,$24(a0)
	beq.s loc_207bca
loc_207bc4:
	move.w $10(a1),$14(a1)
loc_207bca:
	bclr.b #$1,$22(a1)
loc_207bd0:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_207be0:
	cmpi.b #$17,$1c(a1)
	beq.w loc_207e94
	btst.b #$6,$2c(a1)
	bne.w loc_207e94
	cmpi.b #$6,$24(a1)
	bcc.w loc_207e94
	tst.b $0(a1)
	beq.w loc_207e94
	tst.b $1(a0)
	bpl.w loc_207e94
	tst.b ($ff1906).l
	bne.w loc_207e94
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_207e94
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_207e94
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207c4e
	btst.b #$3,$22(a0)
	bne.s loc_207c60
	bra.w loc_207e94
loc_207c4e:
	cmpi.b #$1,$25(a0)
	bne.s loc_207c60
	tst.w $12(a1)
	beq.s loc_207c60
	bmi.w loc_207e94
loc_207c60:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_207e94
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_207e94
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207c96
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207c96:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207ca4
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207ca4:
	cmp.w d4,d5
	bcs.w loc_207d38
	cmpi.b #$1,$25(a0)
	beq.w loc_207e94
	cmpi.b #$a,$0(a0)
	bne.s loc_207cc6
	btst.b #$1,$22(a1)
	bne.w loc_207e94
loc_207cc6:
	cmpi.b #$4,d5
	bls.w loc_207e94
	bsr.w sub_207ee4
	move.l d0,-(a7)
	bsr.w sub_207a92
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207cf0
	tst.w $10(a1)
	beq.s loc_207d20
	bpl.s loc_207cf8
	bra.s loc_207d20
loc_207cf0:
	tst.w $10(a1)
	beq.s loc_207d20
	bpl.s loc_207d20
loc_207cf8:
	bsr.w sub_207ea4
	btst.b #$1,$22(a1)
	bne.s loc_207d16
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207d16:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207d20:
	bsr.w sub_207f5a
	bsr.w sub_207ea4
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207d38:
	cmpi.b #$19,$0(a0)
	bne.s loc_207d4a
	btst.b #$2,$22(a1)
	bne.w loc_207e94
loc_207d4a:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207d60
	bmi.w loc_207e30
loc_207d60:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207d72
	tst.w $12(a1)
	beq.s loc_207d72
	bmi.w loc_207e94
loc_207d72:
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
	beq.s loc_207dbe
	bpl.s loc_207d9e
	neg.b d0
loc_207d9e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c68).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207dbe
	tst.w $10(a0)
	bpl.s loc_207dba
	neg.w d1
loc_207dba:
	add.w d1,$8(a1)
loc_207dbe:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_207e28
	tst.w $12(a0)
	bmi.s loc_207dfc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206cfa).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207dfc
	add.w d1,$c(a1)
	bra.w loc_207e94
loc_207dfc:
	tst.w $12(a0)
	bpl.s loc_207e28
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f12).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207e28
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d6).l
	movem.l (a7)+,a0-a1
	bra.s loc_207e94
loc_207e28:
	bsr.w sub_207b04
	moveq #$1,d0
	rts
loc_207e30:
	cmpi.b #$1,$25(a0)
	beq.s loc_207e94
	cmpi.b #$9,$0(a0)
	beq.s loc_207e94
	cmpi.b #$a,$0(a0)
	bne.s loc_207e5a
	cmpi.b #$2,$25(a0)
	beq.s loc_207e7a
	btst.b #$1,$1(a0)
	bne.s loc_207e7a
	bra.s loc_207e94
loc_207e5a:
	btst.b #$1,$22(a1)
	bne.s loc_207e7a
	tst.w $12(a0)
	beq.s loc_207e7a
	bmi.s loc_207e7a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d6).l
	movem.l (a7)+,a0-a1
loc_207e7a:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_207f5a
	bsr.w sub_207a92
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_207e94:
	bsr.w sub_207f5a
	bsr.w sub_207a92
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_207ea4:
	tst.w $10(a0)
	beq.s loc_207ee2
	cmpi.b #$a,$0(a0)
	beq.s loc_207ee2
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_207ebe
	neg.b d0
loc_207ebe:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c68).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207ee2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d6).l
	movem.l (a7)+,a0-a1
loc_207ee2:
	rts

sub_207ee4:
	cmpi.b #$a,$0(a0)
	bne.s loc_207ef4
	move.b #$0,$20(a1)
	rts
loc_207ef4:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207f48
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_207f58
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_207f16
	tst.w $10(a2)
	beq.s loc_207f58
loc_207f16:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_207f28
	cmp.w $8(a2),d1
	bcs.s loc_207f58
	bra.s loc_207f2e
loc_207f28:
	cmp.w $8(a2),d1
	bcc.s loc_207f58
loc_207f2e:
	cmpi.b #$15,$0(a0)
	beq.s loc_207f58
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d6).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_207f48:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_207f58:
	rts

sub_207f5a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207f74
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_207f74
	move.b #$0,$20(a1)
loc_207f74:
	rts
	.incbin 32630, 374
loc_2080ec:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2080fa(pc,d0.w),d0
	jmp dat_2080fa(pc,d0.w)
dat_2080fa:
	.incbin 33018, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2080ec
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208150
	tst.b $1(a0)
	bpl.s loc_208158
loc_208150:
	move.w dat_2081aa(pc,d0.w),d1
	jsr dat_2081aa(pc,d1.w)
loc_208158:
	bsr.w sub_203a92
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20818a
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20818a:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b3e
	rts
dat_2081aa:
	.incbin 33194, 26
	addq.b #$2,$24(a0)
	move.l #$20852c,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20821a
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$208532,$4(a0)
	bra.s loc_20825c
loc_20821a:
	btst.l #$3,d0
	beq.s loc_208248
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20857c,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20b128).l
	move.l (a7)+,d0
	bra.s loc_20825c
loc_208248:
	btst.b #$1,$1(a0)
	beq.s loc_20825c
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20825c:
	btst.l #$1,d0
	beq.s loc_208268
	bset.b #$5,$2(a0)
loc_208268:
	andi.w #$2,d0
	move.w dat_208274(pc,d0.w),$30(a0)
	rts
dat_208274:
	dc.b $f0,$00,$f6,$00

sub_208278:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207be0).l
	tst.b $1(a0)
	bpl.s loc_208294
	lea ($d000).w,a1
	bsr.s sub_208278
	bne.s loc_208296
loc_208294:
	rts
loc_208296:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2025aa).l
	lea (dat_20851e).l,a1
	bra.w sub_205cec
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 33514, 564
dat_20851e:
	.incbin 34078, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208618(pc,d0.w),d1
	jmp dat_208618(pc,d1.w)
dat_208618:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_208622:
	.incbin 34338, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20867a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208672
	moveq #$0,d1
	bra.s loc_20867a
loc_208672:
	cmpi.w #$3,d1
	bcs.s loc_20867a
	moveq #$2,d1
loc_20867a:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_208696
	moveq #$6,d1
loc_208696:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_208622).l,a1
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
	beq.s loc_2086e6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2086de
	moveq #$0,d0
	bra.s loc_2086e6
loc_2086de:
	cmpi.w #$3,d0
	bcs.s loc_2086e6
	moveq #$2,d0
loc_2086e6:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2087b4
	dbf d0,loc_2086e6
	bclr.b #$7,(a2)
	bra.s loc_20873c
loc_2086f8:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208724
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20871c
	moveq #$0,d0
	bra.s loc_208724
loc_20871c:
	cmpi.w #$3,d0
	bcs.s loc_208724
	moveq #$2,d0
loc_208724:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2087b4
	dbf d0,loc_208724
	bclr.b #$7,(a2)
	bsr.w sub_2078dc
	bne.w loc_2087c0
loc_20873c:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208a86,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208792
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208792
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208792:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2087b4:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2086f8
loc_2087c0:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2087e6
	move.b ($f784).w,d2

sub_2087d2:
	ext.w d2
	neg.w d2
	add.w d2,d0

sub_2087d8:
	bpl.s loc_2087de
	moveq #$0,d0
	bra.s loc_2087e6
loc_2087de:
	cmpi.w #$3,d0
	bcs.s loc_2087e6
	moveq #$2,d0
loc_2087e6:
	lea $1(a2),a3
loc_2087ea:
	btst.b #$0,-(a3)
	bne.w sub_203b3e
	dbf d0,loc_2087ea
	tst.b $1(a0)
	bmi.s loc_20881a
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208894
loc_20881a:
	tst.w ($ff190e).l
	bne.s loc_20882a
	move.b ($ff1913).l,$1a(a0)
loc_20882a:
	bra.w sub_203a92
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208898
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20887a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208872
	moveq #$0,d1
	bra.s loc_20887a
loc_208872:
	cmpi.w #$3,d1
	bcs.s loc_20887a
	moveq #$2,d1
loc_20887a:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208a7e).l,a1
	bsr.w sub_205cec
	bra.w sub_203a92
loc_208894:
	bra.w sub_203b3e

sub_208898:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2088e8
	bset.b #$1,($ff150d).l
	beq.s loc_2088d2
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2088e8
	bset.b #$2,($ff150d).l
	bne.s loc_2088e8
loc_2088d2:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cac).l
loc_2088e8:
	jmp (sub_2025aa).l
	.incbin 35054, 400
dat_208a7e:
	.incbin 35454, 402
loc_208c10:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208c3e(pc,d0.w),d0
	jsr dat_208c3e(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208c3c
	cmpi.w #$5a,($f786).w
	bcs.s loc_208c36
	btst.b #$0,($ff1505).l
	bne.s loc_208c3c
loc_208c36:
	jmp (sub_203a92).l
loc_208c3c:
	rts
dat_208c3e:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$209218,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208c72
	move.b #$13,$1a(a0)
loc_208c72:
	rts
loc_208c74:
	tst.b ($ff0f01).l
	beq.s loc_208c82
	jmp (sub_203b3e).l
loc_208c82:
	cmpi.b #$a,$28(a0)
	beq.w loc_208c10
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208ca6(pc,d0.w),d0
	jsr dat_208ca6(pc,d0.w)
	jsr (sub_203a92).l
	jmp (loc_2078fc).l
dat_208ca6:
	.incbin 36006, 38
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208cf4
	tst.b $29(a0)
	bne.s loc_208cf4
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_208cf4:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_208dc0
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_208d1c
	addq.b #$2,$1a(a0)
loc_208d1c:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208d30
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_208d30:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_208d96
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208d62
	tst.b $29(a0)
	beq.s loc_208d5a
	tst.b ($ff1956).l
	beq.s loc_208d96
	bra.s loc_208d62
loc_208d5a:
	tst.b ($ff1956).l
	bne.s loc_208d96
loc_208d62:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_208dc0
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_208d90
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_208d90:
	jsr (sub_205cac).l
loc_208d96:
	rts
	.incbin 36248, 40

sub_208dc0:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208df8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208df0
	moveq #$0,d1
	bra.s loc_208df8
loc_208df0:
	cmpi.w #$3,d1
	bcs.s loc_208df8
	moveq #$2,d1
loc_208df8:
	add.w d1,d0
	rts

sub_208dfc:
	cmpi.b #$6,($ff1506).l
	bne.s loc_208e1e
	tst.b ($ff1956).l
	beq.s loc_208e16
	tst.b $29(a0)
	bne.s loc_208e1e
	rts
loc_208e16:
	tst.b $29(a0)
	beq.s loc_208e1e
	rts
loc_208e1e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207be0).l
	tst.b $28(a0)
	bne.s loc_208e40
	tst.b ($ff0f01).l
	beq.s loc_208e40
	jmp (loc_2078fc).l
loc_208e40:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208c74
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208e58(pc,d0.w),d1
	jmp dat_208e58(pc,d1.w)
dat_208e58:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209218,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208ea2
	tst.b $29(a0)
	bne.s loc_208ea2
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_208ea2:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_208dc0
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208ece
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_208ece:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_208f28
	move.b $25(a0),d0
	beq.s loc_208f08
	bsr.w sub_2039da
	jsr (sub_206da8).l
	tst.w d1
	bpl.w loc_208f16
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_208f16
loc_208f08:
	tst.b $1(a0)
	bpl.s loc_208f16
	lea ($d000).w,a1
	bsr.w sub_208dfc
loc_208f16:
	tst.w ($ff190e).l
	bne.s loc_208f28
	lea (dat_209190).l,a1
	bsr.w sub_205cec
loc_208f28:
	bsr.w sub_203a92
	jmp (loc_2078fc).l
	move.w #$96,d0
	jsr (sub_2025aa).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_2078c6
	bne.s loc_208f6a
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_208f6a:
	bsr.w sub_2078c6
	bne.s loc_208f94
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_208f94:
	bsr.w sub_208dc0
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203a92
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208fba(pc,d0.w),d1
	jsr dat_208fba(pc,d1.w)
	bra.w sub_203a92
dat_208fba:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_208fd6
	andi.b #$7f,$2(a0)
loc_208fd6:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$209218,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20901e
	bsr.w sub_203a3c
	addi.w #$18,$12(a0)
	rts
loc_20901e:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_209044
loc_20902e:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cac).l
loc_209044:
	cmpi.b #$1,d0
	bne.s loc_209090
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209086
	bset.b #$1,($ff150d).l
	beq.w loc_20902e
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209086
	bset.b #$2,($ff150d).l
	beq.w loc_20902e
loc_209086:
	move.w #$95,d0
	jmp (sub_2025aa).l
loc_209090:
	cmpi.b #$2,d0
	bne.s loc_2090ae

sub_209096:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_2025aa).l
loc_2090ae:
	cmpi.b #$3,d0
	bne.s loc_209110

sub_2090b4:
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
	bne.s loc_209104
	move.w #$82,d0
	jsr (sub_205cac).l
loc_209104:
	move.w #$6d,d0
	jmp (sub_205cac).l
	dc.b $4e,$75
loc_209110:
	cmpi.b #$4,d0
	bne.s loc_209152
loc_209116:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_209148
	move.w #$82,d0
	jsr (sub_205cac).l
loc_209148:
	move.w #$6c,d0
	jmp (sub_205cac).l
loc_209152:
	cmpi.b #$5,d0
	bne.s loc_209162
	move.w #$12c,($ff190e).l
	rts
loc_209162:
	cmpi.b #$6,d0
	bne.s loc_20917c
	move.w #$9d,d0
	jsr (sub_2025aa).l
	move.b #$1,($ff156f).l
	rts
loc_20917c:
	bsr.w sub_209096
	bsr.w sub_2090b4
	bra.s loc_209116
	subq.w #$1,$1e(a0)
	bmi.w sub_203b3e
	rts
dat_209190:
	.incbin 37264, 586
loc_2093da:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2093ee(pc,d0.w),d0
	jsr dat_2093ee(pc,d0.w)
	jmp (sub_203a92).l
dat_2093ee:
	.incbin 37870, 146
	tst.b $28(a0)
	bmi.w loc_2093da
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209496(pc,d0.w),d0
	jmp dat_209496(pc,d0.w)
dat_209496:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$209530,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_2094c6
	move.b #$3,$1a(a0)
	bra.s loc_2094e6
loc_2094c6:
	tst.w ($ff1588).l
	beq.s loc_2094d4
	move.b #$2,$1a(a0)
loc_2094d4:
	tst.b $28(a0)
	beq.s loc_2094e6
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_2094e6:
	tst.b $28(a0)
	bne.s loc_20952a
	tst.b $29(a0)
	beq.s loc_209516
	tst.w ($ff1512).l
	beq.s loc_209502
	bclr.b #$5,$2(a0)
	bra.s loc_20952a
loc_209502:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20952a
	eori.b #$20,$2(a0)
	bra.s loc_20952a
loc_209516:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20952a
	move.b #$2,$1a(a0)
loc_20952a:
	jmp (sub_203a92).l
	.incbin 38192, 168

sub_2095d8:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_2095f4
	move.l d1,(a3)
loc_2095f4:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20961e
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cac).l
loc_20961e:
	rts
loc_209620:
	tst.w ($ff1588).l
	beq.s loc_209676
	bsr.w sub_209872
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
	lea (dat_2099d2).l,a2
	moveq #$2,d6
	bsr.w sub_209a2a
	bra.w loc_2096d0
loc_209676:
	tst.b ($ff1511).l
	beq.s loc_20969a
	bpl.s loc_209684
	bsr.w sub_20981c
loc_209684:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20990c
loc_20969a:
	tst.b ($ff150f).l
	beq.s loc_2096d0
	bpl.s loc_2096a8
	bsr.w sub_209808
loc_2096a8:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_2096cc
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_2096cc:
	bsr.w sub_209902
loc_2096d0:
	tst.w ($ff1588).l
	bne.w loc_20977c
	tst.b ($ff1510).l
	beq.w loc_20977c
	tst.w ($f63a).w
	bne.w loc_20977c
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_2097da
	tst.b ($f7cc).w
	bne.s loc_209726
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209726
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209726
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_209726
	move.b #$9,(a1)
loc_209726:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209a18
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209a22
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_209778
	move.w #$63,d1
loc_209778:
	bsr.w sub_209a22
loc_20977c:
	tst.b ($ff150e).l
	beq.s loc_20978e
	clr.b ($ff150e).l
	bsr.w sub_2099f8
loc_20978e:
	tst.b ($f7d6).w
	beq.s loc_2097d8
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_2097ae
	move.l #$6d400001,d0
loc_2097ae:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209890
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_2097ce
	move.l #$6e800001,d0
loc_2097ce:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209890
loc_2097d8:
	rts
loc_2097da:
	btst.b #$7,($ff152e).l
	bne.s loc_209806
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2072d6
	move.b #$1,($ff150c).l
loc_209806:
	rts

sub_209808:
	move.l #$73600002,($c00004).l
	lea dat_20986e(pc),a2
	move.w #$2,d2
	bra.s loc_209838

sub_20981c:
	lea ($c00000).l,a6
	bsr.w sub_2099f8
	move.l #$70600002,($c00004).l
	lea dat_209866(pc),a2
	move.w #$6,d2
loc_209838:
	lea (dat_238442).l,a1
loc_20983e:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20985a
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20984e:
	move.l (a3)+,(a6)
	dbf d1,loc_20984e
loc_209854:
	dbf d2,loc_20983e
	rts
loc_20985a:
	move.l #$0,(a6)
	dbf d1,loc_20985a
	bra.s loc_209854
dat_209866:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20986e:
	dc.b $ff,$ff,$00,$00

sub_209872:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_2099ee
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_2099ee

sub_209890:
	lea (dat_2099ca).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_2098a0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2098a4:
	sub.l d3,d1
	bcs.s loc_2098ac
	addq.w #$1,d2
	bra.s loc_2098a4
loc_2098ac:
	add.l d3,d1
	tst.w d2
	beq.s loc_2098b6
	move.w #$1,d4
loc_2098b6:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_2098c2
	tst.w d6
	bne.s loc_2098f4
loc_2098c2:
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
loc_2098e8:
	addi.l #$400000,d0
	dbf d6,loc_2098a0
	rts
loc_2098f4:
	moveq #$f,d5
loc_2098f6:
	move.l #$0,(a6)
	dbf d5,loc_2098f6
	bra.s loc_2098e8

sub_209902:
	lea (dat_2099d2).l,a2
	moveq #$2,d6
	bra.s loc_209914

sub_20990c:
	lea (dat_2099c6).l,a2
	moveq #$5,d6
loc_209914:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20991c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209920:
	sub.l d3,d1
	bcs.s loc_209928
	addq.w #$1,d2
	bra.s loc_209920
loc_209928:
	add.l d3,d1
	tst.w d2
	beq.s loc_209932
	move.w #$1,d4
loc_209932:
	tst.w d4
	beq.s loc_209960
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
loc_209960:
	addi.l #$400000,d0
	dbf d6,loc_20991c
	rts
	.incbin 39276, 90
dat_2099c6:
	dc.b $00,$01,$86,$a0
dat_2099ca:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_2099d2:
	dc.b $00,$00,$00,$64
dat_2099d6:
	dc.b $00,$00,$00,$0a
dat_2099da:
	dc.b $00,$00,$00,$01
dat_2099de:
	.incbin 39390, 16

sub_2099ee:
	moveq #$3,d6
	lea (dat_2099de).l,a2
	bra.s sub_209a2a

sub_2099f8:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209a0e
	moveq #$9,d1
loc_209a0e:
	lea (dat_2099da).l,a2
	moveq #$0,d6
	bra.s sub_209a2a

sub_209a18:
	lea (dat_2099da).l,a2
	moveq #$0,d6
	bra.s sub_209a2a

sub_209a22:
	lea (dat_2099d6).l,a2
	moveq #$1,d6

sub_209a2a:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_209a32:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209a36:
	sub.l d3,d1
	bcs.s loc_209a3e
	addq.w #$1,d2
	bra.s loc_209a36
loc_209a3e:
	add.l d3,d1
	tst.w d2
	beq.s loc_209a48
	move.w #$1,d4
loc_209a48:
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
	dbf d6,loc_209a32
	rts
	.incbin 39550, 1482
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a066(pc,d0.w),d0
	jsr dat_20a066(pc,d0.w)
	cmpi.b #$4,$24(a0)
	beq.s loc_20a064
	jmp (sub_203a92).l
loc_20a064:
	rts
dat_20a066:
	.incbin 41062, 2220
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a920(pc,d0.w),d0
	jmp dat_20a920(pc,d0.w)
dat_20a920:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20b01e,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20afde).l,a2
loc_20a96e:
	jsr (sub_2078c6).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20b01e,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20a9c0
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20a9c0:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20a96e
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20a9e8
	bge.s loc_20a9de
	neg.w d0
loc_20a9de:
	add.w d0,$a(a0)
	jmp (sub_203a92).l
loc_20a9e8:
	addq.b #$4,$24(a0)
	jmp (sub_203a92).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20aa0c
	bge.s loc_20aa02
	neg.w d0
loc_20aa02:
	add.w d0,$8(a0)
	jmp (sub_203a92).l
loc_20aa0c:
	addq.b #$4,$24(a0)
	jmp (sub_203a92).l
	tst.b $1e(a0)
	beq.s loc_20aa26
	subq.b #$1,$1e(a0)
	jmp (sub_203a92).l
loc_20aa26:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20aa40
	bge.s loc_20aa36
	neg.w d0
loc_20aa36:
	add.w d0,$a(a0)
	jmp (sub_203a92).l
loc_20aa40:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202774).l
	tst.b $1e(a0)
	beq.s loc_20aa62
	subq.b #$1,$1e(a0)
	jmp (sub_203a92).l
loc_20aa62:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20aa7c
	bge.s loc_20aa72
	neg.w d0
loc_20aa72:
	add.w d0,$8(a0)
	jmp (sub_203a92).l
loc_20aa7c:
	jmp (sub_203b3e).l
	tst.l ($f680).w
	bne.s loc_20aa96
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b3e).l
loc_20aa96:
	rts
	.incbin 43672, 1350
dat_20afde:
	.incbin 45022, 320
dat_20b11e:
	dc.b $ff,$ff,$70,$02,$4e,$f9,$00,$20
	dc.b $27,$74

sub_20b128:
	rts
	.incbin 45354, 618
	jsr (sub_20d1dc).l
	tst.b $24(a0)
	bmi.w loc_20b468
	bne.w loc_20b4f8
	ori.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$c,$16(a0)
	lea dat_20b5d2(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20b3ee
	addi.w #$2000,$2(a0)
loc_20b3ee:
	lea dat_20b582(pc),a1
	btst.b #$0,$28(a0)
	beq.s loc_20b3fe
	lea dat_20b5aa(pc),a1
loc_20b3fe:
	move.l a1,$4(a0)
	move.w $c(a0),$2e(a0)
	move.b $28(a0),d0
	bpl.s loc_20b44c
	subq.b #$2,$24(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	move.w $8(a0),$38(a0)
	move.l #$200,$34(a0)
	btst.l #$0,d0
	beq.s loc_20b44a
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $34(a0)
	move.l #$3000,$30(a0)
loc_20b44a:
	rts
loc_20b44c:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.l #$10000,$2a(a0)
	move.l #$100,$34(a0)
	rts
loc_20b468:
	movea.w $3e(a0),a1
	cmpi.b #$52,$0(a1)
	bne.s loc_20b47a
	tst.b $3f(a1)
	beq.s loc_20b480
loc_20b47a:
	jmp (sub_203b3e).l
loc_20b480:
	move.b $32(a0),d0
	jsr (sub_200712).l
	swap d1
	swap d0
	asr.l #$3,d1
	asr.l #$4,d0
	addi.l #$8000,d1
	addi.l #$8000,d0
	swap d1
	swap d0
	add.w $38(a0),d1
	add.w $2e(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	move.l $34(a0),d0
	add.l d0,$30(a0)
	move.l $30(a0),d0
	andi.l #$7fff,d0
	bne.s loc_20b4e8
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	cmpi.b #$5,$18(a0)
	beq.s loc_20b4e2
	move.b #$5,$18(a0)
	bra.s loc_20b4e8
loc_20b4e2:
	move.b #$3,$18(a0)
loc_20b4e8:
	lea dat_20b55c(pc),a1
	jsr (sub_205cec).l
	jmp (sub_203a92).l
loc_20b4f8:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.b $32(a0),d0
	jsr (sub_200712).l
	swap d0
	asr.l #$3,d0
	addi.l #$8000,d0
	swap d0
	add.w $2e(a0),d0
	move.w d0,$c(a0)
	move.l $34(a0),d0
	add.l d0,$30(a0)
	bmi.s loc_20b532
	cmpi.l #$10000,$30(a0)
	blt.s loc_20b546
loc_20b532:
	neg.l $34(a0)
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20b546:
	lea dat_20b55c(pc),a1
	jsr (sub_205cec).l
	jsr (sub_203a92).l
	jmp (loc_2078fc).l
dat_20b55c:
	.incbin 46428, 38
dat_20b582:
	.incbin 46466, 40
dat_20b5aa:
	.incbin 46506, 40
dat_20b5d2:
	.incbin 46546, 22
	tst.b $24(a0)
	bne.s loc_20b62c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$446a,$2(a0)
	move.l #$20b650,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20b642(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20b62c:
	lea ($d000).w,a1
	jsr (sub_207be0).l
	jsr (sub_203a92).l
	jmp (loc_2078fc).l
dat_20b642:
	.incbin 46658, 126
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b6e4(pc,d0.w),d0
	jsr dat_20b6e4(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_207be0).l
	jsr (sub_203a92).l
	jmp (loc_20b7dc).l
dat_20b6e4:
	dc.b $00,$08,$00,$92,$00,$c8,$00,$dc
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$40,$17(a0)
	move.b #$40,$19(a0)
	move.b #$40,$16(a0)
	move.w #$446a,$2(a0)
	move.l #$20b810,$4(a0)
	moveq #$0,d0
	move.b $23(a0),d0
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	lea $2(a1,d0.w),a1
	move.l a1,$2c(a0)
	btst.b #$0,(a1)
	bne.s loc_20b75e
	move.w #$10,d0
	move.b $28(a0),d1
	beq.s loc_20b750
	addi.w #$10,d0
loc_20b750:
	move.w d0,$2a(a0)
	addq.b #$1,d1
	add.b d1,d1
	move.b d1,$24(a0)
	rts
loc_20b75e:
	move.w #$40,d0
	tst.b $28(a0)
	beq.s loc_20b76c
	addi.w #$40,d0
loc_20b76c:
	add.w d0,$c(a0)
	addq.b #$4,$24(a0)
	rts
	lea ($d000).w,a6
	bsr.s sub_20b788
	bcc.s loc_20b786
	st $3f(a0)
	addq.b #$2,$24(a0)
loc_20b786:
	rts

sub_20b788:
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$0,d0
	subi.w #$80,d0
	bcc.s loc_20b7aa
	move.w $8(a6),d0
	sub.w $8(a0),d0
	subi.w #$a0,d0
	subi.w #$20,d0
loc_20b7aa:
	rts
	tst.b $3f(a0)
	beq.s loc_20b7be
	movea.l $2c(a0),a1
	bset.b #$0,(a1)
	addq.b #$2,$24(a0)
loc_20b7be:
	rts
	addi.l #$40000,$c(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b7da
	sf $3f(a0)
	addi.b #$fe,$24(a0)
loc_20b7da:
	rts
loc_20b7dc:
	cmpi.b #$1,$28(a0)
	beq.s loc_20b80e
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20b80e
	movea.l $2c(a0),a1
	bclr.b #$7,(a1)
	jmp (sub_203b3e).l
loc_20b80e:
	rts
	.incbin 47120, 582
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ba94(pc,d0.w),d0
	jsr dat_20ba94(pc,d0.w)
	lea (dat_20c208).l,a1
	tst.b $2d(a0)
	beq.s loc_20ba88
	subq.b #$1,$2d(a0)
	addq.b #$3,$1c(a0)
	jsr (sub_205cec).l
	subq.b #$3,$1c(a0)
	jmp (sub_203a92).l
loc_20ba88:
	jsr (sub_205cec).l
	jmp (sub_203a92).l
dat_20ba94:
	dc.b $00,$0a,$00,$72,$06,$6a,$03,$52
	dc.b $05,$36
	move.b #$3d,$20(a0)
	move.b #$5,$21(a0)
	clr.b $22(a0)
	bset.b #$0,$22(a0)
	move.b #$8,$24(a0)
	move.b #$4,$1(a0)
	move.b #$6,$18(a0)
	move.b #$24,$19(a0)
	move.b #$38,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20c22c,$4(a0)
	move.l #$1c000,$3c(a0)
	move.l #$13c68,$10(a0)
	move.w #$5,d0
	movem.l d7/a0-a7,-(a7)
	jsr (sub_2004ac).l
	movem.l (a7)+,d7/a0-a7
	bra.w loc_20bfec
	move.w $38(a0),d0
	sub.w d0,$c(a0)
	bsr.w sub_20beea
	btst.b #$7,$25(a0)
	beq.s loc_20bb22
	lea (dat_20c0d4).l,a1
	bra.s loc_20bb38
loc_20bb22:
	btst.b #$6,$25(a0)
	beq.s loc_20bb32
	lea (dat_20c0e6).l,a1
	bra.s loc_20bb38
loc_20bb32:
	lea (dat_20c062).l,a1
loc_20bb38:
	moveq #$0,d0
	move.b $25(a0),d0
	andi.b #$3f,d0
	mulu.w #$6,d0
	adda.w d0,a1
	move.b $0(a1),d0
	cmpi.b #$0,d0
	beq.w loc_20bb90
	cmpi.b #$1,d0
	beq.w loc_20bbb8
	cmpi.b #$5,d0
	beq.w loc_20bbe0
	cmpi.b #$6,d0
	beq.w loc_20bc12
	cmpi.b #$7,d0
	beq.w loc_20bc5c
	cmpi.b #$2,d0
	beq.w loc_20bca6
	cmpi.b #$3,d0
	beq.w loc_20bcd8
	cmpi.b #$4,d0
	beq.w loc_20bd22
loc_20bb8c:
	bra.w loc_20bb8c
loc_20bb90:
	move.b #$1,$1c(a0)
	bclr.b #$0,$22(a0)
	move.l $3c(a0),d2
	add.l d2,$8(a0)
	move.w $2(a1),d0
	cmp.w $8(a0),d0
	bgt.w loc_20bec4
	move.w d0,$8(a0)
	bra.w loc_20bd6c
loc_20bbb8:
	move.b #$1,$1c(a0)
	bset.b #$0,$22(a0)
	move.l $3c(a0),d2
	sub.l d2,$8(a0)
	move.w $2(a1),d0
	cmp.w $8(a0),d0
	blt.w loc_20bec4
	move.w d0,$8(a0)
	bra.w loc_20bd6c
loc_20bbe0:
	move.b #$0,$1c(a0)
	move.l $3c(a0),d2
	add.l d2,$c(a0)
	move.w $4(a1),d0
	cmp.w $c(a0),d0
	bgt.w loc_20bee0
	cmpi.w #$880,d0
	beq.s loc_20bc08
	move.w d0,$c(a0)
	bra.w loc_20bd6c
loc_20bc08:
	move.w #$80,$c(a0)
	bra.w loc_20bd6c
loc_20bc12:
	move.b #$2,$1c(a0)
	bset.b #$0,$22(a0)
	moveq #$0,d1
	move.l $10(a0),d2
	add.l d2,$c(a0)
	move.w $4(a1),d0
	cmp.w $c(a0),d0
	bgt.w loc_20bc3a
	move.w d0,$c(a0)
	addq.l #$1,d1
loc_20bc3a:
	sub.l d2,$8(a0)
	move.w $2(a1),d0
	cmp.w $8(a0),d0
	blt.w loc_20bc50
	move.w d0,$8(a0)
	addq.l #$1,d1
loc_20bc50:
	cmpi.w #$2,d1
	beq.w loc_20bd6c
	bra.w loc_20bee0
loc_20bc5c:
	move.b #$2,$1c(a0)
	bclr.b #$0,$22(a0)
	moveq #$0,d1
	move.l $10(a0),d2
	add.l d2,$c(a0)
	move.w $4(a1),d0
	cmp.w $c(a0),d0
	bgt.w loc_20bc84
	move.w d0,$c(a0)
	addq.l #$1,d1
loc_20bc84:
	add.l d2,$8(a0)
	move.w $2(a1),d0
	cmp.w $8(a0),d0
	bgt.w loc_20bc9a
	move.w d0,$8(a0)
	addq.l #$1,d1
loc_20bc9a:
	cmpi.w #$2,d1
	beq.w loc_20bd6c
	bra.w loc_20bee0
loc_20bca6:
	move.b #$0,$1c(a0)
	move.l $3c(a0),d2
	sub.l d2,$c(a0)
	move.w $4(a1),d0
	cmp.w $c(a0),d0
	blt.w loc_20bee0
	cmpi.w #$ff40,d0
	beq.s loc_20bcce
	move.w d0,$c(a0)
	bra.w loc_20bd6c
loc_20bcce:
	move.w #$740,$c(a0)
	bra.w loc_20bd6c
loc_20bcd8:
	move.b #$2,$1c(a0)
	bset.b #$0,$22(a0)
	moveq #$0,d1
	move.l $3c(a0),d2
	sub.l d2,$c(a0)
	move.w $4(a1),d0
	cmp.w $c(a0),d0
	blt.w loc_20bd00
	move.w d0,$c(a0)
	addq.l #$1,d1
loc_20bd00:
	sub.l d2,$8(a0)
	move.w $2(a1),d0
	cmp.w $8(a0),d0
	blt.w loc_20bd16
	move.w d0,$8(a0)
	addq.l #$1,d1
loc_20bd16:
	cmpi.w #$2,d1
	beq.w loc_20bd6c
	bra.w loc_20bee0
loc_20bd22:
	moveq #$0,d1
	move.l $3c(a0),d2
	sub.l d2,$c(a0)
	move.w $4(a1),d0
	cmp.w $c(a0),d0
	blt.w loc_20bd3e
	move.w d0,$c(a0)
	addq.l #$1,d1
loc_20bd3e:
	add.l d2,$8(a0)
	move.w $2(a1),d0
	cmp.w $8(a0),d0
	bgt.w loc_20bd54
	move.w d0,$8(a0)
	addq.l #$1,d1
loc_20bd54:
	move.b #$2,$1c(a0)
	bclr.b #$0,$22(a0)
	cmpi.w #$2,d1
	beq.w loc_20bd6c
	bra.w loc_20bee0
loc_20bd6c:
	tst.b $1(a1)
	beq.s loc_20bdcc
	tst.b $21(a0)
	bne.w loc_20bdcc
	cmpi.b #$1,$1(a1)
	beq.s loc_20bda0
	cmpi.b #$2,$1(a1)
	beq.s loc_20bdb6
	move.l #$38000,$3c(a0)
	move.b #$4,$24(a0)
	move.b #$0,$1c(a0)
	rts
loc_20bda0:
	move.b #$80,$25(a0)
	movea.w $30(a0),a1
	movea.w $32(a1),a1
	move.b #$1,$3f(a1)
	rts
loc_20bdb6:
	move.b #$40,$25(a0)
	movea.w $30(a0),a1
	movea.w $34(a1),a1
	move.b #$1,$3f(a1)
	rts
loc_20bdcc:
	addq.b #$1,$25(a0)
	move.b $25(a0),d0
	andi.b #$3f,d0
	cmpi.b #$13,d0
	blt.s loc_20bde4
	andi.b #$c0,$25(a0)
loc_20bde4:
	rts
	.incbin 48614, 222
loc_20bec4:
	moveq #$0,d0
	addq.b #$2,$2f(a0)
	move.b $2f(a0),d0
	jsr (sub_200712).l
	asr.w #$5,d0
	move.w d0,$38(a0)
	add.w d0,$c(a0)
	rts
loc_20bee0:
	move.w $38(a0),d0
	add.w d0,$c(a0)
	rts

sub_20beea:
	tst.b $2c(a0)
	beq.s loc_20bf06
	subq.b #$1,$2c(a0)
	bne.s loc_20bf06
	move.l #$1c000,$3c(a0)
	move.l #$13c68,$10(a0)
loc_20bf06:
	tst.b $21(a0)
	beq.w loc_20bf7e
	tst.b $2b(a0)
	bne.s loc_20bf20
	tst.b $20(a0)
	beq.w loc_20bf32
	bra.w loc_20bf7e
loc_20bf20:
	subq.b #$1,$2b(a0)
	bne.w loc_20bf7e
	move.b #$3d,$20(a0)
	bra.w loc_20bf7e
loc_20bf32:
	move.w #$ac,d0
	jsr (sub_2025aa).l
	movea.w $30(a0),a1
	move.b #$28,$2a(a1)
	move.b #$46,$2c(a0)
	move.l #$48000,$3c(a0)
	move.l #$32c80,$10(a0)
	move.b #$10,$2d(a0)
	cmpi.b #$1,$21(a0)
	beq.s loc_20bf74
	move.b #$1e,$2b(a0)
	bra.w loc_20bf7e
loc_20bf74:
	move.b #$6,$24(a0)
	clr.b $21(a0)
loc_20bf7e:
	rts
	.incbin 49024, 74
	lea ($d000).w,a1
	cmpi.w #$478,$8(a1)
	blt.s loc_20bfea
	move.b #$2,$24(a0)
	move.b #$4,($f7aa).w
	move.l #$32c80,$10(a0)
loc_20bfea:
	rts
loc_20bfec:
	movea.l a0,a3
	jsr (sub_2078c6).l
	bne.w loc_20c012
	move.w a1,$30(a3)
	move.w a3,$30(a1)
	move.b #$4b,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20c012:
	rts

sub_20c014:
	jsr (sub_2078c6).l
	bne.w loc_20c060
	move.w a1,$32(a0)
	move.b #$47,$0(a1)
	move.b #$1,$28(a1)
	move.w #$760,$8(a1)
	move.w #$2c0,$c(a1)
	jsr (sub_2078c6).l
	bne.w loc_20c060
	move.w a1,$34(a0)
	move.b #$47,$0(a1)
	move.b #$1,$28(a1)
	move.w #$6c0,$8(a1)
	move.w #$460,$c(a1)
loc_20c060:
	rts
dat_20c062:
	.incbin 49250, 114
dat_20c0d4:
	.incbin 49364, 18
dat_20c0e6:
	.incbin 49382, 74
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c13e(pc,d0.w),d0
	jmp dat_20c13e(pc,d0.w)
dat_20c13e:
	dc.b $00,$06,$00,$34,$00,$88
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$6,$18(a0)
	move.b #$24,$19(a0)
	move.b #$38,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20c3a2,$4(a0)
	bsr.w sub_20c014
	tst.b $2a(a0)
	beq.s loc_20c19c
	subq.b #$1,$2a(a0)
	beq.s loc_20c186
	move.b #$1,$1c(a0)
	bra.s loc_20c19c
loc_20c186:
	move.b #$0,$1c(a0)
	clr.b $1a(a0)
	clr.b $1b(a0)
	clr.b $1e(a0)
	clr.b $1f(a0)
loc_20c19c:
	movea.w $30(a0),a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $22(a1),$22(a0)
	lea (dat_20c394).l,a1
	jsr (sub_205cec).l
	jsr (sub_203a92).l
	rts
	.incbin 49606, 66
dat_20c208:
	.incbin 49672, 396
dat_20c394:
	.incbin 50068, 2030

sub_20cb82:
	bge.s loc_20cb8e
	addi.l #$4000,$10(a0)
	bra.s loc_20cb96
loc_20cb8e:
	move.w #$30,$10(a0)
	addq.l #$1,d3
loc_20cb96:
	btst.b #$3,$2c(a1)
	beq.s loc_20cba6
	addi.w #$480,$34(a0)
	bra.s loc_20cbac
loc_20cba6:
	subi.w #$480,$34(a0)
loc_20cbac:
	movem.l d3,-(a7)
	bsr.w sub_20ce72
	movem.l (a7)+,d3
	cmpi.b #$2,$1b(a0)
	bne.s loc_20cbca
	move.b #$3,$1c(a0)
	clr.b $1b(a0)
loc_20cbca:
	cmpi.w #$2,d3
	bne.s loc_20cbea
	move.b #$8,$24(a0)
	bset.b #$1,$2c(a0)
	bne.s loc_20cbea
	move.b #$ff,$20(a0)
	move.b #$2,$21(a0)
loc_20cbea:
	lea (dat_20d12c).l,a1
	jsr (sub_205cec).l
	rts
	.incbin 52216, 634

sub_20ce72:
	move.b $34(a0),d0
	jsr (sub_200712).l
	moveq #$0,d3
	moveq #$0,d2
	move.w $3c(a0),d3
	move.w $10(a0),d2
	muls.w d0,d2
	muls.w d1,d3
	asr.w #$8,d2
	asr.w #$8,d3
	move.w d3,$38(a0)
	move.w d2,$3a(a0)
	add.w d3,$8(a0)
	add.w d2,$c(a0)
	rts
	.incbin 52898, 650
dat_20d12c:
	.incbin 53548, 176

sub_20d1dc:
	tst.b $28(a0)
	bmi.s loc_20d20c
	cmpi.b #$2,($ff152e).l
	bge.s loc_20d1fc
	tst.b ($ff156d).l
	bne.s loc_20d20c
	addq.l #$4,a7
	jmp (loc_2078fc).l
loc_20d1fc:
	tst.b ($ff156a).l
	bne.s loc_20d20c
	addq.l #$4,a7
	jmp (sub_203b3e).l
loc_20d20c:
	rts

sub_20d20e:
	jmp (loc_206798).l
dat_20d214:
	.incbin 53780, 16
dat_20d224:
	.incbin 53796, 188
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20ccec,$4(a0)
	move.b #$40,$19(a0)
	move.b #$10,$16(a0)
	tst.b $3c(a0)
	bne.w loc_20d382
	move.w $8(a0),$36(a0)
	jsr (sub_20786e).l
	bne.s loc_20d344
	move.b #$24,$0(a1)
	move.b #$4,$28(a1)
	move.b #$8,$3d(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),d0
	subi.w #$60,d0
	move.w d0,$c(a1)
loc_20d344:
	jsr (sub_20786e).l
	bne.s loc_20d382
	move.b #$24,$0(a1)
	move.b #$8,$28(a1)
	move.b #$1,$3c(a1)
	move.w $36(a0),$36(a1)
	move.w $36(a0),d0
	subi.w #$80,d0
	move.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	move.w $36(a0),d0
	addi.w #$80,d0
	move.w d0,$8(a0)
loc_20d382:
	move.w #$200,$10(a0)
	rts
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	bsr.w sub_20cb82
	move.w $8(a0),d0
	sub.w $36(a0),d0
	bcs.s loc_20d3ac
	cmpi.w #$100,d0
	bne.s loc_20d3ac
	bsr.s sub_20d3ae
loc_20d3ac:
	rts

sub_20d3ae:
	move.w $36(a0),d1
	subi.w #$100,d1
	move.w d1,$8(a0)
	rts
	tst.b $24(a0)
	bne.w loc_20d406
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$50a,$2(a0)
	move.l #$20d522,$4(a0)
	move.b #$a,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20d406:
	move.w $34(a0),d0
	beq.s loc_20d436
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
loc_20d436:
	move.b $3f(a0),$3e(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_2087d8).l
	beq.s loc_20d454
	bsr.w sub_20d506
loc_20d454:
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20d464
	bclr.b #$7,(a4)
	bra.s loc_20d470
loc_20d464:
	bsr.w sub_20d506
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20d470:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20d4aa
	tst.b $1(a0)
	bpl.s loc_20d488
	move.w #$bf,d0
	jsr (sub_202598).l
loc_20d488:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20d49c
	addq.b #$4,$39(a0)
	bra.s loc_20d4a0
loc_20d49c:
	addq.w #$4,$c(a0)
loc_20d4a0:
	move.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20d4aa:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20d4ce
	subq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20d4c2
	subq.b #$4,$39(a0)
	bra.s loc_20d4c6
loc_20d4c2:
	subq.w #$4,$c(a0)
loc_20d4c6:
	clr.b $1a(a0)
	addq.b #$4,$16(a0)
loc_20d4ce:
	jsr ($203aa6).l
	move.w $34(a0),d0
	bne.s loc_20d4e0
	jmp ($2078a4).l
loc_20d4e0:
	movea.w d0,a1
	move.w $36(a1),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20d500
	rts
loc_20d500:
	jmp (sub_2078c6).l

sub_20d506:
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
	.incbin 54562, 976
	jsr (sub_20fd2c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d916(pc,d0.w),d0
	jsr dat_20d916(pc,d0.w)
	jsr ($203aa6).l
	move.w $3e(a0),d0
	jmp ($2078a8).l
dat_20d916:
	dc.b $00,$04,$00,$7e
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$2c,$20(a0)
	move.b #$1,$18(a0)
	move.b #$1c,$17(a0)
	move.b #$1c,$19(a0)
	move.b #$10,$16(a0)
	move.w #$2416,$2(a0)
	move.w $8(a0),$3e(a0)
	move.l $c(a0),$2a(a0)
	lea dat_20d9f0(pc),a1
	move.l #$ffff0000,d0
	move.w #$4,d1
	move.w #$100,d2
	tst.b $28(a0)
	beq.s loc_20d97e
	lea dat_20daae(pc),a1
	move.l #$ffff8000,d0
	move.w #$1,d1
	move.w #$200,d2
loc_20d97e:
	move.l a1,$4(a0)
	move.l d0,$30(a0)
	move.w d1,$34(a0)
	move.w d2,$38(a0)
	lsr.w #$1,d2
	move.w d2,$36(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $2e(a0),d0
	jsr ($200700).l
	swap d0
	clr.w d0
	asr.l #$4,d0
	add.l $2a(a0),d0
	move.l d0,$c(a0)
	move.w $34(a0),d0
	add.w d0,$2e(a0)
	addi.w #$ffff,$36(a0)
	bne.s loc_20d9da
	move.w $38(a0),$36(a0)
	neg.l $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20d9da:
	lea dat_20d9e4(pc),a1
	jmp ($205d00).l
dat_20d9e4:
	dc.b $00,$04,$00,$08,$02,$00,$01,$ff
	dc.b $04,$00,$02,$ff
dat_20d9f0:
	.incbin 55792, 190
dat_20daae:
	.incbin 55982, 994
	tst.b $28(a0)
	bpl.s loc_20de9a
	bra.w loc_20e228
loc_20de9a:
	jsr (sub_20fd2c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20deba(pc,d0.w),d0
	jsr dat_20deba(pc,d0.w)
	jsr ($203aa6).l
	jmp ($2078a4).l
dat_20deba:
	dc.b $00,$0a,$01,$46,$02,$38,$02,$de
	dc.b $03,$0e
	move.w $8(a0),$38(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$23d0,$2(a0)
	move.b #$14,$17(a0)
	move.b #$14,$19(a0)
	move.b #$8,$16(a0)
	move.b #$2d,$20(a0)
	addq.b #$2,$24(a0)
	move.l #$20e1f4,$4(a0)
	move.l #$ffff0000,$2c(a0)
	move.w #$c8,$36(a0)
	tst.b $28(a0)
	beq.s loc_20df2c
	move.l #$20e20e,$4(a0)
	move.l #$ffff8000,$2c(a0)
	move.w #$190,$36(a0)
	rts
loc_20df2c:
	jsr (sub_20786e).l
	bne.w loc_20e2a0
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $23(a0),$3d(a1)
	move.w a0,$3e(a1)
	move.w a1,$30(a0)
	jsr (sub_20786e).l
	bne.w loc_20e2a0
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $23(a0),$3d(a1)
	move.w a0,$3e(a1)
	move.w a1,$32(a0)
	jsr (sub_20786e).l
	bne.w loc_20e2a0
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $23(a0),$3d(a1)
	move.w a0,$3e(a1)
	move.w a1,$34(a0)
	movea.w $30(a0),a6
	bsr.s sub_20dfce
	addq.w #$2,$8(a6)
	addi.w #$fff6,$c(a6)
	movea.w $32(a0),a6
	bsr.s sub_20dfce
	addi.w #$fffd,$8(a6)
	addi.w #$fff6,$c(a6)
	movea.w $34(a0),a6
	bsr.s sub_20dfce
	addi.w #$fff9,$8(a6)
	addi.w #$fff7,$c(a6)
	rts

sub_20dfce:
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	ori.b #$4,$1(a6)
	move.w #$23d0,$2(a6)
	move.b #$3,$18(a6)
	move.b #$2,$17(a6)
	move.b #$2,$19(a6)
	move.b #$2,$16(a6)
	rts
	tst.b $28(a0)
	bne.s loc_20e012
	lea ($d000).w,a6
	bsr.w sub_20e0b8
	bcs.w loc_20e0e6
loc_20e012:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	tst.b $28(a0)
	bne.s loc_20e038
	movea.w $30(a0),a1
	add.l d0,$8(a1)
	movea.w $32(a0),a1
	add.l d0,$8(a1)
	movea.w $34(a0),a1
	add.l d0,$8(a1)
loc_20e038:
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20e0ae
	move.w $36(a0),$2a(a0)
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	tst.b $28(a0)
	bne.s loc_20e0ae
	movea.w $30(a0),a1
	movea.w $32(a0),a2
	movea.w $34(a0),a3
	move.w $8(a0),$8(a1)
	move.w $8(a0),$8(a2)
	move.w $8(a0),$8(a3)
	move.w #$fffe,d1
	move.w #$3,d2
	move.w #$7,d3
	btst.b #$0,$1(a0)
	beq.s loc_20e0a2
	neg.w d1
	neg.w d2
	neg.w d3
	addi.w #$fffd,d1
	addi.w #$fffd,d2
	addi.w #$fffd,d3
loc_20e0a2:
	add.w d1,$8(a1)
	add.w d2,$8(a2)
	add.w d3,$8(a3)
loc_20e0ae:
	lea dat_20e1ee(pc),a1
	jmp ($205d00).l

sub_20e0b8:
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ffc8,d0
	subi.w #$38,d0
	bcc.s loc_20e0e4
	move.w $8(a6),d0
	sub.w $8(a0),d0
	btst.b #$0,$1(a0)
	bne.s loc_20e0dc
	neg.w d0
loc_20e0dc:
	subi.w #$28,d0
	subi.w #$78,d0
loc_20e0e4:
	rts
loc_20e0e6:
	addq.b #$2,$24(a0)
	move.w #$3c,$2a(a0)
	rts
	.incbin 57586, 252
dat_20e1ee:
	.incbin 57838, 58
loc_20e228:
	movea.w $3e(a0),a1
	cmpi.b #$2d,$0(a1)
	bne.w loc_20e2a0
	move.b $23(a1),d0
	cmp.b $3d(a0),d0
	bne.w loc_20e2a0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e250(pc,d0.w),d0
	jmp dat_20e250(pc,d0.w)
dat_20e250:
	.incbin 57936, 80
loc_20e2a0:
	jmp (dat_203b52).l
	.incbin 58022, 1270
	jsr (sub_20fd74).l
	tst.b $24(a0)
	bmi.w loc_20e870
	bne.w loc_20e900
	ori.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$c,$16(a0)
	lea dat_20e9da(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e7f6
	addi.w #$2000,$2(a0)
loc_20e7f6:
	lea dat_20e98a(pc),a1
	btst.b #$0,$28(a0)
	beq.s loc_20e806
	lea dat_20e9b2(pc),a1
loc_20e806:
	move.l a1,$4(a0)
	move.w $c(a0),$2e(a0)
	move.b $28(a0),d0
	bpl.s loc_20e854
	subq.b #$2,$24(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	move.w $8(a0),$38(a0)
	move.l #$200,$34(a0)
	btst.l #$0,d0
	beq.s loc_20e852
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $34(a0)
	move.l #$3000,$30(a0)
loc_20e852:
	rts
loc_20e854:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.l #$10000,$2a(a0)
	move.l #$100,$34(a0)
	rts
loc_20e870:
	movea.w $3e(a0),a1
	cmpi.b #$52,$0(a1)
	bne.s loc_20e882
	tst.b $3f(a1)
	beq.s loc_20e888
loc_20e882:
	jmp (dat_203b52).l
loc_20e888:
	move.b $32(a0),d0
	jsr ($200700).l
	swap d1
	swap d0
	asr.l #$3,d1
	asr.l #$4,d0
	addi.l #$8000,d1
	addi.l #$8000,d0
	swap d1
	swap d0
	add.w $38(a0),d1
	add.w $2e(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	move.l $34(a0),d0
	add.l d0,$30(a0)
	move.l $30(a0),d0
	andi.l #$7fff,d0
	bne.s loc_20e8f0
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	cmpi.b #$5,$18(a0)
	beq.s loc_20e8ea
	move.b #$5,$18(a0)
	bra.s loc_20e8f0
loc_20e8ea:
	move.b #$3,$18(a0)
loc_20e8f0:
	lea dat_20e964(pc),a1
	jsr ($205d00).l
	jmp ($203aa6).l
loc_20e900:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.b $32(a0),d0
	jsr ($200700).l
	swap d0
	asr.l #$3,d0
	addi.l #$8000,d0
	swap d0
	add.w $2e(a0),d0
	move.w d0,$c(a0)
	move.l $34(a0),d0
	add.l d0,$30(a0)
	bmi.s loc_20e93a
	cmpi.l #$10000,$30(a0)
	blt.s loc_20e94e
loc_20e93a:
	neg.l $34(a0)
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20e94e:
	lea dat_20e964(pc),a1
	jsr ($205d00).l
	jsr ($203aa6).l
	jmp ($2078a4).l
dat_20e964:
	.incbin 59748, 38
dat_20e98a:
	.incbin 59786, 40
dat_20e9b2:
	.incbin 59826, 40
dat_20e9da:
	.incbin 59866, 598
	tst.b $24(a0)
	bne.s loc_20ec74
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$446a,$2(a0)
	move.l #$20ec98,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20ec8a(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20ec74:
	lea ($d000).w,a1
	jsr (sub_2087d8).l
	jsr ($203aa6).l
	jmp ($2078a4).l
dat_20ec8a:
	.incbin 60554, 1098
	tst.b $24(a0)
	bne.s loc_20f110
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$a9,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$370,$2(a0)
	move.l #$20f11c,$4(a0)
loc_20f110:
	jsr ($203aa6).l
	jmp ($2078a4).l
	dc.b $00,$02,$01,$f0,$0f,$00,$00,$f0
	tst.w $3e(a0)
	beq.s loc_20f13c
	movea.w $3e(a0),a1
	cmpi.b #$38,$0(a1)
	beq.s loc_20f13c
	jmp (dat_203b52).l
loc_20f13c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f14a(pc,d0.w),d0
	jmp dat_20f14a(pc,d0.w)
dat_20f14a:
	dc.b $00,$04,$01,$1e
	move.w $8(a0),$34(a0)
	jsr (sub_20786e).l
	beq.s loc_20f162
	jmp (dat_203b52).l
loc_20f162:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	lea (a1),a3
	jsr (sub_20786e).l
	beq.s loc_20f182
	jmp (dat_203b52).l
loc_20f182:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	lea (a1),a2
	jsr (sub_20786e).l
	beq.s loc_20f1a2
	jmp (dat_203b52).l
loc_20f1a2:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	move.w #$f800,d0
	tst.b $28(a0)
	bpl.s loc_20f1be
	neg.w d0
loc_20f1be:
	move.w d0,d1
	move.w d0,$2e(a1)
	add.w d0,d0
	move.w d0,$2e(a2)
	add.w d1,d0
	move.w d0,$2e(a3)
	move.w #$100,$30(a0)
	tst.b $28(a0)
	bpl.s loc_20f1e0
	neg.w $30(a0)
loc_20f1e0:
	move.b $28(a0),d0
	bpl.s loc_20f1e8
	neg.b d0
loc_20f1e8:
	andi.w #$7f,d0
	move.w d0,$32(a0)
	move.b #$1,$18(a0)
	move.b #$2,$18(a1)
	move.b #$3,$18(a2)
	move.b #$4,$18(a3)
	lea (a0),a6
	bsr.w sub_20f21c
	lea (a1),a6
	bsr.w sub_20f21c
	lea (a2),a6
	bsr.w sub_20f21c
	lea (a3),a6

sub_20f21c:
	ori.b #$4,$1(a6)
	move.b #$a9,$20(a6)
	move.b #$10,$17(a6)
	move.b #$10,$19(a6)
	move.b #$10,$16(a6)
	move.w #$370,$2(a6)
	move.l #$20f2a8,$4(a6)
	move.b #$2,$24(a6)
	move.w $8(a0),$2a(a6)
	move.w $c(a0),$2c(a6)
	move.w $30(a0),$30(a6)
	move.w $32(a0),$32(a6)
	rts
	move.w $30(a0),d0
	add.w d0,$2e(a0)
	move.w $2e(a0),d0
	asr.w #$8,d0
	jsr ($200700).l
	move.w $32(a0),d3
	asr.w d3,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	jsr ($203aa6).l
	tst.w $3e(a0)
	bne.s loc_20f2a6
	jmp ($2078a4).l
loc_20f2a6:
	rts
	.incbin 62120, 842
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f62a(pc,d0.w),d0
	jsr dat_20f62a(pc,d0.w)
	jsr ($203aa6).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20f624
	rts
loc_20f624:
	jmp (dat_203b52).l
dat_20f62a:
	dc.b $00,$34,$00,$fc

sub_20f62e:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jsr (sub_2087d2).l
	beq.s loc_20f65c
	move.w $c(a0),d0
	move.b $16(a0),d1
	ext.w d1
	sub.w d1,d0
	move.b $16(a1),d1
	ext.w d1
	sub.w d1,d0
	addq.w #$2,d0
	move.w d0,$c(a1)
loc_20f65c:
	rts
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$4340,$2(a0)
	cmpi.b #$2,($ff1507).l
	bne.s loc_20f67e
	move.w #$4400,$2(a0)
loc_20f67e:
	move.l #$20f7c8,$4(a0)
	move.b #$20,$19(a0)
	move.b #$8,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20f6d2
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$1,d1
	moveq #$7,d2
loc_20f6a8:
	jsr (sub_20786e).l
	bne.s loc_20f6cc
	move.b #$3e,$0(a1)
	move.b $28(a0),$28(a1)
	move.b d1,$3c(a1)
	move.w $36(a0),$36(a1)
	move.w $32(a0),$32(a1)
loc_20f6cc:
	addq.b #$1,d1
	dbf d2,loc_20f6a8
loc_20f6d2:
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	lea dat_20f714(pc,d0.w),a1
	move.b (a1)+,$3e(a0)
	move.b (a1)+,$1a(a0)
	move.b #$1,$18(a0)
	tst.b $1a(a0)
	beq.s loc_20f6fe
	move.b #$3,$18(a0)
	subi.w #$4000,$2(a0)
loc_20f6fe:
	move.w #$100,d0
	btst.b #$4,$28(a0)
	beq.s loc_20f70c
	neg.w d0
loc_20f70c:
	move.w d0,$30(a0)
	bra.w loc_20f726
dat_20f714:
	.incbin 63252, 18
loc_20f726:
	bsr.w sub_20f794
	move.w $30(a0),d0
	add.w d0,$3e(a0)
	moveq #$0,d0
	moveq #$0,d1
	move.b $3e(a0),d0
	jsr ($200700).l
	muls.w #$6,d0
	muls.w #$6,d1
	asr.w #$4,d0
	asr.w #$4,d1
	swap d0
	swap d1
	moveq #$0,d4
	moveq #$0,d5
	move.w $32(a0),d4
	move.w $36(a0),d5
	swap d4
	swap d5
	add.l d4,d0
	add.l d5,d1
	move.l $c(a0),d2
	move.l $8(a0),d3
	move.l d0,$c(a0)
	move.l d1,$8(a0)
	sub.l d2,d0
	sub.l d3,d1
	asl.l #$8,d0
	asl.l #$8,d1
	swap d0
	swap d1
	move.w d0,$12(a0)
	move.w d1,$10(a0)
	tst.b $1a(a0)
	bne.s loc_20f792
	bsr.w sub_20f62e
loc_20f792:
	rts

sub_20f794:
	btst.b #$7,$28(a0)
	bne.s loc_20f7c6
	move.b $28(a0),d0
	andi.w #$f,d0
	lea ($f7e0).w,a1
	btst.b #$7,$0(a1,d0.w)
	beq.s loc_20f7c2
	tst.b $3d(a0)
	bne.s loc_20f7c6
	neg.w $30(a0)
	move.b #$1,$3d(a0)
	rts
loc_20f7c2:
	clr.b $3d(a0)
loc_20f7c6:
	rts
	.incbin 63432, 468
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f9aa(pc,d0.w),d0
	jmp dat_20f9aa(pc,d0.w)
dat_20f9aa:
	dc.b $00,$06,$00,$3c,$00,$d6
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	adda.w d0,a1
	tst.b (a1)
	bne.w loc_20fa9e
	move.l a1,$30(a0)
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.l #$20faa4,$4(a0)
	move.l #$40400340,$16(a0)
	movea.l $30(a0),a1
	tst.b (a1)
	bne.s loc_20fa04
	lea ($d000).w,a1
	jsr (sub_2087d8).l
	jsr ($203aa6).l
	jmp ($2078a4).l
loc_20fa04:
	addq.b #$2,$24(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$80,$2a(a0)
	move.l #$ffff0000,$2c(a0)
	addq.b #$1,$1a(a0)
	subi.w #$30,$8(a0)
	move.w #$2,d6
	move.w $8(a0),d5
loc_20fa34:
	jsr (sub_207884).l
	bne.w loc_20fa9e
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
	bne.s loc_20fa7a
	neg.l $2c(a1)
	addq.b #$1,$1a(a1)
loc_20fa7a:
	dbf d6,loc_20fa34
	bra.s loc_20fa8e
	dc.b $53,$68,$00,$2a,$6b,$18,$20,$28
	dc.b $00,$2c,$d1,$a8,$00,$0c
loc_20fa8e:
	lea ($d000).w,a1
	jsr (sub_2087d8).l
	jmp ($203aa6).l
loc_20fa9e:
	jmp (dat_203b52).l
	.incbin 64164, 648

sub_20fd2c:
	tst.b ($ff156a).l
	beq.s loc_20fd72
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fd44
	tst.b $28(a0)
	beq.s loc_20fd72
loc_20fd44:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (dat_203b52).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fd70
	move.w #$9e,d0
	jsr (sub_202598).l
loc_20fd70:
	addq.l #$4,a7
loc_20fd72:
	rts

sub_20fd74:
	tst.b $28(a0)
	bmi.s loc_20fda4
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fd94
	tst.b ($ff156d).l
	bne.s loc_20fda4
	addq.l #$4,a7
	jmp ($2078a4).l
loc_20fd94:
	tst.b ($ff156a).l
	bne.s loc_20fda4
	addq.l #$4,a7
	jmp (dat_203b52).l
loc_20fda4:
	rts
	jmp (loc_2067ac).l
	.incbin 64940, 54868
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
	.incbin 230466, 20988
dat_23d63e:
	.incbin 251454, 166
dat_23d6e4:
	.incbin 251620, 10524
