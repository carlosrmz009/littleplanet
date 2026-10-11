; R41C__.MMD
; disassembled from the disc; code only, data comes from data/R41C__.MMD at build time
	.file "R41C__.MMD", 262144

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
	bsr.w sub_207886
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
	lea (dat_20f472).l,a2
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
	bsr.w sub_202cb0
	bset.b #$2,($f754).w
	bsr.w sub_2035de
	bsr.w sub_203590
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
	jsr (sub_20f46c).l
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
	jsr (sub_205ce6).l
	bsr.w sub_207886
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
	jsr (sub_20789c).l
	jsr (sub_2039e4).l
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
	bsr.w sub_202cb0
loc_2018ea:
	bsr.w sub_201c52
	jsr (sub_203b8e).l
	tst.w ($ff190e).l
	bne.s loc_201900
	bsr.w sub_200184
loc_201900:
	jsr (sub_20c242).l
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
	jmp (sub_205ce6).l
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
	lea (dat_20bd30).l,a2
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
	jmp (sub_205ce6).l
loc_201da0:
	tst.b ($ff151f).l
	bne.s loc_201d96
	tst.b ($ff1520).l
	bne.s loc_201d96
	move.w #$90,d0
	jmp (sub_205ce6).l
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
	jmp (sub_205ce6).l
loc_201ddc:
	tst.b ($ff151f).l
	bne.s loc_201dd2
	tst.b ($ff1520).l
	bne.s loc_201dd2
	move.w #$91,d0
	jmp (sub_205ce6).l
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
	bsr.w sub_205c08
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
	jsr (sub_20f46c).l
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
	bsr.w sub_20326c
	bsr.w sub_202852
	jmp (loc_20a232).l
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
	bsr.w sub_20326c
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
	lea (dat_20f482).l,a1
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
	lea (dat_20f482).l,a1
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
	dc.b $05,$10,$00,$60
dat_202bb0:
	.incbin 11184, 32
loc_202bd0:
	tst.b ($ff1522).l
	beq.s loc_202bec
	jsr (sub_206bae).l
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
	dc.b $00,$50,$00,$40
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
	lea ($a800).w,a2
	moveq #$e,d2
loc_202ca8:
	clr.l (a2)+
	dbf d2,loc_202ca8
	rts

sub_202cb0:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202cbc
	rts
loc_202cbc:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202ee2
	bsr.w sub_202f82
	bsr.w sub_203678
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
	bsr.w sub_2030d4
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
loc_202d38:
	move.w d0,(a1)+
	dbf d6,loc_202d38
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f700).w,d0
	neg.w d0
	move.w d0,d5
	swap d0
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$7f8,d0
	lsr.w #$2,d0
	lea $0(a2,d0.w),a2
	bra.w loc_202d64
loc_202d64:
	lea (dat_202de2).l,a3
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
loc_202d9a:
	cmp.w ($f646).w,d1
	bge.s loc_202dba
	move.l d0,(a1)+
	addq.w #$1,d1
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202db4
	moveq #$0,d2
	move.w (a2)+,d0
loc_202db4:
	dbf d6,loc_202d9a
	rts
loc_202dba:
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
	bne.s loc_202ddc
	moveq #$0,d2
	move.w (a2)+,d0
loc_202ddc:
	dbf d6,loc_202dba
	rts
dat_202de2:
	.incbin 11746, 256

sub_202ee2:
	move.w ($f700).w,d4
	bsr.s sub_202f16
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202f14
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202f0e
	bset.b #$2,($f754).w
	rts
loc_202f0e:
	bset.b #$3,($f754).w
loc_202f14:
	rts

sub_202f16:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202f28
	bcs.s loc_202f58
	bra.s loc_202f2e
loc_202f28:
	clr.w ($f73a).w
	rts
loc_202f2e:
	cmpi.w #$10,d0
	blt.s loc_202f38
	move.w #$10,d0
loc_202f38:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202f46
	move.w ($f72a).w,d0
loc_202f46:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202f58:
	cmpi.w #$fff0,d0
	bge.s loc_202f62
	move.w #$fff0,d0
loc_202f62:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202f46
	move.w ($f728).w,d0
	bra.s loc_202f46
	.incbin 12146, 16

sub_202f82:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202f96
	subq.w #$5,d0
loc_202f96:
	btst.b #$1,$22(a6)
	beq.s loc_202fb6
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_203002
	subi.w #$40,d0
	bcc.s loc_203002
	tst.b ($f75c).w
	bne.s loc_203014
	bra.s loc_202fc2
loc_202fb6:
	sub.w ($f73e).w,d0
	bne.s loc_202fc8
	tst.b ($f75c).w
	bne.s loc_203014
loc_202fc2:
	clr.w ($f73c).w
	rts
loc_202fc8:
	cmpi.w #$60,($f73e).w
	bne.s loc_202ff0
	move.w $14(a6),d1
	bpl.s loc_202fd8
	neg.w d1
loc_202fd8:
	cmpi.w #$800,d1
	bcc.s loc_203002
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_203062
	cmpi.w #$fffa,d0
	blt.s loc_20302c
	bra.s loc_20301a
loc_202ff0:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_203062
	cmpi.w #$fffe,d0
	blt.s loc_20302c
	bra.s loc_20301a
loc_203002:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_203062
	cmpi.w #$fff0,d0
	blt.s loc_20302c
	bra.s loc_20301a
loc_203014:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_20301a:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_20306c
	bra.w loc_203038
loc_20302c:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_203038:
	cmp.w ($f72c).w,d1
	bgt.s loc_203090
	cmpi.w #$ff00,d1
	bgt.s loc_20305c
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_203090
loc_20305c:
	move.w ($f72c).w,d1
	bra.s loc_203090
loc_203062:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_20306c:
	cmp.w ($f72e).w,d1
	blt.s loc_203090
	subi.w #$800,d1
	bcs.s loc_20308c
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_203090
loc_20308c:
	move.w ($f72e).w,d1
loc_203090:
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
	bne.s loc_2030d2
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_2030cc
	bset.b #$0,($f754).w
	rts
loc_2030cc:
	bset.b #$1,($f754).w
loc_2030d2:
	rts

sub_2030d4:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_203108
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_203102
	bset.b #$2,($f756).w
	bra.s loc_203108
loc_203102:
	bset.b #$3,($f756).w
loc_203108:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_20313c
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_203136
	bset.b #$0,($f756).w
	rts
loc_203136:
	bset.b #$1,($f756).w
loc_20313c:
	rts
	.incbin 12606, 302

sub_20326c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_2032c4
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20332a
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20332c
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2

sub_2032c4:
	tst.b (a2)
	beq.s loc_203328
	bclr.b #$0,(a2)
	beq.s loc_2032de
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203558
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20332e
loc_2032de:
	bclr.b #$1,(a2)
	beq.s loc_2032f8
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203558
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20332e
loc_2032f8:
	bclr.b #$2,(a2)
	beq.s loc_20330e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203558
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203384
loc_20330e:
	bclr.b #$3,(a2)
	beq.s loc_203328
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203558
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203384
loc_203328:
	rts

sub_20332a:
	rts

sub_20332c:
	rts

sub_20332e:
	moveq #$15,d6

sub_203330:
	move.l #$800000,d7
	move.l d0,d1
loc_203338:
	movem.l d4-d5,-(a7)
	bsr.w sub_203430
	move.l d1,d0
	bsr.w sub_2033b2
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203338
	rts
	.incbin 13146, 42

sub_203384:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20338e:
	movem.l d4-d5,-(a7)
	bsr.w sub_203430
	move.l d1,d0
	bsr.w sub_2033b2
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20338e
	rts

sub_2033b2:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033ee
	btst.b #$3,(a0)
	bne.s loc_2033ce
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2033ce:
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
loc_2033ee:
	btst.b #$3,(a0)
	bne.s loc_203410
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
loc_203410:
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

sub_203430:
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
	beq.s loc_203480
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
loc_203480:
	rts
	.incbin 13442, 214

sub_203558:
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
	.incbin 13684, 28

sub_203590:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2035b6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2

sub_2035b6:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2035ba:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203558
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203330
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2035ba
	rts

sub_2035de:
	moveq #$0,d0
	lea (dat_20f472).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202646
	movea.l (a2)+,a0
	bsr.w sub_20362a
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200490
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203628
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203628
	bsr.w sub_202774
loc_203628:
	rts

sub_20362a:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203634:
	move.l d0,(a3)+
	dbf d1,loc_203634
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20364a
	lea ($a040).w,a3
	moveq #$2,d1

sub_20364a:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23bd96).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203664:
	move.w d1,d0
	movea.l a3,a0
loc_203668:
	move.b (a1)+,(a0)+
	dbf d0,loc_203668
	lea $80(a3),a3
	dbf d2,loc_203664
	rts

sub_203678:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2036f2(pc,d0.w),d0
	jsr dat_2036f2(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20369e
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20369e:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2036cc
	bcc.s loc_2036ce
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2036c2
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2036c2:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2036cc:
	rts
loc_2036ce:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2036e6
	btst.b #$1,($d022).w
	beq.s loc_2036e6
	add.w d1,d1
	add.w d1,d1
loc_2036e6:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2036f2:
	.incbin 14066, 460
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2038d0(pc,d0.w),d0
	jmp dat_2038d0(pc,d0.w)
dat_2038d0:
	dc.b $00,$06,$00,$0e,$00,$40
	move.w #$510,($f726).w
	rts
	.incbin 14558, 262

sub_2039e4:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2039ec:
	move.b (a0),d0
	beq.s loc_203a02
	add.w d0,d0
	add.w d0,d0
	lea (dat_203e06).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203a02:
	lea $40(a0),a0
	dbf d7,loc_2039ec
	rts

sub_203a0c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203a4a
	bpl.s loc_203a3c
	btst.b #$1,$2c(a0)
	beq.s loc_203a3c
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203a4a
loc_203a3c:
	btst.b #$2,$2c(a0)
	bne.s loc_203a4a
	addi.w #$38,$12(a0)
loc_203a4a:
	tst.w $12(a0)
	bmi.s loc_203a5e
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a5e
	move.w #$1000,$12(a0)
loc_203a5e:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a6e:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203aaa
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203aaa
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203aa8
	neg.w d1
loc_203aa8:
	add.w d1,d0
loc_203aaa:
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

sub_203ac4:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203b34
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b50
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b50
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203b0e
	cmpi.w #$800,d3
	bcs.s loc_203b20
	subi.w #$800,d3
	bra.s loc_203b20
loc_203b0e:
	cmpi.w #$700,($f704).w
	bcs.s loc_203b20
	cmpi.w #$100,d3
	bcc.s loc_203b20
	addi.w #$800,d3
loc_203b20:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b50
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b50
loc_203b34:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
loc_203b44:
	cmpi.w #$7e,(a1)
	bcc.s loc_203b50
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b50:
	rts
	.incbin 15186, 30

sub_203b70:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b76:
	move.l d1,(a1)+
	dbf d0,loc_203b76
	rts
dat_203b7e:
	.incbin 15230, 16

sub_203b8e:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b9a:
	tst.w (a4)
	beq.w loc_203c5a
	moveq #$2,d6
loc_203ba2:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c52
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203c08
	movea.l dat_203b7e(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203bec
	cmpi.w #$800,d2
	bcs.s loc_203bfe
	subi.w #$800,d2
	bra.s loc_203bfe
loc_203bec:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203bfe
	cmpi.w #$100,d2
	bcc.s loc_203bfe
	addi.w #$800,d2
loc_203bfe:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s sub_203c2a
loc_203c08:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s sub_203c2a
	.incbin 15378, 24

sub_203c2a:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c48
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c4c
loc_203c48:
	bsr.w sub_203c7c
loc_203c4c:
	bset.b #$7,$1(a0)
loc_203c52:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203ba2
loc_203c5a:
	lea $80(a4),a4
	dbf d7,loc_203b9a
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c74
	move.l #$0,(a2)
	rts
loc_203c74:
	move.b #$0,-$5(a2)
	rts

sub_203c7c:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203cc2
	btst.l #$1,d4
	bne.w loc_203d10
loc_203c8e:
	cmpi.b #$50,d5
	beq.s loc_203cc0
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
	bne.s loc_203cba
	addq.w #$1,d0
loc_203cba:
	move.w d0,(a2)+
	dbf d1,loc_203c8e
loc_203cc0:
	rts
loc_203cc2:
	btst.l #$1,d4
	bne.w loc_203d56
loc_203cca:
	cmpi.b #$50,d5
	beq.s loc_203d0e
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
	bne.s loc_203d08
	addq.w #$1,d0
loc_203d08:
	move.w d0,(a2)+
	dbf d1,loc_203cca
loc_203d0e:
	rts
loc_203d10:
	cmpi.b #$50,d5
	beq.s loc_203d54
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
	bne.s loc_203d4e
	addq.w #$1,d0
loc_203d4e:
	move.w d0,(a2)+
	dbf d1,loc_203d10
loc_203d54:
	rts
loc_203d56:
	cmpi.b #$50,d5
	beq.s loc_203da8
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
	bne.s loc_203da2
	addq.w #$1,d0
loc_203da2:
	move.w d0,(a2)+
	dbf d1,loc_203d56
loc_203da8:
	rts
	.incbin 15786, 92
dat_203e06:
	.incbin 15878, 334

sub_203f54:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203f66
	move.w #$0,(a1)
	rts
loc_203f66:
	tst.w (a1)
	bne.s loc_203f70
	move.b #$1,$1(a1)
loc_203f70:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203fba
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203fac
	neg.w $10(a0)
loc_203fac:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205ce6
loc_203fba:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203fd8
	cmpa.w #$d040,a0
	beq.s loc_203fd8
	tst.b ($ff1906).l
	beq.s loc_203fd8
	jmp (loc_2074d4).l
loc_203fd8:
	move.b $2a(a0),d0
	beq.s loc_204002
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203ff4
	cmpi.b #$2d,d0
	bcs.s loc_203ffe
	move.b #$2d,d0
	bra.s loc_203ffe
loc_203ff4:
	cmpi.b #$1e,d0
	bcs.s loc_203ffe
	move.b #$1e,d0
loc_203ffe:
	move.b d0,$2a(a0)
loc_204002:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_204010(pc,d0.w),d1
	jmp dat_204010(pc,d1.w)
dat_204010:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_20401a:
	tst.b ($d300).w
	bne.s loc_204058
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_204058:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_204080
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_204080:
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_2040b4:
	tst.b ($ff1506).l
	bne.s loc_20411a
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_20411a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_20411e
	cmpi.b #$2f,d1
	bne.s loc_20411c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_20411a
	tst.b $2c(a0)
	beq.s loc_20411a
	jsr (sub_207a98).l
	bne.s loc_20411a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_204112
	moveq #$0,d0
loc_204112:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_20411a:
	rts
loc_20411c:
	rts

sub_20411e:
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

sub_204144:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204150
	neg.w d0
loc_204150:
	btst.b #$1,$2c(a0)
	beq.s loc_204160
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204188
loc_204160:
	cmpi.w #$600,d0
	bcs.s loc_204188
	tst.w $14(a0)
	bpl.s loc_20417a
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204196
	move.w #$e0,d1
	bra.s loc_204196
loc_20417a:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204196
	move.w #$60,d1
	bra.s loc_204196
loc_204188:
	cmpi.w #$a0,d1
	beq.s loc_204196
	bcc.s loc_204194
	addq.w #$2,d1
	bra.s loc_204196
loc_204194:
	subq.w #$2,d1
loc_204196:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_204144
	bsr.w sub_2040b4
	tst.w ($ff1588).l
	beq.s loc_2041bc
	btst.b #$4,($f605).w
	beq.s loc_2041bc
	move.b #$1,($ff1906).l
	rts
loc_2041bc:
	tst.b ($f7cc).w
	bne.s loc_2041c8
	move.w ($f604).w,($f602).w
loc_2041c8:
	btst.b #$0,$2c(a0)
	beq.s loc_2041ec
	cmpi.b #$6,($ff1506).l
	bne.s loc_2041e6
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204204
loc_2041e6:
	bsr.w sub_2044ce
	bra.s loc_204204
loc_2041ec:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20424a(pc,d0.w),d1
	jsr dat_20424a(pc,d1.w)
	jsr (sub_206ada).l
loc_204204:
	bsr.s sub_204258
	bsr.w sub_204318
	bsr.w sub_204332
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_20422c
	tst.b $1c(a0)
	bne.s loc_20422c
	move.b $1d(a0),$1c(a0)
loc_20422c:
	bsr.w sub_2056d6
	tst.b $2c(a0)
	bmi.s loc_204244
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204244
	jsr (sub_20707e).l
loc_204244:
	bsr.w sub_20558c
	rts
dat_20424a:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204258:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20427c
	move.w $30(a0),d0
	beq.s loc_20426e
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20427c
loc_20426e:
	btst.b #$6,$2c(a0)
	bne.s loc_20427c
	jsr (sub_203ac4).l
loc_20427c:
	tst.b ($ff151f).l
	beq.s loc_2042c0
	tst.w $32(a0)
	beq.s loc_2042c0
	subq.w #$1,$32(a0)
	bne.s loc_2042c0
	tst.b ($ff1520).l
	bne.s loc_2042b8
	tst.b ($ff1958).l
	bne.s loc_2042b8
	tst.b ($ff152e).l
	bne.s loc_2042b2
	move.w #$e,d0
	jsr (sub_205ce6).l
loc_2042b2:
	jsr (sub_2019cc).l
loc_2042b8:
	move.b #$0,($ff151f).l
loc_2042c0:
	tst.b ($ff1520).l
	beq.s loc_204316
	tst.w $34(a0)
	beq.s loc_204316
	subq.w #$1,$34(a0)
	bne.s loc_204316
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20430e
	tst.b ($ff1958).l
	bne.s loc_20430e
	tst.b ($ff152e).l
	bne.s loc_204308
	move.w #$e,d0
	jsr (sub_205ce6).l
loc_204308:
	jsr (sub_2019cc).l
loc_20430e:
	move.b #$0,($ff1520).l
loc_204316:
	rts

sub_204318:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204332:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20433e
loc_20433c:
	rts
loc_20433e:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204350
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20433c
loc_204350:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204394
	bset.b #$6,$22(a0)
	bne.s loc_20433c
	bsr.w sub_206166
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20433c
	bra.s loc_2043cc
loc_204394:
	tst.w $12(a0)
	beq.s loc_20439c
	bpl.s loc_20433c
loc_20439c:
	bclr.b #$6,$22(a0)
	beq.s loc_20433c
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20433c
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2043cc
	move.w #$f000,$12(a0)
loc_2043cc:
	jsr (sub_207a98).l
	bne.s loc_2043e0
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2043e0:
	rts

sub_2043e2:
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
	bcs.s loc_2044bc
	move.l #$50000,d0
loc_2044bc:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2044ce:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2044f4
	tst.b ($ff152e).l
	beq.s loc_2044ea
	cmpi.b #$2,($ff152e).l
	bne.s loc_2044f4
loc_2044ea:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2045a4
loc_2044f4:
	tst.b $2a(a0)
	bne.w loc_2045b2
	tst.b ($f784).w
	beq.w loc_2045b2
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204512
	neg.w d0
loc_204512:
	tst.w ($f786).w
	bne.s loc_20451e
	move.w #$1,($f786).w
loc_20451e:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204534
	move.b #$1,($ff1502).l
	bra.w loc_205ce2
loc_204534:
	cmpi.w #$d2,d1
	bcs.s loc_204588
	cmpi.b #$2,($ff1522).l
	beq.s loc_204586
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20455e
	move.w #$82,d0
	jsr (sub_205ce6).l
	moveq #$0,d0
loc_20455e:
	add.b ($f784).w,d0
	bpl.s loc_204568
	moveq #$0,d0
	bra.s loc_204570
loc_204568:
	cmpi.b #$3,d0
	bcs.s loc_204570
	moveq #$2,d0
loc_204570:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2043e2
	move.b #$2,($ff1522).l
loc_204586:
	rts
loc_204588:
	cmpi.w #$5a,d1
	bcc.s loc_2045a0
	cmp.w d2,d0
	bcc.w loc_20401a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2045a0:
	cmp.w d2,d0
	bcc.s loc_2045b2
loc_2045a4:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2045b2:
	rts
	bsr.w sub_203f54
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045e4
	tst.b ($ff195b).l
	beq.s loc_2045d2
	cmpi.b #$79,$1a(a0)
	bne.s loc_20460e
	bra.s loc_2045da
loc_2045d2:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20460e
loc_2045da:
	bsr.w sub_204e76
	jmp (sub_203a0c).l
loc_2045e4:
	bsr.w sub_2046bc
	bsr.w sub_2044ce
	bsr.w sub_204f60
	bsr.w sub_20508c
	bsr.w sub_204730
	bsr.w sub_204ee2
	bsr.w sub_204e76
	jsr (sub_203a6e).l
	bsr.w sub_200b12
	bsr.w sub_20510a
loc_20460e:
	rts
	tst.b ($f7c7).w
	bne.s loc_20462a
	cmpi.b #$15,$1c(a0)
	beq.s loc_20462a
	tst.w $12(a0)
	bmi.s loc_20462a
	move.b #$0,$1c(a0)
loc_20462a:
	bsr.w sub_2046bc
	bsr.w sub_2044ce
	bsr.w sub_20504a
	bsr.w sub_204d96
	bsr.w sub_204e76
	jsr (sub_203a0c).l
	btst.b #$6,$22(a0)
	beq.s loc_204652
	subi.w #$28,$12(a0)
loc_204652:
	bsr.w sub_205154
	bsr.w sub_205178
	rts
	bsr.w sub_2046bc
	bsr.w sub_2044ce
	bsr.w sub_204f60
	bsr.w sub_2050c8
	bsr.w sub_204bd0
	bsr.w sub_204e76
	tst.b $2a(a0)
	bne.s loc_204680
	jsr (sub_203a6e).l
loc_204680:
	bsr.w sub_200b12
	bsr.w sub_20510a
	rts
	bsr.w sub_2046bc
	bsr.w sub_2044ce
	bsr.w sub_20504a
	bsr.w sub_204d96
	bsr.w sub_204e76
	jsr (sub_203a0c).l
	btst.b #$6,$22(a0)
	beq.s loc_2046b2
	subi.w #$28,$12(a0)
loc_2046b2:
	bsr.w sub_205154
	bsr.w sub_205178
	rts

sub_2046bc:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204728
	tst.w ($ff1506).l
	bne.s loc_204728
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20472a).l,a2
loc_2046f0:
	move.b (a2)+,d0
	bmi.s loc_204700
	cmp.b d0,d1
	bne.s loc_2046f0
	bset.b #$1,$2c(a0)
	rts
loc_204700:
	bclr.b #$1,$2c(a0)
	beq.s loc_204728
	tst.w $12(a0)
	bpl.s loc_204728
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204728
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204728
	neg.w $10(a0)
loc_204728:
	rts
dat_20472a:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204730:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204a5a
	tst.w $3e(a0)
	bne.w loc_204a0a
	btst.b #$2,($f602).w
	beq.s loc_204758
	bsr.w sub_204aea
loc_204758:
	btst.b #$3,($f602).w
	beq.s loc_204764
	bsr.w sub_204b60
loc_204764:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204a0a
	tst.w $14(a0)
	beq.s loc_204784
	tst.b $2a(a0)
	beq.w loc_204a0a
	bra.s loc_204790
loc_204784:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204790:
	btst.b #$3,$22(a0)
	beq.s loc_2047e2
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20483a
	cmpi.b #$1e,$0(a1)
	bne.s loc_2047c2
	move.b #$0,$1c(a0)
	bra.w loc_204a0a
loc_2047c2:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20481e
	cmp.w d2,d1
	bge.s loc_20480c
	bra.s loc_20483a
loc_2047e2:
	jsr (sub_206de2).l
	cmpi.w #$c,d1
	blt.s loc_20483a
	move.w #$ab,d0
	jsr (sub_2025aa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204816
loc_20480c:
	btst.b #$0,$22(a0)
	bne.s loc_204826
	bra.s loc_204830
loc_204816:
	cmpi.b #$3,$37(a0)
	bne.s loc_20483a
loc_20481e:
	btst.b #$0,$22(a0)
	bne.s loc_204830
loc_204826:
	move.b #$32,$1c(a0)
	bra.w loc_204a0a
loc_204830:
	move.b #$6,$1c(a0)
	bra.w loc_204a0a
loc_20483a:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20484e
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20484e:
	btst.b #$7,($f788).w
	bne.w loc_204952
	btst.b #$6,($f788).w
	bne.w loc_204972
	btst.b #$1,($f602).w
	bne.w loc_204972
	andi.b #$f,($f788).w
	beq.s loc_204886
	btst.b #$0,($f603).w
	beq.s loc_20489a
	bset.b #$7,($f788).w
	bra.w loc_204a2e
loc_204886:
	btst.b #$0,($f603).w
	beq.w loc_20489a
	move.b #$1,($f788).w
	bra.w loc_204a2e
loc_20489a:
	btst.b #$0,($f602).w
	beq.s loc_204916
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2048f8
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2048ca
	asr.w #$1,d2
	sub.w d2,d1
loc_2048ca:
	btst.b #$0,$22(a0)
	beq.s loc_2048d6
	neg.w d0
	neg.w d1
loc_2048d6:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2048ec
	cmp.w d0,d1
	ble.s loc_2048f2
	bra.s loc_2048f0
loc_2048ec:
	cmp.w d1,d0
	ble.s loc_2048f2
loc_2048f0:
	move.w d1,d0
loc_2048f2:
	move.w d0,$14(a0)
	rts
loc_2048f8:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204912
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2025aa).l
loc_204912:
	bra.w loc_204a2e
loc_204916:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204936
	move.w #$ab,d0
	jsr (sub_2025aa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204972
loc_204936:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2025aa).l
	bra.w loc_204a0a
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204952:
	btst.b #$0,($f602).w
	beq.s loc_204972
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204a2e
	addq.w #$2,($f73e).w
	bra.w loc_204a2e
loc_204972:
	btst.b #$6,($f788).w
	bne.w loc_2049ee
	andi.b #$f,($f788).w
	beq.s loc_204996
	btst.b #$1,($f603).w
	beq.s loc_2049a8
	bset.b #$6,($f788).w
	bra.w loc_204a2e
loc_204996:
	btst.b #$1,($f603).w
	beq.s loc_2049a8
	move.b #$1,($f788).w
	bra.w loc_204a2e
loc_2049a8:
	btst.b #$1,($f602).w
	beq.s loc_204a0a
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2049ec
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049ec
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2049de
	neg.w $14(a0)
loc_2049de:
	move.w #$9c,d0
	jsr (sub_2025aa).l
	bsr.w sub_204f0a
loc_2049ec:
	bra.s loc_204a2e
loc_2049ee:
	btst.b #$1,($f602).w
	beq.s loc_204a0a
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204a2e
	subq.w #$2,($f73e).w
	bra.s loc_204a2e
loc_204a0a:
	cmpi.w #$60,($f73e).w
	bne.s loc_204a24
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204a2e
	move.b #$0,($f788).w
	bra.s loc_204a2e
loc_204a24:
	bcc.s loc_204a2a
	addq.w #$4,($f73e).w
loc_204a2a:
	subq.w #$2,($f73e).w
loc_204a2e:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a5a
	move.w $14(a0),d0
	beq.s loc_204a5a
	bmi.s loc_204a4e
	sub.w d5,d0
	bcc.s loc_204a48
	move.w #$0,d0
loc_204a48:
	move.w d0,$14(a0)
	bra.s loc_204a5a
loc_204a4e:
	add.w d5,d0
	bcc.s loc_204a56
	move.w #$0,d0
loc_204a56:
	move.w d0,$14(a0)
loc_204a5a:
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a78:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204ae8
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204ae8
	bmi.s loc_204a90
	neg.w d1
loc_204a90:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206ca2
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204ae8
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204ae4
	cmpi.b #$40,d0
	beq.s loc_204ad2
	cmpi.b #$80,d0
	beq.s loc_204acc
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204acc:
	sub.w d1,$12(a0)
	rts
loc_204ad2:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204ae4:
	add.w d1,$12(a0)
loc_204ae8:
	rts

sub_204aea:
	tst.b $2a(a0)
	bne.s loc_204b5e
	move.w $14(a0),d0
	beq.s loc_204af8
	bpl.s loc_204b28
loc_204af8:
	bset.b #$0,$22(a0)
	bne.s loc_204b0c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b0c:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204b1c
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204b1c
	move.w d1,d0
loc_204b1c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b28:
	sub.w d4,d0
	bcc.s loc_204b30
	move.w #$ff80,d0
loc_204b30:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b5e
	cmpi.w #$400,d0
	blt.s loc_204b5e
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2025aa).l
loc_204b5e:
	rts

sub_204b60:
	tst.b $2a(a0)
	bne.s loc_204bce
	move.w $14(a0),d0
	bmi.s loc_204b98
	bclr.b #$0,$22(a0)
	beq.s loc_204b80
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b80:
	cmp.w d6,d0
	bge.s loc_204b8c
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b8c
	move.w d6,d0
loc_204b8c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b98:
	add.w d4,d0
	bcc.s loc_204ba0
	move.w #$80,d0
loc_204ba0:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204bce
	cmpi.w #$fc00,d0
	bgt.s loc_204bce
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2025aa).l
loc_204bce:
	rts

sub_204bd0:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204d1a
	tst.w $3e(a0)
	bne.s loc_204c08
	btst.b #$2,($f602).w
	beq.s loc_204bfc
	bsr.w sub_204d50
loc_204bfc:
	btst.b #$3,($f602).w
	beq.s loc_204c08
	bsr.w sub_204d74
loc_204c08:
	tst.b $2a(a0)
	beq.w loc_204cb2
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204c28
	asr.w #$1,d2
	sub.w d2,d1
loc_204c28:
	btst.b #$0,$22(a0)
	beq.s loc_204c34
	neg.w d0
	neg.w d1
loc_204c34:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204c4a
	cmp.w d0,d1
	ble.s loc_204c50
	bra.s loc_204c4e
loc_204c4a:
	cmp.w d1,d0
	ble.s loc_204c50
loc_204c4e:
	move.w d1,d0
loc_204c50:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204c84
	rts
loc_204c5e:
	move.w #$ab,d0
	jsr (sub_2025aa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204ce4
loc_204c84:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204c5e
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2025aa).l
	btst.b #$0,$22(a0)
	bne.s loc_204caa
	bsr.w sub_204d74
	bra.s loc_204cb2
loc_204caa:
	bsr.w sub_204d50
	bra.s loc_204cb2
	dc.b $4e,$75
loc_204cb2:
	move.w $14(a0),d0
	beq.s loc_204cd4
	bmi.s loc_204cc8
	sub.w d5,d0
	bcc.s loc_204cc2
	move.w #$0,d0
loc_204cc2:
	move.w d0,$14(a0)
	bra.s loc_204cd4
loc_204cc8:
	add.w d5,d0
	bcc.s loc_204cd0
	move.w #$0,d0
loc_204cd0:
	move.w d0,$14(a0)
loc_204cd4:
	tst.w $14(a0)
	bne.s loc_204d1a
	move.w #$ab,d0
	jsr (sub_2025aa).l
loc_204ce4:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d04
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204d14
loc_204d04:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204d14:
	move.b #$5,$1c(a0)
loc_204d1a:
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204d3e
	move.w #$1000,d1
loc_204d3e:
	cmpi.w #$f000,d1
	bge.s loc_204d48
	move.w #$f000,d1
loc_204d48:
	move.w d1,$10(a0)
	bra.w loc_204a78

sub_204d50:
	move.w $14(a0),d0
	beq.s loc_204d58
	bpl.s loc_204d66
loc_204d58:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d66:
	sub.w d4,d0
	bcc.s loc_204d6e
	move.w #$ff80,d0
loc_204d6e:
	move.w d0,$14(a0)
	rts

sub_204d74:
	move.w $14(a0),d0
	bmi.s loc_204d88
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d88:
	add.w d4,d0
	bcc.s loc_204d90
	move.w #$80,d0
loc_204d90:
	move.w d0,$14(a0)
	rts

sub_204d96:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204dd0
	tst.w ($ff1506).l
	bne.s loc_204dd0
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204dc8
	cmpi.w #$840,$8(a0)
	bcc.s loc_204dc8
	rts
loc_204dc8:
	btst.b #$1,$2c(a0)
	bne.s loc_204e00
loc_204dd0:
	btst.b #$2,($f602).w
	beq.s loc_204dea
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204dea
	move.w d1,d0
loc_204dea:
	btst.b #$3,($f602).w
	beq.s loc_204e00
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204e00
	move.w d6,d0
loc_204e00:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204e16
	bcc.s loc_204e12
	addq.w #$4,($f73e).w
loc_204e12:
	subq.w #$2,($f73e).w
loc_204e16:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204e44
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204e44
	bmi.s loc_204e38
	sub.w d1,d0
	bcc.s loc_204e32
	move.w #$0,d0
loc_204e32:
	move.w d0,$10(a0)
	rts
loc_204e38:
	sub.w d1,d0
	bcs.s loc_204e40
	move.w #$0,d0
loc_204e40:
	move.w d0,$10(a0)
loc_204e44:
	rts
	.incbin 20038, 48

sub_204e76:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204eca
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204ea4
	addi.w #$38,d0
loc_204ea4:
	cmp.w d1,d0
	bls.s loc_204eca
loc_204ea8:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204eb8
	rts
loc_204eb8:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207310
	move.b #$6,$24(a0)
	rts
loc_204eca:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ea8

sub_204ee2:
	tst.b ($f7ca).w
	bne.s loc_204f08
	move.w $14(a0),d0
	bpl.s loc_204ef0
	neg.w d0
loc_204ef0:
	cmpi.w #$80,d0
	bcs.s loc_204f08
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204f08
	btst.b #$1,($f602).w
	bne.s sub_204f0a
loc_204f08:
	rts

sub_204f0a:
	btst.b #$2,$22(a0)
	beq.s loc_204f14
	bra.s loc_204f44
loc_204f14:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f34
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f44
loc_204f34:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f44:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204f5e
	cmpi.w #$200,$14(a0)
	bcc.s loc_204f5e
	move.w #$200,$14(a0)
loc_204f5e:
	rts

sub_204f60:
	tst.b $2a(a0)
	beq.s loc_204f68
	rts
loc_204f68:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204f7a
	tst.w $14(a0)
	beq.w loc_205040
loc_204f7a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205040
	btst.b #$3,$22(a0)
	beq.s loc_204f96
	jsr (sub_205c6c).l
	beq.s loc_204fc6
loc_204f96:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206d0c
	cmpi.w #$6,d1
	blt.w loc_205040
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204fbc
	move.w #$380,d2
loc_204fbc:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204fc6:
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
	bne.s loc_205042
	tst.b ($ff195b).l
	beq.s loc_205024
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_205034
loc_205024:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205034:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205040:
	rts
loc_205042:
	bset.b #$4,$22(a0)
	rts

sub_20504a:
	tst.b $3c(a0)
	beq.s loc_20507c
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205060
	move.w #$fe00,d1
loc_205060:
	cmp.w $12(a0),d1
	ble.s loc_20507a
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_20507a
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_20507a:
	rts
loc_20507c:
	cmpi.w #$f040,$12(a0)
	bge.s loc_20508a
	move.w #$f040,$12(a0)
loc_20508a:
	rts

sub_20508c:
	tst.b $2a(a0)
	bne.s loc_2050c6
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050c6
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_2050c6
	bmi.s loc_2050c2
	tst.w d0
	beq.s loc_2050c0
	add.w d0,$14(a0)
loc_2050c0:
	rts
loc_2050c2:
	add.w d0,$14(a0)
loc_2050c6:
	rts

sub_2050c8:
	tst.b $2a(a0)
	bne.s loc_205108
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205108
	move.b $26(a0),d0
	jsr (sub_200712).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2050fe
	tst.w d0
	bpl.s loc_2050f8
	asr.l #$2,d0
loc_2050f8:
	add.w d0,$14(a0)
	rts
loc_2050fe:
	tst.w d0
	bmi.s loc_205104
	asr.l #$2,d0
loc_205104:
	add.w d0,$14(a0)
loc_205108:
	rts

sub_20510a:
	nop
	tst.b $38(a0)
	bne.s loc_20514c
	tst.w $3e(a0)
	bne.s loc_20514e
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20514c
	move.w $14(a0),d0
	bpl.s loc_20512e
	neg.w d0
loc_20512e:
	cmpi.w #$280,d0
	bcc.s loc_20514c
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_20514c:
	rts
loc_20514e:
	subq.w #$1,$3e(a0)
	rts

sub_205154:
	btst.b #$1,$2c(a0)
	bne.s loc_205176
	move.b $26(a0),d0
	beq.s loc_205176
	bpl.s loc_20516c
	addq.b #$2,d0
	bcc.s loc_20516a
	moveq #$0,d0
loc_20516a:
	bra.s loc_205172
loc_20516c:
	subq.b #$2,d0
	bcc.s loc_205172
	moveq #$0,d0
loc_205172:
	move.b d0,$26(a0)
loc_205176:
	rts

sub_205178:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2009aa).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20525c
	cmpi.b #$80,d0
	beq.w loc_2052be
	cmpi.b #$c0,d0
	beq.w loc_20531a
	bsr.w sub_207022
	tst.w d1
	bpl.s loc_2051ca
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051ca:
	bsr.w sub_206e84
	tst.w d1
	bpl.s loc_2051dc
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051dc:
	bsr.w sub_206d34
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20525a
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2051fa
	cmp.b d2,d0
	blt.s loc_20525a
loc_2051fa:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20537c
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205238
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20522a
	asr.w $12(a0)
	bra.s loc_20524c
loc_20522a:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205238:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_20524c
	move.w #$fc0,$12(a0)
loc_20524c:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20525a
	neg.w $14(a0)
loc_20525a:
	rts
loc_20525c:
	bsr.w sub_207022
	tst.w d1
	bpl.s loc_205276
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205276:
	bsr.w sub_206edc
	tst.w d1
	bpl.s loc_205290
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20528e
	move.w #$0,$12(a0)
loc_20528e:
	rts
loc_205290:
	tst.w $12(a0)
	bmi.s loc_2052bc
	bsr.w sub_206d34
	tst.w d1
	bpl.s loc_2052bc
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20537c
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2052bc:
	rts
loc_2052be:
	bsr.w sub_207022
	tst.w d1
	bpl.s loc_2052d0
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052d0:
	bsr.w sub_206e84
	tst.w d1
	bpl.s loc_2052e2
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052e2:
	bsr.w sub_206edc
	tst.w d1
	bpl.s loc_205318
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205302
	move.w #$0,$12(a0)
	rts
loc_205302:
	move.b d3,$26(a0)
	bsr.w sub_2053ee
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205318
	neg.w $14(a0)
loc_205318:
	rts
loc_20531a:
	bsr.w sub_206e84
	tst.w d1
	bpl.s loc_205334
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205334:
	bsr.w sub_206edc
	tst.w d1
	bpl.s loc_20534e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20534c
	move.w #$0,$12(a0)
loc_20534c:
	rts
loc_20534e:
	tst.w $12(a0)
	bmi.s loc_20537a
	bsr.w sub_206d34
	tst.w d1
	bpl.s loc_20537a
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20537c
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20537a:
	rts

sub_20537c:
	btst.b #$4,$22(a0)
	beq.s loc_205386
	nop
loc_205386:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2053e0
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2053c0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2053d0
loc_2053c0:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2053d0:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2025aa).l
loc_2053e0:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2053ee:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21518, 382

sub_20558c:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2055b4
	cmpi.b #$5,($ff1506).l
	beq.s loc_2055b4
	cmpi.b #$2,($ff1506).l
	beq.s loc_2055b4
	tst.b ($ff1506).l
	bne.w loc_205676
loc_2055b4:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2055f2
	tst.b ($ff1506).l
	bne.w loc_205678
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205678
	bra.s loc_2055fa
loc_2055f2:
	cmp.b ($f7af).w,d1
	beq.w loc_205678
loc_2055fa:
	cmp.b ($f7ac).w,d1
	beq.s loc_20562a
	cmp.b ($f7ad).w,d1
	beq.s loc_20560e
	bclr.b #$6,$1(a0)
	rts
loc_20560e:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205690
	btst.b #$1,$22(a0)
	beq.s loc_20562a
	bclr.b #$6,$1(a0)
	rts
loc_20562a:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20563c
	bclr.b #$6,$1(a0)
	rts
loc_20563c:
	cmpi.b #$e0,d2
	bcs.s loc_20564a
	bset.b #$6,$1(a0)
	rts
loc_20564a:
	btst.b #$6,$1(a0)
	bne.s loc_205666
	move.b $26(a0),d1
	beq.s loc_205676
	cmpi.b #$80,d1
	bhi.s loc_205676
	bset.b #$6,$1(a0)
	rts
loc_205666:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205676
	bclr.b #$6,$1(a0)
loc_205676:
	rts
loc_205678:
	btst.b #$2,$22(a0)
	bne.s loc_20568a
	move.w #$9c,d0
	jsr (sub_2025aa).l
loc_20568a:
	jmp (sub_204f0a).l
loc_205690:
	tst.w $12(a0)
	bmi.s loc_2056d4
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2056c8
	cmpi.w #$38,d1
	bcs.s loc_2056c0
	cmpi.w #$80,d1
	bcs.s loc_2056d4
loc_2056b8:
	bclr.b #$6,$1(a0)
	rts
loc_2056c0:
	bset.b #$6,$1(a0)
	rts
loc_2056c8:
	cmpi.w #$38,d1
	bcs.s loc_2056b8
	cmpi.w #$80,d1
	bcc.s loc_2056c0
loc_2056d4:
	rts

sub_2056d6:
	lea (dat_2059c6).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2056f8
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2056f8:
	bsr.w sub_205968
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205770
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20573e
	move.b d0,$1e(a0)

sub_205722:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205736
	bpl.s loc_205736
	cmpi.b #$fd,d0
	bge.s loc_205740
loc_205736:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20573e:
	rts
loc_205740:
	addq.b #$1,d0
	bne.s loc_205750
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205736
loc_205750:
	addq.b #$1,d0
	bne.s loc_205764
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205736
loc_205764:
	addq.b #$1,d0
	bne.s loc_20576e
	move.b $2(a1,d1.w),$1c(a0)
loc_20576e:
	rts
loc_205770:
	subq.b #$1,$1e(a0)
	bpl.s loc_20573e
	addq.b #$1,d0
	bne.w loc_20582a
	tst.b ($ff195b).l
	bne.w loc_2058f2
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205798
	not.b d0
loc_205798:
	btst.b #$1,$2c(a0)
	bne.s loc_2057a6
	addi.b #$10,d0
	bra.s loc_2057a8
loc_2057a6:
	addq.b #$8,d0
loc_2057a8:
	bpl.s loc_2057ac
	moveq #$3,d1
loc_2057ac:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20589e
	move.w $14(a0),d2
	bpl.s loc_2057ca
	neg.w d2
loc_2057ca:
	btst.b #$1,$2c(a0)
	beq.s loc_2057e2
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205bc8).l,a1
	bra.s loc_20580c
loc_2057e2:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205ba2).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20580c
	lea (dat_205a46).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20580c
	lea (dat_205a3e).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20580c:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20581a
	moveq #$0,d2
loc_20581a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205722
	add.b d3,$1a(a0)
	rts
loc_20582a:
	addq.b #$1,d0
	bne.s loc_20589a
	move.w $14(a0),d2
	bpl.s loc_205836
	neg.w d2
loc_205836:
	lea (dat_205b24).l,a1
	tst.b ($ff195b).l
	bne.s loc_205874
	lea (dat_205a56).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205868
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205874
	lea (dat_205bd0).l,a1
	bra.s loc_205874
loc_205868:
	cmpi.w #$600,d2
	bcc.s loc_205874
	lea (dat_205a4e).l,a1
loc_205874:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20587e
	moveq #$0,d2
loc_20587e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205722
loc_20589a:
	addq.b #$1,d0
	bne.s loc_2058de
loc_20589e:
	move.w $14(a0),d2
	bmi.s loc_2058a6
	neg.w d2
loc_2058a6:
	addi.w #$800,d2
	bpl.s loc_2058ae
	moveq #$0,d2
loc_2058ae:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205b36).l,a1
	tst.b ($ff195b).l
	bne.s loc_2058c8
	lea (dat_205a5e).l,a1
loc_2058c8:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205722
loc_2058de:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2058f2:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205904
	not.b d0
loc_205904:
	addi.b #$10,d0
	bpl.s loc_20590c
	moveq #$0,d1
loc_20590c:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20593a
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20582a
loc_20593a:
	move.w $14(a0),d2
	bpl.s loc_205942
	neg.w d2
loc_205942:
	lea (dat_205b1e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205954
	lea (dat_205b18).l,a1
loc_205954:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20595e
	moveq #$0,d2
loc_20595e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205722

sub_205968:
	tst.b ($ff195b).l
	beq.s loc_205974
	move.b dat_205976(pc,d0.w),d0
loc_205974:
	rts
dat_205976:
	.incbin 22902, 80
dat_2059c6:
	.incbin 22982, 120
dat_205a3e:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205a46:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205a4e:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205a56:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205a5e:
	.incbin 23134, 186
dat_205b18:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205b1e:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205b24:
	.incbin 23332, 18
dat_205b36:
	.incbin 23350, 108
dat_205ba2:
	.incbin 23458, 38
dat_205bc8:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205bd0:
	.incbin 23504, 56

sub_205c08:
	tst.b (a0)
	beq.w loc_205c6a
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c6a
	move.b d0,(a2)
	lea (dat_233a26).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c6a
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205c3c:
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
loc_205c56:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c56
	dbf d1,loc_205c3c
loc_205c6a:
	rts

sub_205c6c:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205ce0
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
	bne.s loc_205cce
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205cce:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205ce0:
	rts
loc_205ce2:
	move.w #$e,d0

sub_205ce6:
	cmpi.w #$67,d0
	bne.s loc_205cf4
	move.b #$1,($ff1958).l
loc_205cf4:
	move.w d0,($a12010).l
loc_205cfa:
	move.w ($a12020).l,d0
	beq.s loc_205cfa
	cmp.w ($a12020).l,d0
	bne.s loc_205cfa
	move.w #$0,($a12010).l
loc_205d12:
	move.w ($a12020).l,d0
	bne.s loc_205d12
	move.w ($a12020).l,d0
	bne.s loc_205d12
	rts
	dc.b $00,$00

sub_205d26:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205d42
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205d42:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d82
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d84
loc_205d5e:
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
loc_205d82:
	rts
loc_205d84:
	addq.b #$1,d0
	bne.s loc_205d94
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205d5e
loc_205d94:
	addq.b #$1,d0
	bne.s loc_205da8
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205d5e
loc_205da8:
	addq.b #$1,d0
	bne.s loc_205db2
	move.b $2(a1,d1.w),$1c(a0)
loc_205db2:
	addq.b #$1,d0
	bne.s loc_205dba
	addq.b #$2,$24(a0)
loc_205dba:
	addq.b #$1,d0
	bne.s loc_205dc8
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205dc8:
	addq.b #$1,d0
	bne.s loc_205dd0
	addq.b #$2,$25(a0)
loc_205dd0:
	rts
	.incbin 24018, 156
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e8a(pc,d0.w),d0
	jsr dat_205e8a(pc,d0.w)
	jsr (sub_203ac4).l
	jmp (loc_207ace).l
dat_205e8a:
	.incbin 24202, 342
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fee(pc,d0.w),d1
	jmp dat_205fee(pc,d1.w)
dat_205fee:
	.incbin 24558, 18
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	ori.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_206048
	addq.b #$8,$24(a0)
	move.l #$2398be,$4(a0)
	ori.w #$48a,$2(a0)
	andi.w #$7f,d0
	move.b d0,$33(a0)
	bra.w loc_2061ac
loc_206048:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	lea (dat_2063ae).l,a1
	jsr (sub_205d26).l
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_206082
	move.b #$6,$24(a0)
	addq.b #$7,$1c(a0)
	cmpi.b #$d,$1c(a0)
	beq.s loc_2060c6
	bra.s loc_2060c6
loc_206082:
	tst.b ($f7c7).w
	beq.s loc_20608c
	addq.w #$4,$30(a0)
loc_20608c:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_21f844).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	bsr.s sub_20611a
	jsr (sub_203a6e).l
	tst.b $1(a0)
	bpl.s loc_2060c0
	jmp (sub_203ac4).l
loc_2060c0:
	jmp (sub_203b70).l
loc_2060c6:
	bsr.s sub_20611a
	lea (dat_2063ae).l,a1
	jsr (sub_205d26).l
	jmp (sub_203ac4).l
	jmp (sub_203b70).l
	.incbin 24800, 58

sub_20611a:
	tst.w $38(a0)
	beq.s loc_206164
	subq.w #$1,$38(a0)
	bne.s loc_206164
	cmpi.b #$7,$1c(a0)
	bcc.s loc_206164
	move.w #$f,$38(a0)
	clr.w $12(a0)
	move.b #$80,$1(a0)
	move.w $8(a0),d0
	sub.w ($f700).w,d0
	addi.w #$80,d0
	move.w d0,$8(a0)
	move.w $c(a0),d0
	sub.w ($f704).w,d0
	addi.w #$80,d0
	move.w d0,$a(a0)
	move.b #$c,$24(a0)
loc_206164:
	rts

sub_206166:
	cmpi.w #$c,($ff150a).l
	bhi.s loc_20619e
	move.w #$82,d0
	cmpi.w #$103,($ff1506).l
	bne.s loc_206182
	move.w #$86,d0
loc_206182:
	tst.b ($ff151f).l
	beq.s loc_20618e
	move.w #$87,d0
loc_20618e:
	tst.b ($f7aa).w
	beq.s loc_206198
	move.w #$8c,d0
loc_206198:
	jsr (sub_2025a8).l
loc_20619e:
	move.w #$1e,($ff150a).l
	clr.b ($d1f2).w
	rts
loc_2061ac:
	tst.w $2c(a0)
	bne.w loc_20629c
	cmpi.b #$6,($d024).w
	bcc.w loc_2063ac
	btst.b #$6,($d022).w
	beq.w loc_2063ac
	subq.w #$1,$38(a0)
	bpl.w loc_2062c2
	move.w #$3b,$38(a0)
	move.w #$1,$36(a0)
	jsr (sub_202398).l
	andi.w #$1,d0
	move.b d0,$34(a0)
	move.w ($ff150a).l,d0
	cmpi.w #$19,d0
	beq.s loc_20622e
	cmpi.w #$14,d0
	beq.s loc_20622e
	cmpi.w #$f,d0
	beq.s loc_20622e
	cmpi.w #$c,d0
	bhi.s loc_20622e
	btst.b #$5,($ff1505).l
	bne.s loc_20621c
	move.w #$df,d0
	jsr (sub_2025aa).l
loc_20621c:
	subq.b #$1,$32(a0)
	bpl.s loc_20622e
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_20622e:
	subq.w #$1,($ff150a).l
	bcc.w loc_2062c0
	bsr.w sub_206166
	move.b #$81,($d02c).w
	move.w #$b6,d0
	jsr (sub_2025aa).l
	move.b #$a,$34(a0)
	move.w #$1,$36(a0)
	move.w #$78,$2c(a0)
	move.l a0,-(a7)
	lea ($d000).w,a0
	bsr.w sub_20537c
	move.b #$17,$1c(a0)
	bset.b #$1,$22(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$0,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.b #$1,($f744).w
	movea.l (a7)+,a0
	rts
loc_20629c:
	subq.w #$1,$2c(a0)
	bne.s loc_2062aa
	move.b #$6,($d024).w
	rts
loc_2062aa:
	move.l a0,-(a7)
	lea ($d000).w,a0
	jsr (sub_203a6e).l
	addi.w #$10,$12(a0)
	movea.l (a7)+,a0
	bra.s loc_2062c2
loc_2062c0:
	bra.s loc_2062d2
loc_2062c2:
	tst.w $36(a0)
	beq.w loc_2063ac
	subq.w #$1,$3a(a0)
	bpl.w loc_2063ac
loc_2062d2:
	jsr (sub_202398).l
	andi.w #$f,d0
	move.w d0,$3a(a0)
	jsr (sub_207a98).l
	bne.w loc_2063ac
	move.b #$21,$0(a1)
	move.w ($d008).w,$8(a1)
	moveq #$6,d0
	btst.b #$0,($d022).w
	beq.s loc_206308
	neg.w d0
	move.b #$40,$26(a1)
loc_206308:
	add.w d0,$8(a1)
	move.w ($d00c).w,$c(a1)
	move.b #$6,$28(a1)
	tst.w $2c(a0)
	beq.w loc_206356
	andi.w #$7,$3a(a0)
	addi.w #$0,$3a(a0)
	move.w ($d00c).w,d0
	subi.w #$c,d0
	move.w d0,$c(a1)
	jsr (sub_202398).l
	move.b d0,$26(a1)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	bne.s loc_2063a2
	move.b #$e,$28(a1)
	bra.s loc_2063a2
loc_206356:
	btst.b #$7,$36(a0)
	beq.s loc_2063a2
	move.w #$2000,$2(a1)
	move.w ($ff150a).l,d2
	lsr.w #$1,d2
	jsr (sub_202398).l
	andi.w #$3,d0
	bne.s loc_20638a
	bset.b #$6,$36(a0)
	bne.s loc_2063a2
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_20638a:
	tst.b $34(a0)
	bne.s loc_2063a2
	bset.b #$6,$36(a0)
	bne.s loc_2063a2
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_2063a2:
	subq.b #$1,$34(a0)
	bpl.s loc_2063ac
	clr.w $36(a0)
loc_2063ac:
	rts
dat_2063ae:
	.incbin 25518, 154

sub_206448:
	tst.b $25(a0)
	bne.s loc_206478
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207a98).l
	bne.s loc_206478
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206478:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206488(pc,d0.w),d0
	jmp dat_206488(pc,d0.w)
dat_206488:
	dc.b $00,$06,$00,$4a,$00,$5a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$680,$2(a0)
	move.l #$21f7b2,$4(a0)
	bsr.s sub_206448
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_2064d2
	move.w #$100,$1c(a0)
loc_2064d2:
	lea (dat_21f79e).l,a1
	bsr.w sub_205d26
	jmp (sub_203ac4).l
	tst.b $25(a0)
	beq.s loc_2064ee
	jmp (sub_203b70).l
loc_2064ee:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206510(pc,d0.w),d0
	jsr dat_206510(pc,d0.w)
	jmp (sub_203ac4).l
dat_206510:
	dc.b $00,$0a,$00,$5a,$00,$aa,$00,$fa
	dc.b $01,$08
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$26d7,$2(a0)
	move.l #$238e9e,$4(a0)
	tst.b $28(a0)
	bne.s loc_206558
	bsr.w sub_2065c4
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_2065ba
loc_206558:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206de2).l
	tst.w d1
	bpl.s loc_2065b6
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_2065a0
	bsr.w sub_2065c4
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2065ea
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_2065a0:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_2065ba
loc_2065b6:
	addq.w #$2,$c(a0)
loc_2065ba:
	lea (dat_238e82).l,a1
	bra.w sub_205d26

sub_2065c4:
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

sub_2065ea:
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
	bra.s loc_2065ba
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_2065ba
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206634(pc,d0.w),d0
	jmp dat_206634(pc,d0.w)
dat_206634:
	dc.b $00,$06,$00,$42,$00,$5c
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$21f6f0,$4(a0)
	move.w #$298,$2(a0)
	move.b $28(a0),$1c(a0)
	moveq #$d,d0
	move.w #$a2,d0
	cmpi.b #$2,$28(a0)
	bcs.s loc_206670
	move.w #$a1,d0
loc_206670:
	jsr (sub_2025aa).l
	move.w ($f646).w,$c(a0)
	addq.w #$4,$c(a0)
	lea (dat_21f6d8).l,a1
	bsr.w sub_205d26
	jmp (sub_203ac4).l
	jmp (sub_203b70).l
	.incbin 26262, 272
dat_2067a6:
	.incbin 26534, 44
loc_2067d2:
	bclr.b #$7,($ff156b).l
	beq.s loc_206820
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206822(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2067f6:
	move.l (a1)+,(a2)+
	dbf d0,loc_2067f6
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206820:
	rts
dat_206822:
	.incbin 26658, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20684a(pc,d0.w),d0
	jsr dat_20684a(pc,d0.w)
	jmp (sub_203ac4).l
dat_20684a:
	dc.b $00,$04,$00,$1c
	ori.b #$4,$1(a0)
	move.w #$8280,$2(a0)
	move.l #$2068da,$4(a0)
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$a0,d0
	moveq #$0,d1
	move.b $2a(a0),d1
	addq.b #$1,d1
	cmpi.b #$2,d1
	bcs.s loc_20687e
	moveq #$0,d1
loc_20687e:
	move.b d1,$2a(a0)
	move.b dat_2068a4(pc,d1.w),d1
	ext.w d1
	add.w d1,d0
	move.w d0,$8(a0)
	move.w ($f646).w,$c(a0)
	addq.w #$2,$c(a0)
	lea (dat_2068a6).l,a1
	jmp (sub_205d26).l
dat_2068a4:
	dc.b $a0,$60
dat_2068a6:
	.incbin 26790, 564

sub_206ada:
	rts
loc_206adc:
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
	bne.s loc_206b96
	move.b ($ff1593).l,($ff195b).l
loc_206b96:
	tst.b ($ff1522).l
	bpl.s loc_206bac
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206bac:
	rts

sub_206bae:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206adc
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
	bne.s loc_206c68
	move.b ($ff1591).l,($ff195b).l
loc_206c68:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c8a
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c8a:
	tst.b ($ff1522).l
	bpl.s loc_206ca0
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206ca0:
	rts

sub_206ca2:
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
	bpl.s loc_206cde
	move.b d1,d0
	bpl.s loc_206cd8
	subq.b #$1,d0
loc_206cd8:
	addi.b #$20,d0
	bra.s loc_206ce8
loc_206cde:
	move.b d1,d0
	bpl.s loc_206ce4
	addq.b #$1,d0
loc_206ce4:
	addi.b #$1f,d0
loc_206ce8:
	andi.b #$c0,d0
	beq.w loc_206db8
	cmpi.b #$80,d0
	beq.w loc_206f54
	andi.b #$38,d1
	bne.s loc_206d00
	addq.w #$8,d2
loc_206d00:
	cmpi.b #$40,d0
	beq.w loc_20702a
	bra.w loc_206e8c

sub_206d0c:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206fb2
	cmpi.b #$80,d0
	beq.w sub_206edc
	cmpi.b #$c0,d0
	beq.w loc_206e1c

sub_206d34:
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
loc_206d98:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206da6
	move.b ($f768).w,d3
	exg d0,d1
loc_206da6:
	btst.l #$0,d3
	beq.s loc_206dae
	move.b d2,d3
loc_206dae:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206db8:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201068).l
	move.b #$0,d2
loc_206dd4:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206de0
	move.b d2,d3
loc_206de0:
	rts

sub_206de2:
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
	beq.s loc_206e1a
	move.b #$0,d3
loc_206e1a:
	rts
loc_206e1c:
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
	bra.w loc_206d98

sub_206e84:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e8c:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b #$c0,d2
	bra.w loc_206dd4
	.incbin 28332, 16
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206eda
	move.b #$c0,d3
loc_206eda:
	rts

sub_206edc:
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
	bra.w loc_206d98

sub_206f4c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f54:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201068).l
	move.b #$80,d2
	bra.w loc_206dd4
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
	beq.s loc_206fb0
	move.b #$80,d3
loc_206fb0:
	rts
loc_206fb2:
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
	bra.w loc_206d98

sub_207022:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20702a:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011d8).l
	move.b #$40,d2
	bra.w loc_206dd4
	.incbin 28750, 48

sub_20707e:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_2070a2
	addi.w #$c,d3
	moveq #$a,d5
loc_2070a2:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_2070b0:
	tst.b $1(a1)
	bpl.s loc_2070bc
	move.b $20(a1),d0
	bne.s loc_2070c8
loc_2070bc:
	lea $40(a1),a1
	dbf d6,loc_2070b0
	moveq #$0,d0
	rts
loc_2070c8:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207456).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070f0
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070f6
	bra.w loc_2070bc
loc_2070f0:
	cmp.w d4,d0
	bhi.w loc_2070bc
loc_2070f6:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_20710e
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_207114
	bra.w loc_2070bc
loc_20710e:
	cmp.w d5,d0
	bhi.w loc_2070bc
loc_207114:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207188
	cmpi.b #$c0,d1
	beq.w loc_207368
	tst.b d1
	bmi.w sub_207252
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_20714c
	cmpi.w #$5a,$30(a0)
	bcc.w loc_20714a
	addq.b #$2,$24(a1)
loc_20714a:
	rts
loc_20714c:
	tst.w $12(a0)
	bpl.s loc_207176
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207186
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207186
	addq.b #$4,$25(a1)
	rts
loc_207176:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207186
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207186:
	rts

sub_207188:
	tst.b ($ff1521).l
	bne.s loc_2071a2
	tst.b ($ff151f).l
	bne.s loc_2071a2
	cmpi.b #$2,$1c(a0)
	bne.w sub_207252
loc_2071a2:
	tst.b $21(a1)
	beq.s loc_2071cc
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2071ca
	bset.b #$7,$22(a1)
loc_2071ca:
	rts
loc_2071cc:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071e4
	moveq #$6,d0
loc_2071e4:
	move.w d0,$3e(a1)
	move.w dat_207244(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2071fe
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2071fe:
	bsr.w sub_20a1ea
	move.w #$96,d0
	jsr (sub_2025aa).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207234
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20723c
	neg.w $12(a0)
	rts
loc_207234:
	addi.w #$100,$12(a0)
	rts
loc_20723c:
	subi.w #$100,$12(a0)
	rts
dat_207244:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207252:
	tst.b ($ff1521).l
	bne.s loc_207262
	tst.b ($ff151f).l
	beq.s loc_207266
loc_207262:
	moveq #$ffffffff,d0
	rts
loc_207266:
	nop
	tst.w $30(a0)
	bne.s loc_207262
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_20729c
	tst.w ($ff1512).l
	beq.w loc_207306
	jsr (sub_207a98).l
	bne.s loc_20729c
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20729c:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2072b2
	move.b #$0,($ff156f).l
loc_2072b2:
	move.b #$4,$24(a0)
	bsr.w sub_20537c
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072e2
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072e2:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072f0
	neg.w $10(a0)
loc_2072f0:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207306:
	tst.w ($ff1588).l
	bne.w loc_20729c

sub_207310:
	tst.w ($ff1906).l
	bne.s loc_207364
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20537c
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
loc_207364:
	moveq #$ffffffff,d0
	rts
loc_207368:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2073f0
	cmpi.b #$23,d1
	beq.w loc_2073f0
	cmpi.b #$33,d1
	beq.w loc_207448
	cmpi.b #$3a,d1
	beq.w loc_207448
	cmpi.b #$3b,d1
	beq.w loc_207448
	tst.b ($f7aa).w
	beq.w loc_2073ee
	cmpi.b #$1,($f7aa).w
	beq.s loc_2073b8
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073da
	cmpi.b #$5,($f7aa).w
	beq.s loc_2073e8
loc_2073b8:
	cmpi.b #$3c,d1
	blt.s loc_2073ee
	cmpi.b #$3f,d1
	bgt.s loc_2073ee
	bsr.w sub_207188
	tst.b $20(a1)
	bne.s loc_2073d2
	addq.b #$3,$21(a1)
loc_2073d2:
	clr.b $20(a1)
	bra.w loc_2073f0
loc_2073da:
	cmpi.b #$3f,d1
	beq.s loc_2073fc
	cmpi.b #$3e,d1
	beq.s loc_2073f6
	bra.s loc_2073ee
loc_2073e8:
	cmpi.b #$3d,d1
	beq.s loc_2073f6
loc_2073ee:
	rts
loc_2073f0:
	addq.b #$1,$21(a1)
	rts
loc_2073f6:
	bsr.w sub_207252
	bra.s loc_2073f0
loc_2073fc:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207446
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$ad,d0
	jsr (sub_2025aa).l
	jsr (sub_206166).l
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207446
	neg.w $10(a0)
loc_207446:
	rts
loc_207448:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207454
	addq.b #$1,$21(a1)
loc_207454:
	rts
dat_207456:
	.incbin 29782, 126
loc_2074d4:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2074ea
	move.l #$4000,(dat_207664).l
	bra.s loc_20750a
loc_2074ea:
	addi.l #$2000,(dat_207664).l
	cmpi.l #$80000,(dat_207664).l
	bls.s loc_20750a
	move.l #$80000,(dat_207664).l
loc_20750a:
	move.l (dat_207664).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20751c
	sub.l d0,$c(a0)
loc_20751c:
	btst.b #$1,($f604).w
	beq.s loc_207528
	add.l d0,$c(a0)
loc_207528:
	btst.b #$2,($f604).w
	beq.s loc_207534
	sub.l d0,$8(a0)
loc_207534:
	btst.b #$3,($f604).w
	beq.s loc_207540
	add.l d0,$8(a0)
loc_207540:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e80).l
	move.w (a1),($ff194e).l
	lea (dat_207668).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207582
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20757c
	move.b #$0,d1
loc_20757c:
	move.b d1,($ff1904).l
loc_207582:
	btst.b #$7,($f605).w
	beq.s loc_2075a2
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20759c
	add.b (a2),d1
loc_20759c:
	move.b d1,($ff1904).l
loc_2075a2:
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
	beq.s loc_20762e
	bsr.w sub_207a98
	bne.s loc_20762e
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
loc_20762e:
	btst.b #$4,($f605).w
	beq.s loc_20765e
	move.b #$0,($ff1906).l
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20765e:
	jmp (sub_203ac4).l
dat_207664:
	dc.b $00,$00,$40,$00
dat_207668:
	.incbin 30312, 542

sub_207886:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207894:
	clr.l (a2)+
	dbf d0,loc_207894
	rts

sub_20789c:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2078aa(pc,d0.w),d0
	jmp dat_2078aa(pc,d0.w)
dat_2078aa:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207b4a).l,a0
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
	bcc.s loc_2078e8
	moveq #$0,d6
loc_2078e8:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2078f0:
	cmp.w (a0),d6
	bls.s loc_207902
	tst.b $4(a0)
	bpl.s loc_2078fe
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2078fe:
	addq.w #$8,a0
	bra.s loc_2078f0
loc_207902:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207922
loc_207910:
	cmp.w (a0),d6
	bls.s loc_207922
	tst.b $4(a0)
	bpl.s loc_20791e
	addq.b #$1,$1(a2)
loc_20791e:
	addq.w #$8,a0
	bra.s loc_207910
loc_207922:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207a0c
	bge.s loc_2079b2
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20798e
loc_20795c:
	cmp.w -$8(a0),d6
	bge.s loc_20798e
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207972
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207972:
	bsr.w sub_207a30
	bne.s loc_20797c
	subq.w #$8,a0
	bra.s loc_20795c
loc_20797c:
	tst.b $4(a0)
	bpl.s loc_20798c
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20798c:
	addq.w #$8,a0
loc_20798e:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20799a:
	cmp.w -$8(a0),d6
	bgt.s loc_2079ac
	tst.b -$4(a0)
	bpl.s loc_2079a8
	subq.b #$1,(a2)
loc_2079a8:
	subq.w #$8,a0
	bra.s loc_20799a
loc_2079ac:
	move.l a0,($f770).w
	rts
loc_2079b2:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2079c6:
	cmp.w (a0),d6
	bls.s loc_2079e8
	tst.b $4(a0)
	bpl.s loc_2079d4
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2079d4:
	bsr.w sub_207a30
	beq.s loc_2079c6
	tst.b $4(a0)
	bpl.s loc_2079e8
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2079e8:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207a08
loc_2079f6:
	cmp.w (a0),d6
	bls.s loc_207a08
	tst.b $4(a0)
	bpl.s loc_207a04
	addq.b #$1,$1(a2)
loc_207a04:
	addq.w #$8,a0
	bra.s loc_2079f6
loc_207a08:
	move.l a0,($f774).w
loc_207a0c:
	rts

sub_207a0e:
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

sub_207a30:
	bsr.s sub_207a0e
	beq.s loc_207a42
	tst.b $4(a0)
	bpl.s loc_207a48
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207a48
loc_207a42:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207a48:
	bsr.w sub_207a98
	bne.s loc_207a96
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
	bpl.s loc_207a78
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207a78:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207a8a
	nop
	nop
	nop
	nop
loc_207a8a:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207a96:
	rts

sub_207a98:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207aa0:
	tst.b (a1)
	beq.s loc_207aac
	lea $40(a1),a1
	dbf d0,loc_207aa0
loc_207aac:
	rts

sub_207aae:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207acc
loc_207ac0:
	tst.b (a1)
	beq.s loc_207acc
	lea $40(a1),a1
	dbf d0,loc_207ac0
loc_207acc:
	rts
loc_207ace:
	move.w $8(a0),d0
loc_207ad2:
	tst.b $1(a0)
	bmi.s loc_207b3c
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207b3c
loc_207af0:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207b32
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207b2a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207b22
	moveq #$0,d1
	bra.s loc_207b2a
loc_207b22:
	cmpi.w #$3,d1
loc_207b26:
	bcs.s loc_207b2a
	moveq #$2,d1
loc_207b2a:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207b32:
	jsr (sub_203b70).l
	moveq #$1,d0
	rts
loc_207b3c:
	btst.b #$7,($ff152e).l
	bne.s loc_207af0
	moveq #$0,d0
	rts
dat_207b4a:
	.incbin 31562, 2906

sub_2086a4:
	btst.b #$3,$22(a0)
	beq.s loc_208714
	btst.b #$3,$22(a1)
	beq.s loc_208714
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208714
	tst.b $2a(a1)
	beq.s loc_2086d6
	move.w #$ab,d0
	jsr (sub_2025aa).l
loc_2086d6:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208702
	cmpi.b #$17,$1c(a1)
	beq.s loc_208702
	bclr.b #$0,$2c(a1)
loc_208702:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208714
	bclr.b #$1,$22(a1)
loc_208714:
	rts

sub_208716:
	cmpi.b #$4,$24(a1)
	bne.s loc_208728
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208728:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208788
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20874a
	bclr.b #$3,$22(a0)
	bra.w sub_2086a4
loc_20874a:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208788
	tst.b ($ff195b).l
	beq.s loc_208772
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208782
loc_208772:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208782:
	move.b #$0,$1c(a1)
loc_208788:
	bset.b #$3,$22(a1)
	beq.s loc_2087aa
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2087e2
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_2087aa:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2087d6
	cmpi.b #$2,$24(a0)
	beq.s loc_2087dc
loc_2087d6:
	move.w $10(a1),$14(a1)
loc_2087dc:
	bclr.b #$1,$22(a1)
loc_2087e2:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_2087f2:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208aa6
	btst.b #$6,$2c(a1)
	bne.w loc_208aa6
	cmpi.b #$6,$24(a1)
	bcc.w loc_208aa6
	tst.b $0(a1)
	beq.w loc_208aa6
	tst.b $1(a0)
	bpl.w loc_208aa6
	tst.b ($ff1906).l
	bne.w loc_208aa6
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208aa6
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208aa6
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208860
	btst.b #$3,$22(a0)
	bne.s loc_208872
	bra.w loc_208aa6
loc_208860:
	cmpi.b #$1,$25(a0)
	bne.s loc_208872
	tst.w $12(a1)
	beq.s loc_208872
	bmi.w loc_208aa6
loc_208872:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208aa6
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208aa6
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2088a8
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2088a8:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2088b6
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2088b6:
	cmp.w d4,d5
	bcs.w loc_20894a
	cmpi.b #$1,$25(a0)
	beq.w loc_208aa6
	cmpi.b #$a,$0(a0)
	bne.s loc_2088d8
	btst.b #$1,$22(a1)
	bne.w loc_208aa6
loc_2088d8:
	cmpi.b #$4,d5
	bls.w loc_208aa6
	bsr.w sub_208af6
	move.l d0,-(a7)
	bsr.w sub_2086a4
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208902
	tst.w $10(a1)
	beq.s loc_208932
	bpl.s loc_20890a
	bra.s loc_208932
loc_208902:
	tst.w $10(a1)
	beq.s loc_208932
	bpl.s loc_208932
loc_20890a:
	bsr.w sub_208ab6
	btst.b #$1,$22(a1)
	bne.s loc_208928
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208928:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208932:
	bsr.w sub_208b6c
	bsr.w sub_208ab6
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_20894a:
	cmpi.b #$19,$0(a0)
	bne.s loc_20895c
	btst.b #$2,$22(a1)
	bne.w loc_208aa6
loc_20895c:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208972
	bmi.w loc_208a42
loc_208972:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208984
	tst.w $12(a1)
	beq.s loc_208984
	bmi.w loc_208aa6
loc_208984:
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
	beq.s loc_2089d0
	bpl.s loc_2089b0
	neg.b d0
loc_2089b0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ca2).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2089d0
	tst.w $10(a0)
	bpl.s loc_2089cc
	neg.w d1
loc_2089cc:
	add.w d1,$8(a1)
loc_2089d0:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208a3a
	tst.w $12(a0)
	bmi.s loc_208a0e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d34).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a0e
	add.w d1,$c(a1)
	bra.w loc_208aa6
loc_208a0e:
	tst.w $12(a0)
	bpl.s loc_208a3a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f4c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a3a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207310).l
	movem.l (a7)+,a0-a1
	bra.s loc_208aa6
loc_208a3a:
	bsr.w sub_208716
	moveq #$1,d0
	rts
loc_208a42:
	cmpi.b #$1,$25(a0)
	beq.s loc_208aa6
	cmpi.b #$9,$0(a0)
	beq.s loc_208aa6
	cmpi.b #$a,$0(a0)
	bne.s loc_208a6c
	cmpi.b #$2,$25(a0)
	beq.s loc_208a8c
	btst.b #$1,$1(a0)
	bne.s loc_208a8c
	bra.s loc_208aa6
loc_208a6c:
	btst.b #$1,$22(a1)
	bne.s loc_208a8c
	tst.w $12(a0)
	beq.s loc_208a8c
	bmi.s loc_208a8c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207310).l
	movem.l (a7)+,a0-a1
loc_208a8c:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208b6c
	bsr.w sub_2086a4
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208aa6:
	bsr.w sub_208b6c
	bsr.w sub_2086a4
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208ab6:
	tst.w $10(a0)
	beq.s loc_208af4
	cmpi.b #$a,$0(a0)
	beq.s loc_208af4
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208ad0
	neg.b d0
loc_208ad0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ca2).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208af4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207310).l
	movem.l (a7)+,a0-a1
loc_208af4:
	rts

sub_208af6:
	cmpi.b #$a,$0(a0)
	bne.s loc_208b06
	move.b #$0,$20(a1)
	rts
loc_208b06:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208b5a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208b6a
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208b28
	tst.w $10(a2)
	beq.s loc_208b6a
loc_208b28:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208b3a
	cmp.w $8(a2),d1
	bcs.s loc_208b6a
	bra.s loc_208b40
loc_208b3a:
	cmp.w $8(a2),d1
	bcc.s loc_208b6a
loc_208b40:
	cmpi.b #$15,$0(a0)
	beq.s loc_208b6a
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207310).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208b5a:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208b6a:
	rts

sub_208b6c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208b86
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208b86
	move.b #$0,$20(a1)
loc_208b86:
	rts
	.incbin 35720, 374
loc_208cfe:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d0c(pc,d0.w),d0
	jmp dat_208d0c(pc,d0.w)
dat_208d0c:
	.incbin 36108, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208cfe
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208d62
	tst.b $1(a0)
	bpl.s loc_208d6a
loc_208d62:
	move.w dat_208dbc(pc,d0.w),d1
	jsr dat_208dbc(pc,d1.w)
loc_208d6a:
	bsr.w sub_203ac4
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208d9c
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208d9c:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b70
	rts
dat_208dbc:
	.incbin 36284, 26
	addq.b #$2,$24(a0)
	move.l #$20913e,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208e2c
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209144,$4(a0)
	bra.s loc_208e6e
loc_208e2c:
	btst.l #$3,d0
	beq.s loc_208e5a
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20918e,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c242).l
	move.l (a7)+,d0
	bra.s loc_208e6e
loc_208e5a:
	btst.b #$1,$1(a0)
	beq.s loc_208e6e
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208e6e:
	btst.l #$1,d0
	beq.s loc_208e7a
	bset.b #$5,$2(a0)
loc_208e7a:
	andi.w #$2,d0
	move.w dat_208e86(pc,d0.w),$30(a0)
	rts
dat_208e86:
	.incbin 36486, 918
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20922a(pc,d0.w),d1
	jmp dat_20922a(pc,d1.w)
dat_20922a:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209234:
	.incbin 37428, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20928c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209284
	moveq #$0,d1
	bra.s loc_20928c
loc_209284:
	cmpi.w #$3,d1
	bcs.s loc_20928c
	moveq #$2,d1
loc_20928c:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2092a8
	moveq #$6,d1
loc_2092a8:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209234).l,a1
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
	beq.s loc_2092f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2092f0
	moveq #$0,d0
	bra.s loc_2092f8
loc_2092f0:
	cmpi.w #$3,d0
	bcs.s loc_2092f8
	moveq #$2,d0
loc_2092f8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2093c6
	dbf d0,loc_2092f8
	bclr.b #$7,(a2)
	bra.s loc_20934e
loc_20930a:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209336
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20932e
	moveq #$0,d0
	bra.s loc_209336
loc_20932e:
	cmpi.w #$3,d0
	bcs.s loc_209336
	moveq #$2,d0
loc_209336:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2093c6
	dbf d0,loc_209336
	bclr.b #$7,(a2)
	bsr.w sub_207aae
	bne.w loc_2093d2
loc_20934e:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209698,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2093a4
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_2093a4
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_2093a4:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2093c6:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20930a
loc_2093d2:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2093f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2093f0
	moveq #$0,d0
	bra.s loc_2093f8
loc_2093f0:
	cmpi.w #$3,d0
	bcs.s loc_2093f8
	moveq #$2,d0
loc_2093f8:
	lea $1(a2),a3
loc_2093fc:
	btst.b #$0,-(a3)
	bne.w sub_203b70
	dbf d0,loc_2093fc
	tst.b $1(a0)
	bmi.s loc_20942c
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_2094a6
loc_20942c:
	tst.w ($ff190e).l
	bne.s loc_20943c
	move.b ($ff1913).l,$1a(a0)
loc_20943c:
	bra.w sub_203ac4
	.incbin 37952, 102
loc_2094a6:
	bra.w sub_203b70
	.incbin 38058, 888
loc_209822:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209850(pc,d0.w),d0
	jsr dat_209850(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20984e
	cmpi.w #$5a,($f786).w
	bcs.s loc_209848
	btst.b #$0,($ff1505).l
	bne.s loc_20984e
loc_209848:
	jmp (sub_203ac4).l
loc_20984e:
	rts
dat_209850:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$209e2a,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209884
	move.b #$13,$1a(a0)
loc_209884:
	rts
loc_209886:
	tst.b ($ff0f01).l
	beq.s loc_209894
	jmp (sub_203b70).l
loc_209894:
	cmpi.b #$a,$28(a0)
	beq.w loc_209822
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2098b8(pc,d0.w),d0
	jsr dat_2098b8(pc,d0.w)
	jsr (sub_203ac4).l
	jmp (loc_207ace).l
dat_2098b8:
	.incbin 39096, 282

sub_2099d2:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209a0a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209a02
	moveq #$0,d1
	bra.s loc_209a0a
loc_209a02:
	cmpi.w #$3,d1
	bcs.s loc_209a0a
	moveq #$2,d1
loc_209a0a:
	add.w d1,d0
	rts

sub_209a0e:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209a30
	tst.b ($ff1956).l
	beq.s loc_209a28
	tst.b $29(a0)
	bne.s loc_209a30
	rts
loc_209a28:
	tst.b $29(a0)
	beq.s loc_209a30
	rts
loc_209a30:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2087f2).l
	tst.b $28(a0)
	bne.s loc_209a52
	tst.b ($ff0f01).l
	beq.s loc_209a52
	jmp (loc_207ace).l
loc_209a52:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209886
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209a6a(pc,d0.w),d1
	jmp dat_209a6a(pc,d1.w)
dat_209a6a:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209e2a,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209ab4
	tst.b $29(a0)
	bne.s loc_209ab4
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209ab4:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_2099d2
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209ae0
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209ae0:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209b3a
	move.b $25(a0),d0
	beq.s loc_209b1a
	bsr.w sub_203a0c
	jsr (sub_206de2).l
	tst.w d1
	bpl.w loc_209b28
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209b28
loc_209b1a:
	tst.b $1(a0)
	bpl.s loc_209b28
	lea ($d000).w,a1
	bsr.w sub_209a0e
loc_209b28:
	tst.w ($ff190e).l
	bne.s loc_209b3a
	lea (dat_209da2).l,a1
	bsr.w sub_205d26
loc_209b3a:
	bsr.w sub_203ac4
	jmp (loc_207ace).l
	.incbin 39748, 252
loc_209c40:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205ce6).l
	.incbin 40022, 22
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209c98
	bset.b #$1,($ff150d).l
	beq.w loc_209c40
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209c98
	bset.b #$2,($ff150d).l
	beq.w loc_209c40
loc_209c98:
	move.w #$95,d0
	jmp (sub_2025aa).l
	.incbin 40098, 256
dat_209da2:
	.incbin 40354, 586
loc_209fec:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a000(pc,d0.w),d0
	jsr dat_20a000(pc,d0.w)
	jmp (sub_203ac4).l
dat_20a000:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a040,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a03a
	jmp (sub_203b70).l
loc_20a03a:
	subq.w #$2,$c(a0)
	rts
	.incbin 41024, 82
	tst.b $28(a0)
	bmi.w loc_209fec
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a0a8(pc,d0.w),d0
	jmp dat_20a0a8(pc,d0.w)
dat_20a0a8:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a142,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a0d8
	move.b #$3,$1a(a0)
	bra.s loc_20a0f8
loc_20a0d8:
	tst.w ($ff1588).l
	beq.s loc_20a0e6
	move.b #$2,$1a(a0)
loc_20a0e6:
	tst.b $28(a0)
	beq.s loc_20a0f8
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a0f8:
	tst.b $28(a0)
	bne.s loc_20a13c
	tst.b $29(a0)
	beq.s loc_20a128
	tst.w ($ff1512).l
	beq.s loc_20a114
	bclr.b #$5,$2(a0)
	bra.s loc_20a13c
loc_20a114:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a13c
	eori.b #$20,$2(a0)
	bra.s loc_20a13c
loc_20a128:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a13c
	move.b #$2,$1a(a0)
loc_20a13c:
	jmp (sub_203ac4).l
	.incbin 41282, 168

sub_20a1ea:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a206
	move.l d1,(a3)
loc_20a206:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a230
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205ce6).l
loc_20a230:
	rts
loc_20a232:
	tst.w ($ff1588).l
	beq.s loc_20a288
	bsr.w sub_20a484
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
	lea (dat_20a5e4).l,a2
	moveq #$2,d6
	bsr.w sub_20a63c
	bra.w loc_20a2e2
loc_20a288:
	tst.b ($ff1511).l
	beq.s loc_20a2ac
	bpl.s loc_20a296
	bsr.w sub_20a42e
loc_20a296:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a51e
loc_20a2ac:
	tst.b ($ff150f).l
	beq.s loc_20a2e2
	bpl.s loc_20a2ba
	bsr.w sub_20a41a
loc_20a2ba:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a2de
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a2de:
	bsr.w sub_20a514
loc_20a2e2:
	tst.w ($ff1588).l
	bne.w loc_20a38e
	tst.b ($ff1510).l
	beq.w loc_20a38e
	tst.w ($f63a).w
	bne.w loc_20a38e
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a3ec
	tst.b ($f7cc).w
	bne.s loc_20a338
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a338
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a338
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a338
	move.b #$9,(a1)
loc_20a338:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a62a
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a634
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a38a
	move.w #$63,d1
loc_20a38a:
	bsr.w sub_20a634
loc_20a38e:
	tst.b ($ff150e).l
	beq.s loc_20a3a0
	clr.b ($ff150e).l
	bsr.w sub_20a60a
loc_20a3a0:
	tst.b ($f7d6).w
	beq.s loc_20a3ea
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a3c0
	move.l #$6d400001,d0
loc_20a3c0:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a4a2
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a3e0
	move.l #$6e800001,d0
loc_20a3e0:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a4a2
loc_20a3ea:
	rts
loc_20a3ec:
	btst.b #$7,($ff152e).l
	bne.s loc_20a418
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207310
	move.b #$1,($ff150c).l
loc_20a418:
	rts

sub_20a41a:
	move.l #$73600002,($c00004).l
	lea dat_20a480(pc),a2
	move.w #$2,d2
	bra.s loc_20a44a

sub_20a42e:
	lea ($c00000).l,a6
	bsr.w sub_20a60a
	move.l #$70600002,($c00004).l
	lea dat_20a478(pc),a2
	move.w #$6,d2
loc_20a44a:
	lea (dat_238442).l,a1
loc_20a450:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a46c
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a460:
	move.l (a3)+,(a6)
	dbf d1,loc_20a460
loc_20a466:
	dbf d2,loc_20a450
	rts
loc_20a46c:
	move.l #$0,(a6)
	dbf d1,loc_20a46c
	bra.s loc_20a466
dat_20a478:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a480:
	dc.b $ff,$ff,$00,$00

sub_20a484:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a600
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a600

sub_20a4a2:
	lea (dat_20a5dc).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a4b2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a4b6:
	sub.l d3,d1
	bcs.s loc_20a4be
	addq.w #$1,d2
	bra.s loc_20a4b6
loc_20a4be:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a4c8
	move.w #$1,d4
loc_20a4c8:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a4d4
	tst.w d6
	bne.s loc_20a506
loc_20a4d4:
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
loc_20a4fa:
	addi.l #$400000,d0
	dbf d6,loc_20a4b2
	rts
loc_20a506:
	moveq #$f,d5
loc_20a508:
	move.l #$0,(a6)
	dbf d5,loc_20a508
	bra.s loc_20a4fa

sub_20a514:
	lea (dat_20a5e4).l,a2
	moveq #$2,d6
	bra.s loc_20a526

sub_20a51e:
	lea (dat_20a5d8).l,a2
	moveq #$5,d6
loc_20a526:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a52e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a532:
	sub.l d3,d1
	bcs.s loc_20a53a
	addq.w #$1,d2
	bra.s loc_20a532
loc_20a53a:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a544
	move.w #$1,d4
loc_20a544:
	tst.w d4
	beq.s loc_20a572
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
loc_20a572:
	addi.l #$400000,d0
	dbf d6,loc_20a52e
	rts
	.incbin 42366, 90
dat_20a5d8:
	dc.b $00,$01,$86,$a0
dat_20a5dc:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a5e4:
	dc.b $00,$00,$00,$64
dat_20a5e8:
	dc.b $00,$00,$00,$0a
dat_20a5ec:
	dc.b $00,$00,$00,$01
dat_20a5f0:
	.incbin 42480, 16

sub_20a600:
	moveq #$3,d6
	lea (dat_20a5f0).l,a2
	bra.s sub_20a63c

sub_20a60a:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a620
	moveq #$9,d1
loc_20a620:
	lea (dat_20a5ec).l,a2
	moveq #$0,d6
	bra.s sub_20a63c

sub_20a62a:
	lea (dat_20a5ec).l,a2
	moveq #$0,d6
	bra.s sub_20a63c

sub_20a634:
	lea (dat_20a5e8).l,a2
	moveq #$1,d6

sub_20a63c:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a644:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a648:
	sub.l d3,d1
	bcs.s loc_20a650
	addq.w #$1,d2
	bra.s loc_20a648
loc_20a650:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a65a
	move.w #$1,d4
loc_20a65a:
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
	dbf d6,loc_20a644
	rts
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a6a2(pc,d0.w),d1
	jmp dat_20a6a2(pc,d1.w)
dat_20a6a2:
	dc.b $00,$0c,$00,$6a,$00,$84,$01,$3a
	dc.b $01,$58,$01,$5c
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	move.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_20a6f2
	addq.b #$8,$24(a0)
	andi.w #$7f,d0
	move.b d0,$32(a0)
	move.b d0,$33(a0)
	move.b #$6,$1c(a0)
	bra.w loc_20a7fe
loc_20a6f2:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	jsr (sub_202398).l
	move.b d0,$26(a0)
	lea (dat_20a996).l,a1
	jsr (sub_205d26).l
	cmpi.b #$6,$1a(a0)
	bne.s loc_20a726
	move.b #$1,$2e(a0)
loc_20a726:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a73e
loc_20a730:
	move.b #$6,$24(a0)
	addq.b #$3,$1c(a0)
	bra.w loc_20a7dc
loc_20a73e:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_21f844).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	tst.b $2e(a0)
	beq.s loc_20a7c6
	bsr.w sub_20a95c
	beq.s loc_20a7c6
	bsr.w sub_206166
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
	beq.w loc_20a730
	bclr.b #$2,$22(a6)
	move.b #$13,$16(a6)
	move.b #$9,$17(a6)
	subq.w #$5,$c(a6)
	bra.w loc_20a730
loc_20a7c6:
	bsr.w sub_203a6e
	tst.b $1(a0)
	bpl.s loc_20a7d6
	jmp (sub_203ac4).l
loc_20a7d6:
	jmp (sub_203b70).l
loc_20a7dc:
	lea (dat_20a996).l,a1
	jsr (sub_205d26).l
	tst.b $1(a0)
	bpl.s loc_20a7f4
	jmp (sub_203ac4).l
loc_20a7f4:
	jmp (sub_203b70).l
	bra.w sub_203b70
loc_20a7fe:
	tst.w $36(a0)
	bne.s loc_20a860
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcc.w loc_20a912
	tst.b $1(a0)
	bpl.w loc_20a912
	subq.w #$1,$38(a0)
	bpl.w loc_20a906
	move.w #$1,$36(a0)
loc_20a826:
	jsr (sub_202398).l
	move.w d0,d1
	andi.w #$7,d0
	cmpi.w #$6,d0
	bcc.s loc_20a826
	move.b d0,$34(a0)
	andi.w #$c,d1
	lea (dat_20a94a).l,a1
	adda.w d1,a1
	move.l a1,$3c(a0)
	subq.b #$1,$32(a0)
	bpl.s loc_20a85e
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_20a85e:
	bra.s loc_20a868
loc_20a860:
	subq.w #$1,$38(a0)
	bpl.w loc_20a906
loc_20a868:
	jsr (sub_202398).l
	andi.w #$1f,d0
	move.w d0,$38(a0)
	tst.b $1(a0)
	bpl.s loc_20a8ea
	bsr.w sub_207a98
	bne.s loc_20a8ea
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
	beq.s loc_20a8ea
	jsr (sub_202398).l
	andi.w #$3,d0
	bne.s loc_20a8d6
	bset.b #$6,$36(a0)
	bne.s loc_20a8ea
	move.b #$2,$28(a1)
loc_20a8d6:
	tst.b $34(a0)
	bne.s loc_20a8ea
	bset.b #$6,$36(a0)
	bne.s loc_20a8ea
	move.b #$2,$28(a1)
loc_20a8ea:
	subq.b #$1,$34(a0)
	bpl.s loc_20a906
	jsr (sub_202398).l
	andi.w #$7f,d0
	addi.w #$80,d0
	add.w d0,$38(a0)
	clr.w $36(a0)
loc_20a906:
	lea (dat_20a996).l,a1
	jsr (sub_205d26).l
loc_20a912:
	tst.b $1(a0)
	bmi.s loc_20a936
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b70
loc_20a936:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.w sub_203ac4
	bclr.b #$7,$1(a0)
	rts
dat_20a94a:
	.incbin 43338, 18

sub_20a95c:
	tst.b $2c(a6)
	bmi.s loc_20a992
	move.w $8(a6),d0
	move.w $8(a0),d1
	subi.w #$10,d1
	cmp.w d0,d1
	bcc.s loc_20a992
	addi.w #$20,d1
	cmp.w d0,d1
	bcs.s loc_20a992
	move.w $c(a6),d0
	move.w $c(a0),d1
	cmp.w d0,d1
	bcc.s loc_20a992
	addi.w #$10,d1
	cmp.w d0,d1
	bcs.s loc_20a992
	moveq #$1,d0
	rts
loc_20a992:
	moveq #$0,d0
	rts
dat_20a996:
	.incbin 43414, 2958
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b532(pc,d0.w),d0
	jmp dat_20b532(pc,d0.w)
dat_20b532:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20bc30,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20bbf0).l,a2
loc_20b580:
	jsr (sub_207a98).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20bc30,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b5d2
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b5d2:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b580
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b5fa
	bge.s loc_20b5f0
	neg.w d0
loc_20b5f0:
	add.w d0,$a(a0)
	jmp (sub_203ac4).l
loc_20b5fa:
	addq.b #$4,$24(a0)
	jmp (sub_203ac4).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b61e
	bge.s loc_20b614
	neg.w d0
loc_20b614:
	add.w d0,$8(a0)
	jmp (sub_203ac4).l
loc_20b61e:
	addq.b #$4,$24(a0)
	jmp (sub_203ac4).l
	tst.b $1e(a0)
	beq.s loc_20b638
	subq.b #$1,$1e(a0)
	jmp (sub_203ac4).l
loc_20b638:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b652
	bge.s loc_20b648
	neg.w d0
loc_20b648:
	add.w d0,$a(a0)
	jmp (sub_203ac4).l
loc_20b652:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202774).l
	tst.b $1e(a0)
	beq.s loc_20b674
	subq.b #$1,$1e(a0)
	jmp (sub_203ac4).l
loc_20b674:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b68e
	bge.s loc_20b684
	neg.w d0
loc_20b684:
	add.w d0,$8(a0)
	jmp (sub_203ac4).l
loc_20b68e:
	jmp (sub_203b70).l
	tst.l ($f680).w
	bne.s loc_20b6a8
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b70).l
loc_20b6a8:
	rts
	.incbin 46762, 1350
dat_20bbf0:
	.incbin 48112, 320
dat_20bd30:
	.incbin 48432, 1298

sub_20c242:
	rts
	.incbin 49732, 408
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20c3ec(pc,d0.w),d0
	jmp dat_20c3ec(pc,d0.w)
dat_20c3ec:
	.incbin 50156, 26

sub_20c406:
	movem.l d2-d3,-(a7)
	lea ($d000).w,a1
	jsr (sub_2087f2).l
	movem.l (a7)+,d2-d3
	rts
	.incbin 50202, 196
loc_20c4de:
	tst.w $12(a0)
	bpl.s loc_20c4e8
	bsr.w sub_20c406
loc_20c4e8:
	move.l $c(a0),-(a7)
	moveq #$0,d0
	move.b $3a(a0),d0
	jsr (sub_200712).l
	move.w d0,d1
	asl.w d2,d0
	asl.w d3,d1
	add.w d1,d0
	asr.w #$8,d0
	addq.b #$1,$3a(a0)
	add.w $32(a0),d0
	move.w d0,$c(a0)
	swap d0
	sub.l (a7)+,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	tst.w $12(a0)
	bmi.s loc_20c522
	bsr.w sub_20c406
loc_20c522:
	rts
	.incbin 50468, 24
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c55a(pc,d0.w),d0
	jsr dat_20c55a(pc,d0.w)
	jsr (sub_203ac4).l
	move.w $36(a0),d0
	jmp (loc_207ad2).l
dat_20c55a:
	dc.b $00,$04,$00,$46
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c5a8,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),d0
	subi.w #$50,d0
	move.w d0,$32(a0)
	move.b #$20,$19(a0)
	move.b #$60,$16(a0)
	move.b #$40,$3a(a0)
	moveq #$6,d2
	moveq #$4,d3
	bra.w loc_20c4de
	.incbin 50600, 4260
	tst.b $24(a0)
	bne.w loc_20d696
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$50a,$2(a0)
	move.l #$20d7b2,$4(a0)
	move.b #$a,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20d696:
	move.w $34(a0),d0
	beq.s loc_20d6c6
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
loc_20d6c6:
	move.b $3f(a0),$3e(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_2087f2).l
	beq.s loc_20d6e4
	bsr.w sub_20d796
loc_20d6e4:
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20d6f4
	bclr.b #$7,(a4)
	bra.s loc_20d700
loc_20d6f4:
	bsr.w sub_20d796
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20d700:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20d73a
	tst.b $1(a0)
	bpl.s loc_20d718
	move.w #$bf,d0
	jsr (sub_2025aa).l
loc_20d718:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20d72c
	addq.b #$4,$39(a0)
	bra.s loc_20d730
loc_20d72c:
	addq.w #$4,$c(a0)
loc_20d730:
	move.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20d73a:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20d75e
	subq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20d752
	subq.b #$4,$39(a0)
	bra.s loc_20d756
loc_20d752:
	subq.w #$4,$c(a0)
loc_20d756:
	clr.b $1a(a0)
	addq.b #$4,$16(a0)
loc_20d75e:
	jsr (sub_203ac4).l
	move.w $34(a0),d0
	bne.s loc_20d770
	jmp (loc_207ace).l
loc_20d770:
	movea.w d0,a1
	move.w $36(a1),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20d790
	rts
loc_20d790:
	jmp (loc_207af0).l

sub_20d796:
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
	.incbin 55218, 2518
	tst.b $28(a0)
	beq.s loc_20e192
	bra.w loc_20e3fc
loc_20e192:
	jsr (sub_20f2ba).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e1a6(pc,d0.w),d0
	jmp dat_20e1a6(pc,d0.w)
dat_20e1a6:
	.incbin 57766, 598
loc_20e3fc:
	jsr (sub_20f2ba).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e410(pc,d0.w),d0
	jmp dat_20e410(pc,d0.w)
dat_20e410:
	.incbin 58384, 614
	jsr (sub_20f302).l
	tst.b $24(a0)
	bmi.w loc_20e74a
	bne.w loc_20e7da
	ori.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$c,$16(a0)
	lea dat_20e8b4(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e6d0
	addi.w #$2000,$2(a0)
loc_20e6d0:
	lea dat_20e864(pc),a1
	btst.b #$0,$28(a0)
	beq.s loc_20e6e0
	lea dat_20e88c(pc),a1
loc_20e6e0:
	move.l a1,$4(a0)
	move.w $c(a0),$2e(a0)
	move.b $28(a0),d0
	bpl.s loc_20e72e
	subq.b #$2,$24(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	move.w $8(a0),$38(a0)
	move.l #$200,$34(a0)
	btst.l #$0,d0
	beq.s loc_20e72c
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $34(a0)
	move.l #$3000,$30(a0)
loc_20e72c:
	rts
loc_20e72e:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.l #$10000,$2a(a0)
	move.l #$100,$34(a0)
	rts
loc_20e74a:
	movea.w $3e(a0),a1
	cmpi.b #$52,$0(a1)
	bne.s loc_20e75c
	tst.b $3f(a1)
	beq.s loc_20e762
loc_20e75c:
	jmp (sub_203b70).l
loc_20e762:
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
	bne.s loc_20e7ca
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	cmpi.b #$5,$18(a0)
	beq.s loc_20e7c4
	move.b #$5,$18(a0)
	bra.s loc_20e7ca
loc_20e7c4:
	move.b #$3,$18(a0)
loc_20e7ca:
	lea dat_20e83e(pc),a1
	jsr (sub_205d26).l
	jmp (sub_203ac4).l
loc_20e7da:
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
	bmi.s loc_20e814
	cmpi.l #$10000,$30(a0)
	blt.s loc_20e828
loc_20e814:
	neg.l $34(a0)
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20e828:
	lea dat_20e83e(pc),a1
	jsr (sub_205d26).l
	jsr (sub_203ac4).l
	jmp (loc_207ace).l
dat_20e83e:
	.incbin 59454, 38
dat_20e864:
	.incbin 59492, 40
dat_20e88c:
	.incbin 59532, 40
dat_20e8b4:
	.incbin 59572, 22
	tst.b $24(a0)
	bne.s loc_20e90e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$446a,$2(a0)
	move.l #$20e932,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20e924(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20e90e:
	lea ($d000).w,a1
	jsr (sub_2087f2).l
	jsr (sub_203ac4).l
	jmp (loc_207ace).l
dat_20e924:
	.incbin 59684, 126
	tst.b $24(a0)
	bne.s loc_20ea1a
	movea.w $2a(a0),a1
	move.b $0(a1),$2c(a0)
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4380,$2(a0)
	move.b $28(a0),d6
	bpl.s loc_20e9d2
	addq.b #$1,$1a(a0)
loc_20e9d2:
	lea dat_20ea56(pc),a1
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	btst.l #$1,d6
	beq.s loc_20e9f8
	lea dat_20ea70(pc),a1
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
loc_20e9f8:
	move.l a1,$4(a0)
	btst.l #$0,d6
	beq.s loc_20ea1a
	bset.b #$0,$1(a0)
	bset.b #$1,$1(a0)
	bset.b #$0,$22(a0)
	bset.b #$1,$22(a0)
loc_20ea1a:
	movea.w $2a(a0),a1
	move.b $2c(a0),d0
	cmp.b $0(a1),d0
	bne.s loc_20ea50
	move.b $29(a0),d0
	bmi.s loc_20ea4a
	tst.b $3e(a0)
	bne.s loc_20ea4a
	lea ($f7e0).w,a1
	ext.w d0
	tst.b $0(a1,d0.w)
	beq.s loc_20ea4a
	st $3e(a0)
	eori.b #$1,$1a(a0)
loc_20ea4a:
	jmp (sub_203ac4).l
loc_20ea50:
	jmp (sub_203b70).l
dat_20ea56:
	.incbin 59990, 26
dat_20ea70:
	.incbin 60016, 26
	tst.w $3e(a0)
	beq.s loc_20eaa2
	movea.w $3e(a0),a1
	cmpi.b #$38,$0(a1)
	beq.s loc_20eaa2
	jmp (sub_203b70).l
loc_20eaa2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20eab0(pc,d0.w),d0
	jmp dat_20eab0(pc,d0.w)
dat_20eab0:
	dc.b $00,$04,$01,$1e
	move.w $8(a0),$34(a0)
	jsr (sub_207a98).l
	beq.s loc_20eac8
	jmp (sub_203b70).l
loc_20eac8:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	lea (a1),a3
	jsr (sub_207a98).l
	beq.s loc_20eae8
	jmp (sub_203b70).l
loc_20eae8:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	lea (a1),a2
	jsr (sub_207a98).l
	beq.s loc_20eb08
	jmp (sub_203b70).l
loc_20eb08:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	move.w #$f800,d0
	tst.b $28(a0)
	bpl.s loc_20eb24
	neg.w d0
loc_20eb24:
	move.w d0,d1
	move.w d0,$2e(a1)
	add.w d0,d0
	move.w d0,$2e(a2)
	add.w d1,d0
	move.w d0,$2e(a3)
	move.w #$100,$30(a0)
	tst.b $28(a0)
	bpl.s loc_20eb46
	neg.w $30(a0)
loc_20eb46:
	move.b $28(a0),d0
	bpl.s loc_20eb4e
	neg.b d0
loc_20eb4e:
	andi.w #$7f,d0
	move.w d0,$32(a0)
	move.b #$1,$18(a0)
	move.b #$2,$18(a1)
	move.b #$3,$18(a2)
	move.b #$4,$18(a3)
	lea (a0),a6
	bsr.w sub_20eb82
	lea (a1),a6
	bsr.w sub_20eb82
	lea (a2),a6
	bsr.w sub_20eb82
	lea (a3),a6

sub_20eb82:
	ori.b #$4,$1(a6)
	move.b #$a9,$20(a6)
	move.b #$10,$17(a6)
	move.b #$10,$19(a6)
	move.b #$10,$16(a6)
	move.w #$370,$2(a6)
	move.l #$20ec0e,$4(a6)
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
	jsr (sub_200712).l
	move.w $32(a0),d3
	asr.w d3,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	jsr (sub_203ac4).l
	tst.w $3e(a0)
	bne.s loc_20ec0c
	jmp (loc_207ace).l
loc_20ec0c:
	rts
	.incbin 60430, 1708

sub_20f2ba:
	tst.b ($ff156a).l
	beq.s loc_20f300
	cmpi.b #$1,($ff152e).l
	bne.s loc_20f2d2
	tst.b $28(a0)
	beq.s loc_20f300
loc_20f2d2:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203b70).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20f2fe
	move.w #$9e,d0
	jsr (sub_2025aa).l
loc_20f2fe:
	addq.l #$4,a7
loc_20f300:
	rts

sub_20f302:
	tst.b $28(a0)
	bmi.s loc_20f332
	cmpi.b #$2,($ff152e).l
	bge.s loc_20f322
	tst.b ($ff156d).l
	bne.s loc_20f332
	addq.l #$4,a7
	jmp (loc_207ace).l
loc_20f322:
	tst.b ($ff156a).l
	bne.s loc_20f332
	addq.l #$4,a7
	jmp (sub_203b70).l
loc_20f332:
	rts
	.incbin 62260, 312

sub_20f46c:
	jmp (loc_2067d2).l
dat_20f472:
	.incbin 62578, 16
dat_20f482:
	.incbin 62594, 862
	tst.b $28(a0)
	bmi.s loc_20f810
	cmpi.b #$2,($ff152e).l
	bge.s loc_20f800
	tst.b ($ff156d).l
	bne.s loc_20f810
	addq.l #$4,a7
	jmp (loc_207b26).l
loc_20f800:
	tst.b ($ff156a).l
	bne.s loc_20f810
	addq.l #$4,a7
	jmp (loc_203b44).l
loc_20f810:
	rts
	jmp (dat_2067a6).l
	.incbin 63512, 982
	tst.b ($ff156a).l
	beq.s loc_20fc34
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fc06
	tst.b $28(a0)
	beq.s loc_20fc34
loc_20fc06:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203c2a).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fc32
	move.w #$9e,d0
	jsr ($20262a).l
loc_20fc32:
	addq.l #$4,a7
loc_20fc34:
	rts
	tst.b $28(a0)
	bmi.s loc_20fc66
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fc56
	tst.b ($ff156d).l
	bne.s loc_20fc66
	addq.l #$4,a7
	jmp ($207990).l
loc_20fc56:
	tst.b ($ff156a).l
	bne.s loc_20fc66
	addq.l #$4,a7
	jmp (sub_203c2a).l
loc_20fc66:
	rts
	tst.b ($f63a).w
	bne.w loc_20fd2e
	jsr ($20688c).l
	cmpi.w #$280,($f700).w
	bcc.w loc_20fd2e
	cmpi.w #$160,($f704).w
	bcc.w loc_20fd2e
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fd82).l,a1
	move.w #$7f,d6
	bsr.w sub_20fd30
	bne.s loc_20fcc6
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4500,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fcc6:
	lea (dat_20fdd4).l,a1
	move.w #$7f,d6
	bsr.w sub_20fd30
	bne.s loc_20fcfa
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4700,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fcfa:
	lea (dat_20fe26).l,a1
	move.w #$7f,d6
	bsr.w sub_20fd30
	bne.s loc_20fd2e
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4900,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd2e:
	rts

sub_20fd30:
	subq.b #$1,(a2)
	bpl.s loc_20fd76
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20fd40
	moveq #$0,d0
loc_20fd40:
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
loc_20fd64:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fd64
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fd76:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fd82:
	.incbin 64898, 82
dat_20fdd4:
	.incbin 64980, 82
dat_20fe26:
	.incbin 65062, 63666
dat_21f6d8:
	.incbin 128728, 198
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
