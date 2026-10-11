; R81A__.MMD
; disassembled from the disc; code only, data comes from data/R81A__.MMD at build time
	.file "R81A__.MMD", 262144

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
	lea (dat_23634a).l,a2
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
	lea (dat_23644a).l,a2
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
	lea (dat_23634a).l,a2
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
	lea (dat_23644a).l,a2
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
	lea (dat_23634a).l,a2
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
	lea (dat_23744a).l,a2
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
	lea (dat_23634a).l,a2
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
	lea (dat_23744a).l,a2
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
	bsr.w sub_207106
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
	lea (dat_20eb60).l,a2
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
	bsr.w sub_202a30
	bset.b #$2,($f754).w
	bsr.w sub_20344c
	bsr.w sub_203352
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
	jsr (sub_20e930).l
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
	jsr (sub_205852).l
	bsr.w sub_207106
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
	jsr (sub_20711c).l
	jsr (sub_20358c).l
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
	bsr.w sub_202a30
loc_2019d4:
	jsr (sub_203736).l
	tst.w ($ff190e).l
	bne.s loc_2019e6
	bsr.w sub_200184
loc_2019e6:
	jsr (sub_20bd22).l
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
	jmp (sub_205852).l
dat_201b6c:
	.incbin 7020, 38

sub_201b92:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_2338b4).l,a1
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
	jmp (sub_205852).l
loc_201c20:
	tst.b ($ff151f).l
	bne.s loc_201c16
	tst.b ($ff1520).l
	bne.s loc_201c16
	move.w #$90,d0
	jmp (sub_205852).l
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
	jmp (sub_205852).l
loc_201c5c:
	tst.b ($ff151f).l
	bne.s loc_201c52
	tst.b ($ff1520).l
	bne.s loc_201c52
	move.w #$91,d0
	jmp (sub_205852).l
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
	bsr.w sub_205774
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
	jsr (sub_20e930).l
	jsr (sub_2022f2).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f48
	bsr.w sub_2025e6
	jmp (loc_209852).l
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
	bsr.w sub_202f48
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
	bsr.w sub_205774
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
	lea (dat_20eb70).l,a1
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
	lea (dat_20eb70).l,a1
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
	lea (dat_20eb70).l,a1
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
	dc.b $00,$04,$00,$00,$1e,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_202944:
	.incbin 10564, 32
loc_202964:
	tst.b ($ff1522).l
	beq.s loc_202984
	jsr (sub_2063de).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202982
	moveq #$0,d0
loc_202982:
	bra.s loc_2029c0
loc_202984:
	lea (dat_2029fc).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2029a6
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202944).l,a1
	adda.w d0,a1
	bra.s loc_2029b0
loc_2029a6:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2029b0:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2029c0:
	subi.w #$a0,d1
	bcc.s loc_2029c8
	moveq #$0,d1
loc_2029c8:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2029d2
	move.w d2,d1
loc_2029d2:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2029de
	moveq #$0,d0
loc_2029de:
	cmp.w ($f72e).w,d0
	blt.s loc_2029e8
	move.w ($f72e).w,d0
loc_2029e8:
	move.w d0,($f704).w
	bsr.w sub_202a04
	lea (dat_202a00).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2029fc:
	dc.b $00,$30,$06,$a0
dat_202a00:
	dc.b $7f,$7f,$7f,$7f

sub_202a04:
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

sub_202a30:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202a3c
	rts
loc_202a3c:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202bbe
	bsr.w sub_202c5e
	bsr.w sub_2034f4
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202ee8
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202eb4
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e80
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202e50
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
	bsr.w sub_202b38
	move.w ($f708).w,d0
	neg.w d0
	moveq #$f,d6
loc_202ae0:
	move.w d0,(a1)+
	dbf d6,loc_202ae0
	move.w ($f710).w,d0
	neg.w d0
	moveq #$1b,d6
loc_202aee:
	move.w d0,(a1)+
	dbf d6,loc_202aee
	bsr.w sub_202b38
	move.w ($f708).w,d0
	neg.w d0
	moveq #$b,d6
loc_202b00:
	move.w d0,(a1)+
	dbf d6,loc_202b00
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202b0e:
	move.w d0,(a1)+
	dbf d6,loc_202b0e
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b7c
dat_202b32:
	dc.b $03,$04,$02,$00,$00,$00

sub_202b38:
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
	move.w ($f718).w,d3
	moveq #$4,d6
	adda.w #$1c,a1
loc_202b5c:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b32(pc,d6.w),d5
loc_202b66:
	move.w d0,-(a1)
	dbf d5,loc_202b66
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b5c
	adda.w #$1c,a1
	rts
loc_202b7c:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b8a(pc,d2.w)
loc_202b88:
	move.w (a2)+,d0
loc_202b8a:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b88
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
	dbf d1,loc_202b88
	rts

sub_202bbe:
	move.w ($f700).w,d4
	bsr.s sub_202bf2
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bf0
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202bea
	bset.b #$2,($f754).w
	rts
loc_202bea:
	bset.b #$3,($f754).w
loc_202bf0:
	rts

sub_202bf2:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202c04
	bcs.s loc_202c34
	bra.s loc_202c0a
loc_202c04:
	clr.w ($f73a).w
	rts
loc_202c0a:
	cmpi.w #$10,d0
	blt.s loc_202c14
	move.w #$10,d0
loc_202c14:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202c22
	move.w ($f72a).w,d0
loc_202c22:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c34:
	cmpi.w #$fff0,d0
	bge.s loc_202c3e
	move.w #$fff0,d0
loc_202c3e:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202c22
	move.w ($f728).w,d0
	bra.s loc_202c22
	.incbin 11342, 16

sub_202c5e:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c72
	subq.w #$5,d0
loc_202c72:
	btst.b #$1,$22(a6)
	beq.s loc_202c92
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202cde
	subi.w #$40,d0
	bcc.s loc_202cde
	tst.b ($f75c).w
	bne.s loc_202cf0
	bra.s loc_202c9e
loc_202c92:
	sub.w ($f73e).w,d0
	bne.s loc_202ca4
	tst.b ($f75c).w
	bne.s loc_202cf0
loc_202c9e:
	clr.w ($f73c).w
	rts
loc_202ca4:
	cmpi.w #$60,($f73e).w
	bne.s loc_202ccc
	move.w $14(a6),d1
	bpl.s loc_202cb4
	neg.w d1
loc_202cb4:
	cmpi.w #$800,d1
	bcc.s loc_202cde
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d3e
	cmpi.w #$fffa,d0
	blt.s loc_202d08
	bra.s loc_202cf6
loc_202ccc:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d3e
	cmpi.w #$fffe,d0
	blt.s loc_202d08
	bra.s loc_202cf6
loc_202cde:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d3e
	cmpi.w #$fff0,d0
	blt.s loc_202d08
	bra.s loc_202cf6
loc_202cf0:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202cf6:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d48
	bra.w loc_202d14
loc_202d08:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d14:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d6c
	cmpi.w #$ff00,d1
	bgt.s loc_202d38
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d6c
loc_202d38:
	move.w ($f72c).w,d1
	bra.s loc_202d6c
loc_202d3e:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d48:
	cmp.w ($f72e).w,d1
	blt.s loc_202d6c
	subi.w #$800,d1
	bcs.s loc_202d68
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d6c
loc_202d68:
	move.w ($f72e).w,d1
loc_202d6c:
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
	bne.s loc_202dae
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202da8
	bset.b #$0,($f754).w
	rts
loc_202da8:
	bset.b #$1,($f754).w
loc_202dae:
	rts
	dc.b $24,$38,$f7,$08,$20,$02,$d0,$84
	dc.b $21,$c0,$f7,$08
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202de4
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202dde
	bset.b #$2,($f756).w
	bra.s loc_202de4
loc_202dde:
	bset.b #$3,($f756).w
loc_202de4:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e18
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e12
	bset.b #$0,($f756).w
	rts
loc_202e12:
	bset.b #$1,($f756).w
loc_202e18:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e4e
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e48
	bset.b #$4,($f756).w
	rts
loc_202e48:
	bset.b #$5,($f756).w
loc_202e4e:
	rts

sub_202e50:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e7e
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e78
	bset.b #$0,($f756).w
	rts
loc_202e78:
	bset.b #$1,($f756).w
loc_202e7e:
	rts

sub_202e80:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202eb2
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202eac
	bset.b d6,($f756).w
	bra.s loc_202eb2
loc_202eac:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202eb2:
	rts

sub_202eb4:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202ee6
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202ee0
	bset.b d6,($f758).w
	bra.s loc_202ee6
loc_202ee0:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202ee6:
	rts

sub_202ee8:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202f1a
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f14
	bset.b d6,($f75a).w
	bra.s loc_202f1a
loc_202f14:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202f1a:
	rts
	.incbin 12060, 44

sub_202f48:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203006
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030ec
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030ee
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203004
	bclr.b #$0,(a2)
	beq.s loc_202fba
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030f0
loc_202fba:
	bclr.b #$1,(a2)
	beq.s loc_202fd4
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331a
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030f0
loc_202fd4:
	bclr.b #$2,(a2)
	beq.s loc_202fea
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203146
loc_202fea:
	bclr.b #$3,(a2)
	beq.s loc_203004
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20331a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203146
loc_203004:
	rts

sub_203006:
	lea (dat_2033d2).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203022
	bclr.b #$1,(a2)
	beq.s loc_20306c
	move.w #$e0,d4
loc_203022:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20309c(pc,d0.w),a3
	beq.s loc_203054
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20331a
	movem.l (a7)+,d4-d5
	bsr.w sub_2030f0
	movea.l (a7)+,a0
	bra.s loc_20306c
loc_203054:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20331c
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20311c
	movea.l (a7)+,a0
loc_20306c:
	tst.b (a2)
	bne.s loc_203072
	rts
loc_203072:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203086
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203086:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2030ac
dat_20309c:
	.incbin 12444, 16
loc_2030ac:
	moveq #$f,d6
	move.l #$800000,d7
loc_2030b4:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2030e0
	btst.b d0,(a2)
	beq.s loc_2030e0
	add.w d0,d0
	movea.l dat_20309c(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f2
	movem.l (a7)+,d4-d5
	bsr.w sub_20331a
	bsr.w sub_203174
	movem.l (a7)+,d4-d5/a0
loc_2030e0:
	addi.w #$10,d4
	dbf d6,loc_2030b4
	clr.b (a2)
	rts

sub_2030ec:
	rts

sub_2030ee:
	rts

sub_2030f0:
	moveq #$15,d6

sub_2030f2:
	move.l #$800000,d7
	move.l d0,d1
loc_2030fa:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f2
	move.l d1,d0
	bsr.w sub_203174
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030fa
	rts

sub_20311c:
	move.l #$800000,d7
	move.l d0,d1
loc_203124:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f4
	move.l d1,d0
	bsr.w sub_203174
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203124
	rts

sub_203146:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203150:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f2
	move.l d1,d0
	bsr.w sub_203174
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203150
	rts

sub_203174:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2031b0
	btst.b #$3,(a0)
	bne.s loc_203190
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203190:
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
loc_2031b0:
	btst.b #$3,(a0)
	bne.s loc_2031d2
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
loc_2031d2:
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

sub_2031f2:
	add.w (a3),d5

sub_2031f4:
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
	beq.s loc_203242
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
loc_203242:
	rts
	.incbin 12868, 122
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_203320
	bsr.w sub_203174
	movem.l (a7)+,d3-d5
	movea.l (a7)+,a0
	rts
	.incbin 13014, 66
	rts

sub_20331a:
	add.w (a3),d5

sub_20331c:
	add.w $4(a3),d4

sub_203320:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13110, 28

sub_203352:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20337c
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2033a4

sub_20337c:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203380:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20331a
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030f2
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203380
	rts
loc_2033a4:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033a8:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033d2).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203414
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2033a8
	rts
dat_2033d2:
	.incbin 13266, 50
dat_203404:
	.incbin 13316, 16

sub_203414:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203404(pc,d0.w),a3
	beq.s loc_203436
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20331a
	movem.l (a7)+,d4-d5
	bsr.w sub_2030f0
	bra.s loc_20344a
loc_203436:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20331c
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20311c
loc_20344a:
	rts

sub_20344c:
	moveq #$0,d0
	lea (dat_20eb60).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023da
	movea.l (a2)+,a0
	bsr.w sub_2034a6
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200580
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203490
	jmp (loc_20bcfe).l
loc_203490:
	btst.b #$1,($ff151c).l
	beq.s loc_2034a4
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2034a4
	bsr.w sub_202508
loc_2034a4:
	rts

sub_2034a6:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2034b0:
	move.l d0,(a3)+
	dbf d1,loc_2034b0
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2034c6
	lea ($a040).w,a3
	moveq #$2,d1

sub_2034c6:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2386a2).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034e0:
	move.w d1,d0
	movea.l a3,a0
loc_2034e4:
	move.b (a1)+,(a0)+
	dbf d0,loc_2034e4
	lea $80(a3),a3
	dbf d2,loc_2034e0
	rts

sub_2034f4:
	lea ($d000).w,a6
	bsr.w sub_203550
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20352a
	bcc.s loc_20352c
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203520
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203520:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20352a:
	rts
loc_20352c:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203544
	btst.b #$1,$22(a6)
	beq.s loc_203544
	add.w d1,d1
	add.w d1,d1
loc_203544:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts

sub_203550:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203562(pc,d0.w),d0
	jmp dat_203562(pc,d0.w)
dat_203562:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$710,($f726).w
	rts
	.incbin 13680, 28

sub_20358c:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203594:
	move.b (a0),d0
	beq.s loc_2035aa
	add.w d0,d0
	add.w d0,d0
	lea (dat_2039ae).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2035aa:
	lea $40(a0),a0
	dbf d7,loc_203594
	rts

sub_2035b4:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2035f2
	bpl.s loc_2035e4
	btst.b #$1,$2c(a0)
	beq.s loc_2035e4
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2035f2
loc_2035e4:
	btst.b #$2,$2c(a0)
	bne.s loc_2035f2
	addi.w #$38,$12(a0)
loc_2035f2:
	tst.w $12(a0)
	bmi.s loc_203606
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203606
	move.w #$1000,$12(a0)
loc_203606:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203616:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203652
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203652
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203650
	neg.w d1
loc_203650:
	add.w d1,d0
loc_203652:
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

sub_20366c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2036dc
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2036f8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2036f8
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2036b6
	cmpi.w #$800,d3
	bcs.s loc_2036c8
	subi.w #$800,d3
	bra.s loc_2036c8
loc_2036b6:
	cmpi.w #$700,($f704).w
	bcs.s loc_2036c8
	cmpi.w #$100,d3
	bcc.s loc_2036c8
	addi.w #$800,d3
loc_2036c8:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2036f8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2036f8
loc_2036dc:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2036f8
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2036f8:
	rts
	.incbin 14074, 30

sub_203718:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_20371e:
	move.l d1,(a1)+
	dbf d0,loc_20371e
	rts
dat_203726:
	.incbin 14118, 16

sub_203736:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203742:
	tst.w (a4)
	beq.w loc_203802
	moveq #$2,d6
loc_20374a:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2037fa
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2037b0
	movea.l dat_203726(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203794
	cmpi.w #$800,d2
	bcs.s loc_2037a6
	subi.w #$800,d2
	bra.s loc_2037a6
loc_203794:
	cmpi.w #$700,$4(a1)
	bcs.s loc_2037a6
	cmpi.w #$100,d2
	bcc.s loc_2037a6
	addi.w #$800,d2
loc_2037a6:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2037d2
loc_2037b0:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2037d2
	.incbin 14266, 24
loc_2037d2:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2037f0
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2037f4
loc_2037f0:
	bsr.w sub_203824
loc_2037f4:
	bset.b #$7,$1(a0)
loc_2037fa:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_20374a
loc_203802:
	lea $80(a4),a4
	dbf d7,loc_203742
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_20381c
	move.l #$0,(a2)
	rts
loc_20381c:
	move.b #$0,-$5(a2)
	rts

sub_203824:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_20386a
	btst.l #$1,d4
	bne.w loc_2038b8
loc_203836:
	cmpi.b #$50,d5
	beq.s loc_203868
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
	bne.s loc_203862
	addq.w #$1,d0
loc_203862:
	move.w d0,(a2)+
	dbf d1,loc_203836
loc_203868:
	rts
loc_20386a:
	btst.l #$1,d4
	bne.w loc_2038fe
loc_203872:
	cmpi.b #$50,d5
	beq.s loc_2038b6
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
	bne.s loc_2038b0
	addq.w #$1,d0
loc_2038b0:
	move.w d0,(a2)+
	dbf d1,loc_203872
loc_2038b6:
	rts
loc_2038b8:
	cmpi.b #$50,d5
	beq.s loc_2038fc
	move.b (a1)+,d0
	move.b (a1),d4
	ext.w d0
	neg.w d0
	lsl.b #$3,d4
	andi.w #$18,d4

sub_2038cc:
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
	bne.s loc_2038f6
	addq.w #$1,d0
loc_2038f6:
	move.w d0,(a2)+
	dbf d1,loc_2038b8
loc_2038fc:
	rts
loc_2038fe:
	cmpi.b #$50,d5
	beq.s loc_203950
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
	bne.s loc_20394a
	addq.w #$1,d0
loc_20394a:
	move.w d0,(a2)+
	dbf d1,loc_2038fe
loc_203950:
	rts
	.incbin 14674, 92
dat_2039ae:
	.incbin 14766, 274

sub_203ac0:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203ad2
	move.w #$0,(a1)
	rts
loc_203ad2:
	tst.w (a1)
	bne.s loc_203adc
	move.b #$1,$1(a1)
loc_203adc:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203b26
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203b18
	neg.w $10(a0)
loc_203b18:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205852
loc_203b26:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203b44
	cmpa.w #$d040,a0
	beq.s loc_203b44
	tst.b ($ff1906).l
	beq.s loc_203b44
	jmp (loc_206da8).l
loc_203b44:
	move.b $2a(a0),d0
	beq.s loc_203b6e
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203b60
	cmpi.b #$2d,d0
	bcs.s loc_203b6a
	move.b #$2d,d0
	bra.s loc_203b6a
loc_203b60:
	cmpi.b #$1e,d0
	bcs.s loc_203b6a
	move.b #$1e,d0
loc_203b6a:
	move.b d0,$2a(a0)
loc_203b6e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203b7c(pc,d0.w),d1
	jmp dat_203b7c(pc,d1.w)
dat_203b7c:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203b86:
	tst.b ($d300).w
	bne.s loc_203bc4
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203bc4:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203bec
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203bec:
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203c20:
	tst.b ($ff1506).l
	bne.s loc_203c86
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203c86
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203c8a
	cmpi.b #$2f,d1
	bne.s loc_203c88
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203c86
	tst.b $2c(a0)
	beq.s loc_203c86
	jsr (sub_207318).l
	bne.s loc_203c86
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203c7e
	moveq #$0,d0
loc_203c7e:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203c86:
	rts
loc_203c88:
	rts

sub_203c8a:
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

sub_203cb0:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203cbc
	neg.w d0
loc_203cbc:
	btst.b #$1,$2c(a0)
	beq.s loc_203ccc
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203cf4
loc_203ccc:
	cmpi.w #$600,d0
	bcs.s loc_203cf4
	tst.w $14(a0)
	bpl.s loc_203ce6
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203d02
	move.w #$e0,d1
	bra.s loc_203d02
loc_203ce6:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203d02
	move.w #$60,d1
	bra.s loc_203d02
loc_203cf4:
	cmpi.w #$a0,d1
	beq.s loc_203d02
	bcc.s loc_203d00
	addq.w #$2,d1
	bra.s loc_203d02
loc_203d00:
	subq.w #$2,d1
loc_203d02:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203cb0
	bsr.w sub_203c20
	tst.w ($ff1588).l
	beq.s loc_203d28
	btst.b #$4,($f605).w
	beq.s loc_203d28
	move.b #$1,($ff1906).l
	rts
loc_203d28:
	tst.b ($f7cc).w
	bne.s loc_203d34
	move.w ($f604).w,($f602).w
loc_203d34:
	btst.b #$0,$2c(a0)
	beq.s loc_203d58
	cmpi.b #$6,($ff1506).l
	bne.s loc_203d52
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203d70
loc_203d52:
	bsr.w sub_20403a
	bra.s loc_203d70
loc_203d58:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203db6(pc,d0.w),d1
	jsr dat_203db6(pc,d1.w)
	jsr (sub_20630a).l
loc_203d70:
	bsr.s sub_203dc4
	bsr.w sub_203e84
	bsr.w sub_203e9e
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203d98
	tst.b $1c(a0)
	bne.s loc_203d98
	move.b $1d(a0),$1c(a0)
loc_203d98:
	bsr.w sub_205242
	tst.b $2c(a0)
	bmi.s loc_203db0
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203db0
	jsr (sub_2068ae).l
loc_203db0:
	bsr.w sub_2050f8
	rts
dat_203db6:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203dc4:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203de8
	move.w $30(a0),d0
	beq.s loc_203dda
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203de8
loc_203dda:
	btst.b #$6,$2c(a0)
	bne.s loc_203de8
	jsr (sub_20366c).l
loc_203de8:
	tst.b ($ff151f).l
	beq.s loc_203e2c
	tst.w $32(a0)
	beq.s loc_203e2c
	subq.w #$1,$32(a0)
	bne.s loc_203e2c
	tst.b ($ff1520).l
	bne.s loc_203e24
	tst.b ($ff1958).l
	bne.s loc_203e24
	tst.b ($ff152e).l
	bne.s loc_203e1e
	move.w #$e,d0
	jsr (sub_205852).l
loc_203e1e:
	jsr (sub_201b32).l
loc_203e24:
	move.b #$0,($ff151f).l
loc_203e2c:
	tst.b ($ff1520).l
	beq.s loc_203e82
	tst.w $34(a0)
	beq.s loc_203e82
	subq.w #$1,$34(a0)
	bne.s loc_203e82
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_203e7a
	tst.b ($ff1958).l
	bne.s loc_203e7a
	tst.b ($ff152e).l
	bne.s loc_203e74
	move.w #$e,d0
	jsr (sub_205852).l
loc_203e74:
	jsr (sub_201b32).l
loc_203e7a:
	move.b #$0,($ff1520).l
loc_203e82:
	rts

sub_203e84:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_203e9e:
	cmpi.b #$2,($ff1506).l
	beq.s loc_203eaa
loc_203ea8:
	rts
loc_203eaa:
	cmpi.b #$1,($ff1507).l
	bne.s loc_203ebc
	cmpi.w #$c8,$8(a0)
	bcs.s loc_203ea8
loc_203ebc:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_203f00
	bset.b #$6,$22(a0)
	bne.s loc_203ea8
	bsr.w sub_205b56
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_203ea8
	bra.s loc_203f38
loc_203f00:
	tst.w $12(a0)
	beq.s loc_203f08
	bpl.s loc_203ea8
loc_203f08:
	bclr.b #$6,$22(a0)
	beq.s loc_203ea8
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_203ea8
	cmpi.w #$f000,$12(a0)
	bgt.s loc_203f38
	move.w #$f000,$12(a0)
loc_203f38:
	jsr (sub_207318).l
	bne.s loc_203f4c
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_203f4c:
	rts

sub_203f4e:
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
	bcs.s loc_204028
	move.l #$50000,d0
loc_204028:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20403a:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204060
	tst.b ($ff152e).l
	beq.s loc_204056
	cmpi.b #$2,($ff152e).l
	bne.s loc_204060
loc_204056:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204110
loc_204060:
	tst.b $2a(a0)
	bne.w loc_20411e
	tst.b ($f784).w
	beq.w loc_20411e
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20407e
	neg.w d0
loc_20407e:
	tst.w ($f786).w
	bne.s loc_20408a
	move.w #$1,($f786).w
loc_20408a:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2040a0
	move.b #$1,($ff1502).l
	bra.w loc_20584e
loc_2040a0:
	cmpi.w #$d2,d1
	bcs.s loc_2040f4
	cmpi.b #$2,($ff1522).l
	beq.s loc_2040f2
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2040ca
	move.w #$82,d0
	jsr (sub_205852).l
	moveq #$0,d0
loc_2040ca:
	add.b ($f784).w,d0
	bpl.s loc_2040d4
	moveq #$0,d0
	bra.s loc_2040dc
loc_2040d4:
	cmpi.b #$3,d0
	bcs.s loc_2040dc
	moveq #$2,d0
loc_2040dc:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_203f4e
	move.b #$2,($ff1522).l
loc_2040f2:
	rts
loc_2040f4:
	cmpi.w #$5a,d1
	bcc.s loc_20410c
	cmp.w d2,d0
	bcc.w loc_203b86
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20410c:
	cmp.w d2,d0
	bcc.s loc_20411e
loc_204110:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20411e:
	rts
	bsr.w sub_203ac0
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204150
	tst.b ($ff195b).l
	beq.s loc_20413e
	cmpi.b #$79,$1a(a0)
	bne.s loc_20417a
	bra.s loc_204146
loc_20413e:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20417a
loc_204146:
	bsr.w sub_2049e2
	jmp (sub_2035b4).l
loc_204150:
	bsr.w sub_204228
	bsr.w sub_20403a
	bsr.w sub_204acc
	bsr.w sub_204bf8
	bsr.w sub_20429c
	bsr.w sub_204a4e
	bsr.w sub_2049e2
	jsr (sub_203616).l
	bsr.w sub_200c42
	bsr.w sub_204c76
loc_20417a:
	rts
	tst.b ($f7c7).w
	bne.s loc_204196
	cmpi.b #$15,$1c(a0)
	beq.s loc_204196
	tst.w $12(a0)
	bmi.s loc_204196
	move.b #$0,$1c(a0)
loc_204196:
	bsr.w sub_204228
	bsr.w sub_20403a
	bsr.w sub_204bb6
	bsr.w sub_204902
	bsr.w sub_2049e2
	jsr (sub_2035b4).l
	btst.b #$6,$22(a0)
	beq.s loc_2041be
	subi.w #$28,$12(a0)
loc_2041be:
	bsr.w sub_204cc0
	bsr.w sub_204ce4
	rts
	bsr.w sub_204228
	bsr.w sub_20403a
	bsr.w sub_204acc
	bsr.w sub_204c34
	bsr.w sub_20473c
	bsr.w sub_2049e2
	tst.b $2a(a0)
	bne.s loc_2041ec
	jsr (sub_203616).l
loc_2041ec:
	bsr.w sub_200c42
	bsr.w sub_204c76
	rts
	bsr.w sub_204228
	bsr.w sub_20403a
	bsr.w sub_204bb6
	bsr.w sub_204902
	bsr.w sub_2049e2
	jsr (sub_2035b4).l
	btst.b #$6,$22(a0)
	beq.s loc_20421e
	subi.w #$28,$12(a0)
loc_20421e:
	bsr.w sub_204cc0
	bsr.w sub_204ce4
	rts

sub_204228:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204294
	tst.w ($ff1506).l
	bne.s loc_204294
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204296).l,a2
loc_20425c:
	move.b (a2)+,d0
	bmi.s loc_20426c
	cmp.b d0,d1
	bne.s loc_20425c
	bset.b #$1,$2c(a0)
	rts
loc_20426c:
	bclr.b #$1,$2c(a0)
	beq.s loc_204294
	tst.w $12(a0)
	bpl.s loc_204294
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204294
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204294
	neg.w $10(a0)
loc_204294:
	rts
dat_204296:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20429c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2045c6
	tst.w $3e(a0)
	bne.w loc_204576
	btst.b #$2,($f602).w
	beq.s loc_2042c4
	bsr.w sub_204656
loc_2042c4:
	btst.b #$3,($f602).w
	beq.s loc_2042d0
	bsr.w sub_2046cc
loc_2042d0:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204576
	tst.w $14(a0)
	beq.s loc_2042f0
	tst.b $2a(a0)
	beq.w loc_204576
	bra.s loc_2042fc
loc_2042f0:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2042fc:
	btst.b #$3,$22(a0)
	beq.s loc_20434e
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2043a6
	cmpi.b #$1e,$0(a1)
	bne.s loc_20432e
	move.b #$0,$1c(a0)
	bra.w loc_204576
loc_20432e:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20438a
	cmp.w d2,d1
	bge.s loc_204378
	bra.s loc_2043a6
loc_20434e:
	jsr (sub_206612).l
	cmpi.w #$c,d1
	blt.s loc_2043a6
	move.w #$ab,d0
	jsr (sub_20233e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204382
loc_204378:
	btst.b #$0,$22(a0)
	bne.s loc_204392
	bra.s loc_20439c
loc_204382:
	cmpi.b #$3,$37(a0)
	bne.s loc_2043a6
loc_20438a:
	btst.b #$0,$22(a0)
	bne.s loc_20439c
loc_204392:
	move.b #$32,$1c(a0)
	bra.w loc_204576
loc_20439c:
	move.b #$6,$1c(a0)
	bra.w loc_204576
loc_2043a6:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2043ba
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2043ba:
	btst.b #$7,($f788).w
	bne.w loc_2044be
	btst.b #$6,($f788).w
	bne.w loc_2044de
	btst.b #$1,($f602).w
	bne.w loc_2044de
	andi.b #$f,($f788).w
	beq.s loc_2043f2
	btst.b #$0,($f603).w
	beq.s loc_204406
	bset.b #$7,($f788).w
	bra.w loc_20459a
loc_2043f2:
	btst.b #$0,($f603).w
	beq.w loc_204406
	move.b #$1,($f788).w
	bra.w loc_20459a
loc_204406:
	btst.b #$0,($f602).w
	beq.s loc_204482
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204464
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204436
	asr.w #$1,d2
	sub.w d2,d1
loc_204436:
	btst.b #$0,$22(a0)
	beq.s loc_204442
	neg.w d0
	neg.w d1
loc_204442:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204458
	cmp.w d0,d1
	ble.s loc_20445e
	bra.s loc_20445c
loc_204458:
	cmp.w d1,d0
	ble.s loc_20445e
loc_20445c:
	move.w d1,d0
loc_20445e:
	move.w d0,$14(a0)
	rts
loc_204464:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20447e
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20233e).l
loc_20447e:
	bra.w loc_20459a
loc_204482:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2044a2
	move.w #$ab,d0
	jsr (sub_20233e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2044de
loc_2044a2:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20233e).l
	bra.w loc_204576
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2044be:
	btst.b #$0,($f602).w
	beq.s loc_2044de
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20459a
	addq.w #$2,($f73e).w
	bra.w loc_20459a
loc_2044de:
	btst.b #$6,($f788).w
	bne.w loc_20455a
	andi.b #$f,($f788).w
	beq.s loc_204502
	btst.b #$1,($f603).w
	beq.s loc_204514
	bset.b #$6,($f788).w
	bra.w loc_20459a
loc_204502:
	btst.b #$1,($f603).w
	beq.s loc_204514
	move.b #$1,($f788).w
	bra.w loc_20459a
loc_204514:
	btst.b #$1,($f602).w
	beq.s loc_204576
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204558
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204558
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20454a
	neg.w $14(a0)
loc_20454a:
	move.w #$9c,d0
	jsr (sub_20233e).l
	bsr.w sub_204a76
loc_204558:
	bra.s loc_20459a
loc_20455a:
	btst.b #$1,($f602).w
	beq.s loc_204576
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20459a
	subq.w #$2,($f73e).w
	bra.s loc_20459a
loc_204576:
	cmpi.w #$60,($f73e).w
	bne.s loc_204590
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20459a
	move.b #$0,($f788).w
	bra.s loc_20459a
loc_204590:
	bcc.s loc_204596
	addq.w #$4,($f73e).w
loc_204596:
	subq.w #$2,($f73e).w
loc_20459a:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2045c6
	move.w $14(a0),d0
	beq.s loc_2045c6
	bmi.s loc_2045ba
	sub.w d5,d0
	bcc.s loc_2045b4
	move.w #$0,d0
loc_2045b4:
	move.w d0,$14(a0)
	bra.s loc_2045c6
loc_2045ba:
	add.w d5,d0
	bcc.s loc_2045c2
	move.w #$0,d0
loc_2045c2:
	move.w d0,$14(a0)
loc_2045c6:
	move.b $26(a0),d0
	jsr (sub_200842).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2045e4:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204654
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204654
	bmi.s loc_2045fc
	neg.w d1
loc_2045fc:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2064d2
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204654
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204650
	cmpi.b #$40,d0
	beq.s loc_20463e
	cmpi.b #$80,d0
	beq.s loc_204638
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204638:
	sub.w d1,$12(a0)
	rts
loc_20463e:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204650:
	add.w d1,$12(a0)
loc_204654:
	rts

sub_204656:
	tst.b $2a(a0)
	bne.s loc_2046ca
	move.w $14(a0),d0
	beq.s loc_204664
	bpl.s loc_204694
loc_204664:
	bset.b #$0,$22(a0)
	bne.s loc_204678
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204678:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204688
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204688
	move.w d1,d0
loc_204688:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204694:
	sub.w d4,d0
	bcc.s loc_20469c
	move.w #$ff80,d0
loc_20469c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2046ca
	cmpi.w #$400,d0
	blt.s loc_2046ca
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20233e).l
loc_2046ca:
	rts

sub_2046cc:
	tst.b $2a(a0)
	bne.s loc_20473a
	move.w $14(a0),d0
	bmi.s loc_204704
	bclr.b #$0,$22(a0)
	beq.s loc_2046ec
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2046ec:
	cmp.w d6,d0
	bge.s loc_2046f8
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2046f8
	move.w d6,d0
loc_2046f8:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204704:
	add.w d4,d0
	bcc.s loc_20470c
	move.w #$80,d0
loc_20470c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20473a
	cmpi.w #$fc00,d0
	bgt.s loc_20473a
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20233e).l
loc_20473a:
	rts

sub_20473c:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204886
	tst.w $3e(a0)
	bne.s loc_204774
	btst.b #$2,($f602).w
	beq.s loc_204768
	bsr.w sub_2048bc
loc_204768:
	btst.b #$3,($f602).w
	beq.s loc_204774
	bsr.w sub_2048e0
loc_204774:
	tst.b $2a(a0)
	beq.w loc_20481e
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204794
	asr.w #$1,d2
	sub.w d2,d1
loc_204794:
	btst.b #$0,$22(a0)
	beq.s loc_2047a0
	neg.w d0
	neg.w d1
loc_2047a0:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2047b6
	cmp.w d0,d1
	ble.s loc_2047bc
	bra.s loc_2047ba
loc_2047b6:
	cmp.w d1,d0
	ble.s loc_2047bc
loc_2047ba:
	move.w d1,d0
loc_2047bc:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_2047f0
	rts
loc_2047ca:
	move.w #$ab,d0
	jsr (sub_20233e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204850
loc_2047f0:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_2047ca
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20233e).l
	btst.b #$0,$22(a0)
	bne.s loc_204816
	bsr.w sub_2048e0
	bra.s loc_20481e
loc_204816:
	bsr.w sub_2048bc
	bra.s loc_20481e
	dc.b $4e,$75
loc_20481e:
	move.w $14(a0),d0
	beq.s loc_204840
	bmi.s loc_204834
	sub.w d5,d0
	bcc.s loc_20482e
	move.w #$0,d0
loc_20482e:
	move.w d0,$14(a0)
	bra.s loc_204840
loc_204834:
	add.w d5,d0
	bcc.s loc_20483c
	move.w #$0,d0
loc_20483c:
	move.w d0,$14(a0)
loc_204840:
	tst.w $14(a0)
	bne.s loc_204886
	move.w #$ab,d0
	jsr (sub_20233e).l
loc_204850:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204870
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204880
loc_204870:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204880:
	move.b #$5,$1c(a0)
loc_204886:
	move.b $26(a0),d0
	jsr (sub_200842).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_2048aa
	move.w #$1000,d1
loc_2048aa:
	cmpi.w #$f000,d1
	bge.s loc_2048b4
	move.w #$f000,d1
loc_2048b4:
	move.w d1,$10(a0)
	bra.w loc_2045e4

sub_2048bc:
	move.w $14(a0),d0
	beq.s loc_2048c4
	bpl.s loc_2048d2
loc_2048c4:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_2048d2:
	sub.w d4,d0
	bcc.s loc_2048da
	move.w #$ff80,d0
loc_2048da:
	move.w d0,$14(a0)
	rts

sub_2048e0:
	move.w $14(a0),d0
	bmi.s loc_2048f4
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_2048f4:
	add.w d4,d0
	bcc.s loc_2048fc
	move.w #$80,d0
loc_2048fc:
	move.w d0,$14(a0)
	rts

sub_204902:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_20493c
	tst.w ($ff1506).l
	bne.s loc_20493c
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204934
	cmpi.w #$840,$8(a0)
	bcc.s loc_204934
	rts
loc_204934:
	btst.b #$1,$2c(a0)
	bne.s loc_20496c
loc_20493c:
	btst.b #$2,($f602).w
	beq.s loc_204956
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204956
	move.w d1,d0
loc_204956:
	btst.b #$3,($f602).w
	beq.s loc_20496c
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_20496c
	move.w d6,d0
loc_20496c:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204982
	bcc.s loc_20497e
	addq.w #$4,($f73e).w
loc_20497e:
	subq.w #$2,($f73e).w
loc_204982:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_2049b0
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_2049b0
	bmi.s loc_2049a4
	sub.w d1,d0
	bcc.s loc_20499e
	move.w #$0,d0
loc_20499e:
	move.w d0,$10(a0)
	rts
loc_2049a4:
	sub.w d1,d0
	bcs.s loc_2049ac
	move.w #$0,d0
loc_2049ac:
	move.w d0,$10(a0)
loc_2049b0:
	rts
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2049e0
	bsr.w sub_20670c
	tst.w d1
	bpl.s loc_2049e0
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
loc_2049e0:
	rts

sub_2049e2:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204a36
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204a10
	addi.w #$38,d0
loc_204a10:
	cmp.w d1,d0
	bls.s loc_204a36
loc_204a14:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204a24
	rts
loc_204a24:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206b86
	move.b #$6,$24(a0)
	rts
loc_204a36:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204a14

sub_204a4e:
	tst.b ($f7ca).w
	bne.s loc_204a74
	move.w $14(a0),d0
	bpl.s loc_204a5c
	neg.w d0
loc_204a5c:
	cmpi.w #$80,d0
	bcs.s loc_204a74
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a74
	btst.b #$1,($f602).w
	bne.s sub_204a76
loc_204a74:
	rts

sub_204a76:
	btst.b #$2,$22(a0)
	beq.s loc_204a80
	bra.s loc_204ab0
loc_204a80:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204aa0
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204ab0
loc_204aa0:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204ab0:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204aca
	cmpi.w #$200,$14(a0)
	bcc.s loc_204aca
	move.w #$200,$14(a0)
loc_204aca:
	rts

sub_204acc:
	tst.b $2a(a0)
	beq.s loc_204ad4
	rts
loc_204ad4:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204ae6
	tst.w $14(a0)
	beq.w loc_204bac
loc_204ae6:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204bac
	btst.b #$3,$22(a0)
	beq.s loc_204b02
	jsr (sub_2057d8).l
	beq.s loc_204b32
loc_204b02:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_20653c
	cmpi.w #$6,d1
	blt.w loc_204bac
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204b28
	move.w #$380,d2
loc_204b28:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204b32:
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
	bne.s loc_204bae
	tst.b ($ff195b).l
	beq.s loc_204b90
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204ba0
loc_204b90:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204ba0:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204bac:
	rts
loc_204bae:
	bset.b #$4,$22(a0)
	rts

sub_204bb6:
	tst.b $3c(a0)
	beq.s loc_204be8
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204bcc
	move.w #$fe00,d1
loc_204bcc:
	cmp.w $12(a0),d1
	ble.s loc_204be6
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204be6
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204be6:
	rts
loc_204be8:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204bf6
	move.w #$f040,$12(a0)
loc_204bf6:
	rts

sub_204bf8:
	tst.b $2a(a0)
	bne.s loc_204c32
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204c32
	move.b $26(a0),d0
	jsr (sub_200842).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204c32
	bmi.s loc_204c2e
	tst.w d0
	beq.s loc_204c2c
	add.w d0,$14(a0)
loc_204c2c:
	rts
loc_204c2e:
	add.w d0,$14(a0)
loc_204c32:
	rts

sub_204c34:
	tst.b $2a(a0)
	bne.s loc_204c74
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204c74
	move.b $26(a0),d0
	jsr (sub_200842).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204c6a
	tst.w d0
	bpl.s loc_204c64
	asr.l #$2,d0
loc_204c64:
	add.w d0,$14(a0)
	rts
loc_204c6a:
	tst.w d0
	bmi.s loc_204c70
	asr.l #$2,d0
loc_204c70:
	add.w d0,$14(a0)
loc_204c74:
	rts

sub_204c76:
	nop
	tst.b $38(a0)
	bne.s loc_204cb8
	tst.w $3e(a0)
	bne.s loc_204cba
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204cb8
	move.w $14(a0),d0
	bpl.s loc_204c9a
	neg.w d0
loc_204c9a:
	cmpi.w #$280,d0
	bcc.s loc_204cb8
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204cb8:
	rts
loc_204cba:
	subq.w #$1,$3e(a0)
	rts

sub_204cc0:
	btst.b #$1,$2c(a0)
	bne.s loc_204ce2
	move.b $26(a0),d0
	beq.s loc_204ce2
	bpl.s loc_204cd8
	addq.b #$2,d0
	bcc.s loc_204cd6
	moveq #$0,d0
loc_204cd6:
	bra.s loc_204cde
loc_204cd8:
	subq.b #$2,d0
	bcc.s loc_204cde
	moveq #$0,d0
loc_204cde:
	move.b d0,$26(a0)
loc_204ce2:
	rts

sub_204ce4:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200ada).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204dc8
	cmpi.b #$80,d0
	beq.w loc_204e2a
	cmpi.b #$c0,d0
	beq.w loc_204e86
	bsr.w sub_206852
	tst.w d1
	bpl.s loc_204d36
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204d36:
	bsr.w sub_2066b4
	tst.w d1
	bpl.s loc_204d48
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204d48:
	bsr.w sub_206564
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204dc6
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204d66
	cmp.b d2,d0
	blt.s loc_204dc6
loc_204d66:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204ee8
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204da4
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204d96
	asr.w $12(a0)
	bra.s loc_204db8
loc_204d96:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204da4:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204db8
	move.w #$fc0,$12(a0)
loc_204db8:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204dc6
	neg.w $14(a0)
loc_204dc6:
	rts
loc_204dc8:
	bsr.w sub_206852
	tst.w d1
	bpl.s loc_204de2
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204de2:
	bsr.w sub_20670c
	tst.w d1
	bpl.s loc_204dfc
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204dfa
	move.w #$0,$12(a0)
loc_204dfa:
	rts
loc_204dfc:
	tst.w $12(a0)
	bmi.s loc_204e28
	bsr.w sub_206564
	tst.w d1
	bpl.s loc_204e28
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204ee8
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204e28:
	rts
loc_204e2a:
	bsr.w sub_206852
	tst.w d1
	bpl.s loc_204e3c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204e3c:
	bsr.w sub_2066b4
	tst.w d1
	bpl.s loc_204e4e
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204e4e:
	bsr.w sub_20670c
	tst.w d1
	bpl.s loc_204e84
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204e6e
	move.w #$0,$12(a0)
	rts
loc_204e6e:
	move.b d3,$26(a0)
	bsr.w sub_204f5a
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204e84
	neg.w $14(a0)
loc_204e84:
	rts
loc_204e86:
	bsr.w sub_2066b4
	tst.w d1
	bpl.s loc_204ea0
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204ea0:
	bsr.w sub_20670c
	tst.w d1
	bpl.s loc_204eba
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204eb8
	move.w #$0,$12(a0)
loc_204eb8:
	rts
loc_204eba:
	tst.w $12(a0)
	bmi.s loc_204ee6
	bsr.w sub_206564
	tst.w d1
	bpl.s loc_204ee6
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204ee8
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204ee6:
	rts

sub_204ee8:
	btst.b #$4,$22(a0)
	beq.s loc_204ef2
	nop
loc_204ef2:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_204f4c
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f2c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204f3c
loc_204f2c:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204f3c:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20233e).l
loc_204f4c:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_204f5a:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_203616).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_204f94
	subi.w #$20,$12(a0)
loc_204f94:
	jsr (sub_20630a).l
	bsr.w sub_204fb0
	bsr.w sub_2049e2
	bsr.w sub_203e84
	bsr.w sub_205242
	jmp (sub_20366c).l

sub_204fb0:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206b86
	bsr.w sub_204ce4
	btst.b #$1,$22(a0)
	bne.s loc_204fea
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_204fea:
	rts
	bsr.w sub_205004
	jsr (sub_2035b4).l
	bsr.w sub_203e84
	bsr.w sub_205242
	jmp (sub_20366c).l

sub_205004:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_205072
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_205038
	clr.b ($ff1508).l
loc_205038:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_205052
	tst.b ($ff0f01).l
	beq.s loc_205052
	move.b #$0,($ff1508).l
	bra.s loc_20506c
loc_205052:
	jsr (sub_207318).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_205072
loc_20506c:
	move.w #$3c,$3a(a0)
loc_205072:
	rts
	tst.w $3a(a0)
	beq.w loc_2050f6
	subq.w #$1,$3a(a0)
	bne.w loc_2050f6
	move.w #$1,($ff1502).l
	jsr (sub_2022d6).l
	move.b #$1,($a01c3e).l
	jsr (sub_2022f2).l
	bsr.w sub_207106
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_2050c4
	cmpi.b #$1,($ff152e).l
	bne.s loc_2050c4
	bclr.b #$1,($ff151c).l
loc_2050c4:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_2050f2
	cmpi.b #$1,($ff152e).l
	bne.s loc_2050ec
	tst.b ($ff158e).l
	beq.s loc_2050f2
	move.b #$1,($ff1522).l
	bra.s loc_2050f2
loc_2050ec:
	clr.b ($ff1522).l
loc_2050f2:
	bra.w sub_205852
loc_2050f6:
	rts

sub_2050f8:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205120
	cmpi.b #$5,($ff1506).l
	beq.s loc_205120
	cmpi.b #$2,($ff1506).l
	beq.s loc_205120
	tst.b ($ff1506).l
	bne.w loc_2051e2
loc_205120:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20515e
	tst.b ($ff1506).l
	bne.w loc_2051e4
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2051e4
	bra.s loc_205166
loc_20515e:
	cmp.b ($f7af).w,d1
	beq.w loc_2051e4
loc_205166:
	cmp.b ($f7ac).w,d1
	beq.s loc_205196
	cmp.b ($f7ad).w,d1
	beq.s loc_20517a
	bclr.b #$6,$1(a0)
	rts
loc_20517a:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2051fc
	btst.b #$1,$22(a0)
	beq.s loc_205196
	bclr.b #$6,$1(a0)
	rts
loc_205196:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2051a8
	bclr.b #$6,$1(a0)
	rts
loc_2051a8:
	cmpi.b #$e0,d2
	bcs.s loc_2051b6
	bset.b #$6,$1(a0)
	rts
loc_2051b6:
	btst.b #$6,$1(a0)
	bne.s loc_2051d2
	move.b $26(a0),d1
	beq.s loc_2051e2
	cmpi.b #$80,d1
	bhi.s loc_2051e2
	bset.b #$6,$1(a0)
	rts
loc_2051d2:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2051e2
	bclr.b #$6,$1(a0)
loc_2051e2:
	rts
loc_2051e4:
	btst.b #$2,$22(a0)
	bne.s loc_2051f6
	move.w #$9c,d0
	jsr (sub_20233e).l
loc_2051f6:
	jmp (sub_204a76).l
loc_2051fc:
	tst.w $12(a0)
	bmi.s loc_205240
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205234
	cmpi.w #$38,d1
	bcs.s loc_20522c
	cmpi.w #$80,d1
	bcs.s loc_205240
loc_205224:
	bclr.b #$6,$1(a0)
	rts
loc_20522c:
	bset.b #$6,$1(a0)
	rts
loc_205234:
	cmpi.w #$38,d1
	bcs.s loc_205224
	cmpi.w #$80,d1
	bcc.s loc_20522c
loc_205240:
	rts

sub_205242:
	lea (dat_205532).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205264
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205264:
	bsr.w sub_2054d4
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2052dc
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2052aa
	move.b d0,$1e(a0)

sub_20528e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2052a2
	bpl.s loc_2052a2
	cmpi.b #$fd,d0
	bge.s loc_2052ac
loc_2052a2:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2052aa:
	rts
loc_2052ac:
	addq.b #$1,d0
	bne.s loc_2052bc
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2052a2
loc_2052bc:
	addq.b #$1,d0
	bne.s loc_2052d0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2052a2
loc_2052d0:
	addq.b #$1,d0
	bne.s loc_2052da
	move.b $2(a1,d1.w),$1c(a0)
loc_2052da:
	rts
loc_2052dc:
	subq.b #$1,$1e(a0)
	bpl.s loc_2052aa
	addq.b #$1,d0
	bne.w loc_205396
	tst.b ($ff195b).l
	bne.w loc_20545e
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205304
	not.b d0
loc_205304:
	btst.b #$1,$2c(a0)
	bne.s loc_205312
	addi.b #$10,d0
	bra.s loc_205314
loc_205312:
	addq.b #$8,d0
loc_205314:
	bpl.s loc_205318
	moveq #$3,d1
loc_205318:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20540a
	move.w $14(a0),d2
	bpl.s loc_205336
	neg.w d2
loc_205336:
	btst.b #$1,$2c(a0)
	beq.s loc_20534e
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205734).l,a1
	bra.s loc_205378
loc_20534e:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_20570e).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205378
	lea (dat_2055b2).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205378
	lea (dat_2055aa).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205378:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205386
	moveq #$0,d2
loc_205386:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20528e
	add.b d3,$1a(a0)
	rts
loc_205396:
	addq.b #$1,d0
	bne.s loc_205406
	move.w $14(a0),d2
	bpl.s loc_2053a2
	neg.w d2
loc_2053a2:
	lea (dat_205690).l,a1
	tst.b ($ff195b).l
	bne.s loc_2053e0
	lea (dat_2055c2).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2053d4
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2053e0
	lea (dat_20573c).l,a1
	bra.s loc_2053e0
loc_2053d4:
	cmpi.w #$600,d2
	bcc.s loc_2053e0
	lea (dat_2055ba).l,a1
loc_2053e0:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2053ea
	moveq #$0,d2
loc_2053ea:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20528e
loc_205406:
	addq.b #$1,d0
	bne.s loc_20544a
loc_20540a:
	move.w $14(a0),d2
	bmi.s loc_205412
	neg.w d2
loc_205412:
	addi.w #$800,d2
	bpl.s loc_20541a
	moveq #$0,d2
loc_20541a:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2056a2).l,a1
	tst.b ($ff195b).l
	bne.s loc_205434
	lea (dat_2055ca).l,a1
loc_205434:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20528e
loc_20544a:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20545e:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205470
	not.b d0
loc_205470:
	addi.b #$10,d0
	bpl.s loc_205478
	moveq #$0,d1
loc_205478:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2054a6
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205396
loc_2054a6:
	move.w $14(a0),d2
	bpl.s loc_2054ae
	neg.w d2
loc_2054ae:
	lea (dat_20568a).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2054c0
	lea (dat_205684).l,a1
loc_2054c0:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2054ca
	moveq #$0,d2
loc_2054ca:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20528e

sub_2054d4:
	tst.b ($ff195b).l
	beq.s loc_2054e0
	move.b dat_2054e2(pc,d0.w),d0
loc_2054e0:
	rts
dat_2054e2:
	.incbin 21730, 80
dat_205532:
	.incbin 21810, 120
dat_2055aa:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2055b2:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2055ba:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2055c2:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2055ca:
	.incbin 21962, 186
dat_205684:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20568a:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205690:
	.incbin 22160, 18
dat_2056a2:
	.incbin 22178, 108
dat_20570e:
	.incbin 22286, 38
dat_205734:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_20573c:
	.incbin 22332, 56

sub_205774:
	tst.b (a0)
	beq.w loc_2057d6
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2057d6
	move.b d0,(a2)
	lea (dat_22f1b0).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2057d6
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_2057a8:
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
loc_2057c2:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_2057c2
	dbf d1,loc_2057a8
loc_2057d6:
	rts

sub_2057d8:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_20584c
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
	bne.s loc_20583a
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_20583a:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_20584c:
	rts
loc_20584e:
	move.w #$e,d0

sub_205852:
	cmpi.w #$67,d0
	bne.s loc_205860
	move.b #$1,($ff1958).l
loc_205860:
	move.w d0,($a12010).l
loc_205866:
	move.w ($a12020).l,d0
	beq.s loc_205866
	cmp.w ($a12020).l,d0
	bne.s loc_205866
	move.w #$0,($a12010).l
loc_20587e:
	move.w ($a12020).l,d0
	bne.s loc_20587e
	move.w ($a12020).l,d0
	bne.s loc_20587e
	rts
	dc.b $00,$00

sub_205892:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2058ae
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2058ae:
	subq.b #$1,$1e(a0)
	bpl.s loc_2058ee
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_2058f0
loc_2058ca:
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
loc_2058ee:
	rts
loc_2058f0:
	addq.b #$1,d0
	bne.s loc_205900
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2058ca
loc_205900:
	addq.b #$1,d0
	bne.s loc_205914
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2058ca
loc_205914:
	addq.b #$1,d0
	bne.s loc_20591e
	move.b $2(a1,d1.w),$1c(a0)
loc_20591e:
	addq.b #$1,d0
	bne.s loc_205926
	addq.b #$2,$24(a0)
loc_205926:
	addq.b #$1,d0
	bne.s loc_205934
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205934:
	addq.b #$1,d0
	bne.s loc_20593c
	addq.b #$2,$25(a0)
loc_20593c:
	rts
	.incbin 22846, 536

sub_205b56:
	rts
	.incbin 23384, 618
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205dd0(pc,d0.w),d0
	jmp dat_205dd0(pc,d0.w)
dat_205dd0:
	dc.b $00,$06,$00,$32,$00,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$23b908,$4(a0)
	move.w #$3e4,$2(a0)
	tst.b ($ff152e).l
	bne.s loc_205dfc
	move.w #$39e,$2(a0)
loc_205dfc:
	move.b #$1,$18(a0)
	lea (dat_23b900).l,a1
	bsr.w sub_205892
	jmp (sub_20366c).l
	.incbin 24082, 756

sub_206106:
	bclr.b #$7,($ff156b).l
	beq.s loc_206154
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206156(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20612a:
	move.l (a1)+,(a2)+
	dbf d0,loc_20612a
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206154:
	rts
dat_206156:
	.incbin 24918, 436

sub_20630a:
	rts
loc_20630c:
	move.w ($ff1548).l,$8(a6)
	move.w ($ff154a).l,$c(a6)
	move.b ($ff154c).l,$22(a6)
	move.w ($ff1564).l,$14(a6)
	move.w ($ff1566).l,$10(a6)
	move.w ($ff1568).l,$12(a6)
	move.w ($ff1528).l,($ff1512).l
	dc.b $13,$f9,$00,$ff
loc_20634a:
	move.b d5,$ff(a2)
	dc.b $15,$0d,$23,$f9,$00,$ff,$15,$70
	dc.b $00,$ff
loc_206358:
	move.b (a4),-(a2)
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
	bne.s loc_2063c6
	move.b ($ff1593).l,($ff195b).l
loc_2063c6:
	tst.b ($ff1522).l
	bpl.s loc_2063dc
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2063dc:
	rts

sub_2063de:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20630c
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
	bne.s loc_206498
	move.b ($ff1591).l,($ff195b).l
loc_206498:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2064ba
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2064ba:
	tst.b ($ff1522).l
	bpl.s loc_2064d0
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2064d0:
	rts

sub_2064d2:
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
	bpl.s loc_20650e
	move.b d1,d0
	bpl.s loc_206508
	subq.b #$1,d0
loc_206508:
	addi.b #$20,d0
	bra.s loc_206518
loc_20650e:
	move.b d1,d0
	bpl.s loc_206514
	addq.b #$1,d0
loc_206514:
	addi.b #$1f,d0
loc_206518:
	andi.b #$c0,d0
	beq.w loc_2065e8
	cmpi.b #$80,d0
	beq.w loc_206784
	andi.b #$38,d1
	bne.s loc_206530
	addq.w #$8,d2
loc_206530:
	cmpi.b #$40,d0
	beq.w loc_20685a
	bra.w loc_2066bc

sub_20653c:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2067e2
	cmpi.b #$80,d0
	beq.w sub_20670c
	cmpi.b #$c0,d0
	beq.w loc_20664c

sub_206564:
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
loc_2065c8:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2065d6
	move.b ($f768).w,d3
	exg d0,d1
loc_2065d6:
	btst.l #$0,d3
	beq.s loc_2065de
	move.b d2,d3
loc_2065de:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2065e8:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201198).l
	move.b #$0,d2
loc_206604:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206610
	move.b d2,d3
loc_206610:
	rts

sub_206612:
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
	beq.s loc_20664a
	move.b #$0,d3
loc_20664a:
	rts
loc_20664c:
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
	bra.w loc_2065c8

sub_2066b4:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2066bc:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201308).l
	move.b #$c0,d2
	bra.w loc_206604
	.incbin 26332, 48

sub_20670c:
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
	bra.w loc_2065c8

sub_20677c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206784:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201198).l
	move.b #$80,d2
	bra.w loc_206604
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
	jsr (sub_201198).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2067e0
	move.b #$80,d3
loc_2067e0:
	rts
loc_2067e2:
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
	bra.w loc_2065c8

sub_206852:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20685a:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201308).l
	move.b #$40,d2
	bra.w loc_206604
	.incbin 26750, 48

sub_2068ae:
	btst.b #$0,$2c(a0)
	beq.s loc_2068ba
	moveq #$0,d0
	rts
loc_2068ba:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_2068de
	addi.w #$c,d3
	moveq #$a,d5
loc_2068de:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_2068ec:
	tst.b $1(a1)
	bpl.s loc_2068f8
	move.b $20(a1),d0
	bne.s loc_206904
loc_2068f8:
	lea $40(a1),a1
	dbf d6,loc_2068ec
	moveq #$0,d0
	rts
loc_206904:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206d2a).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_20692c
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206932
	bra.w loc_2068f8
loc_20692c:
	cmp.w d4,d0
	bhi.w loc_2068f8
loc_206932:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_20694a
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206950
	bra.w loc_2068f8
loc_20694a:
	cmp.w d5,d0
	bhi.w loc_2068f8
loc_206950:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_2069e8
	cmpi.b #$c0,d1
	beq.w loc_206bde
	tst.b d1
	bmi.w loc_20696c
	bra.s loc_206978
loc_20696c:
	tst.b ($ff151f).l
	bne.s loc_2068f8
	bra.w sub_206ab2
loc_206978:
	tst.b ($ff1956).l
	beq.s loc_206988
	tst.b $29(a1)
	bne.s loc_206990
	rts
loc_206988:
	tst.b $29(a1)
	beq.s loc_206990
	rts
loc_206990:
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_2069ac
	cmpi.w #$5a,$30(a0)
	bcc.s loc_2069aa
	addq.b #$2,$24(a1)
loc_2069aa:
	rts
loc_2069ac:
	tst.w $12(a0)
	bpl.s loc_2069d6
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_2069e6
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_2069e6
	addq.b #$4,$25(a1)
	rts
loc_2069d6:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2069e6
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_2069e6:
	rts

sub_2069e8:
	tst.b ($ff1521).l
	bne.s loc_206a02
	tst.b ($ff151f).l
	bne.s loc_206a02
	cmpi.b #$2,$1c(a0)
	bne.w sub_206ab2
loc_206a02:
	tst.b $21(a1)
	beq.s loc_206a2c
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206a2a
	bset.b #$7,$22(a1)
loc_206a2a:
	rts
loc_206a2c:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206a44
	moveq #$6,d0
loc_206a44:
	move.w d0,$3e(a1)
	move.w dat_206aa4(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206a5e
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206a5e:
	bsr.w sub_20980a
	move.w #$96,d0
	jsr (sub_20233e).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206a94
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206a9c
	neg.w $12(a0)
	rts
loc_206a94:
	addi.w #$100,$12(a0)
	rts
loc_206a9c:
	subi.w #$100,$12(a0)
	rts
dat_206aa4:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206ab2:
	btst.b #$0,$2c(a0)
	bne.s loc_206aca
	tst.b ($ff1521).l
	bne.s loc_206aca
	tst.b ($ff151f).l
	beq.s loc_206ace
loc_206aca:
	moveq #$ffffffff,d0
	rts
loc_206ace:
	nop
	tst.w $30(a0)
	bne.s loc_206aca
	movea.l a1,a2

sub_206ad8:
	tst.b ($ff151e).l
	bne.s loc_206b12
	tst.w ($ff1512).l
	beq.w loc_206b7c
	jsr (sub_207318).l
	bne.s loc_206b12
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b ($ff1956).l
	beq.s loc_206b12
	move.b #$1,$29(a1)
loc_206b12:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206b28
	move.b #$0,($ff156f).l
loc_206b28:
	move.b #$4,$24(a0)
	bsr.w sub_204ee8
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206b58
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206b58:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206b66
	neg.w $10(a0)
loc_206b66:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206b7c:
	tst.w ($ff1588).l
	bne.w loc_206b12

sub_206b86:
	tst.w ($ff1906).l
	bne.s loc_206bda
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_204ee8
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
loc_206bda:
	moveq #$ffffffff,d0
	rts
loc_206bde:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$6,d1
	beq.w loc_206cee
	cmpi.b #$17,d1
	beq.w loc_206c76
	cmpi.b #$1f,d1
	beq.w loc_206c76
	cmpi.b #$22,d1
	beq.w loc_206cbe
	cmpi.b #$23,d1
	beq.w loc_206c76
	cmpi.b #$2d,d1
	beq.w loc_206ccc
	cmpi.b #$30,d1
	beq.w loc_206cd8
	tst.b ($f7aa).w
	beq.w loc_206c74
	cmpi.b #$1,($f7aa).w
	beq.s loc_206c3e
	cmpi.b #$4,($f7aa).w
	beq.s loc_206c60
	cmpi.b #$5,($f7aa).w
	beq.s loc_206c6e
loc_206c3e:
	cmpi.b #$3c,d1
	blt.s loc_206c74
	cmpi.b #$3f,d1
	bgt.s loc_206c74
	bsr.w sub_2069e8
	tst.b $20(a1)
	bne.s loc_206c58
	addq.b #$3,$21(a1)
loc_206c58:
	clr.b $20(a1)
	bra.w loc_206c76
loc_206c60:
	cmpi.b #$3f,d1
	beq.s loc_206c82
	cmpi.b #$3e,d1
	beq.s loc_206c7c
	bra.s loc_206c74
loc_206c6e:
	cmpi.b #$3d,d1
	beq.s loc_206c7c
loc_206c74:
	rts
loc_206c76:
	addq.b #$1,$21(a1)
	rts
loc_206c7c:
	bsr.w sub_206ab2
	bra.s loc_206c76
loc_206c82:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_206cbc
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_206cbc
	neg.w $10(a0)
loc_206cbc:
	rts
loc_206cbe:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206cca
	addq.b #$1,$21(a1)
loc_206cca:
	rts
loc_206ccc:
	btst.b #$2,$22(a0)
	beq.w sub_2069e8
	bra.s loc_206c76
loc_206cd8:
	move.w $8(a0),d0
	sub.w $8(a1),d0
	smi d0
	move.b $29(a1),d1
	eor.b d0,d1
	beq.w sub_2069e8
	bra.s loc_206c76
loc_206cee:
	tst.w $12(a0)
	bpl.s loc_206d18
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206d28
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206d28
	addq.b #$4,$25(a1)
	rts
loc_206d18:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206d28
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206d28:
	rts
dat_206d2a:
	.incbin 27946, 126
loc_206da8:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206dbe
	move.l #$4000,(dat_206f38).l
	bra.s loc_206dde
loc_206dbe:
	addi.l #$2000,(dat_206f38).l
	cmpi.l #$80000,(dat_206f38).l
	bls.s loc_206dde
	move.l #$80000,(dat_206f38).l
loc_206dde:
	move.l (dat_206f38).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206df0
	sub.l d0,$c(a0)
loc_206df0:
	btst.b #$1,($f604).w
	beq.s loc_206dfc
	add.l d0,$c(a0)
loc_206dfc:
	btst.b #$2,($f604).w
	beq.s loc_206e08
	sub.l d0,$8(a0)
loc_206e08:
	btst.b #$3,($f604).w
	beq.s loc_206e14
	add.l d0,$8(a0)
loc_206e14:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200fb0).l
	move.w (a1),($ff194e).l
	lea (dat_206f3c).l,a2
	btst.b #$6,($f605).w
	beq.s loc_206e56
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_206e50
	move.b #$0,d1
loc_206e50:
	move.b d1,($ff1904).l
loc_206e56:
	btst.b #$7,($f605).w
	beq.s loc_206e76
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_206e70
	add.b (a2),d1
loc_206e70:
	move.b d1,($ff1904).l
loc_206e76:
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
	beq.s loc_206f02
	bsr.w sub_207318
	bne.s loc_206f02
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
loc_206f02:
	btst.b #$4,($f605).w
	beq.s loc_206f32
	move.b #$0,($ff1906).l
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_206f32:
	jmp (sub_20366c).l
dat_206f38:
	dc.b $00,$00,$40,$00
dat_206f3c:
	.incbin 28476, 458

sub_207106:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207114:
	clr.l (a2)+
	dbf d0,loc_207114
	rts

sub_20711c:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20712a(pc,d0.w),d0
	jmp dat_20712a(pc,d0.w)
dat_20712a:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2073ca).l,a0
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
	bcc.s loc_207168
	moveq #$0,d6
loc_207168:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207170:
	cmp.w (a0),d6
	bls.s loc_207182
	tst.b $4(a0)
	bpl.s loc_20717e
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20717e:
	addq.w #$8,a0
	bra.s loc_207170
loc_207182:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2071a2
loc_207190:
	cmp.w (a0),d6
	bls.s loc_2071a2
	tst.b $4(a0)
	bpl.s loc_20719e
	addq.b #$1,$1(a2)
loc_20719e:
	addq.w #$8,a0
	bra.s loc_207190
loc_2071a2:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20728c
	bge.s loc_207232
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20720e
loc_2071dc:
	cmp.w -$8(a0),d6
	bge.s loc_20720e
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2071f2
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2071f2:
	bsr.w sub_2072b0
	bne.s loc_2071fc
	subq.w #$8,a0
	bra.s loc_2071dc
loc_2071fc:
	tst.b $4(a0)
	bpl.s loc_20720c
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20720c:
	addq.w #$8,a0
loc_20720e:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20721a:
	cmp.w -$8(a0),d6
	bgt.s loc_20722c
	tst.b -$4(a0)
	bpl.s loc_207228
	subq.b #$1,(a2)
loc_207228:
	subq.w #$8,a0
	bra.s loc_20721a
loc_20722c:
	move.l a0,($f770).w
	rts
loc_207232:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207246:
	cmp.w (a0),d6
	bls.s loc_207268
	tst.b $4(a0)
	bpl.s loc_207254
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207254:
	bsr.w sub_2072b0
	beq.s loc_207246
	tst.b $4(a0)
	bpl.s loc_207268
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207268:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207288
loc_207276:
	cmp.w (a0),d6
	bls.s loc_207288
	tst.b $4(a0)
	bpl.s loc_207284
	addq.b #$1,$1(a2)
loc_207284:
	addq.w #$8,a0
	bra.s loc_207276
loc_207288:
	move.l a0,($f774).w
loc_20728c:
	rts

sub_20728e:
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

sub_2072b0:
	bsr.s sub_20728e
	beq.s loc_2072c2
	tst.b $4(a0)
	bpl.s loc_2072c8
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2072c8
loc_2072c2:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2072c8:
	bsr.w sub_207318
	bne.s loc_207316
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
	bpl.s loc_2072f8
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2072f8:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20730a
	nop
	nop
	nop
	nop
loc_20730a:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207316:
	rts

sub_207318:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207320:
	tst.b (a1)
	beq.s loc_20732c
	lea $40(a1),a1
	dbf d0,loc_207320
loc_20732c:
	rts

sub_20732e:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_20734c
loc_207340:
	tst.b (a1)
	beq.s loc_20734c
	lea $40(a1),a1
	dbf d0,loc_207340
loc_20734c:
	rts
loc_20734e:
	move.w $8(a0),d0
loc_207352:
	tst.b $1(a0)
	bmi.s loc_2073bc
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2073bc
loc_207370:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2073b2
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2073aa
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2073a2
	moveq #$0,d1
	bra.s loc_2073aa
loc_2073a2:
	cmpi.w #$3,d1
	bcs.s loc_2073aa
	moveq #$2,d1
loc_2073aa:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2073b2:
	jsr (sub_203718).l
	moveq #$1,d0
	rts
loc_2073bc:
	btst.b #$7,($ff152e).l
	bne.s loc_207370
	moveq #$0,d0
	rts
dat_2073ca:
	.incbin 29642, 1374
loc_207928:
	bset.b d0,-(a3)
	move.l d0,d5
loc_20792c:
	asr.b #$8,d0
	.incbin 31022, 918

sub_207cc4:
	btst.b #$3,$22(a0)
	beq.s loc_207d34
	btst.b #$3,$22(a1)
	beq.s loc_207d34
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207d34
	tst.b $2a(a1)
	beq.s loc_207cf6
	move.w #$ab,d0
	jsr (sub_20233e).l
loc_207cf6:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207d22
	cmpi.b #$17,$1c(a1)
	beq.s loc_207d22
	bclr.b #$0,$2c(a1)
loc_207d22:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207d34
	bclr.b #$1,$22(a1)
loc_207d34:
	rts

sub_207d36:
	cmpi.b #$4,$24(a1)
	bne.s loc_207d48
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207d48:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207da8
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207d6a
	bclr.b #$3,$22(a0)
	bra.w sub_207cc4
loc_207d6a:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207da8
	tst.b ($ff195b).l
	beq.s loc_207d92
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207da2
loc_207d92:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207da2:
	move.b #$0,$1c(a1)
loc_207da8:
	bset.b #$3,$22(a1)
	beq.s loc_207dca
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207e02
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207dca:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207df6
	cmpi.b #$2,$24(a0)
	beq.s loc_207dfc
loc_207df6:
	move.w $10(a1),$14(a1)
loc_207dfc:
	bclr.b #$1,$22(a1)
loc_207e02:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_207e0c:
	move.b #$1,$25(a0)

sub_207e12:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2080c6
	btst.b #$6,$2c(a1)
	bne.w loc_2080c6
	cmpi.b #$6,$24(a1)
	bcc.w loc_2080c6
	tst.b $0(a1)
	beq.w loc_2080c6
	tst.b $1(a0)
	bpl.w loc_2080c6
	tst.b ($ff1906).l
	bne.w loc_2080c6
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2080c6
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2080c6
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207e80
	btst.b #$3,$22(a0)
	bne.s loc_207e92
	bra.w loc_2080c6
loc_207e80:
	cmpi.b #$1,$25(a0)
	bne.s loc_207e92
	tst.w $12(a1)
	beq.s loc_207e92
	bmi.w loc_2080c6
loc_207e92:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2080c6
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2080c6
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207ec8
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207ec8:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207ed6
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207ed6:
	cmp.w d4,d5
	bcs.w loc_207f6a
	cmpi.b #$1,$25(a0)
	beq.w loc_2080c6
	cmpi.b #$a,$0(a0)
	bne.s loc_207ef8
	btst.b #$1,$22(a1)
	bne.w loc_2080c6
loc_207ef8:
	cmpi.b #$4,d5
	bls.w loc_2080c6
	bsr.w sub_208116
	move.l d0,-(a7)
	bsr.w sub_207cc4
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207f22
	tst.w $10(a1)
	beq.s loc_207f52
	bpl.s loc_207f2a
	bra.s loc_207f52
loc_207f22:
	tst.w $10(a1)
	beq.s loc_207f52
	bpl.s loc_207f52
loc_207f2a:
	bsr.w sub_2080d6
	btst.b #$1,$22(a1)
	bne.s loc_207f48
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207f48:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207f52:
	bsr.w sub_20818c
	bsr.w sub_2080d6
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207f6a:
	cmpi.b #$19,$0(a0)
	bne.s loc_207f7c
	btst.b #$2,$22(a1)
	bne.w loc_2080c6
loc_207f7c:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207f92
	bmi.w loc_208062
loc_207f92:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207fa4
	tst.w $12(a1)
	beq.s loc_207fa4
	bmi.w loc_2080c6
loc_207fa4:
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
	beq.s loc_207ff0
	bpl.s loc_207fd0
	neg.b d0
loc_207fd0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2064d2).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207ff0
	tst.w $10(a0)
	bpl.s loc_207fec
	neg.w d1
loc_207fec:
	add.w d1,$8(a1)
loc_207ff0:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_20805a
	tst.w $12(a0)
	bmi.s loc_20802e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206564).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20802e
	add.w d1,$c(a1)
	bra.w loc_2080c6
loc_20802e:
	tst.w $12(a0)
	bpl.s loc_20805a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20677c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20805a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b86).l
	movem.l (a7)+,a0-a1
	bra.s loc_2080c6
loc_20805a:
	bsr.w sub_207d36
	moveq #$1,d0
	rts
loc_208062:
	cmpi.b #$1,$25(a0)
	beq.s loc_2080c6
	cmpi.b #$9,$0(a0)
	beq.s loc_2080c6
	cmpi.b #$a,$0(a0)
	bne.s loc_20808c
	cmpi.b #$2,$25(a0)
	beq.s loc_2080ac
	btst.b #$1,$1(a0)
	bne.s loc_2080ac
	bra.s loc_2080c6
loc_20808c:
	btst.b #$1,$22(a1)
	bne.s loc_2080ac
	tst.w $12(a0)
	beq.s loc_2080ac
	bmi.s loc_2080ac
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b86).l
	movem.l (a7)+,a0-a1
loc_2080ac:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20818c
	bsr.w sub_207cc4
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2080c6:
	bsr.w sub_20818c
	bsr.w sub_207cc4
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2080d6:
	tst.w $10(a0)
	beq.s loc_208114
	cmpi.b #$a,$0(a0)
	beq.s loc_208114
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2080f0
	neg.b d0
loc_2080f0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2064d2).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208114
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b86).l
	movem.l (a7)+,a0-a1
loc_208114:
	rts

sub_208116:
	cmpi.b #$a,$0(a0)
	bne.s loc_208126
	move.b #$0,$20(a1)
	rts
loc_208126:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20817a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20818a
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208148
	tst.w $10(a2)
	beq.s loc_20818a
loc_208148:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20815a
	cmp.w $8(a2),d1
	bcs.s loc_20818a
	bra.s loc_208160
loc_20815a:
	cmp.w $8(a2),d1
	bcc.s loc_20818a
loc_208160:
	cmpi.b #$15,$0(a0)
	beq.s loc_20818a
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b86).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20817a:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20818a:
	rts

sub_20818c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2081a6
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2081a6
	move.b #$0,$20(a1)
loc_2081a6:
	rts
	.incbin 33192, 374
loc_20831e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20832c(pc,d0.w),d0
	jmp dat_20832c(pc,d0.w)
dat_20832c:
	.incbin 33580, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_20831e
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208382
	tst.b $1(a0)
	bpl.s loc_20838a
loc_208382:
	move.w dat_2083dc(pc,d0.w),d1
	jsr dat_2083dc(pc,d1.w)
loc_20838a:
	bsr.w sub_20366c
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2083bc
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2083bc:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203718
	rts
dat_2083dc:
	.incbin 33756, 26
	addq.b #$2,$24(a0)
	move.l #$20875e,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20844c
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$208764,$4(a0)
	bra.s loc_20848e
loc_20844c:
	btst.l #$3,d0
	beq.s loc_20847a
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$2087ae,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bd74).l
	move.l (a7)+,d0
	bra.s loc_20848e
loc_20847a:
	btst.b #$1,$1(a0)
	beq.s loc_20848e
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20848e:
	btst.l #$1,d0
	beq.s loc_20849a
	bset.b #$5,$2(a0)
loc_20849a:
	andi.w #$2,d0
	move.w dat_2084a6(pc,d0.w),$30(a0)
	rts
dat_2084a6:
	dc.b $f0,$00,$f6,$00

sub_2084aa:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207e12).l
	tst.b $1(a0)
	bpl.s loc_2084c6
	lea ($d000).w,a1
	bsr.s sub_2084aa
	bne.s loc_2084c8
loc_2084c6:
	rts
loc_2084c8:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20233e).l
	lea (dat_208750).l,a1
	bra.w sub_205892
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 34076, 564
dat_208750:
	.incbin 34640, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20884a(pc,d0.w),d1
	jmp dat_20884a(pc,d1.w)
dat_20884a:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_208854:
	.incbin 34900, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2088ac
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2088a4
	moveq #$0,d1
	bra.s loc_2088ac
loc_2088a4:
	cmpi.w #$3,d1
	bcs.s loc_2088ac
	moveq #$2,d1
loc_2088ac:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2088c8
	moveq #$6,d1
loc_2088c8:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_208854).l,a1
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
	beq.s loc_208918
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208910
	moveq #$0,d0
	bra.s loc_208918
loc_208910:
	cmpi.w #$3,d0
	bcs.s loc_208918
	moveq #$2,d0
loc_208918:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2089e6
	dbf d0,loc_208918
	bclr.b #$7,(a2)
	bra.s loc_20896e
loc_20892a:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208956
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20894e
	moveq #$0,d0
	bra.s loc_208956
loc_20894e:
	cmpi.w #$3,d0
	bcs.s loc_208956
	moveq #$2,d0
loc_208956:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2089e6
	dbf d0,loc_208956
	bclr.b #$7,(a2)
	bsr.w sub_20732e
	bne.w loc_2089f2
loc_20896e:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208cb8,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2089c4
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_2089c4
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_2089c4:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2089e6:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20892a
loc_2089f2:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208a18
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208a10
	moveq #$0,d0
	bra.s loc_208a18
loc_208a10:
	cmpi.w #$3,d0
	bcs.s loc_208a18
	moveq #$2,d0
loc_208a18:
	lea $1(a2),a3
loc_208a1c:
	btst.b #$0,-(a3)
	bne.w sub_203718
	dbf d0,loc_208a1c
	tst.b $1(a0)
	bmi.s loc_208a4c
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208ac6
loc_208a4c:
	tst.w ($ff190e).l
	bne.s loc_208a5c
	move.b ($ff1913).l,$1a(a0)
loc_208a5c:
	bra.w sub_20366c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208aca
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208aac
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208aa4
	moveq #$0,d1
	bra.s loc_208aac
loc_208aa4:
	cmpi.w #$3,d1
	bcs.s loc_208aac
	moveq #$2,d1
loc_208aac:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208cb0).l,a1
	bsr.w sub_205892
	bra.w sub_20366c
loc_208ac6:
	bra.w sub_203718

sub_208aca:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208b1a
	bset.b #$1,($ff150d).l
	beq.s loc_208b04
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208b1a
	bset.b #$2,($ff150d).l
	bne.s loc_208b1a
loc_208b04:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205852).l
loc_208b1a:
	jmp (sub_20233e).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208b2e(pc,d0.w),d1
	jmp dat_208b2e(pc,d1.w)
dat_208b2e:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_208b4a
	move.w d0,d5
loc_208b4a:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_208b5a
loc_208b52:
	bsr.w sub_207318
	bne.w loc_208c10
loc_208b5a:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$208cb8,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208bb8
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_208bb8
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_208bb8:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_208c00
	move.w d4,d0
	jsr (sub_200842).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_208c00
	subi.w #$80,d4
	bcc.s loc_208c00
	move.w #$288,d4
loc_208c00:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_208b52
loc_208c10:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_20233e).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203616
	addi.w #$18,$12(a0)
	bmi.s loc_208c70
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_208c70
	jsr (sub_206612).l
	tst.w d1
	bpl.s loc_208c70
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_208c70:
	tst.b ($ff1916).l
	beq.s loc_208cac
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_208cac
	bra.w sub_20366c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208aca
	lea (dat_208cb0).l,a1
	bsr.w sub_205892
	bra.w sub_20366c
loc_208cac:
	bra.w sub_203718
dat_208cb0:
	.incbin 36016, 402
loc_208e42:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208e70(pc,d0.w),d0
	jsr dat_208e70(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208e6e
	cmpi.w #$5a,($f786).w
	bcs.s loc_208e68
	btst.b #$0,($ff1505).l
	bne.s loc_208e6e
loc_208e68:
	jmp (sub_20366c).l
loc_208e6e:
	rts
dat_208e70:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20944a,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208ea4
	move.b #$13,$1a(a0)
loc_208ea4:
	rts
loc_208ea6:
	tst.b ($ff0f01).l
	beq.s loc_208eb4
	jmp (sub_203718).l
loc_208eb4:
	cmpi.b #$a,$28(a0)
	beq.w loc_208e42
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208ed8(pc,d0.w),d0
	jsr dat_208ed8(pc,d0.w)
	jsr (sub_20366c).l
	jmp (loc_20734e).l
dat_208ed8:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20944a,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208f26
	tst.b $29(a0)
	bne.s loc_208f26
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_208f26:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_208ff2
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_208f4e
	addq.b #$2,$1a(a0)
loc_208f4e:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208f62
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_208f62:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_208fc8
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208f94
	tst.b $29(a0)
	beq.s loc_208f8c
	tst.b ($ff1956).l
	beq.s loc_208fc8
	bra.s loc_208f94
loc_208f8c:
	tst.b ($ff1956).l
	bne.s loc_208fc8
loc_208f94:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_208ff2
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_208fc2
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_208fc2:
	jsr (sub_205852).l
loc_208fc8:
	rts
	.incbin 36810, 40

sub_208ff2:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20902a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209022
	moveq #$0,d1
	bra.s loc_20902a
loc_209022:
	cmpi.w #$3,d1
	bcs.s loc_20902a
	moveq #$2,d1
loc_20902a:
	add.w d1,d0
	rts

sub_20902e:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209050
	tst.b ($ff1956).l
	beq.s loc_209048
	tst.b $29(a0)
	bne.s loc_209050
	rts
loc_209048:
	tst.b $29(a0)
	beq.s loc_209050
	rts
loc_209050:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207e12).l
	tst.b $28(a0)
	bne.s loc_209072
	tst.b ($ff0f01).l
	beq.s loc_209072
	jmp (loc_20734e).l
loc_209072:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208ea6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20908a(pc,d0.w),d1
	jmp dat_20908a(pc,d1.w)
dat_20908a:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20944a,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2090d4
	tst.b $29(a0)
	bne.s loc_2090d4
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_2090d4:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_208ff2
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209100
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209100:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20915a
	move.b $25(a0),d0
	beq.s loc_20913a
	bsr.w sub_2035b4
	jsr (sub_206612).l
	tst.w d1
	bpl.w loc_209148
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209148
loc_20913a:
	tst.b $1(a0)
	bpl.s loc_209148
	lea ($d000).w,a1
	bsr.w sub_20902e
loc_209148:
	tst.w ($ff190e).l
	bne.s loc_20915a
	lea (dat_2093c2).l,a1
	bsr.w sub_205892
loc_20915a:
	bsr.w sub_20366c
	jmp (loc_20734e).l
	.incbin 37220, 522

sub_20936e:
	bne.s loc_20937a
	move.w #$82,d0
	jsr (sub_205852).l
loc_20937a:
	move.w #$6c,d0
	jmp (sub_205852).l
	.incbin 37764, 62
dat_2093c2:
	.incbin 37826, 586
loc_20960c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209620(pc,d0.w),d0
	jsr dat_209620(pc,d0.w)
	jmp (sub_20366c).l
dat_209620:
	.incbin 38432, 146
	tst.b $28(a0)
	bmi.w loc_20960c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2096c8(pc,d0.w),d0
	jmp dat_2096c8(pc,d0.w)
dat_2096c8:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$209762,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_2096f8
	move.b #$3,$1a(a0)
	bra.s loc_209718
loc_2096f8:
	tst.w ($ff1588).l
	beq.s loc_209706
	move.b #$2,$1a(a0)
loc_209706:
	tst.b $28(a0)
	beq.s loc_209718
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_209718:
	tst.b $28(a0)
	bne.s loc_20975c
	tst.b $29(a0)
	beq.s loc_209748
	tst.w ($ff1512).l
	beq.s loc_209734
	bclr.b #$5,$2(a0)
	bra.s loc_20975c
loc_209734:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20975c
	eori.b #$20,$2(a0)
	bra.s loc_20975c
loc_209748:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20975c
	move.b #$2,$1a(a0)
loc_20975c:
	jmp (sub_20366c).l
	.incbin 38754, 168

sub_20980a:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_209826
	move.l d1,(a3)
loc_209826:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_209850
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205852).l
loc_209850:
	rts
loc_209852:
	tst.w ($ff1588).l
	beq.s loc_2098a8
	bsr.w sub_209aa4
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
	lea (dat_209c04).l,a2
	moveq #$2,d6
	bsr.w sub_209c5c
	bra.w loc_209902
loc_2098a8:
	tst.b ($ff1511).l
	beq.s loc_2098cc
	bpl.s loc_2098b6
	bsr.w sub_209a4e
loc_2098b6:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209b3e
loc_2098cc:
	tst.b ($ff150f).l
	beq.s loc_209902
	bpl.s loc_2098da
	bsr.w sub_209a3a
loc_2098da:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_2098fe
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_2098fe:
	bsr.w sub_209b34
loc_209902:
	tst.w ($ff1588).l
	bne.w loc_2099ae
	tst.b ($ff1510).l
	beq.w loc_2099ae
	tst.w ($f63a).w
	bne.w loc_2099ae
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209a0c
	tst.b ($f7cc).w
	bne.s loc_209958
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209958
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209958
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_209958
	move.b #$9,(a1)
loc_209958:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209c4a
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209c54
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_2099aa
	move.w #$63,d1
loc_2099aa:
	bsr.w sub_209c54
loc_2099ae:
	tst.b ($ff150e).l
	beq.s loc_2099c0
	clr.b ($ff150e).l
	bsr.w sub_209c2a
loc_2099c0:
	tst.b ($f7d6).w
	beq.s loc_209a0a
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_2099e0
	move.l #$6d400001,d0
loc_2099e0:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209ac2
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209a00
	move.l #$6e800001,d0
loc_209a00:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209ac2
loc_209a0a:
	rts
loc_209a0c:
	btst.b #$7,($ff152e).l
	bne.s loc_209a38
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206b86
	move.b #$1,($ff150c).l
loc_209a38:
	rts

sub_209a3a:
	move.l #$73600002,($c00004).l
	lea dat_209aa0(pc),a2
	move.w #$2,d2
	bra.s loc_209a6a

sub_209a4e:
	lea ($c00000).l,a6
	bsr.w sub_209c2a
	move.l #$70600002,($c00004).l
	lea dat_209a98(pc),a2
	move.w #$6,d2
loc_209a6a:
	lea (dat_233a34).l,a1
loc_209a70:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209a8c
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209a80:
	move.l (a3)+,(a6)
	dbf d1,loc_209a80
loc_209a86:
	dbf d2,loc_209a70
	rts
loc_209a8c:
	move.l #$0,(a6)
	dbf d1,loc_209a8c
	bra.s loc_209a86
dat_209a98:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209aa0:
	dc.b $ff,$ff,$00,$00

sub_209aa4:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209c20
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209c20

sub_209ac2:
	lea (dat_209bfc).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209ad2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209ad6:
	sub.l d3,d1
	bcs.s loc_209ade
	addq.w #$1,d2
	bra.s loc_209ad6
loc_209ade:
	add.l d3,d1
	tst.w d2
	beq.s loc_209ae8
	move.w #$1,d4
loc_209ae8:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209af4
	tst.w d6
	bne.s loc_209b26
loc_209af4:
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
loc_209b1a:
	addi.l #$400000,d0
	dbf d6,loc_209ad2
	rts
loc_209b26:
	moveq #$f,d5
loc_209b28:
	move.l #$0,(a6)
	dbf d5,loc_209b28
	bra.s loc_209b1a

sub_209b34:
	lea (dat_209c04).l,a2
	moveq #$2,d6
	bra.s loc_209b46

sub_209b3e:
	lea (dat_209bf8).l,a2
	moveq #$5,d6
loc_209b46:
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209b4e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209b52:
	sub.l d3,d1
	bcs.s loc_209b5a
	addq.w #$1,d2
	bra.s loc_209b52
loc_209b5a:
	add.l d3,d1
	tst.w d2
	beq.s loc_209b64
	move.w #$1,d4
loc_209b64:
	tst.w d4
	beq.s loc_209b92
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
loc_209b92:
	addi.l #$400000,d0
	dbf d6,loc_209b4e
	rts
	.incbin 39838, 90
dat_209bf8:
	dc.b $00,$01,$86,$a0
dat_209bfc:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209c04:
	dc.b $00,$00,$00,$64
dat_209c08:
	dc.b $00,$00,$00,$0a
dat_209c0c:
	dc.b $00,$00,$00,$01
dat_209c10:
	.incbin 39952, 16

sub_209c20:
	moveq #$3,d6
	lea (dat_209c10).l,a2
	bra.s sub_209c5c

sub_209c2a:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209c40
	moveq #$9,d1
loc_209c40:
	lea (dat_209c0c).l,a2
	moveq #$0,d6
	bra.s sub_209c5c

sub_209c4a:
	lea (dat_209c0c).l,a2
	moveq #$0,d6
	bra.s sub_209c5c

sub_209c54:
	lea (dat_209c08).l,a2
	moveq #$1,d6

sub_209c5c:
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209c64:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209c68:
	sub.l d3,d1
	bcs.s loc_209c70
	addq.w #$1,d2
	bra.s loc_209c68
loc_209c70:
	add.l d3,d1
	tst.w d2
	beq.s loc_209c7a
	move.w #$1,d4
loc_209c7a:
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
	dbf d6,loc_209c64
	rts
	.incbin 40112, 1670
	moveq #$0,d1
	move.b ($ff1516).l,d1
	add.w d1,d0
	divu.w #$f,d0
	moveq #$14,d1
	cmp.w d1,d0
	bcs.s loc_20a34c
	move.w d1,d0
loc_20a34c:
	add.w d0,d0
	move.w dat_20a364(pc,d0.w),($f7d2).w
	move.w ($ff1512).l,d0
	mulu.w #$64,d0
	move.w d0,($f7d4).w
	rts
dat_20a364:
	.incbin 41828, 1224
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a83a(pc,d0.w),d0
	jmp dat_20a83a(pc,d0.w)
dat_20a83a:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205852).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20a910,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20a896
	tst.b ($ff1508).l
	beq.s loc_20a89e
	move.l #$20a914,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20a89e
loc_20a896:
	tst.b ($ff1508).l
	bne.s loc_20a8ae
loc_20a89e:
	bset.b #$7,($ff156b).l
	jsr (sub_207318).l
	beq.s loc_20a8b4
loc_20a8ae:
	jmp (sub_203718).l
loc_20a8b4:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20a8f6
	move.w #$6e,d0
	jmp (sub_205852).l
loc_20a8f6:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20a90a
	bge.s loc_20a906
	neg.w d0
loc_20a906:
	add.w d0,$8(a0)
loc_20a90a:
	jmp (sub_20366c).l
	.incbin 43280, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a956(pc,d0.w),d0
	jmp dat_20a956(pc,d0.w)
dat_20a956:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20b054,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20b014).l,a2
loc_20a9a4:
	jsr (sub_207318).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20b054,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20a9f6
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20a9f6:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20a9a4
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20aa1e
	bge.s loc_20aa14
	neg.w d0
loc_20aa14:
	add.w d0,$a(a0)
	jmp (sub_20366c).l
loc_20aa1e:
	addq.b #$4,$24(a0)
	jmp (sub_20366c).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20aa42
	bge.s loc_20aa38
	neg.w d0
loc_20aa38:
	add.w d0,$8(a0)
	jmp (sub_20366c).l
loc_20aa42:
	addq.b #$4,$24(a0)
	jmp (sub_20366c).l
	tst.b $1e(a0)
	beq.s loc_20aa5c
	subq.b #$1,$1e(a0)
	jmp (sub_20366c).l
loc_20aa5c:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20aa76
	bge.s loc_20aa6c
	neg.w d0
loc_20aa6c:
	add.w d0,$a(a0)
	jmp (sub_20366c).l
loc_20aa76:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202508).l
	tst.b $1e(a0)
	beq.s loc_20aa98
	subq.b #$1,$1e(a0)
	jmp (sub_20366c).l
loc_20aa98:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20aab2
	bge.s loc_20aaa8
	neg.w d0
loc_20aaa8:
	add.w d0,$8(a0)
	jmp (sub_20366c).l
loc_20aab2:
	jmp (sub_203718).l
	tst.l ($f680).w
	bne.s loc_20aacc
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203718).l
loc_20aacc:
	rts
	.incbin 43726, 1350
dat_20b014:
	.incbin 45076, 3306
loc_20bcfe:
	lea dat_20bd50(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bd0a:
	cmp.w (a1)+,d0
	bcs.s loc_20bd12
	addq.b #$2,d1
	bra.s loc_20bd0a
loc_20bd12:
	move.b d1,($ff1574).l
	move.w dat_20bd68(pc,d1.w),d0
	jmp (sub_202508).l

sub_20bd22:
	lea dat_20bd50(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bd2e:
	cmp.w (a1)+,d0
	bcs.s loc_20bd36
	addq.b #$2,d1
	bra.s loc_20bd2e
loc_20bd36:
	cmp.b ($ff1574).l,d1
	bne.s loc_20bd40
	rts
loc_20bd40:
	move.b d1,($ff1574).l
	move.w dat_20bd5c(pc,d1.w),d0
	jmp (loc_20253a).l
dat_20bd50:
	dc.b $07,$00,$0b,$00,$0f,$00,$14,$00
	dc.b $18,$20,$ff,$ff
dat_20bd5c:
	dc.b $00,$09,$00,$0a,$00,$0b,$00,$0c
	dc.b $00,$0d,$00,$0e
dat_20bd68:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06
	dc.b $00,$07,$00,$08

sub_20bd74:
	move.w #$4ea,d1
	cmpi.b #$e,d0
	beq.s loc_20bd82
	move.w #$4f2,d1
loc_20bd82:
	move.w d1,$2(a0)
	rts
	.incbin 48520, 42
	tst.b $28(a0)
	bmi.w loc_20bea4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bdd8(pc,d0.w),d0
	jsr dat_20bdd8(pc,d0.w)
	jsr (sub_20366c).l
	move.w $36(a0),d0
	jmp (loc_207352).l
dat_20bdd8:
	.incbin 48600, 204
loc_20bea4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bef8(pc,d0.w),d0
	jsr dat_20bef8(pc,d0.w)
	jsr (sub_20366c).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20bee8
	movea.w d1,a1
	tst.b $0(a1)
	beq.s loc_20bef2
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20bee8:
	move.w $36(a0),d0
	jmp (loc_207352).l
loc_20bef2:
	jmp (sub_203718).l
dat_20bef8:
	dc.b $00,$04,$00,$54
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$488,$2(a0)
	move.b #$4,$18(a0)
	move.l #$20bfea,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	cmpi.b #$ff,$28(a0)
	beq.s loc_20bf4c
	move.b #$1,$1a(a0)
	move.b #$83,$20(a0)
	move.b #$12,$19(a0)
loc_20bf4c:
	tst.b $1a(a0)
	bne.w loc_20bfbc
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20bf64
	neg.w d0
loc_20bf64:
	cmpi.w #$20,d0
	bcc.s loc_20bfba
	jsr (sub_207e12).l
	beq.s loc_20bfba
	btst.b #$3,$22(a0)
	beq.s loc_20bfba
	tst.b ($ff1521).l
	bne.s loc_20bfba
	tst.b ($ff151f).l
	bne.s loc_20bfba
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20bfb8
	tst.w $30(a0)
	bne.s loc_20bfb8
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206ad8).l
loc_20bfb8:
	movea.l (a7)+,a0
loc_20bfba:
	rts
loc_20bfbc:
	btst.b #$7,$1(a0)
	beq.s loc_20bfe8
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20bfd4
	neg.w d0
loc_20bfd4:
	cmpi.w #$20,d0
	bcc.s loc_20bfe8
	move.w $8(a0),d3
	move.w $c(a0),d4
	jsr (sub_207e12).l
loc_20bfe8:
	rts
	.incbin 49130, 694
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c2c0(pc,d0.w),d0
	jsr dat_20c2c0(pc,d0.w)
	bsr.s sub_20c2c4
	jsr (sub_20366c).l
	move.w $36(a0),d0
	jmp (loc_207352).l
dat_20c2c0:
	dc.b $00,$0e,$00,$38

sub_20c2c4:
	lea ($d000).w,a1
	jmp (sub_207e12).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$41b,$2(a0)
	move.l #$20c376,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	tst.b $3a(a0)
	bne.s loc_20c31e
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea dat_20c346(pc,d0.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$3a(a0)
	move.b (a2)+,$19(a0)
	move.b (a2)+,$16(a0)
	bra.s loc_20c334
loc_20c31e:
	subq.b #$1,$3a(a0)
	bne.s loc_20c334
	addq.b #$1,$3c(a0)
	cmpi.b #$c,$3c(a0)
	bcs.s loc_20c334
	clr.b $3c(a0)
loc_20c334:
	clr.w $12(a0)
	tst.b $1a(a0)
	bne.s loc_20c344
	move.w #$100,$12(a0)
loc_20c344:
	rts
dat_20c346:
	.incbin 49990, 224
	tst.b $29(a0)
	bpl.s loc_20c430
	bra.w loc_20c554
loc_20c430:
	jsr (sub_20e396).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c454(pc,d0.w),d0
	jsr dat_20c454(pc,d0.w)
	jsr (sub_20366c).l
	move.w $30(a0),d0
	jmp (loc_207352).l
dat_20c454:
	dc.b $00,$06,$00,$92,$00,$ae
	move.w $8(a0),$30(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$244e,$2(a0)
	move.l #$20c546,$4(a0)
	move.b #$18,$19(a0)
	move.b #$e,$16(a0)
	move.b #$2a,$20(a0)
	move.l #$ffffb000,$2c(a0)
	addq.b #$2,$24(a0)
	jsr (sub_20732e).l
	beq.s loc_20c4a6
	jmp (sub_203718).l
loc_20c4a6:
	move.b $0(a0),$0(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w a0,$3e(a1)
	tst.b $29(a0)
	beq.s loc_20c4e6
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
loc_20c4e6:
	addi.l #$10000,$c(a0)
	jsr (sub_206612).l
	tst.w d1
	bpl.s loc_20c500
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20c500:
	rts
	tst.b $1(a0)
	bpl.s loc_20c520
	addq.w #$1,$32(a0)
	move.w $32(a0),d0
	andi.w #$1f,d0
	bne.s loc_20c520
	move.w #$b1,d0
	jsr (sub_20233e).l
loc_20c520:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	jsr (sub_206612).l
	add.w d1,$c(a0)
	addi.w #$ffff,$2a(a0)
	bpl.s loc_20c544
	move.w #$199,$2a(a0)
	neg.l $2c(a0)
loc_20c544:
	rts
	dc.b $00,$02,$02,$f0,$0f,$00,$00,$e8
	dc.b $f0,$07,$00,$10,$08,$00
loc_20c554:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c568(pc,d0.w),d0
	jsr dat_20c568(pc,d0.w)
	jmp (sub_20366c).l
dat_20c568:
	dc.b $00,$04,$00,$34
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$244e,$2(a0)
	move.l #$20c620,$4(a0)
	move.b #$c,$19(a0)
	move.b #$10,$16(a0)
	move.b #$ab,$20(a0)
	movea.w $3e(a0),a1
	cmpi.b #$24,$0(a1)
	beq.s loc_20c5ae
	jmp (sub_203718).l
loc_20c5ae:
	tst.b $28(a0)
	bne.s loc_20c5c8
	addi.w #$ffff,$2a(a0)
	bpl.s loc_20c5f2
	move.w #$3c,$2a(a0)
	eori.b #$1,$1c(a0)
loc_20c5c8:
	move.w #$ffe7,$2c(a0)
	move.w #$0,$2e(a0)
	tst.b $1c(a0)
	beq.s loc_20c5e6
	move.w #$ffed,$2c(a0)
	move.w #$fff1,$2e(a0)
loc_20c5e6:
	btst.b #$0,$1(a0)
	beq.s loc_20c5f2
	neg.w $2c(a0)
loc_20c5f2:
	move.w $8(a1),d0
	move.w $c(a1),d1
	add.w $2c(a0),d0
	add.w $2e(a0),d1
	move.w d0,$8(a0)
	move.w d1,$c(a0)
	lea dat_20c614(pc),a1
	jmp (sub_205892).l
dat_20c614:
	.incbin 50708, 1614
	tst.b $28(a0)
	beq.s loc_20cc6c
	bra.w loc_20ce10
loc_20cc6c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cc94(pc,d0.w),d0
	jsr dat_20cc94(pc,d0.w)
	lea dat_20cdaa(pc),a1
	jsr (sub_205892).l
	jsr (sub_20366c).l
	move.w $30(a0),d0
	jmp (loc_207352).l
dat_20cc94:
	dc.b $00,$06,$00,$d8,$00,$f0
	move.w $8(a0),$30(a0)
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$36a,$2(a0)
	move.w #$80,$2a(a0)
	move.l #$10000,$2c(a0)
	move.l #$20cdb0,$4(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$2e,$16(a0)
	jsr (sub_20732e).l
	beq.s loc_20ccec
	jmp (sub_203718).l
loc_20ccec:
	move.b $0(a0),$0(a1)
	move.w a0,$3e(a1)
	move.b #$1,$28(a1)
	lea (a1),a2
	jsr (sub_20732e).l
	beq.s loc_20cd0c
	jmp (sub_203718).l
loc_20cd0c:
	move.b $0(a0),$0(a1)
	move.w a0,$3e(a1)
	move.b #$ff,$28(a1)
	move.w #$ffd4,$3c(a1)
	move.w #$14,$3c(a2)
	bset.b #$1,$1(a2)
	bset.b #$1,$22(a2)
	lea (a1),a6
	bsr.s sub_20cd3a
	lea (a2),a6

sub_20cd3a:
	ori.b #$4,$1(a6)
	move.w #$36a,$2(a6)
	move.w a0,$3e(a6)
	move.b #$3,$18(a6)
	move.l #$20cf1a,$4(a6)
	move.b #$20,$17(a6)
	move.b #$20,$19(a6)
	move.b #$1c,$16(a6)
	rts
	addq.w #$1,$c(a0)
	jsr (sub_206612).l
	tst.w d1
	bpl.s loc_20cd82
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20cd82:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	jsr (sub_206612).l
	add.w d1,$c(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20cda8
	neg.l $2c(a0)
	move.w #$80,$2a(a0)
loc_20cda8:
	rts
dat_20cdaa:
	.incbin 52650, 102
loc_20ce10:
	movea.w $3e(a0),a1
	cmpi.b #$28,$0(a1)
	beq.s loc_20ce22
	jmp (sub_203718).l
loc_20ce22:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ce4e(pc,d0.w),d0
	jsr dat_20ce4e(pc,d0.w)
	movea.w $3e(a0),a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.w $3c(a0),d0
	add.w d0,$c(a0)
	jmp (sub_20366c).l
dat_20ce4e:
	.incbin 52814, 18
	tst.b $28(a0)
	bpl.s loc_20ce6e
	move.b #$a,$24(a0)
	bra.s loc_20cebe
loc_20ce6e:
	move.b #$2,$24(a0)
	bra.w loc_20ce78
loc_20ce78:
	move.b #$6,$1a(a0)
	move.w #$5,$2a(a0)
	move.w #$0,$20(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20ce9c
	addq.b #$2,$24(a0)
	bra.s loc_20ce9e
loc_20ce9c:
	rts
loc_20ce9e:
	move.b #$7,$1a(a0)
	move.w #$49,$2a(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20cebc
	addq.b #$2,$24(a0)
	bra.s loc_20cebe
loc_20cebc:
	rts
loc_20cebe:
	move.b #$6,$1a(a0)
	move.w #$5,$2a(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20cedc
	addq.b #$2,$24(a0)
	bra.s loc_20cede
loc_20cedc:
	rts
loc_20cede:
	move.w #$ff,$1c(a0)
	move.w #$49,$2a(a0)
	move.w #$a800,$20(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20cf06
	addi.b #$f2,$24(a0)
	bra.w loc_20ce78
loc_20cf06:
	lea dat_20cf10(pc),a1
	jmp (sub_205892).l
dat_20cf10:
	.incbin 53008, 656
	tst.b $28(a0)
	bne.w loc_20d30c
	tst.b $29(a0)
	beq.s loc_20d1d4
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20d4bc
	move.w $2e(a0),d0
	cmp.w $2e(a1),d0
	bne.w loc_20d4bc
	move.w $30(a0),d0
	cmp.w $30(a1),d0
	bne.w loc_20d4bc
loc_20d1d4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d1fa(pc,d0.w),d0
	jsr dat_20d1fa(pc,d0.w)
	jsr (sub_20366c).l
	tst.b $29(a0)
	bmi.s loc_20d1f8
	move.w $2e(a0),d0
	jmp (loc_207352).l
loc_20d1f8:
	rts
dat_20d1fa:
	dc.b $00,$08,$00,$aa,$00,$ba,$00,$fa
	lea dat_20d53c(pc),a5
	moveq #$0,d0
	move.b $29(a0),d0
	add.w d0,d0
	adda.w $0(a5,d0.w),a5
	move.w (a5)+,$2c(a0)
	lea (a0),a6
	bsr.s sub_20d264
	move.w (a5)+,d6
	bra.s loc_20d25e
loc_20d21e:
	jsr (sub_207318).l
	beq.s loc_20d22c
	jmp (sub_203718).l
loc_20d22c:
	move.b $0(a0),$0(a1)
	move.w a0,$2a(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w (a5)+,$2c(a1)
	move.w $8(a0),d0
	move.w $c(a0),d1
	add.w (a5)+,d0
	add.w (a5)+,d1
	move.w d0,$8(a1)
	move.w d1,$c(a1)
	lea (a1),a6
	bsr.s sub_20d264
loc_20d25e:
	dbf d6,loc_20d21e
	rts

sub_20d264:
	move.b #$2,$24(a6)
	ori.b #$4,$1(a6)
	move.b #$3,$18(a6)
	move.b #$10,$17(a6)
	move.b #$10,$19(a6)
	move.b #$5,$16(a6)
	move.w #$34c,$2(a6)
	move.l #$20d4d2,$4(a6)
	move.w $8(a0),$2e(a6)
	move.w $c(a0),$30(a6)
	rts
	move.b #$5,$16(a0)
	move.w #$78,$2c(a0)
	addq.b #$2,$24(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_207e0c).l
	sne $3e(a0)
	addi.w #$ffff,$2c(a0)
	bne.s loc_20d2f2
	move.b #$10,$16(a0)
	move.w #$ff,$1c(a0)
	addq.b #$2,$24(a0)
	tst.b $3e(a0)
	beq.s loc_20d2f2
	lea ($d000).w,a1
	jmp (sub_207cc4).l
loc_20d2f2:
	rts
	lea dat_20d4c2(pc),a1
	jsr (sub_205892).l
	tst.b $1a(a0)
	bne.s loc_20d30a
	move.b #$2,$24(a0)
loc_20d30a:
	rts
loc_20d30c:
	tst.b $29(a0)
	beq.s loc_20d338
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20d4bc
	move.w $2c(a0),d0
	cmp.w $2c(a1),d0
	bne.w loc_20d4bc
	move.w $2e(a0),d0
	cmp.w $2e(a1),d0
	bne.w loc_20d4bc
loc_20d338:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d35e(pc,d0.w),d0
	jsr dat_20d35e(pc,d0.w)
	jsr (sub_20366c).l
	tst.b $29(a0)
	bmi.s loc_20d35c
	move.w $2c(a0),d0
	jmp (loc_207352).l
loc_20d35c:
	rts
dat_20d35e:
	.incbin 54110, 350
loc_20d4bc:
	jmp (sub_203718).l
dat_20d4c2:
	.incbin 54466, 122
dat_20d53c:
	.incbin 54588, 3674

sub_20e396:
	tst.b ($ff156a).l
	beq.s loc_20e3dc
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e3ae
	tst.b $28(a0)
	beq.s loc_20e3dc
loc_20e3ae:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203718).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e3da
	move.w #$9e,d0
	jsr (sub_20233e).l
loc_20e3da:
	addq.l #$4,a7
loc_20e3dc:
	rts
	.incbin 58334, 1362

sub_20e930:
	jsr (sub_206106).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20eb0c).l,a1
	move.w #$3f,d6
	bsr.w sub_20eac8
	bne.s loc_20e972
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7fa0,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20e972:
	lea (dat_20eb1e).l,a1
	move.w #$3f,d6
	bsr.w sub_20eac8
	bne.s loc_20e9a6
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$40a0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20e9a6:
	lea (dat_20eb30).l,a1
	move.w #$7f,d6
	bsr.w sub_20eac8
	bne.s loc_20e9da
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$41a0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20e9da:
	lea (dat_20ea96).l,a1
	move.w #$7f,d6
	bsr.w sub_20ea44
	bne.s loc_20ea0e
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7da0,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20ea0e:
	lea (dat_20eb42).l,a1
	move.w #$1f,d6
	bsr.w sub_20eac8
	bne.s loc_20ea42
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$43a0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20ea42:
	rts

sub_20ea44:
	subq.b #$1,(a2)
	bpl.s loc_20ea8a
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20ea54
	moveq #$0,d0
loc_20ea54:
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
loc_20ea78:
	move.l (a1)+,(a3)+
	dbf d6,loc_20ea78
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20ea8a:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20ea96:
	.incbin 60054, 50

sub_20eac8:
	subq.b #$1,(a2)
	bpl.w loc_20eb00
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20eade
	moveq #$0,d0
loc_20eade:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20eaee:
	move.l (a1)+,(a3)+
	dbf d6,loc_20eaee
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20eb00:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20eb0c:
	.incbin 60172, 18
dat_20eb1e:
	.incbin 60190, 18
dat_20eb30:
	.incbin 60208, 18
dat_20eb42:
	.incbin 60226, 30
dat_20eb60:
	.incbin 60256, 16
dat_20eb70:
	.incbin 60272, 2388
	jmp (loc_206358).l
	.incbin 62666, 1706
	tst.b $24(a0)
	bne.s loc_20fb9e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$11,$16(a0)
	move.l #$20fbde,$4(a0)
loc_20fb9e:
	move.b ($ff1588).l,$1a(a0)
	tst.b ($ff1956).l
	beq.s loc_20fbbe
	lea ($d000).w,a1
	jsr ($2094bc).l
	sne $2a(a0)
	bra.s loc_20fbd2
loc_20fbbe:
	tst.b $2a(a0)
	beq.s loc_20fbd2
	clr.b $2a(a0)
	lea ($d000).w,a1
	jsr (sub_20936e).l
loc_20fbd2:
	jsr (sub_2038cc).l
	jmp (loc_207928).l
	.incbin 64478, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20fc06(pc,d0.w),d0
	jsr dat_20fc06(pc,d0.w)
	move.w $36(a0),d0
	jmp (loc_20792c).l
dat_20fc06:
	dc.b $00,$04,$00,$64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20fdfa,$4(a0)
	move.b #$7f,$19(a0)
	move.b #$7f,$16(a0)
	move.w $8(a0),$36(a0)
	move.b $29(a0),d0
	andi.b #$3,d0
	move.b d0,$30(a0)
	move.b #$1,$18(a0)
	move.w #$a4af,$2(a0)
	btst.b #$3,$29(a0)
	beq.s loc_20fc6a
	move.b #$3,$18(a0)
	move.w #$24af,$2(a0)
	cmpi.b #$1,($ff152e).l
	beq.s loc_20fc6a
	addi.w #$2000,$2(a0)
loc_20fc6a:
	move.w ($f704).w,d0
	addi.w #$70,d0
	move.w d0,$c(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20fcb8(pc,d0.w),d0
	jsr dat_20fcb8(pc,d0.w)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
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
dat_20fcb8:
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
	.incbin 192944, 18180
dat_2338b4:
	.incbin 211124, 384
dat_233a34:
	.incbin 211508, 10518
dat_23634a:
	.incbin 222026, 256
dat_23644a:
	.incbin 222282, 4096
dat_23744a:
	.incbin 226378, 4696
dat_2386a2:
	.incbin 231074, 12894
dat_23b900:
	.incbin 243968, 18176
