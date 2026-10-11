; R82A__.MMD
; disassembled from the disc; code only, data comes from data/R82A__.MMD at build time
	.file "R82A__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$21,$02
	jmp (loc_201c78).l
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
	bsr.w sub_2021ae
	bsr.w sub_202156
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2014f2

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200256).l,a1
	lea (dat_20025e).l,a2
	bsr.w sub_200218
	lea (dat_200264).l,a1
	lea (dat_20026c).l,a2
	bsr.w sub_200218
	lea (dat_200272).l,a1
	lea (dat_20027a).l,a2
	bsr.s sub_200218
	cmpi.b #$1,($ff1507).l
	beq.s loc_2001f0
	lea (dat_200280).l,a1
	lea (dat_20029a).l,a2
	bsr.s sub_200218
	lea (dat_20029e).l,a1
	lea (dat_2002b8).l,a2
	bsr.s sub_200218
	lea (dat_2002bc).l,a1
	lea (dat_2002d6).l,a2
	bra.w sub_200218
loc_2001f0:
	lea (dat_2002da).l,a1
	lea (dat_2002ee).l,a2
	bsr.s sub_200218
	lea (dat_2002f8).l,a1
	lea (dat_20030c).l,a2
	bsr.s sub_200218
	lea (dat_200316).l,a1
	lea (dat_20031e).l,a2

sub_200218:
	subq.b #$1,(a5)
	bpl.s loc_20024c
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
	bcs.s loc_200238
	moveq #$0,d0
loc_200238:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_20024c:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200256:
	dc.b $26,$03,$04,$00,$04,$01,$04,$02
dat_20025e:
	dc.b $04,$04,$08,$08,$0e,$0e
dat_200264:
	dc.b $27,$03,$04,$00,$04,$01,$04,$02
dat_20026c:
	dc.b $0e,$0e,$04,$04,$08,$08
dat_200272:
	dc.b $28,$03,$04,$00,$04,$01,$04,$02
dat_20027a:
	dc.b $08,$08,$0e,$0e,$04,$04
dat_200280:
	.incbin 640, 26
dat_20029a:
	dc.b $0e,$60,$00,$00
dat_20029e:
	.incbin 670, 26
dat_2002b8:
	dc.b $00,$00,$0e,$60
dat_2002bc:
	.incbin 700, 26
dat_2002d6:
	dc.b $00,$00,$0e,$60
dat_2002da:
	.incbin 730, 20
dat_2002ee:
	dc.b $00,$e0,$00,$a0,$00,$60,$00,$20
	dc.b $00,$00
dat_2002f8:
	.incbin 760, 20
dat_20030c:
	dc.b $00,$ae,$00,$6e,$00,$0e,$00,$06
	dc.b $00,$00
dat_200316:
	dc.b $33,$03,$05,$00,$05,$01,$05,$02
dat_20031e:
	dc.b $00,$ee,$00,$0e,$00,$00

sub_200324:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200336:
	move.w d1,(a0)+
	dbf d0,loc_200336
	move.w #$15,d4
loc_200340:
	move.b #$12,($f62a).w
	bsr.w sub_200836
	bsr.s sub_200356
	bsr.w sub_202574
	dbf d4,loc_200340
	rts

sub_200356:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20036c:
	bsr.s sub_20039a
	dbf d0,loc_20036c
	cmpi.b #$1,($ff1506).l
	bne.s loc_200398
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200392:
	bsr.s sub_20039a
	dbf d0,loc_200392
loc_200398:
	rts

sub_20039a:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003c2
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2003b0
	move.w d1,(a0)+
	rts
loc_2003b0:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2003be
	move.w d1,(a0)+
	rts
loc_2003be:
	addq.w #$2,(a0)+
	rts
loc_2003c2:
	addq.w #$2,a0
	rts

sub_2003c6:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2003d0:
	move.b #$12,($f62a).w
	bsr.w sub_200836
	bsr.s sub_2003e6
	bsr.w sub_202574
	dbf d4,loc_2003d0
	rts

sub_2003e6:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003f6:
	bsr.s sub_200414
	dbf d0,loc_2003f6
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20040c:
	bsr.s sub_200414
	dbf d0,loc_20040c
	rts

sub_200414:
	move.w (a0),d2
	beq.s loc_200440
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200424
	subq.w #$2,(a0)+
	rts
loc_200424:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200432
	subi.w #$20,(a0)+
	rts
loc_200432:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200440
	subi.w #$200,(a0)+
	rts
loc_200440:
	addq.w #$2,a0
	rts

sub_200444:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_20045e:
	move.w d1,(a0)+
	dbf d0,loc_20045e
	move.w #$15,d4
loc_200468:
	move.b #$12,($f62a).w
	bsr.w sub_200836
	bsr.s sub_20047e
	bsr.w sub_202574
	dbf d4,loc_200468
	rts

sub_20047e:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200494:
	bsr.s sub_2004c2
	dbf d0,loc_200494
	cmpi.b #$1,($ff1506).l
	bne.s loc_2004c0
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2004ba:
	bsr.s sub_2004c2
	dbf d0,loc_2004ba
loc_2004c0:
	rts

sub_2004c2:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2004ee
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2004da
	cmp.w d2,d1
	bcs.s loc_2004da
	move.w d1,(a0)+
	rts
loc_2004da:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2004ea
	cmp.w d2,d1
	bcs.s loc_2004ea
	move.w d1,(a0)+
	rts
loc_2004ea:
	subq.w #$2,(a0)+
	rts
loc_2004ee:
	addq.w #$2,a0
	rts

sub_2004f2:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2004fc:
	move.b #$12,($f62a).w
	bsr.w sub_200836
	bsr.s sub_200512
	bsr.w sub_202574
	dbf d4,loc_2004fc
	rts

sub_200512:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200522:
	bsr.s sub_200540
	dbf d0,loc_200522
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200538:
	bsr.s sub_200540
	dbf d0,loc_200538
	rts

sub_200540:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_20057c
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200558
	addq.w #$2,(a0)+
	rts
loc_200558:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_20056a
	addi.w #$20,(a0)+
	rts
loc_20056a:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_20057c
	addi.w #$200,(a0)+
	rts
loc_20057c:
	addq.w #$2,a0
	rts

sub_200580:
	lea (dat_2005ec).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200594:
	move.l (a2)+,(a3)+
	dbf d7,loc_200594
	rts

sub_20059c:
	lea (dat_2005ec).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2005ac:
	move.l (a2)+,(a3)+
	dbf d7,loc_2005ac
	rts
	.incbin 1460, 46
	move.w (a1)+,d7
loc_2005e4:
	move.l (a2)+,(a3)+
	dbf d7,loc_2005e4
	rts
dat_2005ec:
	.incbin 1516, 586

sub_200836:
	move.w #$2300,sr
loc_20083a:
	tst.b ($f62a).w
	bne.s loc_20083a
	rts

sub_200842:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_20085a(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_20085a(pc,d0.w),d0
	rts
dat_20085a:
	.incbin 2138, 640

sub_200ada:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200b36
	move.w d2,d4
	tst.w d3
	bpl.w loc_200af4
	neg.w d3
loc_200af4:
	tst.w d4
	bpl.w loc_200afc
	neg.w d4
loc_200afc:
	cmp.w d3,d4
	bcc.w loc_200b0e
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200b40(pc,d4.w),d0
	bra.s loc_200b18
loc_200b0e:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200b40(pc,d3.w),d0
loc_200b18:
	tst.w d1
	bpl.w loc_200b24
	neg.w d0
	addi.w #$80,d0
loc_200b24:
	tst.w d2
	bpl.w loc_200b30
	neg.w d0
	addi.w #$100,d0
loc_200b30:
	movem.l (a7)+,d3-d4
	rts
loc_200b36:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200b40:
	.incbin 2880, 258

sub_200c42:
	btst.b #$3,$22(a0)
	beq.s loc_200c56
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200c56:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c78
	move.b $26(a0),d0
	bpl.s loc_200c72
	subq.b #$1,d0
loc_200c72:
	addi.b #$20,d0
	bra.s loc_200c84
loc_200c78:
	move.b $26(a0),d0
	bpl.s loc_200c80
	addq.b #$1,d0
loc_200c80:
	addi.b #$1f,d0
loc_200c84:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200f0e
	cmpi.b #$80,d0
	beq.w loc_200e6c
	cmpi.b #$c0,d0
	beq.w loc_200dd0
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
	bsr.w sub_201198
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
	bsr.w sub_201198
	move.w (a7)+,d0
	bsr.w sub_200da4
	tst.w d1
	beq.s loc_200d12
	bpl.s loc_200d14
	cmpi.w #$fff2,d1
	blt.s loc_200d3a
	add.w d1,$c(a0)
loc_200d12:
	rts
loc_200d14:
	cmpi.w #$e,d1
	bgt.s loc_200d20
loc_200d1a:
	add.w d1,$c(a0)
	rts
loc_200d20:
	tst.b $38(a0)
	bne.s loc_200d1a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d3a:
	rts
	.incbin 3388, 34
loc_200d5e:
	rts
	.incbin 3424, 68

sub_200da4:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200db2
	move.b ($f768).w,d2
	move.w d0,d1
loc_200db2:
	btst.l #$0,d2
	bne.s loc_200dbe
	move.b d2,$26(a0)
	rts
loc_200dbe:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200dd0:
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
	bsr.w sub_201308
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
	bsr.w sub_201308
	move.w (a7)+,d0
	bsr.w sub_200da4
	tst.w d1
	beq.s loc_200e44
	bpl.s loc_200e46
	cmpi.w #$fff2,d1
	blt.w loc_200d5e
	add.w d1,$8(a0)
loc_200e44:
	rts
loc_200e46:
	cmpi.w #$e,d1
	bgt.s loc_200e52
loc_200e4c:
	add.w d1,$8(a0)
	rts
loc_200e52:
	tst.b $38(a0)
	bne.s loc_200e4c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e6c:
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
	bsr.w sub_201198
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
	bsr.w sub_201198
	move.w (a7)+,d0
	bsr.w sub_200da4
	tst.w d1
	beq.s loc_200ee6
	bpl.s loc_200ee8
	cmpi.w #$fff2,d1
	blt.w loc_200d3a
	sub.w d1,$c(a0)
loc_200ee6:
	rts
loc_200ee8:
	cmpi.w #$e,d1
	bgt.s loc_200ef4
loc_200eee:
	sub.w d1,$c(a0)
	rts
loc_200ef4:
	tst.b $38(a0)
	bne.s loc_200eee
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200f0e:
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
	bsr.w sub_201308
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
	bsr.w sub_201308
	move.w (a7)+,d0
	bsr.w sub_200da4
	tst.w d1
	beq.s loc_200f88
	bpl.s loc_200f8a
	cmpi.w #$fff2,d1
	blt.w loc_200d5e
	sub.w d1,$8(a0)
loc_200f88:
	rts
loc_200f8a:
	cmpi.w #$e,d1
	bgt.s loc_200f96
loc_200f90:
	sub.w d1,$8(a0)
	rts
loc_200f96:
	tst.b $38(a0)
	bne.s loc_200f90
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200fb0:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200fc6
	andi.w #$380,d0
loc_200fc6:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_201026
	bmi.s loc_20102a
	cmpi.b #$5,($ff1506).l
	beq.s loc_200ff6
	cmpi.b #$6,($ff1506).l
	bne.s loc_200ffc
loc_200ff6:
	andi.w #$7fff,$2(a0)
loc_200ffc:
	cmpi.b #$4,($ff1506).l
	bne.s loc_20100c
	bclr.b #$6,$1(a0)
loc_20100c:
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
loc_201026:
	movea.l d1,a1
	rts
loc_20102a:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_201092
	btst.b #$6,$1(a0)
	bne.s loc_201058
	cmpi.b #$14,d1
	bne.w loc_20117c
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_20117c
loc_201058:
	cmpi.b #$15,d1
	bne.s loc_201066
	move.w #$60,d1
	bra.w loc_20117c
loc_201066:
	cmpi.b #$1e,d1
	bne.s loc_201074
	move.w #$61,d1
	bra.w loc_20117c
loc_201074:
	cmpi.b #$1f,d1
	bne.s loc_201082
	move.w #$62,d1
	bra.w loc_20117c
loc_201082:
	cmpi.b #$32,d1
	bne.w loc_20117c
	move.w #$63,d1
	bra.w loc_20117c
loc_201092:
	cmpi.b #$5,($ff1506).l
	bne.w loc_2010f8
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_2010e2
	cmpi.b #$6,d1
	beq.s loc_2010e2
	tst.b ($ff1956).l
	beq.w loc_20117c
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_2010f2
	cmpi.b #$3c,d1
	beq.s loc_2010f2
	cmpi.b #$37,d1
	beq.s loc_2010f2
	cmpi.b #$2f,d1
	beq.s loc_2010f2
	cmpi.b #$16,d1
	beq.s loc_2010f2
	bra.w loc_20117c
loc_2010e2:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_20117c
loc_2010f2:
	addq.b #$1,d1
	bra.w loc_20117c
loc_2010f8:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201168
	cmpi.b #$3,$0(a0)
	bcc.w loc_20117c
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20117c
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_20112c
	move.w #$6a,d1
	bra.s loc_20117c
loc_20112c:
	cmpi.b #$48,d1
	bne.s loc_201138
	move.w #$6b,d1
	bra.s loc_20117c
loc_201138:
	cmpi.b #$4a,d1
	bne.s loc_201144
	move.w #$6c,d1
	bra.s loc_20117c
loc_201144:
	cmpi.b #$10,d1
	bne.s loc_201150
	move.w #$6d,d1
	bra.s loc_20117c
loc_201150:
	cmpi.b #$63,d1
	bne.s loc_20115c
	move.w #$6e,d1
	bra.s loc_20117c
loc_20115c:
	cmpi.b #$43,d1
	bne.s loc_20117c
	move.w #$6f,d1
	bra.s loc_20117c
loc_201168:
	btst.b #$6,$1(a0)
	beq.s loc_20117c
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_20117c
	move.w #$51,d1
loc_20117c:
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

sub_201198:
	bsr.w sub_200fb0
	cmpi.l #$210000,d1
	beq.s loc_2011b2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011b2
	btst.l d5,d4
	bne.s loc_2011c0
loc_2011b2:
	add.w a3,d2
	bsr.w sub_201258
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2011c0:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011b2
	lea (dat_23398c).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011e6
	not.w d1
	neg.b (a4)
loc_2011e6:
	btst.l #$c,d4
	beq.s loc_2011f6
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011f6:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_233a8c).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201212
	neg.w d0
loc_201212:
	tst.w d0
	beq.s loc_2011b2
	bmi.s loc_20122e
	cmpi.b #$10,d0
	beq.s loc_20124a
loc_20121e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20122e:
	cmpa.w #$10,a3
	bne.s loc_20123e
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20121e
loc_20123e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011b2
loc_20124a:
	sub.w a3,d2
	bsr.w sub_201258
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201258:
	bsr.w sub_200fb0
	cmpi.l #$210000,d1
	beq.s loc_201272
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201272
	btst.l d5,d4
	bne.s loc_201280
loc_201272:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201280:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201272
	lea (dat_23398c).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2012a6
	not.w d1
	neg.b (a4)
loc_2012a6:
	btst.l #$c,d4
	beq.s loc_2012b6
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012b6:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_233a8c).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2012d2
	neg.w d0
loc_2012d2:
	tst.w d0
	beq.s loc_201272
	bmi.s loc_2012e8
loc_2012d8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012e8:
	cmpa.w #$10,a3
	bne.s loc_2012f8
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2012d8
loc_2012f8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201272
	not.w d1
	rts

sub_201308:
	bsr.w sub_200fb0
	cmpi.l #$210000,d1
	beq.s loc_201322
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201322
	btst.l d5,d4
	bne.s loc_201330
loc_201322:
	add.w a3,d3
	bsr.w sub_2013b8
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201330:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201322
	lea (dat_23398c).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20135e
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20135e:
	btst.l #$b,d4
	beq.s loc_201366
	neg.b (a4)
loc_201366:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_234a8c).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201382
	neg.w d0
loc_201382:
	tst.w d0
	beq.s loc_201322
	bmi.s loc_20139e
	cmpi.b #$10,d0
	beq.s loc_2013aa
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20139e:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201322
loc_2013aa:
	sub.w a3,d3
	bsr.w sub_2013b8
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2013b8:
	bsr.w sub_200fb0
	cmpi.l #$210000,d1
	beq.s loc_2013d2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2013d2
	btst.l d5,d4
	bne.s loc_2013e0
loc_2013d2:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2013e0:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2013d2
	lea (dat_23398c).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20140e
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20140e:
	btst.l #$b,d4
	beq.s loc_201416
	neg.b (a4)
loc_201416:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_234a8c).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201432
	neg.w d0
loc_201432:
	tst.w d0
	beq.s loc_2013d2
	bmi.s loc_201448
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201448:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2013d2
	not.w d1
	rts

sub_201458:
	rts
	.incbin 5210, 152
loc_2014f2:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201512
	tst.b ($ff0f01).l
	bne.s loc_201512
	move.b #$1,($ff156a).l
loc_201512:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201578
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2070e6
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201578
	move.b #$1,($ff1508).l
loc_201578:
	bset.b #$7,($f600).w
	bsr.w sub_202566
	tst.b ($ff156e).l
	bne.s loc_20159e
	btst.b #$7,($ff152e).l
	beq.s loc_2015d4
	bset.b #$0,($ff151d).l
	beq.s loc_2015aa
loc_20159e:
	bsr.w sub_2004f2
	bclr.b #$0,($ff151d).l
loc_2015aa:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201644
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2015d2
	bclr.b #$7,($ff152e).l
loc_2015d2:
	rts
loc_2015d4:
	bset.b #$0,($ff151d).l
	beq.s loc_2015e2
	bsr.w sub_2003c6
loc_2015e2:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2015fe
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201626
loc_2015fe:
	tst.b ($ff1508).l
	bne.s loc_201644
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201626:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20162e:
	move.l #$0,(a1)+
	dbf d6,loc_20162e
	move.b #$c,($f62a).w
	bsr.w sub_200836
	rts
loc_201644:
	cmpi.w #$800,($f78e).w
	bne.s loc_201662
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201662:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201678
	btst.b #$7,($ff152e).l
	beq.s loc_20167e
loc_201678:
	move.l #$eee0eee,d0
loc_20167e:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201686:
	move.l d0,(a1)+
	dbf d6,loc_201686
loc_20168c:
	move.b #$c,($f62a).w
	bsr.w sub_200836
	bsr.w sub_202574
	bne.s loc_20168c
	tst.l ($f680).w
	bsr.w sub_201b32
	moveq #$0,d0
	lea (dat_20fa86).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2016b6
	bsr.w sub_20267a
loc_2016b6:
	moveq #$1,d0
	bsr.w sub_20267a
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2016d2:
	move.l d0,(a1)+
	dbf d1,loc_2016d2
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2016e4:
	move.l d0,(a1)+
	dbf d1,loc_2016e4
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2016f4:
	move.l d0,(a1)+
	dbf d1,loc_2016f4
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201706:
	move.l d0,(a1)+
	dbf d1,loc_201706
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201716:
	move.l d0,(a1)+
	dbf d1,loc_201716
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201726:
	move.l d0,(a1)+
	dbf d1,loc_201726
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202250
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
	bsr.w sub_20059c
	moveq #$3,d0
	bsr.w sub_200580
	bsr.w sub_2028dc
	bsr.w sub_202a0a
	bset.b #$2,($f754).w
	bsr.w sub_203440
	bsr.w sub_203356
	jsr (sub_201458).l
	bsr.w sub_201a6c
loc_2017a6:
	move.b #$c,($f62a).w
	bsr.w sub_200836
	bsr.w sub_202574
	bne.s loc_2017a6
	tst.l ($f680).w
	bne.s loc_2017a6
	bsr.w sub_2019f8
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b92
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_20180a
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_20180a:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20184c
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20184c:
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
	jsr (sub_20f8c0).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2018dc
loc_2018d6:
	bsr.w sub_200444
	bra.s loc_2018ea
loc_2018dc:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2018d6
	bsr.w sub_200324
loc_2018ea:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2018f8:
	move.b #$8,($f62a).w
	bsr.w sub_200836
	tst.b ($f7cc).w
	bne.s loc_201916
	btst.b #$7,($f605).w
	beq.s loc_201916
	eori.b #$1,($f63a).w
loc_201916:
	btst.b #$0,($f63a).w
	beq.w loc_201988
	bsr.w sub_201bf6
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201966
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2018f8
	subq.b #$1,($ff1508).l
	bpl.s loc_201948
	clr.b ($ff1508).l
loc_201948:
	move.w #$e,d0
	jsr (sub_205846).l
	bsr.w sub_2070e6
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201974
loc_201966:
	andi.b #$70,d0
	beq.w loc_2018f8
	clr.b ($ff1508).l
loc_201974:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2014f2
loc_201988:
	bsr.w sub_201c3c
	addq.w #$1,($ff1504).l
	jsr (sub_2070fc).l
	jsr (sub_203580).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2014f2
	tst.w ($ff1502).l
	bne.w loc_2014f2
	tst.w ($ff1906).l
	bne.s loc_2019d0
	cmpi.b #$6,($d024).w
	bcs.s loc_2019d0
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2019d4
loc_2019d0:
	bsr.w sub_202a0a
loc_2019d4:
	jsr (sub_20372a).l
	tst.w ($ff190e).l
	bne.s loc_2019e6
	bsr.w sub_200184
loc_2019e6:
	jsr (sub_20cc52).l
	bsr.w sub_202574
	bsr.w sub_201a9e
	bra.w loc_2018f8

sub_2019f8:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201a10
	move.w #$78,$30(a1)
loc_201a10:
	rts
	.incbin 6674, 90

sub_201a6c:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a7e(pc,d0.w),($f796).w
	rts
dat_201a7e:
	.incbin 6782, 32

sub_201a9e:
	subq.b #$1,($ff1910).l
	bpl.s loc_201abc
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201abc:
	subq.b #$1,($ff1912).l
	bpl.s loc_201ada
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201ada:
	subq.b #$1,($ff1914).l
	bpl.s loc_201b02
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201b02
	move.b #$0,($ff1915).l
loc_201b02:
	tst.b ($ff1916).l
	beq.s loc_201b30
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201b30:
	rts

sub_201b32:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b54
	cmpi.b #$2,d0
	bne.s loc_201b54
	add.b ($ff156a).l,d0
loc_201b54:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b6c(pc,d1.w),d0
	jmp (sub_205846).l
dat_201b6c:
	.incbin 7020, 38

sub_201b92:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_23320c).l,a1
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

sub_201bf6:
	move.w #$ab,d0
	jsr (sub_20233e).l
	bset.b #$7,($f63a).w
	bne.s loc_201c3a
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c20
loc_201c16:
	move.w #$d5,d0
	jmp (sub_205846).l
loc_201c20:
	tst.b ($ff151f).l
	bne.s loc_201c16
	tst.b ($ff1520).l
	bne.s loc_201c16
	move.w #$90,d0
	jmp (sub_205846).l
loc_201c3a:
	rts

sub_201c3c:
	bclr.b #$7,($f63a).w
	beq.s loc_201c76
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c5c
loc_201c52:
	move.w #$d6,d0
	jmp (sub_205846).l
loc_201c5c:
	tst.b ($ff151f).l
	bne.s loc_201c52
	tst.b ($ff1520).l
	bne.s loc_201c52
	move.w #$91,d0
	jmp (sub_205846).l
loc_201c76:
	rts
loc_201c78:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201d04
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201cb4
	move.w #$700,d0
loc_201cb0:
	dbf d0,loc_201cb0
loc_201cb4:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201cea(pc,d0.w),d0
	jsr dat_201cea(pc,d0.w)
loc_201cca:
	jsr (sub_202362).l
	tst.b ($f63a).w
	bne.s loc_201cde
	bsr.w sub_202116
	bsr.w sub_202104
loc_201cde:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201cea:
	.incbin 7402, 26
loc_201d04:
	tst.b ($ff1957).l
	beq.w loc_201cca
	cmpi.b #$2,($ff1506).l
	bne.w loc_201cca
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201d32
	move.w #$700,d0
loc_201d2e:
	dbf d0,loc_201d2e
loc_201d32:
	move.w #$1,($f6fc).w
	jsr (sub_2022d6).l
	tst.b ($f64e).w
	bne.s loc_201d6a
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d8e
loc_201d6a:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d8e:
	move.w ($f624).w,(a5)
	jsr (sub_2022f2).l
	bra.w loc_201cca
	.incbin 7580, 60
	jsr (sub_2022d6).l
	bsr.w sub_202172
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
	bsr.w sub_205768
	tst.b ($f767).w
	beq.s loc_201e86
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e86:
	jsr (sub_20f8c0).l
	jsr (sub_2022f2).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f4c
	bsr.w sub_2025e6
	jmp (loc_20a480).l
	dc.b $4e,$75
	jsr (sub_2022d6).l
	bsr.w sub_202172
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
	jsr (sub_2022f2).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f4c
	bra.w loc_2025ca
	.incbin 8030, 16
	bsr.w sub_20205a
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f90
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f90:
	move.w ($f624).w,(a5)
	bra.w loc_2025ca
	.incbin 8088, 46
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
	jsr (sub_2022f2).l
	lea ($d000).w,a0
	bsr.w sub_205768
	tst.b ($f767).w
	beq.s loc_20204c
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_20204c:
	tst.w ($f614).w
	beq.w loc_202058
	subq.w #$1,($f614).w
loc_202058:
	rts

sub_20205a:
	jsr (sub_2022d6).l
	bsr.w sub_202172
	tst.b ($f64e).w
	bne.s loc_202090
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_2020b4
loc_202090:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_2020b4:
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
	jmp (sub_2022f2).l
	dc.b $4e,$73

sub_202104:
	tst.b ($d02a).w
	bne.s loc_202114
	tst.w ($f786).w
	beq.s loc_202114
	addq.w #$1,($f786).w
loc_202114:
	rts

sub_202116:
	tst.w ($f780).w
	beq.s loc_202120
	addq.w #$1,($f780).w
loc_202120:
	tst.w ($f782).w
	beq.s loc_20212a
	addq.w #$1,($f782).w
loc_20212a:
	rts
	.incbin 8492, 42

sub_202156:
	bsr.w sub_2022d6
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2022f2

sub_202172:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202180
	addq.w #$2,a1

sub_202180:
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

sub_2021ae:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_20222a).l,a2
	moveq #$12,d7
loc_2021c2:
	move.w (a2)+,(a0)
	dbf d7,loc_2021c2
	move.w (dat_20222c).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2021e8:
	move.w d0,(a1)
	dbf d7,loc_2021e8
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_20221a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20221a
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_20222a:
	dc.b $80,$04
dat_20222c:
	.incbin 8748, 36

sub_202250:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202272:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202272
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2022a0:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022a0
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2022be:
	move.l d0,(a1)+
	dbf d1,loc_2022be
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2022ce:
	move.l d0,(a1)+
	dbf d1,loc_2022ce
	rts

sub_2022d6:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022e6:
	btst.b #$0,($a11100).l
	bne.s loc_2022e6
	rts

sub_2022f2:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8960, 62

sub_20233e:
	tst.b ($f00a).w
	bne.s loc_20234a
	move.b d0,($f00a).w
	rts
loc_20234a:
	tst.b ($f00b).w
	bne.s loc_202356
	move.b d0,($f00b).w
	rts
loc_202356:
	tst.b ($f00c).w
	bne.s loc_202360
	move.b d0,($f00c).w
loc_202360:
	rts

sub_202362:
	jsr (sub_2022d6).l
	tst.b ($f00a).w
	beq.s loc_20237c
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_20237c:
	tst.b ($f00b).w
	beq.s loc_202390
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202390:
	tst.b ($f00c).w
	beq.s loc_2023a4
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2023a4:
	bra.w sub_2022f2
	.incbin 9128, 32

sub_2023c8:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_20248a).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023e4

sub_2023da:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2024a0).l,a3
loc_2023e4:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2023f2
	adda.w #$a,a3
loc_2023f2:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2024b6
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202412
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202412:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20245e
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20243a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20243a:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202448:
	lsr.w #$4,d0
loc_20244a:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202458
	jmp (a3)

sub_202454:
	moveq #$0,d4
	moveq #$8,d3
loc_202458:
	dbf d0,loc_20244a
	bra.s sub_202412
loc_20245e:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_20246c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20246c:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202448
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202448
loc_20248a:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202454
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202454
	rts
dat_2024a0:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202454
	rts

sub_2024b6:
	move.b (a0)+,d0
loc_2024b8:
	cmpi.b #$ff,d0
	bne.s loc_2024c0
	rts
loc_2024c0:
	move.w d0,d7
loc_2024c2:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2024b8
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
	bne.s loc_2024f0
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2024c2
loc_2024f0:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2024fc:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2024fc
	bra.s loc_2024c2

sub_202508:
	movem.l a1-a2,-(a7)
	lea (dat_20fa96).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202520:
	tst.l (a2)
	beq.s loc_202528
	addq.w #$6,a2
	bra.s loc_202520
loc_202528:
	move.w (a1)+,d0
	bmi.s loc_202534
loc_20252c:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20252c
loc_202534:
	movem.l (a7)+,a1-a2
	rts
loc_20253a:
	movem.l a1-a2,-(a7)
	lea (dat_20fa96).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202566
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_202560
loc_202558:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202558
loc_202560:
	movem.l (a7)+,a1-a2
	rts

sub_202566:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_20256c:
	clr.l (a2)+
	dbf d0,loc_20256c
	rts

sub_202574:
	tst.l ($f680).w
	beq.s loc_2025c8
	tst.w ($f6f8).w
	bne.s loc_2025c8
	movea.l ($f680).w,a0
	lea (loc_20248a).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202596
	adda.w #$a,a3
loc_202596:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2024b6
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
loc_2025c8:
	rts
loc_2025ca:
	tst.w ($f6f8).w
	beq.w loc_202668
loc_2025d2:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202604

sub_2025e6:
	tst.w ($f6f8).w
	beq.s loc_202668
	tst.b ($f744).w
	bne.s loc_2025d2
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202604:
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
loc_202638:
	movea.w #$8,a5
	bsr.w sub_202454
	subq.w #$1,($f6f8).w
	beq.s loc_20266a
	subq.w #$1,($f6fa).w
	bne.s loc_202638
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202668:
	rts
loc_20266a:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202670:
	move.l $6(a0),(a0)+
	dbf d0,loc_202670
	rts

sub_20267a:
	lea (dat_20fa96).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_20268c:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2023c8
	dbf d1,loc_20268c
	rts
	.incbin 9900, 560

sub_2028dc:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202938).l,a0
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
	bra.w loc_202964
dat_202938:
	.incbin 10552, 44
loc_202964:
	tst.b ($ff1522).l
	beq.s loc_202984
	jsr (sub_2064f6).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202982
	moveq #$0,d0
loc_202982:
	bra.s loc_20299a
loc_202984:
	lea (dat_2029d6).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_20299a:
	subi.w #$a0,d1
	bcc.s loc_2029a2
	moveq #$0,d1
loc_2029a2:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2029ac
	move.w d2,d1
loc_2029ac:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2029b8
	moveq #$0,d0
loc_2029b8:
	cmp.w ($f72e).w,d0
	blt.s loc_2029c2
	move.w ($f72e).w,d0
loc_2029c2:
	move.w d0,($f704).w
	bsr.w sub_2029de
	lea (dat_2029da).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2029d6:
	dc.b $00,$2e,$04,$8c
dat_2029da:
	dc.b $7f,$7f,$7f,$7f

sub_2029de:
	swap d0
	lsr.l #$3,d0
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

sub_202a0a:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202a16
	rts
loc_202a16:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202bc2
	bsr.w sub_202c62
	bsr.w sub_2034e8
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202eec
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202eb8
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e84
	move.l ($f704).w,d0
	lsr.l #$3,d0
	swap d0
	bsr.w sub_202e54
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
	move.w ($f708).w,d0
	neg.w d0
	moveq #$5,d6
loc_202ab8:
	move.w d0,(a1)+
	dbf d6,loc_202ab8
	bsr.w sub_202b10
	move.w ($f710).w,d0
	neg.w d0
	moveq #$11,d6
loc_202aca:
	move.w d0,(a1)+
	dbf d6,loc_202aca
	bsr.w sub_202b36
	move.w ($f708).w,d0
	neg.w d0
	moveq #$9,d6
loc_202adc:
	move.w d0,(a1)+
	dbf d6,loc_202adc
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b80
dat_202b00:
	dc.b $00,$00,$00,$00,$01,$01,$01,$00
dat_202b08:
	dc.b $00,$00,$00,$00,$01,$09,$01,$00

sub_202b10:
	bsr.w sub_202b64
	move.w ($f718).w,d3
	moveq #$6,d6
loc_202b1a:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b00(pc,d6.w),d5
loc_202b24:
	move.w d0,(a1)+
	dbf d5,loc_202b24
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b1a
	rts

sub_202b36:
	bsr.w sub_202b64
	move.w ($f718).w,d3
	adda.w #$24,a1
	moveq #$6,d6
loc_202b44:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b08(pc,d6.w),d5
loc_202b4e:
	move.w d0,-(a1)
	dbf d5,loc_202b4e
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b44
	adda.w #$24,a1
	rts

sub_202b64:
	move.w ($f718).w,d0
	move.w ($f710).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$5,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	rts
loc_202b80:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b8e(pc,d2.w)
loc_202b8c:
	move.w (a2)+,d0
loc_202b8e:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b8c
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
	dbf d1,loc_202b8c
	rts

sub_202bc2:
	move.w ($f700).w,d4
	bsr.s sub_202bf6
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bf4
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202bee
	bset.b #$2,($f754).w
	rts
loc_202bee:
	bset.b #$3,($f754).w
loc_202bf4:
	rts

sub_202bf6:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202c08
	bcs.s loc_202c38
	bra.s loc_202c0e
loc_202c08:
	clr.w ($f73a).w
	rts
loc_202c0e:
	cmpi.w #$10,d0
	blt.s loc_202c18
	move.w #$10,d0
loc_202c18:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202c26
	move.w ($f72a).w,d0
loc_202c26:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c38:
	cmpi.w #$fff0,d0
	bge.s loc_202c42
	move.w #$fff0,d0
loc_202c42:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202c26
	move.w ($f728).w,d0
	bra.s loc_202c26
	.incbin 11346, 16

sub_202c62:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c76
	subq.w #$5,d0
loc_202c76:
	btst.b #$1,$22(a6)
	beq.s loc_202c96
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202ce2
	subi.w #$40,d0
	bcc.s loc_202ce2
	tst.b ($f75c).w
	bne.s loc_202cf4
	bra.s loc_202ca2
loc_202c96:
	sub.w ($f73e).w,d0
	bne.s loc_202ca8
	tst.b ($f75c).w
	bne.s loc_202cf4
loc_202ca2:
	clr.w ($f73c).w
	rts
loc_202ca8:
	cmpi.w #$60,($f73e).w
	bne.s loc_202cd0
	move.w $14(a6),d1
	bpl.s loc_202cb8
	neg.w d1
loc_202cb8:
	cmpi.w #$800,d1
	bcc.s loc_202ce2
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d42
	cmpi.w #$fffa,d0
	blt.s loc_202d0c
	bra.s loc_202cfa
loc_202cd0:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d42
	cmpi.w #$fffe,d0
	blt.s loc_202d0c
	bra.s loc_202cfa
loc_202ce2:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d42
	cmpi.w #$fff0,d0
	blt.s loc_202d0c
	bra.s loc_202cfa
loc_202cf4:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202cfa:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d4c
	bra.w loc_202d18
loc_202d0c:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d18:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d70
	cmpi.w #$ff00,d1
	bgt.s loc_202d3c
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d70
loc_202d3c:
	move.w ($f72c).w,d1
	bra.s loc_202d70
loc_202d42:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d4c:
	cmp.w ($f72e).w,d1
	blt.s loc_202d70
	subi.w #$800,d1
	bcs.s loc_202d6c
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d70
loc_202d6c:
	move.w ($f72e).w,d1
loc_202d70:
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
	bne.s loc_202db2
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202dac
	bset.b #$0,($f754).w
	rts
loc_202dac:
	bset.b #$1,($f754).w
loc_202db2:
	rts
	dc.b $24,$38,$f7,$08,$20,$02,$d0,$84
	dc.b $21,$c0,$f7,$08
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202de8
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202de2
	bset.b #$2,($f756).w
	bra.s loc_202de8
loc_202de2:
	bset.b #$3,($f756).w
loc_202de8:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e1c
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e16
	bset.b #$0,($f756).w
	rts
loc_202e16:
	bset.b #$1,($f756).w
loc_202e1c:
	rts
	.incbin 11806, 54

sub_202e54:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e82
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e7c
	bset.b #$0,($f756).w
	rts
loc_202e7c:
	bset.b #$1,($f756).w
loc_202e82:
	rts

sub_202e84:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202eb6
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202eb0
	bset.b d6,($f756).w
	bra.s loc_202eb6
loc_202eb0:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202eb6:
	rts

sub_202eb8:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202eea
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202ee4
	bset.b d6,($f758).w
	bra.s loc_202eea
loc_202ee4:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202eea:
	rts

sub_202eec:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202f1e
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f18
	bset.b d6,($f75a).w
	bra.s loc_202f1e
loc_202f18:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202f1e:
	rts
	.incbin 12064, 44

sub_202f4c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20300a
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030f0
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030f2
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203008
	bclr.b #$0,(a2)
	beq.s loc_202fbe
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030f4
loc_202fbe:
	bclr.b #$1,(a2)
	beq.s loc_202fd8
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030f4
loc_202fd8:
	bclr.b #$2,(a2)
	beq.s loc_202fee
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20314a
loc_202fee:
	bclr.b #$3,(a2)
	beq.s loc_203008
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20331e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20314a
loc_203008:
	rts

sub_20300a:
	lea (dat_2033d6).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203026
	bclr.b #$1,(a2)
	beq.s loc_203070
	move.w #$e0,d4
loc_203026:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2030a0(pc,d0.w),a3
	beq.s loc_203058
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20331e
	movem.l (a7)+,d4-d5
	bsr.w sub_2030f4
	movea.l (a7)+,a0
	bra.s loc_203070
loc_203058:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203320
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203120
	movea.l (a7)+,a0
loc_203070:
	tst.b (a2)
	bne.s loc_203076
	rts
loc_203076:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_20308a
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_20308a:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2030b0
dat_2030a0:
	.incbin 12448, 16
loc_2030b0:
	moveq #$f,d6
	move.l #$800000,d7
loc_2030b8:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2030e4
	btst.b d0,(a2)
	beq.s loc_2030e4
	add.w d0,d0
	movea.l dat_2030a0(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f6
	movem.l (a7)+,d4-d5
	bsr.w sub_20331e
	bsr.w sub_203178
	movem.l (a7)+,d4-d5/a0
loc_2030e4:
	addi.w #$10,d4
	dbf d6,loc_2030b8
	clr.b (a2)
	rts

sub_2030f0:
	rts

sub_2030f2:
	rts

sub_2030f4:
	moveq #$15,d6

sub_2030f6:
	move.l #$800000,d7
	move.l d0,d1
loc_2030fe:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f6
	move.l d1,d0
	bsr.w sub_203178
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030fe
	rts

sub_203120:
	move.l #$800000,d7
	move.l d0,d1
loc_203128:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f8
	move.l d1,d0
	bsr.w sub_203178
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203128
	rts

sub_20314a:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203154:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f6
	move.l d1,d0
	bsr.w sub_203178
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203154
	rts

sub_203178:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2031b4
	btst.b #$3,(a0)
	bne.s loc_203194
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203194:
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
loc_2031b4:
	btst.b #$3,(a0)
	bne.s loc_2031d6
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
loc_2031d6:
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

sub_2031f6:
	add.w (a3),d5

sub_2031f8:
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
	beq.s loc_203246
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
loc_203246:
	rts
	.incbin 12872, 214

sub_20331e:
	add.w (a3),d5

sub_203320:
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
	.incbin 13114, 28

sub_203356:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203380
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2033a8

sub_203380:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203384:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20331e
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030f6
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203384
	rts
loc_2033a8:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033ac:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033d6).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203408
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2033ac
	rts
dat_2033d6:
	.incbin 13270, 34
dat_2033f8:
	.incbin 13304, 16

sub_203408:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033f8(pc,d0.w),a3
	beq.s loc_20342a
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20331e
	movem.l (a7)+,d4-d5
	bsr.w sub_2030f4
	bra.s loc_20343e
loc_20342a:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203320
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203120
loc_20343e:
	rts

sub_203440:
	moveq #$0,d0
	lea (dat_20fa86).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023da
	movea.l (a2)+,a0
	bsr.w sub_20349a
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200580
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203484
	jmp (loc_20cc2e).l
loc_203484:
	btst.b #$1,($ff151c).l
	beq.s loc_203498
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203498
	bsr.w sub_202508
loc_203498:
	rts

sub_20349a:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2034a4:
	move.l d0,(a3)+
	dbf d1,loc_2034a4
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2034ba
	lea ($a040).w,a3
	moveq #$2,d1

sub_2034ba:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_235ce4).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034d4:
	move.w d1,d0
	movea.l a3,a0
loc_2034d8:
	move.b (a1)+,(a0)+
	dbf d0,loc_2034d8
	lea $80(a3),a3
	dbf d2,loc_2034d4
	rts

sub_2034e8:
	lea ($d000).w,a6
	bsr.w sub_203544
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20351e
	bcc.s loc_203520
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203514
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203514:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20351e:
	rts
loc_203520:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203538
	btst.b #$1,$22(a6)
	beq.s loc_203538
	add.w d1,d1
	add.w d1,d1
loc_203538:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts

sub_203544:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203556(pc,d0.w),d0
	jmp dat_203556(pc,d0.w)
dat_203556:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$710,($f726).w
	rts
	.incbin 13668, 28

sub_203580:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203588:
	move.b (a0),d0
	beq.s loc_20359e
	add.w d0,d0
	add.w d0,d0
	lea (dat_2039a2).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20359e:
	lea $40(a0),a0
	dbf d7,loc_203588
	rts

sub_2035a8:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2035e6
	bpl.s loc_2035d8
	btst.b #$1,$2c(a0)
	beq.s loc_2035d8
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2035e6
loc_2035d8:
	btst.b #$2,$2c(a0)
	bne.s loc_2035e6
	addi.w #$38,$12(a0)
loc_2035e6:
	tst.w $12(a0)
	bmi.s loc_2035fa
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2035fa
	move.w #$1000,$12(a0)
loc_2035fa:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_20360a:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203646
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203646
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203644
	neg.w d1
loc_203644:
	add.w d1,d0
loc_203646:
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

sub_203660:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2036d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2036ec
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2036ec
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2036aa
	cmpi.w #$800,d3
	bcs.s loc_2036bc
	subi.w #$800,d3
	bra.s loc_2036bc
loc_2036aa:
	cmpi.w #$700,($f704).w
	bcs.s loc_2036bc
	cmpi.w #$100,d3
	bcc.s loc_2036bc
	addi.w #$800,d3
loc_2036bc:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2036ec
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2036ec
loc_2036d0:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2036ec
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2036ec:
	rts
	.incbin 14062, 30

sub_20370c:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203712:
	move.l d1,(a1)+
	dbf d0,loc_203712
	rts
dat_20371a:
	.incbin 14106, 16

sub_20372a:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203736:
	tst.w (a4)
	beq.w loc_2037f6
	moveq #$2,d6
loc_20373e:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2037ee
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2037a4
	movea.l dat_20371a(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203788
	cmpi.w #$800,d2
	bcs.s loc_20379a
	subi.w #$800,d2
	bra.s loc_20379a
loc_203788:
	cmpi.w #$700,$4(a1)
	bcs.s loc_20379a
	cmpi.w #$100,d2
	bcc.s loc_20379a
	addi.w #$800,d2
loc_20379a:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2037c6
loc_2037a4:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2037c6
	.incbin 14254, 24
loc_2037c6:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2037e4
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2037e8
loc_2037e4:
	bsr.w sub_203818
loc_2037e8:
	bset.b #$7,$1(a0)
loc_2037ee:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_20373e
loc_2037f6:
	lea $80(a4),a4
	dbf d7,loc_203736
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203810
	move.l #$0,(a2)
	rts
loc_203810:
	move.b #$0,-$5(a2)
	rts

sub_203818:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_20385e
	btst.l #$1,d4
	bne.w loc_2038ac
loc_20382a:
	cmpi.b #$50,d5
	beq.s loc_20385c
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
	bne.s loc_203856
	addq.w #$1,d0
loc_203856:
	move.w d0,(a2)+
	dbf d1,loc_20382a
loc_20385c:
	rts
loc_20385e:
	btst.l #$1,d4
	bne.w loc_2038f2
loc_203866:
	cmpi.b #$50,d5
	beq.s loc_2038aa
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
	bne.s loc_2038a4
	addq.w #$1,d0
loc_2038a4:
	move.w d0,(a2)+
	dbf d1,loc_203866
loc_2038aa:
	rts
loc_2038ac:
	cmpi.b #$50,d5
	beq.s loc_2038f0
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

sub_2038cc:
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
	bne.s loc_2038ea
	addq.w #$1,d0
loc_2038ea:
	move.w d0,(a2)+
	dbf d1,loc_2038ac
loc_2038f0:
	rts
loc_2038f2:
	cmpi.b #$50,d5
	beq.s loc_203944
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
	bne.s loc_20393e
	addq.w #$1,d0
loc_20393e:
	move.w d0,(a2)+
	dbf d1,loc_2038f2
loc_203944:
	rts
	.incbin 14662, 92
dat_2039a2:
	.incbin 14754, 274

sub_203ab4:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203ac6
	move.w #$0,(a1)
	rts
loc_203ac6:
	tst.w (a1)
	bne.s loc_203ad0
	move.b #$1,$1(a1)
loc_203ad0:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203b1a
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203b0c
	neg.w $10(a0)
loc_203b0c:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205846
loc_203b1a:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203b38
	cmpa.w #$d040,a0
	beq.s loc_203b38
	tst.b ($ff1906).l
	beq.s loc_203b38
	jmp (loc_206ec0).l
loc_203b38:
	move.b $2a(a0),d0
	beq.s loc_203b62
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203b54
	cmpi.b #$2d,d0
	bcs.s loc_203b5e
	move.b #$2d,d0
	bra.s loc_203b5e
loc_203b54:
	cmpi.b #$1e,d0
	bcs.s loc_203b5e
	move.b #$1e,d0
loc_203b5e:
	move.b d0,$2a(a0)
loc_203b62:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203b70(pc,d0.w),d1
	jmp dat_203b70(pc,d1.w)
dat_203b70:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203b7a:
	tst.b ($d300).w
	bne.s loc_203bb8
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203bb8:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203be0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203be0:
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203c14:
	tst.b ($ff1506).l
	bne.s loc_203c7a
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203c7a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203c7e
	cmpi.b #$2f,d1
	bne.s loc_203c7c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203c7a
	tst.b $2c(a0)
	beq.s loc_203c7a
	jsr (sub_2072f8).l
	bne.s loc_203c7a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203c72
	moveq #$0,d0
loc_203c72:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203c7a:
	rts
loc_203c7c:
	rts

sub_203c7e:
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

sub_203ca4:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203cb0
	neg.w d0
loc_203cb0:
	btst.b #$1,$2c(a0)
	beq.s loc_203cc0
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203ce8
loc_203cc0:
	cmpi.w #$600,d0
	bcs.s loc_203ce8
	tst.w $14(a0)
	bpl.s loc_203cda
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203cf6
	move.w #$e0,d1
	bra.s loc_203cf6
loc_203cda:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203cf6
	move.w #$60,d1
	bra.s loc_203cf6
loc_203ce8:
	cmpi.w #$a0,d1
	beq.s loc_203cf6
	bcc.s loc_203cf4
	addq.w #$2,d1
	bra.s loc_203cf6
loc_203cf4:
	subq.w #$2,d1
loc_203cf6:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203ca4
	bsr.w sub_203c14
	tst.w ($ff1588).l
	beq.s loc_203d1c
	btst.b #$4,($f605).w
	beq.s loc_203d1c
	move.b #$1,($ff1906).l
	rts
loc_203d1c:
	tst.b ($f7cc).w
	bne.s loc_203d28
	move.w ($f604).w,($f602).w
loc_203d28:
	btst.b #$0,$2c(a0)
	beq.s loc_203d4c
	cmpi.b #$6,($ff1506).l
	bne.s loc_203d46
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203d64
loc_203d46:
	bsr.w sub_20402e
	bra.s loc_203d64
loc_203d4c:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203daa(pc,d0.w),d1
	jsr dat_203daa(pc,d1.w)
	jsr (sub_20634e).l
loc_203d64:
	bsr.s sub_203db8
	bsr.w sub_203e78
	bsr.w sub_203e92
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203d8c
	tst.b $1c(a0)
	bne.s loc_203d8c
	move.b $1d(a0),$1c(a0)
loc_203d8c:
	bsr.w sub_205236
	tst.b $2c(a0)
	bmi.s loc_203da4
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203da4
	jsr (sub_2069c6).l
loc_203da4:
	bsr.w sub_2050ec
	rts
dat_203daa:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203db8:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203ddc
	move.w $30(a0),d0
	beq.s loc_203dce
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203ddc
loc_203dce:
	btst.b #$6,$2c(a0)
	bne.s loc_203ddc
	jsr (sub_203660).l
loc_203ddc:
	tst.b ($ff151f).l
	beq.s loc_203e20
	tst.w $32(a0)
	beq.s loc_203e20
	subq.w #$1,$32(a0)
	bne.s loc_203e20
	tst.b ($ff1520).l
	bne.s loc_203e18
	tst.b ($ff1958).l
	bne.s loc_203e18
	tst.b ($ff152e).l
	bne.s loc_203e12
	move.w #$e,d0
	jsr (sub_205846).l
loc_203e12:
	jsr (sub_201b32).l
loc_203e18:
	move.b #$0,($ff151f).l
loc_203e20:
	tst.b ($ff1520).l
	beq.s loc_203e76
	tst.w $34(a0)
	beq.s loc_203e76
	subq.w #$1,$34(a0)
	bne.s loc_203e76
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_203e6e
	tst.b ($ff1958).l
	bne.s loc_203e6e
	tst.b ($ff152e).l
	bne.s loc_203e68
	move.w #$e,d0
	jsr (sub_205846).l
loc_203e68:
	jsr (sub_201b32).l
loc_203e6e:
	move.b #$0,($ff1520).l
loc_203e76:
	rts

sub_203e78:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_203e92:
	cmpi.b #$2,($ff1506).l
	beq.s loc_203e9e
loc_203e9c:
	rts
loc_203e9e:
	cmpi.b #$1,($ff1507).l
	bne.s loc_203eb0
	cmpi.w #$c8,$8(a0)
	bcs.s loc_203e9c
loc_203eb0:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_203ef4
	bset.b #$6,$22(a0)
	bne.s loc_203e9c
	bsr.w sub_205b4a
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_203e9c
	bra.s loc_203f2c
loc_203ef4:
	tst.w $12(a0)
	beq.s loc_203efc
	bpl.s loc_203e9c
loc_203efc:
	bclr.b #$6,$22(a0)
	beq.s loc_203e9c
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_203e9c
	cmpi.w #$f000,$12(a0)
	bgt.s loc_203f2c
	move.w #$f000,$12(a0)
loc_203f2c:
	jsr (sub_2072f8).l
	bne.s loc_203f40
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_203f40:
	rts

sub_203f42:
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
	bcs.s loc_20401c
	move.l #$50000,d0
loc_20401c:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20402e:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204054
	tst.b ($ff152e).l
	beq.s loc_20404a
	cmpi.b #$2,($ff152e).l
	bne.s loc_204054
loc_20404a:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204104
loc_204054:
	tst.b $2a(a0)
	bne.w loc_204112
	tst.b ($f784).w
	beq.w loc_204112
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204072
	neg.w d0
loc_204072:
	tst.w ($f786).w
	bne.s loc_20407e
	move.w #$1,($f786).w
loc_20407e:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204094
	move.b #$1,($ff1502).l
	bra.w loc_205842
loc_204094:
	cmpi.w #$d2,d1
	bcs.s loc_2040e8
	cmpi.b #$2,($ff1522).l
	beq.s loc_2040e6
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2040be
	move.w #$82,d0
	jsr (sub_205846).l
	moveq #$0,d0
loc_2040be:
	add.b ($f784).w,d0
	bpl.s loc_2040c8
	moveq #$0,d0
	bra.s loc_2040d0
loc_2040c8:
	cmpi.b #$3,d0
	bcs.s loc_2040d0
	moveq #$2,d0
loc_2040d0:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_203f42
	move.b #$2,($ff1522).l
loc_2040e6:
	rts
loc_2040e8:
	cmpi.w #$5a,d1
	bcc.s loc_204100
	cmp.w d2,d0
	bcc.w loc_203b7a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204100:
	cmp.w d2,d0
	bcc.s loc_204112
loc_204104:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204112:
	rts
	bsr.w sub_203ab4
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204144
	tst.b ($ff195b).l
	beq.s loc_204132
	cmpi.b #$79,$1a(a0)
	bne.s loc_20416e
	bra.s loc_20413a
loc_204132:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20416e
loc_20413a:
	bsr.w sub_2049d6
	jmp (sub_2035a8).l
loc_204144:
	bsr.w sub_20421c
	bsr.w sub_20402e
	bsr.w sub_204ac0
	bsr.w sub_204bec
	bsr.w sub_204290
	bsr.w sub_204a42
	bsr.w sub_2049d6
	jsr (sub_20360a).l
	bsr.w sub_200c42
	bsr.w sub_204c6a
loc_20416e:
	rts
	.incbin 16752, 172

sub_20421c:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204288
	tst.w ($ff1506).l
	bne.s loc_204288
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20428a).l,a2
loc_204250:
	move.b (a2)+,d0
	bmi.s loc_204260
	cmp.b d0,d1
	bne.s loc_204250
	bset.b #$1,$2c(a0)
	rts
loc_204260:
	bclr.b #$1,$2c(a0)
	beq.s loc_204288
	tst.w $12(a0)
	bpl.s loc_204288
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204288
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204288
	neg.w $10(a0)
loc_204288:
	rts
dat_20428a:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204290:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2045ba
	tst.w $3e(a0)
	bne.w loc_20456a
	btst.b #$2,($f602).w
	beq.s loc_2042b8
	bsr.w sub_20464a
loc_2042b8:
	btst.b #$3,($f602).w
	beq.s loc_2042c4
	bsr.w sub_2046c0
loc_2042c4:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_20456a
	tst.w $14(a0)
	beq.s loc_2042e4
	tst.b $2a(a0)
	beq.w loc_20456a
	bra.s loc_2042f0
loc_2042e4:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2042f0:
	btst.b #$3,$22(a0)
	beq.s loc_204342
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20439a
	cmpi.b #$1e,$0(a1)
	bne.s loc_204322
	move.b #$0,$1c(a0)
	bra.w loc_20456a
loc_204322:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20437e
	cmp.w d2,d1
	bge.s loc_20436c
	bra.s loc_20439a
loc_204342:
	jsr (sub_20672a).l
	cmpi.w #$c,d1
	blt.s loc_20439a
	move.w #$ab,d0
	jsr (sub_20233e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204376
loc_20436c:
	btst.b #$0,$22(a0)
	bne.s loc_204386
	bra.s loc_204390
loc_204376:
	cmpi.b #$3,$37(a0)
	bne.s loc_20439a
loc_20437e:
	btst.b #$0,$22(a0)
	bne.s loc_204390
loc_204386:
	move.b #$32,$1c(a0)
	bra.w loc_20456a
loc_204390:
	move.b #$6,$1c(a0)
	bra.w loc_20456a
loc_20439a:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2043ae
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2043ae:
	btst.b #$7,($f788).w
	bne.w loc_2044b2
	btst.b #$6,($f788).w
	bne.w loc_2044d2
	btst.b #$1,($f602).w
	bne.w loc_2044d2
	andi.b #$f,($f788).w
	beq.s loc_2043e6
	btst.b #$0,($f603).w
	beq.s loc_2043fa
	bset.b #$7,($f788).w
	bra.w loc_20458e
loc_2043e6:
	btst.b #$0,($f603).w
	beq.w loc_2043fa
	move.b #$1,($f788).w
	bra.w loc_20458e
loc_2043fa:
	btst.b #$0,($f602).w
	beq.s loc_204476
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204458
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20442a
	asr.w #$1,d2
	sub.w d2,d1
loc_20442a:
	btst.b #$0,$22(a0)
	beq.s loc_204436
	neg.w d0
	neg.w d1
loc_204436:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20444c
	cmp.w d0,d1
	ble.s loc_204452
	bra.s loc_204450
loc_20444c:
	cmp.w d1,d0
	ble.s loc_204452
loc_204450:
	move.w d1,d0
loc_204452:
	move.w d0,$14(a0)
	rts
loc_204458:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204472
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20233e).l
loc_204472:
	bra.w loc_20458e
loc_204476:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204496
	move.w #$ab,d0
	jsr (sub_20233e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2044d2
loc_204496:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20233e).l
	bra.w loc_20456a
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2044b2:
	btst.b #$0,($f602).w
	beq.s loc_2044d2
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20458e
	addq.w #$2,($f73e).w
	bra.w loc_20458e
loc_2044d2:
	btst.b #$6,($f788).w
	bne.w loc_20454e
	andi.b #$f,($f788).w
	beq.s loc_2044f6
	btst.b #$1,($f603).w
	beq.s loc_204508
	bset.b #$6,($f788).w
	bra.w loc_20458e
loc_2044f6:
	btst.b #$1,($f603).w
	beq.s loc_204508
	move.b #$1,($f788).w
	bra.w loc_20458e
loc_204508:
	btst.b #$1,($f602).w
	beq.s loc_20456a
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20454c
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20454c
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20453e
	neg.w $14(a0)
loc_20453e:
	move.w #$9c,d0
	jsr (sub_20233e).l
	bsr.w sub_204a6a
loc_20454c:
	bra.s loc_20458e
loc_20454e:
	btst.b #$1,($f602).w
	beq.s loc_20456a
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20458e
	subq.w #$2,($f73e).w
	bra.s loc_20458e
loc_20456a:
	cmpi.w #$60,($f73e).w
	bne.s loc_204584
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20458e
	move.b #$0,($f788).w
	bra.s loc_20458e
loc_204584:
	bcc.s loc_20458a
	addq.w #$4,($f73e).w
loc_20458a:
	subq.w #$2,($f73e).w
loc_20458e:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2045ba
	move.w $14(a0),d0
	beq.s loc_2045ba
	bmi.s loc_2045ae
	sub.w d5,d0
	bcc.s loc_2045a8
	move.w #$0,d0
loc_2045a8:
	move.w d0,$14(a0)
	bra.s loc_2045ba
loc_2045ae:
	add.w d5,d0
	bcc.s loc_2045b6
	move.w #$0,d0
loc_2045b6:
	move.w d0,$14(a0)
loc_2045ba:
	move.b $26(a0),d0
	jsr (sub_200842).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204648
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204648
	bmi.s loc_2045f0
	neg.w d1
loc_2045f0:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2065ea
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204648
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204644
	cmpi.b #$40,d0
	beq.s loc_204632
	cmpi.b #$80,d0
	beq.s loc_20462c
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20462c:
	sub.w d1,$12(a0)
	rts
loc_204632:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204644:
	add.w d1,$12(a0)
loc_204648:
	rts

sub_20464a:
	tst.b $2a(a0)
	bne.s loc_2046be
	move.w $14(a0),d0
	beq.s loc_204658
	bpl.s loc_204688
loc_204658:
	bset.b #$0,$22(a0)
	bne.s loc_20466c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20466c:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20467c
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20467c
	move.w d1,d0
loc_20467c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204688:
	sub.w d4,d0
	bcc.s loc_204690
	move.w #$ff80,d0
loc_204690:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2046be
	cmpi.w #$400,d0
	blt.s loc_2046be
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20233e).l
loc_2046be:
	rts

sub_2046c0:
	tst.b $2a(a0)
	bne.s loc_20472e
	move.w $14(a0),d0
	bmi.s loc_2046f8
	bclr.b #$0,$22(a0)
	beq.s loc_2046e0
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2046e0:
	cmp.w d6,d0
	bge.s loc_2046ec
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2046ec
	move.w d6,d0
loc_2046ec:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2046f8:
	add.w d4,d0
	bcc.s loc_204700
	move.w #$80,d0
loc_204700:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20472e
	cmpi.w #$fc00,d0
	bgt.s loc_20472e
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20233e).l
loc_20472e:
	rts
	.incbin 18224, 438
	rts
	add.w d4,d0
	bcc.s loc_2048f0
	move.w #$80,d0
loc_2048f0:
	move.w d0,$14(a0)
	rts
	.incbin 18678, 224

sub_2049d6:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204a2a
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204a04
	addi.w #$38,d0
loc_204a04:
	cmp.w d1,d0
	bls.s loc_204a2a
loc_204a08:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204a18
	rts
loc_204a18:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206c9e
	move.b #$6,$24(a0)
	rts
loc_204a2a:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204a08

sub_204a42:
	tst.b ($f7ca).w
	bne.s loc_204a68
	move.w $14(a0),d0
	bpl.s loc_204a50
	neg.w d0
loc_204a50:
	cmpi.w #$80,d0
	bcs.s loc_204a68
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a68
	btst.b #$1,($f602).w
	bne.s sub_204a6a
loc_204a68:
	rts

sub_204a6a:
	btst.b #$2,$22(a0)
	beq.s loc_204a74
	bra.s loc_204aa4
loc_204a74:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a94
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204aa4
loc_204a94:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204aa4:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204abe
	cmpi.w #$200,$14(a0)
	bcc.s loc_204abe
	move.w #$200,$14(a0)
loc_204abe:
	rts

sub_204ac0:
	tst.b $2a(a0)
	beq.s loc_204ac8
	rts
loc_204ac8:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204ada
	tst.w $14(a0)
	beq.w loc_204ba0
loc_204ada:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204ba0
	btst.b #$3,$22(a0)
	beq.s loc_204af6
	jsr (sub_2057cc).l
	beq.s loc_204b26
loc_204af6:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206654
	cmpi.w #$6,d1
	blt.w loc_204ba0
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204b1c
	move.w #$380,d2
loc_204b1c:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204b26:
	jsr (sub_200842).l
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
	jsr (sub_20233e).l
	btst.b #$2,$22(a0)
	bne.s loc_204ba2
	tst.b ($ff195b).l
	beq.s loc_204b84
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204b94
loc_204b84:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204b94:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204ba0:
	rts
loc_204ba2:
	bset.b #$4,$22(a0)
	rts
	.incbin 19370, 66

sub_204bec:
	tst.b $2a(a0)
	bne.s loc_204c26
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204c26
	move.b $26(a0),d0
	jsr (sub_200842).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204c26
	bmi.s loc_204c22
	tst.w d0
	beq.s loc_204c20
	add.w d0,$14(a0)
loc_204c20:
	rts
loc_204c22:
	add.w d0,$14(a0)
loc_204c26:
	rts
	.incbin 19496, 66

sub_204c6a:
	nop
	tst.b $38(a0)
	bne.s loc_204cac
	tst.w $3e(a0)
	bne.s loc_204cae
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204cac
	move.w $14(a0),d0
	bpl.s loc_204c8e
	neg.w d0
loc_204c8e:
	cmpi.w #$280,d0
	bcc.s loc_204cac
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204cac:
	rts
loc_204cae:
	subq.w #$1,$3e(a0)
	rts
	.incbin 19636, 438
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204e78
	neg.w $14(a0)
loc_204e78:
	rts
	.incbin 20090, 30
	tst.w d1
	bpl.s loc_204eae
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204eac
	move.w #$0,$12(a0)
loc_204eac:
	rts
loc_204eae:
	tst.w $12(a0)
	bmi.s loc_204eda
	bsr.w sub_20667c
	tst.w d1
	bpl.s loc_204eda
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204edc
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204eda:
	rts

sub_204edc:
	btst.b #$4,$22(a0)
	beq.s loc_204ee6
	nop
loc_204ee6:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_204f40
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f20
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204f30
loc_204f20:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204f30:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20233e).l
loc_204f40:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20302, 414

sub_2050ec:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205114
	cmpi.b #$5,($ff1506).l
	beq.s loc_205114
	cmpi.b #$2,($ff1506).l
	beq.s loc_205114
	tst.b ($ff1506).l
	bne.w loc_2051d6
loc_205114:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205152
	tst.b ($ff1506).l
	bne.w loc_2051d8
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2051d8
	bra.s loc_20515a
loc_205152:
	cmp.b ($f7af).w,d1
	beq.w loc_2051d8
loc_20515a:
	cmp.b ($f7ac).w,d1
	beq.s loc_20518a
	cmp.b ($f7ad).w,d1
	beq.s loc_20516e
	bclr.b #$6,$1(a0)
	rts
loc_20516e:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2051f0
	btst.b #$1,$22(a0)
	beq.s loc_20518a
	bclr.b #$6,$1(a0)
	rts
loc_20518a:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20519c
	bclr.b #$6,$1(a0)
	rts
loc_20519c:
	cmpi.b #$e0,d2
	bcs.s loc_2051aa
	bset.b #$6,$1(a0)
	rts
loc_2051aa:
	btst.b #$6,$1(a0)
	bne.s loc_2051c6
	move.b $26(a0),d1
	beq.s loc_2051d6
	cmpi.b #$80,d1
	bhi.s loc_2051d6
	bset.b #$6,$1(a0)
	rts
loc_2051c6:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2051d6
	bclr.b #$6,$1(a0)
loc_2051d6:
	rts
loc_2051d8:
	btst.b #$2,$22(a0)
	bne.s loc_2051ea
	move.w #$9c,d0
	jsr (sub_20233e).l
loc_2051ea:
	jmp (sub_204a6a).l
loc_2051f0:
	tst.w $12(a0)
	bmi.s loc_205234
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205228
	cmpi.w #$38,d1
	bcs.s loc_205220
	cmpi.w #$80,d1
	bcs.s loc_205234
loc_205218:
	bclr.b #$6,$1(a0)
	rts
loc_205220:
	bset.b #$6,$1(a0)
	rts
loc_205228:
	cmpi.w #$38,d1
	bcs.s loc_205218
	cmpi.w #$80,d1
	bcc.s loc_205220
loc_205234:
	rts

sub_205236:
	lea (dat_205526).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205258
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205258:
	bsr.w sub_2054c8
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2052d0
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20529e
	move.b d0,$1e(a0)

sub_205282:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205296
	bpl.s loc_205296
	cmpi.b #$fd,d0
	bge.s loc_2052a0
loc_205296:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20529e:
	rts
loc_2052a0:
	addq.b #$1,d0
	bne.s loc_2052b0
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205296
loc_2052b0:
	addq.b #$1,d0
	bne.s loc_2052c4
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205296
loc_2052c4:
	addq.b #$1,d0
	bne.s loc_2052ce
	move.b $2(a1,d1.w),$1c(a0)
loc_2052ce:
	rts
loc_2052d0:
	subq.b #$1,$1e(a0)
	bpl.s loc_20529e
	addq.b #$1,d0
	bne.w loc_20538a
	tst.b ($ff195b).l
	bne.w loc_205452
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2052f8
	not.b d0
loc_2052f8:
	btst.b #$1,$2c(a0)
	bne.s loc_205306
	addi.b #$10,d0
	bra.s loc_205308
loc_205306:
	addq.b #$8,d0
loc_205308:
	bpl.s loc_20530c
	moveq #$3,d1
loc_20530c:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2053fe
	move.w $14(a0),d2
	bpl.s loc_20532a
	neg.w d2
loc_20532a:
	btst.b #$1,$2c(a0)
	beq.s loc_205342
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205728).l,a1
	bra.s loc_20536c
loc_205342:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205702).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20536c
	lea (dat_2055a6).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20536c
	lea (dat_20559e).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20536c:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20537a
	moveq #$0,d2
loc_20537a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205282
	add.b d3,$1a(a0)
	rts
loc_20538a:
	addq.b #$1,d0
	bne.s loc_2053fa
	move.w $14(a0),d2
	bpl.s loc_205396
	neg.w d2
loc_205396:
	lea (dat_205684).l,a1
	tst.b ($ff195b).l
	bne.s loc_2053d4
	lea (dat_2055b6).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2053c8
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2053d4
	lea (dat_205730).l,a1
	bra.s loc_2053d4
loc_2053c8:
	cmpi.w #$600,d2
	bcc.s loc_2053d4
	lea (dat_2055ae).l,a1
loc_2053d4:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2053de
	moveq #$0,d2
loc_2053de:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205282
loc_2053fa:
	addq.b #$1,d0
	bne.s loc_20543e
loc_2053fe:
	move.w $14(a0),d2
	bmi.s loc_205406
	neg.w d2
loc_205406:
	addi.w #$800,d2
	bpl.s loc_20540e
	moveq #$0,d2
loc_20540e:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205696).l,a1
	tst.b ($ff195b).l
	bne.s loc_205428
	lea (dat_2055be).l,a1
loc_205428:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205282
loc_20543e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205452:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205464
	not.b d0
loc_205464:
	addi.b #$10,d0
	bpl.s loc_20546c
	moveq #$0,d1
loc_20546c:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20549a
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20538a
loc_20549a:
	move.w $14(a0),d2
	bpl.s loc_2054a2
	neg.w d2
loc_2054a2:
	lea (dat_20567e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2054b4
	lea (dat_205678).l,a1
loc_2054b4:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2054be
	moveq #$0,d2
loc_2054be:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205282

sub_2054c8:
	tst.b ($ff195b).l
	beq.s loc_2054d4
	move.b dat_2054d6(pc,d0.w),d0
loc_2054d4:
	rts
dat_2054d6:
	.incbin 21718, 80
dat_205526:
	.incbin 21798, 120
dat_20559e:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2055a6:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2055ae:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2055b6:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2055be:
	.incbin 21950, 186
dat_205678:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20567e:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205684:
	.incbin 22148, 18
dat_205696:
	.incbin 22166, 108
dat_205702:
	.incbin 22274, 38
dat_205728:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205730:
	.incbin 22320, 56

sub_205768:
	tst.b (a0)
	beq.w loc_2057ca
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2057ca
	move.b d0,(a2)
	lea (dat_22f1b0).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2057ca
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_20579c:
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
loc_2057b6:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_2057b6
	dbf d1,loc_20579c
loc_2057ca:
	rts

sub_2057cc:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205840
	move.w #$98,d0
	jsr (sub_20233e).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200ada).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_20582e
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_20582e:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205840:
	rts
loc_205842:
	move.w #$e,d0

sub_205846:
	cmpi.w #$67,d0
	bne.s loc_205854
	move.b #$1,($ff1958).l
loc_205854:
	move.w d0,($a12010).l
loc_20585a:
	move.w ($a12020).l,d0
	beq.s loc_20585a
	cmp.w ($a12020).l,d0
	bne.s loc_20585a
	move.w #$0,($a12010).l
loc_205872:
	move.w ($a12020).l,d0
	bne.s loc_205872
	move.w ($a12020).l,d0
	bne.s loc_205872
	rts
	dc.b $00,$00

sub_205886:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2058a2
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2058a2:
	subq.b #$1,$1e(a0)
	bpl.s loc_2058e2
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_2058e4
loc_2058be:
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
loc_2058e2:
	rts
loc_2058e4:
	addq.b #$1,d0
	bne.s loc_2058f4
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2058be
loc_2058f4:
	addq.b #$1,d0
	bne.s loc_205908
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2058be
loc_205908:
	addq.b #$1,d0
	bne.s loc_205912
	move.b $2(a1,d1.w),$1c(a0)
loc_205912:
	addq.b #$1,d0
	bne.s loc_20591a
	addq.b #$2,$24(a0)
loc_20591a:
	addq.b #$1,d0
	bne.s loc_205928
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205928:
	addq.b #$1,d0
	bne.s loc_205930
	addq.b #$2,$25(a0)
loc_205930:
	rts
	.incbin 22834, 536

sub_205b4a:
	rts
	.incbin 23372, 738

sub_205e2e:
	tst.w $12(a1)
	bpl.s loc_205e70
	bsr.w sub_205ee4
	beq.s loc_205e70
	move.b #$4,$24(a0)
	tst.b $28(a0)
	bne.s loc_205e6e
	jsr (sub_2072f8).l
	bne.s loc_205e6e
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$4,$c(a1)
	move.w #$a4,d0
	jmp (sub_20233e).l
loc_205e6e:
	rts
loc_205e70:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208a3a).l
	addq.b #$2,$24(a0)
	move.l #$239326,$4(a0)
	move.b #$1,$18(a0)
	ori.b #$4,$1(a0)
	move.b #$2c,$19(a0)
	cmpi.b #$2,$28(a0)
	bne.s loc_205eaa
	move.b #$18,$19(a0)
loc_205eaa:
	move.b #$8,$16(a0)
	moveq #$c,d0
	jsr (sub_20cc98).l
	lea ($d000).w,a1
	bsr.w sub_205e2e
	lea ($d040).w,a1
	bra.w sub_205e2e
	.incbin 24264, 28

sub_205ee4:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	moveq #$0,d1
	move.b $19(a0),d1
	add.w d1,d0
	bmi.s loc_205f18
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_205f18
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$0,d1
	move.b $16(a0),d1
	add.w d1,d0
	bmi.s loc_205f18
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_205f18
	moveq #$1,d0
	rts
loc_205f18:
	moveq #$0,d0
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f2a(pc,d0.w),d0
	jmp dat_205f2a(pc,d0.w)
dat_205f2a:
	.incbin 24362, 464

sub_2060fa:
	bclr.b #$7,($ff156b).l
	beq.s loc_206148
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20614a(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20611e:
	move.l (a1)+,(a2)+
	dbf d0,loc_20611e
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206148:
	rts
dat_20614a:
	.incbin 24906, 512
loc_20634a:
	ori.b #$0,d2

sub_20634e:
	cmpi.b #$2,($ff1507).l
	bne.s loc_20635a
	rts
loc_20635a:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200fb0).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	bsr.s sub_2063d0
	bne.s loc_2063b2
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200fb0).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	bsr.s sub_2063d0
	beq.s loc_2063ce
loc_2063b2:
	move.w #$1,d0
	btst.l #$b,d4
	beq.s loc_2063be
	neg.w d0
loc_2063be:
	andi.w #$7ff,d4
	cmpi.w #$114,d4
	bne.s loc_2063ca
	neg.w d0
loc_2063ca:
	add.w d0,$8(a0)
loc_2063ce:
	rts

sub_2063d0:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_2063e8
	add.b ($ff156a).l,d1
loc_2063e8:
	add.w d1,d1
	move.w dat_20640c(pc,d1.w),d1
	lea dat_20640c(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_2063f8:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_206408
	addq.w #$2,d1
	dbf d6,loc_2063f8
	moveq #$0,d0
	rts
loc_206408:
	moveq #$1,d0
	rts
dat_20640c:
	.incbin 25612, 24
loc_206424:
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
	bne.s loc_2064de
	move.b ($ff1593).l,($ff195b).l
loc_2064de:
	tst.b ($ff1522).l
	bpl.s loc_2064f4
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2064f4:
	rts

sub_2064f6:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206424
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
	bne.s loc_2065b0
	move.b ($ff1591).l,($ff195b).l
loc_2065b0:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2065d2
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2065d2:
	tst.b ($ff1522).l
	bpl.s loc_2065e8
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2065e8:
	rts

sub_2065ea:
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
	bpl.s loc_206626
	move.b d1,d0
	bpl.s loc_206620
	subq.b #$1,d0
loc_206620:
	addi.b #$20,d0
	bra.s loc_206630
loc_206626:
	move.b d1,d0
	bpl.s loc_20662c
	addq.b #$1,d0
loc_20662c:
	addi.b #$1f,d0
loc_206630:
	andi.b #$c0,d0
	beq.w loc_206700
	cmpi.b #$80,d0
	beq.w loc_20689c
	andi.b #$38,d1
	bne.s loc_206648
	addq.w #$8,d2
loc_206648:
	cmpi.b #$40,d0
	beq.w loc_206972
	bra.w loc_2067d4

sub_206654:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2068fa
	cmpi.b #$80,d0
	beq.w loc_206824
	cmpi.b #$c0,d0
	beq.w loc_206764

sub_20667c:
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
	jsr (sub_201198).l
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
	jsr (sub_201198).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_2066e0:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2066ee
	move.b ($f768).w,d3
	exg d0,d1
loc_2066ee:
	btst.l #$0,d3
	beq.s loc_2066f6
	move.b d2,d3
loc_2066f6:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206700:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201198).l
	move.b #$0,d2
loc_20671c:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206728
	move.b d2,d3
loc_206728:
	rts

sub_20672a:
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
	jsr (sub_201198).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206762
	move.b #$0,d3
loc_206762:
	rts
loc_206764:
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
	jsr (sub_201308).l
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
	jsr (sub_201308).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_2066e0
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2067d4:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201308).l
	move.b #$c0,d2
	bra.w loc_20671c
	.incbin 26612, 48
loc_206824:
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
	jsr (sub_201198).l
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
	jsr (sub_201198).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_2066e0

sub_206894:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20689c:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201198).l
	move.b #$80,d2
	bra.w loc_20671c
	.incbin 26816, 58
loc_2068fa:
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
	jsr (sub_201308).l
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
	jsr (sub_201308).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_2066e0
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206972:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201308).l
	move.b #$40,d2
	bra.w loc_20671c
	.incbin 27030, 48

sub_2069c6:
	btst.b #$0,$2c(a0)
	beq.s loc_2069d2
	moveq #$0,d0
	rts
loc_2069d2:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_2069f6
	addi.w #$c,d3
	moveq #$a,d5
loc_2069f6:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206a04:
	tst.b $1(a1)
	bpl.s loc_206a10
	move.b $20(a1),d0
	bne.s loc_206a1c
loc_206a10:
	lea $40(a1),a1
	dbf d6,loc_206a04
	moveq #$0,d0
	rts
loc_206a1c:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206e42).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206a44
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206a4a
	bra.w loc_206a10
loc_206a44:
	cmp.w d4,d0
	bhi.w loc_206a10
loc_206a4a:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206a62
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206a68
	bra.w loc_206a10
loc_206a62:
	cmp.w d5,d0
	bhi.w loc_206a10
loc_206a68:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206b00
	cmpi.b #$c0,d1
	beq.w loc_206cf6
	tst.b d1
	bmi.w loc_206a84
	bra.s loc_206a90
loc_206a84:
	tst.b ($ff151f).l
	bne.s loc_206a10
	bra.w sub_206bca
loc_206a90:
	tst.b ($ff1956).l
	beq.s loc_206aa0
	tst.b $29(a1)
	bne.s loc_206aa8
	rts
loc_206aa0:
	tst.b $29(a1)
	beq.s loc_206aa8
	rts
loc_206aa8:
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206ac4
	cmpi.w #$5a,$30(a0)
	bcc.s loc_206ac2
	addq.b #$2,$24(a1)
loc_206ac2:
	rts
loc_206ac4:
	tst.w $12(a0)
	bpl.s loc_206aee
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206afe
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206afe
	addq.b #$4,$25(a1)
	rts
loc_206aee:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206afe
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206afe:
	rts

sub_206b00:
	tst.b ($ff1521).l
	bne.s loc_206b1a
	tst.b ($ff151f).l
	bne.s loc_206b1a
	cmpi.b #$2,$1c(a0)
	bne.w sub_206bca
loc_206b1a:
	tst.b $21(a1)
	beq.s loc_206b44
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206b42
	bset.b #$7,$22(a1)
loc_206b42:
	rts
loc_206b44:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206b5c
	moveq #$6,d0
loc_206b5c:
	move.w d0,$3e(a1)
	move.w dat_206bbc(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206b76
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206b76:
	bsr.w sub_20a438
	move.w #$96,d0
	jsr (sub_20233e).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206bac
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206bb4
	neg.w $12(a0)
	rts
loc_206bac:
	addi.w #$100,$12(a0)
	rts
loc_206bb4:
	subi.w #$100,$12(a0)
	rts
dat_206bbc:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206bca:
	btst.b #$0,$2c(a0)
	bne.s loc_206be2
	tst.b ($ff1521).l
	bne.s loc_206be2
	tst.b ($ff151f).l
	beq.s loc_206be6
loc_206be2:
	moveq #$ffffffff,d0
	rts
loc_206be6:
	nop
	tst.w $30(a0)
	bne.s loc_206be2
	movea.l a1,a2

sub_206bf0:
	tst.b ($ff151e).l
	bne.s loc_206c2a
	tst.w ($ff1512).l
	beq.w loc_206c94
	jsr (sub_2072f8).l
	bne.s loc_206c2a
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b ($ff1956).l
	beq.s loc_206c2a
	move.b #$1,$29(a1)
loc_206c2a:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206c40
	move.b #$0,($ff156f).l
loc_206c40:
	move.b #$4,$24(a0)
	bsr.w sub_204edc
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206c70
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206c70:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206c7e
	neg.w $10(a0)
loc_206c7e:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206c94:
	tst.w ($ff1588).l
	bne.w loc_206c2a

sub_206c9e:
	tst.w ($ff1906).l
	bne.s loc_206cf2
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_204edc
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20233e).l
loc_206cf2:
	moveq #$ffffffff,d0
	rts
loc_206cf6:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$6,d1
	beq.w loc_206e06
	cmpi.b #$17,d1
	beq.w loc_206d8e
	cmpi.b #$1f,d1
	beq.w loc_206d8e
	cmpi.b #$22,d1
	beq.w loc_206dd6
	cmpi.b #$23,d1
	beq.w loc_206d8e
	cmpi.b #$2d,d1
	beq.w loc_206de4
	cmpi.b #$30,d1
	beq.w loc_206df0
	tst.b ($f7aa).w
	beq.w loc_206d8c
	cmpi.b #$1,($f7aa).w
	beq.s loc_206d56
	cmpi.b #$4,($f7aa).w
	beq.s loc_206d78
	cmpi.b #$5,($f7aa).w
	beq.s loc_206d86
loc_206d56:
	cmpi.b #$3c,d1
	blt.s loc_206d8c
	cmpi.b #$3f,d1
	bgt.s loc_206d8c
	bsr.w sub_206b00
	tst.b $20(a1)
	bne.s loc_206d70
	addq.b #$3,$21(a1)
loc_206d70:
	clr.b $20(a1)
	bra.w loc_206d8e
loc_206d78:
	cmpi.b #$3f,d1
	beq.s loc_206d9a
	cmpi.b #$3e,d1
	beq.s loc_206d94
	bra.s loc_206d8c
loc_206d86:
	cmpi.b #$3d,d1
	beq.s loc_206d94
loc_206d8c:
	rts
loc_206d8e:
	addq.b #$1,$21(a1)
	rts
loc_206d94:
	bsr.w sub_206bca
	bra.s loc_206d8e
loc_206d9a:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_206dd4
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_206dd4
	neg.w $10(a0)
loc_206dd4:
	rts
loc_206dd6:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206de2
	addq.b #$1,$21(a1)
loc_206de2:
	rts
loc_206de4:
	btst.b #$2,$22(a0)
	beq.w sub_206b00
	bra.s loc_206d8e
loc_206df0:
	move.w $8(a0),d0
	sub.w $8(a1),d0
	smi d0
	move.b $29(a1),d1
	eor.b d0,d1
	beq.w sub_206b00
	bra.s loc_206d8e
loc_206e06:
	tst.w $12(a0)
	bpl.s loc_206e30
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206e40
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206e40
	addq.b #$4,$25(a1)
	rts
loc_206e30:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e40
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206e40:
	rts
dat_206e42:
	.incbin 28226, 126
loc_206ec0:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206ed6
	move.l #$4000,(dat_207050).l
	bra.s loc_206ef6
loc_206ed6:
	addi.l #$2000,(dat_207050).l
	cmpi.l #$80000,(dat_207050).l
	bls.s loc_206ef6
	move.l #$80000,(dat_207050).l
loc_206ef6:
	move.l (dat_207050).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206f08
	sub.l d0,$c(a0)
loc_206f08:
	btst.b #$1,($f604).w
	beq.s loc_206f14
	add.l d0,$c(a0)
loc_206f14:
	btst.b #$2,($f604).w
	beq.s loc_206f20
	sub.l d0,$8(a0)
loc_206f20:
	btst.b #$3,($f604).w
	beq.s loc_206f2c
	add.l d0,$8(a0)
loc_206f2c:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200fb0).l
	move.w (a1),($ff194e).l
	lea (dat_207054).l,a2
	btst.b #$6,($f605).w
	beq.s loc_206f6e
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_206f68
	move.b #$0,d1
loc_206f68:
	move.b d1,($ff1904).l
loc_206f6e:
	btst.b #$7,($f605).w
	beq.s loc_206f8e
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_206f88
	add.b (a2),d1
loc_206f88:
	move.b d1,($ff1904).l
loc_206f8e:
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
	beq.s loc_20701a
	bsr.w sub_2072f8
	bne.s loc_20701a
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
loc_20701a:
	btst.b #$4,($f605).w
	beq.s loc_20704a
	move.b #$0,($ff1906).l
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20704a:
	jmp (sub_203660).l
dat_207050:
	dc.b $00,$00,$40,$00
dat_207054:
	.incbin 28756, 146

sub_2070e6:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2070f4:
	clr.l (a2)+
	dbf d0,loc_2070f4
	rts

sub_2070fc:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20710a(pc,d0.w),d0
	jmp dat_20710a(pc,d0.w)
dat_20710a:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2073aa).l,a0
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
	bcc.s loc_207148
	moveq #$0,d6
loc_207148:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207150:
	cmp.w (a0),d6
	bls.s loc_207162
	tst.b $4(a0)
	bpl.s loc_20715e
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20715e:
	addq.w #$8,a0
	bra.s loc_207150
loc_207162:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207182
loc_207170:
	cmp.w (a0),d6
	bls.s loc_207182
	tst.b $4(a0)
	bpl.s loc_20717e
	addq.b #$1,$1(a2)
loc_20717e:
	addq.w #$8,a0
	bra.s loc_207170
loc_207182:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20726c
	bge.s loc_207212
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2071ee
loc_2071bc:
	cmp.w -$8(a0),d6
	bge.s loc_2071ee
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2071d2
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2071d2:
	bsr.w sub_207290
	bne.s loc_2071dc
	subq.w #$8,a0
	bra.s loc_2071bc
loc_2071dc:
	tst.b $4(a0)
	bpl.s loc_2071ec
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2071ec:
	addq.w #$8,a0
loc_2071ee:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2071fa:
	cmp.w -$8(a0),d6
	bgt.s loc_20720c
	tst.b -$4(a0)
	bpl.s loc_207208
	subq.b #$1,(a2)
loc_207208:
	subq.w #$8,a0
	bra.s loc_2071fa
loc_20720c:
	move.l a0,($f770).w
	rts
loc_207212:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207226:
	cmp.w (a0),d6
	bls.s loc_207248
	tst.b $4(a0)
	bpl.s loc_207234
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207234:
	bsr.w sub_207290
	beq.s loc_207226
	tst.b $4(a0)
	bpl.s loc_207248
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207248:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207268
loc_207256:
	cmp.w (a0),d6
	bls.s loc_207268
	tst.b $4(a0)
	bpl.s loc_207264
	addq.b #$1,$1(a2)
loc_207264:
	addq.w #$8,a0
	bra.s loc_207256
loc_207268:
	move.l a0,($f774).w
loc_20726c:
	rts

sub_20726e:
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

sub_207290:
	bsr.s sub_20726e
	beq.s loc_2072a2
	tst.b $4(a0)
	bpl.s loc_2072a8
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2072a8
loc_2072a2:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2072a8:
	bsr.w sub_2072f8
	bne.s loc_2072f6
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
	bpl.s loc_2072d8
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2072d8:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2072ea
	nop
	nop
	nop
	nop
loc_2072ea:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2072f6:
	rts

sub_2072f8:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207300:
	tst.b (a1)
	beq.s loc_20730c
	lea $40(a1),a1
	dbf d0,loc_207300
loc_20730c:
	rts

sub_20730e:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_20732c
loc_207320:
	tst.b (a1)
	beq.s loc_20732c
	lea $40(a1),a1
	dbf d0,loc_207320
loc_20732c:
	rts
loc_20732e:
	move.w $8(a0),d0
loc_207332:
	tst.b $1(a0)
	bmi.s loc_20739c
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20739c
loc_207350:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207392
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20738a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207382
	moveq #$0,d1
	bra.s loc_20738a
loc_207382:
	cmpi.w #$3,d1
	bcs.s loc_20738a
	moveq #$2,d1
loc_20738a:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207392:
	jsr (sub_20370c).l
	moveq #$1,d0
	rts
loc_20739c:
	btst.b #$7,($ff152e).l
	bne.s loc_207350
	moveq #$0,d0
	rts
dat_2073aa:
	.incbin 29610, 5448

sub_2088f2:
	btst.b #$3,$22(a0)
	beq.s loc_208962
	btst.b #$3,$22(a1)
	beq.s loc_208962
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208962
	tst.b $2a(a1)
	beq.s loc_208924
	move.w #$ab,d0
	jsr (sub_20233e).l
loc_208924:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208950
	cmpi.b #$17,$1c(a1)
	beq.s loc_208950
	bclr.b #$0,$2c(a1)
loc_208950:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208962
	bclr.b #$1,$22(a1)
loc_208962:
	rts

sub_208964:
	cmpi.b #$4,$24(a1)
	bne.s loc_208976
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208976:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_2089d6
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208998
	bclr.b #$3,$22(a0)
	bra.w sub_2088f2
loc_208998:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_2089d6
	tst.b ($ff195b).l
	beq.s loc_2089c0
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_2089d0
loc_2089c0:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_2089d0:
	move.b #$0,$1c(a1)
loc_2089d6:
	bset.b #$3,$22(a1)
	beq.s loc_2089f8
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208a30
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_2089f8:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208a24
	cmpi.b #$2,$24(a0)
	beq.s loc_208a2a
loc_208a24:
	move.w $10(a1),$14(a1)
loc_208a2a:
	bclr.b #$1,$22(a1)
loc_208a30:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_208a3a:
	move.b #$1,$25(a0)

sub_208a40:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208cf4
	btst.b #$6,$2c(a1)
	bne.w loc_208cf4
	cmpi.b #$6,$24(a1)
	bcc.w loc_208cf4
	tst.b $0(a1)
	beq.w loc_208cf4
	tst.b $1(a0)
	bpl.w loc_208cf4
	tst.b ($ff1906).l
	bne.w loc_208cf4
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208cf4
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208cf4
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208aae
	btst.b #$3,$22(a0)
	bne.s loc_208ac0
	bra.w loc_208cf4
loc_208aae:
	cmpi.b #$1,$25(a0)
	bne.s loc_208ac0
	tst.w $12(a1)
	beq.s loc_208ac0
	bmi.w loc_208cf4
loc_208ac0:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208cf4
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208cf4
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208af6
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208af6:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208b04
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208b04:
	cmp.w d4,d5
	bcs.w loc_208b98
	cmpi.b #$1,$25(a0)
	beq.w loc_208cf4
	cmpi.b #$a,$0(a0)
	bne.s loc_208b26
	btst.b #$1,$22(a1)
	bne.w loc_208cf4
loc_208b26:
	cmpi.b #$4,d5
	bls.w loc_208cf4
	bsr.w sub_208d44
	move.l d0,-(a7)
	bsr.w sub_2088f2
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208b50
	tst.w $10(a1)
	beq.s loc_208b80
	bpl.s loc_208b58
	bra.s loc_208b80
loc_208b50:
	tst.w $10(a1)
	beq.s loc_208b80
	bpl.s loc_208b80
loc_208b58:
	bsr.w sub_208d04
	btst.b #$1,$22(a1)
	bne.s loc_208b76
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208b76:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208b80:
	bsr.w sub_208dba
	bsr.w sub_208d04
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208b98:
	cmpi.b #$19,$0(a0)
	bne.s loc_208baa
	btst.b #$2,$22(a1)
	bne.w loc_208cf4
loc_208baa:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208bc0
	bmi.w loc_208c90
loc_208bc0:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208bd2
	tst.w $12(a1)
	beq.s loc_208bd2
	bmi.w loc_208cf4
loc_208bd2:
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
	beq.s loc_208c1e
	bpl.s loc_208bfe
	neg.b d0
loc_208bfe:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2065ea).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208c1e
	tst.w $10(a0)
	bpl.s loc_208c1a
	neg.w d1
loc_208c1a:
	add.w d1,$8(a1)
loc_208c1e:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208c88
	tst.w $12(a0)
	bmi.s loc_208c5c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20667c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208c5c
	add.w d1,$c(a1)
	bra.w loc_208cf4
loc_208c5c:
	tst.w $12(a0)
	bpl.s loc_208c88
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206894).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208c88
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c9e).l
	movem.l (a7)+,a0-a1
	bra.s loc_208cf4
loc_208c88:
	bsr.w sub_208964
	moveq #$1,d0
	rts
loc_208c90:
	cmpi.b #$1,$25(a0)
	beq.s loc_208cf4
	cmpi.b #$9,$0(a0)
	beq.s loc_208cf4
	cmpi.b #$a,$0(a0)
	bne.s loc_208cba
	cmpi.b #$2,$25(a0)
	beq.s loc_208cda
	btst.b #$1,$1(a0)
	bne.s loc_208cda
	bra.s loc_208cf4
loc_208cba:
	btst.b #$1,$22(a1)
	bne.s loc_208cda
	tst.w $12(a0)
	beq.s loc_208cda
	bmi.s loc_208cda
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c9e).l
	movem.l (a7)+,a0-a1
loc_208cda:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208dba
	bsr.w sub_2088f2
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208cf4:
	bsr.w sub_208dba
	bsr.w sub_2088f2
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208d04:
	tst.w $10(a0)
	beq.s loc_208d42
	cmpi.b #$a,$0(a0)
	beq.s loc_208d42
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208d1e
	neg.b d0
loc_208d1e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2065ea).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208d42
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c9e).l
	movem.l (a7)+,a0-a1
loc_208d42:
	rts

sub_208d44:
	cmpi.b #$a,$0(a0)
	bne.s loc_208d54
	move.b #$0,$20(a1)
	rts
loc_208d54:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208da8
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208db8
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208d76
	tst.w $10(a2)
	beq.s loc_208db8
loc_208d76:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208d88
	cmp.w $8(a2),d1
	bcs.s loc_208db8
	bra.s loc_208d8e
loc_208d88:
	cmp.w $8(a2),d1
	bcc.s loc_208db8
loc_208d8e:
	cmpi.b #$15,$0(a0)
	beq.s loc_208db8
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c9e).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208da8:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208db8:
	rts

sub_208dba:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208dd4
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208dd4
	move.b #$0,$20(a1)
loc_208dd4:
	rts
	.incbin 36310, 374
loc_208f4c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208f5a(pc,d0.w),d0
	jmp dat_208f5a(pc,d0.w)
dat_208f5a:
	.incbin 36698, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208f4c
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208fb0
	tst.b $1(a0)
	bpl.s loc_208fb8
loc_208fb0:
	move.w dat_20900a(pc,d0.w),d1
	jsr dat_20900a(pc,d1.w)
loc_208fb8:
	bsr.w sub_203660
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208fea
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208fea:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_20370c
	rts
dat_20900a:
	.incbin 36874, 26
	addq.b #$2,$24(a0)
	move.l #$20938c,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20907a
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209392,$4(a0)
	bra.s loc_2090bc
loc_20907a:
	btst.l #$3,d0
	beq.s loc_2090a8
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$2093dc,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cc98).l
	move.l (a7)+,d0
	bra.s loc_2090bc
loc_2090a8:
	btst.b #$1,$1(a0)
	beq.s loc_2090bc
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_2090bc:
	btst.l #$1,d0
	beq.s loc_2090c8
	bset.b #$5,$2(a0)
loc_2090c8:
	andi.w #$2,d0
	move.w dat_2090d4(pc,d0.w),$30(a0)
	rts
dat_2090d4:
	dc.b $f0,$00,$f6,$00
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208a40).l
	.incbin 37094, 900
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209478(pc,d0.w),d1
	jmp dat_209478(pc,d1.w)
dat_209478:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209482:
	.incbin 38018, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2094da
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2094d2
	moveq #$0,d1
	bra.s loc_2094da
loc_2094d2:
	cmpi.w #$3,d1
	bcs.s loc_2094da
	moveq #$2,d1
loc_2094da:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2094f6
	moveq #$6,d1
loc_2094f6:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209482).l,a1
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
	beq.s loc_209546
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20953e
	moveq #$0,d0
	bra.s loc_209546
loc_20953e:
	cmpi.w #$3,d0
	bcs.s loc_209546
	moveq #$2,d0
loc_209546:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209614
	dbf d0,loc_209546
	bclr.b #$7,(a2)
	bra.s loc_20959c
loc_209558:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209584
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20957c
	moveq #$0,d0
	bra.s loc_209584
loc_20957c:
	cmpi.w #$3,d0
	bcs.s loc_209584
	moveq #$2,d0
loc_209584:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209614
	dbf d0,loc_209584
	bclr.b #$7,(a2)
	bsr.w sub_20730e
	bne.w loc_209620
loc_20959c:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$2098e6,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2095f2
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_2095f2
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_2095f2:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209614:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209558
loc_209620:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209646
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20963e
	moveq #$0,d0
	bra.s loc_209646
loc_20963e:
	cmpi.w #$3,d0
	bcs.s loc_209646
	moveq #$2,d0
loc_209646:
	lea $1(a2),a3
loc_20964a:
	btst.b #$0,-(a3)
	bne.w sub_20370c
	dbf d0,loc_20964a
	tst.b $1(a0)
	bmi.s loc_20967a
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_2096f4
loc_20967a:
	tst.w ($ff190e).l
	bne.s loc_20968a
	move.b ($ff1913).l,$1a(a0)
loc_20968a:
	bra.w sub_203660
	.incbin 38542, 102
loc_2096f4:
	bra.w sub_20370c
	.incbin 38648, 888
loc_209a70:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209a9e(pc,d0.w),d0
	jsr dat_209a9e(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209a9c
	cmpi.w #$5a,($f786).w
	bcs.s loc_209a96
	btst.b #$0,($ff1505).l
	bne.s loc_209a9c
loc_209a96:
	jmp (sub_203660).l
loc_209a9c:
	rts
dat_209a9e:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a078,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209ad2
	move.b #$13,$1a(a0)
loc_209ad2:
	rts
loc_209ad4:
	tst.b ($ff0f01).l
	beq.s loc_209ae2
	jmp (sub_20370c).l
loc_209ae2:
	cmpi.b #$a,$28(a0)
	beq.w loc_209a70
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209b06(pc,d0.w),d0
	jsr dat_209b06(pc,d0.w)
	jsr (sub_203660).l
	jmp (loc_20732e).l
dat_209b06:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a078,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209b54
	tst.b $29(a0)
	bne.s loc_209b54
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209b54:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_209c20
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209b7c
	addq.b #$2,$1a(a0)
loc_209b7c:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209b90
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209b90:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_209bf6
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209bc2
	tst.b $29(a0)
	beq.s loc_209bba
	tst.b ($ff1956).l
	beq.s loc_209bf6
	bra.s loc_209bc2
loc_209bba:
	tst.b ($ff1956).l
	bne.s loc_209bf6
loc_209bc2:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_209c20
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209bf0
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209bf0:
	jsr (sub_205846).l
loc_209bf6:
	rts
	.incbin 39928, 40

sub_209c20:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209c58
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209c50
	moveq #$0,d1
	bra.s loc_209c58
loc_209c50:
	cmpi.w #$3,d1
	bcs.s loc_209c58
	moveq #$2,d1
loc_209c58:
	add.w d1,d0
	rts

sub_209c5c:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209c7e
	tst.b ($ff1956).l
	beq.s loc_209c76
	tst.b $29(a0)
	bne.s loc_209c7e
	rts
loc_209c76:
	tst.b $29(a0)
	beq.s loc_209c7e
	rts
loc_209c7e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208a40).l
	tst.b $28(a0)
	bne.s loc_209ca0
	tst.b ($ff0f01).l
	beq.s loc_209ca0
	jmp (loc_20732e).l
loc_209ca0:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209ad4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209cb8(pc,d0.w),d1
	jmp dat_209cb8(pc,d1.w)
dat_209cb8:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a078,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209d02
	tst.b $29(a0)
	bne.s loc_209d02
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209d02:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209c20
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209d2e
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209d2e:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209d88
	move.b $25(a0),d0
	beq.s loc_209d68
	bsr.w sub_2035a8
	jsr (sub_20672a).l
	tst.w d1
	bpl.w loc_209d76
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209d76
loc_209d68:
	tst.b $1(a0)
	bpl.s loc_209d76
	lea ($d000).w,a1
	bsr.w sub_209c5c
loc_209d76:
	tst.w ($ff190e).l
	bne.s loc_209d88
	lea (dat_209ff0).l,a1
	bsr.w sub_205886
loc_209d88:
	bsr.w sub_203660
	jmp (loc_20732e).l
	.incbin 40338, 606
dat_209ff0:
	.incbin 40944, 586
loc_20a23a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a24e(pc,d0.w),d0
	jsr dat_20a24e(pc,d0.w)
	jmp (sub_203660).l
dat_20a24e:
	.incbin 41550, 146
	tst.b $28(a0)
	bmi.w loc_20a23a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a2f6(pc,d0.w),d0
	jmp dat_20a2f6(pc,d0.w)
dat_20a2f6:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a390,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a326
	move.b #$3,$1a(a0)
	bra.s loc_20a346
loc_20a326:
	tst.w ($ff1588).l
	beq.s loc_20a334
	move.b #$2,$1a(a0)
loc_20a334:
	tst.b $28(a0)
	beq.s loc_20a346
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a346:
	tst.b $28(a0)
	bne.s loc_20a38a
	tst.b $29(a0)
	beq.s loc_20a376
	tst.w ($ff1512).l
	beq.s loc_20a362
	bclr.b #$5,$2(a0)
	bra.s loc_20a38a
loc_20a362:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a38a
	eori.b #$20,$2(a0)
	bra.s loc_20a38a
loc_20a376:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a38a
	move.b #$2,$1a(a0)
loc_20a38a:
	jmp (sub_203660).l
	.incbin 41872, 168

sub_20a438:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a454
	move.l d1,(a3)
loc_20a454:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a47e
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205846).l
loc_20a47e:
	rts
loc_20a480:
	tst.w ($ff1588).l
	beq.s loc_20a4d6
	bsr.w sub_20a6d2
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
	lea (dat_20a832).l,a2
	moveq #$2,d6
	bsr.w sub_20a88a
	bra.w loc_20a530
loc_20a4d6:
	tst.b ($ff1511).l
	beq.s loc_20a4fa
	bpl.s loc_20a4e4
	bsr.w sub_20a67c
loc_20a4e4:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a76c
loc_20a4fa:
	tst.b ($ff150f).l
	beq.s loc_20a530
	bpl.s loc_20a508
	bsr.w sub_20a668
loc_20a508:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a52c
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a52c:
	bsr.w sub_20a762
loc_20a530:
	tst.w ($ff1588).l
	bne.w loc_20a5dc
	tst.b ($ff1510).l
	beq.w loc_20a5dc
	tst.w ($f63a).w
	bne.w loc_20a5dc
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a63a
	tst.b ($f7cc).w
	bne.s loc_20a586
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a586
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a586
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a586
	move.b #$9,(a1)
loc_20a586:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a878
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a882
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a5d8
	move.w #$63,d1
loc_20a5d8:
	bsr.w sub_20a882
loc_20a5dc:
	tst.b ($ff150e).l
	beq.s loc_20a5ee
	clr.b ($ff150e).l
	bsr.w sub_20a858
loc_20a5ee:
	tst.b ($f7d6).w
	beq.s loc_20a638
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a60e
	move.l #$6d400001,d0
loc_20a60e:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a6f0
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a62e
	move.l #$6e800001,d0
loc_20a62e:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a6f0
loc_20a638:
	rts
loc_20a63a:
	btst.b #$7,($ff152e).l
	bne.s loc_20a666
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206c9e
	move.b #$1,($ff150c).l
loc_20a666:
	rts

sub_20a668:
	move.l #$73600002,($c00004).l
	lea dat_20a6ce(pc),a2
	move.w #$2,d2
	bra.s loc_20a698

sub_20a67c:
	lea ($c00000).l,a6
	bsr.w sub_20a858
	move.l #$70600002,($c00004).l
	lea dat_20a6c6(pc),a2
	move.w #$6,d2
loc_20a698:
	lea (dat_23338c).l,a1
loc_20a69e:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a6ba
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a6ae:
	move.l (a3)+,(a6)
	dbf d1,loc_20a6ae
loc_20a6b4:
	dbf d2,loc_20a69e
	rts
loc_20a6ba:
	move.l #$0,(a6)
	dbf d1,loc_20a6ba
	bra.s loc_20a6b4
dat_20a6c6:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a6ce:
	dc.b $ff,$ff,$00,$00

sub_20a6d2:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a84e
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a84e

sub_20a6f0:
	lea (dat_20a82a).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20a700:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a704:
	sub.l d3,d1
	bcs.s loc_20a70c
	addq.w #$1,d2
	bra.s loc_20a704
loc_20a70c:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a716
	move.w #$1,d4
loc_20a716:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a722
	tst.w d6
	bne.s loc_20a754
loc_20a722:
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
loc_20a748:
	addi.l #$400000,d0
	dbf d6,loc_20a700
	rts
loc_20a754:
	moveq #$f,d5
loc_20a756:
	move.l #$0,(a6)
	dbf d5,loc_20a756
	bra.s loc_20a748

sub_20a762:
	lea (dat_20a832).l,a2
	moveq #$2,d6
	bra.s loc_20a774

sub_20a76c:
	lea (dat_20a826).l,a2
	moveq #$5,d6
loc_20a774:
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20a77c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a780:
	sub.l d3,d1
	bcs.s loc_20a788
	addq.w #$1,d2
	bra.s loc_20a780
loc_20a788:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a792
	move.w #$1,d4
loc_20a792:
	tst.w d4
	beq.s loc_20a7c0
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
loc_20a7c0:
	addi.l #$400000,d0
	dbf d6,loc_20a77c
	rts
	.incbin 42956, 32
loc_20a7ec:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a7f0:
	sub.l d3,d1
	bcs.s loc_20a7f8
	addq.w #$1,d2
	bra.s loc_20a7f0
loc_20a7f8:
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
	dbf d6,loc_20a7ec
	rts
dat_20a826:
	dc.b $00,$01,$86,$a0
dat_20a82a:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a832:
	dc.b $00,$00,$00,$64
dat_20a836:
	dc.b $00,$00,$00,$0a
dat_20a83a:
	dc.b $00,$00,$00,$01
dat_20a83e:
	.incbin 43070, 16

sub_20a84e:
	moveq #$3,d6
	lea (dat_20a83e).l,a2
	bra.s sub_20a88a

sub_20a858:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a86e
	moveq #$9,d1
loc_20a86e:
	lea (dat_20a83a).l,a2
	moveq #$0,d6
	bra.s sub_20a88a

sub_20a878:
	lea (dat_20a83a).l,a2
	moveq #$0,d6
	bra.s sub_20a88a

sub_20a882:
	lea (dat_20a836).l,a2
	moveq #$1,d6

sub_20a88a:
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20a892:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a896:
	sub.l d3,d1
	bcs.s loc_20a89e
	addq.w #$1,d2
	bra.s loc_20a896
loc_20a89e:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a8a8
	move.w #$1,d4
loc_20a8a8:
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
	dbf d6,loc_20a892
	rts
	.incbin 43230, 2626
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b32e(pc,d0.w),d1
	jmp dat_20b32e(pc,d1.w)
dat_20b32e:
	dc.b $00,$04,$00,$66
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$8,$19(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	move.b #$18,$34(a0)
	move.b #$48,$38(a0)
	move.b $28(a0),d1
	andi.b #$f,d1
	beq.s loc_20b376
	move.b #$10,$34(a0)
	move.b #$30,$38(a0)
loc_20b376:
	move.b $28(a0),d1
	andi.b #$f0,d1
	ext.w d1
	asl.w #$3,d1
	move.w d1,$36(a0)
	move.b $22(a0),d0
	ror.b #$2,d0
	andi.b #$c0,d0
	move.b d0,$26(a0)
	bsr.w sub_20b39e
	jmp (loc_20732e).l

sub_20b39e:
	moveq #$0,d2
	move.b $38(a0),d2
	move.w d2,d3
	add.w d3,d3
	lea ($d000).w,a1
	move.w $8(a1),d0
	sub.w $32(a0),d0
	add.w d2,d0
	cmp.w d3,d0
	bcc.s loc_20b3d6
	move.w $c(a1),d1
	sub.w $30(a0),d1
	add.w d2,d1
	cmp.w d3,d1
	bcc.s loc_20b3d6
	btst.b #$1,$22(a1)
	beq.s loc_20b3e6
	clr.b $3a(a0)
	rts
loc_20b3d6:
	tst.b $3a(a0)
	beq.s loc_20b3e4
	clr.b $38(a1)
	clr.b $3a(a0)
loc_20b3e4:
	rts
loc_20b3e6:
	tst.b $3a(a0)
	bne.s loc_20b410
	move.b #$1,$3a(a0)
	btst.b #$2,$22(a1)
	bne.s loc_20b3fe
	clr.b $1c(a1)
loc_20b3fe:
	bclr.b #$5,$22(a1)
	move.b #$1,$1d(a1)
	move.b #$1,$38(a1)
loc_20b410:
	move.w $14(a1),d0
	tst.w $36(a0)
	bpl.s loc_20b436
	cmpi.w #$fc00,d0
	ble.s loc_20b428
	move.w #$fc00,$14(a1)
	rts
loc_20b428:
	cmpi.w #$f100,d0
	bge.s loc_20b434
	move.w #$f100,$14(a1)
loc_20b434:
	rts
loc_20b436:
	cmpi.w #$400,d0
	bge.s loc_20b444
	move.w #$400,$14(a1)
	rts
loc_20b444:
	cmpi.w #$f00,d0
	ble.s loc_20b450
	move.w #$f00,$14(a1)
loc_20b450:
	rts
	.incbin 46162, 1968
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bc10(pc,d0.w),d0
	jmp dat_20bc10(pc,d0.w)
dat_20bc10:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c30e,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c2ce).l,a2
loc_20bc5e:
	jsr (sub_2072f8).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c30e,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20bcb0
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20bcb0:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20bc5e
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bcd8
	bge.s loc_20bcce
	neg.w d0
loc_20bcce:
	add.w d0,$a(a0)
	jmp (sub_203660).l
loc_20bcd8:
	addq.b #$4,$24(a0)
	jmp (sub_203660).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bcfc
	bge.s loc_20bcf2
	neg.w d0
loc_20bcf2:
	add.w d0,$8(a0)
	jmp (sub_203660).l
loc_20bcfc:
	addq.b #$4,$24(a0)
	jmp (sub_203660).l
	tst.b $1e(a0)
	beq.s loc_20bd16
	subq.b #$1,$1e(a0)
	jmp (sub_203660).l
loc_20bd16:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bd30
	bge.s loc_20bd26
	neg.w d0
loc_20bd26:
	add.w d0,$a(a0)
	jmp (sub_203660).l
loc_20bd30:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202508).l
	tst.b $1e(a0)
	beq.s loc_20bd52
	subq.b #$1,$1e(a0)
	jmp (sub_203660).l
loc_20bd52:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bd6c
	bge.s loc_20bd62
	neg.w d0
loc_20bd62:
	add.w d0,$8(a0)
	jmp (sub_203660).l
loc_20bd6c:
	jmp (sub_20370c).l
	tst.l ($f680).w
	bne.s loc_20bd86
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_20370c).l
loc_20bd86:
	rts
	.incbin 48520, 1350
dat_20c2ce:
	.incbin 49870, 1728
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c9a8(pc,d0.w),d0
	jsr dat_20c9a8(pc,d0.w)
	jsr (sub_203660).l
	jmp (loc_20732e).l
dat_20c9a8:
	dc.b $00,$04,$01,$00
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20cbba,$4(a0)
	move.w #$498,$2(a0)
	move.b #$3,$18(a0)
	move.w $c(a0),$30(a0)
	clr.w $12(a0)
	clr.w $10(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,d1
	andi.w #$30,d1
	lsr.w #$3,d1
	move.w dat_20ca34(pc,d1.w),d2
	move.w d2,$32(a0)
	move.b d0,d1
	andi.w #$40,d1
	lsr.w #$5,d1
	move.w dat_20ca3c(pc,d1.w),d2
	move.w d2,$36(a0)
	move.w $32(a0),d2
	move.w d0,d3
	lsr.w #$2,d2
	move.w d2,d0
	jsr (sub_200842).l
	muls.w $36(a0),d0
	lsr.l #$8,d0
	add.w $30(a0),d0
	move.w d0,$c(a0)
	move.w d3,d0
	move.w d0,d1
	andi.w #$3,d1
	lsl.w #$1,d1
	move.w dat_20ca2e(pc,d1.w),d1
	jmp dat_20ca2e(pc,d1.w)
dat_20ca2e:
	dc.b $00,$1a,$00,$3e,$00,$1a
dat_20ca34:
	dc.b $00,$00,$01,$00,$02,$00,$03,$00
dat_20ca3c:
	dc.b $00,$20,$00,$30
dat_20ca40:
	dc.b $00,$04,$00,$08,$00,$10,$00,$20
	move.b #$0,$1a(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
	move.b d0,d1
	andi.w #$c,d1
	lsr.w #$1,d1
	move.w dat_20ca40(pc,d1.w),d2
	move.w d2,$34(a0)
	rts
	.incbin 51820, 60
	tst.w $12(a0)
	bpl.s loc_20cab8
	lea ($d000).w,a1
	jsr (sub_208a40).l
loc_20cab8:
	move.l $c(a0),-(a7)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$3,d0
	cmpi.b #$1,d0
	bne.s loc_20cb0e
	btst.b #$7,$3e(a0)
	beq.s loc_20caea
	move.w $c(a0),d0
	subq.b #$1,$3a(a0)
	bcc.w loc_20cb32
	bclr.b #$7,$3e(a0)
	bra.s loc_20cb0e
loc_20caea:
	move.w $32(a0),d0
	cmpi.w #$100,d0
	beq.s loc_20cafc
	cmpi.w #$300,d0
	beq.s loc_20cafc
	bra.s loc_20cb0e
loc_20cafc:
	bset.b #$7,$3e(a0)
	move.b $38(a0),$3a(a0)
	move.w $c(a0),d0
	bra.s loc_20cb32
loc_20cb0e:
	move.w $32(a0),d1
	add.w $34(a0),d1
	andi.w #$3ff,d1
	move.w d1,$32(a0)
	lsr.w #$2,d1
	move.w d1,d0
	jsr (sub_200842).l
	muls.w $36(a0),d0
	lsr.l #$8,d0
	add.w $30(a0),d0
loc_20cb32:
	move.w d0,$c(a0)
	swap d0
	sub.l (a7)+,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	moveq #$0,d1
	move.b $28(a0),d1
	andi.b #$3,d1
	cmpi.b #$1,d1
	bne.s loc_20cb96
	move.w $32(a0),d0
	cmpi.w #$210,d0
	bne.s loc_20cb96
	lea ($d000).w,a1
	jsr (sub_208a40).l
	bne.s loc_20cb68
	rts
loc_20cb68:
	moveq #$0,d1
	move.b $28(a0),d1
	andi.w #$80,d1
	lsr.w #$6,d1
	move.w dat_20cba8(pc,d1.w),d0
	move.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	rts
loc_20cb96:
	tst.w $12(a0)
	bmi.s loc_20cba6
	lea ($d000).w,a1
	jsr (sub_208a40).l
loc_20cba6:
	rts
dat_20cba8:
	.incbin 52136, 134
loc_20cc2e:
	lea dat_20cc80(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cc3a:
	cmp.w (a1)+,d0
	bcs.s loc_20cc42
	addq.b #$2,d1
	bra.s loc_20cc3a
loc_20cc42:
	move.b d1,($ff1574).l
	move.w dat_20cc90(pc,d1.w),d0
	jmp (sub_202508).l

sub_20cc52:
	lea dat_20cc80(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cc5e:
	cmp.w (a1)+,d0
	bcs.s loc_20cc66
	addq.b #$2,d1
	bra.s loc_20cc5e
loc_20cc66:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cc70
	rts
loc_20cc70:
	move.b d1,($ff1574).l
	move.w dat_20cc88(pc,d1.w),d0
	jmp (loc_20253a).l
dat_20cc80:
	dc.b $03,$00,$06,$00,$15,$00,$ff,$ff
dat_20cc88:
	dc.b $00,$07,$00,$08,$00,$09,$00,$0a
dat_20cc90:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06

sub_20cc98:
	move.w #$4ea,d1
	cmpi.b #$e,d0
	beq.s loc_20cca6
	move.w #$4f2,d1
loc_20cca6:
	move.w d1,$2(a0)
	rts
	.incbin 52396, 1244
	cmpi.b #$f8,$28(a0)
	beq.w loc_20d408
	tst.b $28(a0)
	bmi.w loc_20d282
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d1b8(pc,d0.w),d0
	jsr dat_20d1b8(pc,d0.w)
	jsr (sub_203660).l
	move.w $36(a0),d0
	jmp (loc_207332).l
dat_20d1b8:
	.incbin 53688, 202
loc_20d282:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d2d6(pc,d0.w),d0
	jsr dat_20d2d6(pc,d0.w)
	jsr (sub_203660).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20d2c6
	movea.w d1,a1
	tst.b $0(a1)
	beq.s loc_20d2d0
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20d2c6:
	move.w $36(a0),d0
	jmp (loc_207332).l
loc_20d2d0:
	jmp (sub_20370c).l
dat_20d2d6:
	dc.b $00,$04,$00,$5a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$488,$2(a0)
	move.b #$1,$18(a0)
	move.l #$20d3f8,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	btst.b #$0,$28(a0)
	bne.s loc_20d330
	move.b #$1,$1a(a0)
	move.b #$12,$19(a0)
	move.b #$8,$16(a0)
	move.b #$83,$20(a0)
loc_20d330:
	moveq #$0,d5
	move.b $28(a0),d5
	neg.b d5
	cmpi.b #$5,d5
	bcc.s loc_20d368
	cmpi.b #$3,d5
	bcc.s loc_20d346
	bra.s loc_20d382
loc_20d346:
	move.w #$8488,$2(a0)
	move.b #$83,$20(a0)
	tst.b ($ff1956).l
	beq.s loc_20d382
	clr.b $20(a0)
loc_20d35e:
	lea ($d000).w,a1
	jmp (sub_2088f2).l
loc_20d368:
	move.b #$3,$18(a0)
	move.b #$83,$20(a0)
	tst.b ($ff1956).l
	bne.s loc_20d382
	clr.b $20(a0)
	bra.s loc_20d35e
loc_20d382:
	tst.b $1a(a0)
	bne.w loc_20d3e4
	clr.b $20(a0)
	lea ($d000).w,a1
	jsr (sub_208a40).l
	beq.s loc_20d3e2
	btst.b #$3,$22(a0)
	beq.s loc_20d3e2
	tst.b ($ff1521).l
	bne.s loc_20d3e2
	tst.b ($ff151f).l
	bne.s loc_20d3e2
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20d3e0
	tst.w $30(a0)
	bne.s loc_20d3e0
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206bf0).l
loc_20d3e0:
	movea.l (a7)+,a0
loc_20d3e2:
	rts
loc_20d3e4:
	btst.b #$7,$1(a0)
	beq.s loc_20d3f6
	lea ($d000).w,a1
	jsr (sub_208a40).l
loc_20d3f6:
	rts
	.incbin 54264, 16
loc_20d408:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d422(pc,d0.w),d0
	jsr dat_20d422(pc,d0.w)
	jsr (sub_203660).l
	jmp (loc_20732e).l
dat_20d422:
	.incbin 54306, 1458
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d9e8(pc,d0.w),d0
	jsr dat_20d9e8(pc,d0.w)
	jmp (sub_203660).l
dat_20d9e8:
	.incbin 55784, 3778
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e8d0(pc,d0.w),d0
	jsr dat_20e8d0(pc,d0.w)
	jsr (sub_203660).l
	tst.b $28(a0)
	bmi.s loc_20e8ce
	move.w $2e(a0),d0
	jmp (loc_207332).l
loc_20e8ce:
	rts
dat_20e8d0:
	.incbin 59600, 1074
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ed1c(pc,d0.w),d0
	jsr dat_20ed1c(pc,d0.w)
	jsr (sub_203660).l
	jmp (loc_20732e).l
dat_20ed1c:
	.incbin 60700, 1402
	lea ($d000).w,a1
	jsr (sub_208a3a).l
	lea ($f7e0).w,a2
	moveq #$0,d0
	move.b $28(a0),d0
	tst.b $0(a2,d0.w)
	bpl.s loc_20f2b2
	bra.s loc_20f2ce
loc_20f2b2:
	move.w #$fff8,d0
	move.w #$10,d1
	move.w #$fffd,d2
	move.w #$7b,d3
	lea ($d000).w,a6
	bsr.w sub_20f36a
	bcs.s loc_20f2da
	rts
loc_20f2ce:
	addq.b #$2,$24(a0)
	move.w #$5,$2a(a0)
	rts
loc_20f2da:
	addq.b #$6,$24(a0)
	move.w #$5,$1a(a0)
	rts
	.incbin 62182, 132

sub_20f36a:
	tst.w $12(a6)
	bpl.s loc_20f38a
	move.w $c(a6),d4
	sub.w $c(a0),d4
	sub.w d2,d4
	sub.w d3,d4
	bcc.s loc_20f38a
	move.w $8(a6),d4
	sub.w $8(a0),d4
	sub.w d0,d4
	sub.w d1,d4
loc_20f38a:
	rts
	.incbin 62348, 1332

sub_20f8c0:
	jsr (sub_2060fa).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fa18).l,a1
	move.w #$3f,d6
	bsr.w sub_20f9d4
	bne.s loc_20f902
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4440,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20f902:
	lea (dat_20fa2a).l,a1
	move.w #$3f,d6
	bsr.w sub_20f9d4
	bne.s loc_20f936
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4540,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20f936:
	lea (dat_20fa3c).l,a1
	move.w #$7f,d6
	bsr.w sub_20f9d4
	bne.s loc_20f96a
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4640,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20f96a:
	lea (dat_20fa4e).l,a1
	move.w #$1f,d6
	bsr.w sub_20f9d4
	bne.s loc_20f99e
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4840,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20f99e:
	lea (dat_20fa6c).l,a1
	move.w #$1f,d6
	bsr.w sub_20f9d4
	bne.s loc_20f9d2
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$48c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20f9d2:
	rts

sub_20f9d4:
	subq.b #$1,(a2)
	bpl.w loc_20fa0c
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20f9ea
	moveq #$0,d0
loc_20f9ea:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20f9fa:
	move.l (a1)+,(a3)+
	dbf d6,loc_20f9fa
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fa0c:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fa18:
	.incbin 64024, 18
dat_20fa2a:
	.incbin 64042, 18
dat_20fa3c:
	.incbin 64060, 18
dat_20fa4e:
	.incbin 64078, 30
dat_20fa6c:
	.incbin 64108, 26
dat_20fa86:
	.incbin 64134, 16
dat_20fa96:
	.incbin 64150, 506
	btst.b #$2,$29(a0)
	beq.s loc_20fca6
	cmp.b $30(a0),d0
	bne.s loc_20fca4
	jsr (sub_2038cc).l
loc_20fca4:
	rts
loc_20fca6:
	andi.b #$1,d0
	cmp.b $30(a0),d0
	bne.s loc_20fcb6
	jsr (sub_2038cc).l
loc_20fcb6:
	rts
	.incbin 64696, 18
	lea dat_20fcd8(pc),a2
	move.b #$b,$3d(a0)
	bra.w loc_20fd04
dat_20fcd8:
	.incbin 64728, 44
loc_20fd04:
	tst.b $3a(a0)
	bne.s loc_20fd4a
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea $0(a2,d0.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$3a(a0)
	move.b (a2)+,d1
	move.b (a2)+,d0
	ext.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	bclr.b #$0,$1(a0)
	bclr.b #$0,$22(a0)
	tst.b d1
	beq.s loc_20fd4a
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20fd4a:
	subq.b #$1,$3a(a0)
	bne.s loc_20fd62
	addq.b #$1,$3c(a0)
	move.b $3c(a0),d0
	cmp.b $3d(a0),d0
	bcs.s loc_20fd62
	clr.b $3c(a0)
loc_20fd62:
	rts
	lea dat_20fd72(pc),a2
	move.b #$8,$3d(a0)
	bra.w loc_20fd04
dat_20fd72:
	.incbin 64882, 62
	lea dat_20fdbe(pc),a2
	move.b #$4,$3d(a0)
	bra.w loc_20fd04
dat_20fdbe:
	.incbin 64958, 16
	move.b $28(a0),d0
	subq.b #$4,d0
	bcc.s loc_20fdd8
	moveq #$0,d0
loc_20fdd8:
	move.b d0,$1a(a0)
	rts
	move.b $28(a0),d0
	subq.b #$6,d0
	bcc.s loc_20fde8
	moveq #$0,d0
loc_20fde8:
	move.b d0,$1a(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	rts
	.incbin 65018, 154
	jmp (loc_20634a).l
	.incbin 65178, 65894
dat_220000:
	.incbin 131072, 61872
dat_22f1b0:
	.incbin 192944, 16476
dat_23320c:
	.incbin 209420, 384
dat_23338c:
	.incbin 209804, 1536
dat_23398c:
	.incbin 211340, 256
dat_233a8c:
	.incbin 211596, 4096
dat_234a8c:
	.incbin 215692, 4696
dat_235ce4:
	.incbin 220388, 41756
