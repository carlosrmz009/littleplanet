; R12A__.MMD
; disassembled from the disc; code only, data comes from data/R12A__.MMD at build time
	.file "R12A__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$21,$1a
	jmp (loc_201c90).l
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
	bsr.w sub_2021c6
	bsr.w sub_20216e
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_20150a

sub_200184:
	bra.w loc_200228
	.incbin 392, 160
loc_200228:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_2002c0).l,a1
	lea (dat_2002c8).l,a2
	bsr.s sub_200282
	lea (dat_2002ce).l,a1
	lea (dat_2002d6).l,a2
	bsr.s sub_200282
	lea (dat_2002dc).l,a1
	lea (dat_2002e4).l,a2
	bsr.s sub_200282
	lea (dat_2002ea).l,a1
	lea (dat_2002f2).l,a2
	bsr.s sub_200282
	lea (dat_2002f8).l,a1
	lea (dat_200300).l,a2
	bsr.s sub_200282
	lea (dat_200306).l,a1
	lea (dat_20030e).l,a2

sub_200282:
	subq.b #$1,(a5)
	bpl.s loc_2002b6
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
	bcs.s loc_2002a2
	moveq #$0,d0
loc_2002a2:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_2002b6:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_2002c0:
	dc.b $31,$03,$08,$00,$08,$01,$08,$02
dat_2002c8:
	dc.b $0e,$ee,$0c,$c6,$0e,$ea
dat_2002ce:
	dc.b $32,$03,$08,$00,$08,$01,$08,$02
dat_2002d6:
	dc.b $0e,$ea,$0e,$ee,$0c,$c6
dat_2002dc:
	dc.b $33,$03,$08,$00,$08,$01,$08,$02
dat_2002e4:
	dc.b $0c,$c6,$0e,$ea,$0e,$ee
dat_2002ea:
	dc.b $2c,$03,$06,$00,$06,$01,$06,$02
dat_2002f2:
	dc.b $0e,$ca,$0e,$a8,$0e,$86
dat_2002f8:
	dc.b $2d,$03,$06,$00,$06,$01,$06,$02
dat_200300:
	dc.b $0e,$a8,$0e,$86,$0e,$ca
dat_200306:
	dc.b $2f,$03,$06,$00,$06,$01,$06,$02
dat_20030e:
	dc.b $0c,$86,$0e,$ca,$0e,$a8

sub_200314:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200326:
	move.w d1,(a0)+
	dbf d0,loc_200326
	move.w #$15,d4
loc_200330:
	move.b #$12,($f62a).w
	bsr.w sub_20084e
	bsr.s sub_200346
	bsr.w sub_20258c
	dbf d4,loc_200330
	rts

sub_200346:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20035c:
	bsr.s sub_20038a
	dbf d0,loc_20035c
	cmpi.b #$1,($ff1506).l
	bne.s loc_200388
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200382:
	bsr.s sub_20038a
	dbf d0,loc_200382
loc_200388:
	rts

sub_20038a:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003b2
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2003a0
	move.w d1,(a0)+
	rts
loc_2003a0:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2003ae
	move.w d1,(a0)+
	rts
loc_2003ae:
	addq.w #$2,(a0)+
	rts
loc_2003b2:
	addq.w #$2,a0
	rts

sub_2003b6:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2003c0:
	move.b #$12,($f62a).w
	bsr.w sub_20084e
	bsr.s sub_2003d6
	bsr.w sub_20258c
	dbf d4,loc_2003c0
	rts

sub_2003d6:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003e6:
	bsr.s sub_200404
	dbf d0,loc_2003e6
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003fc:
	bsr.s sub_200404
	dbf d0,loc_2003fc
	rts

sub_200404:
	move.w (a0),d2
	beq.s loc_200430
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200414
	subq.w #$2,(a0)+
	rts
loc_200414:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200422
	subi.w #$20,(a0)+
	rts
loc_200422:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200430
	subi.w #$200,(a0)+
	rts
loc_200430:
	addq.w #$2,a0
	rts

sub_200434:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_20044e:
	move.w d1,(a0)+
	dbf d0,loc_20044e
	move.w #$15,d4
loc_200458:
	move.b #$12,($f62a).w
	bsr.w sub_20084e
	bsr.s sub_20046e
	bsr.w sub_20258c
	dbf d4,loc_200458
	rts

sub_20046e:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200484:
	bsr.s sub_2004b2
	dbf d0,loc_200484
	cmpi.b #$1,($ff1506).l
	bne.s loc_2004b0
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2004aa:
	bsr.s sub_2004b2
	dbf d0,loc_2004aa
loc_2004b0:
	rts

sub_2004b2:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2004de
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2004ca
	cmp.w d2,d1
	bcs.s loc_2004ca
	move.w d1,(a0)+
	rts
loc_2004ca:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2004da
	cmp.w d2,d1
	bcs.s loc_2004da
	move.w d1,(a0)+
	rts
loc_2004da:
	subq.w #$2,(a0)+
	rts
loc_2004de:
	addq.w #$2,a0
	rts

sub_2004e2:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2004ec:
	move.b #$12,($f62a).w
	bsr.w sub_20084e
	bsr.s sub_200502
	bsr.w sub_20258c
	dbf d4,loc_2004ec
	rts

sub_200502:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200512:
	bsr.s sub_200530
	dbf d0,loc_200512
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200528:
	bsr.s sub_200530
	dbf d0,loc_200528
	rts

sub_200530:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_20056c
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200548
	addq.w #$2,(a0)+
	rts
loc_200548:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_20055a
	addi.w #$20,(a0)+
	rts
loc_20055a:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_20056c
	addi.w #$200,(a0)+
	rts
loc_20056c:
	addq.w #$2,a0
	rts

sub_200570:
	lea (dat_2005a4).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200584:
	move.l (a2)+,(a3)+
	dbf d7,loc_200584
	rts

sub_20058c:
	lea (dat_2005a4).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_20059c:
	move.l (a2)+,(a3)+
	dbf d7,loc_20059c
	rts
dat_2005a4:
	.incbin 1444, 682

sub_20084e:
	move.w #$2300,sr
loc_200852:
	tst.b ($f62a).w
	bne.s loc_200852
	rts

sub_20085a:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200872(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200872(pc,d0.w),d0
	rts
dat_200872:
	.incbin 2162, 640

sub_200af2:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200b4e
	move.w d2,d4
	tst.w d3
	bpl.w loc_200b0c
	neg.w d3
loc_200b0c:
	tst.w d4
	bpl.w loc_200b14
	neg.w d4
loc_200b14:
	cmp.w d3,d4
	bcc.w loc_200b26
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200b58(pc,d4.w),d0
	bra.s loc_200b30
loc_200b26:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200b58(pc,d3.w),d0
loc_200b30:
	tst.w d1
	bpl.w loc_200b3c
	neg.w d0
	addi.w #$80,d0
loc_200b3c:
	tst.w d2
	bpl.w loc_200b48
	neg.w d0
	addi.w #$100,d0
loc_200b48:
	movem.l (a7)+,d3-d4
	rts
loc_200b4e:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200b58:
	.incbin 2904, 258

sub_200c5a:
	btst.b #$3,$22(a0)
	beq.s loc_200c6e
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200c6e:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c90
	move.b $26(a0),d0
	bpl.s loc_200c8a
	subq.b #$1,d0
loc_200c8a:
	addi.b #$20,d0
	bra.s loc_200c9c
loc_200c90:
	move.b $26(a0),d0
	bpl.s loc_200c98
	addq.b #$1,d0
loc_200c98:
	addi.b #$1f,d0
loc_200c9c:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200f26
	cmpi.b #$80,d0
	beq.w loc_200e84
	cmpi.b #$c0,d0
	beq.w loc_200de8
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
	bsr.w sub_2011b0
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
	bsr.w sub_2011b0
	move.w (a7)+,d0
	bsr.w sub_200dbc
	tst.w d1
	beq.s loc_200d2a
	bpl.s loc_200d2c
	cmpi.w #$fff2,d1
	blt.s loc_200d52
	add.w d1,$c(a0)
loc_200d2a:
	rts
loc_200d2c:
	cmpi.w #$e,d1
	bgt.s loc_200d38
loc_200d32:
	add.w d1,$c(a0)
	rts
loc_200d38:
	tst.b $38(a0)
	bne.s loc_200d32
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d52:
	rts
	.incbin 3412, 34
loc_200d76:
	rts
	.incbin 3448, 68

sub_200dbc:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200dca
	move.b ($f768).w,d2
	move.w d0,d1
loc_200dca:
	btst.l #$0,d2
	bne.s loc_200dd6
	move.b d2,$26(a0)
	rts
loc_200dd6:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200de8:
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
	bsr.w sub_201320
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
	bsr.w sub_201320
	move.w (a7)+,d0
	bsr.w sub_200dbc
	tst.w d1
	beq.s loc_200e5c
	bpl.s loc_200e5e
	cmpi.w #$fff2,d1
	blt.w loc_200d76
	add.w d1,$8(a0)
loc_200e5c:
	rts
loc_200e5e:
	cmpi.w #$e,d1
	bgt.s loc_200e6a
loc_200e64:
	add.w d1,$8(a0)
	rts
loc_200e6a:
	tst.b $38(a0)
	bne.s loc_200e64
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e84:
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
	bsr.w sub_2011b0
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
	bsr.w sub_2011b0
	move.w (a7)+,d0
	bsr.w sub_200dbc
	tst.w d1
	beq.s loc_200efe
	bpl.s loc_200f00
	cmpi.w #$fff2,d1
	blt.w loc_200d52
	sub.w d1,$c(a0)
loc_200efe:
	rts
loc_200f00:
	cmpi.w #$e,d1
	bgt.s loc_200f0c
loc_200f06:
	sub.w d1,$c(a0)
	rts
loc_200f0c:
	tst.b $38(a0)
	bne.s loc_200f06
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200f26:
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
	bsr.w sub_201320
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
	bsr.w sub_201320
	move.w (a7)+,d0
	bsr.w sub_200dbc
	tst.w d1
	beq.s loc_200fa0
	bpl.s loc_200fa2
	cmpi.w #$fff2,d1
	blt.w loc_200d76
	sub.w d1,$8(a0)
loc_200fa0:
	rts
loc_200fa2:
	cmpi.w #$e,d1
	bgt.s loc_200fae
loc_200fa8:
	sub.w d1,$8(a0)
	rts
loc_200fae:
	tst.b $38(a0)
	bne.s loc_200fa8
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200fc8:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200fde
	andi.w #$380,d0
loc_200fde:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_20103e
	bmi.s loc_201042
	cmpi.b #$5,($ff1506).l
	beq.s loc_20100e
	cmpi.b #$6,($ff1506).l
	bne.s loc_201014
loc_20100e:
	andi.w #$7fff,$2(a0)
loc_201014:
	cmpi.b #$4,($ff1506).l
	bne.s loc_201024
	bclr.b #$6,$1(a0)
loc_201024:
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
loc_20103e:
	movea.l d1,a1
	rts
loc_201042:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_2010aa
	btst.b #$6,$1(a0)
	bne.s loc_201070
	cmpi.b #$14,d1
	bne.w loc_201194
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201194
loc_201070:
	cmpi.b #$15,d1
	bne.s loc_20107e
	move.w #$60,d1
	bra.w loc_201194
loc_20107e:
	cmpi.b #$1e,d1
	bne.s loc_20108c
	move.w #$61,d1
	bra.w loc_201194
loc_20108c:
	cmpi.b #$1f,d1
	bne.s loc_20109a
	move.w #$62,d1
	bra.w loc_201194
loc_20109a:
	cmpi.b #$32,d1
	bne.w loc_201194
	move.w #$63,d1
	bra.w loc_201194
loc_2010aa:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201110
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_2010fa
	cmpi.b #$6,d1
	beq.s loc_2010fa
	tst.b ($ff1956).l
	beq.w loc_201194
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_20110a
	cmpi.b #$3c,d1
	beq.s loc_20110a
	cmpi.b #$37,d1
	beq.s loc_20110a
	cmpi.b #$2f,d1
	beq.s loc_20110a
	cmpi.b #$16,d1
	beq.s loc_20110a
	bra.w loc_201194
loc_2010fa:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201194
loc_20110a:
	addq.b #$1,d1
	bra.w loc_201194
loc_201110:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201180
	cmpi.b #$3,$0(a0)
	bcc.w loc_201194
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201194
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_201144
	move.w #$6a,d1
	bra.s loc_201194
loc_201144:
	cmpi.b #$48,d1
	bne.s loc_201150
	move.w #$6b,d1
	bra.s loc_201194
loc_201150:
	cmpi.b #$4a,d1
	bne.s loc_20115c
	move.w #$6c,d1
	bra.s loc_201194
loc_20115c:
	cmpi.b #$10,d1
	bne.s loc_201168
	move.w #$6d,d1
	bra.s loc_201194
loc_201168:
	cmpi.b #$63,d1
	bne.s loc_201174
	move.w #$6e,d1
	bra.s loc_201194
loc_201174:
	cmpi.b #$43,d1
	bne.s loc_201194
	move.w #$6f,d1
	bra.s loc_201194
loc_201180:
	btst.b #$6,$1(a0)
	beq.s loc_201194
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201194
	move.w #$51,d1
loc_201194:
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

sub_2011b0:
	bsr.w sub_200fc8
	cmpi.l #$210000,d1
	beq.s loc_2011ca
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011ca
	btst.l d5,d4
	bne.s loc_2011d8
loc_2011ca:
	add.w a3,d2
	bsr.w sub_201270
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2011d8:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011ca
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011fe
	not.w d1
	neg.b (a4)
loc_2011fe:
	btst.l #$c,d4
	beq.s loc_20120e
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20120e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20122a
	neg.w d0
loc_20122a:
	tst.w d0
	beq.s loc_2011ca
	bmi.s loc_201246
	cmpi.b #$10,d0
	beq.s loc_201262
loc_201236:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201246:
	cmpa.w #$10,a3
	bne.s loc_201256
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201236
loc_201256:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011ca
loc_201262:
	sub.w a3,d2
	bsr.w sub_201270
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201270:
	bsr.w sub_200fc8
	cmpi.l #$210000,d1
	beq.s loc_20128a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20128a
	btst.l d5,d4
	bne.s loc_201298
loc_20128a:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201298:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20128a
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2012be
	not.w d1
	neg.b (a4)
loc_2012be:
	btst.l #$c,d4
	beq.s loc_2012ce
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012ce:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2012ea
	neg.w d0
loc_2012ea:
	tst.w d0
	beq.s loc_20128a
	bmi.s loc_201300
loc_2012f0:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201300:
	cmpa.w #$10,a3
	bne.s loc_201310
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2012f0
loc_201310:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20128a
	not.w d1
	rts

sub_201320:
	bsr.w sub_200fc8
	cmpi.l #$210000,d1
	beq.s loc_20133a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20133a
	btst.l d5,d4
	bne.s loc_201348
loc_20133a:
	add.w a3,d3
	bsr.w sub_2013d0
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201348:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20133a
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201376
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201376:
	btst.l #$b,d4
	beq.s loc_20137e
	neg.b (a4)
loc_20137e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23a274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20139a
	neg.w d0
loc_20139a:
	tst.w d0
	beq.s loc_20133a
	bmi.s loc_2013b6
	cmpi.b #$10,d0
	beq.s loc_2013c2
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013b6:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20133a
loc_2013c2:
	sub.w a3,d3
	bsr.w sub_2013d0
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2013d0:
	bsr.w sub_200fc8
	cmpi.l #$210000,d1
	beq.s loc_2013ea
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2013ea
	btst.l d5,d4
	bne.s loc_2013f8
loc_2013ea:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2013f8:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2013ea
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201426
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201426:
	btst.l #$b,d4
	beq.s loc_20142e
	neg.b (a4)
loc_20142e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23a274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20144a
	neg.w d0
loc_20144a:
	tst.w d0
	beq.s loc_2013ea
	bmi.s loc_201460
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201460:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2013ea
	not.w d1
	rts

sub_201470:
	rts
	.incbin 5234, 152
loc_20150a:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20152a
	tst.b ($ff0f01).l
	bne.s loc_20152a
	move.b #$1,($ff156a).l
loc_20152a:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201590
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2074b4
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201590
	move.b #$1,($ff1508).l
loc_201590:
	bset.b #$7,($f600).w
	bsr.w sub_20257e
	tst.b ($ff156e).l
	bne.s loc_2015b6
	btst.b #$7,($ff152e).l
	beq.s loc_2015ec
	bset.b #$0,($ff151d).l
	beq.s loc_2015c2
loc_2015b6:
	bsr.w sub_2004e2
	bclr.b #$0,($ff151d).l
loc_2015c2:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_20165c
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2015ea
	bclr.b #$7,($ff152e).l
loc_2015ea:
	rts
loc_2015ec:
	bset.b #$0,($ff151d).l
	beq.s loc_2015fa
	bsr.w sub_2003b6
loc_2015fa:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201616
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_20163e
loc_201616:
	tst.b ($ff1508).l
	bne.s loc_20165c
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_20163e:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201646:
	move.l #$0,(a1)+
	dbf d6,loc_201646
	move.b #$c,($f62a).w
	bsr.w sub_20084e
	rts
loc_20165c:
	cmpi.w #$800,($f78e).w
	bne.s loc_20167a
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20167a:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201690
	btst.b #$7,($ff152e).l
	beq.s loc_201696
loc_201690:
	move.l #$eee0eee,d0
loc_201696:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20169e:
	move.l d0,(a1)+
	dbf d6,loc_20169e
loc_2016a4:
	move.b #$c,($f62a).w
	bsr.w sub_20084e
	bsr.w sub_20258c
	bne.s loc_2016a4
	tst.l ($f680).w
	bsr.w sub_201b4a
	moveq #$0,d0
	lea (dat_20f0ac).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2016ce
	bsr.w sub_202692
loc_2016ce:
	moveq #$1,d0
	bsr.w sub_202692
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2016ea:
	move.l d0,(a1)+
	dbf d1,loc_2016ea
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2016fc:
	move.l d0,(a1)+
	dbf d1,loc_2016fc
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_20170c:
	move.l d0,(a1)+
	dbf d1,loc_20170c
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_20171e:
	move.l d0,(a1)+
	dbf d1,loc_20171e
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20172e:
	move.l d0,(a1)+
	dbf d1,loc_20172e
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_20173e:
	move.l d0,(a1)+
	dbf d1,loc_20173e
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202268
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
	bsr.w sub_20058c
	moveq #$3,d0
	bsr.w sub_200570
	bsr.w sub_2028f4
	bsr.w sub_202a58
	bset.b #$2,($f754).w
	bsr.w sub_20348e
	bsr.w sub_2033a4
	jsr (sub_201470).l
	bsr.w sub_201a84
loc_2017be:
	move.b #$c,($f62a).w
	bsr.w sub_20084e
	bsr.w sub_20258c
	bne.s loc_2017be
	tst.l ($f680).w
	bne.s loc_2017be
	bsr.w sub_201a10
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201baa
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201822
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201822:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201864
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201864:
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
	jsr (sub_20f0a6).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2018f4
loc_2018ee:
	bsr.w sub_200434
	bra.s loc_201902
loc_2018f4:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2018ee
	bsr.w sub_200314
loc_201902:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201910:
	move.b #$8,($f62a).w
	bsr.w sub_20084e
	tst.b ($f7cc).w
	bne.s loc_20192e
	btst.b #$7,($f605).w
	beq.s loc_20192e
	eori.b #$1,($f63a).w
loc_20192e:
	btst.b #$0,($f63a).w
	beq.w loc_2019a0
	bsr.w sub_201c0e
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20197e
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201910
	subq.b #$1,($ff1508).l
	bpl.s loc_201960
	clr.b ($ff1508).l
loc_201960:
	move.w #$e,d0
	jsr (sub_205b5c).l
	bsr.w sub_2074b4
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_20198c
loc_20197e:
	andi.b #$70,d0
	beq.w loc_201910
	clr.b ($ff1508).l
loc_20198c:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_20150a
loc_2019a0:
	bsr.w sub_201c54
	addq.w #$1,($ff1504).l
	jsr (sub_2074ca).l
	jsr (sub_2038a2).l
	cmpi.w #$800,($f78e).w
	beq.w loc_20150a
	tst.w ($ff1502).l
	bne.w loc_20150a
	tst.w ($ff1906).l
	bne.s loc_2019e8
	cmpi.b #$6,($d024).w
	bcs.s loc_2019e8
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2019ec
loc_2019e8:
	bsr.w sub_202a58
loc_2019ec:
	jsr (sub_203a4c).l
	tst.w ($ff190e).l
	bne.s loc_2019fe
	bsr.w sub_200184
loc_2019fe:
	jsr (sub_20cc12).l
	bsr.w sub_20258c
	bsr.w sub_201ab6
	bra.w loc_201910

sub_201a10:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201a28
	move.w #$78,$30(a1)
loc_201a28:
	rts
	.incbin 6698, 90

sub_201a84:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a96(pc,d0.w),($f796).w
	rts
dat_201a96:
	.incbin 6806, 32

sub_201ab6:
	subq.b #$1,($ff1910).l
	bpl.s loc_201ad4
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201ad4:
	subq.b #$1,($ff1912).l
	bpl.s loc_201af2
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201af2:
	subq.b #$1,($ff1914).l
	bpl.s loc_201b1a
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201b1a
	move.b #$0,($ff1915).l
loc_201b1a:
	tst.b ($ff1916).l
	beq.s loc_201b48
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201b48:
	rts

sub_201b4a:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b6c
	cmpi.b #$2,d0
	bne.s loc_201b6c
	add.b ($ff156a).l,d0
loc_201b6c:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b84(pc,d1.w),d0
	jmp (sub_205b5c).l
dat_201b84:
	.incbin 7044, 38

sub_201baa:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_2362d6).l,a1
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

sub_201c0e:
	move.w #$ab,d0
	jsr (sub_202356).l
	bset.b #$7,($f63a).w
	bne.s loc_201c52
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c38
loc_201c2e:
	move.w #$d5,d0
	jmp (sub_205b5c).l
loc_201c38:
	tst.b ($ff151f).l
	bne.s loc_201c2e
	tst.b ($ff1520).l
	bne.s loc_201c2e
	move.w #$90,d0
	jmp (sub_205b5c).l
loc_201c52:
	rts

sub_201c54:
	bclr.b #$7,($f63a).w
	beq.s loc_201c8e
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c74
loc_201c6a:
	move.w #$d6,d0
	jmp (sub_205b5c).l
loc_201c74:
	tst.b ($ff151f).l
	bne.s loc_201c6a
	tst.b ($ff1520).l
	bne.s loc_201c6a
	move.w #$91,d0
	jmp (sub_205b5c).l
loc_201c8e:
	rts
loc_201c90:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201d1c
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201ccc
	move.w #$700,d0
loc_201cc8:
	dbf d0,loc_201cc8
loc_201ccc:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201d02(pc,d0.w),d0
	jsr dat_201d02(pc,d0.w)
loc_201ce2:
	jsr (sub_20237a).l
	tst.b ($f63a).w
	bne.s loc_201cf6
	bsr.w sub_20212e
	bsr.w sub_20211c
loc_201cf6:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201d02:
	.incbin 7426, 26
loc_201d1c:
	tst.b ($ff1957).l
	beq.w loc_201ce2
	cmpi.b #$2,($ff1506).l
	bne.w loc_201ce2
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201d4a
	move.w #$700,d0
loc_201d46:
	dbf d0,loc_201d46
loc_201d4a:
	move.w #$1,($f6fc).w
	jsr (sub_2022ee).l
	tst.b ($f64e).w
	bne.s loc_201d82
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201da6
loc_201d82:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201da6:
	move.w ($f624).w,(a5)
	jsr (sub_20230a).l
	bra.w loc_201ce2
	.incbin 7604, 60
	jsr (sub_2022ee).l
	bsr.w sub_20218a
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
	bsr.w sub_205a7e
	tst.b ($f767).w
	beq.s loc_201e9e
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e9e:
	jsr (sub_20f0a6).l
	jsr (sub_20230a).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f9c
	bsr.w sub_2025fe
	jmp (loc_20ac8c).l
	dc.b $4e,$75
	jsr (sub_2022ee).l
	bsr.w sub_20218a
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
	jsr (sub_20230a).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f9c
	bra.w loc_2025e2
	.incbin 8054, 16
	bsr.w sub_202072
	cmpi.b #$1,($ff1903).l
	bne.s loc_201fa8
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201fa8:
	move.w ($f624).w,(a5)
	bra.w loc_2025e2
	.incbin 8112, 46
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
	jsr (sub_20230a).l
	lea ($d000).w,a0
	bsr.w sub_205a7e
	tst.b ($f767).w
	beq.s loc_202064
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202064:
	tst.w ($f614).w
	beq.w loc_202070
	subq.w #$1,($f614).w
loc_202070:
	rts

sub_202072:
	jsr (sub_2022ee).l
	bsr.w sub_20218a
	tst.b ($f64e).w
	bne.s loc_2020a8
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_2020cc
loc_2020a8:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_2020cc:
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
	jmp (sub_20230a).l
	dc.b $4e,$73

sub_20211c:
	tst.b ($d02a).w
	bne.s loc_20212c
	tst.w ($f786).w
	beq.s loc_20212c
	addq.w #$1,($f786).w
loc_20212c:
	rts

sub_20212e:
	tst.w ($f780).w
	beq.s loc_202138
	addq.w #$1,($f780).w
loc_202138:
	tst.w ($f782).w
	beq.s loc_202142
	addq.w #$1,($f782).w
loc_202142:
	rts
	.incbin 8516, 42

sub_20216e:
	bsr.w sub_2022ee
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_20230a

sub_20218a:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202198
	addq.w #$2,a1

sub_202198:
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

sub_2021c6:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202242).l,a2
	moveq #$12,d7
loc_2021da:
	move.w (a2)+,(a0)
	dbf d7,loc_2021da
	move.w (dat_202244).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202200:
	move.w d0,(a1)
	dbf d7,loc_202200
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202232:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202232
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202242:
	dc.b $80,$04
dat_202244:
	.incbin 8772, 36

sub_202268:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20228a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20228a
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2022b8:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022b8
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2022d6:
	move.l d0,(a1)+
	dbf d1,loc_2022d6
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2022e6:
	move.l d0,(a1)+
	dbf d1,loc_2022e6
	rts

sub_2022ee:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022fe:
	btst.b #$0,($a11100).l
	bne.s loc_2022fe
	rts

sub_20230a:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8984, 62

sub_202356:
	tst.b ($f00a).w
	bne.s loc_202362
	move.b d0,($f00a).w
	rts
loc_202362:
	tst.b ($f00b).w
	bne.s loc_20236e
	move.b d0,($f00b).w
	rts
loc_20236e:
	tst.b ($f00c).w
	bne.s loc_202378
	move.b d0,($f00c).w
loc_202378:
	rts

sub_20237a:
	jsr (sub_2022ee).l
	tst.b ($f00a).w
	beq.s loc_202394
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202394:
	tst.b ($f00b).w
	beq.s loc_2023a8
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2023a8:
	tst.b ($f00c).w
	beq.s loc_2023bc
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2023bc:
	bra.w sub_20230a
	.incbin 9152, 32

sub_2023e0:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2024a2).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023fc

sub_2023f2:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2024b8).l,a3
loc_2023fc:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_20240a
	adda.w #$a,a3
loc_20240a:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2024ce
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_20242a
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_20242a:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202476
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202452
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202452:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202460:
	lsr.w #$4,d0
loc_202462:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202470
	jmp (a3)

sub_20246c:
	moveq #$0,d4
	moveq #$8,d3
loc_202470:
	dbf d0,loc_202462
	bra.s sub_20242a
loc_202476:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202484
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202484:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202460
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202460
loc_2024a2:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20246c
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20246c
	rts
dat_2024b8:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20246c
	rts

sub_2024ce:
	move.b (a0)+,d0
loc_2024d0:
	cmpi.b #$ff,d0
	bne.s loc_2024d8
	rts
loc_2024d8:
	move.w d0,d7
loc_2024da:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2024d0
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
	bne.s loc_202508
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2024da
loc_202508:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202514:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202514
	bra.s loc_2024da

sub_202520:
	movem.l a1-a2,-(a7)
	lea (dat_20f0bc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202538:
	tst.l (a2)
	beq.s loc_202540
	addq.w #$6,a2
	bra.s loc_202538
loc_202540:
	move.w (a1)+,d0
	bmi.s loc_20254c
loc_202544:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202544
loc_20254c:
	movem.l (a7)+,a1-a2
	rts
loc_202552:
	movem.l a1-a2,-(a7)
	lea (dat_20f0bc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_20257e
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_202578
loc_202570:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202570
loc_202578:
	movem.l (a7)+,a1-a2
	rts

sub_20257e:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202584:
	clr.l (a2)+
	dbf d0,loc_202584
	rts

sub_20258c:
	tst.l ($f680).w
	beq.s loc_2025e0
	tst.w ($f6f8).w
	bne.s loc_2025e0
	movea.l ($f680).w,a0
	lea (loc_2024a2).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2025ae
	adda.w #$a,a3
loc_2025ae:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2024ce
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
loc_2025e0:
	rts
loc_2025e2:
	tst.w ($f6f8).w
	beq.w loc_202680
loc_2025ea:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_20261c

sub_2025fe:
	tst.w ($f6f8).w
	beq.s loc_202680
	tst.b ($f744).w
	bne.s loc_2025ea
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_20261c:
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
loc_202650:
	movea.w #$8,a5
	bsr.w sub_20246c
	subq.w #$1,($f6f8).w
	beq.s loc_202682
	subq.w #$1,($f6fa).w
	bne.s loc_202650
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202680:
	rts
loc_202682:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202688:
	move.l $6(a0),(a0)+
	dbf d0,loc_202688
	rts

sub_202692:
	lea (dat_20f0bc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2026a4:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2023e0
	dbf d1,loc_2026a4
	rts
	.incbin 9924, 560

sub_2028f4:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202950).l,a0
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
	bra.w loc_20297c
dat_202950:
	dc.b $00,$04,$00,$00,$28,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_20295c:
	.incbin 10588, 32
loc_20297c:
	tst.b ($ff1522).l
	beq.s loc_20299c
	jsr (sub_2066e8).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_20299a
	moveq #$0,d0
loc_20299a:
	bra.s loc_2029d8
loc_20299c:
	lea (dat_202a14).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2029be
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_20295c).l,a1
	adda.w d0,a1
	bra.s loc_2029c8
loc_2029be:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2029c8:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2029d8:
	subi.w #$a0,d1
	bcc.s loc_2029e0
	moveq #$0,d1
loc_2029e0:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2029ea
	move.w d2,d1
loc_2029ea:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2029f6
	moveq #$0,d0
loc_2029f6:
	cmp.w ($f72e).w,d0
	blt.s loc_202a00
	move.w ($f72e).w,d0
loc_202a00:
	move.w d0,($f704).w
	bsr.w sub_202a1c
	lea (dat_202a18).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202a14:
	dc.b $00,$50,$01,$85
dat_202a18:
	dc.b $91,$b6,$7f,$7f

sub_202a1c:
	swap d0
	asr.l #$4,d0
	move.l d0,d2
	add.l d2,d2
	add.l d2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$1,d1
	move.w d1,($f708).w
	lsr.w #$2,d1
	move.w d1,($f718).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d2,d1
	move.w d1,($f710).w
	lea ($a800).w,a2
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	rts

sub_202a58:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202a64
	rts
loc_202a64:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202c12
	bsr.w sub_202cb2
	bsr.w sub_203536
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	moveq #$6,d6
	bsr.w sub_202f3c
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202f08
	lea ($a80c).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	move.w ($f73c).w,d5
	ext.l d5
	asl.l #$4,d5
	move.l d5,d3
	add.l d5,d5
	add.l d3,d5
	bsr.w sub_202e04
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a2
	addi.l #$10000,(a2)+
	addi.l #$c000,(a2)+
	addi.l #$8000,(a2)+
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($a800).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$3,d1
loc_202b1e:
	move.w d0,(a1)+
	dbf d1,loc_202b1e
	move.w ($a804).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$3,d1
loc_202b32:
	move.w d0,(a1)+
	dbf d1,loc_202b32
	move.w ($a808).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$3,d1
loc_202b46:
	move.w d0,(a1)+
	dbf d1,loc_202b46
	move.w #$13,d1
	move.w ($f718).w,d0
	neg.w d0
loc_202b56:
	move.w d0,(a1)+
	dbf d1,loc_202b56
	move.w #$3,d1
	move.w ($f710).w,d0
	neg.w d0
loc_202b66:
	move.w d0,(a1)+
	dbf d1,loc_202b66
	lea ($cc00).w,a1
	lea ($a80c).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	move.w d0,d3
	lsr.w #$1,d3
	moveq #$23,d1
	moveq #$1c,d5
	sub.w d3,d1
	bcs.s loc_202b9e
	cmpi.w #$1b,d1
	bcs.s loc_202b94
	moveq #$1b,d1
loc_202b94:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	bsr.w sub_202bd0
loc_202b9e:
	move.w ($f710).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$8,d2
	divs.w #$100,d2
	ext.l d2
	asl.l #$8,d2
	moveq #$0,d3
	move.w d0,d3
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
loc_202bbe:
	move.w d3,d0
	neg.w d0
	move.l d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	dbf d1,loc_202bbe
	rts

sub_202bd0:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202bde(pc,d2.w)
loc_202bdc:
	move.w (a2)+,d0
loc_202bde:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202bdc
	rts
	.incbin 11252, 30

sub_202c12:
	move.w ($f700).w,d4
	bsr.s sub_202c46
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202c44
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202c3e
	bset.b #$2,($f754).w
	rts
loc_202c3e:
	bset.b #$3,($f754).w
loc_202c44:
	rts

sub_202c46:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202c58
	bcs.s loc_202c88
	bra.s loc_202c5e
loc_202c58:
	clr.w ($f73a).w
	rts
loc_202c5e:
	cmpi.w #$10,d0
	blt.s loc_202c68
	move.w #$10,d0
loc_202c68:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202c76
	move.w ($f72a).w,d0
loc_202c76:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c88:
	cmpi.w #$fff0,d0
	bge.s loc_202c92
	move.w #$fff0,d0
loc_202c92:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202c76
	move.w ($f728).w,d0
	bra.s loc_202c76
	.incbin 11426, 16

sub_202cb2:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202cc6
	subq.w #$5,d0
loc_202cc6:
	btst.b #$1,$22(a6)
	beq.s loc_202ce6
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202d32
	subi.w #$40,d0
	bcc.s loc_202d32
	tst.b ($f75c).w
	bne.s loc_202d44
	bra.s loc_202cf2
loc_202ce6:
	sub.w ($f73e).w,d0
	bne.s loc_202cf8
	tst.b ($f75c).w
	bne.s loc_202d44
loc_202cf2:
	clr.w ($f73c).w
	rts
loc_202cf8:
	cmpi.w #$60,($f73e).w
	bne.s loc_202d20
	move.w $14(a6),d1
	bpl.s loc_202d08
	neg.w d1
loc_202d08:
	cmpi.w #$800,d1
	bcc.s loc_202d32
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d92
	cmpi.w #$fffa,d0
	blt.s loc_202d5c
	bra.s loc_202d4a
loc_202d20:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d92
	cmpi.w #$fffe,d0
	blt.s loc_202d5c
	bra.s loc_202d4a
loc_202d32:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d92
	cmpi.w #$fff0,d0
	blt.s loc_202d5c
	bra.s loc_202d4a
loc_202d44:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202d4a:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d9c
	bra.w loc_202d68
loc_202d5c:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d68:
	cmp.w ($f72c).w,d1
	bgt.s loc_202dc0
	cmpi.w #$ff00,d1
	bgt.s loc_202d8c
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202dc0
loc_202d8c:
	move.w ($f72c).w,d1
	bra.s loc_202dc0
loc_202d92:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d9c:
	cmp.w ($f72e).w,d1
	blt.s loc_202dc0
	subi.w #$800,d1
	bcs.s loc_202dbc
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202dc0
loc_202dbc:
	move.w ($f72e).w,d1
loc_202dc0:
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
	bne.s loc_202e02
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202dfc
	bset.b #$0,($f754).w
	rts
loc_202dfc:
	bset.b #$1,($f754).w
loc_202e02:
	rts

sub_202e04:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e38
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e32
	bset.b #$2,($f756).w
	bra.s loc_202e38
loc_202e32:
	bset.b #$3,($f756).w
loc_202e38:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e6c
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e66
	bset.b #$0,($f756).w
	rts
loc_202e66:
	bset.b #$1,($f756).w
loc_202e6c:
	rts
	.incbin 11886, 114
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202f06
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202f00
	bset.b d6,($f756).w
	bra.s loc_202f06
loc_202f00:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202f06:
	rts

sub_202f08:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202f3a
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202f34
	bset.b d6,($f758).w
	bra.s loc_202f3a
loc_202f34:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202f3a:
	rts

sub_202f3c:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202f6e
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f68
	bset.b d6,($f75a).w
	bra.s loc_202f6e
loc_202f68:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202f6e:
	rts
	.incbin 12144, 44

sub_202f9c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20305a
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20313e
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203140
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203058
	bclr.b #$0,(a2)
	beq.s loc_20300e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20336c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203142
loc_20300e:
	bclr.b #$1,(a2)
	beq.s loc_203028
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20336c
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203142
loc_203028:
	bclr.b #$2,(a2)
	beq.s loc_20303e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20336c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203198
loc_20303e:
	bclr.b #$3,(a2)
	beq.s loc_203058
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20336c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203198
loc_203058:
	rts

sub_20305a:
	lea (dat_203424).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203076
	bclr.b #$1,(a2)
	beq.s loc_2030c0
	move.w #$e0,d4
loc_203076:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2030f0(pc,d0.w),a3
	beq.s loc_2030a8
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20336c
	movem.l (a7)+,d4-d5
	bsr.w sub_203142
	movea.l (a7)+,a0
	bra.s loc_2030c0
loc_2030a8:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20336e
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20316e
	movea.l (a7)+,a0
loc_2030c0:
	tst.b (a2)
	bne.s loc_2030c6
	rts
loc_2030c6:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2030da
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2030da:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203100
dat_2030f0:
	.incbin 12528, 16
loc_203100:
	moveq #$f,d6
	move.l #$800000,d7
loc_203108:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_203132
	add.w d0,d0
	movea.l dat_2030f0(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203244
	movem.l (a7)+,d4-d5
	bsr.w sub_20336c
	bsr.w sub_2031c6
	movem.l (a7)+,d4-d5/a0
loc_203132:
	addi.w #$10,d4
	dbf d6,loc_203108
	clr.b (a2)
	rts

sub_20313e:
	rts

sub_203140:
	rts

sub_203142:
	moveq #$15,d6

sub_203144:
	move.l #$800000,d7
	move.l d0,d1
loc_20314c:
	movem.l d4-d5,-(a7)
	bsr.w sub_203244
	move.l d1,d0
	bsr.w sub_2031c6
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20314c
	rts

sub_20316e:
	move.l #$800000,d7
	move.l d0,d1
loc_203176:
	movem.l d4-d5,-(a7)
	bsr.w sub_203246
	move.l d1,d0
	bsr.w sub_2031c6
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203176
	rts

sub_203198:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2031a2:
	movem.l d4-d5,-(a7)
	bsr.w sub_203244
	move.l d1,d0
	bsr.w sub_2031c6
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2031a2
	rts

sub_2031c6:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203202
	btst.b #$3,(a0)
	bne.s loc_2031e2
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2031e2:
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
loc_203202:
	btst.b #$3,(a0)
	bne.s loc_203224
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
loc_203224:
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

sub_203244:
	add.w (a3),d5

sub_203246:
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
	beq.s loc_203294
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
loc_203294:
	rts
	.incbin 12950, 214

sub_20336c:
	add.w (a3),d5

sub_20336e:
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
	.incbin 13192, 28

sub_2033a4:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2033ce
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2033f6

sub_2033ce:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033d2:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20336c
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203144
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2033d2
	rts
loc_2033f6:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033fa:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203424).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203456
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2033fa
	rts
dat_203424:
	.incbin 13348, 34
dat_203446:
	.incbin 13382, 16

sub_203456:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203446(pc,d0.w),a3
	beq.s loc_203478
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20336c
	movem.l (a7)+,d4-d5
	bsr.w sub_203142
	bra.s loc_20348c
loc_203478:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20336e
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20316e
loc_20348c:
	rts

sub_20348e:
	moveq #$0,d0
	lea (dat_20f0ac).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023f2
	movea.l (a2)+,a0
	bsr.w sub_2034e8
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200570
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2034d2
	jmp (loc_20cbee).l
loc_2034d2:
	btst.b #$1,($ff151c).l
	beq.s loc_2034e6
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2034e6
	bsr.w sub_202520
loc_2034e6:
	rts

sub_2034e8:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2034f2:
	move.l d0,(a3)+
	dbf d1,loc_2034f2
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203508
	lea ($a040).w,a3
	moveq #$2,d1

sub_203508:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23b5f8).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203522:
	move.w d1,d0
	movea.l a3,a0
loc_203526:
	move.b (a1)+,(a0)+
	dbf d0,loc_203526
	lea $80(a3),a3
	dbf d2,loc_203522
	rts

sub_203536:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2035b0(pc,d0.w),d0
	jsr dat_2035b0(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20355c
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20355c:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20358a
	bcc.s loc_20358c
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203580
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203580:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20358a:
	rts
loc_20358c:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2035a4
	btst.b #$1,($d022).w
	beq.s loc_2035a4
	add.w d1,d1
	add.w d1,d1
loc_2035a4:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2035b0:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2035d0(pc,d0.w),d0
	jmp dat_2035d0(pc,d0.w)
dat_2035d0:
	.incbin 13776, 102
	move.w #$310,($f726).w
	rts
	.incbin 13886, 612

sub_2038a2:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2038aa:
	move.b (a0),d0
	beq.s loc_2038c0
	add.w d0,d0
	add.w d0,d0
	lea (dat_203cc4).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2038c0:
	lea $40(a0),a0
	dbf d7,loc_2038aa
	rts

sub_2038ca:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203908
	bpl.s loc_2038fa
	btst.b #$1,$2c(a0)
	beq.s loc_2038fa
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203908
loc_2038fa:
	btst.b #$2,$2c(a0)
	bne.s loc_203908
	addi.w #$38,$12(a0)
loc_203908:
	tst.w $12(a0)
	bmi.s loc_20391c
	cmpi.w #$1000,$12(a0)
	bcs.s loc_20391c
	move.w #$1000,$12(a0)
loc_20391c:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_20392c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203968
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203968
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203966
	neg.w d1
loc_203966:
	add.w d1,d0
loc_203968:
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

sub_203982:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2039f2
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203a0e
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203a0e
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2039cc
	cmpi.w #$800,d3
	bcs.s loc_2039de
	subi.w #$800,d3
	bra.s loc_2039de
loc_2039cc:
	cmpi.w #$700,($f704).w
	bcs.s loc_2039de
	cmpi.w #$100,d3
	bcc.s loc_2039de
	addi.w #$800,d3
loc_2039de:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203a0e
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203a0e
loc_2039f2:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203a0e
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203a0e:
	rts
	.incbin 14864, 30

sub_203a2e:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203a34:
	move.l d1,(a1)+
	dbf d0,loc_203a34
	rts
dat_203a3c:
	.incbin 14908, 16

sub_203a4c:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203a58:
	tst.w (a4)
	beq.w loc_203b18
	moveq #$2,d6
loc_203a60:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203b10
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203ac6
	movea.l dat_203a3c(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203aaa
	cmpi.w #$800,d2
	bcs.s loc_203abc
	subi.w #$800,d2
	bra.s loc_203abc
loc_203aaa:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203abc
	cmpi.w #$100,d2
	bcc.s loc_203abc
	addi.w #$800,d2
loc_203abc:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203ae8
loc_203ac6:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203ae8
	.incbin 15056, 24
loc_203ae8:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203b06
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203b0a
loc_203b06:
	bsr.w sub_203b3a
loc_203b0a:
	bset.b #$7,$1(a0)
loc_203b10:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203a60
loc_203b18:
	lea $80(a4),a4
	dbf d7,loc_203a58
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203b32
	move.l #$0,(a2)
	rts
loc_203b32:
	move.b #$0,-$5(a2)
	rts

sub_203b3a:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203b80
	btst.l #$1,d4
	bne.w loc_203bce
loc_203b4c:
	cmpi.b #$50,d5
	beq.s loc_203b7e
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
	bne.s loc_203b78
	addq.w #$1,d0
loc_203b78:
	move.w d0,(a2)+
	dbf d1,loc_203b4c
loc_203b7e:
	rts
loc_203b80:
	btst.l #$1,d4
	bne.w loc_203c14
loc_203b88:
	cmpi.b #$50,d5
	beq.s loc_203bcc
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
	bne.s loc_203bc6
	addq.w #$1,d0
loc_203bc6:
	move.w d0,(a2)+
	dbf d1,loc_203b88
loc_203bcc:
	rts
loc_203bce:
	cmpi.b #$50,d5
	beq.s loc_203c12
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
	bne.s loc_203c0c
	addq.w #$1,d0
loc_203c0c:
	move.w d0,(a2)+
	dbf d1,loc_203bce
loc_203c12:
	rts
loc_203c14:
	cmpi.b #$50,d5
	beq.s loc_203c66
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
	bne.s loc_203c60
	addq.w #$1,d0
loc_203c60:
	move.w d0,(a2)+
	dbf d1,loc_203c14
loc_203c66:
	rts
	.incbin 15464, 92
dat_203cc4:
	.incbin 15556, 262

sub_203dca:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203ddc
	move.w #$0,(a1)
	rts
loc_203ddc:
	tst.w (a1)
	bne.s loc_203de6
	move.b #$1,$1(a1)
loc_203de6:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203e30
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203e22
	neg.w $10(a0)
loc_203e22:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205b5c
loc_203e30:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203e4e
	cmpa.w #$d040,a0
	beq.s loc_203e4e
	tst.b ($ff1906).l
	beq.s loc_203e4e
	jmp (loc_2070d2).l
loc_203e4e:
	move.b $2a(a0),d0
	beq.s loc_203e78
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203e6a
	cmpi.b #$2d,d0
	bcs.s loc_203e74
	move.b #$2d,d0
	bra.s loc_203e74
loc_203e6a:
	cmpi.b #$1e,d0
	bcs.s loc_203e74
	move.b #$1e,d0
loc_203e74:
	move.b d0,$2a(a0)
loc_203e78:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203e86(pc,d0.w),d1
	jmp dat_203e86(pc,d1.w)
dat_203e86:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203e90:
	tst.b ($d300).w
	bne.s loc_203ece
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203ece:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203ef6
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203ef6:
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203f2a:
	tst.b ($ff1506).l
	bne.s loc_203f90
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203f90
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f94
	cmpi.b #$2f,d1
	bne.s loc_203f92
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f90
	tst.b $2c(a0)
	beq.s loc_203f90
	jsr (sub_2076c6).l
	bne.s loc_203f90
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203f88
	moveq #$0,d0
loc_203f88:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f90:
	rts
loc_203f92:
	rts

sub_203f94:
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

sub_203fba:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203fc6
	neg.w d0
loc_203fc6:
	btst.b #$1,$2c(a0)
	beq.s loc_203fd6
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203ffe
loc_203fd6:
	cmpi.w #$600,d0
	bcs.s loc_203ffe
	tst.w $14(a0)
	bpl.s loc_203ff0
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_20400c
	move.w #$e0,d1
	bra.s loc_20400c
loc_203ff0:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_20400c
	move.w #$60,d1
	bra.s loc_20400c
loc_203ffe:
	cmpi.w #$a0,d1
	beq.s loc_20400c
	bcc.s loc_20400a
	addq.w #$2,d1
	bra.s loc_20400c
loc_20400a:
	subq.w #$2,d1
loc_20400c:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203fba
	bsr.w sub_203f2a
	tst.w ($ff1588).l
	beq.s loc_204032
	btst.b #$4,($f605).w
	beq.s loc_204032
	move.b #$1,($ff1906).l
	rts
loc_204032:
	tst.b ($f7cc).w
	bne.s loc_20403e
	move.w ($f604).w,($f602).w
loc_20403e:
	btst.b #$0,$2c(a0)
	beq.s loc_204062
	cmpi.b #$6,($ff1506).l
	bne.s loc_20405c
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_20407a
loc_20405c:
	bsr.w sub_204344
	bra.s loc_20407a
loc_204062:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_2040c0(pc,d0.w),d1
	jsr dat_2040c0(pc,d1.w)
	jsr (sub_206614).l
loc_20407a:
	bsr.s sub_2040ce
	bsr.w sub_20418e
	bsr.w sub_2041a8
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2040a2
	tst.b $1c(a0)
	bne.s loc_2040a2
	move.b $1d(a0),$1c(a0)
loc_2040a2:
	bsr.w sub_20554c
	tst.b $2c(a0)
	bmi.s loc_2040ba
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2040ba
	jsr (sub_206bb8).l
loc_2040ba:
	bsr.w sub_205402
	rts
dat_2040c0:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_2040ce:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2040f2
	move.w $30(a0),d0
	beq.s loc_2040e4
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2040f2
loc_2040e4:
	btst.b #$6,$2c(a0)
	bne.s loc_2040f2
	jsr (sub_203982).l
loc_2040f2:
	tst.b ($ff151f).l
	beq.s loc_204136
	tst.w $32(a0)
	beq.s loc_204136
	subq.w #$1,$32(a0)
	bne.s loc_204136
	tst.b ($ff1520).l
	bne.s loc_20412e
	tst.b ($ff1958).l
	bne.s loc_20412e
	tst.b ($ff152e).l
	bne.s loc_204128
	move.w #$e,d0
	jsr (sub_205b5c).l
loc_204128:
	jsr (sub_201b4a).l
loc_20412e:
	move.b #$0,($ff151f).l
loc_204136:
	tst.b ($ff1520).l
	beq.s loc_20418c
	tst.w $34(a0)
	beq.s loc_20418c
	subq.w #$1,$34(a0)
	bne.s loc_20418c
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204184
	tst.b ($ff1958).l
	bne.s loc_204184
	tst.b ($ff152e).l
	bne.s loc_20417e
	move.w #$e,d0
	jsr (sub_205b5c).l
loc_20417e:
	jsr (sub_201b4a).l
loc_204184:
	move.b #$0,($ff1520).l
loc_20418c:
	rts

sub_20418e:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2041a8:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2041b4
loc_2041b2:
	rts
loc_2041b4:
	cmpi.b #$1,($ff1507).l
	bne.s loc_2041c6
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2041b2
loc_2041c6:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20420a
	bset.b #$6,$22(a0)
	bne.s loc_2041b2
	bsr.w sub_205e60
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2041b2
	bra.s loc_204242
loc_20420a:
	tst.w $12(a0)
	beq.s loc_204212
	bpl.s loc_2041b2
loc_204212:
	bclr.b #$6,$22(a0)
	beq.s loc_2041b2
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2041b2
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204242
	move.w #$f000,$12(a0)
loc_204242:
	jsr (sub_2076c6).l
	bne.s loc_204256
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204256:
	rts

sub_204258:
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
	bcs.s loc_204332
	move.l #$50000,d0
loc_204332:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204344:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20436a
	tst.b ($ff152e).l
	beq.s loc_204360
	cmpi.b #$2,($ff152e).l
	bne.s loc_20436a
loc_204360:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20441a
loc_20436a:
	tst.b $2a(a0)
	bne.w loc_204428
	tst.b ($f784).w
	beq.w loc_204428
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204388
	neg.w d0
loc_204388:
	tst.w ($f786).w
	bne.s loc_204394
	move.w #$1,($f786).w
loc_204394:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2043aa
	move.b #$1,($ff1502).l
	bra.w loc_205b58
loc_2043aa:
	cmpi.w #$d2,d1
	bcs.s loc_2043fe
	cmpi.b #$2,($ff1522).l
	beq.s loc_2043fc
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2043d4
	move.w #$82,d0
	jsr (sub_205b5c).l
	moveq #$0,d0
loc_2043d4:
	add.b ($f784).w,d0
	bpl.s loc_2043de
	moveq #$0,d0
	bra.s loc_2043e6
loc_2043de:
	cmpi.b #$3,d0
	bcs.s loc_2043e6
	moveq #$2,d0
loc_2043e6:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204258
	move.b #$2,($ff1522).l
loc_2043fc:
	rts
loc_2043fe:
	cmpi.w #$5a,d1
	bcc.s loc_204416
	cmp.w d2,d0
	bcc.w loc_203e90
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204416:
	cmp.w d2,d0
	bcc.s loc_204428
loc_20441a:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204428:
	rts
	bsr.w sub_203dca
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20445a
	tst.b ($ff195b).l
	beq.s loc_204448
	cmpi.b #$79,$1a(a0)
	bne.s loc_204484
	bra.s loc_204450
loc_204448:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204484
loc_204450:
	bsr.w sub_204cec
	jmp (sub_2038ca).l
loc_20445a:
	bsr.w sub_204532
	bsr.w sub_204344
	bsr.w sub_204dd6
	bsr.w sub_204f02
	bsr.w sub_2045a6
	bsr.w sub_204d58
	bsr.w sub_204cec
	jsr (sub_20392c).l
	bsr.w sub_200c5a
	bsr.w sub_204f80
loc_204484:
	rts
	tst.b ($f7c7).w
	bne.s loc_2044a0
	cmpi.b #$15,$1c(a0)
	beq.s loc_2044a0
	tst.w $12(a0)
	bmi.s loc_2044a0
	move.b #$0,$1c(a0)
loc_2044a0:
	bsr.w sub_204532
	bsr.w sub_204344
	bsr.w sub_204ec0
	bsr.w sub_204c0c
	bsr.w sub_204cec
	jsr (sub_2038ca).l
	btst.b #$6,$22(a0)
	beq.s loc_2044c8
	subi.w #$28,$12(a0)
loc_2044c8:
	bsr.w sub_204fca
	bsr.w sub_204fee
	rts
	bsr.w sub_204532
	bsr.w sub_204344
	bsr.w sub_204dd6
	bsr.w sub_204f3e
	bsr.w sub_204a46
	bsr.w sub_204cec
	tst.b $2a(a0)
	bne.s loc_2044f6
	jsr (sub_20392c).l
loc_2044f6:
	bsr.w sub_200c5a
	bsr.w sub_204f80
	rts
	bsr.w sub_204532
	bsr.w sub_204344
	bsr.w sub_204ec0
	bsr.w sub_204c0c
	bsr.w sub_204cec
	jsr (sub_2038ca).l
	btst.b #$6,$22(a0)
	beq.s loc_204528
	subi.w #$28,$12(a0)
loc_204528:
	bsr.w sub_204fca
	bsr.w sub_204fee
	rts

sub_204532:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20459e
	tst.w ($ff1506).l
	bne.s loc_20459e
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2045a0).l,a2
loc_204566:
	move.b (a2)+,d0
	bmi.s loc_204576
	cmp.b d0,d1
	bne.s loc_204566
	bset.b #$1,$2c(a0)
	rts
loc_204576:
	bclr.b #$1,$2c(a0)
	beq.s loc_20459e
	tst.w $12(a0)
	bpl.s loc_20459e
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20459e
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20459e
	neg.w $10(a0)
loc_20459e:
	rts
dat_2045a0:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2045a6:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2048d0
	tst.w $3e(a0)
	bne.w loc_204880
	btst.b #$2,($f602).w
	beq.s loc_2045ce
	bsr.w sub_204960
loc_2045ce:
	btst.b #$3,($f602).w
	beq.s loc_2045da
	bsr.w sub_2049d6
loc_2045da:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204880
	tst.w $14(a0)
	beq.s loc_2045fa
	tst.b $2a(a0)
	beq.w loc_204880
	bra.s loc_204606
loc_2045fa:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204606:
	btst.b #$3,$22(a0)
	beq.s loc_204658
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2046b0
	cmpi.b #$1e,$0(a1)
	bne.s loc_204638
	move.b #$0,$1c(a0)
	bra.w loc_204880
loc_204638:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204694
	cmp.w d2,d1
	bge.s loc_204682
	bra.s loc_2046b0
loc_204658:
	jsr (sub_20691c).l
	cmpi.w #$c,d1
	blt.s loc_2046b0
	move.w #$ab,d0
	jsr (sub_202356).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20468c
loc_204682:
	btst.b #$0,$22(a0)
	bne.s loc_20469c
	bra.s loc_2046a6
loc_20468c:
	cmpi.b #$3,$37(a0)
	bne.s loc_2046b0
loc_204694:
	btst.b #$0,$22(a0)
	bne.s loc_2046a6
loc_20469c:
	move.b #$32,$1c(a0)
	bra.w loc_204880
loc_2046a6:
	move.b #$6,$1c(a0)
	bra.w loc_204880
loc_2046b0:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2046c4
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2046c4:
	btst.b #$7,($f788).w
	bne.w loc_2047c8
	btst.b #$6,($f788).w
	bne.w loc_2047e8
	btst.b #$1,($f602).w
	bne.w loc_2047e8
	andi.b #$f,($f788).w
	beq.s loc_2046fc
	btst.b #$0,($f603).w
	beq.s loc_204710
	bset.b #$7,($f788).w
	bra.w loc_2048a4
loc_2046fc:
	btst.b #$0,($f603).w
	beq.w loc_204710
	move.b #$1,($f788).w
	bra.w loc_2048a4
loc_204710:
	btst.b #$0,($f602).w
	beq.s loc_20478c
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_20476e
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204740
	asr.w #$1,d2
	sub.w d2,d1
loc_204740:
	btst.b #$0,$22(a0)
	beq.s loc_20474c
	neg.w d0
	neg.w d1
loc_20474c:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204762
	cmp.w d0,d1
	ble.s loc_204768
	bra.s loc_204766
loc_204762:
	cmp.w d1,d0
	ble.s loc_204768
loc_204766:
	move.w d1,d0
loc_204768:
	move.w d0,$14(a0)
	rts
loc_20476e:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204788
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202356).l
loc_204788:
	bra.w loc_2048a4
loc_20478c:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2047ac
	move.w #$ab,d0
	jsr (sub_202356).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2047e8
loc_2047ac:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202356).l
	bra.w loc_204880
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2047c8:
	btst.b #$0,($f602).w
	beq.s loc_2047e8
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2048a4
	addq.w #$2,($f73e).w
	bra.w loc_2048a4
loc_2047e8:
	btst.b #$6,($f788).w
	bne.w loc_204864
	andi.b #$f,($f788).w
	beq.s loc_20480c
	btst.b #$1,($f603).w
	beq.s loc_20481e
	bset.b #$6,($f788).w
	bra.w loc_2048a4
loc_20480c:
	btst.b #$1,($f603).w
	beq.s loc_20481e
	move.b #$1,($f788).w
	bra.w loc_2048a4
loc_20481e:
	btst.b #$1,($f602).w
	beq.s loc_204880
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204862
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204862
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204854
	neg.w $14(a0)
loc_204854:
	move.w #$9c,d0
	jsr (sub_202356).l
	bsr.w sub_204d80
loc_204862:
	bra.s loc_2048a4
loc_204864:
	btst.b #$1,($f602).w
	beq.s loc_204880
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2048a4
	subq.w #$2,($f73e).w
	bra.s loc_2048a4
loc_204880:
	cmpi.w #$60,($f73e).w
	bne.s loc_20489a
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2048a4
	move.b #$0,($f788).w
	bra.s loc_2048a4
loc_20489a:
	bcc.s loc_2048a0
	addq.w #$4,($f73e).w
loc_2048a0:
	subq.w #$2,($f73e).w
loc_2048a4:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2048d0
	move.w $14(a0),d0
	beq.s loc_2048d0
	bmi.s loc_2048c4
	sub.w d5,d0
	bcc.s loc_2048be
	move.w #$0,d0
loc_2048be:
	move.w d0,$14(a0)
	bra.s loc_2048d0
loc_2048c4:
	add.w d5,d0
	bcc.s loc_2048cc
	move.w #$0,d0
loc_2048cc:
	move.w d0,$14(a0)
loc_2048d0:
	move.b $26(a0),d0
	jsr (sub_20085a).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2048ee:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_20495e
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_20495e
	bmi.s loc_204906
	neg.w d1
loc_204906:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2067dc
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_20495e
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20495a
	cmpi.b #$40,d0
	beq.s loc_204948
	cmpi.b #$80,d0
	beq.s loc_204942
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204942:
	sub.w d1,$12(a0)
	rts
loc_204948:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20495a:
	add.w d1,$12(a0)
loc_20495e:
	rts

sub_204960:
	tst.b $2a(a0)
	bne.s loc_2049d4
	move.w $14(a0),d0
	beq.s loc_20496e
	bpl.s loc_20499e
loc_20496e:
	bset.b #$0,$22(a0)
	bne.s loc_204982
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204982:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204992
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204992
	move.w d1,d0
loc_204992:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_20499e:
	sub.w d4,d0
	bcc.s loc_2049a6
	move.w #$ff80,d0
loc_2049a6:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2049d4
	cmpi.w #$400,d0
	blt.s loc_2049d4
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202356).l
loc_2049d4:
	rts

sub_2049d6:
	tst.b $2a(a0)
	bne.s loc_204a44
	move.w $14(a0),d0
	bmi.s loc_204a0e
	bclr.b #$0,$22(a0)
	beq.s loc_2049f6
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2049f6:
	cmp.w d6,d0
	bge.s loc_204a02
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204a02
	move.w d6,d0
loc_204a02:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a0e:
	add.w d4,d0
	bcc.s loc_204a16
	move.w #$80,d0
loc_204a16:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a44
	cmpi.w #$fc00,d0
	bgt.s loc_204a44
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202356).l
loc_204a44:
	rts

sub_204a46:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204b90
	tst.w $3e(a0)
	bne.s loc_204a7e
	btst.b #$2,($f602).w
	beq.s loc_204a72
	bsr.w sub_204bc6
loc_204a72:
	btst.b #$3,($f602).w
	beq.s loc_204a7e
	bsr.w sub_204bea
loc_204a7e:
	tst.b $2a(a0)
	beq.w loc_204b28
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a9e
	asr.w #$1,d2
	sub.w d2,d1
loc_204a9e:
	btst.b #$0,$22(a0)
	beq.s loc_204aaa
	neg.w d0
	neg.w d1
loc_204aaa:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204ac0
	cmp.w d0,d1
	ble.s loc_204ac6
	bra.s loc_204ac4
loc_204ac0:
	cmp.w d1,d0
	ble.s loc_204ac6
loc_204ac4:
	move.w d1,d0
loc_204ac6:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204afa
	rts
loc_204ad4:
	move.w #$ab,d0
	jsr (sub_202356).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204b5a
loc_204afa:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204ad4
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202356).l
	btst.b #$0,$22(a0)
	bne.s loc_204b20
	bsr.w sub_204bea
	bra.s loc_204b28
loc_204b20:
	bsr.w sub_204bc6
	bra.s loc_204b28
	dc.b $4e,$75
loc_204b28:
	move.w $14(a0),d0
	beq.s loc_204b4a
	bmi.s loc_204b3e
	sub.w d5,d0
	bcc.s loc_204b38
	move.w #$0,d0
loc_204b38:
	move.w d0,$14(a0)
	bra.s loc_204b4a
loc_204b3e:
	add.w d5,d0
	bcc.s loc_204b46
	move.w #$0,d0
loc_204b46:
	move.w d0,$14(a0)
loc_204b4a:
	tst.w $14(a0)
	bne.s loc_204b90
	move.w #$ab,d0
	jsr (sub_202356).l
loc_204b5a:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204b7a
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204b8a
loc_204b7a:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204b8a:
	move.b #$5,$1c(a0)
loc_204b90:
	move.b $26(a0),d0
	jsr (sub_20085a).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204bb4
	move.w #$1000,d1
loc_204bb4:
	cmpi.w #$f000,d1
	bge.s loc_204bbe
	move.w #$f000,d1
loc_204bbe:
	move.w d1,$10(a0)
	bra.w loc_2048ee

sub_204bc6:
	move.w $14(a0),d0
	beq.s loc_204bce
	bpl.s loc_204bdc
loc_204bce:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204bdc:
	sub.w d4,d0
	bcc.s loc_204be4
	move.w #$ff80,d0
loc_204be4:
	move.w d0,$14(a0)
	rts

sub_204bea:
	move.w $14(a0),d0
	bmi.s loc_204bfe
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204bfe:
	add.w d4,d0
	bcc.s loc_204c06
	move.w #$80,d0
loc_204c06:
	move.w d0,$14(a0)
	rts

sub_204c0c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204c46
	tst.w ($ff1506).l
	bne.s loc_204c46
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204c3e
	cmpi.w #$840,$8(a0)
	bcc.s loc_204c3e
	rts
loc_204c3e:
	btst.b #$1,$2c(a0)
	bne.s loc_204c76
loc_204c46:
	btst.b #$2,($f602).w
	beq.s loc_204c60
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204c60
	move.w d1,d0
loc_204c60:
	btst.b #$3,($f602).w
	beq.s loc_204c76
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204c76
	move.w d6,d0
loc_204c76:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204c8c
	bcc.s loc_204c88
	addq.w #$4,($f73e).w
loc_204c88:
	subq.w #$2,($f73e).w
loc_204c8c:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204cba
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204cba
	bmi.s loc_204cae
	sub.w d1,d0
	bcc.s loc_204ca8
	move.w #$0,d0
loc_204ca8:
	move.w d0,$10(a0)
	rts
loc_204cae:
	sub.w d1,d0
	bcs.s loc_204cb6
	move.w #$0,d0
loc_204cb6:
	move.w d0,$10(a0)
loc_204cba:
	rts
	dc.b $10,$28,$00,$26
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204cea
	bsr.w sub_206a16
	tst.w d1
	bpl.s loc_204cea
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
loc_204cea:
	rts

sub_204cec:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204d40
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204d1a
	addi.w #$38,d0
loc_204d1a:
	cmp.w d1,d0
	bls.s loc_204d40
loc_204d1e:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204d2e
	rts
loc_204d2e:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206e4a
	move.b #$6,$24(a0)
	rts
loc_204d40:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204d1e

sub_204d58:
	tst.b ($f7ca).w
	bne.s loc_204d7e
	move.w $14(a0),d0
	bpl.s loc_204d66
	neg.w d0
loc_204d66:
	cmpi.w #$80,d0
	bcs.s loc_204d7e
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204d7e
	btst.b #$1,($f602).w
	bne.s sub_204d80
loc_204d7e:
	rts

sub_204d80:
	btst.b #$2,$22(a0)
	beq.s loc_204d8a
	bra.s loc_204dba
loc_204d8a:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204daa
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204dba
loc_204daa:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204dba:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204dd4
	cmpi.w #$200,$14(a0)
	bcc.s loc_204dd4
	move.w #$200,$14(a0)
loc_204dd4:
	rts

sub_204dd6:
	tst.b $2a(a0)
	beq.s loc_204dde
	rts
loc_204dde:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204df0
	tst.w $14(a0)
	beq.w loc_204eb6
loc_204df0:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204eb6
	btst.b #$3,$22(a0)
	beq.s loc_204e0c
	jsr (sub_205ae2).l
	beq.s loc_204e3c
loc_204e0c:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206846
	cmpi.w #$6,d1
	blt.w loc_204eb6
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204e32
	move.w #$380,d2
loc_204e32:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204e3c:
	jsr (sub_20085a).l
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
	jsr (sub_202356).l
	btst.b #$2,$22(a0)
	bne.s loc_204eb8
	tst.b ($ff195b).l
	beq.s loc_204e9a
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204eaa
loc_204e9a:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204eaa:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204eb6:
	rts
loc_204eb8:
	bset.b #$4,$22(a0)
	rts

sub_204ec0:
	tst.b $3c(a0)
	beq.s loc_204ef2
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204ed6
	move.w #$fe00,d1
loc_204ed6:
	cmp.w $12(a0),d1
	ble.s loc_204ef0
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204ef0
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204ef0:
	rts
loc_204ef2:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204f00
	move.w #$f040,$12(a0)
loc_204f00:
	rts

sub_204f02:
	tst.b $2a(a0)
	bne.s loc_204f3c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204f3c
	move.b $26(a0),d0
	jsr (sub_20085a).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204f3c
	bmi.s loc_204f38
	tst.w d0
	beq.s loc_204f36
	add.w d0,$14(a0)
loc_204f36:
	rts
loc_204f38:
	add.w d0,$14(a0)
loc_204f3c:
	rts

sub_204f3e:
	tst.b $2a(a0)
	bne.s loc_204f7e
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204f7e
	move.b $26(a0),d0
	jsr (sub_20085a).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204f74
	tst.w d0
	bpl.s loc_204f6e
	asr.l #$2,d0
loc_204f6e:
	add.w d0,$14(a0)
	rts
loc_204f74:
	tst.w d0
	bmi.s loc_204f7a
	asr.l #$2,d0
loc_204f7a:
	add.w d0,$14(a0)
loc_204f7e:
	rts

sub_204f80:
	nop
	tst.b $38(a0)
	bne.s loc_204fc2
	tst.w $3e(a0)
	bne.s loc_204fc4
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204fc2
	move.w $14(a0),d0
	bpl.s loc_204fa4
	neg.w d0
loc_204fa4:
	cmpi.w #$280,d0
	bcc.s loc_204fc2
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204fc2:
	rts
loc_204fc4:
	subq.w #$1,$3e(a0)
	rts

sub_204fca:
	btst.b #$1,$2c(a0)
	bne.s loc_204fec
	move.b $26(a0),d0
	beq.s loc_204fec
	bpl.s loc_204fe2
	addq.b #$2,d0
	bcc.s loc_204fe0
	moveq #$0,d0
loc_204fe0:
	bra.s loc_204fe8
loc_204fe2:
	subq.b #$2,d0
	bcc.s loc_204fe8
	moveq #$0,d0
loc_204fe8:
	move.b d0,$26(a0)
loc_204fec:
	rts

sub_204fee:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200af2).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_2050d2
	cmpi.b #$80,d0
	beq.w loc_205134
	cmpi.b #$c0,d0
	beq.w loc_205190
	bsr.w sub_206b5c
	tst.w d1
	bpl.s loc_205040
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205040:
	bsr.w sub_2069be
	tst.w d1
	bpl.s loc_205052
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205052:
	bsr.w sub_20686e
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_2050d0
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205070
	cmp.b d2,d0
	blt.s loc_2050d0
loc_205070:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051f2
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2050ae
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2050a0
	asr.w $12(a0)
	bra.s loc_2050c2
loc_2050a0:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2050ae:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_2050c2
	move.w #$fc0,$12(a0)
loc_2050c2:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2050d0
	neg.w $14(a0)
loc_2050d0:
	rts
loc_2050d2:
	bsr.w sub_206b5c
	tst.w d1
	bpl.s loc_2050ec
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2050ec:
	bsr.w sub_206a16
	tst.w d1
	bpl.s loc_205106
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205104
	move.w #$0,$12(a0)
loc_205104:
	rts
loc_205106:
	tst.w $12(a0)
	bmi.s loc_205132
	bsr.w sub_20686e
	tst.w d1
	bpl.s loc_205132
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051f2
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205132:
	rts
loc_205134:
	bsr.w sub_206b5c
	tst.w d1
	bpl.s loc_205146
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205146:
	bsr.w sub_2069be
	tst.w d1
	bpl.s loc_205158
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205158:
	bsr.w sub_206a16
	tst.w d1
	bpl.s loc_20518e
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205178
	move.w #$0,$12(a0)
	rts
loc_205178:
	move.b d3,$26(a0)
	bsr.w sub_205264
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20518e
	neg.w $14(a0)
loc_20518e:
	rts
loc_205190:
	bsr.w sub_2069be
	tst.w d1
	bpl.s loc_2051aa
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2051aa:
	bsr.w sub_206a16
	tst.w d1
	bpl.s loc_2051c4
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2051c2
	move.w #$0,$12(a0)
loc_2051c2:
	rts
loc_2051c4:
	tst.w $12(a0)
	bmi.s loc_2051f0
	bsr.w sub_20686e
	tst.w d1
	bpl.s loc_2051f0
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051f2
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2051f0:
	rts

sub_2051f2:
	btst.b #$4,$22(a0)
	beq.s loc_2051fc
	nop
loc_2051fc:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205256
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205236
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205246
loc_205236:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205246:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202356).l
loc_205256:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205264:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_20392c).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20529e
	subi.w #$20,$12(a0)
loc_20529e:
	jsr (sub_206614).l
	bsr.w sub_2052ba
	bsr.w sub_204cec
	bsr.w sub_20418e
	bsr.w sub_20554c
	jmp (sub_203982).l

sub_2052ba:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206e4a
	bsr.w sub_204fee
	btst.b #$1,$22(a0)
	bne.s loc_2052f4
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2052f4:
	rts
	.incbin 21238, 268

sub_205402:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20542a
	cmpi.b #$5,($ff1506).l
	beq.s loc_20542a
	cmpi.b #$2,($ff1506).l
	beq.s loc_20542a
	tst.b ($ff1506).l
	bne.w loc_2054ec
loc_20542a:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205468
	tst.b ($ff1506).l
	bne.w loc_2054ee
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2054ee
	bra.s loc_205470
loc_205468:
	cmp.b ($f7af).w,d1
	beq.w loc_2054ee
loc_205470:
	cmp.b ($f7ac).w,d1
	beq.s loc_2054a0
	cmp.b ($f7ad).w,d1
	beq.s loc_205484
	bclr.b #$6,$1(a0)
	rts
loc_205484:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205506
	btst.b #$1,$22(a0)
	beq.s loc_2054a0
	bclr.b #$6,$1(a0)
	rts
loc_2054a0:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2054b2
	bclr.b #$6,$1(a0)
	rts
loc_2054b2:
	cmpi.b #$e0,d2
	bcs.s loc_2054c0
	bset.b #$6,$1(a0)
	rts
loc_2054c0:
	btst.b #$6,$1(a0)
	bne.s loc_2054dc
	move.b $26(a0),d1
	beq.s loc_2054ec
	cmpi.b #$80,d1
	bhi.s loc_2054ec
	bset.b #$6,$1(a0)
	rts
loc_2054dc:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2054ec
	bclr.b #$6,$1(a0)
loc_2054ec:
	rts
loc_2054ee:
	btst.b #$2,$22(a0)
	bne.s loc_205500
	move.w #$9c,d0
	jsr (sub_202356).l
loc_205500:
	jmp (sub_204d80).l
loc_205506:
	tst.w $12(a0)
	bmi.s loc_20554a
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_20553e
	cmpi.w #$38,d1
	bcs.s loc_205536
	cmpi.w #$80,d1
	bcs.s loc_20554a
loc_20552e:
	bclr.b #$6,$1(a0)
	rts
loc_205536:
	bset.b #$6,$1(a0)
	rts
loc_20553e:
	cmpi.w #$38,d1
	bcs.s loc_20552e
	cmpi.w #$80,d1
	bcc.s loc_205536
loc_20554a:
	rts

sub_20554c:
	lea (dat_20583c).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20556e
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20556e:
	bsr.w sub_2057de
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2055e6
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2055b4
	move.b d0,$1e(a0)

sub_205598:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2055ac
	bpl.s loc_2055ac
	cmpi.b #$fd,d0
	bge.s loc_2055b6
loc_2055ac:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2055b4:
	rts
loc_2055b6:
	addq.b #$1,d0
	bne.s loc_2055c6
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2055ac
loc_2055c6:
	addq.b #$1,d0
	bne.s loc_2055da
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2055ac
loc_2055da:
	addq.b #$1,d0
	bne.s loc_2055e4
	move.b $2(a1,d1.w),$1c(a0)
loc_2055e4:
	rts
loc_2055e6:
	subq.b #$1,$1e(a0)
	bpl.s loc_2055b4
	addq.b #$1,d0
	bne.w loc_2056a0
	tst.b ($ff195b).l
	bne.w loc_205768
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20560e
	not.b d0
loc_20560e:
	btst.b #$1,$2c(a0)
	bne.s loc_20561c
	addi.b #$10,d0
	bra.s loc_20561e
loc_20561c:
	addq.b #$8,d0
loc_20561e:
	bpl.s loc_205622
	moveq #$3,d1
loc_205622:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205714
	move.w $14(a0),d2
	bpl.s loc_205640
	neg.w d2
loc_205640:
	btst.b #$1,$2c(a0)
	beq.s loc_205658
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205a3e).l,a1
	bra.s loc_205682
loc_205658:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205a18).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205682
	lea (dat_2058bc).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205682
	lea (dat_2058b4).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205682:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205690
	moveq #$0,d2
loc_205690:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205598
	add.b d3,$1a(a0)
	rts
loc_2056a0:
	addq.b #$1,d0
	bne.s loc_205710
	move.w $14(a0),d2
	bpl.s loc_2056ac
	neg.w d2
loc_2056ac:
	lea (dat_20599a).l,a1
	tst.b ($ff195b).l
	bne.s loc_2056ea
	lea (dat_2058cc).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2056de
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2056ea
	lea (dat_205a46).l,a1
	bra.s loc_2056ea
loc_2056de:
	cmpi.w #$600,d2
	bcc.s loc_2056ea
	lea (dat_2058c4).l,a1
loc_2056ea:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2056f4
	moveq #$0,d2
loc_2056f4:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205598
loc_205710:
	addq.b #$1,d0
	bne.s loc_205754
loc_205714:
	move.w $14(a0),d2
	bmi.s loc_20571c
	neg.w d2
loc_20571c:
	addi.w #$800,d2
	bpl.s loc_205724
	moveq #$0,d2
loc_205724:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2059ac).l,a1
	tst.b ($ff195b).l
	bne.s loc_20573e
	lea (dat_2058d4).l,a1
loc_20573e:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205598
loc_205754:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205768:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20577a
	not.b d0
loc_20577a:
	addi.b #$10,d0
	bpl.s loc_205782
	moveq #$0,d1
loc_205782:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2057b0
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2056a0
loc_2057b0:
	move.w $14(a0),d2
	bpl.s loc_2057b8
	neg.w d2
loc_2057b8:
	lea (dat_205994).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2057ca
	lea (dat_20598e).l,a1
loc_2057ca:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2057d4
	moveq #$0,d2
loc_2057d4:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205598

sub_2057de:
	tst.b ($ff195b).l
	beq.s loc_2057ea
	move.b dat_2057ec(pc,d0.w),d0
loc_2057ea:
	rts
dat_2057ec:
	.incbin 22508, 80
dat_20583c:
	.incbin 22588, 120
dat_2058b4:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2058bc:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2058c4:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2058cc:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2058d4:
	.incbin 22740, 186
dat_20598e:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205994:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_20599a:
	.incbin 22938, 18
dat_2059ac:
	.incbin 22956, 108
dat_205a18:
	.incbin 23064, 38
dat_205a3e:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205a46:
	.incbin 23110, 56

sub_205a7e:
	tst.b (a0)
	beq.w loc_205ae0
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205ae0
	move.b d0,(a2)
	lea (dat_231b1c).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205ae0
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205ab2:
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
loc_205acc:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205acc
	dbf d1,loc_205ab2
loc_205ae0:
	rts

sub_205ae2:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205b56
	move.w #$98,d0
	jsr (sub_202356).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200af2).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205b44
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205b44:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205b56:
	rts
loc_205b58:
	move.w #$e,d0

sub_205b5c:
	cmpi.w #$67,d0
	bne.s loc_205b6a
	move.b #$1,($ff1958).l
loc_205b6a:
	move.w d0,($a12010).l
loc_205b70:
	move.w ($a12020).l,d0
	beq.s loc_205b70
	cmp.w ($a12020).l,d0
	bne.s loc_205b70
	move.w #$0,($a12010).l
loc_205b88:
	move.w ($a12020).l,d0
	bne.s loc_205b88
	move.w ($a12020).l,d0
	bne.s loc_205b88
	rts
	dc.b $00,$00

sub_205b9c:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205bb8
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205bb8:
	subq.b #$1,$1e(a0)
	bpl.s loc_205bf8
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205bfa
loc_205bd4:
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
loc_205bf8:
	rts
loc_205bfa:
	addq.b #$1,d0
	bne.s loc_205c0a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205bd4
loc_205c0a:
	addq.b #$1,d0
	bne.s loc_205c1e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205bd4
loc_205c1e:
	addq.b #$1,d0
	bne.s loc_205c28
	move.b $2(a1,d1.w),$1c(a0)
loc_205c28:
	addq.b #$1,d0
	bne.s loc_205c30
	addq.b #$2,$24(a0)
loc_205c30:
	addq.b #$1,d0
	bne.s loc_205c3e
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205c3e:
	addq.b #$1,d0
	bne.s loc_205c46
	addq.b #$2,$25(a0)
loc_205c46:
	rts

sub_205c48:
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
	bcs.s loc_205cde
	move.l #$50000,d0
loc_205cde:
	move.l d0,($ff152a).l
	move.b ($ff195b).l,($ff1591).l
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205d0a(pc,d0.w),d0
	jsr dat_205d0a(pc,d0.w)
	jsr (sub_203982).l
	jmp (loc_2076fc).l
dat_205d0a:
	dc.b $00,$08,$00,$c4,$00,$fa,$01,$4c
	addq.b #$2,$24(a0)
	move.l #$21d8ac,$4(a0)
	move.w #$6cb,$2(a0)
	move.b #$4,$1(a0)
	move.b #$8,$19(a0)
	move.b #$18,$16(a0)
	move.b #$4,$18(a0)
	move.b ($ff158e).l,d0
	cmp.b $28(a0),d0
	bcs.s loc_205d50
	move.b #$1,$2e(a0)
	bra.s loc_205d56
loc_205d50:
	move.b #$e3,$20(a0)
loc_205d56:
	jsr (sub_2076c6).l
	bne.s loc_205dc8
	move.b #$13,$0(a1)
	addq.b #$4,$24(a1)
	tst.b $2e(a0)
	beq.s loc_205d72
	addq.b #$2,$24(a1)
loc_205d72:
	move.l #$21d8ac,$4(a1)
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
loc_205dc8:
	jmp (sub_203a2e).l
	tst.b $2e(a0)
	bne.s loc_205e02
	tst.b $21(a0)
	beq.s loc_205e02
	clr.b $20(a0)
	move.b #$1,$2e(a0)
	move.b $28(a0),($ff158e).l
	move.b #$1,($ff1522).l
	bsr.w sub_205c48
	move.w #$ae,d0
	jmp (sub_202356).l
loc_205e02:
	rts
	tst.b $2e(a0)
	bne.s loc_205e1a
	movea.l $30(a0),a1
	tst.b $2e(a1)
	beq.s loc_205e54
	move.b #$1,$2e(a0)
loc_205e1a:
	addq.b #$8,$34(a0)
	moveq #$0,d0
	move.b $34(a0),d0
	jsr (sub_20085a).l
	muls.w #$8,d0
	lsr.l #$8,d0
	move.w $2a(a0),$8(a0)
	add.w d0,$8(a0)
	muls.w #$fff8,d1
	lsr.l #$8,d1
	move.w $2c(a0),$c(a0)
	add.w d1,$c(a0)
	tst.b $34(a0)
	bne.s loc_205e54
	addq.b #$2,$24(a0)
loc_205e54:
	rts
	dc.b $43,$f9,$00,$21,$d8,$a6,$60,$00
	dc.b $fd,$3e

sub_205e60:
	rts
	.incbin 24162, 116

sub_205ed6:
	tst.b $25(a0)
	bne.s loc_205f06
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_2076c6).l
	bne.s loc_205f06
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205f06:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f16(pc,d0.w),d0
	jmp dat_205f16(pc,d0.w)
dat_205f16:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205f3e
	andi.b #$7f,$2(a0)
loc_205f3e:
	move.l #$21d714,$4(a0)
	bsr.s sub_205ed6
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205f6c
	move.w #$100,$1c(a0)
loc_205f6c:
	lea (dat_21d700).l,a1
	bsr.w sub_205b9c
	jmp (sub_203982).l
	tst.b $25(a0)
	beq.s loc_205f88
	jmp (sub_203a2e).l
loc_205f88:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205faa(pc,d0.w),d0
	jsr dat_205faa(pc,d0.w)
	jmp (sub_203982).l
dat_205faa:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205fd8
	andi.b #$7f,$2(a0)
loc_205fd8:
	move.l #$236ab0,$4(a0)
	tst.b $28(a0)
	bne.s loc_205ffe
	bsr.w sub_20606a
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_206060
loc_205ffe:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_20691c).l
	tst.w d1
	bpl.s loc_20605c
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206046
	bsr.w sub_20606a
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_206090
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206046:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_206060
loc_20605c:
	addq.w #$2,$c(a0)
loc_206060:
	lea (dat_236a94).l,a1
	bra.w sub_205b9c

sub_20606a:
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

sub_206090:
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
	bra.s loc_206060
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_206060
	.incbin 24780, 356
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206240(pc,d0.w),d0
	jmp dat_206240(pc,d0.w)
dat_206240:
	.incbin 25152, 84
dat_206294:
	.incbin 25236, 380
loc_206410:
	bclr.b #$7,($ff156b).l
	beq.s loc_20645e
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206460(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206434:
	move.l (a1)+,(a2)+
	dbf d0,loc_206434
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20645e:
	rts
dat_206460:
	.incbin 25696, 284
dat_20657c:
	.incbin 25980, 152

sub_206614:
	rts
loc_206616:
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
	bne.s loc_2066d0
	move.b ($ff1593).l,($ff195b).l
loc_2066d0:
	tst.b ($ff1522).l
	bpl.s loc_2066e6
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2066e6:
	rts

sub_2066e8:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206616
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
	bne.s loc_2067a2
	move.b ($ff1591).l,($ff195b).l
loc_2067a2:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2067c4
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2067c4:
	tst.b ($ff1522).l
	bpl.s loc_2067da
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2067da:
	rts

sub_2067dc:
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
	bpl.s loc_206818
	move.b d1,d0
	bpl.s loc_206812
	subq.b #$1,d0
loc_206812:
	addi.b #$20,d0
	bra.s loc_206822
loc_206818:
	move.b d1,d0
	bpl.s loc_20681e
	addq.b #$1,d0
loc_20681e:
	addi.b #$1f,d0
loc_206822:
	andi.b #$c0,d0
	beq.w loc_2068f2
	cmpi.b #$80,d0
	beq.w loc_206a8e
	andi.b #$38,d1
	bne.s loc_20683a
	addq.w #$8,d2
loc_20683a:
	cmpi.b #$40,d0
	beq.w loc_206b64
	bra.w loc_2069c6

sub_206846:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206aec
	cmpi.b #$80,d0
	beq.w sub_206a16
	cmpi.b #$c0,d0
	beq.w loc_206956

sub_20686e:
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
	jsr (sub_2011b0).l
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
	jsr (sub_2011b0).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_2068d2:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2068e0
	move.b ($f768).w,d3
	exg d0,d1
loc_2068e0:
	btst.l #$0,d3
	beq.s loc_2068e8
	move.b d2,d3
loc_2068e8:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2068f2:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011b0).l
	move.b #$0,d2
loc_20690e:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20691a
	move.b d2,d3
loc_20691a:
	rts

sub_20691c:
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
	jsr (sub_2011b0).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206954
	move.b #$0,d3
loc_206954:
	rts
loc_206956:
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
	jsr (sub_201320).l
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
	jsr (sub_201320).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_2068d2

sub_2069be:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2069c6:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201320).l
	move.b #$c0,d2
	bra.w loc_20690e
	.incbin 27110, 48

sub_206a16:
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
	jsr (sub_2011b0).l
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
	jsr (sub_2011b0).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_2068d2

sub_206a86:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a8e:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2011b0).l
	move.b #$80,d2
	bra.w loc_20690e
	.incbin 27314, 56
	rts
loc_206aec:
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
	jsr (sub_201320).l
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
	jsr (sub_201320).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_2068d2

sub_206b5c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b64:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201320).l
	move.b #$40,d2
	bra.w loc_20690e
	.incbin 27528, 48

sub_206bb8:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206bdc
	addi.w #$c,d3
	moveq #$a,d5
loc_206bdc:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206bea:
	tst.b $1(a1)
	bpl.s loc_206bf6
	move.b $20(a1),d0
	bne.s loc_206c02
loc_206bf6:
	lea $40(a1),a1
	dbf d6,loc_206bea
	moveq #$0,d0
	rts
loc_206c02:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206f68).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206c2a
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206c30
	bra.w loc_206bf6
loc_206c2a:
	cmp.w d4,d0
	bhi.w loc_206bf6
loc_206c30:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206c48
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206c4e
	bra.w loc_206bf6
loc_206c48:
	cmp.w d5,d0
	bhi.w loc_206bf6
loc_206c4e:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206cc2
	cmpi.b #$c0,d1
	beq.w loc_206ea2
	tst.b d1
	bmi.w loc_206d8c
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206c86
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206c84
	addq.b #$2,$24(a1)
loc_206c84:
	rts
loc_206c86:
	tst.w $12(a0)
	bpl.s loc_206cb0
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206cc0
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206cc0
	addq.b #$4,$25(a1)
	rts
loc_206cb0:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206cc0
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206cc0:
	rts

sub_206cc2:
	tst.b ($ff1521).l
	bne.s loc_206cdc
	tst.b ($ff151f).l
	bne.s loc_206cdc
	cmpi.b #$2,$1c(a0)
	bne.w loc_206d8c
loc_206cdc:
	tst.b $21(a1)
	beq.s loc_206d06
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206d04
	bset.b #$7,$22(a1)
loc_206d04:
	rts
loc_206d06:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206d1e
	moveq #$6,d0
loc_206d1e:
	move.w d0,$3e(a1)
	move.w dat_206d7e(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206d38
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206d38:
	bsr.w sub_20ac44
	move.w #$96,d0
	jsr (sub_202356).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206d6e
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206d76
	neg.w $12(a0)
	rts
loc_206d6e:
	addi.w #$100,$12(a0)
	rts
loc_206d76:
	subi.w #$100,$12(a0)
	rts
dat_206d7e:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
loc_206d86:
	bset.b #$7,$22(a1)
loc_206d8c:
	tst.b ($ff1521).l
	bne.s loc_206d9c
	tst.b ($ff151f).l
	beq.s loc_206da0
loc_206d9c:
	moveq #$ffffffff,d0
	rts
loc_206da0:
	nop
	tst.w $30(a0)
	bne.s loc_206d9c
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206dd6
	tst.w ($ff1512).l
	beq.w loc_206e40
	jsr (sub_2076c6).l
	bne.s loc_206dd6
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206dd6:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206dec
	move.b #$0,($ff156f).l
loc_206dec:
	move.b #$4,$24(a0)
	bsr.w sub_2051f2
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206e1c
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206e1c:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206e2a
	neg.w $10(a0)
loc_206e2a:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206e40:
	tst.w ($ff1588).l
	bne.w loc_206dd6

sub_206e4a:
	tst.w ($ff1906).l
	bne.s loc_206e9e
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2051f2
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202356).l
loc_206e9e:
	moveq #$ffffffff,d0
	rts
loc_206ea2:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206f54
	cmpi.b #$b,d1
	beq.w loc_206f1e
	cmpi.b #$c,d1
	beq.w loc_206f22
	cmpi.b #$17,d1
	beq.w loc_206f54
	cmpi.b #$21,d1
	beq.w loc_206f54
	cmpi.b #$23,d1
	beq.w loc_206f54
	cmpi.b #$2f,d1
	beq.w loc_206f5a
	cmpi.b #$3a,d1
	beq.w loc_206f5a
	cmpi.b #$3b,d1
	beq.w loc_206f5a
	cmpi.b #$1,($f7aa).w
	bne.s loc_206f1c
	cmpi.b #$3c,d1
	blt.s loc_206f1c
	cmpi.b #$3f,d1
	bgt.s loc_206f1c
	bsr.w sub_206cc2
	tst.b $20(a1)
	bne.s loc_206f14
	addq.b #$3,$21(a1)
loc_206f14:
	clr.b $20(a1)
	bra.w loc_206f54
loc_206f1c:
	rts
loc_206f1e:
	bra.w loc_206d86
loc_206f22:
	sub.w d0,d5
	cmpi.w #$8,d5
	bcc.s loc_206f50
	move.w $8(a1),d0
	subq.w #$4,d0
	btst.b #$0,$22(a1)
	beq.s loc_206f3c
	subi.w #$10,d0
loc_206f3c:
	sub.w d2,d0
	bcc.s loc_206f48
	addi.w #$18,d0
	bcs.s loc_206f4c
	bra.s loc_206f50
loc_206f48:
	cmp.w d4,d0
	bhi.s loc_206f50
loc_206f4c:
	bra.w loc_206d8c
loc_206f50:
	bra.w sub_206cc2
loc_206f54:
	addq.b #$1,$21(a1)
	rts
loc_206f5a:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206f66
	addq.b #$1,$21(a1)
loc_206f66:
	rts
dat_206f68:
	.incbin 28520, 362
loc_2070d2:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2070e8
	move.l #$4000,(dat_207262).l
	bra.s loc_207108
loc_2070e8:
	addi.l #$2000,(dat_207262).l
	cmpi.l #$80000,(dat_207262).l
	bls.s loc_207108
	move.l #$80000,(dat_207262).l
loc_207108:
	move.l (dat_207262).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20711a
	sub.l d0,$c(a0)
loc_20711a:
	btst.b #$1,($f604).w
	beq.s loc_207126
	add.l d0,$c(a0)
loc_207126:
	btst.b #$2,($f604).w
	beq.s loc_207132
	sub.l d0,$8(a0)
loc_207132:
	btst.b #$3,($f604).w
	beq.s loc_20713e
	add.l d0,$8(a0)
loc_20713e:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200fc8).l
	move.w (a1),($ff194e).l
	lea (dat_207266).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207180
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20717a
	move.b #$0,d1
loc_20717a:
	move.b d1,($ff1904).l
loc_207180:
	btst.b #$7,($f605).w
	beq.s loc_2071a0
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20719a
	add.b (a2),d1
loc_20719a:
	move.b d1,($ff1904).l
loc_2071a0:
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
	beq.s loc_20722c
	bsr.w sub_2076c6
	bne.s loc_20722c
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
loc_20722c:
	btst.b #$4,($f605).w
	beq.s loc_20725c
	move.b #$0,($ff1906).l
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20725c:
	jmp (sub_203982).l
dat_207262:
	dc.b $00,$00,$40,$00
dat_207266:
	.incbin 29286, 590

sub_2074b4:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2074c2:
	clr.l (a2)+
	dbf d0,loc_2074c2
	rts

sub_2074ca:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2074d8(pc,d0.w),d0
	jmp dat_2074d8(pc,d0.w)
dat_2074d8:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207778).l,a0
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
	bcc.s loc_207516
	moveq #$0,d6
loc_207516:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_20751e:
	cmp.w (a0),d6
	bls.s loc_207530
	tst.b $4(a0)
	bpl.s loc_20752c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20752c:
	addq.w #$8,a0
	bra.s loc_20751e
loc_207530:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207550
loc_20753e:
	cmp.w (a0),d6
	bls.s loc_207550
	tst.b $4(a0)
	bpl.s loc_20754c
	addq.b #$1,$1(a2)
loc_20754c:
	addq.w #$8,a0
	bra.s loc_20753e
loc_207550:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20763a
	bge.s loc_2075e0
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2075bc
loc_20758a:
	cmp.w -$8(a0),d6
	bge.s loc_2075bc
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2075a0
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2075a0:
	bsr.w sub_20765e
	bne.s loc_2075aa
	subq.w #$8,a0
	bra.s loc_20758a
loc_2075aa:
	tst.b $4(a0)
	bpl.s loc_2075ba
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2075ba:
	addq.w #$8,a0
loc_2075bc:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2075c8:
	cmp.w -$8(a0),d6
	bgt.s loc_2075da
	tst.b -$4(a0)
	bpl.s loc_2075d6
	subq.b #$1,(a2)
loc_2075d6:
	subq.w #$8,a0
	bra.s loc_2075c8
loc_2075da:
	move.l a0,($f770).w
	rts
loc_2075e0:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2075f4:
	cmp.w (a0),d6
	bls.s loc_207616
	tst.b $4(a0)
	bpl.s loc_207602
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207602:
	bsr.w sub_20765e
	beq.s loc_2075f4
	tst.b $4(a0)
	bpl.s loc_207616
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207616:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207636
loc_207624:
	cmp.w (a0),d6
	bls.s loc_207636
	tst.b $4(a0)
	bpl.s loc_207632
	addq.b #$1,$1(a2)
loc_207632:
	addq.w #$8,a0
	bra.s loc_207624
loc_207636:
	move.l a0,($f774).w
loc_20763a:
	rts

sub_20763c:
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

sub_20765e:
	bsr.s sub_20763c
	beq.s loc_207670
	tst.b $4(a0)
	bpl.s loc_207676
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207676
loc_207670:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207676:
	bsr.w sub_2076c6
	bne.s loc_2076c4
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
	bpl.s loc_2076a6
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2076a6:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2076b8
	nop
	nop
	nop
	nop
loc_2076b8:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2076c4:
	rts

sub_2076c6:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2076ce:
	tst.b (a1)
	beq.s loc_2076da
	lea $40(a1),a1
	dbf d0,loc_2076ce
loc_2076da:
	rts

sub_2076dc:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2076fa
loc_2076ee:
	tst.b (a1)
	beq.s loc_2076fa
	lea $40(a1),a1
	dbf d0,loc_2076ee
loc_2076fa:
	rts
loc_2076fc:
	move.w $8(a0),d0
loc_207700:
	tst.b $1(a0)
	bmi.s loc_20776a
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20776a
loc_20771e:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207760
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207758
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207750
	moveq #$0,d1
	bra.s loc_207758
loc_207750:
	cmpi.w #$3,d1
	bcs.s loc_207758
	moveq #$2,d1
loc_207758:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207760:
	jsr (sub_203a2e).l
	moveq #$1,d0
	rts
loc_20776a:
	btst.b #$7,($ff152e).l
	bne.s loc_20771e
	moveq #$0,d0
	rts
dat_207778:
	.incbin 30584, 5490

sub_208cea:
	btst.b #$3,$22(a0)
	beq.s loc_208d5a
	btst.b #$3,$22(a1)
	beq.s loc_208d5a
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208d5a
	tst.b $2a(a1)
	beq.s loc_208d1c
	move.w #$ab,d0
	jsr (sub_202356).l
loc_208d1c:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208d48
	cmpi.b #$17,$1c(a1)
	beq.s loc_208d48
	bclr.b #$0,$2c(a1)
loc_208d48:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208d5a
	bclr.b #$1,$22(a1)
loc_208d5a:
	rts

sub_208d5c:
	cmpi.b #$4,$24(a1)
	bne.s loc_208d6e
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208d6e:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208dce
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208d90
	bclr.b #$3,$22(a0)
	bra.w sub_208cea
loc_208d90:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208dce
	tst.b ($ff195b).l
	beq.s loc_208db8
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208dc8
loc_208db8:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208dc8:
	move.b #$0,$1c(a1)
loc_208dce:
	bset.b #$3,$22(a1)
	beq.s loc_208df0
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208e28
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208df0:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208e1c
	cmpi.b #$2,$24(a0)
	beq.s loc_208e22
loc_208e1c:
	move.w $10(a1),$14(a1)
loc_208e22:
	bclr.b #$1,$22(a1)
loc_208e28:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_208e32:
	move.b #$1,$25(a0)
loc_208e38:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2090ec
	btst.b #$6,$2c(a1)
	bne.w loc_2090ec
	cmpi.b #$6,$24(a1)
	bcc.w loc_2090ec
	tst.b $0(a1)
	beq.w loc_2090ec
	tst.b $1(a0)
	bpl.w loc_2090ec
	tst.b ($ff1906).l
	bne.w loc_2090ec
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2090ec
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2090ec
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208ea6
	btst.b #$3,$22(a0)
	bne.s loc_208eb8
	bra.w loc_2090ec
loc_208ea6:
	cmpi.b #$1,$25(a0)
	bne.s loc_208eb8
	tst.w $12(a1)
	beq.s loc_208eb8
	bmi.w loc_2090ec
loc_208eb8:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2090ec
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2090ec
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208eee
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208eee:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208efc
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208efc:
	cmp.w d4,d5
	bcs.w loc_208f90
	cmpi.b #$1,$25(a0)
	beq.w loc_2090ec
	cmpi.b #$a,$0(a0)
	bne.s loc_208f1e
	btst.b #$1,$22(a1)
	bne.w loc_2090ec
loc_208f1e:
	cmpi.b #$4,d5
	bls.w loc_2090ec
	bsr.w sub_20913c
	move.l d0,-(a7)
	bsr.w sub_208cea
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208f48
	tst.w $10(a1)
	beq.s loc_208f78
	bpl.s loc_208f50
	bra.s loc_208f78
loc_208f48:
	tst.w $10(a1)
	beq.s loc_208f78
	bpl.s loc_208f78
loc_208f50:
	bsr.w sub_2090fc
	btst.b #$1,$22(a1)
	bne.s loc_208f6e
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208f6e:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208f78:
	bsr.w sub_2091b2
	bsr.w sub_2090fc
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208f90:
	cmpi.b #$19,$0(a0)
	bne.s loc_208fa2
	btst.b #$2,$22(a1)
	bne.w loc_2090ec
loc_208fa2:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208fb8
	bmi.w loc_209088
loc_208fb8:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208fca
	tst.w $12(a1)
	beq.s loc_208fca
	bmi.w loc_2090ec
loc_208fca:
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
	beq.s loc_209016
	bpl.s loc_208ff6
	neg.b d0
loc_208ff6:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2067dc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209016
	tst.w $10(a0)
	bpl.s loc_209012
	neg.w d1
loc_209012:
	add.w d1,$8(a1)
loc_209016:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209080
	tst.w $12(a0)
	bmi.s loc_209054
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20686e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209054
	add.w d1,$c(a1)
	bra.w loc_2090ec
loc_209054:
	tst.w $12(a0)
	bpl.s loc_209080
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a86).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209080
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e4a).l
	movem.l (a7)+,a0-a1
	bra.s loc_2090ec
loc_209080:
	bsr.w sub_208d5c
	moveq #$1,d0
	rts
loc_209088:
	cmpi.b #$1,$25(a0)
	beq.s loc_2090ec
	cmpi.b #$9,$0(a0)
	beq.s loc_2090ec
	cmpi.b #$a,$0(a0)
	bne.s loc_2090b2
	cmpi.b #$2,$25(a0)
	beq.s loc_2090d2
	btst.b #$1,$1(a0)
	bne.s loc_2090d2
	bra.s loc_2090ec
loc_2090b2:
	btst.b #$1,$22(a1)
	bne.s loc_2090d2
	tst.w $12(a0)
	beq.s loc_2090d2
	bmi.s loc_2090d2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e4a).l
	movem.l (a7)+,a0-a1
loc_2090d2:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_2091b2
	bsr.w sub_208cea
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2090ec:
	bsr.w sub_2091b2
	bsr.w sub_208cea
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2090fc:
	tst.w $10(a0)
	beq.s loc_20913a
	cmpi.b #$a,$0(a0)
	beq.s loc_20913a
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209116
	neg.b d0
loc_209116:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2067dc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20913a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e4a).l
	movem.l (a7)+,a0-a1
loc_20913a:
	rts

sub_20913c:
	cmpi.b #$a,$0(a0)
	bne.s loc_20914c
	move.b #$0,$20(a1)
	rts
loc_20914c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2091a0
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_2091b0
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_20916e
	tst.w $10(a2)
	beq.s loc_2091b0
loc_20916e:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209180
	cmp.w $8(a2),d1
	bcs.s loc_2091b0
	bra.s loc_209186
loc_209180:
	cmp.w $8(a2),d1
	bcc.s loc_2091b0
loc_209186:
	cmpi.b #$15,$0(a0)
	beq.s loc_2091b0
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e4a).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2091a0:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_2091b0:
	rts

sub_2091b2:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2091cc
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2091cc
	move.b #$0,$20(a1)
loc_2091cc:
	rts
	.incbin 37326, 594
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20943a(pc,d0.w),d0
	jsr dat_20943a(pc,d0.w)
	jsr (sub_203982).l
	jmp (loc_2076fc).l
dat_20943a:
	dc.b $00,$04,$00,$36
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20948a,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$0,$1a(a0)
	moveq #$b,d0
	jsr (sub_20cc5e).l
	tst.b $1(a0)
	bpl.s loc_209488
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208e38).l
loc_209488:
	rts
	.incbin 38026, 28
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203a2e
	rts
	dc.b $00,$06,$00,$74,$00,$94,$54,$28
	dc.b $00,$24
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$209aa4,$4(a0)
	move.b #$8,$19(a0)
	move.b #$7,$16(a0)
	move.w $8(a0),$36(a0)
	move.w #$180,$10(a0)
	moveq #$e,d0
	jsr (sub_20cc5e).l
	jsr (sub_2076c6).l
	beq.s loc_209512
	jmp (sub_203a2e).l
loc_209512:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$10,$c(a1)
	move.b #$f0,$39(a1)
	move.w a0,$34(a1)
	move.b $28(a0),$28(a1)
	jsr (sub_20691c).l
	tst.w d1
	bpl.s loc_209554
	add.w d1,$c(a0)
	move.w $c(a0),$32(a0)
	addq.b #$2,$24(a0)
	rts
loc_209554:
	addq.w #$1,$c(a0)
	rts
	.incbin 38234, 60
loc_209596:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2095a4(pc,d0.w),d0
	jmp dat_2095a4(pc,d0.w)
dat_2095a4:
	.incbin 38308, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209596
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_2095fa
	tst.b $1(a0)
	bpl.s loc_209602
loc_2095fa:
	move.w dat_209654(pc,d0.w),d1
	jsr dat_209654(pc,d1.w)
loc_209602:
	bsr.w sub_203982
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209634
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209634:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203a2e
	rts
dat_209654:
	.incbin 38484, 26
	addq.b #$2,$24(a0)
	move.l #$2099d6,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2096c4
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2099dc,$4(a0)
	bra.s loc_209706
loc_2096c4:
	btst.l #$3,d0
	beq.s loc_2096f2
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209a26,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cc5e).l
	move.l (a7)+,d0
	bra.s loc_209706
loc_2096f2:
	btst.b #$1,$1(a0)
	beq.s loc_209706
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209706:
	btst.l #$1,d0
	beq.s loc_209712
	bset.b #$5,$2(a0)
loc_209712:
	andi.w #$2,d0
	move.w dat_20971e(pc,d0.w),$30(a0)
	rts
dat_20971e:
	dc.b $f0,$00,$f6,$00

sub_209722:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208e38).l
	tst.b $1(a0)
	bpl.s loc_20973e
	lea ($d000).w,a1
	bsr.s sub_209722
	bne.s loc_209740
loc_20973e:
	rts
loc_209740:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202356).l
	.incbin 38770, 34

sub_209794:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208e38).l
	tst.b $1(a0)
	bpl.s loc_2097b6
	lea ($d000).w,a1
	bsr.s sub_209794
	btst.b #$5,$22(a0)
	bne.s loc_2097b8
loc_2097b6:
	rts
loc_2097b8:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_2097e6
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_2097e6:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209800
	move.b #$0,$1c(a1)
loc_209800:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_202356).l
	.incbin 38938, 134
	tst.b $1(a0)
	bpl.s loc_2098b8
	lea ($d000).w,a1
	bsr.w sub_209722
	bne.s loc_2098ba
	btst.b #$5,$22(a0)
	bne.s loc_2098ba
loc_2098b8:
	rts
loc_2098ba:
	move.b #$16,$24(a0)
	moveq #$0,d0
	move.b #$e0,d0
	jsr (sub_20085a).l
	move.w $30(a0),d2
	neg.w d2
	mulu.w d2,d0
	mulu.w d2,d1
	lsr.l #$8,d0
	lsr.l #$8,d1
	move.w d0,$12(a1)
	move.w d1,$10(a1)
	addq.w #$8,$c(a1)
	btst.b #$1,$1(a0)
	beq.s loc_2098f8
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_2098f8:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_20991a
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_20991a:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_202356).l
	lea (dat_2099c8).l,a1
	bra.w sub_205b9c
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 39262, 106
dat_2099c8:
	.incbin 39368, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ac2(pc,d0.w),d1
	jmp dat_209ac2(pc,d1.w)
dat_209ac2:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209acc:
	.incbin 39628, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209b24
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209b1c
	moveq #$0,d1
	bra.s loc_209b24
loc_209b1c:
	cmpi.w #$3,d1
	bcs.s loc_209b24
	moveq #$2,d1
loc_209b24:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209b40
	moveq #$6,d1
loc_209b40:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209acc).l,a1
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
	beq.s loc_209b90
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209b88
	moveq #$0,d0
	bra.s loc_209b90
loc_209b88:
	cmpi.w #$3,d0
	bcs.s loc_209b90
	moveq #$2,d0
loc_209b90:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209c5e
	dbf d0,loc_209b90
	bclr.b #$7,(a2)
	bra.s loc_209be6
loc_209ba2:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209bce
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209bc6
	moveq #$0,d0
	bra.s loc_209bce
loc_209bc6:
	cmpi.w #$3,d0
	bcs.s loc_209bce
	moveq #$2,d0
loc_209bce:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209c5e
	dbf d0,loc_209bce
	bclr.b #$7,(a2)
	bsr.w sub_2076dc
	bne.w loc_209c6a
loc_209be6:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209f30,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209c3c
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209c3c
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209c3c:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209c5e:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209ba2
loc_209c6a:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209c90
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209c88
	moveq #$0,d0
	bra.s loc_209c90
loc_209c88:
	cmpi.w #$3,d0
	bcs.s loc_209c90
	moveq #$2,d0
loc_209c90:
	lea $1(a2),a3
loc_209c94:
	btst.b #$0,-(a3)
	bne.w sub_203a2e
	dbf d0,loc_209c94
	tst.b $1(a0)
	bmi.s loc_209cc4
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209d3e
loc_209cc4:
	tst.w ($ff190e).l
	bne.s loc_209cd4
	move.b ($ff1913).l,$1a(a0)
loc_209cd4:
	bra.w sub_203982
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209d42
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209d24
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209d1c
	moveq #$0,d1
	bra.s loc_209d24
loc_209d1c:
	cmpi.w #$3,d1
	bcs.s loc_209d24
	moveq #$2,d1
loc_209d24:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209f28).l,a1
	bsr.w sub_205b9c
	bra.w sub_203982
loc_209d3e:
	bra.w sub_203a2e

sub_209d42:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209d92
	bset.b #$1,($ff150d).l
	beq.s loc_209d7c
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209d92
	bset.b #$2,($ff150d).l
	bne.s loc_209d92
loc_209d7c:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b5c).l
loc_209d92:
	jmp (sub_202356).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209da6(pc,d0.w),d1
	jmp dat_209da6(pc,d1.w)
dat_209da6:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_209dc2
	move.w d0,d5
loc_209dc2:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_209dd2
loc_209dca:
	bsr.w sub_2076c6
	bne.w loc_209e88
loc_209dd2:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209f30,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209e30
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209e30
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209e30:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_209e78
	move.w d4,d0
	jsr (sub_20085a).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_209e78
	subi.w #$80,d4
	bcc.s loc_209e78
	move.w #$288,d4
loc_209e78:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209dca
loc_209e88:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202356).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_20392c
	addi.w #$18,$12(a0)
	bmi.s loc_209ee8
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209ee8
	jsr (sub_20691c).l
	tst.w d1
	bpl.s loc_209ee8
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209ee8:
	tst.b ($ff1916).l
	beq.s loc_209f24
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209f24
	bra.w sub_203982
	.incbin 40706, 34
loc_209f24:
	bra.w sub_203a2e
dat_209f28:
	.incbin 40744, 402
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a0e8(pc,d0.w),d0
	jsr dat_20a0e8(pc,d0.w)
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203a2e
	rts
dat_20a0e8:
	dc.b $00,$0e,$00,$40,$00,$84,$00,$a6
	dc.b $00,$ca,$00,$f8,$01,$0c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20a230,$4(a0)
	moveq #$5,d0
	jsr (sub_20cc5e).l
	move.b #$1,$18(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20a1fc
	tst.b ($ff152e).l
	beq.s loc_20a162
	cmpi.b #$2,($ff152e).l
	bne.s loc_20a148
	btst.b #$3,$22(a0)
	bne.s loc_20a168
	bra.s loc_20a162
loc_20a148:
	move.b #$0,$1a(a0)
	btst.b #$3,$22(a0)
	beq.s loc_20a162
	move.b #$6,$24(a0)
	move.b #$1,$1c(a0)
loc_20a162:
	jmp (sub_203982).l
loc_20a168:
	addq.b #$2,$24(a0)
	bsr.w sub_20a1fc
	addq.w #$2,$c(a0)
	move.w ($f704).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcc.s loc_20a188
	jmp (sub_203a2e).l
loc_20a188:
	jmp (sub_203982).l
	.incbin 41358, 110

sub_20a1fc:
	lea ($d000).w,a1
	bsr.w sub_20a204

sub_20a204:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208e32).l
	.incbin 41490, 106
loc_20a27c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a2aa(pc,d0.w),d0
	jsr dat_20a2aa(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a2a8
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a2a2
	btst.b #$0,($ff1505).l
	bne.s loc_20a2a8
loc_20a2a2:
	jmp (sub_203982).l
loc_20a2a8:
	rts
dat_20a2aa:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a884,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a2de
	move.b #$13,$1a(a0)
loc_20a2de:
	rts
loc_20a2e0:
	tst.b ($ff0f01).l
	beq.s loc_20a2ee
	jmp (sub_203a2e).l
loc_20a2ee:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a27c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a312(pc,d0.w),d0
	jsr dat_20a312(pc,d0.w)
	jsr (sub_203982).l
	jmp (loc_2076fc).l
dat_20a312:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a884,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a360
	tst.b $29(a0)
	bne.s loc_20a360
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a360:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a42c
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a388
	addq.b #$2,$1a(a0)
loc_20a388:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a39c
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a39c:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a402
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a3ce
	tst.b $29(a0)
	beq.s loc_20a3c6
	tst.b ($ff1956).l
	beq.s loc_20a402
	bra.s loc_20a3ce
loc_20a3c6:
	tst.b ($ff1956).l
	bne.s loc_20a402
loc_20a3ce:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a42c
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a3fc
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a3fc:
	jsr (sub_205b5c).l
loc_20a402:
	rts
	.incbin 41988, 40

sub_20a42c:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a464
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a45c
	moveq #$0,d1
	bra.s loc_20a464
loc_20a45c:
	cmpi.w #$3,d1
	bcs.s loc_20a464
	moveq #$2,d1
loc_20a464:
	add.w d1,d0
	rts

sub_20a468:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a48a
	tst.b ($ff1956).l
	beq.s loc_20a482
	tst.b $29(a0)
	bne.s loc_20a48a
	rts
loc_20a482:
	tst.b $29(a0)
	beq.s loc_20a48a
	rts
loc_20a48a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208e38).l
	tst.b $28(a0)
	bne.s loc_20a4ac
	tst.b ($ff0f01).l
	beq.s loc_20a4ac
	jmp (loc_2076fc).l
loc_20a4ac:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a2e0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4c4(pc,d0.w),d1
	jmp dat_20a4c4(pc,d1.w)
dat_20a4c4:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a884,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a50e
	tst.b $29(a0)
	bne.s loc_20a50e
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a50e:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a42c
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a53a
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a53a:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a594
	move.b $25(a0),d0
	beq.s loc_20a574
	bsr.w sub_2038ca
	jsr (sub_20691c).l
	tst.w d1
	bpl.w loc_20a582
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a582
loc_20a574:
	tst.b $1(a0)
	bpl.s loc_20a582
	lea ($d000).w,a1
	bsr.w sub_20a468
loc_20a582:
	tst.w ($ff190e).l
	bne.s loc_20a594
	lea (dat_20a7fc).l,a1
	bsr.w sub_205b9c
loc_20a594:
	bsr.w sub_203982
	jmp (loc_2076fc).l
	move.w #$96,d0
	jsr (sub_202356).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_2076c6
	bne.s loc_20a5d6
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_20a5d6:
	bsr.w sub_2076c6
	bne.s loc_20a600
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_20a600:
	bsr.w sub_20a42c
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203982
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a626(pc,d0.w),d1
	jsr dat_20a626(pc,d1.w)
	bra.w sub_203982
dat_20a626:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20a642
	andi.b #$7f,$2(a0)
loc_20a642:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20a884,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20a68a
	bsr.w sub_20392c
	addi.w #$18,$12(a0)
	rts
loc_20a68a:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20a6b0
loc_20a69a:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b5c).l
loc_20a6b0:
	cmpi.b #$1,d0
	bne.s loc_20a6fc
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a6f2
	bset.b #$1,($ff150d).l
	beq.w loc_20a69a
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a6f2
	bset.b #$2,($ff150d).l
	beq.w loc_20a69a
loc_20a6f2:
	move.w #$95,d0
	jmp (sub_202356).l
loc_20a6fc:
	cmpi.b #$2,d0
	bne.s loc_20a71a

sub_20a702:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_202356).l
loc_20a71a:
	cmpi.b #$3,d0
	bne.s loc_20a77c

sub_20a720:
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
	bne.s loc_20a770
	move.w #$82,d0
	jsr (sub_205b5c).l
loc_20a770:
	move.w #$6d,d0
	jmp (sub_205b5c).l
	dc.b $4e,$75
loc_20a77c:
	cmpi.b #$4,d0
	bne.s loc_20a7be
loc_20a782:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_20a7b4
	move.w #$82,d0
	jsr (sub_205b5c).l
loc_20a7b4:
	move.w #$6c,d0
	jmp (sub_205b5c).l
loc_20a7be:
	cmpi.b #$5,d0
	bne.s loc_20a7ce
	move.w #$12c,($ff190e).l
	rts
loc_20a7ce:
	cmpi.b #$6,d0
	bne.s loc_20a7e8
	move.w #$9d,d0
	jsr (sub_202356).l
	move.b #$1,($ff156f).l
	rts
loc_20a7e8:
	bsr.w sub_20a702
	bsr.w sub_20a720
	bra.s loc_20a782
	subq.w #$1,$1e(a0)
	bmi.w sub_203a2e
	rts
dat_20a7fc:
	.incbin 43004, 586
loc_20aa46:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa5a(pc,d0.w),d0
	jsr dat_20aa5a(pc,d0.w)
	jmp (sub_203982).l
dat_20aa5a:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20aa9a,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20aa94
	jmp (sub_203a2e).l
loc_20aa94:
	subq.w #$2,$c(a0)
	rts
	.incbin 43674, 82
	tst.b $28(a0)
	bmi.w loc_20aa46
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ab02(pc,d0.w),d0
	jmp dat_20ab02(pc,d0.w)
dat_20ab02:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20ab9c,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20ab32
	move.b #$3,$1a(a0)
	bra.s loc_20ab52
loc_20ab32:
	tst.w ($ff1588).l
	beq.s loc_20ab40
	move.b #$2,$1a(a0)
loc_20ab40:
	tst.b $28(a0)
	beq.s loc_20ab52
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20ab52:
	tst.b $28(a0)
	bne.s loc_20ab96
	tst.b $29(a0)
	beq.s loc_20ab82
	tst.w ($ff1512).l
	beq.s loc_20ab6e
	bclr.b #$5,$2(a0)
	bra.s loc_20ab96
loc_20ab6e:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20ab96
	eori.b #$20,$2(a0)
	bra.s loc_20ab96
loc_20ab82:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20ab96
	move.b #$2,$1a(a0)
loc_20ab96:
	jmp (sub_203982).l
	.incbin 43932, 168

sub_20ac44:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ac60
	move.l d1,(a3)
loc_20ac60:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ac8a
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b5c).l
loc_20ac8a:
	rts
loc_20ac8c:
	tst.w ($ff1588).l
	beq.s loc_20ace2
	bsr.w sub_20aede
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
	lea (dat_20b03e).l,a2
	moveq #$2,d6
	bsr.w sub_20b096
	bra.w loc_20ad3c
loc_20ace2:
	tst.b ($ff1511).l
	beq.s loc_20ad06
	bpl.s loc_20acf0
	bsr.w sub_20ae88
loc_20acf0:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20af78
loc_20ad06:
	tst.b ($ff150f).l
	beq.s loc_20ad3c
	bpl.s loc_20ad14
	bsr.w sub_20ae74
loc_20ad14:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20ad38
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20ad38:
	bsr.w sub_20af6e
loc_20ad3c:
	tst.w ($ff1588).l
	bne.w loc_20ade8
	tst.b ($ff1510).l
	beq.w loc_20ade8
	tst.w ($f63a).w
	bne.w loc_20ade8
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20ae46
	tst.b ($f7cc).w
	bne.s loc_20ad92
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ad92
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ad92
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20ad92
	move.b #$9,(a1)
loc_20ad92:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b084
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b08e
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20ade4
	move.w #$63,d1
loc_20ade4:
	bsr.w sub_20b08e
loc_20ade8:
	tst.b ($ff150e).l
	beq.s loc_20adfa
	clr.b ($ff150e).l
	bsr.w sub_20b064
loc_20adfa:
	tst.b ($f7d6).w
	beq.s loc_20ae44
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ae1a
	move.l #$6d400001,d0
loc_20ae1a:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20aefc
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ae3a
	move.l #$6e800001,d0
loc_20ae3a:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20aefc
loc_20ae44:
	rts
loc_20ae46:
	btst.b #$7,($ff152e).l
	bne.s loc_20ae72
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206e4a
	move.b #$1,($ff150c).l
loc_20ae72:
	rts

sub_20ae74:
	move.l #$73600002,($c00004).l
	lea dat_20aeda(pc),a2
	move.w #$2,d2
	bra.s loc_20aea4

sub_20ae88:
	lea ($c00000).l,a6
	bsr.w sub_20b064
	move.l #$70600002,($c00004).l
	lea dat_20aed2(pc),a2
	move.w #$6,d2
loc_20aea4:
	lea (dat_236456).l,a1
loc_20aeaa:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20aec6
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20aeba:
	move.l (a3)+,(a6)
	dbf d1,loc_20aeba
loc_20aec0:
	dbf d2,loc_20aeaa
	rts
loc_20aec6:
	move.l #$0,(a6)
	dbf d1,loc_20aec6
	bra.s loc_20aec0
dat_20aed2:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20aeda:
	dc.b $ff,$ff,$00,$00

sub_20aede:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b05a
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b05a

sub_20aefc:
	lea (dat_20b036).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20af0c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20af10:
	sub.l d3,d1
	bcs.s loc_20af18
	addq.w #$1,d2
	bra.s loc_20af10
loc_20af18:
	add.l d3,d1
	tst.w d2
	beq.s loc_20af22
	move.w #$1,d4
loc_20af22:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20af2e
	tst.w d6
	bne.s loc_20af60
loc_20af2e:
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
loc_20af54:
	addi.l #$400000,d0
	dbf d6,loc_20af0c
	rts
loc_20af60:
	moveq #$f,d5
loc_20af62:
	move.l #$0,(a6)
	dbf d5,loc_20af62
	bra.s loc_20af54

sub_20af6e:
	lea (dat_20b03e).l,a2
	moveq #$2,d6
	bra.s loc_20af80

sub_20af78:
	lea (dat_20b032).l,a2
	moveq #$5,d6
loc_20af80:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20af88:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20af8c:
	sub.l d3,d1
	bcs.s loc_20af94
	addq.w #$1,d2
	bra.s loc_20af8c
loc_20af94:
	add.l d3,d1
	tst.w d2
	beq.s loc_20af9e
	move.w #$1,d4
loc_20af9e:
	tst.w d4
	beq.s loc_20afcc
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
loc_20afcc:
	addi.l #$400000,d0
	dbf d6,loc_20af88
	rts
	.incbin 45016, 90
dat_20b032:
	dc.b $00,$01,$86,$a0
dat_20b036:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b03e:
	dc.b $00,$00,$00,$64
dat_20b042:
	dc.b $00,$00,$00,$0a
dat_20b046:
	dc.b $00,$00,$00,$01
dat_20b04a:
	.incbin 45130, 16

sub_20b05a:
	moveq #$3,d6
	lea (dat_20b04a).l,a2
	bra.s sub_20b096

sub_20b064:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b07a
	moveq #$9,d1
loc_20b07a:
	lea (dat_20b046).l,a2
	moveq #$0,d6
	bra.s sub_20b096

sub_20b084:
	lea (dat_20b046).l,a2
	moveq #$0,d6
	bra.s sub_20b096

sub_20b08e:
	lea (dat_20b042).l,a2
	moveq #$1,d6

sub_20b096:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20b09e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b0a2:
	sub.l d3,d1
	bcs.s loc_20b0aa
	addq.w #$1,d2
	bra.s loc_20b0a2
loc_20b0aa:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b0b4
	move.w #$1,d4
loc_20b0b4:
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
	dbf d6,loc_20b09e
	rts
	jsr (sub_20eadc).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b10e(pc,d0.w),d0
	jsr dat_20b10e(pc,d0.w)
	jsr (sub_203982).l
	move.w $2e(a0),d0
	jmp (loc_207700).l
dat_20b10e:
	dc.b $00,$06,$00,$60,$00,$7a
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20b1e0,$4(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$13,$16(a0)
	move.b #$29,$20(a0)
	move.w $8(a0),$2e(a0)
	moveq #$2,d0
	jsr (sub_20cc5e).l
	tst.b $28(a0)
	bne.s loc_20b15e
	move.l #$ffff0000,d0
	moveq #$0,d1
	bra.s loc_20b166
loc_20b15e:
	move.l #$ffff8000,d0
	moveq #$1,d1
loc_20b166:
	move.l d0,$2a(a0)
	move.b d1,$1c(a0)
	move.l #$10000,d0
	add.l d0,$c(a0)
	jsr (sub_20691c).l
	tst.w d1
	bpl.s loc_20b186
	addq.b #$2,$24(a0)
loc_20b186:
	rts
loc_20b188:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2e(a0),d0
	bpl.s loc_20b19c
	neg.w d0
loc_20b19c:
	cmpi.w #$80,d0
	bge.s loc_20b1c2
	jsr (sub_20691c).l
	cmpi.w #$fff9,d1
	blt.s loc_20b1c2
	cmpi.w #$7,d1
	bgt.s loc_20b1c2
	add.w d1,$c(a0)
	lea dat_20b1d4(pc),a1
	jmp (sub_205b9c).l
loc_20b1c2:
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b188
dat_20b1d4:
	.incbin 45524, 124
	jsr (sub_20eadc).l
	tst.b $24(a0)
	bne.w loc_20b2e0
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$2a,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	move.w #$8000,$2e(a0)
	moveq #$1,d0
	jsr (sub_20cc5e).l
	tst.b $28(a0)
	bne.s loc_20b2ba
	move.l #$ffff8000,d0
	move.w #$fe00,d1
	moveq #$3,d2
	moveq #$0,d3
	lea dat_20b364(pc),a1
	bra.s loc_20b2cc
loc_20b2ba:
	move.l #$ffffc000,d0
	move.w #$ff00,d1
	moveq #$4,d2
	moveq #$1,d3
	lea dat_20b386(pc),a1
loc_20b2cc:
	move.l d0,$30(a0)
	move.w d1,$36(a0)
	move.w d2,$38(a0)
	move.b d3,$1c(a0)
	move.l a1,$4(a0)
loc_20b2e0:
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b2f4
	neg.w d0
loc_20b2f4:
	cmpi.w #$80,d0
	blt.s loc_20b316
	neg.l $30(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	clr.w $34(a0)
loc_20b316:
	move.w $36(a0),d0
	add.w d0,$34(a0)
	move.b $34(a0),d0
	jsr (sub_20085a).l
	swap d0
	move.w $38(a0),d1
	asr.l d1,d0
	add.l $2c(a0),d0
	move.l d0,$c(a0)
	lea dat_20b352(pc),a1
	jsr (sub_205b9c).l
	jsr (sub_203982).l
	move.w $2a(a0),d0
	jmp (loc_207700).l
dat_20b352:
	.incbin 45906, 18
dat_20b364:
	.incbin 45924, 34
dat_20b386:
	.incbin 45958, 532
	cmpi.b #$1,$28(a0)
	beq.w loc_20b7dc
	jsr (sub_20eadc).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b5c8(pc,d0.w),d0
	jsr dat_20b5c8(pc,d0.w)
	jsr (sub_203982).l
	move.w $2a(a0),d0
	jmp (loc_207700).l
dat_20b5c8:
	dc.b $00,$0c,$00,$72,$00,$8c,$01,$26
	dc.b $01,$30,$01,$3a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$2c,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$f,$16(a0)
	move.w $8(a0),$2a(a0)
	moveq #$4,d0
	jsr (sub_20cc5e).l
	tst.b $28(a0)
	bne.s loc_20b620
	lea dat_20b79e(pc),a1
	lea dat_20b778(pc),a2
	move.l #$ffff6000,d0
	bra.s loc_20b62e
loc_20b620:
	lea dat_20b7b4(pc),a1
	lea dat_20b784(pc),a2
	move.l #$ffffb000,d0
loc_20b62e:
	move.l a1,$4(a0)
	move.l a2,$30(a0)
	move.l d0,$2c(a0)
	move.l #$10000,d0
	add.l d0,$c(a0)
	jsr (sub_20691c).l
	tst.w d1
	bpl.s loc_20b652
	addq.b #$2,$24(a0)
loc_20b652:
	rts
loc_20b654:
	tst.w ($ff1906).l
	bne.s loc_20b676
	tst.b $28(a0)
	bne.s loc_20b676
	tst.w $34(a0)
	beq.s loc_20b66e
	subq.w #$1,$34(a0)
	bra.s loc_20b676
loc_20b66e:
	lea ($d000).w,a1
	bsr.s sub_20b6c8
	bcs.s loc_20b6c2
loc_20b676:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b68a
	neg.w d0
loc_20b68a:
	cmpi.w #$80,d0
	bge.s loc_20b6b0
	jsr (sub_20691c).l
	cmpi.w #$fff9,d1
	blt.s loc_20b6b0
	cmpi.w #$7,d1
	bgt.s loc_20b6b0
	add.w d1,$c(a0)
	movea.l $30(a0),a1
	jmp (sub_205b9c).l
loc_20b6b0:
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b654
loc_20b6c2:
	addq.b #$2,$24(a0)
	rts

sub_20b6c8:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20b6ec
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
loc_20b6ec:
	rts
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	movea.l $30(a0),a1
	jmp (sub_205b9c).l
	move.b #$4,$24(a0)
	move.b #$0,$1c(a0)
	move.w #$78,$34(a0)
	tst.b $28(a0)
	bne.s loc_20b746
	jsr (sub_2076c6).l
	bne.s loc_20b746
	tst.b $1(a0)
	bpl.s loc_20b732
	move.w #$a0,d0
	jsr (sub_202356).l
loc_20b732:
	bsr.s sub_20b748
	sf $3f(a1)
	jsr (sub_2076c6).l
	bne.s loc_20b746
	bsr.s sub_20b748
	st $3f(a1)
loc_20b746:
	rts

sub_20b748:
	move.b $0(a0),$0(a1)
	move.b #$1,$28(a1)
	move.w $2(a0),$2(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$a,$c(a1)
	rts
dat_20b778:
	dc.b $00,$04,$00,$08,$1d,$00,$01,$ff
	dc.b $3b,$02,$fc,$00
dat_20b784:
	.incbin 46980, 26
dat_20b79e:
	.incbin 47006, 22
dat_20b7b4:
	.incbin 47028, 40
loc_20b7dc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b7f0(pc,d0.w),d0
	jsr dat_20b7f0(pc,d0.w)
	jmp (sub_203982).l
dat_20b7f0:
	dc.b $00,$04,$00,$68
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$ad,$20(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.l #$20b8a6,$4(a0)
	move.l #$0,$32(a0)
	move.l #$2000,$36(a0)
	tst.b $3f(a0)
	bne.s loc_20b842
	move.l #$20000,d0
	move.l #$fffc0000,d1
	bra.s loc_20b84e
loc_20b842:
	move.l #$fffe0000,d0
	move.l #$fffc0000,d1
loc_20b84e:
	move.l d0,$2a(a0)
	move.l d1,$2e(a0)
	rts
	tst.b $1(a0)
	bmi.s loc_20b864
	jmp (sub_203a2e).l
loc_20b864:
	jsr (sub_20691c).l
	tst.w d1
	bpl.s loc_20b874
	jmp (sub_203a2e).l
loc_20b874:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	move.l $32(a0),d0
	add.l d0,$2a(a0)
	move.l $36(a0),d0
	add.l d0,$2e(a0)
	lea dat_20b89e(pc),a1
	jmp (sub_205b9c).l
dat_20b89e:
	.incbin 47262, 3300
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c598(pc,d0.w),d0
	jsr dat_20c598(pc,d0.w)
	jsr (sub_203982).l
	rts
dat_20c598:
	dc.b $00,$16,$00,$e8

sub_20c59c:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208e32).l
	ori.b #$4,$1(a0)
	move.w #$44be,$2(a0)
	move.b #$2,$18(a0)
	move.w $8(a0),$38(a0)
	move.w $c(a0),$3a(a0)
	move.w $c(a0),$36(a0)
	move.l #$20ca00,d0
	cmpi.w #$0,($ff1506).l
	beq.s loc_20c5f8
	move.l #$20ca00,d0
	cmpi.w #$1,($ff1506).l
	beq.s loc_20c5f8
	move.l #$20ca00,d0
loc_20c5f8:
	move.l d0,$4(a0)
	move.b $28(a0),d0
	move.b d0,d1
	andi.w #$3,d0
	move.b d0,$1a(a0)
	move.b dat_20c678(pc,d0.w),$19(a0)
	move.b #$8,$16(a0)
	lsr.b #$2,d1
	andi.w #$3,d1
	move.b dat_20c67c(pc,d1.w),$2d(a0)
	move.b $29(a0),d0
	beq.s loc_20c672
	jsr (sub_2076c6).l
	beq.s loc_20c636
	jmp (loc_20c9d6).l
loc_20c636:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$10,$c(a1)
	move.b #$f0,$39(a1)
	move.w a0,$34(a1)
	move.b $29(a0),d0
	move.b d0,d1
	andi.b #$2,d1
	move.b d1,$28(a1)
	andi.b #$f8,d0
	move.b d0,$38(a1)
	add.w d0,$8(a1)
loc_20c672:
	addq.b #$2,$24(a0)
	rts
dat_20c678:
	dc.b $10,$20,$30,$00
dat_20c67c:
	dc.b $02,$03,$04,$06
	tst.w ($ff190e).l
	beq.s loc_20c68c
	bra.w sub_20c59c
loc_20c68c:
	move.b $28(a0),d0
	lsr.b #$4,d0
	andi.w #$f,d0
	add.w d0,d0
	move.w dat_20c6cc(pc,d0.w),d0
	jsr dat_20c6cc(pc,d0.w)
	move.w $38(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c6be
	rts
loc_20c6be:
	lea ($d000).w,a1
	jsr (sub_208cea).l
	bra.w loc_20c9d6
dat_20c6cc:
	.incbin 50892, 42
	move.l $8(a0),-(a7)
	jsr sub_20c9be(pc)
	add.w $38(a0),d0
	move.w d0,$8(a0)
	addq.b #$1,$2a(a0)
	moveq #$0,d0
	move.b $2c(a0),d0
	asr.b #$1,d0
	add.w $3a(a0),d0
	move.w d0,$c(a0)
loc_20c71a:
	move.l (a7)+,d0
	move.l $8(a0),d1
	sub.l d0,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
loc_20c728:
	jsr sub_20c59c(pc)
	beq.s loc_20c740
	move.b $2c(a0),d0
	cmpi.b #$8,d0
	bcc.s loc_20c73c
	addq.b #$1,$2c(a0)
loc_20c73c:
	moveq #$1,d0
	rts
loc_20c740:
	moveq #$0,d0
	move.b $2c(a0),d0
	beq.s loc_20c74c
	subq.b #$1,$2c(a0)
loc_20c74c:
	moveq #$0,d0
	rts
	move.l $8(a0),-(a7)
	addq.b #$1,$2a(a0)
	jsr sub_20c9be(pc)
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	jsr sub_20c9be(pc)
	add.w $38(a0),d0
	move.w d0,$8(a0)
	bra.w loc_20c71a
	move.l $8(a0),-(a7)
	addq.b #$1,$2a(a0)
	jsr sub_20c9be(pc)
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	jsr sub_20c9be(pc)
	neg.w d0
	add.w $38(a0),d0
	move.w d0,$8(a0)
	bra.w loc_20c71a

sub_20c79a:
	moveq #$0,d0
	move.b $2c(a0),d0
	asr.b #$1,d0
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20c728
	move.b $2b(a0),d0
	bne.s loc_20c7c6
	jsr sub_20c79a(pc)
	bne.s loc_20c7bc
	rts
loc_20c7bc:
	move.b #$1e,$2e(a0)
	addq.b #$2,$2b(a0)
loc_20c7c6:
	move.b $2e(a0),d0
	beq.s loc_20c7d4
	subq.b #$1,$2e(a0)
	bra.w sub_20c79a
loc_20c7d4:
	jsr sub_20c59c(pc)
	move.l $c(a0),d1
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	move.l d1,$c(a0)
	move.w $12(a0),d0
	cmpi.w #$400,d0
	bcc.s loc_20c7fa
	addi.w #$40,$12(a0)
loc_20c7fa:
	move.w ($f704).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.s loc_20c818
	lea ($d000).w,a1
	jsr (sub_208cea).l
	jmp (sub_203a2e).l
loc_20c818:
	rts
	.incbin 51226, 420

sub_20c9be:
	moveq #$0,d0
	move.b $2a(a0),d0
	jsr (sub_20085a).l
	moveq #$0,d2
	move.b $2d(a0),d2
	muls.w d2,d0
	asr.w #$4,d0
	rts
loc_20c9d6:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20c9fa
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20c9fa:
	jmp (sub_203a2e).l
	.incbin 51712, 494
loc_20cbee:
	lea dat_20cc40(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cbfa:
	cmp.w (a1)+,d0
	bcs.s loc_20cc02
	addq.b #$2,d1
	bra.s loc_20cbfa
loc_20cc02:
	move.b d1,($ff1574).l
	move.w dat_20cc54(pc,d1.w),d0
	jmp (sub_202520).l

sub_20cc12:
	lea dat_20cc40(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cc1e:
	cmp.w (a1)+,d0
	bcs.s loc_20cc26
	addq.b #$2,d1
	bra.s loc_20cc1e
loc_20cc26:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cc30
	rts
loc_20cc30:
	move.b d1,($ff1574).l
	move.w dat_20cc4a(pc,d1.w),d0
	jmp (loc_202552).l
dat_20cc40:
	dc.b $0a,$00,$15,$00,$18,$00,$1d,$00
	dc.b $ff,$ff
dat_20cc4a:
	dc.b $00,$08,$00,$09,$00,$0a,$00,$0b
	dc.b $00,$0c
dat_20cc54:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06
	dc.b $00,$07

sub_20cc5e:
	lea (dat_20cc80).l,a1
	add.w d0,d0
	move.w dat_20cc80(pc,d0.w),d4
	lea dat_20cc80(pc,d4.w),a2
	moveq #$0,d1
	move.b $29(a0),d1
	add.w d1,d1
	move.w $0(a2,d1.w),d5
	move.w d5,$2(a0)
	rts
dat_20cc80:
	.incbin 52352, 74
	jsr (sub_20eb24).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20cdec
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ccea(pc,d0.w),d0
	jmp dat_20ccea(pc,d0.w)
dat_20ccea:
	.incbin 52458, 258
loc_20cdec:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cdfa(pc,d0.w),d0
	jmp dat_20cdfa(pc,d0.w)
dat_20cdfa:
	.incbin 52730, 440
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cfde(pc,d0.w),d0
	jsr dat_20cfde(pc,d0.w)
	tst.b $24(a0)
	beq.s loc_20cfdc
	cmpi.b #$a,$24(a0)
	beq.s loc_20cfd6
	cmpi.b #$6,$24(a0)
	bcc.s loc_20cfdc
loc_20cfd6:
	jmp (sub_203982).l
loc_20cfdc:
	rts
dat_20cfde:
	.incbin 53214, 526
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d200(pc,d0.w),d0
	jsr dat_20d200(pc,d0.w)
	jmp (sub_203982).l
dat_20d200:
	.incbin 53760, 364
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d390(pc,d0.w),d0
	jsr dat_20d390(pc,d0.w)
	cmpi.b #$2,($ff1507).l
	beq.s loc_20d38a
	jsr (sub_203982).l
loc_20d38a:
	jmp (loc_2076fc).l
dat_20d390:
	.incbin 54160, 1920
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20db1e(pc,d0.w),d0
	jmp dat_20db1e(pc,d0.w)
dat_20db1e:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20e21c,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20e1dc).l,a2
loc_20db6c:
	jsr (sub_2076c6).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20e21c,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20dbbe
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20dbbe:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20db6c
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20dbe6
	bge.s loc_20dbdc
	neg.w d0
loc_20dbdc:
	add.w d0,$a(a0)
	jmp (sub_203982).l
loc_20dbe6:
	addq.b #$4,$24(a0)
	jmp (sub_203982).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20dc0a
	bge.s loc_20dc00
	neg.w d0
loc_20dc00:
	add.w d0,$8(a0)
	jmp (sub_203982).l
loc_20dc0a:
	addq.b #$4,$24(a0)
	jmp (sub_203982).l
	tst.b $1e(a0)
	beq.s loc_20dc24
	subq.b #$1,$1e(a0)
	jmp (sub_203982).l
loc_20dc24:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20dc3e
	bge.s loc_20dc34
	neg.w d0
loc_20dc34:
	add.w d0,$a(a0)
	jmp (sub_203982).l
loc_20dc3e:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202520).l
	tst.b $1e(a0)
	beq.s loc_20dc60
	subq.b #$1,$1e(a0)
	jmp (sub_203982).l
loc_20dc60:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20dc7a
	bge.s loc_20dc70
	neg.w d0
loc_20dc70:
	add.w d0,$8(a0)
	jmp (sub_203982).l
loc_20dc7a:
	jmp (sub_203a2e).l
	tst.l ($f680).w
	bne.s loc_20dc94
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203a2e).l
loc_20dc94:
	rts
	.incbin 56470, 1350
dat_20e1dc:
	.incbin 57820, 1946
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	add.w d5,$8(a1)
	add.w d6,$c(a1)
	move.w #$9e,d0
	jsr (sub_202356).l
	rts
	.incbin 59798, 58
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$403,d0
	tst.b ($ff1507).l
	beq.s loc_20e9f0
	move.w #$3af,d0
loc_20e9f0:
	move.w d0,$2(a0)
	move.l #$20ea72,$4(a0)
	moveq #$8,d0
	moveq #$4,d1
	moveq #$0,d2
	tst.b $28(a0)
	bmi.s loc_20ea0e
	moveq #$14,d0
	moveq #$18,d1
	moveq #$1,d2
loc_20ea0e:
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
	move.b d2,$1c(a0)
	lea dat_20ea2e(pc),a1
	jsr (sub_205b9c).l
	jmp (sub_203982).l
dat_20ea2e:
	.incbin 59950, 174

sub_20eadc:
	tst.b ($ff156a).l
	beq.s loc_20eb22
	cmpi.b #$1,($ff152e).l
	bne.s loc_20eaf4
	tst.b $28(a0)
	beq.s loc_20eb22
loc_20eaf4:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203a2e).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20eb20
	move.w #$9e,d0
	jsr (sub_202356).l
loc_20eb20:
	addq.l #$4,a7
loc_20eb22:
	rts

sub_20eb24:
	tst.b $28(a0)
	bmi.s loc_20eb54
	cmpi.b #$2,($ff152e).l
	bge.s loc_20eb44
	tst.b ($ff156d).l
	bne.s loc_20eb54
	addq.l #$4,a7
	jmp (loc_2076fc).l
loc_20eb44:
	tst.b ($ff156a).l
	bne.s loc_20eb54
	addq.l #$4,a7
	jmp (sub_203a2e).l
loc_20eb54:
	rts
	.incbin 60246, 1360

sub_20f0a6:
	jmp (loc_206410).l
dat_20f0ac:
	.incbin 61612, 16
dat_20f0bc:
	.incbin 61628, 2818
	jmp (dat_20657c).l
	.incbin 64452, 550
	jmp (dat_206294).l
	.incbin 65008, 55568
dat_21d700:
	.incbin 120576, 10496
dat_220000:
	.incbin 131072, 72476
dat_231b1c:
	.incbin 203548, 18362
dat_2362d6:
	.incbin 221910, 384
dat_236456:
	.incbin 222294, 1598
dat_236a94:
	.incbin 223892, 9952
dat_239174:
	.incbin 233844, 256
dat_239274:
	.incbin 234100, 4096
dat_23a274:
	.incbin 238196, 4996
dat_23b5f8:
	.incbin 243192, 18952
