; R11A__.MMD
; disassembled from the disc; code only, data comes from data/R11A__.MMD at build time
	.file "R11A__.MMD", 262144

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
	lea (dat_2385b8).l,a2
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
	lea (dat_2386b8).l,a2
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
	lea (dat_2385b8).l,a2
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
	lea (dat_2386b8).l,a2
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
	lea (dat_2385b8).l,a2
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
	lea (dat_2396b8).l,a2
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
	lea (dat_2385b8).l,a2
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
	lea (dat_2396b8).l,a2
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
	bsr.w sub_207644
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
	lea (dat_20fbc4).l,a2
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
	bsr.w sub_202a44
	bset.b #$2,($f754).w
	bsr.w sub_2035fa
	bsr.w sub_2034b0
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
	jsr (sub_20fbbe).l
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
	jsr (sub_205cc8).l
	bsr.w sub_207644
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
	jsr (sub_20765a).l
	jsr (sub_203a0e).l
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
	bsr.w sub_202a44
loc_2019ec:
	jsr (sub_203bb8).l
	tst.w ($ff190e).l
	bne.s loc_2019fe
	bsr.w sub_200184
loc_2019fe:
	jsr (sub_20cee8).l
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
	jmp (sub_205cc8).l
dat_201b84:
	.incbin 7044, 38

sub_201baa:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_23571a).l,a1
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
	jmp (sub_205cc8).l
loc_201c38:
	tst.b ($ff151f).l
	bne.s loc_201c2e
	tst.b ($ff1520).l
	bne.s loc_201c2e
	move.w #$90,d0
	jmp (sub_205cc8).l
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
	jmp (sub_205cc8).l
loc_201c74:
	tst.b ($ff151f).l
	bne.s loc_201c6a
	tst.b ($ff1520).l
	bne.s loc_201c6a
	move.w #$91,d0
	jmp (sub_205cc8).l
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
	bsr.w sub_205bea
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
	jsr (sub_20fbbe).l
	jsr (sub_20230a).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_2030c6
	bsr.w sub_2025fe
	jmp (loc_20ae64).l
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
	bsr.w sub_2030c6
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
	bsr.w sub_205bea
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
	lea (dat_20fbd4).l,a1
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
	lea (dat_20fbd4).l,a1
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
	lea (dat_20fbd4).l,a1
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
	.incbin 10572, 44
loc_202978:
	tst.b ($ff1522).l
	beq.s loc_202998
	jsr (sub_206854).l
	moveq #$0,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	move.w ($d00c).w,d0
	bpl.s loc_202996
	moveq #$0,d0
loc_202996:
	bra.s loc_2029ae
loc_202998:
	lea (dat_2029ea).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,($d008).w
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,($d00c).w
loc_2029ae:
	subi.w #$a0,d1
	bcc.s loc_2029b6
	moveq #$0,d1
loc_2029b6:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2029c0
	move.w d2,d1
loc_2029c0:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2029cc
	moveq #$0,d0
loc_2029cc:
	cmp.w ($f72e).w,d0
	blt.s loc_2029d6
	move.w ($f72e).w,d0
loc_2029d6:
	move.w d0,($f704).w
	bsr.w sub_2029f2
	lea (dat_2029ee).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2029ea:
	dc.b $00,$40,$07,$6b
dat_2029ee:
	dc.b $7f,$7f,$7f,$7f

sub_2029f2:
	cmpi.w #$800,($d008).w
	bcs.s loc_202a06
	subi.w #$1e0,d0
	bcs.s loc_202a02
	lsr.w #$1,d0
loc_202a02:
	addi.w #$1e0,d0
loc_202a06:
	swap d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$1,d1
	move.w d1,($f708).w
	lsr.w #$2,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f718).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f710).w
	lea ($ff1e00).l,a2
	moveq #$12,d6
loc_202a3c:
	clr.l (a2)+
	dbf d6,loc_202a3c
	rts

sub_202a44:
	tst.b ($f744).w
	beq.s loc_202a4c
	rts
loc_202a4c:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202d3c
	bsr.w sub_202ddc
	bsr.w sub_2036a2
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	moveq #$0,d5
	btst.b #$1,($d02c).w
	beq.s loc_202a8c
	tst.w ($f73a).w
	beq.s loc_202a8c
	move.w ($d010).w,d5
	ext.l d5
	asl.l #$8,d5
loc_202a8c:
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	add.l d5,d4
	moveq #$6,d6
	bsr.w sub_203066
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	add.l d5,d4
	add.l d5,d4
	moveq #$4,d6
	bsr.w sub_203032
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	add.l d5,d4
	moveq #$2,d6
	bsr.w sub_202ffe
	move.w ($f704).w,d0
	cmpi.w #$800,($d008).w
	bcs.s loc_202ae0
	subi.w #$1e0,d0
	bcs.s loc_202adc
	lsr.w #$1,d0
loc_202adc:
	addi.w #$1e0,d0
loc_202ae0:
	bsr.w sub_202fce
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($ff1e00).l,a2
	addi.l #$10000,(a2)+
	addi.l #$e000,(a2)+
	addi.l #$c000,(a2)+
	addi.l #$a000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$4800,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$2800,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$c000,(a2)+
	addi.l #$10000,(a2)+
	addi.l #$c000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$2000,(a2)+
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	lea ($ff1e00).l,a2
	moveq #$9,d6
loc_202b92:
	move.l (a2)+,d1
	swap d1
	add.w ($f718).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202c6e).l,a3
	move.b $0(a3,d6.w),d5
loc_202ba8:
	move.w d1,(a1)+
	dbf d5,loc_202ba8
	dbf d6,loc_202b92
	move.w ($f710).w,d0
	neg.w d0
	moveq #$13,d6
loc_202bba:
	move.w d0,(a1)+
	dbf d6,loc_202bba
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202bc8:
	move.w d0,(a1)+
	dbf d6,loc_202bc8
	move.w ($f708).w,d0
	neg.w d0
	move.w #$37,d6
loc_202bd8:
	move.w d0,(a1)+
	dbf d6,loc_202bd8
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202be6:
	move.w d0,(a1)+
	dbf d6,loc_202be6
	move.w ($f710).w,d0
	neg.w d0
	moveq #$13,d6
loc_202bf4:
	move.w d0,(a1)+
	dbf d6,loc_202bf4
	moveq #$8,d6
loc_202bfc:
	move.l (a2)+,d1
	swap d1
	add.w ($f718).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202c78).l,a3
	move.b $0(a3,d6.w),d5
loc_202c12:
	move.w d1,(a1)+
	dbf d5,loc_202c12
	dbf d6,loc_202bfc
	move.w ($f710).w,d0
	neg.w d0
	moveq #$13,d6
loc_202c24:
	move.w d0,(a1)+
	dbf d6,loc_202c24
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202c32:
	move.w d0,(a1)+
	dbf d6,loc_202c32
	move.w ($f708).w,d0
	neg.w d0
	move.w #$f,d6
loc_202c42:
	move.w d0,(a1)+
	dbf d6,loc_202c42
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	move.w d0,d4
	andi.w #$7f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	lea (dat_202c82).l,a3
	bra.w loc_202c8e
dat_202c6e:
	dc.b $01,$03,$05,$07,$07,$07,$03,$05
	dc.b $05,$03
dat_202c78:
	dc.b $01,$03,$05,$07,$0f,$03,$09,$03
	dc.b $01,$00
dat_202c82:
	dc.b $02,$80,$00,$e0,$07,$80,$00,$80
	dc.b $7f,$ff,$03,$60
loc_202c8e:
	cmp.w (a3),d4
	bcc.s loc_202cc4
loc_202c92:
	andi.w #$7,d2
	sub.w d2,d4
	addq.w #$8,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202cae(pc,d2.w)
loc_202ca2:
	tst.w d1
	bmi.s loc_202cc2
	cmp.w (a3),d4
	bcc.s loc_202cc4
	addq.w #$8,d4
	move.w (a2)+,d0
loc_202cae:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202ca2
loc_202cc2:
	rts
loc_202cc4:
	move.w d4,d5
	sub.w (a3),d5
	move.w $2(a3),d6
	sub.w d5,d6
	bcs.s loc_202d34
	beq.s loc_202d2e
	move.w #$e0,d3
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$8,d2
	divs.w d3,d2
	ext.l d2
	asl.l #$8,d2
	moveq #$0,d3
	move.w d0,d3
	subq.w #$1,d5
	bmi.s loc_202cfe
loc_202cf2:
	move.w d3,d0
	swap d3
	add.l d2,d3
	swap d3
	dbf d5,loc_202cf2
loc_202cfe:
	move.w d6,d5
	lsr.w #$3,d5
	sub.w d5,d1
	bcc.s loc_202d10
	move.w d1,d5
	neg.w d5
	lsl.w #$3,d5
	sub.w d5,d6
	beq.s loc_202d2e
loc_202d10:
	subq.w #$1,d6
loc_202d12:
	move.w d3,d0
	neg.w d0
	move.l d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	addq.w #$1,d4
	move.w d4,d0
	andi.w #$7,d0
	bne.s loc_202d2a
	addq.w #$2,a2
loc_202d2a:
	dbf d6,loc_202d12
loc_202d2e:
	addq.w #$4,a3
	bra.w loc_202ca2
loc_202d34:
	addq.w #$4,a3
	move.w d4,d2
	bra.w loc_202c92

sub_202d3c:
	move.w ($f700).w,d4
	bsr.s sub_202d70
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202d6e
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202d68
	bset.b #$2,($f754).w
	rts
loc_202d68:
	bset.b #$3,($f754).w
loc_202d6e:
	rts

sub_202d70:
	move.w ($d008).w,d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202d82
	bcs.s loc_202db2
	bra.s loc_202d88
loc_202d82:
	clr.w ($f73a).w
	rts
loc_202d88:
	cmpi.w #$10,d0
	blt.s loc_202d92
	move.w #$10,d0
loc_202d92:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202da0
	move.w ($f72a).w,d0
loc_202da0:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202db2:
	cmpi.w #$fff0,d0
	bge.s loc_202dbc
	move.w #$fff0,d0
loc_202dbc:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202da0
	move.w ($f728).w,d0
	bra.s loc_202da0
	.incbin 11724, 16

sub_202ddc:
	moveq #$0,d1
	move.w ($d00c).w,d0
	sub.w ($f704).w,d0
	btst.b #$2,($d022).w
	beq.s loc_202df0
	subq.w #$5,d0
loc_202df0:
	btst.b #$1,($d022).w
	beq.s loc_202e10
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202e5c
	subi.w #$40,d0
	bcc.s loc_202e5c
	tst.b ($f75c).w
	bne.s loc_202e6e
	bra.s loc_202e1c
loc_202e10:
	sub.w ($f73e).w,d0
	bne.s loc_202e22
	tst.b ($f75c).w
	bne.s loc_202e6e
loc_202e1c:
	clr.w ($f73c).w
	rts
loc_202e22:
	cmpi.w #$60,($f73e).w
	bne.s loc_202e4a
	move.w ($d014).w,d1
	bpl.s loc_202e32
	neg.w d1
loc_202e32:
	cmpi.w #$800,d1
	bcc.s loc_202e5c
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202ebc
	cmpi.w #$fffa,d0
	blt.s loc_202e86
	bra.s loc_202e74
loc_202e4a:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202ebc
	cmpi.w #$fffe,d0
	blt.s loc_202e86
	bra.s loc_202e74
loc_202e5c:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202ebc
	cmpi.w #$fff0,d0
	blt.s loc_202e86
	bra.s loc_202e74
loc_202e6e:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202e74:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202ec6
	bra.w loc_202e92
loc_202e86:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e92:
	cmp.w ($f72c).w,d1
	bgt.s loc_202eea
	cmpi.w #$ff00,d1
	bgt.s loc_202eb6
	andi.w #$7ff,d1
	andi.w #$7ff,($d00c).w
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202eea
loc_202eb6:
	move.w ($f72c).w,d1
	bra.s loc_202eea
loc_202ebc:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202ec6:
	cmp.w ($f72e).w,d1
	blt.s loc_202eea
	subi.w #$800,d1
	bcs.s loc_202ee6
	andi.w #$7ff,($d00c).w
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202eea
loc_202ee6:
	move.w ($f72e).w,d1
loc_202eea:
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
	bne.s loc_202f2c
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202f26
	bset.b #$0,($f754).w
	rts
loc_202f26:
	bset.b #$1,($f754).w
loc_202f2c:
	rts
	.incbin 12078, 68
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f96
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202f90
	bset.b #$0,($f756).w
	rts
loc_202f90:
	bset.b #$1,($f756).w
loc_202f96:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202fcc
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202fc6
	bset.b #$4,($f756).w
	rts
loc_202fc6:
	bset.b #$5,($f756).w
loc_202fcc:
	rts

sub_202fce:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202ffc
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202ff6
	bset.b #$0,($f756).w
	rts
loc_202ff6:
	bset.b #$1,($f756).w
loc_202ffc:
	rts

sub_202ffe:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_203030
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_20302a
	bset.b d6,($f756).w
	bra.s loc_203030
loc_20302a:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_203030:
	rts

sub_203032:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_203064
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_20305e
	bset.b d6,($f758).w
	bra.s loc_203064
loc_20305e:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_203064:
	rts

sub_203066:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203098
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_203092
	bset.b d6,($f75a).w
	bra.s loc_203098
loc_203092:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203098:
	rts
	.incbin 12442, 44

sub_2030c6:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203164
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203162
	bclr.b #$0,(a2)
	beq.s loc_203118
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203478
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20324e
loc_203118:
	bclr.b #$1,(a2)
	beq.s loc_203132
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203478
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20324e
loc_203132:
	bclr.b #$2,(a2)
	beq.s loc_203148
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203478
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032a4
loc_203148:
	bclr.b #$3,(a2)
	beq.s loc_203162
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203478
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032a4
loc_203162:
	rts

sub_203164:
	lea (dat_203530).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203180
	bclr.b #$1,(a2)
	beq.s loc_2031ca
	move.w #$e0,d4
loc_203180:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2031fa(pc,d0.w),a3
	beq.s loc_2031b2
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203478
	movem.l (a7)+,d4-d5
	bsr.w sub_20324e
	movea.l (a7)+,a0
	bra.s loc_2031ca
loc_2031b2:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20347a
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20327a
	movea.l (a7)+,a0
loc_2031ca:
	tst.b (a2)
	bne.s loc_2031d0
	rts
loc_2031d0:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2031e4
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2031e4:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_20320a
dat_2031fa:
	.incbin 12794, 16
loc_20320a:
	moveq #$f,d6
	move.l #$800000,d7
loc_203212:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20323e
	btst.b d0,(a2)
	beq.s loc_20323e
	add.w d0,d0
	movea.l dat_2031fa(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203350
	movem.l (a7)+,d4-d5
	bsr.w sub_203478
	bsr.w sub_2032d2
	movem.l (a7)+,d4-d5/a0
loc_20323e:
	addi.w #$10,d4
	dbf d6,loc_203212
	clr.b (a2)
	rts
	dc.b $4e,$75,$4e,$75

sub_20324e:
	moveq #$15,d6

sub_203250:
	move.l #$800000,d7
	move.l d0,d1
loc_203258:
	movem.l d4-d5,-(a7)
	bsr.w sub_203350
	move.l d1,d0
	bsr.w sub_2032d2
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203258
	rts

sub_20327a:
	move.l #$800000,d7
	move.l d0,d1
loc_203282:
	movem.l d4-d5,-(a7)
	bsr.w sub_203352
	move.l d1,d0
	bsr.w sub_2032d2
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203282
	rts

sub_2032a4:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2032ae:
	movem.l d4-d5,-(a7)
	bsr.w sub_203350
	move.l d1,d0
	bsr.w sub_2032d2
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2032ae
	rts

sub_2032d2:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20330e
	btst.b #$3,(a0)
	bne.s loc_2032ee
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2032ee:
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
loc_20330e:
	btst.b #$3,(a0)
	bne.s loc_203330
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
loc_203330:
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

sub_203350:
	add.w (a3),d5

sub_203352:
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
	beq.s loc_2033a0
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
loc_2033a0:
	rts
	.incbin 13218, 214

sub_203478:
	add.w (a3),d5

sub_20347a:
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
	.incbin 13460, 28

sub_2034b0:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2034da
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203502

sub_2034da:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034de:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203478
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203250
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2034de
	rts
loc_203502:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203506:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203530).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$7f0,d0
	bsr.w sub_2035c2
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203506
	rts
dat_203530:
	.incbin 13616, 130
dat_2035b2:
	.incbin 13746, 16

sub_2035c2:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2035b2(pc,d0.w),a3
	beq.s loc_2035e4
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203478
	movem.l (a7)+,d4-d5
	bsr.w sub_20324e
	bra.s loc_2035f8
loc_2035e4:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20347a
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20327a
loc_2035f8:
	rts

sub_2035fa:
	moveq #$0,d0
	lea (dat_20fbc4).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023f2
	movea.l (a2)+,a0
	bsr.w sub_203654
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200570
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_20363e
	jmp (loc_20cec4).l
loc_20363e:
	btst.b #$1,($ff151c).l
	beq.s loc_203652
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203652
	bsr.w sub_202520
loc_203652:
	rts

sub_203654:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20365e:
	move.l d0,(a3)+
	dbf d1,loc_20365e
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203674
	lea ($a040).w,a3
	moveq #$2,d1

sub_203674:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23aa3c).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20368e:
	move.w d1,d0
	movea.l a3,a0
loc_203692:
	move.b (a1)+,(a0)+
	dbf d0,loc_203692
	lea $80(a3),a3
	dbf d2,loc_20368e
	rts

sub_2036a2:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20371c(pc,d0.w),d0
	jsr dat_20371c(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2036c8
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2036c8:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2036f6
	bcc.s loc_2036f8
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2036ec
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2036ec:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2036f6:
	rts
loc_2036f8:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203710
	btst.b #$1,($d022).w
	beq.s loc_203710
	add.w d1,d1
	add.w d1,d1
loc_203710:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20371c:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20373c(pc,d0.w),d0
	jmp dat_20373c(pc,d0.w)
dat_20373c:
	dc.b $00,$06,$00,$66,$00,$6e
	cmpi.b #$1,($ff152e).l
	bne.s loc_2037a2
	cmpi.w #$1c16,($d008).w
	bcs.s loc_203762
	cmpi.w #$21c6,($d008).w
	bcc.s loc_203762
	move.w #$88,($f73e).w
loc_203762:
	move.w #$710,($f726).w
	cmpi.w #$840,($f700).w
	bcs.s loc_2037a0
	tst.b ($ff1510).l
	beq.s loc_20378c
	cmpi.w #$820,($f728).w
	bcc.s loc_20378c
	move.w #$820,($f728).w
	move.w #$820,($f720).w
loc_20378c:
	move.w #$410,($f726).w
	cmpi.w #$e00,($f700).w
	bcs.s loc_2037a0
	move.w #$310,($f726).w
loc_2037a0:
	rts
loc_2037a2:
	move.w #$310,($f726).w
	rts
	.incbin 14250, 612

sub_203a0e:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203a16:
	move.b (a0),d0
	beq.s loc_203a2c
	add.w d0,d0
	add.w d0,d0
	lea (dat_203e30).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203a2c:
	lea $40(a0),a0
	dbf d7,loc_203a16
	rts

sub_203a36:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203a74
	bpl.s loc_203a66
	btst.b #$1,$2c(a0)
	beq.s loc_203a66
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203a74
loc_203a66:
	btst.b #$2,$2c(a0)
	bne.s loc_203a74
	addi.w #$38,$12(a0)
loc_203a74:
	tst.w $12(a0)
	bmi.s loc_203a88
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a88
	move.w #$1000,$12(a0)
loc_203a88:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a98:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203ad4
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203ad4
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203ad2
	neg.w d1
loc_203ad2:
	add.w d1,d0
loc_203ad4:
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

sub_203aee:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203b5e
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b7a
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b7a
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203b38
	cmpi.w #$800,d3
	bcs.s loc_203b4a
	subi.w #$800,d3
	bra.s loc_203b4a
loc_203b38:
	cmpi.w #$700,($f704).w
	bcs.s loc_203b4a
	cmpi.w #$100,d3
	bcc.s loc_203b4a
	addi.w #$800,d3
loc_203b4a:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b7a
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b7a
loc_203b5e:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203b7a
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b7a:
	rts
	.incbin 15228, 30

sub_203b9a:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203ba0:
	move.l d1,(a1)+
	dbf d0,loc_203ba0
	rts
dat_203ba8:
	.incbin 15272, 16

sub_203bb8:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203bc4:
	tst.w (a4)
	beq.w loc_203c84
	moveq #$2,d6
loc_203bcc:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c7c
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203c32
	movea.l dat_203ba8(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203c16
	cmpi.w #$800,d2
	bcs.s loc_203c28
	subi.w #$800,d2
	bra.s loc_203c28
loc_203c16:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203c28
	cmpi.w #$100,d2
	bcc.s loc_203c28
	addi.w #$800,d2
loc_203c28:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203c54
loc_203c32:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203c54
	.incbin 15420, 24
loc_203c54:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c72
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c76
loc_203c72:
	bsr.w sub_203ca6
loc_203c76:
	bset.b #$7,$1(a0)
loc_203c7c:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203bcc
loc_203c84:
	lea $80(a4),a4
	dbf d7,loc_203bc4
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c9e
	move.l #$0,(a2)
	rts
loc_203c9e:
	move.b #$0,-$5(a2)
	rts

sub_203ca6:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203cec
	btst.l #$1,d4
	bne.w loc_203d3a
loc_203cb8:
	cmpi.b #$50,d5
	beq.s loc_203cea
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
	bne.s loc_203ce4
	addq.w #$1,d0
loc_203ce4:
	move.w d0,(a2)+
	dbf d1,loc_203cb8
loc_203cea:
	rts
loc_203cec:
	btst.l #$1,d4
	bne.w loc_203d80
loc_203cf4:
	cmpi.b #$50,d5
	beq.s loc_203d38
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
	bne.s loc_203d32
	addq.w #$1,d0
loc_203d32:
	move.w d0,(a2)+
	dbf d1,loc_203cf4
loc_203d38:
	rts
loc_203d3a:
	cmpi.b #$50,d5
	beq.s loc_203d7e
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
	bne.s loc_203d78
	addq.w #$1,d0
loc_203d78:
	move.w d0,(a2)+
	dbf d1,loc_203d3a
loc_203d7e:
	rts
loc_203d80:
	cmpi.b #$50,d5
	beq.s loc_203dd2
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
	bne.s loc_203dcc
	addq.w #$1,d0
loc_203dcc:
	move.w d0,(a2)+
	dbf d1,loc_203d80
loc_203dd2:
	rts
	.incbin 15828, 92
dat_203e30:
	.incbin 15920, 262

sub_203f36:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203f48
	move.w #$0,(a1)
	rts
loc_203f48:
	tst.w (a1)
	bne.s loc_203f52
	move.b #$1,$1(a1)
loc_203f52:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203f9c
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203f8e
	neg.w $10(a0)
loc_203f8e:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205cc8
loc_203f9c:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203fba
	cmpa.w #$d040,a0
	beq.s loc_203fba
	tst.b ($ff1906).l
	beq.s loc_203fba
	jmp (loc_20723e).l
loc_203fba:
	move.b $2a(a0),d0
	beq.s loc_203fe4
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203fd6
	cmpi.b #$2d,d0
	bcs.s loc_203fe0
	move.b #$2d,d0
	bra.s loc_203fe0
loc_203fd6:
	cmpi.b #$1e,d0
	bcs.s loc_203fe0
	move.b #$1e,d0
loc_203fe0:
	move.b d0,$2a(a0)
loc_203fe4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203ff2(pc,d0.w),d1
	jmp dat_203ff2(pc,d1.w)
dat_203ff2:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203ffc:
	tst.b ($d300).w
	bne.s loc_20403a
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_20403a:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_204062
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_204062:
	move.l #$21f200,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_204096:
	tst.b ($ff1506).l
	bne.s loc_2040fc
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_2040fc
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_204100
	cmpi.b #$2f,d1
	bne.s loc_2040fe
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_2040fc
	tst.b $2c(a0)
	beq.s loc_2040fc
	jsr (sub_207856).l
	bne.s loc_2040fc
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_2040f4
	moveq #$0,d0
loc_2040f4:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2040fc:
	rts
loc_2040fe:
	rts

sub_204100:
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

sub_204126:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204132
	neg.w d0
loc_204132:
	btst.b #$1,$2c(a0)
	beq.s loc_204142
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_20416a
loc_204142:
	cmpi.w #$600,d0
	bcs.s loc_20416a
	tst.w $14(a0)
	bpl.s loc_20415c
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204178
	move.w #$e0,d1
	bra.s loc_204178
loc_20415c:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204178
	move.w #$60,d1
	bra.s loc_204178
loc_20416a:
	cmpi.w #$a0,d1
	beq.s loc_204178
	bcc.s loc_204176
	addq.w #$2,d1
	bra.s loc_204178
loc_204176:
	subq.w #$2,d1
loc_204178:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_204126
	bsr.w sub_204096
	tst.w ($ff1588).l
	beq.s loc_20419e
	btst.b #$4,($f605).w
	beq.s loc_20419e
	move.b #$1,($ff1906).l
	rts
loc_20419e:
	tst.b ($f7cc).w
	bne.s loc_2041aa
	move.w ($f604).w,($f602).w
loc_2041aa:
	btst.b #$0,$2c(a0)
	beq.s loc_2041ce
	cmpi.b #$6,($ff1506).l
	bne.s loc_2041c8
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2041e6
loc_2041c8:
	bsr.w sub_2044b0
	bra.s loc_2041e6
loc_2041ce:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20422c(pc,d0.w),d1
	jsr dat_20422c(pc,d1.w)
	jsr (sub_206780).l
loc_2041e6:
	bsr.s sub_20423a
	bsr.w sub_2042fa
	bsr.w sub_204314
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_20420e
	tst.b $1c(a0)
	bne.s loc_20420e
	move.b $1d(a0),$1c(a0)
loc_20420e:
	bsr.w sub_2056b8
	tst.b $2c(a0)
	bmi.s loc_204226
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204226
	jsr (sub_206d24).l
loc_204226:
	bsr.w sub_20556e
	rts
dat_20422c:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_20423a:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20425e
	move.w $30(a0),d0
	beq.s loc_204250
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20425e
loc_204250:
	btst.b #$6,$2c(a0)
	bne.s loc_20425e
	jsr (sub_203aee).l
loc_20425e:
	tst.b ($ff151f).l
	beq.s loc_2042a2
	tst.w $32(a0)
	beq.s loc_2042a2
	subq.w #$1,$32(a0)
	bne.s loc_2042a2
	tst.b ($ff1520).l
	bne.s loc_20429a
	tst.b ($ff1958).l
	bne.s loc_20429a
	tst.b ($ff152e).l
	bne.s loc_204294
	move.w #$e,d0
	jsr (sub_205cc8).l
loc_204294:
	jsr (sub_201b4a).l
loc_20429a:
	move.b #$0,($ff151f).l
loc_2042a2:
	tst.b ($ff1520).l
	beq.s loc_2042f8
	tst.w $34(a0)
	beq.s loc_2042f8
	subq.w #$1,$34(a0)
	bne.s loc_2042f8
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2042f0
	tst.b ($ff1958).l
	bne.s loc_2042f0
	tst.b ($ff152e).l
	bne.s loc_2042ea
	move.w #$e,d0
	jsr (sub_205cc8).l
loc_2042ea:
	jsr (sub_201b4a).l
loc_2042f0:
	move.b #$0,($ff1520).l
loc_2042f8:
	rts

sub_2042fa:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204314:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204320
loc_20431e:
	rts
loc_204320:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204332
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20431e
loc_204332:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204376
	bset.b #$6,$22(a0)
	bne.s loc_20431e
	bsr.w sub_205fcc
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20431e
	bra.s loc_2043ae
loc_204376:
	tst.w $12(a0)
	beq.s loc_20437e
	bpl.s loc_20431e
loc_20437e:
	bclr.b #$6,$22(a0)
	beq.s loc_20431e
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20431e
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2043ae
	move.w #$f000,$12(a0)
loc_2043ae:
	jsr (sub_207856).l
	bne.s loc_2043c2
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2043c2:
	rts

sub_2043c4:
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
	bcs.s loc_20449e
	move.l #$50000,d0
loc_20449e:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2044b0:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2044d6
	tst.b ($ff152e).l
	beq.s loc_2044cc
	cmpi.b #$2,($ff152e).l
	bne.s loc_2044d6
loc_2044cc:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204586
loc_2044d6:
	tst.b $2a(a0)
	bne.w loc_204594
	tst.b ($f784).w
	beq.w loc_204594
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2044f4
	neg.w d0
loc_2044f4:
	tst.w ($f786).w
	bne.s loc_204500
	move.w #$1,($f786).w
loc_204500:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204516
	move.b #$1,($ff1502).l
	bra.w loc_205cc4
loc_204516:
	cmpi.w #$d2,d1
	bcs.s loc_20456a
	cmpi.b #$2,($ff1522).l
	beq.s loc_204568
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204540
	move.w #$82,d0
	jsr (sub_205cc8).l
	moveq #$0,d0
loc_204540:
	add.b ($f784).w,d0
	bpl.s loc_20454a
	moveq #$0,d0
	bra.s loc_204552
loc_20454a:
	cmpi.b #$3,d0
	bcs.s loc_204552
	moveq #$2,d0
loc_204552:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2043c4
	move.b #$2,($ff1522).l
loc_204568:
	rts
loc_20456a:
	cmpi.w #$5a,d1
	bcc.s loc_204582
	cmp.w d2,d0
	bcc.w loc_203ffc
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204582:
	cmp.w d2,d0
	bcc.s loc_204594
loc_204586:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204594:
	rts
	bsr.w sub_203f36
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045c6
	tst.b ($ff195b).l
	beq.s loc_2045b4
	cmpi.b #$79,$1a(a0)
	bne.s loc_2045f0
	bra.s loc_2045bc
loc_2045b4:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2045f0
loc_2045bc:
	bsr.w sub_204e58
	jmp (sub_203a36).l
loc_2045c6:
	bsr.w sub_20469e
	bsr.w sub_2044b0
	bsr.w sub_204f42
	bsr.w sub_20506e
	bsr.w sub_204712
	bsr.w sub_204ec4
	bsr.w sub_204e58
	jsr (sub_203a98).l
	bsr.w sub_200c5a
	bsr.w sub_2050ec
loc_2045f0:
	rts
	tst.b ($f7c7).w
	bne.s loc_20460c
	cmpi.b #$15,$1c(a0)
	beq.s loc_20460c
	tst.w $12(a0)
	bmi.s loc_20460c
	move.b #$0,$1c(a0)
loc_20460c:
	bsr.w sub_20469e
	bsr.w sub_2044b0
	bsr.w sub_20502c
	bsr.w sub_204d78
	bsr.w sub_204e58
	jsr (sub_203a36).l
	btst.b #$6,$22(a0)
	beq.s loc_204634
	subi.w #$28,$12(a0)
loc_204634:
	bsr.w sub_205136
	bsr.w sub_20515a
	rts
	bsr.w sub_20469e
	bsr.w sub_2044b0
	bsr.w sub_204f42
	bsr.w sub_2050aa
	bsr.w sub_204bb2
	bsr.w sub_204e58
	tst.b $2a(a0)
	bne.s loc_204662
	jsr (sub_203a98).l
loc_204662:
	bsr.w sub_200c5a
	bsr.w sub_2050ec
	rts
	bsr.w sub_20469e
	bsr.w sub_2044b0
	bsr.w sub_20502c
	bsr.w sub_204d78
	bsr.w sub_204e58
	jsr (sub_203a36).l
	btst.b #$6,$22(a0)
	beq.s loc_204694
	subi.w #$28,$12(a0)
loc_204694:
	bsr.w sub_205136
	bsr.w sub_20515a
	rts

sub_20469e:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20470a
	tst.w ($ff1506).l
	bne.s loc_20470a
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20470c).l,a2
loc_2046d2:
	move.b (a2)+,d0
	bmi.s loc_2046e2
	cmp.b d0,d1
	bne.s loc_2046d2
	bset.b #$1,$2c(a0)
	rts
loc_2046e2:
	bclr.b #$1,$2c(a0)
	beq.s loc_20470a
	tst.w $12(a0)
	bpl.s loc_20470a
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20470a
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20470a
	neg.w $10(a0)
loc_20470a:
	rts
dat_20470c:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204712:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204a3c
	tst.w $3e(a0)
	bne.w loc_2049ec
	btst.b #$2,($f602).w
	beq.s loc_20473a
	bsr.w sub_204acc
loc_20473a:
	btst.b #$3,($f602).w
	beq.s loc_204746
	bsr.w sub_204b42
loc_204746:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2049ec
	tst.w $14(a0)
	beq.s loc_204766
	tst.b $2a(a0)
	beq.w loc_2049ec
	bra.s loc_204772
loc_204766:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204772:
	btst.b #$3,$22(a0)
	beq.s loc_2047c4
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20481c
	cmpi.b #$1e,$0(a1)
	bne.s loc_2047a4
	move.b #$0,$1c(a0)
	bra.w loc_2049ec
loc_2047a4:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204800
	cmp.w d2,d1
	bge.s loc_2047ee
	bra.s loc_20481c
loc_2047c4:
	jsr (sub_206a88).l
	cmpi.w #$c,d1
	blt.s loc_20481c
	move.w #$ab,d0
	jsr (sub_202356).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2047f8
loc_2047ee:
	btst.b #$0,$22(a0)
	bne.s loc_204808
	bra.s loc_204812
loc_2047f8:
	cmpi.b #$3,$37(a0)
	bne.s loc_20481c
loc_204800:
	btst.b #$0,$22(a0)
	bne.s loc_204812
loc_204808:
	move.b #$32,$1c(a0)
	bra.w loc_2049ec
loc_204812:
	move.b #$6,$1c(a0)
	bra.w loc_2049ec
loc_20481c:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204830
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204830:
	btst.b #$7,($f788).w
	bne.w loc_204934
	btst.b #$6,($f788).w
	bne.w loc_204954
	btst.b #$1,($f602).w
	bne.w loc_204954
	andi.b #$f,($f788).w
	beq.s loc_204868
	btst.b #$0,($f603).w
	beq.s loc_20487c
	bset.b #$7,($f788).w
	bra.w loc_204a10
loc_204868:
	btst.b #$0,($f603).w
	beq.w loc_20487c
	move.b #$1,($f788).w
	bra.w loc_204a10
loc_20487c:
	btst.b #$0,($f602).w
	beq.s loc_2048f8
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2048da
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2048ac
	asr.w #$1,d2
	sub.w d2,d1
loc_2048ac:
	btst.b #$0,$22(a0)
	beq.s loc_2048b8
	neg.w d0
	neg.w d1
loc_2048b8:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2048ce
	cmp.w d0,d1
	ble.s loc_2048d4
	bra.s loc_2048d2
loc_2048ce:
	cmp.w d1,d0
	ble.s loc_2048d4
loc_2048d2:
	move.w d1,d0
loc_2048d4:
	move.w d0,$14(a0)
	rts
loc_2048da:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048f4
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202356).l
loc_2048f4:
	bra.w loc_204a10
loc_2048f8:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204918
	move.w #$ab,d0
	jsr (sub_202356).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204954
loc_204918:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202356).l
	bra.w loc_2049ec
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204934:
	btst.b #$0,($f602).w
	beq.s loc_204954
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204a10
	addq.w #$2,($f73e).w
	bra.w loc_204a10
loc_204954:
	btst.b #$6,($f788).w
	bne.w loc_2049d0
	andi.b #$f,($f788).w
	beq.s loc_204978
	btst.b #$1,($f603).w
	beq.s loc_20498a
	bset.b #$6,($f788).w
	bra.w loc_204a10
loc_204978:
	btst.b #$1,($f603).w
	beq.s loc_20498a
	move.b #$1,($f788).w
	bra.w loc_204a10
loc_20498a:
	btst.b #$1,($f602).w
	beq.s loc_2049ec
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2049ce
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049ce
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2049c0
	neg.w $14(a0)
loc_2049c0:
	move.w #$9c,d0
	jsr (sub_202356).l
	bsr.w sub_204eec
loc_2049ce:
	bra.s loc_204a10
loc_2049d0:
	btst.b #$1,($f602).w
	beq.s loc_2049ec
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204a10
	subq.w #$2,($f73e).w
	bra.s loc_204a10
loc_2049ec:
	cmpi.w #$60,($f73e).w
	bne.s loc_204a06
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204a10
	move.b #$0,($f788).w
	bra.s loc_204a10
loc_204a06:
	bcc.s loc_204a0c
	addq.w #$4,($f73e).w
loc_204a0c:
	subq.w #$2,($f73e).w
loc_204a10:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a3c
	move.w $14(a0),d0
	beq.s loc_204a3c
	bmi.s loc_204a30
	sub.w d5,d0
	bcc.s loc_204a2a
	move.w #$0,d0
loc_204a2a:
	move.w d0,$14(a0)
	bra.s loc_204a3c
loc_204a30:
	add.w d5,d0
	bcc.s loc_204a38
	move.w #$0,d0
loc_204a38:
	move.w d0,$14(a0)
loc_204a3c:
	move.b $26(a0),d0
	jsr (sub_20085a).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a5a:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204aca
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204aca
	bmi.s loc_204a72
	neg.w d1
loc_204a72:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206948
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204aca
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204ac6
	cmpi.b #$40,d0
	beq.s loc_204ab4
	cmpi.b #$80,d0
	beq.s loc_204aae
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204aae:
	sub.w d1,$12(a0)
	rts
loc_204ab4:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204ac6:
	add.w d1,$12(a0)
loc_204aca:
	rts

sub_204acc:
	tst.b $2a(a0)
	bne.s loc_204b40
	move.w $14(a0),d0
	beq.s loc_204ada
	bpl.s loc_204b0a
loc_204ada:
	bset.b #$0,$22(a0)
	bne.s loc_204aee
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204aee:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204afe
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204afe
	move.w d1,d0
loc_204afe:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b0a:
	sub.w d4,d0
	bcc.s loc_204b12
	move.w #$ff80,d0
loc_204b12:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b40
	cmpi.w #$400,d0
	blt.s loc_204b40
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202356).l
loc_204b40:
	rts

sub_204b42:
	tst.b $2a(a0)
	bne.s loc_204bb0
	move.w $14(a0),d0
	bmi.s loc_204b7a
	bclr.b #$0,$22(a0)
	beq.s loc_204b62
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b62:
	cmp.w d6,d0
	bge.s loc_204b6e
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b6e
	move.w d6,d0
loc_204b6e:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b7a:
	add.w d4,d0
	bcc.s loc_204b82
	move.w #$80,d0
loc_204b82:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204bb0
	cmpi.w #$fc00,d0
	bgt.s loc_204bb0
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202356).l
loc_204bb0:
	rts

sub_204bb2:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204cfc
	tst.w $3e(a0)
	bne.s loc_204bea
	btst.b #$2,($f602).w
	beq.s loc_204bde
	bsr.w sub_204d32
loc_204bde:
	btst.b #$3,($f602).w
	beq.s loc_204bea
	bsr.w sub_204d56
loc_204bea:
	tst.b $2a(a0)
	beq.w loc_204c94
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204c0a
	asr.w #$1,d2
	sub.w d2,d1
loc_204c0a:
	btst.b #$0,$22(a0)
	beq.s loc_204c16
	neg.w d0
	neg.w d1
loc_204c16:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204c2c
	cmp.w d0,d1
	ble.s loc_204c32
	bra.s loc_204c30
loc_204c2c:
	cmp.w d1,d0
	ble.s loc_204c32
loc_204c30:
	move.w d1,d0
loc_204c32:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204c66
	rts
loc_204c40:
	move.w #$ab,d0
	jsr (sub_202356).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204cc6
loc_204c66:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204c40
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202356).l
	btst.b #$0,$22(a0)
	bne.s loc_204c8c
	bsr.w sub_204d56
	bra.s loc_204c94
loc_204c8c:
	bsr.w sub_204d32
	bra.s loc_204c94
	dc.b $4e,$75
loc_204c94:
	move.w $14(a0),d0
	beq.s loc_204cb6
	bmi.s loc_204caa
	sub.w d5,d0
	bcc.s loc_204ca4
	move.w #$0,d0
loc_204ca4:
	move.w d0,$14(a0)
	bra.s loc_204cb6
loc_204caa:
	add.w d5,d0
	bcc.s loc_204cb2
	move.w #$0,d0
loc_204cb2:
	move.w d0,$14(a0)
loc_204cb6:
	tst.w $14(a0)
	bne.s loc_204cfc
	move.w #$ab,d0
	jsr (sub_202356).l
loc_204cc6:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ce6
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204cf6
loc_204ce6:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204cf6:
	move.b #$5,$1c(a0)
loc_204cfc:
	move.b $26(a0),d0
	jsr (sub_20085a).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204d20
	move.w #$1000,d1
loc_204d20:
	cmpi.w #$f000,d1
	bge.s loc_204d2a
	move.w #$f000,d1
loc_204d2a:
	move.w d1,$10(a0)
	bra.w loc_204a5a

sub_204d32:
	move.w $14(a0),d0
	beq.s loc_204d3a
	bpl.s loc_204d48
loc_204d3a:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d48:
	sub.w d4,d0
	bcc.s loc_204d50
	move.w #$ff80,d0
loc_204d50:
	move.w d0,$14(a0)
	rts

sub_204d56:
	move.w $14(a0),d0
	bmi.s loc_204d6a
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d6a:
	add.w d4,d0
	bcc.s loc_204d72
	move.w #$80,d0
loc_204d72:
	move.w d0,$14(a0)
	rts

sub_204d78:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204db2
	tst.w ($ff1506).l
	bne.s loc_204db2
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204daa
	cmpi.w #$840,$8(a0)
	bcc.s loc_204daa
	rts
loc_204daa:
	btst.b #$1,$2c(a0)
	bne.s loc_204de2
loc_204db2:
	btst.b #$2,($f602).w
	beq.s loc_204dcc
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204dcc
	move.w d1,d0
loc_204dcc:
	btst.b #$3,($f602).w
	beq.s loc_204de2
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204de2
	move.w d6,d0
loc_204de2:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204df8
	bcc.s loc_204df4
	addq.w #$4,($f73e).w
loc_204df4:
	subq.w #$2,($f73e).w
loc_204df8:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204e26
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204e26
	bmi.s loc_204e1a
	sub.w d1,d0
	bcc.s loc_204e14
	move.w #$0,d0
loc_204e14:
	move.w d0,$10(a0)
	rts
loc_204e1a:
	sub.w d1,d0
	bcs.s loc_204e22
	move.w #$0,d0
loc_204e22:
	move.w d0,$10(a0)
loc_204e26:
	rts
	.incbin 20008, 48

sub_204e58:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204eac
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204e86
	addi.w #$38,d0
loc_204e86:
	cmp.w d1,d0
	bls.s loc_204eac
loc_204e8a:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204e9a
	rts
loc_204e9a:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206fb6
	move.b #$6,$24(a0)
	rts
loc_204eac:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204e8a

sub_204ec4:
	tst.b ($f7ca).w
	bne.s loc_204eea
	move.w $14(a0),d0
	bpl.s loc_204ed2
	neg.w d0
loc_204ed2:
	cmpi.w #$80,d0
	bcs.s loc_204eea
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204eea
	btst.b #$1,($f602).w
	bne.s sub_204eec
loc_204eea:
	rts

sub_204eec:
	btst.b #$2,$22(a0)
	beq.s loc_204ef6
	bra.s loc_204f26
loc_204ef6:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f16
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f26
loc_204f16:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f26:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204f40
	cmpi.w #$200,$14(a0)
	bcc.s loc_204f40
	move.w #$200,$14(a0)
loc_204f40:
	rts

sub_204f42:
	tst.b $2a(a0)
	beq.s loc_204f4a
	rts
loc_204f4a:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204f5c
	tst.w $14(a0)
	beq.w loc_205022
loc_204f5c:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205022
	btst.b #$3,$22(a0)
	beq.s loc_204f78
	jsr (sub_205c4e).l
	beq.s loc_204fa8
loc_204f78:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2069b2
	cmpi.w #$6,d1
	blt.w loc_205022
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f9e
	move.w #$380,d2
loc_204f9e:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204fa8:
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
	bne.s loc_205024
	tst.b ($ff195b).l
	beq.s loc_205006
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_205016
loc_205006:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205016:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205022:
	rts
loc_205024:
	bset.b #$4,$22(a0)
	rts

sub_20502c:
	tst.b $3c(a0)
	beq.s loc_20505e
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205042
	move.w #$fe00,d1
loc_205042:
	cmp.w $12(a0),d1
	ble.s loc_20505c
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_20505c
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_20505c:
	rts
loc_20505e:
	cmpi.w #$f040,$12(a0)
	bge.s loc_20506c
	move.w #$f040,$12(a0)
loc_20506c:
	rts

sub_20506e:
	tst.b $2a(a0)
	bne.s loc_2050a8
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050a8
	move.b $26(a0),d0
	jsr (sub_20085a).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_2050a8
	bmi.s loc_2050a4
	tst.w d0
	beq.s loc_2050a2
	add.w d0,$14(a0)
loc_2050a2:
	rts
loc_2050a4:
	add.w d0,$14(a0)
loc_2050a8:
	rts

sub_2050aa:
	tst.b $2a(a0)
	bne.s loc_2050ea
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050ea
	move.b $26(a0),d0
	jsr (sub_20085a).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2050e0
	tst.w d0
	bpl.s loc_2050da
	asr.l #$2,d0
loc_2050da:
	add.w d0,$14(a0)
	rts
loc_2050e0:
	tst.w d0
	bmi.s loc_2050e6
	asr.l #$2,d0
loc_2050e6:
	add.w d0,$14(a0)
loc_2050ea:
	rts

sub_2050ec:
	nop
	tst.b $38(a0)
	bne.s loc_20512e
	tst.w $3e(a0)
	bne.s loc_205130
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20512e
	move.w $14(a0),d0
	bpl.s loc_205110
	neg.w d0
loc_205110:
	cmpi.w #$280,d0
	bcc.s loc_20512e
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_20512e:
	rts
loc_205130:
	subq.w #$1,$3e(a0)
	rts

sub_205136:
	btst.b #$1,$2c(a0)
	bne.s loc_205158
	move.b $26(a0),d0
	beq.s loc_205158
	bpl.s loc_20514e
	addq.b #$2,d0
	bcc.s loc_20514c
	moveq #$0,d0
loc_20514c:
	bra.s loc_205154
loc_20514e:
	subq.b #$2,d0
	bcc.s loc_205154
	moveq #$0,d0
loc_205154:
	move.b d0,$26(a0)
loc_205158:
	rts

sub_20515a:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200af2).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20523e
	cmpi.b #$80,d0
	beq.w loc_2052a0
	cmpi.b #$c0,d0
	beq.w loc_2052fc
	bsr.w sub_206cc8
	tst.w d1
	bpl.s loc_2051ac
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051ac:
	bsr.w sub_206b2a
	tst.w d1
	bpl.s loc_2051be
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051be:
	bsr.w sub_2069da
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20523c
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2051dc
	cmp.b d2,d0
	blt.s loc_20523c
loc_2051dc:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20535e
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20521a
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20520c
	asr.w $12(a0)
	bra.s loc_20522e
loc_20520c:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_20521a:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_20522e
	move.w #$fc0,$12(a0)
loc_20522e:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20523c
	neg.w $14(a0)
loc_20523c:
	rts
loc_20523e:
	bsr.w sub_206cc8
	tst.w d1
	bpl.s loc_205258
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205258:
	bsr.w sub_206b82
	tst.w d1
	bpl.s loc_205272
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205270
	move.w #$0,$12(a0)
loc_205270:
	rts
loc_205272:
	tst.w $12(a0)
	bmi.s loc_20529e
	bsr.w sub_2069da
	tst.w d1
	bpl.s loc_20529e
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20535e
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20529e:
	rts
loc_2052a0:
	bsr.w sub_206cc8
	tst.w d1
	bpl.s loc_2052b2
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052b2:
	bsr.w sub_206b2a
	tst.w d1
	bpl.s loc_2052c4
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052c4:
	bsr.w sub_206b82
	tst.w d1
	bpl.s loc_2052fa
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052e4
	move.w #$0,$12(a0)
	rts
loc_2052e4:
	move.b d3,$26(a0)
	bsr.w sub_2053d0
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2052fa
	neg.w $14(a0)
loc_2052fa:
	rts
loc_2052fc:
	bsr.w sub_206b2a
	tst.w d1
	bpl.s loc_205316
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205316:
	bsr.w sub_206b82
	tst.w d1
	bpl.s loc_205330
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20532e
	move.w #$0,$12(a0)
loc_20532e:
	rts
loc_205330:
	tst.w $12(a0)
	bmi.s loc_20535c
	bsr.w sub_2069da
	tst.w d1
	bpl.s loc_20535c
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20535e
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20535c:
	rts

sub_20535e:
	btst.b #$4,$22(a0)
	beq.s loc_205368
	nop
loc_205368:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2053c2
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2053a2
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2053b2
loc_2053a2:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2053b2:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202356).l
loc_2053c2:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2053d0:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21488, 382

sub_20556e:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205596
	cmpi.b #$5,($ff1506).l
	beq.s loc_205596
	cmpi.b #$2,($ff1506).l
	beq.s loc_205596
	tst.b ($ff1506).l
	bne.w loc_205658
loc_205596:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2055d4
	tst.b ($ff1506).l
	bne.w loc_20565a
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_20565a
	bra.s loc_2055dc
loc_2055d4:
	cmp.b ($f7af).w,d1
	beq.w loc_20565a
loc_2055dc:
	cmp.b ($f7ac).w,d1
	beq.s loc_20560c
	cmp.b ($f7ad).w,d1
	beq.s loc_2055f0
	bclr.b #$6,$1(a0)
	rts
loc_2055f0:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205672
	btst.b #$1,$22(a0)
	beq.s loc_20560c
	bclr.b #$6,$1(a0)
	rts
loc_20560c:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20561e
	bclr.b #$6,$1(a0)
	rts
loc_20561e:
	cmpi.b #$e0,d2
	bcs.s loc_20562c
	bset.b #$6,$1(a0)
	rts
loc_20562c:
	btst.b #$6,$1(a0)
	bne.s loc_205648
	move.b $26(a0),d1
	beq.s loc_205658
	cmpi.b #$80,d1
	bhi.s loc_205658
	bset.b #$6,$1(a0)
	rts
loc_205648:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205658
	bclr.b #$6,$1(a0)
loc_205658:
	rts
loc_20565a:
	btst.b #$2,$22(a0)
	bne.s loc_20566c
	move.w #$9c,d0
	jsr (sub_202356).l
loc_20566c:
	jmp (sub_204eec).l
loc_205672:
	tst.w $12(a0)
	bmi.s loc_2056b6
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2056aa
	cmpi.w #$38,d1
	bcs.s loc_2056a2
	cmpi.w #$80,d1
	bcs.s loc_2056b6
loc_20569a:
	bclr.b #$6,$1(a0)
	rts
loc_2056a2:
	bset.b #$6,$1(a0)
	rts
loc_2056aa:
	cmpi.w #$38,d1
	bcs.s loc_20569a
	cmpi.w #$80,d1
	bcc.s loc_2056a2
loc_2056b6:
	rts

sub_2056b8:
	lea (dat_2059a8).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2056da
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2056da:
	bsr.w sub_20594a
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205752
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205720
	move.b d0,$1e(a0)

sub_205704:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205718
	bpl.s loc_205718
	cmpi.b #$fd,d0
	bge.s loc_205722
loc_205718:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205720:
	rts
loc_205722:
	addq.b #$1,d0
	bne.s loc_205732
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205718
loc_205732:
	addq.b #$1,d0
	bne.s loc_205746
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205718
loc_205746:
	addq.b #$1,d0
	bne.s loc_205750
	move.b $2(a1,d1.w),$1c(a0)
loc_205750:
	rts
loc_205752:
	subq.b #$1,$1e(a0)
	bpl.s loc_205720
	addq.b #$1,d0
	bne.w loc_20580c
	tst.b ($ff195b).l
	bne.w loc_2058d4
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20577a
	not.b d0
loc_20577a:
	btst.b #$1,$2c(a0)
	bne.s loc_205788
	addi.b #$10,d0
	bra.s loc_20578a
loc_205788:
	addq.b #$8,d0
loc_20578a:
	bpl.s loc_20578e
	moveq #$3,d1
loc_20578e:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205880
	move.w $14(a0),d2
	bpl.s loc_2057ac
	neg.w d2
loc_2057ac:
	btst.b #$1,$2c(a0)
	beq.s loc_2057c4
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205baa).l,a1
	bra.s loc_2057ee
loc_2057c4:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205b84).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2057ee
	lea (dat_205a28).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2057ee
	lea (dat_205a20).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2057ee:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2057fc
	moveq #$0,d2
loc_2057fc:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205704
	add.b d3,$1a(a0)
	rts
loc_20580c:
	addq.b #$1,d0
	bne.s loc_20587c
	move.w $14(a0),d2
	bpl.s loc_205818
	neg.w d2
loc_205818:
	lea (dat_205b06).l,a1
	tst.b ($ff195b).l
	bne.s loc_205856
	lea (dat_205a38).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20584a
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205856
	lea (dat_205bb2).l,a1
	bra.s loc_205856
loc_20584a:
	cmpi.w #$600,d2
	bcc.s loc_205856
	lea (dat_205a30).l,a1
loc_205856:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205860
	moveq #$0,d2
loc_205860:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205704
loc_20587c:
	addq.b #$1,d0
	bne.s loc_2058c0
loc_205880:
	move.w $14(a0),d2
	bmi.s loc_205888
	neg.w d2
loc_205888:
	addi.w #$800,d2
	bpl.s loc_205890
	moveq #$0,d2
loc_205890:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205b18).l,a1
	tst.b ($ff195b).l
	bne.s loc_2058aa
	lea (dat_205a40).l,a1
loc_2058aa:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205704
loc_2058c0:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2058d4:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2058e6
	not.b d0
loc_2058e6:
	addi.b #$10,d0
	bpl.s loc_2058ee
	moveq #$0,d1
loc_2058ee:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20591c
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20580c
loc_20591c:
	move.w $14(a0),d2
	bpl.s loc_205924
	neg.w d2
loc_205924:
	lea (dat_205b00).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205936
	lea (dat_205afa).l,a1
loc_205936:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205940
	moveq #$0,d2
loc_205940:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205704

sub_20594a:
	tst.b ($ff195b).l
	beq.s loc_205956
	move.b dat_205958(pc,d0.w),d0
loc_205956:
	rts
dat_205958:
	.incbin 22872, 80
dat_2059a8:
	.incbin 22952, 120
dat_205a20:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205a28:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205a30:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205a38:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205a40:
	.incbin 23104, 186
dat_205afa:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205b00:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205b06:
	.incbin 23302, 18
dat_205b18:
	.incbin 23320, 108
dat_205b84:
	.incbin 23428, 38
dat_205baa:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205bb2:
	.incbin 23474, 56

sub_205bea:
	tst.b (a0)
	beq.w loc_205c4c
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c4c
	move.b d0,(a2)
	lea (dat_230f60).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c4c
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205c1e:
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
loc_205c38:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c38
	dbf d1,loc_205c1e
loc_205c4c:
	rts

sub_205c4e:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205cc2
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
	bne.s loc_205cb0
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205cb0:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205cc2:
	rts
loc_205cc4:
	move.w #$e,d0

sub_205cc8:
	cmpi.w #$67,d0
	bne.s loc_205cd6
	move.b #$1,($ff1958).l
loc_205cd6:
	move.w d0,($a12010).l
loc_205cdc:
	move.w ($a12020).l,d0
	beq.s loc_205cdc
	cmp.w ($a12020).l,d0
	bne.s loc_205cdc
	move.w #$0,($a12010).l
loc_205cf4:
	move.w ($a12020).l,d0
	bne.s loc_205cf4
	move.w ($a12020).l,d0
	bne.s loc_205cf4
	rts
	dc.b $00,$00

sub_205d08:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205d24
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205d24:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d64
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d66
loc_205d40:
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
loc_205d64:
	rts
loc_205d66:
	addq.b #$1,d0
	bne.s loc_205d76
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205d40
loc_205d76:
	addq.b #$1,d0
	bne.s loc_205d8a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205d40
loc_205d8a:
	addq.b #$1,d0
	bne.s loc_205d94
	move.b $2(a1,d1.w),$1c(a0)
loc_205d94:
	addq.b #$1,d0
	bne.s loc_205d9c
	addq.b #$2,$24(a0)
loc_205d9c:
	addq.b #$1,d0
	bne.s loc_205daa
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205daa:
	addq.b #$1,d0
	bne.s loc_205db2
	addq.b #$2,$25(a0)
loc_205db2:
	rts

sub_205db4:
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
	bcs.s loc_205e4a
	move.l #$50000,d0
loc_205e4a:
	move.l d0,($ff152a).l
	move.b ($ff195b).l,($ff1591).l
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e76(pc,d0.w),d0
	jsr dat_205e76(pc,d0.w)
	jsr (sub_203aee).l
	jmp (loc_20788c).l
dat_205e76:
	dc.b $00,$08,$00,$c4,$00,$fa,$01,$4c
	addq.b #$2,$24(a0)
	move.l #$23f120,$4(a0)
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
	jsr (sub_207856).l
	bne.s loc_205f34
	move.b #$13,$0(a1)
	addq.b #$4,$24(a1)
	tst.b $2e(a0)
	beq.s loc_205ede
	addq.b #$2,$24(a1)
loc_205ede:
	move.l #$23f120,$4(a1)
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
	jmp (sub_203b9a).l
	tst.b $2e(a0)
	bne.s loc_205f6e
	tst.b $21(a0)
	beq.s loc_205f6e
	clr.b $20(a0)
	move.b #$1,$2e(a0)
	move.b $28(a0),($ff158e).l
	move.b #$1,($ff1522).l
	bsr.w sub_205db4
	move.w #$ae,d0
	jmp (sub_202356).l
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
	bne.s loc_205fc0
	addq.b #$2,$24(a0)
loc_205fc0:
	rts
	lea (dat_23f11a).l,a1
	bra.w sub_205d08

sub_205fcc:
	rts
	.incbin 24526, 116

sub_206042:
	tst.b $25(a0)
	bne.s loc_206072
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207856).l
	bne.s loc_206072
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206072:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206082(pc,d0.w),d0
	jmp dat_206082(pc,d0.w)
dat_206082:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_2060aa
	andi.b #$7f,$2(a0)
loc_2060aa:
	move.l #$23f088,$4(a0)
	bsr.s sub_206042
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_2060d8
	move.w #$100,$1c(a0)
loc_2060d8:
	lea (dat_23f074).l,a1
	bsr.w sub_205d08
	jmp (sub_203aee).l
	tst.b $25(a0)
	beq.s loc_2060f4
	jmp (sub_203b9a).l
loc_2060f4:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206116(pc,d0.w),d0
	jsr dat_206116(pc,d0.w)
	jmp (sub_203aee).l
dat_206116:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_206144
	andi.b #$7f,$2(a0)
loc_206144:
	move.l #$235ef4,$4(a0)
	tst.b $28(a0)
	bne.s loc_20616a
	bsr.w sub_2061d6
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_2061cc
loc_20616a:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206a88).l
	tst.w d1
	bpl.s loc_2061c8
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_2061b2
	bsr.w sub_2061d6
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2061fc
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_2061b2:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_2061cc
loc_2061c8:
	addq.w #$2,$c(a0)
loc_2061cc:
	lea (dat_235ed8).l,a1
	bra.w sub_205d08

sub_2061d6:
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

sub_2061fc:
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
	bra.s loc_2061cc
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_2061cc
	.incbin 25144, 86
	moveq #$0,d0
	move.b $24(a0),d0
loc_206294:
	move.w dat_2062a8(pc,d0.w),d0
	jsr dat_2062a8(pc,d0.w)
	jsr (sub_203aee).l
	jmp (loc_20788c).l
dat_2062a8:
	dc.b $00,$58,$00,$92,$00,$a2,$00,$ac

sub_2062b0:
	tst.w $12(a1)
	bpl.s loc_2062f2
	bsr.w sub_206366
	beq.s loc_2062f2
	move.b #$4,$24(a0)
	tst.b $28(a0)
	bne.s loc_2062f0
	jsr (sub_207856).l
	bne.s loc_2062f0
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$4,$c(a1)
	move.w #$a4,d0
	jmp (sub_202356).l
loc_2062f0:
	rts
loc_2062f2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20900a).l
	addq.b #$2,$24(a0)
	move.l #$23f038,$4(a0)
	move.b #$1,$18(a0)
	ori.b #$4,$1(a0)
	move.b #$2c,$19(a0)
	cmpi.b #$2,$28(a0)
	bne.s loc_20632c
	move.b #$18,$19(a0)
loc_20632c:
	move.b #$8,$16(a0)
	moveq #$c,d0
	jsr (sub_20cf34).l
	lea ($d000).w,a1
	bsr.w sub_2062b0
	lea ($d040).w,a1
	bra.w sub_2062b0
	.incbin 25418, 28

sub_206366:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	moveq #$0,d1
	move.b $19(a0),d1
	add.w d1,d0
	bmi.s loc_20639a
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20639a
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$0,d1
	move.b $16(a0),d1
	add.w d1,d0
	bmi.s loc_20639a
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20639a
	moveq #$1,d0
	rts
loc_20639a:
	moveq #$0,d0
	rts
	.incbin 25502, 478
loc_20657c:
	bclr.b #$7,($ff156b).l
	beq.s loc_2065ca
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2065cc(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2065a0:
	move.l (a1)+,(a2)+
	dbf d0,loc_2065a0
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2065ca:
	rts
dat_2065cc:
	.incbin 26060, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206602(pc,d0.w),d0
	jsr dat_206602(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_2065fc
	jsr (sub_203aee).l
loc_2065fc:
	jmp (loc_20788c).l
dat_206602:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23ee9c,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_2066e4
	cmpi.b #$6,$24(a1)
	bcc.w loc_2066e4
	bsr.w sub_206748
	beq.w loc_2066e4
	tst.b $28(a0)
	bne.s loc_206696
	move.w $10(a1),d0
	bpl.s loc_206656
	neg.w d0
loc_206656:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206668
	move.w #$d00,d1
loc_206668:
	cmp.w d1,d0
	bcc.s loc_20666e
	move.w d1,d0
loc_20666e:
	tst.w $10(a1)
	bpl.s loc_206676
	neg.w d0
loc_206676:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2066c6
	neg.w $14(a1)
	bra.s loc_2066c6
loc_206696:
	cmpi.b #$2,$28(a0)
	bcc.s loc_2066e6
	move.w $12(a1),d0
	bpl.s loc_2066a6
	neg.w d0
loc_2066a6:
	cmpi.w #$d00,d0
	bcc.s loc_2066b0
	move.w #$d00,d0
loc_2066b0:
	tst.w $12(a1)
	bpl.s loc_2066b8
	neg.w d0
loc_2066b8:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_2066c6:
	bset.b #$2,$22(a1)
	bne.s loc_2066e4
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_2066e4:
	rts
loc_2066e6:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206732
	cmpi.b #$2,$28(a0)
	bne.s loc_206702
	tst.w $12(a1)
	bpl.s loc_2066c6
	bra.s loc_206708
loc_206702:
	tst.w $12(a1)
	bmi.s loc_2066c6
loc_206708:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_20671a
	btst.l #$2,d1
	beq.s loc_2066c6
	neg.w d0
loc_20671a:
	cmpi.b #$2,$28(a0)
	beq.s loc_206728
	bset.b #$1,$22(a1)
loc_206728:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2066c6
loc_206732:
	tst.w $10(a1)
	bmi.s loc_2066c6
	btst.l #$0,d1
	beq.w loc_2066c6
	move.w #$f600,d0
	bra.w loc_2066b8

sub_206748:
	tst.b ($ff1906).l
	bne.s loc_20677c
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_20677c
	cmpi.w #$50,d0
	bcc.s loc_20677c
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_20677c
	cmpi.w #$50,d0
	bcc.s loc_20677c
	moveq #$1,d0
	rts
loc_20677c:
	moveq #$0,d0
	rts

sub_206780:
	rts
loc_206782:
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
	bne.s loc_20683c
	move.b ($ff1593).l,($ff195b).l
loc_20683c:
	tst.b ($ff1522).l
	bpl.s loc_206852
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206852:
	rts

sub_206854:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206782
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
	bne.s loc_20690e
	move.b ($ff1591).l,($ff195b).l
loc_20690e:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206930
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206930:
	tst.b ($ff1522).l
	bpl.s loc_206946
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206946:
	rts

sub_206948:
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
	bpl.s loc_206984
	move.b d1,d0
	bpl.s loc_20697e
	subq.b #$1,d0
loc_20697e:
	addi.b #$20,d0
	bra.s loc_20698e
loc_206984:
	move.b d1,d0
	bpl.s loc_20698a
	addq.b #$1,d0
loc_20698a:
	addi.b #$1f,d0
loc_20698e:
	andi.b #$c0,d0
	beq.w loc_206a5e
	cmpi.b #$80,d0
	beq.w loc_206bfa
	andi.b #$38,d1
	bne.s loc_2069a6
	addq.w #$8,d2
loc_2069a6:
	cmpi.b #$40,d0
	beq.w loc_206cd0
	bra.w loc_206b32

sub_2069b2:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206c58
	cmpi.b #$80,d0
	beq.w sub_206b82
	cmpi.b #$c0,d0
	beq.w loc_206ac2

sub_2069da:
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
loc_206a3e:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206a4c
	move.b ($f768).w,d3
	exg d0,d1
loc_206a4c:
	btst.l #$0,d3
	beq.s loc_206a54
	move.b d2,d3
loc_206a54:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206a5e:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011b0).l
	move.b #$0,d2
loc_206a7a:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a86
	move.b d2,d3
loc_206a86:
	rts

sub_206a88:
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
	beq.s loc_206ac0
	move.b #$0,d3
loc_206ac0:
	rts
loc_206ac2:
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
	bra.w loc_206a3e

sub_206b2a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b32:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201320).l
	move.b #$c0,d2
	bra.w loc_206a7a
	.incbin 27474, 48

sub_206b82:
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
	bra.w loc_206a3e

sub_206bf2:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206bfa:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2011b0).l
	move.b #$80,d2
	bra.w loc_206a7a
	.incbin 27678, 58
loc_206c58:
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
	bra.w loc_206a3e

sub_206cc8:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cd0:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201320).l
	move.b #$40,d2
	bra.w loc_206a7a
	.incbin 27892, 48

sub_206d24:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206d48
	addi.w #$c,d3
	moveq #$a,d5
loc_206d48:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206d56:
	tst.b $1(a1)
	bpl.s loc_206d62
	move.b $20(a1),d0
	bne.s loc_206d6e
loc_206d62:
	lea $40(a1),a1
	dbf d6,loc_206d56
	moveq #$0,d0
	rts
loc_206d6e:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2070d4).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206d96
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206d9c
	bra.w loc_206d62
loc_206d96:
	cmp.w d4,d0
	bhi.w loc_206d62
loc_206d9c:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206db4
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206dba
	bra.w loc_206d62
loc_206db4:
	cmp.w d5,d0
	bhi.w loc_206d62
loc_206dba:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206e2e
	cmpi.b #$c0,d1
	beq.w loc_20700e
	tst.b d1
	bmi.w loc_206ef8
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206df2
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206df0
	addq.b #$2,$24(a1)
loc_206df0:
	rts
loc_206df2:
	tst.w $12(a0)
	bpl.s loc_206e1c
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206e2c
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206e2c
	addq.b #$4,$25(a1)
	rts
loc_206e1c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e2c
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206e2c:
	rts

sub_206e2e:
	tst.b ($ff1521).l
	bne.s loc_206e48
	tst.b ($ff151f).l
	bne.s loc_206e48
	cmpi.b #$2,$1c(a0)
	bne.w loc_206ef8
loc_206e48:
	tst.b $21(a1)
	beq.s loc_206e72
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206e70
	bset.b #$7,$22(a1)
loc_206e70:
	rts
loc_206e72:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206e8a
	moveq #$6,d0
loc_206e8a:
	move.w d0,$3e(a1)
	move.w dat_206eea(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206ea4
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206ea4:
	bsr.w sub_20ae1c
	move.w #$96,d0
	jsr (sub_202356).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206eda
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206ee2
	neg.w $12(a0)
	rts
loc_206eda:
	addi.w #$100,$12(a0)
	rts
loc_206ee2:
	subi.w #$100,$12(a0)
	rts
dat_206eea:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
loc_206ef2:
	bset.b #$7,$22(a1)
loc_206ef8:
	tst.b ($ff1521).l
	bne.s loc_206f08
	tst.b ($ff151f).l
	beq.s loc_206f0c
loc_206f08:
	moveq #$ffffffff,d0
	rts
loc_206f0c:
	nop
	tst.w $30(a0)
	bne.s loc_206f08
	movea.l a1,a2

sub_206f16:
	tst.b ($ff151e).l
	bne.s loc_206f42
	tst.w ($ff1512).l
	beq.w loc_206fac
	jsr (sub_207856).l
	bne.s loc_206f42
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206f42:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206f58
	move.b #$0,($ff156f).l
loc_206f58:
	move.b #$4,$24(a0)
	bsr.w sub_20535e
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206f88
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206f88:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206f96
	neg.w $10(a0)
loc_206f96:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206fac:
	tst.w ($ff1588).l
	bne.w loc_206f42

sub_206fb6:
	tst.w ($ff1906).l
	bne.s loc_20700a
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20535e
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
loc_20700a:
	moveq #$ffffffff,d0
	rts
loc_20700e:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2070c0
	cmpi.b #$b,d1
	beq.w loc_20708a
	cmpi.b #$c,d1
	beq.w loc_20708e
	cmpi.b #$17,d1
	beq.w loc_2070c0
	cmpi.b #$21,d1
	beq.w loc_2070c0
	cmpi.b #$23,d1
	beq.w loc_2070c0
	cmpi.b #$2f,d1
	beq.w loc_2070c6
	cmpi.b #$3a,d1
	beq.w loc_2070c6
	cmpi.b #$3b,d1
	beq.w loc_2070c6
	cmpi.b #$1,($f7aa).w
	bne.s loc_207088
	cmpi.b #$3c,d1
	blt.s loc_207088
	cmpi.b #$3f,d1
	bgt.s loc_207088
	bsr.w sub_206e2e
	tst.b $20(a1)
	bne.s loc_207080
	addq.b #$3,$21(a1)
loc_207080:
	clr.b $20(a1)
	bra.w loc_2070c0
loc_207088:
	rts
loc_20708a:
	bra.w loc_206ef2
loc_20708e:
	sub.w d0,d5
	cmpi.w #$8,d5
	bcc.s loc_2070bc
	move.w $8(a1),d0
	subq.w #$4,d0
	btst.b #$0,$22(a1)
	beq.s loc_2070a8
	subi.w #$10,d0
loc_2070a8:
	sub.w d2,d0
	bcc.s loc_2070b4
	addi.w #$18,d0
	bcs.s loc_2070b8
	bra.s loc_2070bc
loc_2070b4:
	cmp.w d4,d0
	bhi.s loc_2070bc
loc_2070b8:
	bra.w loc_206ef8
loc_2070bc:
	bra.w sub_206e2e
loc_2070c0:
	addq.b #$1,$21(a1)
	rts
loc_2070c6:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2070d2
	addq.b #$1,$21(a1)
loc_2070d2:
	rts
dat_2070d4:
	.incbin 28884, 362
loc_20723e:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207254
	move.l #$4000,(dat_2073ce).l
	bra.s loc_207274
loc_207254:
	addi.l #$2000,(dat_2073ce).l
	cmpi.l #$80000,(dat_2073ce).l
	bls.s loc_207274
	move.l #$80000,(dat_2073ce).l
loc_207274:
	move.l (dat_2073ce).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207286
	sub.l d0,$c(a0)
loc_207286:
	btst.b #$1,($f604).w
	beq.s loc_207292
	add.l d0,$c(a0)
loc_207292:
	btst.b #$2,($f604).w
	beq.s loc_20729e
	sub.l d0,$8(a0)
loc_20729e:
	btst.b #$3,($f604).w
	beq.s loc_2072aa
	add.l d0,$8(a0)
loc_2072aa:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200fc8).l
	move.w (a1),($ff194e).l
	lea (dat_2073d2).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2072ec
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2072e6
	move.b #$0,d1
loc_2072e6:
	move.b d1,($ff1904).l
loc_2072ec:
	btst.b #$7,($f605).w
	beq.s loc_20730c
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207306
	add.b (a2),d1
loc_207306:
	move.b d1,($ff1904).l
loc_20730c:
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
	beq.s loc_207398
	bsr.w sub_207856
	bne.s loc_207398
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
loc_207398:
	btst.b #$4,($f605).w
	beq.s loc_2073c8
	move.b #$0,($ff1906).l
	move.l #$21f200,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2073c8:
	jmp (sub_203aee).l
dat_2073ce:
	dc.b $00,$00,$40,$00
dat_2073d2:
	.incbin 29650, 626

sub_207644:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207652:
	clr.l (a2)+
	dbf d0,loc_207652
	rts

sub_20765a:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207668(pc,d0.w),d0
	jmp dat_207668(pc,d0.w)
dat_207668:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207908).l,a0
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
	bcc.s loc_2076a6
	moveq #$0,d6
loc_2076a6:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2076ae:
	cmp.w (a0),d6
	bls.s loc_2076c0
	tst.b $4(a0)
	bpl.s loc_2076bc
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2076bc:
	addq.w #$8,a0
	bra.s loc_2076ae
loc_2076c0:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2076e0
loc_2076ce:
	cmp.w (a0),d6
	bls.s loc_2076e0
	tst.b $4(a0)
	bpl.s loc_2076dc
	addq.b #$1,$1(a2)
loc_2076dc:
	addq.w #$8,a0
	bra.s loc_2076ce
loc_2076e0:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2077ca
	bge.s loc_207770
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20774c
loc_20771a:
	cmp.w -$8(a0),d6
	bge.s loc_20774c
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207730
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207730:
	bsr.w sub_2077ee
	bne.s loc_20773a
	subq.w #$8,a0
	bra.s loc_20771a
loc_20773a:
	tst.b $4(a0)
	bpl.s loc_20774a
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20774a:
	addq.w #$8,a0
loc_20774c:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207758:
	cmp.w -$8(a0),d6
	bgt.s loc_20776a
	tst.b -$4(a0)
	bpl.s loc_207766
	subq.b #$1,(a2)
loc_207766:
	subq.w #$8,a0
	bra.s loc_207758
loc_20776a:
	move.l a0,($f770).w
	rts
loc_207770:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207784:
	cmp.w (a0),d6
	bls.s loc_2077a6
	tst.b $4(a0)
	bpl.s loc_207792
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207792:
	bsr.w sub_2077ee
	beq.s loc_207784
	tst.b $4(a0)
	bpl.s loc_2077a6
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077a6:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2077c6
loc_2077b4:
	cmp.w (a0),d6
	bls.s loc_2077c6
	tst.b $4(a0)
	bpl.s loc_2077c2
	addq.b #$1,$1(a2)
loc_2077c2:
	addq.w #$8,a0
	bra.s loc_2077b4
loc_2077c6:
	move.l a0,($f774).w
loc_2077ca:
	rts

sub_2077cc:
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

sub_2077ee:
	bsr.s sub_2077cc
	beq.s loc_207800
	tst.b $4(a0)
	bpl.s loc_207806
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207806
loc_207800:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207806:
	bsr.w sub_207856
	bne.s loc_207854
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
	bpl.s loc_207836
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207836:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207848
	nop
	nop
	nop
	nop
loc_207848:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207854:
	rts

sub_207856:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20785e:
	tst.b (a1)
	beq.s loc_20786a
	lea $40(a1),a1
	dbf d0,loc_20785e
loc_20786a:
	rts

sub_20786c:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_20788a
loc_20787e:
	tst.b (a1)
	beq.s loc_20788a
	lea $40(a1),a1
	dbf d0,loc_20787e
loc_20788a:
	rts
loc_20788c:
	move.w $8(a0),d0
loc_207890:
	tst.b $1(a0)
	bmi.s loc_2078fa
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2078fa
loc_2078ae:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2078f0
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2078e8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2078e0
	moveq #$0,d1
	bra.s loc_2078e8
loc_2078e0:
	cmpi.w #$3,d1
	bcs.s loc_2078e8
	moveq #$2,d1
loc_2078e8:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2078f0:
	jsr (sub_203b9a).l
	moveq #$1,d0
	rts
loc_2078fa:
	btst.b #$7,($ff152e).l
	bne.s loc_2078ae
	moveq #$0,d0
	rts
dat_207908:
	.incbin 30984, 4074
	moveq #$0,d0
	move.b ($ff152e).l,d0
	andi.b #$7f,d0
	cmpi.b #$2,d0
	bne.s loc_20890c
	moveq #$1,d0
	add.b ($ff156a).l,d0
loc_20890c:
	add.w d0,d0
	add.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_208924(pc,d0.w),$2(a0)
	ori.w #$4000,$2(a0)
	rts
dat_208924:
	.incbin 35108, 1438

sub_208ec2:
	btst.b #$3,$22(a0)
	beq.s loc_208f32
	btst.b #$3,$22(a1)
	beq.s loc_208f32
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208f32
	tst.b $2a(a1)
	beq.s loc_208ef4
	move.w #$ab,d0
	jsr (sub_202356).l
loc_208ef4:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208f20
	cmpi.b #$17,$1c(a1)
	beq.s loc_208f20
	bclr.b #$0,$2c(a1)
loc_208f20:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208f32
	bclr.b #$1,$22(a1)
loc_208f32:
	rts

sub_208f34:
	cmpi.b #$4,$24(a1)
	bne.s loc_208f46
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208f46:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208fa6
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208f68
	bclr.b #$3,$22(a0)
	bra.w sub_208ec2
loc_208f68:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208fa6
	tst.b ($ff195b).l
	beq.s loc_208f90
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208fa0
loc_208f90:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208fa0:
	move.b #$0,$1c(a1)
loc_208fa6:
	bset.b #$3,$22(a1)
	beq.s loc_208fc8
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_209000
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208fc8:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208ff4
	cmpi.b #$2,$24(a0)
	beq.s loc_208ffa
loc_208ff4:
	move.w $10(a1),$14(a1)
loc_208ffa:
	bclr.b #$1,$22(a1)
loc_209000:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_20900a:
	move.b #$1,$25(a0)

sub_209010:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2092c4
	btst.b #$6,$2c(a1)
	bne.w loc_2092c4
	cmpi.b #$6,$24(a1)
	bcc.w loc_2092c4
	tst.b $0(a1)
	beq.w loc_2092c4
	tst.b $1(a0)
	bpl.w loc_2092c4
	tst.b ($ff1906).l
	bne.w loc_2092c4
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2092c4
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2092c4
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20907e
	btst.b #$3,$22(a0)
	bne.s loc_209090
	bra.w loc_2092c4
loc_20907e:
	cmpi.b #$1,$25(a0)
	bne.s loc_209090
	tst.w $12(a1)
	beq.s loc_209090
	bmi.w loc_2092c4
loc_209090:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2092c4
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2092c4
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2090c6
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2090c6:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2090d4
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2090d4:
	cmp.w d4,d5
	bcs.w loc_209168
	cmpi.b #$1,$25(a0)
	beq.w loc_2092c4
	cmpi.b #$a,$0(a0)
	bne.s loc_2090f6
	btst.b #$1,$22(a1)
	bne.w loc_2092c4
loc_2090f6:
	cmpi.b #$4,d5
	bls.w loc_2092c4
	bsr.w sub_209314
	move.l d0,-(a7)
	bsr.w sub_208ec2
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_209120
	tst.w $10(a1)
	beq.s loc_209150
	bpl.s loc_209128
	bra.s loc_209150
loc_209120:
	tst.w $10(a1)
	beq.s loc_209150
	bpl.s loc_209150
loc_209128:
	bsr.w sub_2092d4
	btst.b #$1,$22(a1)
	bne.s loc_209146
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209146:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_209150:
	bsr.w sub_20938a
	bsr.w sub_2092d4
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209168:
	cmpi.b #$19,$0(a0)
	bne.s loc_20917a
	btst.b #$2,$22(a1)
	bne.w loc_2092c4
loc_20917a:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_209190
	bmi.w loc_209260
loc_209190:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_2091a2
	tst.w $12(a1)
	beq.s loc_2091a2
	bmi.w loc_2092c4
loc_2091a2:
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
	beq.s loc_2091ee
	bpl.s loc_2091ce
	neg.b d0
loc_2091ce:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206948).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2091ee
	tst.w $10(a0)
	bpl.s loc_2091ea
	neg.w d1
loc_2091ea:
	add.w d1,$8(a1)
loc_2091ee:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209258
	tst.w $12(a0)
	bmi.s loc_20922c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2069da).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20922c
	add.w d1,$c(a1)
	bra.w loc_2092c4
loc_20922c:
	tst.w $12(a0)
	bpl.s loc_209258
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206bf2).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209258
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fb6).l
	movem.l (a7)+,a0-a1
	bra.s loc_2092c4
loc_209258:
	bsr.w sub_208f34
	moveq #$1,d0
	rts
loc_209260:
	cmpi.b #$1,$25(a0)
	beq.s loc_2092c4
	cmpi.b #$9,$0(a0)
	beq.s loc_2092c4
	cmpi.b #$a,$0(a0)
	bne.s loc_20928a
	cmpi.b #$2,$25(a0)
	beq.s loc_2092aa
	btst.b #$1,$1(a0)
	bne.s loc_2092aa
	bra.s loc_2092c4
loc_20928a:
	btst.b #$1,$22(a1)
	bne.s loc_2092aa
	tst.w $12(a0)
	beq.s loc_2092aa
	bmi.s loc_2092aa
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fb6).l
	movem.l (a7)+,a0-a1
loc_2092aa:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20938a
	bsr.w sub_208ec2
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2092c4:
	bsr.w sub_20938a
	bsr.w sub_208ec2
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2092d4:
	tst.w $10(a0)
	beq.s loc_209312
	cmpi.b #$a,$0(a0)
	beq.s loc_209312
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2092ee
	neg.b d0
loc_2092ee:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206948).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209312
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fb6).l
	movem.l (a7)+,a0-a1
loc_209312:
	rts

sub_209314:
	cmpi.b #$a,$0(a0)
	bne.s loc_209324
	move.b #$0,$20(a1)
	rts
loc_209324:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209378
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209388
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209346
	tst.w $10(a2)
	beq.s loc_209388
loc_209346:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209358
	cmp.w $8(a2),d1
	bcs.s loc_209388
	bra.s loc_20935e
loc_209358:
	cmp.w $8(a2),d1
	bcc.s loc_209388
loc_20935e:
	cmpi.b #$15,$0(a0)
	beq.s loc_209388
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fb6).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209378:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209388:
	rts

sub_20938a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2093a4
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2093a4
	move.b #$0,$20(a1)
loc_2093a4:
	rts
	dc.b $36,$28,$00,$08,$38,$28,$00,$0c
	dc.b $4e,$f9,$00,$20,$90,$10
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2093e0(pc,d0.w),d0
	jsr dat_2093e0(pc,d0.w)
	tst.w ($ff190e).l
	bne.s loc_2093d4
	lea (dat_2095cc).l,a1
	bsr.w sub_205d08
loc_2093d4:
	jsr (sub_203aee).l
	jmp (loc_20788c).l
dat_2093e0:
	.incbin 37856, 492
dat_2095cc:
	.incbin 38348, 44
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209612(pc,d0.w),d0
	jsr dat_209612(pc,d0.w)
	jsr (sub_203aee).l
	jmp (loc_20788c).l
dat_209612:
	dc.b $00,$04,$00,$36
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$209662,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$0,$1a(a0)
	moveq #$b,d0
	jsr (sub_20cf34).l
	tst.b $1(a0)
	bpl.s loc_209660
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209010).l
loc_209660:
	rts
	.incbin 38498, 268
loc_20976e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20977c(pc,d0.w),d0
	jmp dat_20977c(pc,d0.w)
dat_20977c:
	.incbin 38780, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_20976e
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_2097d2
	tst.b $1(a0)
	bpl.s loc_2097da
loc_2097d2:
	move.w dat_20982c(pc,d0.w),d1
	jsr dat_20982c(pc,d1.w)
loc_2097da:
	bsr.w sub_203aee
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20980c
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20980c:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b9a
	rts
dat_20982c:
	.incbin 38956, 26
	addq.b #$2,$24(a0)
	move.l #$209bae,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20989c
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209bb4,$4(a0)
	bra.s loc_2098de
loc_20989c:
	btst.l #$3,d0
	beq.s loc_2098ca
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209bfe,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cf34).l
	move.l (a7)+,d0
	bra.s loc_2098de
loc_2098ca:
	btst.b #$1,$1(a0)
	beq.s loc_2098de
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_2098de:
	btst.l #$1,d0
	beq.s loc_2098ea
	bset.b #$5,$2(a0)
loc_2098ea:
	andi.w #$2,d0
	move.w dat_2098f6(pc,d0.w),$30(a0)
	rts
dat_2098f6:
	.incbin 39158, 118

sub_20996c:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209010).l
	tst.b $1(a0)
	bpl.s loc_20998e
	lea ($d000).w,a1
	bsr.s sub_20996c
	btst.b #$5,$22(a0)
	bne.s loc_209990
loc_20998e:
	rts
loc_209990:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_2099be
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_2099be:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_2099d8
	move.b #$0,$1c(a1)
loc_2099d8:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_202356).l
	.incbin 39410, 666
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209c9a(pc,d0.w),d1
	jmp dat_209c9a(pc,d1.w)
dat_209c9a:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209ca4:
	.incbin 40100, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209cfc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209cf4
	moveq #$0,d1
	bra.s loc_209cfc
loc_209cf4:
	cmpi.w #$3,d1
	bcs.s loc_209cfc
	moveq #$2,d1
loc_209cfc:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209d18
	moveq #$6,d1
loc_209d18:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209ca4).l,a1
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
	beq.s loc_209d68
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209d60
	moveq #$0,d0
	bra.s loc_209d68
loc_209d60:
	cmpi.w #$3,d0
	bcs.s loc_209d68
	moveq #$2,d0
loc_209d68:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209e36
	dbf d0,loc_209d68
	bclr.b #$7,(a2)
	bra.s loc_209dbe
loc_209d7a:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209da6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209d9e
	moveq #$0,d0
	bra.s loc_209da6
loc_209d9e:
	cmpi.w #$3,d0
	bcs.s loc_209da6
	moveq #$2,d0
loc_209da6:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209e36
	dbf d0,loc_209da6
	bclr.b #$7,(a2)
	bsr.w sub_20786c
	bne.w loc_209e42
loc_209dbe:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a108,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209e14
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209e14
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209e14:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209e36:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209d7a
loc_209e42:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209e68
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209e60
	moveq #$0,d0
	bra.s loc_209e68
loc_209e60:
	cmpi.w #$3,d0
	bcs.s loc_209e68
	moveq #$2,d0
loc_209e68:
	lea $1(a2),a3
loc_209e6c:
	btst.b #$0,-(a3)
	bne.w sub_203b9a
	dbf d0,loc_209e6c
	tst.b $1(a0)
	bmi.s loc_209e9c
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209f16
loc_209e9c:
	tst.w ($ff190e).l
	bne.s loc_209eac
	move.b ($ff1913).l,$1a(a0)
loc_209eac:
	bra.w sub_203aee
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209f1a
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
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a100).l,a1
	bsr.w sub_205d08
	bra.w sub_203aee
loc_209f16:
	bra.w sub_203b9a

sub_209f1a:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209f6a
	bset.b #$1,($ff150d).l
	beq.s loc_209f54
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209f6a
	bset.b #$2,($ff150d).l
	bne.s loc_209f6a
loc_209f54:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cc8).l
loc_209f6a:
	jmp (sub_202356).l
	.incbin 40816, 400
dat_20a100:
	.incbin 41216, 402
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a2c0(pc,d0.w),d0
	jsr dat_20a2c0(pc,d0.w)
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b9a
	rts
dat_20a2c0:
	dc.b $00,$0e,$00,$40,$00,$84,$00,$a6
	dc.b $00,$ca,$00,$f8,$01,$0c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20a408,$4(a0)
	moveq #$5,d0
	jsr (sub_20cf34).l
	move.b #$1,$18(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20a3d4
	tst.b ($ff152e).l
	beq.s loc_20a33a
	cmpi.b #$2,($ff152e).l
	bne.s loc_20a320
	btst.b #$3,$22(a0)
	bne.s loc_20a340
	bra.s loc_20a33a
loc_20a320:
	move.b #$0,$1a(a0)
	btst.b #$3,$22(a0)
	beq.s loc_20a33a
	move.b #$6,$24(a0)
	move.b #$1,$1c(a0)
loc_20a33a:
	jmp (sub_203aee).l
loc_20a340:
	addq.b #$2,$24(a0)
	bsr.w sub_20a3d4
	addq.w #$2,$c(a0)
	move.w ($f704).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcc.s loc_20a360
	jmp (sub_203b9a).l
loc_20a360:
	jmp (sub_203aee).l
	.incbin 41830, 110

sub_20a3d4:
	lea ($d000).w,a1
	bsr.w sub_20a3dc

sub_20a3dc:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20900a).l
	.incbin 41962, 106
loc_20a454:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a482(pc,d0.w),d0
	jsr dat_20a482(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a480
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a47a
	btst.b #$0,($ff1505).l
	bne.s loc_20a480
loc_20a47a:
	jmp (sub_203aee).l
loc_20a480:
	rts
dat_20a482:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20aa5c,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a4b6
	move.b #$13,$1a(a0)
loc_20a4b6:
	rts
loc_20a4b8:
	tst.b ($ff0f01).l
	beq.s loc_20a4c6
	jmp (sub_203b9a).l
loc_20a4c6:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a454
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4ea(pc,d0.w),d0
	jsr dat_20a4ea(pc,d0.w)
	jsr (sub_203aee).l
	jmp (loc_20788c).l
dat_20a4ea:
	.incbin 42218, 282

sub_20a604:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a63c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a634
	moveq #$0,d1
	bra.s loc_20a63c
loc_20a634:
	cmpi.w #$3,d1
	bcs.s loc_20a63c
	moveq #$2,d1
loc_20a63c:
	add.w d1,d0
	rts

sub_20a640:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a662
	tst.b ($ff1956).l
	beq.s loc_20a65a
	tst.b $29(a0)
	bne.s loc_20a662
	rts
loc_20a65a:
	tst.b $29(a0)
	beq.s loc_20a662
	rts
loc_20a662:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209010).l
	tst.b $28(a0)
	bne.s loc_20a684
	tst.b ($ff0f01).l
	beq.s loc_20a684
	jmp (loc_20788c).l
loc_20a684:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a4b8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a69c(pc,d0.w),d1
	jmp dat_20a69c(pc,d1.w)
dat_20a69c:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aa5c,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a6e6
	tst.b $29(a0)
	bne.s loc_20a6e6
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a6e6:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a604
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a712
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a712:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a76c
	move.b $25(a0),d0
	beq.s loc_20a74c
	bsr.w sub_203a36
	jsr (sub_206a88).l
	tst.w d1
	bpl.w loc_20a75a
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a75a
loc_20a74c:
	tst.b $1(a0)
	bpl.s loc_20a75a
	lea ($d000).w,a1
	bsr.w sub_20a640
loc_20a75a:
	tst.w ($ff190e).l
	bne.s loc_20a76c
	lea (dat_20a9d4).l,a1
	bsr.w sub_205d08
loc_20a76c:
	bsr.w sub_203aee
	jmp (loc_20788c).l
	.incbin 42870, 606
dat_20a9d4:
	.incbin 43476, 586
loc_20ac1e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac32(pc,d0.w),d0
	jsr dat_20ac32(pc,d0.w)
	jmp (sub_203aee).l
dat_20ac32:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20ac72,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20ac6c
	jmp (sub_203b9a).l
loc_20ac6c:
	subq.w #$2,$c(a0)
	rts
	.incbin 44146, 82
	tst.b $28(a0)
	bmi.w loc_20ac1e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20acda(pc,d0.w),d0
	jmp dat_20acda(pc,d0.w)
dat_20acda:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20ad74,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20ad0a
	move.b #$3,$1a(a0)
	bra.s loc_20ad2a
loc_20ad0a:
	tst.w ($ff1588).l
	beq.s loc_20ad18
	move.b #$2,$1a(a0)
loc_20ad18:
	tst.b $28(a0)
	beq.s loc_20ad2a
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20ad2a:
	tst.b $28(a0)
	bne.s loc_20ad6e
	tst.b $29(a0)
	beq.s loc_20ad5a
	tst.w ($ff1512).l
	beq.s loc_20ad46
	bclr.b #$5,$2(a0)
	bra.s loc_20ad6e
loc_20ad46:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20ad6e
	eori.b #$20,$2(a0)
	bra.s loc_20ad6e
loc_20ad5a:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20ad6e
	move.b #$2,$1a(a0)
loc_20ad6e:
	jmp (sub_203aee).l
	.incbin 44404, 168

sub_20ae1c:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ae38
	move.l d1,(a3)
loc_20ae38:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ae62
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cc8).l
loc_20ae62:
	rts
loc_20ae64:
	tst.w ($ff1588).l
	beq.s loc_20aeba
	bsr.w sub_20b0b6
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
	lea (dat_20b216).l,a2
	moveq #$2,d6
	bsr.w sub_20b26e
	bra.w loc_20af14
loc_20aeba:
	tst.b ($ff1511).l
	beq.s loc_20aede
	bpl.s loc_20aec8
	bsr.w sub_20b060
loc_20aec8:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b150
loc_20aede:
	tst.b ($ff150f).l
	beq.s loc_20af14
	bpl.s loc_20aeec
	bsr.w sub_20b04c
loc_20aeec:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20af10
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20af10:
	bsr.w sub_20b146
loc_20af14:
	tst.w ($ff1588).l
	bne.w loc_20afc0
	tst.b ($ff1510).l
	beq.w loc_20afc0
	tst.w ($f63a).w
	bne.w loc_20afc0
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b01e
	tst.b ($f7cc).w
	bne.s loc_20af6a
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20af6a
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20af6a
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20af6a
	move.b #$9,(a1)
loc_20af6a:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b25c
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b266
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20afbc
	move.w #$63,d1
loc_20afbc:
	bsr.w sub_20b266
loc_20afc0:
	tst.b ($ff150e).l
	beq.s loc_20afd2
	clr.b ($ff150e).l
	bsr.w sub_20b23c
loc_20afd2:
	tst.b ($f7d6).w
	beq.s loc_20b01c
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aff2
	move.l #$6d400001,d0
loc_20aff2:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b0d4
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b012
	move.l #$6e800001,d0
loc_20b012:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b0d4
loc_20b01c:
	rts
loc_20b01e:
	btst.b #$7,($ff152e).l
	bne.s loc_20b04a
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206fb6
	move.b #$1,($ff150c).l
loc_20b04a:
	rts

sub_20b04c:
	move.l #$73600002,($c00004).l
	lea dat_20b0b2(pc),a2
	move.w #$2,d2
	bra.s loc_20b07c

sub_20b060:
	lea ($c00000).l,a6
	bsr.w sub_20b23c
	move.l #$70600002,($c00004).l
	lea dat_20b0aa(pc),a2
	move.w #$6,d2
loc_20b07c:
	lea (dat_23589a).l,a1
loc_20b082:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b09e
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b092:
	move.l (a3)+,(a6)
	dbf d1,loc_20b092
loc_20b098:
	dbf d2,loc_20b082
	rts
loc_20b09e:
	move.l #$0,(a6)
	dbf d1,loc_20b09e
	bra.s loc_20b098
dat_20b0aa:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b0b2:
	dc.b $ff,$ff,$00,$00

sub_20b0b6:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b232
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b232

sub_20b0d4:
	lea (dat_20b20e).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_23589a).l,a1
loc_20b0e4:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b0e8:
	sub.l d3,d1
	bcs.s loc_20b0f0
	addq.w #$1,d2
	bra.s loc_20b0e8
loc_20b0f0:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b0fa
	move.w #$1,d4
loc_20b0fa:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b106
	tst.w d6
	bne.s loc_20b138
loc_20b106:
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
loc_20b12c:
	addi.l #$400000,d0
	dbf d6,loc_20b0e4
	rts
loc_20b138:
	moveq #$f,d5
loc_20b13a:
	move.l #$0,(a6)
	dbf d5,loc_20b13a
	bra.s loc_20b12c

sub_20b146:
	lea (dat_20b216).l,a2
	moveq #$2,d6
	bra.s loc_20b158

sub_20b150:
	lea (dat_20b20a).l,a2
	moveq #$5,d6
loc_20b158:
	moveq #$0,d4
	lea (dat_23589a).l,a1
loc_20b160:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b164:
	sub.l d3,d1
	bcs.s loc_20b16c
	addq.w #$1,d2
	bra.s loc_20b164
loc_20b16c:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b176
	move.w #$1,d4
loc_20b176:
	tst.w d4
	beq.s loc_20b1a4
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
loc_20b1a4:
	addi.l #$400000,d0
	dbf d6,loc_20b160
	rts
	.incbin 45488, 32
loc_20b1d0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b1d4:
	sub.l d3,d1
	bcs.s loc_20b1dc
	addq.w #$1,d2
	bra.s loc_20b1d4
loc_20b1dc:
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
	dbf d6,loc_20b1d0
	rts
dat_20b20a:
	dc.b $00,$01,$86,$a0
dat_20b20e:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b216:
	dc.b $00,$00,$00,$64
dat_20b21a:
	dc.b $00,$00,$00,$0a
dat_20b21e:
	dc.b $00,$00,$00,$01
dat_20b222:
	.incbin 45602, 16

sub_20b232:
	moveq #$3,d6
	lea (dat_20b222).l,a2
	bra.s sub_20b26e

sub_20b23c:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b252
	moveq #$9,d1
loc_20b252:
	lea (dat_20b21e).l,a2
	moveq #$0,d6
	bra.s sub_20b26e

sub_20b25c:
	lea (dat_20b21e).l,a2
	moveq #$0,d6
	bra.s sub_20b26e

sub_20b266:
	lea (dat_20b21a).l,a2
	moveq #$1,d6

sub_20b26e:
	moveq #$0,d4
	lea (dat_23589a).l,a1
loc_20b276:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b27a:
	sub.l d3,d1
	bcs.s loc_20b282
	addq.w #$1,d2
	bra.s loc_20b27a
loc_20b282:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b28c
	move.w #$1,d4
loc_20b28c:
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
	dbf d6,loc_20b276
	rts
	jsr (sub_20e81e).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b2e6(pc,d0.w),d0
	jsr dat_20b2e6(pc,d0.w)
	jsr (sub_203aee).l
	move.w $2e(a0),d0
	jmp (loc_207890).l
dat_20b2e6:
	dc.b $00,$06,$00,$60,$00,$7a
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20b3b8,$4(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$13,$16(a0)
	move.b #$29,$20(a0)
	move.w $8(a0),$2e(a0)
	moveq #$2,d0
	jsr (sub_20cf34).l
	tst.b $28(a0)
	bne.s loc_20b336
	move.l #$ffff0000,d0
	moveq #$0,d1
	bra.s loc_20b33e
loc_20b336:
	move.l #$ffff8000,d0
	moveq #$1,d1
loc_20b33e:
	move.l d0,$2a(a0)
	move.b d1,$1c(a0)
	move.l #$10000,d0
	add.l d0,$c(a0)
	jsr (sub_206a88).l
	tst.w d1
	bpl.s loc_20b35e
	addq.b #$2,$24(a0)
loc_20b35e:
	rts
loc_20b360:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2e(a0),d0
	bpl.s loc_20b374
	neg.w d0
loc_20b374:
	cmpi.w #$80,d0
	bge.s loc_20b39a
	jsr (sub_206a88).l
	cmpi.w #$fff9,d1
	blt.s loc_20b39a
	cmpi.w #$7,d1
	bgt.s loc_20b39a
	add.w d1,$c(a0)
	lea dat_20b3ac(pc),a1
	jmp (sub_205d08).l
loc_20b39a:
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b360
dat_20b3ac:
	.incbin 45996, 124
	jsr (sub_20e81e).l
	tst.b $24(a0)
	bne.w loc_20b4b8
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
	jsr (sub_20cf34).l
	tst.b $28(a0)
	bne.s loc_20b492
	move.l #$ffff8000,d0
	move.w #$fe00,d1
	moveq #$3,d2
	moveq #$0,d3
	lea dat_20b53c(pc),a1
	bra.s loc_20b4a4
loc_20b492:
	move.l #$ffffc000,d0
	move.w #$ff00,d1
	moveq #$4,d2
	moveq #$1,d3
	lea dat_20b55e(pc),a1
loc_20b4a4:
	move.l d0,$30(a0)
	move.w d1,$36(a0)
	move.w d2,$38(a0)
	move.b d3,$1c(a0)
	move.l a1,$4(a0)
loc_20b4b8:
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b4cc
	neg.w d0
loc_20b4cc:
	cmpi.w #$80,d0
	blt.s loc_20b4ee
	neg.l $30(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	clr.w $34(a0)
loc_20b4ee:
	move.w $36(a0),d0
	add.w d0,$34(a0)
	move.b $34(a0),d0
	jsr (sub_20085a).l
	swap d0
	move.w $38(a0),d1
	asr.l d1,d0
	add.l $2c(a0),d0
	move.l d0,$c(a0)
	lea dat_20b52a(pc),a1
	jsr (sub_205d08).l
	jsr (sub_203aee).l
	move.w $2a(a0),d0
	jmp (loc_207890).l
dat_20b52a:
	.incbin 46378, 18
dat_20b53c:
	.incbin 46396, 34
dat_20b55e:
	.incbin 46430, 40
	jsr (sub_20e81e).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b5aa(pc,d0.w),d0
	jsr dat_20b5aa(pc,d0.w)
	jsr (sub_203aee).l
	move.w $2a(a0),d0
	jmp (loc_207890).l
dat_20b5aa:
	dc.b $00,$0a,$00,$70,$00,$e8,$00,$f2
	dc.b $01,$20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$2b,$20(a0)
	move.w $8(a0),$2a(a0)
	moveq #$0,d0
	jsr (sub_20cf34).l
	tst.b $28(a0)
	bne.s loc_20b600
	lea dat_20b6f4(pc),a1
	lea dat_20b6d8(pc),a2
	move.l #$ffff0000,d0
	bra.s loc_20b60e
loc_20b600:
	lea dat_20b730(pc),a1
	lea dat_20b6e6(pc),a2
	move.l #$ffff8000,d0
loc_20b60e:
	move.l a1,$4(a0)
	move.l a2,$30(a0)
	move.l d0,$2c(a0)
	tst.w ($ff1906).l
	bne.s loc_20b62a
	lea ($d000).w,a1
	bsr.s sub_20b66c
	bcs.s loc_20b660
loc_20b62a:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b63e
	neg.w d0
loc_20b63e:
	cmpi.w #$80,d0
	blt.s loc_20b656
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b62a
loc_20b656:
	movea.l $30(a0),a1
	jmp (sub_205d08).l
loc_20b660:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	rts

sub_20b66c:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffd0,d0
	subi.w #$70,d0
	bcc.s loc_20b690
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffd0,d1
	subi.w #$60,d1
loc_20b690:
	rts
	movea.l $30(a0),a1
	jmp (sub_205d08).l
	addq.w #$6,$c(a0)
	jsr (sub_206a88).l
	cmpi.w #$fff8,d1
	bgt.s loc_20b6c8
	subi.w #$fff8,d1
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	tst.b $1(a0)
	bpl.s loc_20b6c8
	move.w #$a7,d0
	jsr (sub_202356).l
loc_20b6c8:
	rts
	tst.b $1(a0)
	bmi.s loc_20b6d6
	jmp (loc_2078ae).l
loc_20b6d6:
	rts
dat_20b6d8:
	dc.b $00,$04,$00,$08,$01,$00,$01,$ff
	dc.b $06,$02,$03,$04,$fc,$00
dat_20b6e6:
	dc.b $00,$04,$00,$08,$04,$00,$01,$ff
	dc.b $0e,$02,$03,$04,$fc,$00
dat_20b6f4:
	.incbin 46836, 60
dat_20b730:
	.incbin 46896, 2552
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c136(pc,d0.w),d0
	jmp dat_20c136(pc,d0.w)
dat_20c136:
	dc.b $00,$04,$00,$42
	addq.b #$2,$24(a0)
	move.l #$20c1fe,$4(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	moveq #$a,d0
	jsr sub_20cf34(pc)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	btst.b #$1,$1(a0)
	beq.s loc_20c178
	move.b #$12,$19(a0)
	move.b #$83,$20(a0)
loc_20c178:
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20c188
	neg.w d0
loc_20c188:
	cmpi.w #$20,d0
	bcc.s loc_20c1f2
	btst.b #$1,$1(a0)
	beq.s loc_20c1a2
	lea ($d000).w,a1
	jsr (sub_209010).l
	bra.s loc_20c1f2
loc_20c1a2:
	jsr (sub_209010).l
	beq.s loc_20c1f2
	btst.b #$3,$22(a0)
	beq.s loc_20c1f2
	tst.b ($ff1521).l
	bne.s loc_20c1f2
	tst.b ($ff151f).l
	bne.s loc_20c1f2
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20c1f0
	tst.w $30(a0)
	bne.s loc_20c1f0
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206f16).l
loc_20c1f0:
	movea.l (a7)+,a0
loc_20c1f2:
	jsr (sub_203aee).l
	jmp (loc_20788c).l
	.incbin 49662, 24
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c23a(pc,d0.w),d0
	jsr dat_20c23a(pc,d0.w)
	jsr (sub_203aee).l
	cmpi.b #$4,$24(a0)
	bge.s loc_20c238
	jmp (loc_20788c).l
loc_20c238:
	rts
dat_20c23a:
	dc.b $00,$08,$00,$7a,$00,$a8,$00,$d4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$44be,$2(a0)
	lea dat_20c52e(pc),a1
	lea dat_20c5a4(pc),a2
	move.b $28(a0),d0
	bpl.s loc_20c26e
	lea dat_20c5fa(pc),a1
	lea dat_20c792(pc),a2
loc_20c26e:
	move.l a1,$4(a0)
	btst.l #$4,d0
	beq.s loc_20c284
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20c284:
	andi.w #$f,d0
	move.b d0,$1a(a0)
	add.w d0,d0
	move.w $0(a2,d0.w),d0
	move.b $0(a2,d0.w),d1
	addq.b #$1,d1
	asl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	move.b $1(a2,d0.w),d1
	bpl.s loc_20c2aa
	neg.b d1
loc_20c2aa:
	addq.b #$1,d1
	asl.b #$3,d1
	addq.b #$2,d1
	move.b d1,$16(a0)
	lea ($d000).w,a1
	jsr (sub_20900a).l
	bne.s loc_20c2c2
	rts
loc_20c2c2:
	jsr (sub_208ec2).l
	move.w #$a3,d0
	jsr (sub_202356).l
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	bpl.w loc_20c33a
	bra.w loc_20c43e
	.incbin 49890, 88
loc_20c33a:
	move.b $28(a0),d0
	suba.l a4,a4
	btst.l #$4,d0
	beq.s loc_20c34a
	lea loc_20c33a(pc),a4
loc_20c34a:
	lea dat_20c5a4(pc),a6
	andi.w #$f,d0
	add.w d0,d0
	move.w $0(a6,d0.w),d0
	lea $0(a6,d0.w),a6
	moveq #$0,d0
	move.b (a6)+,d0
	movea.w d0,a5
	asl.w #$3,d0
	move.w #$fff0,d1
	cmpa.w #$0,a4
	bne.s loc_20c372
	neg.w d0
	neg.w d1
loc_20c372:
	add.w $8(a0),d0
	movea.w d0,a2
	movea.w d1,a3
	moveq #$0,d6
	move.b (a6)+,d6
	move.w d6,d4
	asl.w #$3,d4
	add.w $c(a0),d4
	move.w #$9,d2
	move.b $0(a0),$3f(a0)
loc_20c390:
	move.w a5,d5
	move.w a2,d3
	move.w d2,d1
loc_20c396:
	jsr (sub_207856).l
	bne.w loc_20c426
	move.b (a6)+,d0
	bmi.w loc_20c410
	move.b d0,$1a(a1)
	ori.b #$4,$1(a1)
	move.b #$3,$18(a1)
	move.w #$44be,$2(a1)
	move.l #$20c5bc,$4(a1)
	move.l #$20000,$2c(a1)
	move.b $3f(a0),$0(a1)
	move.b $24(a0),$24(a1)
	cmpa.w #$0,a4
	beq.s loc_20c3ea
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
loc_20c3ea:
	tst.w d6
	bne.s loc_20c404
	st $3e(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.b #$9,$16(a1)
loc_20c404:
	move.w d4,$c(a1)
	move.w d3,$8(a1)
	move.w d1,$2a(a1)
loc_20c410:
	add.w a3,d3
	addi.w #$c,d1
	dbf d5,loc_20c396
	addi.w #$fff0,d4
	addq.w #$5,d2
	dbf d6,loc_20c390
	bra.s loc_20c438
loc_20c426:
	lea ($d000).w,a1
	jsr (sub_20900a).l
	beq.s loc_20c438
	jsr (sub_208ec2).l
loc_20c438:
	jmp (sub_203b9a).l
loc_20c43e:
	move.b $28(a0),d2
	lea dat_20c792(pc),a6
	move.b d2,d0
	andi.w #$1f,d0
	add.w d0,d0
	move.w $0(a6,d0.w),d0
	lea $0(a6,d0.w),a6
	move.b (a6)+,d5
	move.b (a6)+,d1
	addq.b #$1,d1
	asl.b #$3,d1
	addq.b #$2,d1
	andi.w #$ff,d5
	move.w d5,d4
	lsl.w #$3,d4
	neg.w d4
	move.w #$10,d3
	moveq #$1,d6
	btst.l #$6,d2
	bne.w loc_20c47c
	lsl.b #$2,d2
	bra.s loc_20c48e
loc_20c47c:
	lea ($d000).w,a1
	move.w $10(a1),d0
	btst.l #$5,d2
	beq.s loc_20c48c
	neg.w d0
loc_20c48c:
	tst.w d0
loc_20c48e:
	bpl.s loc_20c49a
	lea $0(a6,d5.w),a6
	neg.w d4
	neg.w d3
	neg.w d6
loc_20c49a:
	add.w $8(a0),d4
	move.w #$9,d2
	move.b $0(a0),$3f(a0)
loc_20c4a8:
	jsr (sub_207856).l
	bne.w loc_20c516
	move.b #$3,$18(a1)
	move.w #$44be,$2(a1)
	ori.b #$4,$1(a1)
	move.l #$20c7ba,$4(a1)
	move.l #$20000,$2c(a1)
	move.b $3f(a0),$0(a1)
	move.b $24(a0),$24(a1)
	move.w $c(a0),$c(a1)
	st $3e(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.b d1,$16(a1)
	move.b (a6),$1a(a1)
	lea $0(a6,d6.w),a6
	move.w d4,$8(a1)
	add.w d3,d4
	move.w d2,$2a(a1)
	addi.w #$c,d2
	dbf d5,loc_20c4a8
	bra.s loc_20c528
loc_20c516:
	lea ($d000).w,a1
	jsr (sub_20900a).l
	beq.s loc_20c528
	jsr (sub_208ec2).l
loc_20c528:
	jmp (sub_203b9a).l
dat_20c52e:
	.incbin 50478, 118
dat_20c5a4:
	.incbin 50596, 86
dat_20c5fa:
	.incbin 50682, 408
dat_20c792:
	.incbin 51090, 1612
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cdf8(pc,d0.w),d0
	jsr dat_20cdf8(pc,d0.w)
	jsr (sub_203aee).l
	jmp (loc_20788c).l
dat_20cdf8:
	dc.b $00,$18,$00,$44,$00,$90,$43,$f8
	dc.b $d0,$00
loc_20ce02:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209010).l
	addq.b #$2,$24(a0)
	move.l #$20cea8,$4(a0)
	move.b #$1,$18(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$19(a0)
	move.b #$18,$16(a0)
	moveq #$c,d0
	jsr (sub_20cf34).l
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20ce4c
	neg.w d0
loc_20ce4c:
	cmpi.w #$20,d0
	bcc.s loc_20ce84
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcs.s loc_20ce84
	cmpi.w #$30,d0
	bcc.s loc_20ce84
	clr.w $3a(a0)
	move.b #$4,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20ce84
	move.w #$a4,d0
	jsr (sub_202356).l
	move.b #$1,$1a(a0)
loc_20ce84:
	bra.w loc_20ce02
	.incbin 52872, 60
loc_20cec4:
	lea dat_20cf16(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20ced0:
	cmp.w (a1)+,d0
	bcs.s loc_20ced8
	addq.b #$2,d1
	bra.s loc_20ced0
loc_20ced8:
	move.b d1,($ff1574).l
	move.w dat_20cf2a(pc,d1.w),d0
	jmp (sub_202520).l

sub_20cee8:
	lea dat_20cf16(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cef4:
	cmp.w (a1)+,d0
	bcs.s loc_20cefc
	addq.b #$2,d1
	bra.s loc_20cef4
loc_20cefc:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cf06
	rts
loc_20cf06:
	move.b d1,($ff1574).l
	move.w dat_20cf20(pc,d1.w),d0
	jmp (loc_202552).l
dat_20cf16:
	dc.b $06,$80,$0f,$80,$19,$80,$1f,$80
	dc.b $ff,$ff
dat_20cf20:
	dc.b $00,$08,$00,$09,$00,$0a,$00,$0b
	dc.b $00,$0c
dat_20cf2a:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06
	dc.b $00,$07

sub_20cf34:
	lea (dat_20cf56).l,a1
	add.w d0,d0
	move.w dat_20cf56(pc,d0.w),d4
	lea dat_20cf56(pc,d4.w),a2
	moveq #$0,d1
	move.b $29(a0),d1
	add.w d1,d1
	move.w $0(a2,d1.w),d5
	move.w d5,$2(a0)
	rts
dat_20cf56:
	.incbin 53078, 74
	jsr (sub_20e866).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20d0c2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cfc0(pc,d0.w),d0
	jmp dat_20cfc0(pc,d0.w)
dat_20cfc0:
	.incbin 53184, 258
loc_20d0c2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d0d0(pc,d0.w),d0
	jmp dat_20d0d0(pc,d0.w)
dat_20d0d0:
	.incbin 53456, 3066
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dcea(pc,d0.w),d0
	jsr dat_20dcea(pc,d0.w)
	jsr (sub_203aee).l
	move.w $2a(a0),d0
	bra.w loc_207890
dat_20dcea:
	dc.b $00,$04,$00,$fa
	ori.b #$4,$1(a0)
	move.l #$20e02e,$4(a0)
	move.w #$4424,$2(a0)
	move.b #$18,$19(a0)
	move.b #$14,$16(a0)
	move.w $8(a0),d3
	movea.l a0,a1
	moveq #$3,d6
	bclr.b #$0,$28(a0)
	beq.s loc_20dd20
	moveq #$1,d6
loc_20dd20:
	moveq #$0,d2
	bra.s loc_20dd2a
loc_20dd24:
	jsr (sub_207856).l
loc_20dd2a:
	addq.b #$2,$24(a1)
	move.b #$2c,$0(a1)
	move.w d3,$8(a1)
	move.w $c(a0),$c(a1)
	move.w d3,$2a(a1)
	move.l $4(a0),$4(a1)
	move.w $2(a0),$2(a1)
	move.b $19(a0),$19(a1)
	move.b $16(a0),$16(a1)
	ori.b #$4,$1(a1)
	move.w dat_20ddd6(pc,d2.w),d1
	add.w d1,$8(a1)
	move.w $8(a1),$2c(a1)
	addq.b #$2,d2
	dbf d6,loc_20dd24
	moveq #$2,d6
	moveq #$0,d2
loc_20dd78:
	jsr (sub_207856).l
	addq.b #$2,$24(a1)
	move.b #$2c,$0(a1)
	move.b #$1,$28(a1)
	move.b #$1,$1a(a1)
	move.b #$4,$18(a1)
	move.w d3,$8(a1)
	move.w d3,$2a(a1)
	move.w $c(a0),$c(a1)
	move.l $4(a0),$4(a1)
	move.w $2(a0),$2(a1)
	move.b #$c,$19(a1)
	move.b #$c,$16(a1)
	ori.b #$4,$1(a1)
	move.w dat_20ddde(pc,d2.w),d1
	add.w d1,$8(a1)
	addq.b #$2,d2
	dbf d6,loc_20dd78
	rts
dat_20ddd6:
	dc.b $00,$40,$00,$80,$ff,$c0,$ff,$80
dat_20ddde:
	dc.b $00,$00,$00,$60,$ff,$a0
	tst.b $28(a0)
	bne.s loc_20de34
	moveq #$0,d0
	btst.b #$1,$2c(a6)
	beq.s loc_20de2c
	moveq #$0,d3
	move.w $8(a6),d0
	move.w d0,d2
	andi.w #$ff,d0
	cmp.w $2a(a0),d2
	bcc.s loc_20de0e
	move.w d0,d1
	move.w #$ff,d0
	sub.w d1,d0
loc_20de0e:
	cmpi.w #$c0,d0
	bcs.s loc_20de22
	cmpi.w #$f0,d0
	bcc.s loc_20de20
	move.w #$bf,d0
	bra.s loc_20de22
loc_20de20:
	moveq #$0,d0
loc_20de22:
	lsr.w #$1,d0
	cmp.w $2a(a0),d2
	bcc.s loc_20de2c
	neg.w d0
loc_20de2c:
	add.w $2c(a0),d0
	move.w d0,$8(a0)
loc_20de34:
	rts
loc_20de36:
	move.w dat_20de42(pc,d0.w),d0
	jsr dat_20de42(pc,d0.w)
	bra.w loc_20788c
dat_20de42:
	.incbin 56898, 134
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	tst.b $29(a0)
	bne.w loc_20de36
	move.w dat_20def0(pc,d0.w),d0
	jsr dat_20def0(pc,d0.w)
	jsr (sub_203aee).l
	move.w $2a(a0),d0
	bra.w loc_207890
dat_20def0:
	dc.b $00,$04,$00,$46
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$21fdbc,$4(a0)
	move.w #$441,$2(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
	move.w $8(a0),$2a(a0)
	tst.b $28(a0)
	beq.s loc_20df36
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20df36:
	tst.b $2e(a0)
	beq.s loc_20df5c
	move.b #$1,$1c(a0)
	btst.b #$1,$2c(a6)
	bne.s loc_20df4e
	addq.b #$1,$1c(a0)
loc_20df4e:
	lea (dat_20e054).l,a1
	jsr (sub_205d08).l
	bra.s loc_20df6c
loc_20df5c:
	move.b #$0,$1a(a0)
	moveq #$0,d1
	btst.b #$1,$2c(a6)
	beq.s loc_20dfb8
loc_20df6c:
	move.w $8(a6),d0
	andi.w #$ff,d0
	tst.b $28(a0)
	beq.s loc_20df82
	move.w d0,d1
	move.w #$ff,d0
	sub.w d1,d0
loc_20df82:
	cmpi.w #$c0,d0
	bcs.s loc_20df96
	cmpi.w #$f0,d0
	bcc.s loc_20df94
	move.w #$bf,d0
	bra.s loc_20df96
loc_20df94:
	moveq #$0,d0
loc_20df96:
	ext.l d0
	move.w d0,d1
	tst.b $2e(a0)
	bne.s loc_20dfa8
	divu.w #$30,d0
	move.b d0,$1a(a0)
loc_20dfa8:
	lsr.w #$2,d1
	move.w d1,d2
	lsr.w #$1,d2
	add.w d2,d1
	tst.b $28(a0)
	beq.s loc_20dfb8
	neg.w d1
loc_20dfb8:
	add.w $2a(a0),d1
	move.w d1,$8(a0)
	tst.b $2e(a0)
	beq.s loc_20dfcc
	subq.b #$1,$2e(a0)
	bra.s loc_20dfd4
loc_20dfcc:
	btst.b #$1,$22(a6)
	bne.s loc_20e02c
loc_20dfd4:
	move.b $19(a0),d1
	ext.w d1
	move.w $8(a6),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20e02c
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20e02c
	move.b $16(a0),d1
	ext.w d1
	move.w $c(a6),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_20e02c
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20e02c
	cmpi.b #$2b,$1c(a6)
	beq.s loc_20e02c
	tst.b $2e(a0)
	bne.s loc_20e018
	move.b #$3c,$2e(a0)
loc_20e018:
	tst.w $12(a6)
	bpl.s loc_20e026
	move.w #$f400,$12(a6)
	rts
loc_20e026:
	move.w #$c00,$12(a6)
loc_20e02c:
	rts
	.incbin 57390, 38
dat_20e054:
	.incbin 57428, 1994

sub_20e81e:
	tst.b ($ff156a).l
	beq.s loc_20e864
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e836
	tst.b $28(a0)
	beq.s loc_20e864
loc_20e836:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203b9a).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e862
	move.w #$9e,d0
	jsr (sub_202356).l
loc_20e862:
	addq.l #$4,a7
loc_20e864:
	rts

sub_20e866:
	tst.b $28(a0)
	bmi.s loc_20e896
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e886
	tst.b ($ff156d).l
	bne.s loc_20e896
	addq.l #$4,a7
	jmp (loc_20788c).l
loc_20e886:
	tst.b ($ff156a).l
	bne.s loc_20e896
	addq.l #$4,a7
	jmp (sub_203b9a).l
loc_20e896:
	rts
	.incbin 59544, 1254
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcc.s loc_20ed8a
	neg.w d0
loc_20ed8a:
	cmpi.w #$7c,d0
	rts
	.incbin 60816, 756
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f092(pc,d0.w),d0
	jmp dat_20f092(pc,d0.w)
dat_20f092:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20f790,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20f750).l,a2
loc_20f0e0:
	jsr (sub_207856).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20f790,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20f132
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20f132:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20f0e0
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f15a
	bge.s loc_20f150
	neg.w d0
loc_20f150:
	add.w d0,$a(a0)
	jmp (sub_203aee).l
loc_20f15a:
	addq.b #$4,$24(a0)
	jmp (sub_203aee).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f17e
	bge.s loc_20f174
	neg.w d0
loc_20f174:
	add.w d0,$8(a0)
	jmp (sub_203aee).l
loc_20f17e:
	addq.b #$4,$24(a0)
	jmp (sub_203aee).l
	tst.b $1e(a0)
	beq.s loc_20f198
	subq.b #$1,$1e(a0)
	jmp (sub_203aee).l
loc_20f198:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f1b2
	bge.s loc_20f1a8
	neg.w d0
loc_20f1a8:
	add.w d0,$a(a0)
	jmp (sub_203aee).l
loc_20f1b2:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202520).l
	tst.b $1e(a0)
	beq.s loc_20f1d4
	subq.b #$1,$1e(a0)
	jmp (sub_203aee).l
loc_20f1d4:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f1ee
	bge.s loc_20f1e4
	neg.w d0
loc_20f1e4:
	add.w d0,$8(a0)
	jmp (sub_203aee).l
loc_20f1ee:
	jmp (sub_203b9a).l
	tst.l ($f680).w
	bne.s loc_20f208
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b9a).l
loc_20f208:
	rts
	.incbin 61962, 1350
dat_20f750:
	.incbin 63312, 1134

sub_20fbbe:
	jmp (loc_20657c).l
dat_20fbc4:
	.incbin 64452, 16
dat_20fbd4:
	.incbin 64468, 534
	jmp (loc_206294).l
	.incbin 65008, 66064
dat_220000:
	.incbin 131072, 69472
dat_230f60:
	.incbin 200544, 18362
dat_23571a:
	.incbin 218906, 384
dat_23589a:
	.incbin 219290, 1598
dat_235ed8:
	.incbin 220888, 9952
dat_2385b8:
	.incbin 230840, 256
dat_2386b8:
	.incbin 231096, 4096
dat_2396b8:
	.incbin 235192, 4996
dat_23aa3c:
	.incbin 240188, 17976
dat_23f074:
	.incbin 258164, 166
dat_23f11a:
	.incbin 258330, 3814
