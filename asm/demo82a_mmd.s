; DEMO82A.MMD
; disassembled from the disc; code only, data comes from data/DEMO82A.MMD at build time
	.file "DEMO82A.MMD", 262144

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
	bsr.w sub_202204
	bsr.w sub_20217a
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
	bsr.w sub_202598
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
	bsr.w sub_202598
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
	bsr.w sub_202598
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
	bsr.w sub_202598
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
	bne.s loc_20150a
	move.b #$1,($ff156a).l
loc_20150a:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($ff158e).l
	bset.b #$1,($ff151c).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201586
	clr.b ($ff1587).l
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2070d2
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201586
	move.b #$1,($ff1508).l
loc_201586:
	bset.b #$7,($f600).w
	bsr.w sub_20258a
	tst.b ($ff156e).l
	bne.s loc_2015ac
	btst.b #$7,($ff152e).l
	beq.s loc_2015e2
	bset.b #$0,($ff151d).l
	beq.s loc_2015b8
loc_2015ac:
	bsr.w sub_2004f2
	bclr.b #$0,($ff151d).l
loc_2015b8:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_20165a
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2015e0
	bclr.b #$7,($ff152e).l
loc_2015e0:
	rts
loc_2015e2:
	bset.b #$0,($ff151d).l
	beq.s loc_2015f0
	bsr.w sub_2003c6
loc_2015f0:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20160c
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	rts
loc_20160c:
	tst.b ($ff1508).l
	bne.s loc_20165a
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
	move.b #$0,($ff1587).l
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201644:
	move.l #$0,(a1)+
	dbf d6,loc_201644
	move.b #$c,($f62a).w
	bsr.w sub_200836
	rts
loc_20165a:
	cmpi.w #$800,($f78e).w
	bne.s loc_201678
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201678:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_20168e
	btst.b #$7,($ff152e).l
	beq.s loc_201694
loc_20168e:
	move.l #$eee0eee,d0
loc_201694:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20169c:
	move.l d0,(a1)+
	dbf d6,loc_20169c
loc_2016a2:
	move.b #$c,($f62a).w
	bsr.w sub_200836
	bsr.w sub_202598
	bne.s loc_2016a2
	tst.l ($f680).w
	bsr.w sub_201b56
	moveq #$0,d0
	lea (dat_20faae).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2016cc
	bsr.w sub_20269e
loc_2016cc:
	moveq #$1,d0
	bsr.w sub_20269e
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2016e8:
	move.l d0,(a1)+
	dbf d1,loc_2016e8
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2016fa:
	move.l d0,(a1)+
	dbf d1,loc_2016fa
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_20170a:
	move.l d0,(a1)+
	dbf d1,loc_20170a
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_20171c:
	move.l d0,(a1)+
	dbf d1,loc_20171c
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20172c:
	move.l d0,(a1)+
	dbf d1,loc_20172c
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_20173c:
	move.l d0,(a1)+
	dbf d1,loc_20173c
	move.w #$2700,sr
	move.l #$214000,($f78a).w
	move.w #$1,($ff1580).l
	move.w #$0,($f78e).w
	bsr.w sub_2022a6
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
	bsr.w sub_202900
	bsr.w sub_202a2a
	bset.b #$2,($f754).w
	bsr.w sub_203460
	bsr.w sub_203376
	jsr (sub_201458).l
	bsr.w sub_201a90
loc_2017c4:
	move.b #$c,($f62a).w
	bsr.w sub_200836
	bsr.w sub_202598
	bne.s loc_2017c4
	tst.l ($f680).w
	bne.s loc_2017c4
	bsr.w sub_201a1c
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201bb6
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201828
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201828:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20186a
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20186a:
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
	jsr (sub_20f8e8).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2018fa
loc_2018f4:
	bsr.w sub_200444
	bra.s loc_201908
loc_2018fa:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2018f4
	bsr.w sub_200324
loc_201908:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201916:
	move.b #$8,($f62a).w
	bsr.w sub_200836
	tst.b ($f7cc).w
	bne.s loc_201934
	btst.b #$7,($f605).w
	beq.s loc_201934
	eori.b #$1,($f63a).w
loc_201934:
	btst.b #$0,($f63a).w
	beq.w loc_2019ba
	bsr.w sub_201c1a
	tst.w ($ff1580).l
	bne.s loc_201994
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20198c
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201916
	subq.b #$1,($ff1508).l
	bpl.s loc_20196e
	clr.b ($ff1508).l
loc_20196e:
	move.w #$e,d0
	jsr (sub_205870).l
	bsr.w sub_2070d2
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_20199a
loc_20198c:
	andi.b #$70,d0
	beq.w loc_201916
loc_201994:
	clr.b ($ff1508).l
loc_20199a:
	clr.b ($ff1587).l
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	move.w #$800,($f78e).w
	bra.w loc_2014f2
loc_2019ba:
	bsr.w sub_201c60
	addq.w #$1,($ff1504).l
	jsr (sub_2070e8).l
	jsr (sub_2035a0).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2014f2
	tst.w ($ff1502).l
	bne.w loc_2014f2
	tst.w ($ff1906).l
	bne.s loc_2019f4
	cmpi.b #$6,($d024).w
	bcc.s loc_2019f8
loc_2019f4:
	bsr.w sub_202a2a
loc_2019f8:
	jsr (sub_20374a).l
	tst.w ($ff190e).l
	bne.s loc_201a0a
	bsr.w sub_200184
loc_201a0a:
	jsr (sub_20cb28).l
	bsr.w sub_202598
	bsr.w sub_201ac2
	bra.w loc_201916

sub_201a1c:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201a34
	move.w #$78,$30(a1)
loc_201a34:
	rts
	dc.b $43,$f9,$00,$ff,$19,$00,$70,$00
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	move.b $0(a1,d0.w),d0
	beq.s loc_201a8e
	subq.b #$1,d0
	lea ($d800).w,a2
	moveq #$0,d1
loc_201a56:
	move.b #$1f,$0(a2)
	move.w d1,d2
	add.w d2,d2
	add.w d2,d2
	moveq #$0,d3
	move.b ($ff152e).l,d3
	bclr.l #$7,d3
	lsl.w #$8,d3
	add.w d3,d2
	lea ($ff1600).l,a3
	move.w $0(a3,d2.w),$8(a2)
	move.w $2(a3,d2.w),$c(a2)
	adda.w #$40,a2
	addq.b #$1,d1
	dbf d0,loc_201a56
loc_201a8e:
	rts

sub_201a90:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201aa2(pc,d0.w),($f796).w
	rts
dat_201aa2:
	.incbin 6818, 32

sub_201ac2:
	subq.b #$1,($ff1910).l
	bpl.s loc_201ae0
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201ae0:
	subq.b #$1,($ff1912).l
	bpl.s loc_201afe
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201afe:
	subq.b #$1,($ff1914).l
	bpl.s loc_201b26
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201b26
	move.b #$0,($ff1915).l
loc_201b26:
	tst.b ($ff1916).l
	beq.s loc_201b54
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201b54:
	rts

sub_201b56:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b78
	cmpi.b #$2,d0
	bne.s loc_201b78
	add.b ($ff156a).l,d0
loc_201b78:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b90(pc,d1.w),d0
	jmp (sub_205870).l
dat_201b90:
	.incbin 7056, 38

sub_201bb6:
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

sub_201c1a:
	move.w #$ab,d0
	jsr (sub_202394).l
	bset.b #$7,($f63a).w
	bne.s loc_201c5e
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c44
loc_201c3a:
	move.w #$d5,d0
	jmp (sub_205870).l
loc_201c44:
	tst.b ($ff151f).l
	bne.s loc_201c3a
	tst.b ($ff1520).l
	bne.s loc_201c3a
	move.w #$90,d0
	jmp (sub_205870).l
loc_201c5e:
	rts

sub_201c60:
	bclr.b #$7,($f63a).w
	beq.s loc_201c9a
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c80
loc_201c76:
	move.w #$d6,d0
	jmp (sub_205870).l
loc_201c80:
	tst.b ($ff151f).l
	bne.s loc_201c76
	tst.b ($ff1520).l
	bne.s loc_201c76
	move.w #$91,d0
	jmp (sub_205870).l
loc_201c9a:
	rts
	.incbin 7324, 82
loc_201cee:
	jsr (sub_2023a6).l
	tst.b ($f63a).w
	bne.s loc_201d02
	bsr.w sub_20213a
	bsr.w sub_202128
loc_201d02:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
	.incbin 7438, 90
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201db2
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201db2:
	move.w ($f624).w,(a5)
	jsr (sub_202348).l
	bra.w loc_201cee
	.incbin 7616, 70
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
	bsr.w sub_205792
	tst.b ($f767).w
	beq.s loc_201eaa
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201eaa:
	jsr (sub_20f8e8).l
	jsr (sub_202348).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f6c
	bsr.w sub_20260a
	jmp (loc_20a3a0).l
	dc.b $4e,$75,$4e,$b9,$00,$20,$23,$2c
	dc.b $61,$00,$02,$ac
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
	jsr (sub_202348).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f6c
	bra.w loc_2025ee
	.incbin 8066, 68
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
	jsr (sub_202348).l
	lea ($d000).w,a0
	bsr.w sub_205792
	tst.b ($f767).w
	beq.s loc_202070
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202070:
	tst.w ($f614).w
	beq.w loc_20207c
	subq.w #$1,($f614).w
loc_20207c:
	rts
	.incbin 8318, 16
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_2020d8
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_2020d8:
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
	jmp (sub_202348).l
	dc.b $4e,$73

sub_202128:
	tst.b ($d02a).w
	bne.s loc_202138
	tst.w ($f786).w
	beq.s loc_202138
	addq.w #$1,($f786).w
loc_202138:
	rts

sub_20213a:
	tst.w ($f780).w
	beq.s loc_202144
	addq.w #$1,($f780).w
loc_202144:
	tst.w ($f782).w
	beq.s loc_20214e
	addq.w #$1,($f782).w
loc_20214e:
	rts
	.incbin 8528, 42

sub_20217a:
	bsr.w sub_20232c
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202348
	.incbin 8598, 110

sub_202204:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202280).l,a2
	moveq #$12,d7
loc_202218:
	move.w (a2)+,(a0)
	dbf d7,loc_202218
	move.w (dat_202282).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_20223e:
	move.w d0,(a1)
	dbf d7,loc_20223e
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202270:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202270
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202280:
	dc.b $80,$04
dat_202282:
	.incbin 8834, 36

sub_2022a6:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2022c8:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022c8
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2022f6:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022f6
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202314:
	move.l d0,(a1)+
	dbf d1,loc_202314
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202324:
	move.l d0,(a1)+
	dbf d1,loc_202324
	rts

sub_20232c:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_20233c:
	btst.b #$0,($a11100).l
	bne.s loc_20233c
	rts

sub_202348:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9046, 62

sub_202394:
	tst.b ($f00b).w
	bne.s loc_2023a0
	move.b d0,($f00b).w
	rts
loc_2023a0:
	move.b d0,($f00c).w
	rts

sub_2023a6:
	jsr (sub_20232c).l
	tst.b ($f00b).w
	beq.w sub_202348
	move.b ($f00b).w,($a01c09).l
	move.b ($f00c).w,($f00b).w
	move.b #$0,($f00c).w
	bra.w sub_202348
	.incbin 9164, 32

sub_2023ec:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2024ae).l,a3
	lea ($c00000).l,a4
	bra.s loc_202408

sub_2023fe:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2024c4).l,a3
loc_202408:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202416
	adda.w #$a,a3
loc_202416:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2024da
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202436
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202436:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202482
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20245e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20245e:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_20246c:
	lsr.w #$4,d0
loc_20246e:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_20247c
	jmp (a3)

sub_202478:
	moveq #$0,d4
	moveq #$8,d3
loc_20247c:
	dbf d0,loc_20246e
	bra.s sub_202436
loc_202482:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202490
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202490:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_20246c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_20246c
dat_2024ae:
	.incbin 9390, 22
dat_2024c4:
	.incbin 9412, 22

sub_2024da:
	move.b (a0)+,d0
loc_2024dc:
	cmpi.b #$ff,d0
	bne.s loc_2024e4
	rts
loc_2024e4:
	move.w d0,d7
loc_2024e6:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2024dc
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
	bne.s loc_202514
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2024e6
loc_202514:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202520:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202520
	bra.s loc_2024e6

sub_20252c:
	movem.l a1-a2,-(a7)
	lea (dat_20fabe).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202544:
	tst.l (a2)
	beq.s loc_20254c
	addq.w #$6,a2
	bra.s loc_202544
loc_20254c:
	move.w (a1)+,d0
	bmi.s loc_202558
loc_202550:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202550
loc_202558:
	movem.l (a7)+,a1-a2
	rts
loc_20255e:
	movem.l a1-a2,-(a7)
	lea (dat_20fabe).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_20258a
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_202584
loc_20257c:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20257c
loc_202584:
	movem.l (a7)+,a1-a2
	rts

sub_20258a:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202590:
	clr.l (a2)+
	dbf d0,loc_202590
	rts

sub_202598:
	tst.l ($f680).w
	beq.s loc_2025ec
	tst.w ($f6f8).w
	bne.s loc_2025ec
	movea.l ($f680).w,a0
	lea (dat_2024ae).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2025ba
	adda.w #$a,a3
loc_2025ba:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2024da
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
loc_2025ec:
	rts
loc_2025ee:
	tst.w ($f6f8).w
	beq.w loc_20268c
loc_2025f6:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202628

sub_20260a:
	tst.w ($f6f8).w
	beq.s loc_20268c
	tst.b ($f744).w
	bne.s loc_2025f6
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202628:
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
loc_20265c:
	movea.w #$8,a5
	bsr.w sub_202478
	subq.w #$1,($f6f8).w
	beq.s loc_20268e
	subq.w #$1,($f6fa).w
	bne.s loc_20265c
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_20268c:
	rts
loc_20268e:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202694:
	move.l $6(a0),(a0)+
	dbf d0,loc_202694
	rts

sub_20269e:
	lea (dat_20fabe).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2026b0:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2023ec
	dbf d1,loc_2026b0
	rts
	.incbin 9936, 560

sub_202900:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_20295c).l,a0
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
	bra.w loc_202988
dat_20295c:
	.incbin 10588, 44
loc_202988:
	tst.b ($ff1522).l
	beq.s loc_2029a4
	jsr (sub_2064f4).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bra.s loc_2029ba
loc_2029a4:
	lea (dat_2029f6).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2029ba:
	subi.w #$a0,d1
	bcc.s loc_2029c2
	moveq #$0,d1
loc_2029c2:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2029cc
	move.w d2,d1
loc_2029cc:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2029d8
	moveq #$0,d0
loc_2029d8:
	cmp.w ($f72e).w,d0
	blt.s loc_2029e2
	move.w ($f72e).w,d0
loc_2029e2:
	move.w d0,($f704).w
	bsr.w sub_2029fe
	lea (dat_2029fa).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2029f6:
	dc.b $1b,$23,$05,$cc
dat_2029fa:
	dc.b $7f,$7f,$7f,$7f

sub_2029fe:
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

sub_202a2a:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202a36
	rts
loc_202a36:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202be2
	bsr.w sub_202c82
	bsr.w sub_203508
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202f0c
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202ed8
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202ea4
	move.l ($f704).w,d0
	lsr.l #$3,d0
	swap d0
	bsr.w sub_202e74
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
loc_202ad8:
	move.w d0,(a1)+
	dbf d6,loc_202ad8
	bsr.w sub_202b30
	move.w ($f710).w,d0
	neg.w d0
	moveq #$11,d6
loc_202aea:
	move.w d0,(a1)+
	dbf d6,loc_202aea
	bsr.w sub_202b56
	move.w ($f708).w,d0
	neg.w d0
	moveq #$9,d6
loc_202afc:
	move.w d0,(a1)+
	dbf d6,loc_202afc
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202ba0
dat_202b20:
	dc.b $00,$00,$00,$00,$01,$01,$01,$00
dat_202b28:
	dc.b $00,$00,$00,$00,$01,$09,$01,$00

sub_202b30:
	bsr.w sub_202b84
	move.w ($f718).w,d3
	moveq #$6,d6
loc_202b3a:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b20(pc,d6.w),d5
loc_202b44:
	move.w d0,(a1)+
	dbf d5,loc_202b44
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b3a
	rts

sub_202b56:
	bsr.w sub_202b84
	move.w ($f718).w,d3
	adda.w #$24,a1
	moveq #$6,d6
loc_202b64:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b28(pc,d6.w),d5
loc_202b6e:
	move.w d0,-(a1)
	dbf d5,loc_202b6e
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b64
	adda.w #$24,a1
	rts

sub_202b84:
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
loc_202ba0:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp dat_202bae(pc,d2.w)
	dc.b $30,$1a
dat_202bae:
	.incbin 11182, 52

sub_202be2:
	move.w ($f700).w,d4
	bsr.s sub_202c16
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202c14
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202c0e
	bset.b #$2,($f754).w
	rts
loc_202c0e:
	bset.b #$3,($f754).w
loc_202c14:
	rts

sub_202c16:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202c28
	bcs.s loc_202c58
	bra.s loc_202c2e
loc_202c28:
	clr.w ($f73a).w
	rts
loc_202c2e:
	cmpi.w #$10,d0
	blt.s loc_202c38
	move.w #$10,d0
loc_202c38:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202c46
	move.w ($f72a).w,d0
loc_202c46:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c58:
	cmpi.w #$fff0,d0
	bge.s loc_202c62
	move.w #$fff0,d0
loc_202c62:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202c46
	move.w ($f728).w,d0
	bra.s loc_202c46
	.incbin 11378, 16

sub_202c82:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c96
	subq.w #$5,d0
loc_202c96:
	btst.b #$1,$22(a6)
	beq.s loc_202cb6
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202d02
	subi.w #$40,d0
	bcc.s loc_202d02
	tst.b ($f75c).w
	bne.s loc_202d14
	bra.s loc_202cc2
loc_202cb6:
	sub.w ($f73e).w,d0
	bne.s loc_202cc8
	tst.b ($f75c).w
	bne.s loc_202d14
loc_202cc2:
	clr.w ($f73c).w
	rts
loc_202cc8:
	cmpi.w #$60,($f73e).w
	bne.s loc_202cf0
	move.w $14(a6),d1
	bpl.s loc_202cd8
	neg.w d1
loc_202cd8:
	cmpi.w #$800,d1
	bcc.s loc_202d02
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d62
	cmpi.w #$fffa,d0
	blt.s loc_202d2c
	bra.s loc_202d1a
loc_202cf0:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d62
	cmpi.w #$fffe,d0
	blt.s loc_202d2c
	bra.s loc_202d1a
loc_202d02:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d62
	cmpi.w #$fff0,d0
	blt.s loc_202d2c
	bra.s loc_202d1a
loc_202d14:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202d1a:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d6c
	bra.w loc_202d38
loc_202d2c:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d38:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d90
	cmpi.w #$ff00,d1
	bgt.s loc_202d5c
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d90
loc_202d5c:
	move.w ($f72c).w,d1
	bra.s loc_202d90
loc_202d62:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d6c:
	cmp.w ($f72e).w,d1
	blt.s loc_202d90
	subi.w #$800,d1
	bcs.s loc_202d8c
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d90
loc_202d8c:
	move.w ($f72e).w,d1
loc_202d90:
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
	bne.s loc_202dd2
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202dcc
	bset.b #$0,($f754).w
	rts
loc_202dcc:
	bset.b #$1,($f754).w
loc_202dd2:
	rts
	.incbin 11732, 118
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e72
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e6c
	bset.b #$4,($f756).w
	rts
loc_202e6c:
	bset.b #$5,($f756).w
loc_202e72:
	rts

sub_202e74:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202ea2
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e9c
	bset.b #$0,($f756).w
	rts
loc_202e9c:
	bset.b #$1,($f756).w
loc_202ea2:
	rts

sub_202ea4:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202ed6
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202ed0
	bset.b d6,($f756).w
	bra.s loc_202ed6
loc_202ed0:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202ed6:
	rts

sub_202ed8:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202f0a
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202f04
	bset.b d6,($f758).w
	bra.s loc_202f0a
loc_202f04:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202f0a:
	rts

sub_202f0c:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202f3e
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f38
	bset.b d6,($f75a).w
	bra.s loc_202f3e
loc_202f38:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202f3e:
	rts
	.incbin 12096, 44

sub_202f6c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20302a
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203110
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203112
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203028
	bclr.b #$0,(a2)
	beq.s loc_202fde
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20333e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203114
loc_202fde:
	bclr.b #$1,(a2)
	beq.s loc_202ff8
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20333e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203114
loc_202ff8:
	bclr.b #$2,(a2)
	beq.s loc_20300e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20333e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20316a
loc_20300e:
	bclr.b #$3,(a2)
	beq.s loc_203028
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20333e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20316a
loc_203028:
	rts

sub_20302a:
	lea (dat_2033f6).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203046
	bclr.b #$1,(a2)
	beq.s loc_203090
	move.w #$e0,d4
loc_203046:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2030c0(pc,d0.w),a3
	beq.s loc_203078
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20333e
	movem.l (a7)+,d4-d5
	bsr.w sub_203114
	movea.l (a7)+,a0
	bra.s loc_203090
loc_203078:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203340
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203140
	movea.l (a7)+,a0
loc_203090:
	tst.b (a2)
	bne.s loc_203096
	rts
loc_203096:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2030aa
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2030aa:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2030d0
dat_2030c0:
	.incbin 12480, 16
loc_2030d0:
	moveq #$f,d6
	move.l #$800000,d7
loc_2030d8:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203104
	btst.b d0,(a2)
	beq.s loc_203104
	add.w d0,d0
	movea.l dat_2030c0(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203216
	movem.l (a7)+,d4-d5
	bsr.w sub_20333e
	bsr.w sub_203198
	movem.l (a7)+,d4-d5/a0
loc_203104:
	addi.w #$10,d4
	dbf d6,loc_2030d8
	clr.b (a2)
	rts

sub_203110:
	rts

sub_203112:
	rts

sub_203114:
	moveq #$15,d6

sub_203116:
	move.l #$800000,d7
	move.l d0,d1
loc_20311e:
	movem.l d4-d5,-(a7)
	bsr.w sub_203216
	move.l d1,d0
	bsr.w sub_203198
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20311e
	rts

sub_203140:
	move.l #$800000,d7
	move.l d0,d1
loc_203148:
	movem.l d4-d5,-(a7)
	bsr.w sub_203218
	move.l d1,d0
	bsr.w sub_203198
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203148
	rts

sub_20316a:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203174:
	movem.l d4-d5,-(a7)
	bsr.w sub_203216
	move.l d1,d0
	bsr.w sub_203198
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203174
	rts

sub_203198:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2031d4
	btst.b #$3,(a0)
	bne.s loc_2031b4
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2031b4:
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
loc_2031d4:
	btst.b #$3,(a0)
	bne.s loc_2031f6
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
loc_2031f6:
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

sub_203216:
	add.w (a3),d5

sub_203218:
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
	beq.s loc_203266
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
loc_203266:
	rts
	.incbin 12904, 214

sub_20333e:
	add.w (a3),d5

sub_203340:
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
	.incbin 13146, 28

sub_203376:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2033a0
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2033c8

sub_2033a0:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033a4:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20333e
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203116
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2033a4
	rts
loc_2033c8:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033cc:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033f6).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203428
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2033cc
	rts
dat_2033f6:
	.incbin 13302, 34
dat_203418:
	.incbin 13336, 16

sub_203428:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203418(pc,d0.w),a3
	beq.s loc_20344a
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20333e
	movem.l (a7)+,d4-d5
	bsr.w sub_203114
	bra.s loc_20345e
loc_20344a:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203340
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203140
loc_20345e:
	rts

sub_203460:
	moveq #$0,d0
	lea (dat_20faae).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023fe
	movea.l (a2)+,a0
	bsr.w sub_2034ba
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200580
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2034a4
	jmp (loc_20cb04).l
loc_2034a4:
	btst.b #$1,($ff151c).l
	beq.s loc_2034b8
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2034b8
	bsr.w sub_20252c
loc_2034b8:
	rts

sub_2034ba:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2034c4:
	move.l d0,(a3)+
	dbf d1,loc_2034c4
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2034da
	lea ($a040).w,a3
	moveq #$2,d1

sub_2034da:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_235ce4).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034f4:
	move.w d1,d0
	movea.l a3,a0
loc_2034f8:
	move.b (a1)+,(a0)+
	dbf d0,loc_2034f8
	lea $80(a3),a3
	dbf d2,loc_2034f4
	rts

sub_203508:
	lea ($d000).w,a6
	bsr.w sub_203564
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20353e
	bcc.s loc_203540
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203534
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203534:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20353e:
	rts
loc_203540:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203558
	btst.b #$1,$22(a6)
	beq.s loc_203558
	add.w d1,d1
	add.w d1,d1
loc_203558:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts

sub_203564:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203576(pc,d0.w),d0
	jmp dat_203576(pc,d0.w)
dat_203576:
	.incbin 13686, 42

sub_2035a0:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2035a8:
	move.b (a0),d0
	beq.s loc_2035be
	add.w d0,d0
	add.w d0,d0
	lea (dat_2039c2).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2035be:
	lea $40(a0),a0
	dbf d7,loc_2035a8
	rts
	.incbin 13768, 184

sub_203680:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2036f0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20370c
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_20370c
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2036ca
	cmpi.w #$800,d3
	bcs.s loc_2036dc
	subi.w #$800,d3
	bra.s loc_2036dc
loc_2036ca:
	cmpi.w #$700,($f704).w
	bcs.s loc_2036dc
	cmpi.w #$100,d3
	bcc.s loc_2036dc
	addi.w #$800,d3
loc_2036dc:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20370c
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_20370c
loc_2036f0:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_20370c
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_20370c:
	rts
	.incbin 14094, 30
loc_20372c:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203732:
	move.l d1,(a1)+
	dbf d0,loc_203732
	rts
dat_20373a:
	.incbin 14138, 16

sub_20374a:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203756:
	tst.w (a4)
	beq.w loc_203816
	moveq #$2,d6
loc_20375e:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_20380e
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2037c4
	movea.l dat_20373a(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_2037a8
	cmpi.w #$800,d2
	bcs.s loc_2037ba
	subi.w #$800,d2
	bra.s loc_2037ba
loc_2037a8:
	cmpi.w #$700,$4(a1)
	bcs.s loc_2037ba
	cmpi.w #$100,d2
	bcc.s loc_2037ba
	addi.w #$800,d2
loc_2037ba:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2037e6
loc_2037c4:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2037e6
	.incbin 14286, 24
loc_2037e6:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203804
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203808
loc_203804:
	bsr.w sub_203838
loc_203808:
	bset.b #$7,$1(a0)
loc_20380e:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_20375e
loc_203816:
	lea $80(a4),a4
	dbf d7,loc_203756
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203830
	move.l #$0,(a2)
	rts
loc_203830:
	move.b #$0,-$5(a2)
	rts

sub_203838:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_20387e
	btst.l #$1,d4
	bne.w loc_2038cc
loc_20384a:
	cmpi.b #$50,d5
	beq.s loc_20387c
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
	bne.s loc_203876
	addq.w #$1,d0
loc_203876:
	move.w d0,(a2)+
	dbf d1,loc_20384a
loc_20387c:
	rts
loc_20387e:
	btst.l #$1,d4
	bne.w loc_203912
loc_203886:
	cmpi.b #$50,d5
	beq.s loc_2038ca
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
	bne.s loc_2038c4
	addq.w #$1,d0
loc_2038c4:
	move.w d0,(a2)+
	dbf d1,loc_203886
loc_2038ca:
	rts
loc_2038cc:
	cmpi.b #$50,d5
	beq.s loc_203910
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
	bne.s loc_20390a
	addq.w #$1,d0
loc_20390a:
	move.w d0,(a2)+
	dbf d1,loc_2038cc
loc_203910:
	rts
loc_203912:
	cmpi.b #$50,d5
	beq.s loc_203964
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
	bne.s loc_20395e
	addq.w #$1,d0
loc_20395e:
	move.w d0,(a2)+
	dbf d1,loc_203912
loc_203964:
	rts
	.incbin 14694, 92
dat_2039c2:
	.incbin 14786, 1180
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_203e98
	tst.b ($ff1958).l
	bne.s loc_203e98
	tst.b ($ff152e).l
	bne.s loc_203e92
	move.w #$e,d0
	jsr (sub_205870).l
loc_203e92:
	jsr (sub_201b56).l
loc_203e98:
	move.b #$0,($ff1520).l
	rts
	.incbin 16034, 1878
loc_2045f8:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204668
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204668
	bmi.s loc_204610
	neg.w d1
loc_204610:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2065d4
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204668
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204664
	cmpi.b #$40,d0
	beq.s loc_204652
	cmpi.b #$80,d0
	beq.s loc_20464c
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20464c:
	sub.w d1,$12(a0)
	rts
loc_204652:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204664:
	add.w d1,$12(a0)
loc_204668:
	rts
	.incbin 18026, 560
	move.b $26(a0),d0
	jsr (sub_200842).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_2048be
	move.w #$1000,d1
loc_2048be:
	cmpi.w #$f000,d1
	bge.s loc_2048c8
	move.w #$f000,d1
loc_2048c8:
	move.w d1,$10(a0)
	bra.w loc_2045f8
	.incbin 18640, 982
	move.w $14(a0),d0
	bpl.s loc_204cae
	neg.w d0
loc_204cae:
	cmpi.w #$280,d0
	bcc.s loc_204ccc
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204ccc:
	rts
	.incbin 19662, 314
	move.w #$0,$12(a0)
	rts
	.incbin 19984, 236

sub_204efc:
	btst.b #$4,$22(a0)
	beq.s loc_204f06
	nop
loc_204f06:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_204f60
	bclr.b #$2,$22(a0)
	tst.b ($ff1587).l
	beq.s loc_204f40
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204f50
loc_204f40:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204f50:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202394).l
loc_204f60:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20334, 830
loc_2052ac:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2052c0
	bpl.s loc_2052c0
	cmpi.b #$fd,d0
	bge.s loc_2052ca
loc_2052c0:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
	rts
loc_2052ca:
	addq.b #$1,d0
	bne.s loc_2052da
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2052c0
loc_2052da:
	addq.b #$1,d0
	bne.s loc_2052ee
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2052c0
loc_2052ee:
	addq.b #$1,d0
	bne.s loc_2052f8
	move.b $2(a1,d1.w),$1c(a0)
loc_2052f8:
	rts
	.incbin 21242, 308
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205438
	moveq #$0,d2
loc_205438:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2056c0).l,a1
	tst.b ($ff1587).l
	bne.s loc_205452
	lea (dat_2055e8).l,a1
loc_205452:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w loc_2052ac
	.incbin 21608, 384
dat_2055e8:
	.incbin 21992, 216
dat_2056c0:
	.incbin 22208, 210

sub_205792:
	tst.b (a0)
	beq.w loc_2057f4
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2057f4
	move.b d0,(a2)
	lea (dat_22f1b0).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2057f4
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_2057c6:
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
loc_2057e0:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_2057e0
	dbf d1,loc_2057c6
loc_2057f4:
	rts
	.incbin 22518, 122

sub_205870:
	cmpi.w #$67,d0
	bne.s loc_20587e
	move.b #$1,($ff1958).l
loc_20587e:
	move.w d0,($a12010).l
loc_205884:
	move.w ($a12020).l,d0
	beq.s loc_205884
	cmp.w ($a12020).l,d0
	bne.s loc_205884
	move.w #$0,($a12010).l
loc_20589c:
	move.w ($a12020).l,d0
	bne.s loc_20589c
	move.w ($a12020).l,d0
	bne.s loc_20589c
	rts
	.incbin 22702, 1662
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f3c(pc,d0.w),d0
	jmp dat_205f3c(pc,d0.w)
dat_205f3c:
	.incbin 24380, 464

sub_20610c:
	bclr.b #$7,($ff156b).l
	beq.s loc_20615a
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20615c(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206130:
	move.l (a1)+,(a2)+
	dbf d0,loc_206130
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20615a:
	rts
dat_20615c:
	.incbin 24924, 730
loc_206436:
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
	tst.b ($ff1522).l
	bpl.s loc_2064f2
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2064f2:
	rts

sub_2064f4:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206436
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
	cmpi.b #$2,($ff1506).l
	bne.s loc_2065bc
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2065bc:
	tst.b ($ff1522).l
	bpl.s loc_2065d2
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2065d2:
	rts

sub_2065d4:
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
	bpl.s loc_206610
	move.b d1,d0
	bpl.s loc_20660a
	subq.b #$1,d0
loc_20660a:
	addi.b #$20,d0
	bra.s loc_20661a
loc_206610:
	move.b d1,d0
	bpl.s loc_206616
	addq.b #$1,d0
loc_206616:
	addi.b #$1f,d0
loc_20661a:
	andi.b #$c0,d0
	beq.w loc_2066ea
	cmpi.b #$80,d0
	beq.w loc_206886
	andi.b #$38,d1
	bne.s loc_206632
	addq.w #$8,d2
loc_206632:
	cmpi.b #$40,d0
	beq.w loc_20695c
	bra.w loc_2067be
	.incbin 26174, 40

sub_206666:
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
loc_2066ca:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2066d8
	move.b ($f768).w,d3
	exg d0,d1
loc_2066d8:
	btst.l #$0,d3
	beq.s loc_2066e0
	move.b d2,d3
loc_2066e0:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2066ea:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201198).l
	move.b #$0,d2
loc_206706:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206712
	move.b d2,d3
loc_206712:
	rts
	.incbin 26388, 106
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
	bra.w loc_2066ca
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2067be:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201308).l
	move.b #$c0,d2
	bra.w loc_206706
	.incbin 26590, 48
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
	bra.w loc_2066ca

sub_20687e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206886:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201198).l
	move.b #$80,d2
	bra.w loc_206706
	.incbin 26794, 178
loc_20695c:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201308).l
	move.b #$40,d2
	bra.w loc_206706
	.incbin 27008, 784

sub_206c90:
	tst.w ($ff1906).l
	bne.s loc_206cde
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_204efc
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.w #$93,d0
	jsr (sub_202394).l
loc_206cde:
	moveq #$ffffffff,d0
	rts
	.incbin 27874, 1008

sub_2070d2:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2070e0:
	clr.l (a2)+
	dbf d0,loc_2070e0
	rts

sub_2070e8:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2070f6(pc,d0.w),d0
	jmp dat_2070f6(pc,d0.w)
dat_2070f6:
	.incbin 28918, 494

sub_2072e4:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2072ec:
	tst.b (a1)
	beq.s loc_2072f8
	lea $40(a1),a1
	dbf d0,loc_2072ec
loc_2072f8:
	rts
	.incbin 29434, 36
loc_20731e:
	tst.b $1(a0)
	bmi.s loc_207384
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207384
loc_20733c:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20737e
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207376
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20736e
	moveq #$0,d1
	bra.s loc_207376
loc_20736e:
	cmpi.w #$3,d1
	bcs.s loc_207376
	moveq #$2,d1
loc_207376:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20737e:
	jmp (loc_20372c).l
loc_207384:
	btst.b #$7,($ff152e).l
	bne.s loc_20733c
	rts
	.incbin 29584, 5312

sub_208850:
	btst.b #$3,$22(a0)
	beq.s loc_2088b0
	btst.b #$3,$22(a1)
	beq.s loc_2088b0
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2088b0
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_20889e
	cmpi.b #$17,$1c(a1)
	beq.s loc_20889e
	bclr.b #$0,$2c(a1)
loc_20889e:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2088b0
	bclr.b #$1,$22(a1)
loc_2088b0:
	rts

sub_2088b2:
	cmpi.b #$4,$24(a1)
	bne.s loc_2088c4
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_2088c4:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208912
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208912
	tst.b ($ff1587).l
	beq.s loc_2088fc
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_20890c
loc_2088fc:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_20890c:
	move.b #$0,$1c(a1)
loc_208912:
	bset.b #$3,$22(a1)
	beq.s loc_208934
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_20896c
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208934:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208960
	cmpi.b #$2,$24(a0)
	beq.s loc_208966
loc_208960:
	move.w $10(a1),$14(a1)
loc_208966:
	bclr.b #$1,$22(a1)
loc_20896c:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_208976:
	move.b #$1,$25(a0)
	cmpi.b #$17,$1c(a1)
	beq.w loc_208c1a
	btst.b #$6,$2c(a1)
	bne.w loc_208c1a
	cmpi.b #$6,$24(a1)
	bcc.w loc_208c1a
	cmpi.b #$2b,$1c(a1)
	beq.w loc_208c1a
	tst.b $0(a1)
	beq.w loc_208c1a
	tst.b $1(a0)
	bpl.w loc_208c1a
	tst.b ($ff1906).l
	bne.w loc_208c1a
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208c1a
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208c1a
	cmpi.b #$1,$25(a0)
	bne.s loc_2089f2
	tst.w $12(a1)
	beq.s loc_2089f2
	bmi.w loc_208c1a
loc_2089f2:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208c1a
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208c1a
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208a28
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208a28:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208a36
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208a36:
	cmp.w d4,d5
	bcs.w loc_208ac6
	cmpi.b #$1,$25(a0)
	beq.w loc_208c1a
	cmpi.b #$a,$0(a0)
	bne.s loc_208a58
	btst.b #$1,$22(a1)
	bne.w loc_208c1a
loc_208a58:
	cmpi.b #$4,d5
	bls.w loc_208c1a
	bsr.w sub_208c6a
	move.l d0,-(a7)
	bsr.w sub_208850
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208a82
	tst.w $10(a1)
	beq.s loc_208ab2
	bpl.s loc_208a8a
	bra.s loc_208ab2
loc_208a82:
	tst.w $10(a1)
	beq.s loc_208ab2
	bpl.s loc_208ab2
loc_208a8a:
	bsr.w sub_208c2a
	btst.b #$1,$22(a1)
	bne.s loc_208aa8
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208aa8:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208ab2:
	bsr.w sub_208c2a
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208ac6:
	cmpi.b #$19,$0(a0)
	bne.s loc_208ad8
	btst.b #$2,$22(a1)
	bne.w loc_208c1a
loc_208ad8:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208aee
	bmi.w loc_208bb6
loc_208aee:
	tst.w $12(a1)
	beq.s loc_208af8
	bmi.w loc_208c1a
loc_208af8:
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
	beq.s loc_208b44
	bpl.s loc_208b24
	neg.b d0
loc_208b24:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2065d4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208b44
	tst.w $10(a0)
	bpl.s loc_208b40
	neg.w d1
loc_208b40:
	add.w d1,$8(a1)
loc_208b44:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208bae
	tst.w $12(a0)
	bmi.s loc_208b82
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206666).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208b82
	add.w d1,$c(a1)
	bra.w loc_208c1a
loc_208b82:
	tst.w $12(a0)
	bpl.s loc_208bae
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20687e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208bae
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c90).l
	movem.l (a7)+,a0-a1
	bra.s loc_208c1a
loc_208bae:
	bsr.w sub_2088b2
	moveq #$1,d0
	rts
loc_208bb6:
	cmpi.b #$1,$25(a0)
	beq.s loc_208c1a
	cmpi.b #$9,$0(a0)
	beq.s loc_208c1a
	cmpi.b #$a,$0(a0)
	bne.s loc_208be0
	cmpi.b #$2,$25(a0)
	beq.s loc_208c00
	btst.b #$1,$1(a0)
	bne.s loc_208c00
	bra.s loc_208c1a
loc_208be0:
	btst.b #$1,$22(a1)
	bne.s loc_208c00
	tst.w $12(a0)
	beq.s loc_208c00
	bmi.s loc_208c00
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c90).l
	movem.l (a7)+,a0-a1
loc_208c00:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208ce0
	bsr.w sub_208850
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208c1a:
	bsr.w sub_208ce0
	bsr.w sub_208850
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208c2a:
	tst.w $10(a0)
	beq.s loc_208c68
	cmpi.b #$a,$0(a0)
	beq.s loc_208c68
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208c44
	neg.b d0
loc_208c44:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2065d4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208c68
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c90).l
	movem.l (a7)+,a0-a1
loc_208c68:
	rts

sub_208c6a:
	cmpi.b #$a,$0(a0)
	bne.s loc_208c7a
	move.b #$0,$20(a1)
	rts
loc_208c7a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208cce
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208cde
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208c9c
	tst.w $10(a2)
	beq.s loc_208cde
loc_208c9c:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208cae
	cmp.w $8(a2),d1
	bcs.s loc_208cde
	bra.s loc_208cb4
loc_208cae:
	cmp.w $8(a2),d1
	bcc.s loc_208cde
loc_208cb4:
	cmpi.b #$15,$0(a0)
	beq.s loc_208cde
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c90).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208cce:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208cde:
	rts

sub_208ce0:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208cfa
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208cfa
	move.b #$0,$20(a1)
loc_208cfa:
	rts
	.incbin 36092, 134
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20372c
	rts
	.incbin 36258, 5630
loc_20a3a0:
	tst.w ($ff1588).l
	beq.s loc_20a3f6
	bsr.w sub_20a5f2
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
	lea (dat_20a752).l,a2
	moveq #$2,d6
	bsr.w sub_20a7aa
	bra.w loc_20a450
loc_20a3f6:
	tst.b ($ff1511).l
	beq.s loc_20a41a
	bpl.s loc_20a404
	bsr.w sub_20a59c
loc_20a404:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a68c
loc_20a41a:
	tst.b ($ff150f).l
	beq.s loc_20a450
	bpl.s loc_20a428
	bsr.w sub_20a588
loc_20a428:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a44c
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a44c:
	bsr.w sub_20a682
loc_20a450:
	tst.w ($ff1588).l
	bne.w loc_20a4fc
	tst.b ($ff1510).l
	beq.w loc_20a4fc
	tst.w ($f63a).w
	bne.w loc_20a4fc
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a55a
	tst.b ($f7cc).w
	bne.s loc_20a4a6
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a4a6
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a4a6
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a4a6
	move.b #$9,(a1)
loc_20a4a6:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a798
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a7a2
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a4f8
	move.w #$63,d1
loc_20a4f8:
	bsr.w sub_20a7a2
loc_20a4fc:
	tst.b ($ff150e).l
	beq.s loc_20a50e
	clr.b ($ff150e).l
	bsr.w sub_20a778
loc_20a50e:
	tst.b ($f7d6).w
	beq.s loc_20a558
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a52e
	move.l #$6d400001,d0
loc_20a52e:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a610
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a54e
	move.l #$6e800001,d0
loc_20a54e:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a610
loc_20a558:
	rts
loc_20a55a:
	btst.b #$7,($ff152e).l
	bne.s loc_20a586
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206c90
	move.b #$1,($ff150c).l
loc_20a586:
	rts

sub_20a588:
	move.l #$73600002,($c00004).l
	lea dat_20a5ee(pc),a2
	move.w #$2,d2
	bra.s loc_20a5b8

sub_20a59c:
	lea ($c00000).l,a6
	bsr.w sub_20a778
	move.l #$70600002,($c00004).l
	lea dat_20a5e6(pc),a2
	move.w #$6,d2
loc_20a5b8:
	lea (dat_23338c).l,a1
loc_20a5be:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a5da
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a5ce:
	move.l (a3)+,(a6)
	dbf d1,loc_20a5ce
loc_20a5d4:
	dbf d2,loc_20a5be
	rts
loc_20a5da:
	move.l #$0,(a6)
	dbf d1,loc_20a5da
	bra.s loc_20a5d4
dat_20a5e6:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a5ee:
	dc.b $ff,$ff,$00,$00

sub_20a5f2:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a76e
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a76e

sub_20a610:
	lea (dat_20a74a).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20a620:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a624:
	sub.l d3,d1
	bcs.s loc_20a62c
	addq.w #$1,d2
	bra.s loc_20a624
loc_20a62c:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a636
	move.w #$1,d4
loc_20a636:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a642
	tst.w d6
	bne.s loc_20a674
loc_20a642:
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
loc_20a668:
	addi.l #$400000,d0
	dbf d6,loc_20a620
	rts
loc_20a674:
	moveq #$f,d5
loc_20a676:
	move.l #$0,(a6)
	dbf d5,loc_20a676
	bra.s loc_20a668

sub_20a682:
	lea (dat_20a752).l,a2
	moveq #$2,d6
	bra.s loc_20a694

sub_20a68c:
	lea (dat_20a746).l,a2
	moveq #$5,d6
loc_20a694:
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20a69c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a6a0:
	sub.l d3,d1
	bcs.s loc_20a6a8
	addq.w #$1,d2
	bra.s loc_20a6a0
loc_20a6a8:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a6b2
	move.w #$1,d4
loc_20a6b2:
	tst.w d4
	beq.s loc_20a6e0
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
loc_20a6e0:
	addi.l #$400000,d0
	dbf d6,loc_20a69c
	rts
	.incbin 42732, 90
dat_20a746:
	dc.b $00,$01,$86,$a0
dat_20a74a:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a752:
	dc.b $00,$00,$00,$64
dat_20a756:
	dc.b $00,$00,$00,$0a
dat_20a75a:
	dc.b $00,$00,$00,$01
dat_20a75e:
	.incbin 42846, 16

sub_20a76e:
	moveq #$3,d6
	lea (dat_20a75e).l,a2
	bra.s sub_20a7aa

sub_20a778:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a78e
	moveq #$9,d1
loc_20a78e:
	lea (dat_20a75a).l,a2
	moveq #$0,d6
	bra.s sub_20a7aa

sub_20a798:
	lea (dat_20a75a).l,a2
	moveq #$0,d6
	bra.s sub_20a7aa

sub_20a7a2:
	lea (dat_20a756).l,a2
	moveq #$1,d6

sub_20a7aa:
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20a7b2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a7b6:
	sub.l d3,d1
	bcs.s loc_20a7be
	addq.w #$1,d2
	bra.s loc_20a7b6
loc_20a7be:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a7c8
	move.w #$1,d4
loc_20a7c8:
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
	dbf d6,loc_20a7b2
	rts
	.incbin 43006, 1044
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$2394da,$4(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$20,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20ac8e
	move.w $c(a6),d0
	sub.w $c(a0),d0
	addi.w #$80,d0
	bmi.s loc_20ac8a
	cmpi.w #$100,d0
	bcc.s loc_20ac8a
	move.w $8(a6),d0
	cmp.w $8(a0),d0
	bcs.s loc_20ac8a
	addq.b #$2,$24(a0)
	move.w ($f700).w,($f728).w
	move.w ($f700).w,($f720).w
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
	moveq #$12,d0
	jmp (sub_20252c).l
loc_20ac8a:
	rts
	dc.b $4e,$75

sub_20ac8e:
	moveq #$0,d0
	move.w ($ff1506).l,d0
	lsl.b #$7,d0
	lsr.w #$4,d0
	move.b ($ff152e).l,d1
	cmpi.b #$2,d1
	bne.s loc_20acac
	add.b ($ff156a).l,d1
loc_20acac:
	add.b d1,d1
	add.b d1,d0
	move.w dat_20acc8(pc,d0.w),$2(a0)
	cmpi.b #$3,($ff1506).l
	beq.s loc_20acc6
	ori.w #$8000,$2(a0)
loc_20acc6:
	rts
dat_20acc8:
	.incbin 44232, 3568
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bacc
	bge.s loc_20bac8
	neg.w d0
loc_20bac8:
	add.w d0,$8(a0)
loc_20bacc:
	jmp (sub_203680).l
	.incbin 47826, 4146
loc_20cb04:
	lea dat_20cb56(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cb10:
	cmp.w (a1)+,d0
	bcs.s loc_20cb18
	addq.b #$2,d1
	bra.s loc_20cb10
loc_20cb18:
	move.b d1,($ff1574).l
	move.w dat_20cb66(pc,d1.w),d0
	jmp (sub_20252c).l

sub_20cb28:
	lea dat_20cb56(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cb34:
	cmp.w (a1)+,d0
	bcs.s loc_20cb3c
	addq.b #$2,d1
	bra.s loc_20cb34
loc_20cb3c:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cb46
	rts
loc_20cb46:
	move.b d1,($ff1574).l
	move.w dat_20cb5e(pc,d1.w),d0
	jmp (loc_20255e).l
dat_20cb56:
	dc.b $03,$00,$06,$00,$15,$00,$ff,$ff
dat_20cb5e:
	dc.b $00,$07,$00,$08,$00,$09,$00,$0a
dat_20cb66:
	.incbin 52070, 28
loc_20cb82:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20cba6
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20cba6:
	jmp (loc_20372c).l
	.incbin 52140, 862
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	ext.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.b #$1,$3b(a0)
	jsr (sub_2072e4).l
	beq.s loc_20cf34
	jmp (loc_20cb82).l
loc_20cf34:
	move.b #$33,$0(a1)
	move.b #$1,$3d(a1)
	lea dat_20d022(pc),a2
	bsr.s sub_20cf98
	jsr (sub_2072e4).l
	beq.s loc_20cf54
	jmp (loc_20cb82).l
loc_20cf54:
	move.b #$33,$0(a1)
	move.b #$2,$3d(a1)
	lea dat_20d02e(pc),a2
	bsr.s sub_20cf98
	cmpi.b #$3,$1a(a0)
	beq.s loc_20cf96
	jsr (sub_2072e4).l
	bne.s loc_20cf96
	move.b #$33,$0(a1)
	move.b #$ff,$28(a1)
	move.w $8(a0),$8(a1)
	move.w $1a(a0),$3c(a1)
	move.w a0,$34(a1)
	move.w a1,$34(a0)
loc_20cf96:
	rts

sub_20cf98:
	moveq #$0,d0
	move.b $3c(a0),d0
	asl.b #$2,d0
	lea $0(a2,d0.w),a2
	move.b (a2)+,$1a(a1)
	move.b (a2)+,d0
	move.b (a2)+,$19(a1)
	move.b (a2)+,$16(a1)
	move.w $36(a0),$36(a1)
	move.w $c(a0),$c(a1)
	ext.w d0
	add.w $36(a0),d0
	move.w d0,$8(a1)
	move.b $28(a0),$28(a1)
	rts
	.incbin 53200, 82
dat_20d022:
	dc.b $03,$00,$18,$08,$03,$e0,$18,$08
	dc.b $03,$20,$18,$08
dat_20d02e:
	.incbin 53294, 542
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d26a(pc,d0.w),d0
	jsr dat_20d26a(pc,d0.w)
	jsr (sub_203680).l
	move.w $36(a0),d0
	jmp (loc_20731e).l
dat_20d26a:
	.incbin 53866, 4496
	lea ($d000).w,a1
	jsr (sub_208976).l
	beq.s loc_20e424
	movea.w $2e(a0),a1
	tst.b $2b(a1)
	beq.s loc_20e424
	subq.b #$1,$2b(a1)
	movea.w $2e(a1),a2
	movea.w $3e(a1),a3
	addq.b #$2,$24(a2)
	addq.b #$2,$24(a3)
loc_20e424:
	jmp (sub_203680).l
	.incbin 58410, 5310

sub_20f8e8:
	jsr (sub_20610c).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fa40).l,a1
	move.w #$3f,d6
	bsr.w sub_20f9fc
	bne.s loc_20f92a
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4440,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20f92a:
	lea (dat_20fa52).l,a1
	move.w #$3f,d6
	bsr.w sub_20f9fc
	bne.s loc_20f95e
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4540,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20f95e:
	lea (dat_20fa64).l,a1
	move.w #$7f,d6
	bsr.w sub_20f9fc
	bne.s loc_20f992
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4640,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20f992:
	lea (dat_20fa76).l,a1
	move.w #$1f,d6
	bsr.w sub_20f9fc
	bne.s loc_20f9c6
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4840,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20f9c6:
	lea (dat_20fa94).l,a1
	move.w #$1f,d6
	bsr.w sub_20f9fc
	bne.s loc_20f9fa
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$48c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20f9fa:
	rts

sub_20f9fc:
	subq.b #$1,(a2)
	bpl.w loc_20fa34
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fa12
	moveq #$0,d0
loc_20fa12:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fa22:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fa22
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fa34:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fa40:
	.incbin 64064, 18
dat_20fa52:
	.incbin 64082, 18
dat_20fa64:
	.incbin 64100, 18
dat_20fa76:
	.incbin 64118, 30
dat_20fa94:
	.incbin 64148, 26
dat_20faae:
	.incbin 64174, 16
dat_20fabe:
	.incbin 64190, 66882
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
