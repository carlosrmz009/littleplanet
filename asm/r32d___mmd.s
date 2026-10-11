; R32D__.MMD
; disassembled from the disc; code only, data comes from data/R32D__.MMD at build time
	.file "R32D__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$30
	jmp (loc_201ba6).l
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
	bsr.w sub_2020dc
	bsr.w sub_202084
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201420

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_2001f2).l,a1
	lea (dat_2001fa).l,a2
	bsr.s sub_2001b4
	lea (dat_200200).l,a1
	lea (dat_200224).l,a2
	bsr.s sub_2001b4
	lea (dat_200236).l,a1
	lea (dat_200258).l,a2

sub_2001b4:
	subq.b #$1,(a5)
	bpl.s loc_2001e8
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
	bcs.s loc_2001d4
	moveq #$0,d0
loc_2001d4:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_2001e8:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_2001f2:
	dc.b $2a,$03,$02,$00,$01,$01,$02,$02
dat_2001fa:
	dc.b $0e,$e0,$06,$c0,$00,$00
dat_200200:
	.incbin 512, 36
dat_200224:
	.incbin 548, 18
dat_200236:
	.incbin 566, 34
dat_200258:
	.incbin 600, 18

sub_20026a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20027c:
	move.w d1,(a0)+
	dbf d0,loc_20027c
	move.w #$15,d4
loc_200286:
	move.b #$12,($f62a).w
	bsr.w sub_200764
	bsr.s sub_20029c
	bsr.w sub_2024a2
	dbf d4,loc_200286
	rts

sub_20029c:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002b2:
	bsr.s sub_2002e0
	dbf d0,loc_2002b2
	cmpi.b #$1,($ff1506).l
	bne.s loc_2002de
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002d8:
	bsr.s sub_2002e0
	dbf d0,loc_2002d8
loc_2002de:
	rts

sub_2002e0:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200308
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002f6
	move.w d1,(a0)+
	rts
loc_2002f6:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_200304
	move.w d1,(a0)+
	rts
loc_200304:
	addq.w #$2,(a0)+
	rts
loc_200308:
	addq.w #$2,a0
	rts

sub_20030c:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200316:
	move.b #$12,($f62a).w
	bsr.w sub_200764
	bsr.s sub_20032c
	bsr.w sub_2024a2
	dbf d4,loc_200316
	rts

sub_20032c:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20033c:
	bsr.s sub_20035a
	dbf d0,loc_20033c
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200352:
	bsr.s sub_20035a
	dbf d0,loc_200352
	rts

sub_20035a:
	move.w (a0),d2
	beq.s loc_200386
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_20036a
	subq.w #$2,(a0)+
	rts
loc_20036a:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200378
	subi.w #$20,(a0)+
	rts
loc_200378:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200386
	subi.w #$200,(a0)+
	rts
loc_200386:
	addq.w #$2,a0
	rts

sub_20038a:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_2003a4:
	move.w d1,(a0)+
	dbf d0,loc_2003a4
	move.w #$15,d4
loc_2003ae:
	move.b #$12,($f62a).w
	bsr.w sub_200764
	bsr.s sub_2003c4
	bsr.w sub_2024a2
	dbf d4,loc_2003ae
	rts

sub_2003c4:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003da:
	bsr.s sub_200408
	dbf d0,loc_2003da
	cmpi.b #$1,($ff1506).l
	bne.s loc_200406
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200400:
	bsr.s sub_200408
	dbf d0,loc_200400
loc_200406:
	rts

sub_200408:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200434
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200420
	cmp.w d2,d1
	bcs.s loc_200420
	move.w d1,(a0)+
	rts
loc_200420:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200430
	cmp.w d2,d1
	bcs.s loc_200430
	move.w d1,(a0)+
	rts
loc_200430:
	subq.w #$2,(a0)+
	rts
loc_200434:
	addq.w #$2,a0
	rts

sub_200438:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200442:
	move.b #$12,($f62a).w
	bsr.w sub_200764
	bsr.s sub_200458
	bsr.w sub_2024a2
	dbf d4,loc_200442
	rts

sub_200458:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200468:
	bsr.s sub_200486
	dbf d0,loc_200468
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20047e:
	bsr.s sub_200486
	dbf d0,loc_20047e
	rts

sub_200486:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2004c2
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_20049e
	addq.w #$2,(a0)+
	rts
loc_20049e:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2004b0
	addi.w #$20,(a0)+
	rts
loc_2004b0:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2004c2
	addi.w #$200,(a0)+
	rts
loc_2004c2:
	addq.w #$2,a0
	rts

sub_2004c6:
	lea (dat_200532).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_2004da:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004da
	rts

sub_2004e2:
	lea (dat_200532).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2004f2:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004f2
	rts
	.incbin 1274, 56
dat_200532:
	.incbin 1330, 562

sub_200764:
	move.w #$2300,sr
loc_200768:
	tst.b ($f62a).w
	bne.s loc_200768
	rts

sub_200770:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200788(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200788(pc,d0.w),d0
	rts
dat_200788:
	.incbin 1928, 640

sub_200a08:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a64
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a22
	neg.w d3
loc_200a22:
	tst.w d4
	bpl.w loc_200a2a
	neg.w d4
loc_200a2a:
	cmp.w d3,d4
	bcc.w loc_200a3c
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a6e(pc,d4.w),d0
	bra.s loc_200a46
loc_200a3c:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a6e(pc,d3.w),d0
loc_200a46:
	tst.w d1
	bpl.w loc_200a52
	neg.w d0
	addi.w #$80,d0
loc_200a52:
	tst.w d2
	bpl.w loc_200a5e
	neg.w d0
	addi.w #$100,d0
loc_200a5e:
	movem.l (a7)+,d3-d4
	rts
loc_200a64:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a6e:
	.incbin 2670, 258

sub_200b70:
	btst.b #$3,$22(a0)
	beq.s loc_200b84
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b84:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200ba6
	move.b $26(a0),d0
	bpl.s loc_200ba0
	subq.b #$1,d0
loc_200ba0:
	addi.b #$20,d0
	bra.s loc_200bb2
loc_200ba6:
	move.b $26(a0),d0
	bpl.s loc_200bae
	addq.b #$1,d0
loc_200bae:
	addi.b #$1f,d0
loc_200bb2:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e3c
	cmpi.b #$80,d0
	beq.w loc_200d9a
	cmpi.b #$c0,d0
	beq.w loc_200cfe
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
	bsr.w sub_2010c6
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
	bsr.w sub_2010c6
	move.w (a7)+,d0
	bsr.w sub_200cd2
	tst.w d1
	beq.s loc_200c40
	bpl.s loc_200c42
	cmpi.w #$fff2,d1
	blt.s loc_200c68
	add.w d1,$c(a0)
loc_200c40:
	rts
loc_200c42:
	cmpi.w #$e,d1
	bgt.s loc_200c4e
loc_200c48:
	add.w d1,$c(a0)
	rts
loc_200c4e:
	tst.b $38(a0)
	bne.s loc_200c48
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c68:
	rts
	.incbin 3178, 34
loc_200c8c:
	rts
	.incbin 3214, 68

sub_200cd2:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200ce0
	move.b ($f768).w,d2
	move.w d0,d1
loc_200ce0:
	btst.l #$0,d2
	bne.s loc_200cec
	move.b d2,$26(a0)
	rts
loc_200cec:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200cfe:
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
	bsr.w sub_201236
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
	bsr.w sub_201236
	move.w (a7)+,d0
	bsr.w sub_200cd2
	tst.w d1
	beq.s loc_200d72
	bpl.s loc_200d74
	cmpi.w #$fff2,d1
	blt.w loc_200c8c
	add.w d1,$8(a0)
loc_200d72:
	rts
loc_200d74:
	cmpi.w #$e,d1
	bgt.s loc_200d80
loc_200d7a:
	add.w d1,$8(a0)
	rts
loc_200d80:
	tst.b $38(a0)
	bne.s loc_200d7a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d9a:
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
	bsr.w sub_2010c6
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
	bsr.w sub_2010c6
	move.w (a7)+,d0
	bsr.w sub_200cd2
	tst.w d1
	beq.s loc_200e14
	bpl.s loc_200e16
	cmpi.w #$fff2,d1
	blt.w loc_200c68
	sub.w d1,$c(a0)
loc_200e14:
	rts
loc_200e16:
	cmpi.w #$e,d1
	bgt.s loc_200e22
loc_200e1c:
	sub.w d1,$c(a0)
	rts
loc_200e22:
	tst.b $38(a0)
	bne.s loc_200e1c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e3c:
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
	bsr.w sub_201236
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
	bsr.w sub_201236
	move.w (a7)+,d0
	bsr.w sub_200cd2
	tst.w d1
	beq.s loc_200eb6
	bpl.s loc_200eb8
	cmpi.w #$fff2,d1
	blt.w loc_200c8c
	sub.w d1,$8(a0)
loc_200eb6:
	rts
loc_200eb8:
	cmpi.w #$e,d1
	bgt.s loc_200ec4
loc_200ebe:
	sub.w d1,$8(a0)
	rts
loc_200ec4:
	tst.b $38(a0)
	bne.s loc_200ebe
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200ede:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200ef4
	andi.w #$380,d0
loc_200ef4:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f54
	bmi.s loc_200f58
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f24
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f2a
loc_200f24:
	andi.w #$7fff,$2(a0)
loc_200f2a:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f3a
	bclr.b #$6,$1(a0)
loc_200f3a:
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
loc_200f54:
	movea.l d1,a1
	rts
loc_200f58:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fc0
	btst.b #$6,$1(a0)
	bne.s loc_200f86
	cmpi.b #$14,d1
	bne.w loc_2010aa
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_2010aa
loc_200f86:
	cmpi.b #$15,d1
	bne.s loc_200f94
	move.w #$60,d1
	bra.w loc_2010aa
loc_200f94:
	cmpi.b #$1e,d1
	bne.s loc_200fa2
	move.w #$61,d1
	bra.w loc_2010aa
loc_200fa2:
	cmpi.b #$1f,d1
	bne.s loc_200fb0
	move.w #$62,d1
	bra.w loc_2010aa
loc_200fb0:
	cmpi.b #$32,d1
	bne.w loc_2010aa
	move.w #$63,d1
	bra.w loc_2010aa
loc_200fc0:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201026
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201010
	cmpi.b #$6,d1
	beq.s loc_201010
	tst.b ($ff1956).l
	beq.w loc_2010aa
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201020
	cmpi.b #$3c,d1
	beq.s loc_201020
	cmpi.b #$37,d1
	beq.s loc_201020
	cmpi.b #$2f,d1
	beq.s loc_201020
	cmpi.b #$16,d1
	beq.s loc_201020
	bra.w loc_2010aa
loc_201010:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_2010aa
loc_201020:
	addq.b #$1,d1
	bra.w loc_2010aa
loc_201026:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201096
	cmpi.b #$3,$0(a0)
	bcc.w loc_2010aa
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2010aa
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_20105a
	move.w #$6a,d1
	bra.s loc_2010aa
loc_20105a:
	cmpi.b #$48,d1
	bne.s loc_201066
	move.w #$6b,d1
	bra.s loc_2010aa
loc_201066:
	cmpi.b #$4a,d1
	bne.s loc_201072
	move.w #$6c,d1
	bra.s loc_2010aa
loc_201072:
	cmpi.b #$10,d1
	bne.s loc_20107e
	move.w #$6d,d1
	bra.s loc_2010aa
loc_20107e:
	cmpi.b #$63,d1
	bne.s loc_20108a
	move.w #$6e,d1
	bra.s loc_2010aa
loc_20108a:
	cmpi.b #$43,d1
	bne.s loc_2010aa
	move.w #$6f,d1
	bra.s loc_2010aa
loc_201096:
	btst.b #$6,$1(a0)
	beq.s loc_2010aa
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_2010aa
	move.w #$51,d1
loc_2010aa:
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

sub_2010c6:
	bsr.w sub_200ede
	cmpi.l #$210000,d1
	beq.s loc_2010e0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2010e0
	btst.l d5,d4
	bne.s loc_2010ee
loc_2010e0:
	add.w a3,d2
	bsr.w sub_201186
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2010ee:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2010e0
	lea (dat_23724a).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201114
	not.w d1
	neg.b (a4)
loc_201114:
	btst.l #$c,d4
	beq.s loc_201124
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201124:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23734a).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201140
	neg.w d0
loc_201140:
	tst.w d0
	beq.s loc_2010e0
	bmi.s loc_20115c
	cmpi.b #$10,d0
	beq.s loc_201178
loc_20114c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20115c:
	cmpa.w #$10,a3
	bne.s loc_20116c
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20114c
loc_20116c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2010e0
loc_201178:
	sub.w a3,d2
	bsr.w sub_201186
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201186:
	bsr.w sub_200ede
	cmpi.l #$210000,d1
	beq.s loc_2011a0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011a0
	btst.l d5,d4
	bne.s loc_2011ae
loc_2011a0:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2011ae:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011a0
	lea (dat_23724a).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011d4
	not.w d1
	neg.b (a4)
loc_2011d4:
	btst.l #$c,d4
	beq.s loc_2011e4
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011e4:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23734a).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201200
	neg.w d0
loc_201200:
	tst.w d0
	beq.s loc_2011a0
	bmi.s loc_201216
loc_201206:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201216:
	cmpa.w #$10,a3
	bne.s loc_201226
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201206
loc_201226:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011a0
	not.w d1
	rts

sub_201236:
	bsr.w sub_200ede
	cmpi.l #$210000,d1
	beq.s loc_201250
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201250
	btst.l d5,d4
	bne.s loc_20125e
loc_201250:
	add.w a3,d3
	bsr.w sub_2012e6
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_20125e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201250
	lea (dat_23724a).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20128c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20128c:
	btst.l #$b,d4
	beq.s loc_201294
	neg.b (a4)
loc_201294:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23834a).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012b0
	neg.w d0
loc_2012b0:
	tst.w d0
	beq.s loc_201250
	bmi.s loc_2012cc
	cmpi.b #$10,d0
	beq.s loc_2012d8
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012cc:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201250
loc_2012d8:
	sub.w a3,d3
	bsr.w sub_2012e6
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2012e6:
	bsr.w sub_200ede
	cmpi.l #$210000,d1
	beq.s loc_201300
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201300
	btst.l d5,d4
	bne.s loc_20130e
loc_201300:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20130e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201300
	lea (dat_23724a).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20133c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20133c:
	btst.l #$b,d4
	beq.s loc_201344
	neg.b (a4)
loc_201344:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23834a).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201360
	neg.w d0
loc_201360:
	tst.w d0
	beq.s loc_201300
	bmi.s loc_201376
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201376:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201300
	not.w d1
	rts

sub_201386:
	rts
	.incbin 5000, 152
loc_201420:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201440
	tst.b ($ff0f01).l
	bne.s loc_201440
	move.b #$1,($ff156a).l
loc_201440:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_2014a6
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20786a
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_2014a6
	move.b #$1,($ff1508).l
loc_2014a6:
	bset.b #$7,($f600).w
	bsr.w sub_202494
	tst.b ($ff156e).l
	bne.s loc_2014cc
	btst.b #$7,($ff152e).l
	beq.s loc_201502
	bset.b #$0,($ff151d).l
	beq.s loc_2014d8
loc_2014cc:
	bsr.w sub_200438
	bclr.b #$0,($ff151d).l
loc_2014d8:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201572
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_201500
	bclr.b #$7,($ff152e).l
loc_201500:
	rts
loc_201502:
	bset.b #$0,($ff151d).l
	beq.s loc_201510
	bsr.w sub_20030c
loc_201510:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20152c
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201554
loc_20152c:
	tst.b ($ff1508).l
	bne.s loc_201572
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201554:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20155c:
	move.l #$0,(a1)+
	dbf d6,loc_20155c
	move.b #$c,($f62a).w
	bsr.w sub_200764
	rts
loc_201572:
	cmpi.w #$800,($f78e).w
	bne.s loc_201590
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201590:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2015a6
	btst.b #$7,($ff152e).l
	beq.s loc_2015ac
loc_2015a6:
	move.l #$eee0eee,d0
loc_2015ac:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015b4:
	move.l d0,(a1)+
	dbf d6,loc_2015b4
loc_2015ba:
	move.b #$c,($f62a).w
	bsr.w sub_200764
	bsr.w sub_2024a2
	bne.s loc_2015ba
	tst.l ($f680).w
	bsr.w sub_201a60
	moveq #$0,d0
	lea (dat_20f0a0).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015e4
	bsr.w sub_2025a8
loc_2015e4:
	moveq #$1,d0
	bsr.w sub_2025a8
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201600:
	move.l d0,(a1)+
	dbf d1,loc_201600
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201612:
	move.l d0,(a1)+
	dbf d1,loc_201612
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201622:
	move.l d0,(a1)+
	dbf d1,loc_201622
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201634:
	move.l d0,(a1)+
	dbf d1,loc_201634
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201644:
	move.l d0,(a1)+
	dbf d1,loc_201644
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201654:
	move.l d0,(a1)+
	dbf d1,loc_201654
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20217e
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
	bsr.w sub_2004e2
	moveq #$3,d0
	bsr.w sub_2004c6
	bsr.w sub_20280a
	bsr.w sub_202986
	bset.b #$2,($f754).w
	bsr.w sub_203540
	bsr.w sub_203446
	jsr (sub_201386).l
	bsr.w sub_20199a
loc_2016d4:
	move.b #$c,($f62a).w
	bsr.w sub_200764
	bsr.w sub_2024a2
	bne.s loc_2016d4
	tst.l ($f680).w
	bne.s loc_2016d4
	bsr.w sub_201926
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201ac0
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201738
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201738:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20177a
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20177a:
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
	jsr (sub_20effc).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_20180a
loc_201804:
	bsr.w sub_20038a
	bra.s loc_201818
loc_20180a:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201804
	bsr.w sub_20026a
loc_201818:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201826:
	move.b #$8,($f62a).w
	bsr.w sub_200764
	tst.b ($f7cc).w
	bne.s loc_201844
	btst.b #$7,($f605).w
	beq.s loc_201844
	eori.b #$1,($f63a).w
loc_201844:
	btst.b #$0,($f63a).w
	beq.w loc_2018b6
	bsr.w sub_201b24
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201894
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201826
	subq.b #$1,($ff1508).l
	bpl.s loc_201876
	clr.b ($ff1508).l
loc_201876:
	move.w #$e,d0
	jsr (sub_205bfe).l
	bsr.w sub_20786a
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_2018a2
loc_201894:
	andi.b #$70,d0
	beq.w loc_201826
	clr.b ($ff1508).l
loc_2018a2:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201420
loc_2018b6:
	bsr.w sub_201b6a
	addq.w #$1,($ff1504).l
	jsr (sub_207880).l
	jsr (sub_203954).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201420
	tst.w ($ff1502).l
	bne.w loc_201420
	tst.w ($ff1906).l
	bne.s loc_2018fe
	cmpi.b #$6,($d024).w
	bcs.s loc_2018fe
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201902
loc_2018fe:
	bsr.w sub_202986
loc_201902:
	jsr (sub_203afe).l
	tst.w ($ff190e).l
	bne.s loc_201914
	bsr.w sub_200184
loc_201914:
	jsr (sub_20bcc8).l
	bsr.w sub_2024a2
	bsr.w sub_2019cc
	bra.w loc_201826

sub_201926:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_20193e
	move.w #$78,$30(a1)
loc_20193e:
	rts
	.incbin 6464, 90

sub_20199a:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_2019ac(pc,d0.w),($f796).w
	rts
dat_2019ac:
	.incbin 6572, 32

sub_2019cc:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019ea
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019ea:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a08
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a08:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a30
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a30
	move.b #$0,($ff1915).l
loc_201a30:
	tst.b ($ff1916).l
	beq.s loc_201a5e
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a5e:
	rts

sub_201a60:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a82
	cmpi.b #$2,d0
	bne.s loc_201a82
	add.b ($ff156a).l,d0
loc_201a82:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a9a(pc,d1.w),d0
	jmp (sub_205bfe).l
dat_201a9a:
	.incbin 6810, 38

sub_201ac0:
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

sub_201b24:
	move.w #$ab,d0
	jsr (sub_20226c).l
	bset.b #$7,($f63a).w
	bne.s loc_201b68
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b4e
loc_201b44:
	move.w #$d5,d0
	jmp (sub_205bfe).l
loc_201b4e:
	tst.b ($ff151f).l
	bne.s loc_201b44
	tst.b ($ff1520).l
	bne.s loc_201b44
	move.w #$90,d0
	jmp (sub_205bfe).l
loc_201b68:
	rts

sub_201b6a:
	bclr.b #$7,($f63a).w
	beq.s loc_201ba4
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b8a
loc_201b80:
	move.w #$d6,d0
	jmp (sub_205bfe).l
loc_201b8a:
	tst.b ($ff151f).l
	bne.s loc_201b80
	tst.b ($ff1520).l
	bne.s loc_201b80
	move.w #$91,d0
	jmp (sub_205bfe).l
loc_201ba4:
	rts
loc_201ba6:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c32
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201be2
	move.w #$700,d0
loc_201bde:
	dbf d0,loc_201bde
loc_201be2:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c18(pc,d0.w),d0
	jsr dat_201c18(pc,d0.w)
loc_201bf8:
	jsr (sub_202290).l
	tst.b ($f63a).w
	bne.s loc_201c0c
	bsr.w sub_202044
	bsr.w sub_202032
loc_201c0c:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c18:
	.incbin 7192, 26
loc_201c32:
	tst.b ($ff1957).l
	beq.w loc_201bf8
	cmpi.b #$2,($ff1506).l
	bne.w loc_201bf8
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c60
	move.w #$700,d0
loc_201c5c:
	dbf d0,loc_201c5c
loc_201c60:
	move.w #$1,($f6fc).w
	jsr (sub_202204).l
	tst.b ($f64e).w
	bne.s loc_201c98
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201cbc
loc_201c98:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201cbc:
	move.w ($f624).w,(a5)
	jsr (sub_202220).l
	bra.w loc_201bf8
	.incbin 7370, 60
	jsr (sub_202204).l
	bsr.w sub_2020a0
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
	bsr.w sub_205b20
	tst.b ($f767).w
	beq.s loc_201db4
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201db4:
	jsr (sub_20effc).l
	jsr (sub_202220).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20303e
	bsr.w sub_202514
	jmp (loc_20a6c8).l
	dc.b $4e,$75
	jsr (sub_202204).l
	bsr.w sub_2020a0
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
	jsr (sub_202220).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20303e
	bra.w loc_2024f8
	.incbin 7820, 16
	bsr.w sub_201f88
	cmpi.b #$1,($ff1903).l
	bne.s loc_201ebe
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201ebe:
	move.w ($f624).w,(a5)
	bra.w loc_2024f8
	dc.b $4e,$b9,$00,$20,$22,$04,$61,$00
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
	jsr (sub_202220).l
	lea ($d000).w,a0
	bsr.w sub_205b20
	tst.b ($f767).w
	beq.s loc_201f7a
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f7a:
	tst.w ($f614).w
	beq.w loc_201f86
	subq.w #$1,($f614).w
loc_201f86:
	rts

sub_201f88:
	jsr (sub_202204).l
	bsr.w sub_2020a0
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
	jmp (sub_202220).l
	dc.b $4e,$73

sub_202032:
	tst.b ($d02a).w
	bne.s loc_202042
	tst.w ($f786).w
	beq.s loc_202042
	addq.w #$1,($f786).w
loc_202042:
	rts

sub_202044:
	tst.w ($f780).w
	beq.s loc_20204e
	addq.w #$1,($f780).w
loc_20204e:
	tst.w ($f782).w
	beq.s loc_202058
	addq.w #$1,($f782).w
loc_202058:
	rts
	move.l d1,-(a7)
	move.l ($f636).w,d1
	bne.s loc_202068
	move.l #$2a6d365a,d1
loc_202068:
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

sub_202084:
	bsr.w sub_202204
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202220

sub_2020a0:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_2020ae
	addq.w #$2,a1

sub_2020ae:
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

sub_2020dc:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202158).l,a2
	moveq #$12,d7
loc_2020f0:
	move.w (a2)+,(a0)
	dbf d7,loc_2020f0
	move.w (dat_20215a).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202116:
	move.w d0,(a1)
	dbf d7,loc_202116
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202148:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202148
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202158:
	dc.b $80,$04
dat_20215a:
	.incbin 8538, 36

sub_20217e:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2021a0:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021a0
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2021ce:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021ce
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2021ec:
	move.l d0,(a1)+
	dbf d1,loc_2021ec
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2021fc:
	move.l d0,(a1)+
	dbf d1,loc_2021fc
	rts

sub_202204:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202214:
	btst.b #$0,($a11100).l
	bne.s loc_202214
	rts

sub_202220:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8750, 62

sub_20226c:
	tst.b ($f00a).w
	bne.s loc_202278
	move.b d0,($f00a).w
	rts
loc_202278:
	tst.b ($f00b).w
	bne.s loc_202284
	move.b d0,($f00b).w
	rts
loc_202284:
	tst.b ($f00c).w
	bne.s loc_20228e
	move.b d0,($f00c).w
loc_20228e:
	rts

sub_202290:
	jsr (sub_202204).l
	tst.b ($f00a).w
	beq.s loc_2022aa
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2022aa:
	tst.b ($f00b).w
	beq.s loc_2022be
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2022be:
	tst.b ($f00c).w
	beq.s loc_2022d2
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2022d2:
	bra.w sub_202220
	.incbin 8918, 32

sub_2022f6:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2023b8).l,a3
	lea ($c00000).l,a4
	bra.s loc_202312

sub_202308:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2023ce).l,a3
loc_202312:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202320
	adda.w #$a,a3
loc_202320:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2023e4
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202340
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202340:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20238c
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202368
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202368:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202376:
	lsr.w #$4,d0
loc_202378:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202386
	jmp (a3)

sub_202382:
	moveq #$0,d4
	moveq #$8,d3
loc_202386:
	dbf d0,loc_202378
	bra.s sub_202340
loc_20238c:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_20239a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20239a:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202376
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202376
loc_2023b8:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202382
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202382
	rts
dat_2023ce:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202382
	rts

sub_2023e4:
	move.b (a0)+,d0
loc_2023e6:
	cmpi.b #$ff,d0
	bne.s loc_2023ee
	rts
loc_2023ee:
	move.w d0,d7
loc_2023f0:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2023e6
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
	bne.s loc_20241e
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2023f0
loc_20241e:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_20242a:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_20242a
	bra.s loc_2023f0

sub_202436:
	movem.l a1-a2,-(a7)
	lea (dat_20f0b0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20244e:
	tst.l (a2)
	beq.s loc_202456
	addq.w #$6,a2
	bra.s loc_20244e
loc_202456:
	move.w (a1)+,d0
	bmi.s loc_202462
loc_20245a:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20245a
loc_202462:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9320, 44

sub_202494:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_20249a:
	clr.l (a2)+
	dbf d0,loc_20249a
	rts

sub_2024a2:
	tst.l ($f680).w
	beq.s loc_2024f6
	tst.w ($f6f8).w
	bne.s loc_2024f6
	movea.l ($f680).w,a0
	lea (loc_2023b8).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2024c4
	adda.w #$a,a3
loc_2024c4:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2023e4
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
loc_2024f6:
	rts
loc_2024f8:
	tst.w ($f6f8).w
	beq.w loc_202596
loc_202500:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202532

sub_202514:
	tst.w ($f6f8).w
	beq.s loc_202596
	tst.b ($f744).w
	bne.s loc_202500
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202532:
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
loc_202566:
	movea.w #$8,a5
	bsr.w sub_202382
	subq.w #$1,($f6f8).w
	beq.s loc_202598
	subq.w #$1,($f6fa).w
	bne.s loc_202566
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202596:
	rts
loc_202598:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20259e:
	move.l $6(a0),(a0)+
	dbf d0,loc_20259e
	rts

sub_2025a8:
	lea (dat_20f0b0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2025ba:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2022f6
	dbf d1,loc_2025ba
	rts
	.incbin 9690, 560

sub_20280a:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202866).l,a0
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
	bra.w loc_202892
dat_202866:
	dc.b $00,$04,$00,$00,$26,$97,$00,$00
	dc.b $05,$10,$00,$60
dat_202872:
	.incbin 10354, 32
loc_202892:
	tst.b ($ff1522).l
	beq.s loc_2028b2
	jsr (sub_206c76).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_2028b0
	moveq #$0,d0
loc_2028b0:
	bra.s loc_2028ee
loc_2028b2:
	lea (dat_20292a).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2028d4
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202872).l,a1
	adda.w d0,a1
	bra.s loc_2028de
loc_2028d4:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2028de:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2028ee:
	subi.w #$a0,d1
	bcc.s loc_2028f6
	moveq #$0,d1
loc_2028f6:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202900
	move.w d2,d1
loc_202900:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20290c
	moveq #$0,d0
loc_20290c:
	cmp.w ($f72e).w,d0
	blt.s loc_202916
	move.w ($f72e).w,d0
loc_202916:
	move.w d0,($f704).w
	bsr.w sub_202932
	lea (dat_20292e).l,a1
	move.l (a1),($f7ac).w
	rts
dat_20292a:
	dc.b $00,$20,$01,$ac
dat_20292e:
	dc.b $7f,$7f,$7f,$7f

sub_202932:
	move.w #$218,d0
	move.w #$520,d2
	sub.w ($f704).w,d2
	bcs.s loc_202948
	lsr.w #$1,d2
	sub.w d2,d0
	bpl.s loc_202948
	moveq #$0,d0
loc_202948:
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
	moveq #$f,d2
loc_20297e:
	clr.l (a2)+
	dbf d2,loc_20297e
	rts

sub_202986:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202992
	rts
loc_202992:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202cb4
	bsr.w sub_202d54
	bsr.w sub_2035e8
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_202fde
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202faa
	lea ($a940).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202f76
	move.w #$218,d0
	move.w #$520,d1
	sub.w ($f704).w,d1
	bcs.s loc_202a0a
	lsr.w #$1,d1
	sub.w d1,d0
	bpl.s loc_202a0a
	moveq #$0,d0
loc_202a0a:
	bsr.w sub_202f46
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a2
	addi.l #$c000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$1000,(a2)+
	addi.l #$c00,(a2)+
	addi.l #$c00,(a2)+
	addi.l #$1000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$c000,(a2)+
	moveq #$3f,d6
	moveq #$0,d1
loc_202a9c:
	move.w d1,d2
	mulu.w #$100,d2
	addi.l #$8000,d2
	add.l d2,(a2)+
	addq.b #$1,d1
	dbf d6,loc_202a9c
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($f708).w,d0
	neg.w d0
	move.w d0,(a1)+
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202ac8:
	move.w d0,(a1)+
	dbf d6,loc_202ac8
	move.w ($f718).w,d0
	neg.w d0
	moveq #$9,d6
loc_202ad6:
	move.w d0,(a1)+
	dbf d6,loc_202ad6
	lea ($a800).w,a2
	moveq #$f,d6
loc_202ae2:
	move.l (a2)+,d1
	swap d1
	add.w ($f708).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202bc2).l,a3
	move.b $0(a3,d6.w),d5
loc_202af8:
	move.w d1,(a1)+
	dbf d5,loc_202af8
	dbf d6,loc_202ae2
	move.w ($f708).w,d0
	neg.w d0
	moveq #$5,d6
loc_202b0a:
	move.w d0,(a1)+
	dbf d6,loc_202b0a
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b18:
	move.w d0,(a1)+
	dbf d6,loc_202b18
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202b26:
	move.w d0,(a1)+
	dbf d6,loc_202b26
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$6,d2
	divs.w #$18,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	moveq #$2,d6
	move.w ($f708).w,d3
loc_202b4a:
	move.w d3,d0
	neg.w d0
	lea (dat_202bd2).l,a3
	moveq #$0,d5
	move.b $0(a3,d6.w),d5
loc_202b5a:
	move.w d0,(a1)+
	dbf d5,loc_202b5a
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b4a
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202b72:
	move.w d0,(a1)+
	dbf d6,loc_202b72
	lea ($cc00).w,a1
	lea ($a940).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	move.w d0,d4
	andi.w #$3f8,d0
	lsr.w #$2,d0
	move.w d0,d3
	lsr.w #$1,d3
	moveq #$57,d1
	moveq #$1d,d5
	sub.w d3,d1
	bcs.s loc_202bbe
	cmpi.w #$1b,d1
	bcs.s loc_202ba2
	moveq #$1c,d1
loc_202ba2:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	lea (dat_202bd6).l,a3
	lea (dat_23d574).l,a4
	addi.w #$40,($f7d8).w
	bsr.w sub_202c2a
loc_202bbe:
	bra.w loc_202bdc
dat_202bc2:
	.incbin 11202, 16
dat_202bd2:
	dc.b $06,$01,$00,$00
dat_202bd6:
	dc.b $00,$08,$7f,$ff,$7f,$ff
loc_202bdc:
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	lea ($a840).w,a2
	move.b ($f7d8).w,d5
	sub.w ($f70c).w,d4
loc_202bee:
	move.l (a2)+,d2
	swap d2
	add.w ($f708).w,d2
	neg.w d2
	move.w d2,d0
	move.w #$5c0,d3
	sub.w ($f704).w,d3
	cmp.w d3,d4
	bcs.s loc_202c1e
	andi.w #$ff,d5
	move.b $0(a4,d5.w),d3
	ext.w d3
	add.w d3,d3
	add.w ($f700).w,d3
	neg.w d3
	swap d0
	move.w d3,d0
	swap d0
loc_202c1e:
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d5
	dbf d1,loc_202bee
	rts

sub_202c2a:
	cmp.w (a3),d4
	bcc.s loc_202c60
loc_202c2e:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c4a(pc,d2.w)
loc_202c3e:
	tst.w d1
	bmi.s loc_202c5e
	cmp.w (a3),d4
	bcc.s loc_202c7a
loc_202c46:
	move.w (a2)+,d0
	addq.w #$8,d4
loc_202c4a:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c3e
loc_202c5e:
	rts
loc_202c60:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	bgt.s loc_202c84
	cmp.w (a3),d4
	bcs.s loc_202c2e
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c2e
	bra.s loc_202c84
loc_202c7a:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c46
loc_202c84:
	subq.w #$1,d3
	move.w d3,d6
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202c8e:
	andi.w #$ff,d2
	move.b $0(a4,d2.w),d0
	ext.w d0
	add.w ($f708).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d2
	dbf d3,loc_202c8e
	lsr.w #$3,d6
loc_202caa:
	move.w (a2)+,d0
	subq.w #$1,d1
	dbf d6,loc_202caa
	bra.s loc_202c3e

sub_202cb4:
	move.w ($f700).w,d4
	bsr.s sub_202ce8
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202ce6
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202ce0
	bset.b #$2,($f754).w
	rts
loc_202ce0:
	bset.b #$3,($f754).w
loc_202ce6:
	rts

sub_202ce8:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202cfa
	bcs.s loc_202d2a
	bra.s loc_202d00
loc_202cfa:
	clr.w ($f73a).w
	rts
loc_202d00:
	cmpi.w #$10,d0
	blt.s loc_202d0a
	move.w #$10,d0
loc_202d0a:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202d18
	move.w ($f72a).w,d0
loc_202d18:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d2a:
	cmpi.w #$fff0,d0
	bge.s loc_202d34
	move.w #$fff0,d0
loc_202d34:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202d18
	move.w ($f728).w,d0
	bra.s loc_202d18
	.incbin 11588, 16

sub_202d54:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202d68
	subq.w #$5,d0
loc_202d68:
	btst.b #$1,$22(a6)
	beq.s loc_202d88
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202dd4
	subi.w #$40,d0
	bcc.s loc_202dd4
	tst.b ($f75c).w
	bne.s loc_202de6
	bra.s loc_202d94
loc_202d88:
	sub.w ($f73e).w,d0
	bne.s loc_202d9a
	tst.b ($f75c).w
	bne.s loc_202de6
loc_202d94:
	clr.w ($f73c).w
	rts
loc_202d9a:
	cmpi.w #$60,($f73e).w
	bne.s loc_202dc2
	move.w $14(a6),d1
	bpl.s loc_202daa
	neg.w d1
loc_202daa:
	cmpi.w #$800,d1
	bcc.s loc_202dd4
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e34
	cmpi.w #$fffa,d0
	blt.s loc_202dfe
	bra.s loc_202dec
loc_202dc2:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e34
	cmpi.w #$fffe,d0
	blt.s loc_202dfe
	bra.s loc_202dec
loc_202dd4:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e34
	cmpi.w #$fff0,d0
	blt.s loc_202dfe
	bra.s loc_202dec
loc_202de6:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202dec:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202e3e
	bra.w loc_202e0a
loc_202dfe:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e0a:
	cmp.w ($f72c).w,d1
	bgt.s loc_202e62
	cmpi.w #$ff00,d1
	bgt.s loc_202e2e
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e62
loc_202e2e:
	move.w ($f72c).w,d1
	bra.s loc_202e62
loc_202e34:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e3e:
	cmp.w ($f72e).w,d1
	blt.s loc_202e62
	subi.w #$800,d1
	bcs.s loc_202e5e
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e62
loc_202e5e:
	move.w ($f72e).w,d1
loc_202e62:
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
	bne.s loc_202ea4
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202e9e
	bset.b #$0,($f754).w
	rts
loc_202e9e:
	bset.b #$1,($f754).w
loc_202ea4:
	rts
	.incbin 11942, 160

sub_202f46:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f74
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202f6e
	bset.b #$0,($f756).w
	rts
loc_202f6e:
	bset.b #$1,($f756).w
loc_202f74:
	rts

sub_202f76:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202fa8
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202fa2
	bset.b d6,($f756).w
	bra.s loc_202fa8
loc_202fa2:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202fa8:
	rts

sub_202faa:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202fdc
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202fd6
	bset.b d6,($f758).w
	bra.s loc_202fdc
loc_202fd6:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202fdc:
	rts

sub_202fde:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203010
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_20300a
	bset.b d6,($f75a).w
	bra.s loc_203010
loc_20300a:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203010:
	rts
	.incbin 12306, 44

sub_20303e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_2030fc
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2031e0
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2031e2
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_2030fa
	bclr.b #$0,(a2)
	beq.s loc_2030b0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20340e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031e4
loc_2030b0:
	bclr.b #$1,(a2)
	beq.s loc_2030ca
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20340e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031e4
loc_2030ca:
	bclr.b #$2,(a2)
	beq.s loc_2030e0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20340e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20323a
loc_2030e0:
	bclr.b #$3,(a2)
	beq.s loc_2030fa
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20340e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20323a
loc_2030fa:
	rts

sub_2030fc:
	lea (dat_2034c6).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203118
	bclr.b #$1,(a2)
	beq.s loc_203162
	move.w #$e0,d4
loc_203118:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203192(pc,d0.w),a3
	beq.s loc_20314a
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20340e
	movem.l (a7)+,d4-d5
	bsr.w sub_2031e4
	movea.l (a7)+,a0
	bra.s loc_203162
loc_20314a:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203410
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203210
	movea.l (a7)+,a0
loc_203162:
	tst.b (a2)
	bne.s loc_203168
	rts
loc_203168:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_20317c
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_20317c:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2031a2
dat_203192:
	.incbin 12690, 16
loc_2031a2:
	moveq #$f,d6
	move.l #$800000,d7
loc_2031aa:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_2031d4
	add.w d0,d0
	movea.l dat_203192(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032e6
	movem.l (a7)+,d4-d5
	bsr.w sub_20340e
	bsr.w sub_203268
	movem.l (a7)+,d4-d5/a0
loc_2031d4:
	addi.w #$10,d4
	dbf d6,loc_2031aa
	clr.b (a2)
	rts

sub_2031e0:
	rts

sub_2031e2:
	rts

sub_2031e4:
	moveq #$15,d6

sub_2031e6:
	move.l #$800000,d7
	move.l d0,d1
loc_2031ee:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032e6
	move.l d1,d0
	bsr.w sub_203268
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2031ee
	rts

sub_203210:
	move.l #$800000,d7
	move.l d0,d1
loc_203218:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032e8
	move.l d1,d0
	bsr.w sub_203268
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203218
	rts

sub_20323a:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203244:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032e6
	move.l d1,d0
	bsr.w sub_203268
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203244
	rts

sub_203268:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2032a4
	btst.b #$3,(a0)
	bne.s loc_203284
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203284:
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
loc_2032a4:
	btst.b #$3,(a0)
	bne.s loc_2032c6
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
loc_2032c6:
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

sub_2032e6:
	add.w (a3),d5

sub_2032e8:
	add.w $4(a3),d4

sub_2032ec:
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
	beq.s loc_203336
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
loc_203336:
	rts
	.incbin 13112, 56

sub_203370:
	move.l a0,-(a7)
	lea ($a000).w,a4
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_2032ec
	bne.s loc_20339c
	movem.l (a7)+,d3-d5
	bra.s loc_2033c6
loc_20339c:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_2033ca
	bne.s loc_2033c6
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_203414
	bsr.w sub_203268
	movem.l (a7)+,d3-d5
loc_2033c6:
	movea.l (a7)+,a0
	rts

sub_2033ca:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_20340a
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_20340a
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_20340a
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_20340a
	moveq #$0,d0
	rts
loc_20340a:
	moveq #$1,d0
	rts

sub_20340e:
	add.w (a3),d5

sub_203410:
	add.w $4(a3),d4

sub_203414:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13354, 28

sub_203446:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203470
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203498

sub_203470:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203474:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20340e
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2031e6
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203474
	rts
loc_203498:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20349c:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2034c6).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_203508
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_20349c
	rts
dat_2034c6:
	.incbin 13510, 50
dat_2034f8:
	.incbin 13560, 16

sub_203508:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2034f8(pc,d0.w),a3
	beq.s loc_20352a
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20340e
	movem.l (a7)+,d4-d5
	bsr.w sub_2031e4
	bra.s loc_20353e
loc_20352a:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203410
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203210
loc_20353e:
	rts

sub_203540:
	moveq #$0,d0
	lea (dat_20f0a0).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202308
	movea.l (a2)+,a0
	bsr.w sub_20359a
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004c6
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203584
	jmp (loc_20bcc0).l
loc_203584:
	btst.b #$1,($ff151c).l
	beq.s loc_203598
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203598
	bsr.w sub_202436
loc_203598:
	rts

sub_20359a:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2035a4:
	move.l d0,(a3)+
	dbf d1,loc_2035a4
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2035ba
	lea ($a040).w,a3
	moveq #$2,d1

sub_2035ba:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23966a).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2035d4:
	move.w d1,d0
	movea.l a3,a0
loc_2035d8:
	move.b (a1)+,(a0)+
	dbf d0,loc_2035d8
	lea $80(a3),a3
	dbf d2,loc_2035d4
	rts

sub_2035e8:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203662(pc,d0.w),d0
	jsr dat_203662(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20360e
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20360e:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20363c
	bcc.s loc_20363e
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203632
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203632:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20363c:
	rts
loc_20363e:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203656
	btst.b #$1,($d022).w
	beq.s loc_203656
	add.w d1,d1
	add.w d1,d1
loc_203656:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203662:
	.incbin 13922, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20371c(pc,d0.w),d0
	jmp dat_20371c(pc,d0.w)
dat_20371c:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$510,($f726).w
	rts
	.incbin 14122, 554

sub_203954:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20395c:
	move.b (a0),d0
	beq.s loc_203972
	add.w d0,d0
	add.w d0,d0
	lea (dat_203d76).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203972:
	lea $40(a0),a0
	dbf d7,loc_20395c
	rts

sub_20397c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2039ba
	bpl.s loc_2039ac
	btst.b #$1,$2c(a0)
	beq.s loc_2039ac
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2039ba
loc_2039ac:
	btst.b #$2,$2c(a0)
	bne.s loc_2039ba
	addi.w #$38,$12(a0)
loc_2039ba:
	tst.w $12(a0)
	bmi.s loc_2039ce
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2039ce
	move.w #$1000,$12(a0)
loc_2039ce:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2039de:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a1a
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a1a
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a18
	neg.w d1
loc_203a18:
	add.w d1,d0
loc_203a1a:
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

sub_203a34:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203aa4
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203ac0
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203ac0
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203a7e
	cmpi.w #$800,d3
	bcs.s loc_203a90
	subi.w #$800,d3
	bra.s loc_203a90
loc_203a7e:
	cmpi.w #$700,($f704).w
	bcs.s loc_203a90
	cmpi.w #$100,d3
	bcc.s loc_203a90
	addi.w #$800,d3
loc_203a90:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203ac0
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203ac0
loc_203aa4:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203ac0
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203ac0:
	rts
	.incbin 15042, 30

sub_203ae0:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203ae6:
	move.l d1,(a1)+
	dbf d0,loc_203ae6
	rts
dat_203aee:
	.incbin 15086, 16

sub_203afe:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b0a:
	tst.w (a4)
	beq.w loc_203bca
	moveq #$2,d6
loc_203b12:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203bc2
	dc.b $10,$28,$00,$01,$18,$00
	andi.w #$c,d0
	beq.w loc_203b78
	movea.l dat_203aee(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203b5c
	cmpi.w #$800,d2
	bcs.s loc_203b6e
	subi.w #$800,d2
	bra.s loc_203b6e
loc_203b5c:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203b6e
	cmpi.w #$100,d2
	bcc.s loc_203b6e
	addi.w #$800,d2
loc_203b6e:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203b9a
loc_203b78:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203b9a
	.incbin 15234, 24
loc_203b9a:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203bb8
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203bbc
loc_203bb8:
	bsr.w sub_203bec
loc_203bbc:
	bset.b #$7,$1(a0)
loc_203bc2:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b12
loc_203bca:
	lea $80(a4),a4
	dbf d7,loc_203b0a
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203be4
	move.l #$0,(a2)
	rts
loc_203be4:
	move.b #$0,-$5(a2)
	rts

sub_203bec:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c32
	btst.l #$1,d4
	bne.w loc_203c80
loc_203bfe:
	cmpi.b #$50,d5
	beq.s loc_203c30
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
	bne.s loc_203c2a
	addq.w #$1,d0
loc_203c2a:
	move.w d0,(a2)+
	dbf d1,loc_203bfe
loc_203c30:
	rts
loc_203c32:
	btst.l #$1,d4
	bne.w loc_203cc6
loc_203c3a:
	cmpi.b #$50,d5
	beq.s loc_203c7e
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
	bne.s loc_203c78
	addq.w #$1,d0
loc_203c78:
	move.w d0,(a2)+
	dbf d1,loc_203c3a
loc_203c7e:
	rts
loc_203c80:
	cmpi.b #$50,d5
	beq.s loc_203cc4
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
	bne.s loc_203cbe
	addq.w #$1,d0
loc_203cbe:
	move.w d0,(a2)+
	dbf d1,loc_203c80
loc_203cc4:
	rts
loc_203cc6:
	cmpi.b #$50,d5
	beq.s loc_203d18
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
	bne.s loc_203d12
	addq.w #$1,d0
loc_203d12:
	move.w d0,(a2)+
	dbf d1,loc_203cc6
loc_203d18:
	rts
	.incbin 15642, 92
dat_203d76:
	.incbin 15734, 246

sub_203e6c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203e7e
	move.w #$0,(a1)
	rts
loc_203e7e:
	tst.w (a1)
	bne.s loc_203e88
	move.b #$1,$1(a1)
loc_203e88:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203ed2
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ec4
	neg.w $10(a0)
loc_203ec4:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205bfe
loc_203ed2:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203ef0
	cmpa.w #$d040,a0
	beq.s loc_203ef0
	tst.b ($ff1906).l
	beq.s loc_203ef0
	jmp (loc_20759c).l
loc_203ef0:
	move.b $2a(a0),d0
	beq.s loc_203f1a
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203f0c
	cmpi.b #$2d,d0
	bcs.s loc_203f16
	move.b #$2d,d0
	bra.s loc_203f16
loc_203f0c:
	cmpi.b #$1e,d0
	bcs.s loc_203f16
	move.b #$1e,d0
loc_203f16:
	move.b d0,$2a(a0)
loc_203f1a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203f28(pc,d0.w),d1
	jmp dat_203f28(pc,d1.w)
dat_203f28:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203f32:
	tst.b ($d300).w
	bne.s loc_203f70
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203f70:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203f98
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203f98:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203fcc:
	tst.b ($ff1506).l
	bne.s loc_204032
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_204032
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_204036
	cmpi.b #$2f,d1
	bne.s loc_204034
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_204032
	tst.b $2c(a0)
	beq.s loc_204032
	jsr (sub_207a7c).l
	bne.s loc_204032
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_20402a
	moveq #$0,d0
loc_20402a:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_204032:
	rts
loc_204034:
	rts

sub_204036:
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

sub_20405c:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204068
	neg.w d0
loc_204068:
	btst.b #$1,$2c(a0)
	beq.s loc_204078
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_2040a0
loc_204078:
	cmpi.w #$600,d0
	bcs.s loc_2040a0
	tst.w $14(a0)
	bpl.s loc_204092
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_2040ae
	move.w #$e0,d1
	bra.s loc_2040ae
loc_204092:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_2040ae
	move.w #$60,d1
	bra.s loc_2040ae
loc_2040a0:
	cmpi.w #$a0,d1
	beq.s loc_2040ae
	bcc.s loc_2040ac
	addq.w #$2,d1
	bra.s loc_2040ae
loc_2040ac:
	subq.w #$2,d1
loc_2040ae:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_20405c
	bsr.w sub_203fcc
	tst.w ($ff1588).l
	beq.s loc_2040d4
	btst.b #$4,($f605).w
	beq.s loc_2040d4
	move.b #$1,($ff1906).l
	rts
loc_2040d4:
	tst.b ($f7cc).w
	bne.s loc_2040e0
	move.w ($f604).w,($f602).w
loc_2040e0:
	btst.b #$0,$2c(a0)
	beq.s loc_204104
	cmpi.b #$6,($ff1506).l
	bne.s loc_2040fe
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_20411c
loc_2040fe:
	bsr.w sub_2043e6
	bra.s loc_20411c
loc_204104:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204162(pc,d0.w),d1
	jsr dat_204162(pc,d1.w)
	jsr (sub_2066b6).l
loc_20411c:
	bsr.s sub_204170
	bsr.w sub_204230
	bsr.w sub_20424a
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204144
	tst.b $1c(a0)
	bne.s loc_204144
	move.b $1d(a0),$1c(a0)
loc_204144:
	bsr.w sub_2055ee
	tst.b $2c(a0)
	bmi.s loc_20415c
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20415c
	jsr (sub_207146).l
loc_20415c:
	bsr.w sub_2054a4
	rts
dat_204162:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204170:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204194
	move.w $30(a0),d0
	beq.s loc_204186
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204194
loc_204186:
	btst.b #$6,$2c(a0)
	bne.s loc_204194
	jsr (sub_203a34).l
loc_204194:
	tst.b ($ff151f).l
	beq.s loc_2041d8
	tst.w $32(a0)
	beq.s loc_2041d8
	subq.w #$1,$32(a0)
	bne.s loc_2041d8
	tst.b ($ff1520).l
	bne.s loc_2041d0
	tst.b ($ff1958).l
	bne.s loc_2041d0
	tst.b ($ff152e).l
	bne.s loc_2041ca
	move.w #$e,d0
	jsr (sub_205bfe).l
loc_2041ca:
	jsr (sub_201a60).l
loc_2041d0:
	move.b #$0,($ff151f).l
loc_2041d8:
	tst.b ($ff1520).l
	beq.s loc_20422e
	tst.w $34(a0)
	beq.s loc_20422e
	subq.w #$1,$34(a0)
	bne.s loc_20422e
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204226
	tst.b ($ff1958).l
	bne.s loc_204226
	tst.b ($ff152e).l
	bne.s loc_204220
	move.w #$e,d0
	jsr (sub_205bfe).l
loc_204220:
	jsr (sub_201a60).l
loc_204226:
	move.b #$0,($ff1520).l
loc_20422e:
	rts

sub_204230:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20424a:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204256
loc_204254:
	rts
loc_204256:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204268
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204254
loc_204268:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2042ac
	bset.b #$6,$22(a0)
	bne.s loc_204254
	bsr.w sub_205f02
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204254
	bra.s loc_2042e4
loc_2042ac:
	tst.w $12(a0)
	beq.s loc_2042b4
	bpl.s loc_204254
loc_2042b4:
	bclr.b #$6,$22(a0)
	beq.s loc_204254
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204254
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2042e4
	move.w #$f000,$12(a0)
loc_2042e4:
	jsr (sub_207a7c).l
	bne.s loc_2042f8
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2042f8:
	rts

sub_2042fa:
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
	bcs.s loc_2043d4
	move.l #$50000,d0
loc_2043d4:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2043e6:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20440c
	tst.b ($ff152e).l
	beq.s loc_204402
	cmpi.b #$2,($ff152e).l
	bne.s loc_20440c
loc_204402:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2044bc
loc_20440c:
	tst.b $2a(a0)
	bne.w loc_2044ca
	tst.b ($f784).w
	beq.w loc_2044ca
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20442a
	neg.w d0
loc_20442a:
	tst.w ($f786).w
	bne.s loc_204436
	move.w #$1,($f786).w
loc_204436:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20444c
	move.b #$1,($ff1502).l
	bra.w loc_205bfa
loc_20444c:
	cmpi.w #$d2,d1
	bcs.s loc_2044a0
	cmpi.b #$2,($ff1522).l
	beq.s loc_20449e
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204476
	move.w #$82,d0
	jsr (sub_205bfe).l
	moveq #$0,d0
loc_204476:
	add.b ($f784).w,d0
	bpl.s loc_204480
	moveq #$0,d0
	bra.s loc_204488
loc_204480:
	cmpi.b #$3,d0
	bcs.s loc_204488
	moveq #$2,d0
loc_204488:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2042fa
	move.b #$2,($ff1522).l
loc_20449e:
	rts
loc_2044a0:
	cmpi.w #$5a,d1
	bcc.s loc_2044b8
	cmp.w d2,d0
	bcc.w loc_203f32
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2044b8:
	cmp.w d2,d0
	bcc.s loc_2044ca
loc_2044bc:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2044ca:
	rts
	bsr.w sub_203e6c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2044fc
	tst.b ($ff195b).l
	beq.s loc_2044ea
	cmpi.b #$79,$1a(a0)
	bne.s loc_204526
	bra.s loc_2044f2
loc_2044ea:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204526
loc_2044f2:
	bsr.w sub_204d8e
	jmp (sub_20397c).l
loc_2044fc:
	bsr.w sub_2045d4
	bsr.w sub_2043e6
	bsr.w sub_204e78
	bsr.w sub_204fa4
	bsr.w sub_204648
	bsr.w sub_204dfa
	bsr.w sub_204d8e
	jsr (sub_2039de).l
	bsr.w sub_200b70
	bsr.w sub_205022
loc_204526:
	rts
	tst.b ($f7c7).w
	bne.s loc_204542
	cmpi.b #$15,$1c(a0)
	beq.s loc_204542
	tst.w $12(a0)
	bmi.s loc_204542
	move.b #$0,$1c(a0)
loc_204542:
	bsr.w sub_2045d4
	bsr.w sub_2043e6
	bsr.w sub_204f62
	bsr.w sub_204cae
	bsr.w sub_204d8e
	jsr (sub_20397c).l
	btst.b #$6,$22(a0)
	beq.s loc_20456a
	subi.w #$28,$12(a0)
loc_20456a:
	bsr.w sub_20506c
	bsr.w sub_205090
	rts
	bsr.w sub_2045d4
	bsr.w sub_2043e6
	bsr.w sub_204e78
	bsr.w sub_204fe0
	bsr.w sub_204ae8
	bsr.w sub_204d8e
	tst.b $2a(a0)
	bne.s loc_204598
	jsr (sub_2039de).l
loc_204598:
	bsr.w sub_200b70
	bsr.w sub_205022
	rts
	bsr.w sub_2045d4
	bsr.w sub_2043e6
	bsr.w sub_204f62
	bsr.w sub_204cae
	bsr.w sub_204d8e
	jsr (sub_20397c).l
	btst.b #$6,$22(a0)
	beq.s loc_2045ca
	subi.w #$28,$12(a0)
loc_2045ca:
	bsr.w sub_20506c
	bsr.w sub_205090
	rts

sub_2045d4:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204640
	tst.w ($ff1506).l
	bne.s loc_204640
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204642).l,a2
loc_204608:
	move.b (a2)+,d0
	bmi.s loc_204618
	cmp.b d0,d1
	bne.s loc_204608
	bset.b #$1,$2c(a0)
	rts
loc_204618:
	bclr.b #$1,$2c(a0)
	beq.s loc_204640
	tst.w $12(a0)
	bpl.s loc_204640
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204640
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204640
	neg.w $10(a0)
loc_204640:
	rts
dat_204642:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204648:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204972
	tst.w $3e(a0)
	bne.w loc_204922
	btst.b #$2,($f602).w
	beq.s loc_204670
	bsr.w sub_204a02
loc_204670:
	btst.b #$3,($f602).w
	beq.s loc_20467c
	bsr.w sub_204a78
loc_20467c:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204922
	tst.w $14(a0)
	beq.s loc_20469c
	tst.b $2a(a0)
	beq.w loc_204922
	bra.s loc_2046a8
loc_20469c:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2046a8:
	btst.b #$3,$22(a0)
	beq.s loc_2046fa
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204752
	cmpi.b #$1e,$0(a1)
	bne.s loc_2046da
	move.b #$0,$1c(a0)
	bra.w loc_204922
loc_2046da:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204736
	cmp.w d2,d1
	bge.s loc_204724
	bra.s loc_204752
loc_2046fa:
	jsr (sub_206eaa).l
	cmpi.w #$c,d1
	blt.s loc_204752
	move.w #$ab,d0
	jsr (sub_20226c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20472e
loc_204724:
	btst.b #$0,$22(a0)
	bne.s loc_20473e
	bra.s loc_204748
loc_20472e:
	cmpi.b #$3,$37(a0)
	bne.s loc_204752
loc_204736:
	btst.b #$0,$22(a0)
	bne.s loc_204748
loc_20473e:
	move.b #$32,$1c(a0)
	bra.w loc_204922
loc_204748:
	move.b #$6,$1c(a0)
	bra.w loc_204922
loc_204752:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204766
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204766:
	btst.b #$7,($f788).w
	bne.w loc_20486a
	btst.b #$6,($f788).w
	bne.w loc_20488a
	btst.b #$1,($f602).w
	bne.w loc_20488a
	andi.b #$f,($f788).w
	beq.s loc_20479e
	btst.b #$0,($f603).w
	beq.s loc_2047b2
	bset.b #$7,($f788).w
	bra.w loc_204946
loc_20479e:
	btst.b #$0,($f603).w
	beq.w loc_2047b2
	move.b #$1,($f788).w
	bra.w loc_204946
loc_2047b2:
	btst.b #$0,($f602).w
	beq.s loc_20482e
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204810
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2047e2
	asr.w #$1,d2
	sub.w d2,d1
loc_2047e2:
	btst.b #$0,$22(a0)
	beq.s loc_2047ee
	neg.w d0
	neg.w d1
loc_2047ee:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204804
	cmp.w d0,d1
	ble.s loc_20480a
	bra.s loc_204808
loc_204804:
	cmp.w d1,d0
	ble.s loc_20480a
loc_204808:
	move.w d1,d0
loc_20480a:
	move.w d0,$14(a0)
	rts
loc_204810:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20482a
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20226c).l
loc_20482a:
	bra.w loc_204946
loc_20482e:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20484e
	move.w #$ab,d0
	jsr (sub_20226c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_20488a
loc_20484e:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226c).l
	bra.w loc_204922
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20486a:
	btst.b #$0,($f602).w
	beq.s loc_20488a
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204946
	addq.w #$2,($f73e).w
	bra.w loc_204946
loc_20488a:
	btst.b #$6,($f788).w
	bne.w loc_204906
	andi.b #$f,($f788).w
	beq.s loc_2048ae
	btst.b #$1,($f603).w
	beq.s loc_2048c0
	bset.b #$6,($f788).w
	bra.w loc_204946
loc_2048ae:
	btst.b #$1,($f603).w
	beq.s loc_2048c0
	move.b #$1,($f788).w
	bra.w loc_204946
loc_2048c0:
	btst.b #$1,($f602).w
	beq.s loc_204922
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204904
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204904
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2048f6
	neg.w $14(a0)
loc_2048f6:
	move.w #$9c,d0
	jsr (sub_20226c).l
	bsr.w sub_204e22
loc_204904:
	bra.s loc_204946
loc_204906:
	btst.b #$1,($f602).w
	beq.s loc_204922
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204946
	subq.w #$2,($f73e).w
	bra.s loc_204946
loc_204922:
	cmpi.w #$60,($f73e).w
	bne.s loc_20493c
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204946
	move.b #$0,($f788).w
	bra.s loc_204946
loc_20493c:
	bcc.s loc_204942
	addq.w #$4,($f73e).w
loc_204942:
	subq.w #$2,($f73e).w
loc_204946:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204972
	move.w $14(a0),d0
	beq.s loc_204972
	bmi.s loc_204966
	sub.w d5,d0
	bcc.s loc_204960
	move.w #$0,d0
loc_204960:
	move.w d0,$14(a0)
	bra.s loc_204972
loc_204966:
	add.w d5,d0
	bcc.s loc_20496e
	move.w #$0,d0
loc_20496e:
	move.w d0,$14(a0)
loc_204972:
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204990:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204a00
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204a00
	bmi.s loc_2049a8
	neg.w d1
loc_2049a8:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206d6a
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204a00
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2049fc
	cmpi.b #$40,d0
	beq.s loc_2049ea
	cmpi.b #$80,d0
	beq.s loc_2049e4
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2049e4:
	sub.w d1,$12(a0)
	rts
loc_2049ea:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2049fc:
	add.w d1,$12(a0)
loc_204a00:
	rts

sub_204a02:
	tst.b $2a(a0)
	bne.s loc_204a76
	move.w $14(a0),d0
	beq.s loc_204a10
	bpl.s loc_204a40
loc_204a10:
	bset.b #$0,$22(a0)
	bne.s loc_204a24
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a24:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204a34
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204a34
	move.w d1,d0
loc_204a34:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a40:
	sub.w d4,d0
	bcc.s loc_204a48
	move.w #$ff80,d0
loc_204a48:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a76
	cmpi.w #$400,d0
	blt.s loc_204a76
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226c).l
loc_204a76:
	rts

sub_204a78:
	tst.b $2a(a0)
	bne.s loc_204ae6
	move.w $14(a0),d0
	bmi.s loc_204ab0
	bclr.b #$0,$22(a0)
	beq.s loc_204a98
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a98:
	cmp.w d6,d0
	bge.s loc_204aa4
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204aa4
	move.w d6,d0
loc_204aa4:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204ab0:
	add.w d4,d0
	bcc.s loc_204ab8
	move.w #$80,d0
loc_204ab8:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204ae6
	cmpi.w #$fc00,d0
	bgt.s loc_204ae6
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226c).l
loc_204ae6:
	rts

sub_204ae8:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204c32
	tst.w $3e(a0)
	bne.s loc_204b20
	btst.b #$2,($f602).w
	beq.s loc_204b14
	bsr.w sub_204c68
loc_204b14:
	btst.b #$3,($f602).w
	beq.s loc_204b20
	bsr.w sub_204c8c
loc_204b20:
	tst.b $2a(a0)
	beq.w loc_204bca
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204b40
	asr.w #$1,d2
	sub.w d2,d1
loc_204b40:
	btst.b #$0,$22(a0)
	beq.s loc_204b4c
	neg.w d0
	neg.w d1
loc_204b4c:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204b62
	cmp.w d0,d1
	ble.s loc_204b68
	bra.s loc_204b66
loc_204b62:
	cmp.w d1,d0
	ble.s loc_204b68
loc_204b66:
	move.w d1,d0
loc_204b68:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204b9c
	rts
loc_204b76:
	move.w #$ab,d0
	jsr (sub_20226c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204bfc
loc_204b9c:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204b76
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226c).l
	btst.b #$0,$22(a0)
	bne.s loc_204bc2
	bsr.w sub_204c8c
	bra.s loc_204bca
loc_204bc2:
	bsr.w sub_204c68
	bra.s loc_204bca
	dc.b $4e,$75
loc_204bca:
	move.w $14(a0),d0
	beq.s loc_204bec
	bmi.s loc_204be0
	sub.w d5,d0
	bcc.s loc_204bda
	move.w #$0,d0
loc_204bda:
	move.w d0,$14(a0)
	bra.s loc_204bec
loc_204be0:
	add.w d5,d0
	bcc.s loc_204be8
	move.w #$0,d0
loc_204be8:
	move.w d0,$14(a0)
loc_204bec:
	tst.w $14(a0)
	bne.s loc_204c32
	move.w #$ab,d0
	jsr (sub_20226c).l
loc_204bfc:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c1c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204c2c
loc_204c1c:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204c2c:
	move.b #$5,$1c(a0)
loc_204c32:
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204c56
	move.w #$1000,d1
loc_204c56:
	cmpi.w #$f000,d1
	bge.s loc_204c60
	move.w #$f000,d1
loc_204c60:
	move.w d1,$10(a0)
	bra.w loc_204990

sub_204c68:
	move.w $14(a0),d0
	beq.s loc_204c70
	bpl.s loc_204c7e
loc_204c70:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204c7e:
	sub.w d4,d0
	bcc.s loc_204c86
	move.w #$ff80,d0
loc_204c86:
	move.w d0,$14(a0)
	rts

sub_204c8c:
	move.w $14(a0),d0
	bmi.s loc_204ca0
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ca0:
	add.w d4,d0
	bcc.s loc_204ca8
	move.w #$80,d0
loc_204ca8:
	move.w d0,$14(a0)
	rts

sub_204cae:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204ce8
	tst.w ($ff1506).l
	bne.s loc_204ce8
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204ce0
	cmpi.w #$840,$8(a0)
	bcc.s loc_204ce0
	rts
loc_204ce0:
	btst.b #$1,$2c(a0)
	bne.s loc_204d18
loc_204ce8:
	btst.b #$2,($f602).w
	beq.s loc_204d02
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204d02
	move.w d1,d0
loc_204d02:
	btst.b #$3,($f602).w
	beq.s loc_204d18
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d18
	move.w d6,d0
loc_204d18:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204d2e
	bcc.s loc_204d2a
	addq.w #$4,($f73e).w
loc_204d2a:
	subq.w #$2,($f73e).w
loc_204d2e:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204d5c
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204d5c
	bmi.s loc_204d50
	sub.w d1,d0
	bcc.s loc_204d4a
	move.w #$0,d0
loc_204d4a:
	move.w d0,$10(a0)
	rts
loc_204d50:
	sub.w d1,d0
	bcs.s loc_204d58
	move.w #$0,d0
loc_204d58:
	move.w d0,$10(a0)
loc_204d5c:
	rts
	.incbin 19806, 48

sub_204d8e:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204de2
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204dbc
	addi.w #$38,d0
loc_204dbc:
	cmp.w d1,d0
	bls.s loc_204de2
loc_204dc0:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204dd0
	rts
loc_204dd0:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2073e0
	move.b #$6,$24(a0)
	rts
loc_204de2:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204dc0

sub_204dfa:
	tst.b ($f7ca).w
	bne.s loc_204e20
	move.w $14(a0),d0
	bpl.s loc_204e08
	neg.w d0
loc_204e08:
	cmpi.w #$80,d0
	bcs.s loc_204e20
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204e20
	btst.b #$1,($f602).w
	bne.s sub_204e22
loc_204e20:
	rts

sub_204e22:
	btst.b #$2,$22(a0)
	beq.s loc_204e2c
	bra.s loc_204e5c
loc_204e2c:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e4c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e5c
loc_204e4c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e5c:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204e76
	cmpi.w #$200,$14(a0)
	bcc.s loc_204e76
	move.w #$200,$14(a0)
loc_204e76:
	rts

sub_204e78:
	tst.b $2a(a0)
	beq.s loc_204e80
	rts
loc_204e80:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204e92
	tst.w $14(a0)
	beq.w loc_204f58
loc_204e92:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204f58
	btst.b #$3,$22(a0)
	beq.s loc_204eae
	jsr (sub_205b84).l
	beq.s loc_204ede
loc_204eae:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206dd4
	cmpi.w #$6,d1
	blt.w loc_204f58
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204ed4
	move.w #$380,d2
loc_204ed4:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204ede:
	jsr (sub_200770).l
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
	jsr (sub_20226c).l
	btst.b #$2,$22(a0)
	bne.s loc_204f5a
	tst.b ($ff195b).l
	beq.s loc_204f3c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f4c
loc_204f3c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f4c:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204f58:
	rts
loc_204f5a:
	bset.b #$4,$22(a0)
	rts

sub_204f62:
	tst.b $3c(a0)
	beq.s loc_204f94
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204f78
	move.w #$fe00,d1
loc_204f78:
	cmp.w $12(a0),d1
	ble.s loc_204f92
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204f92
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204f92:
	rts
loc_204f94:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204fa2
	move.w #$f040,$12(a0)
loc_204fa2:
	rts

sub_204fa4:
	tst.b $2a(a0)
	bne.s loc_204fde
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204fde
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204fde
	bmi.s loc_204fda
	tst.w d0
	beq.s loc_204fd8
	add.w d0,$14(a0)
loc_204fd8:
	rts
loc_204fda:
	add.w d0,$14(a0)
loc_204fde:
	rts

sub_204fe0:
	tst.b $2a(a0)
	bne.s loc_205020
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205020
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_205016
	tst.w d0
	bpl.s loc_205010
	asr.l #$2,d0
loc_205010:
	add.w d0,$14(a0)
	rts
loc_205016:
	tst.w d0
	bmi.s loc_20501c
	asr.l #$2,d0
loc_20501c:
	add.w d0,$14(a0)
loc_205020:
	rts

sub_205022:
	nop
	tst.b $38(a0)
	bne.s loc_205064
	tst.w $3e(a0)
	bne.s loc_205066
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205064
	move.w $14(a0),d0
	bpl.s loc_205046
	neg.w d0
loc_205046:
	cmpi.w #$280,d0
	bcc.s loc_205064
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205064:
	rts
loc_205066:
	subq.w #$1,$3e(a0)
	rts

sub_20506c:
	btst.b #$1,$2c(a0)
	bne.s loc_20508e
	move.b $26(a0),d0
	beq.s loc_20508e
	bpl.s loc_205084
	addq.b #$2,d0
	bcc.s loc_205082
	moveq #$0,d0
loc_205082:
	bra.s loc_20508a
loc_205084:
	subq.b #$2,d0
	bcc.s loc_20508a
	moveq #$0,d0
loc_20508a:
	move.b d0,$26(a0)
loc_20508e:
	rts

sub_205090:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a08).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205174
	cmpi.b #$80,d0
	beq.w loc_2051d6
	cmpi.b #$c0,d0
	beq.w loc_205232
	bsr.w sub_2070ea
	tst.w d1
	bpl.s loc_2050e2
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050e2:
	bsr.w sub_206f4c
	tst.w d1
	bpl.s loc_2050f4
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050f4:
	bsr.w sub_206dfc
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205172
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205112
	cmp.b d2,d0
	blt.s loc_205172
loc_205112:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205294
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205150
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205142
	asr.w $12(a0)
	bra.s loc_205164
loc_205142:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205150:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205164
	move.w #$fc0,$12(a0)
loc_205164:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205172
	neg.w $14(a0)
loc_205172:
	rts
loc_205174:
	bsr.w sub_2070ea
	tst.w d1
	bpl.s loc_20518e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20518e:
	bsr.w sub_206fa4
	tst.w d1
	bpl.s loc_2051a8
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2051a6
	move.w #$0,$12(a0)
loc_2051a6:
	rts
loc_2051a8:
	tst.w $12(a0)
	bmi.s loc_2051d4
	bsr.w sub_206dfc
	tst.w d1
	bpl.s loc_2051d4
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205294
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2051d4:
	rts
loc_2051d6:
	bsr.w sub_2070ea
	tst.w d1
	bpl.s loc_2051e8
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051e8:
	bsr.w sub_206f4c
	tst.w d1
	bpl.s loc_2051fa
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051fa:
	bsr.w sub_206fa4
	tst.w d1
	bpl.s loc_205230
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20521a
	move.w #$0,$12(a0)
	rts
loc_20521a:
	move.b d3,$26(a0)
	bsr.w sub_205306
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205230
	neg.w $14(a0)
loc_205230:
	rts
loc_205232:
	bsr.w sub_206f4c
	tst.w d1
	bpl.s loc_20524c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20524c:
	bsr.w sub_206fa4
	tst.w d1
	bpl.s loc_205266
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205264
	move.w #$0,$12(a0)
loc_205264:
	rts
loc_205266:
	tst.w $12(a0)
	bmi.s loc_205292
	bsr.w sub_206dfc
	tst.w d1
	bpl.s loc_205292
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205294
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205292:
	rts

sub_205294:
	btst.b #$4,$22(a0)
	beq.s loc_20529e
	nop
loc_20529e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2052f8
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2052d8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2052e8
loc_2052d8:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2052e8:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20226c).l
loc_2052f8:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205306:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2039de).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205340
	subi.w #$20,$12(a0)
loc_205340:
	jsr (sub_2066b6).l
	bsr.w sub_20535c
	bsr.w sub_204d8e
	bsr.w sub_204230
	bsr.w sub_2055ee
	jmp (sub_203a34).l

sub_20535c:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_2073e0
	bsr.w sub_205090
	btst.b #$1,$22(a0)
	bne.s loc_205396
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_205396:
	rts
	.incbin 21400, 268

sub_2054a4:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2054cc
	cmpi.b #$5,($ff1506).l
	beq.s loc_2054cc
	cmpi.b #$2,($ff1506).l
	beq.s loc_2054cc
	tst.b ($ff1506).l
	bne.w loc_20558e
loc_2054cc:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20550a
	tst.b ($ff1506).l
	bne.w loc_205590
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205590
	bra.s loc_205512
loc_20550a:
	cmp.b ($f7af).w,d1
	beq.w loc_205590
loc_205512:
	cmp.b ($f7ac).w,d1
	beq.s loc_205542
	cmp.b ($f7ad).w,d1
	beq.s loc_205526
	bclr.b #$6,$1(a0)
	rts
loc_205526:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2055a8
	btst.b #$1,$22(a0)
	beq.s loc_205542
	bclr.b #$6,$1(a0)
	rts
loc_205542:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205554
	bclr.b #$6,$1(a0)
	rts
loc_205554:
	cmpi.b #$e0,d2
	bcs.s loc_205562
	bset.b #$6,$1(a0)
	rts
loc_205562:
	btst.b #$6,$1(a0)
	bne.s loc_20557e
	move.b $26(a0),d1
	beq.s loc_20558e
	cmpi.b #$80,d1
	bhi.s loc_20558e
	bset.b #$6,$1(a0)
	rts
loc_20557e:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20558e
	bclr.b #$6,$1(a0)
loc_20558e:
	rts
loc_205590:
	btst.b #$2,$22(a0)
	bne.s loc_2055a2
	move.w #$9c,d0
	jsr (sub_20226c).l
loc_2055a2:
	jmp (sub_204e22).l
loc_2055a8:
	tst.w $12(a0)
	bmi.s loc_2055ec
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2055e0
	cmpi.w #$38,d1
	bcs.s loc_2055d8
	cmpi.w #$80,d1
	bcs.s loc_2055ec
loc_2055d0:
	bclr.b #$6,$1(a0)
	rts
loc_2055d8:
	bset.b #$6,$1(a0)
	rts
loc_2055e0:
	cmpi.w #$38,d1
	bcs.s loc_2055d0
	cmpi.w #$80,d1
	bcc.s loc_2055d8
loc_2055ec:
	rts

sub_2055ee:
	lea (dat_2058de).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205610
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205610:
	bsr.w sub_205880
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205688
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205656
	move.b d0,$1e(a0)

sub_20563a:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20564e
	bpl.s loc_20564e
	cmpi.b #$fd,d0
	bge.s loc_205658
loc_20564e:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205656:
	rts
loc_205658:
	addq.b #$1,d0
	bne.s loc_205668
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20564e
loc_205668:
	addq.b #$1,d0
	bne.s loc_20567c
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20564e
loc_20567c:
	addq.b #$1,d0
	bne.s loc_205686
	move.b $2(a1,d1.w),$1c(a0)
loc_205686:
	rts
loc_205688:
	subq.b #$1,$1e(a0)
	bpl.s loc_205656
	addq.b #$1,d0
	bne.w loc_205742
	tst.b ($ff195b).l
	bne.w loc_20580a
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056b0
	not.b d0
loc_2056b0:
	btst.b #$1,$2c(a0)
	bne.s loc_2056be
	addi.b #$10,d0
	bra.s loc_2056c0
loc_2056be:
	addq.b #$8,d0
loc_2056c0:
	bpl.s loc_2056c4
	moveq #$3,d1
loc_2056c4:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2057b6
	move.w $14(a0),d2
	bpl.s loc_2056e2
	neg.w d2
loc_2056e2:
	btst.b #$1,$2c(a0)
	beq.s loc_2056fa
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205ae0).l,a1
	bra.s loc_205724
loc_2056fa:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205aba).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205724
	lea (dat_20595e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205724
	lea (dat_205956).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205724:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205732
	moveq #$0,d2
loc_205732:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20563a
	add.b d3,$1a(a0)
	rts
loc_205742:
	addq.b #$1,d0
	bne.s loc_2057b2
	move.w $14(a0),d2
	bpl.s loc_20574e
	neg.w d2
loc_20574e:
	lea (dat_205a3c).l,a1
	tst.b ($ff195b).l
	bne.s loc_20578c
	lea (dat_20596e).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205780
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20578c
	lea (dat_205ae8).l,a1
	bra.s loc_20578c
loc_205780:
	cmpi.w #$600,d2
	bcc.s loc_20578c
	lea (dat_205966).l,a1
loc_20578c:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205796
	moveq #$0,d2
loc_205796:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20563a
loc_2057b2:
	addq.b #$1,d0
	bne.s loc_2057f6
loc_2057b6:
	move.w $14(a0),d2
	bmi.s loc_2057be
	neg.w d2
loc_2057be:
	addi.w #$800,d2
	bpl.s loc_2057c6
	moveq #$0,d2
loc_2057c6:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205a4e).l,a1
	tst.b ($ff195b).l
	bne.s loc_2057e0
	lea (dat_205976).l,a1
loc_2057e0:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20563a
loc_2057f6:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20580a:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20581c
	not.b d0
loc_20581c:
	addi.b #$10,d0
	bpl.s loc_205824
	moveq #$0,d1
loc_205824:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205852
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205742
loc_205852:
	move.w $14(a0),d2
	bpl.s loc_20585a
	neg.w d2
loc_20585a:
	lea (dat_205a36).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20586c
	lea (dat_205a30).l,a1
loc_20586c:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205876
	moveq #$0,d2
loc_205876:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20563a

sub_205880:
	tst.b ($ff195b).l
	beq.s loc_20588c
	move.b dat_20588e(pc,d0.w),d0
loc_20588c:
	rts
dat_20588e:
	.incbin 22670, 80
dat_2058de:
	.incbin 22750, 120
dat_205956:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20595e:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205966:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20596e:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205976:
	.incbin 22902, 186
dat_205a30:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205a36:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205a3c:
	.incbin 23100, 18
dat_205a4e:
	.incbin 23118, 108
dat_205aba:
	.incbin 23226, 38
dat_205ae0:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205ae8:
	.incbin 23272, 56

sub_205b20:
	tst.b (a0)
	beq.w loc_205b82
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205b82
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205b82
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205b54:
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
loc_205b6e:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205b6e
	dbf d1,loc_205b54
loc_205b82:
	rts

sub_205b84:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205bf8
	move.w #$98,d0
	jsr (sub_20226c).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a08).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205be6
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205be6:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205bf8:
	rts
loc_205bfa:
	move.w #$e,d0

sub_205bfe:
	cmpi.w #$67,d0
	bne.s loc_205c0c
	move.b #$1,($ff1958).l
loc_205c0c:
	move.w d0,($a12010).l
loc_205c12:
	move.w ($a12020).l,d0
	beq.s loc_205c12
	cmp.w ($a12020).l,d0
	bne.s loc_205c12
	move.w #$0,($a12010).l
loc_205c2a:
	move.w ($a12020).l,d0
	bne.s loc_205c2a
	move.w ($a12020).l,d0
	bne.s loc_205c2a
	rts
	dc.b $00,$00

sub_205c3e:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205c5a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205c5a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205c9a
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205c9c
loc_205c76:
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
loc_205c9a:
	rts
loc_205c9c:
	addq.b #$1,d0
	bne.s loc_205cac
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205c76
loc_205cac:
	addq.b #$1,d0
	bne.s loc_205cc0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205c76
loc_205cc0:
	addq.b #$1,d0
	bne.s loc_205cca
	move.b $2(a1,d1.w),$1c(a0)
loc_205cca:
	addq.b #$1,d0
	bne.s loc_205cd2
	addq.b #$2,$24(a0)
loc_205cd2:
	addq.b #$1,d0
	bne.s loc_205ce0
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205ce0:
	addq.b #$1,d0
	bne.s loc_205ce8
	addq.b #$2,$25(a0)
loc_205ce8:
	rts
	.incbin 23786, 536

sub_205f02:
	rts
	.incbin 24324, 130

sub_205f86:
	ori.b #$80,d1
	jsr (sub_207a7c).l
	bne.s loc_205fa8
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205fa8:
	rts
	.incbin 24490, 746
dat_206294:
	.incbin 25236, 166
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206348(pc,d0.w),d1
	jmp dat_206348(pc,d1.w)
dat_206348:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23d2f6,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_20638a
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_20638a
	addq.b #$2,$24(a0)
loc_20638a:
	rts
	.incbin 25484, 120
	tst.b ($ff1521).l
	bne.s loc_206412
	jmp (sub_203ae0).l
loc_206412:
	cmpi.b #$6,($ff1506).l
	bne.s loc_206430
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_206430
	andi.b #$7f,$2(a0)
loc_206430:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_206442
	subq.b #$4,d1
loc_206442:
	lsl.b #$3,d1
	move.b d1,d2
	add.b d1,d1
	add.b d2,d1
	addq.b #$4,d1
	sub.b d1,d0
	move.b $30(a0),d1
	sub.b d1,d0
	addq.b #$4,d1
	cmpi.b #$18,d1
	bcs.s loc_20645e
	moveq #$0,d1
loc_20645e:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23d1ce).l,a1
	jsr (sub_205c3e).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_206496
	rts
loc_206496:
	cmp.b $24(a0),d0
	beq.s loc_2064ac
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2064ac:
	jmp (sub_203a34).l

sub_2064b2:
	bclr.b #$7,($ff156b).l
	beq.s loc_206500
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206502(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2064d6:
	move.l (a1)+,(a2)+
	dbf d0,loc_2064d6
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206500:
	rts
dat_206502:
	.incbin 25858, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206538(pc,d0.w),d0
	jsr dat_206538(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_206532
	jsr (sub_203a34).l
loc_206532:
	jmp (loc_207ab2).l
dat_206538:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23d2f6,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20661a
	cmpi.b #$6,$24(a1)
	bcc.w loc_20661a
	bsr.w sub_20667e
	beq.w loc_20661a
	tst.b $28(a0)
	bne.s loc_2065cc
	move.w $10(a1),d0
	bpl.s loc_20658c
	neg.w d0
loc_20658c:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_20659e
	move.w #$d00,d1
loc_20659e:
	cmp.w d1,d0
	bcc.s loc_2065a4
	move.w d1,d0
loc_2065a4:
	tst.w $10(a1)
	bpl.s loc_2065ac
	neg.w d0
loc_2065ac:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2065fc
	neg.w $14(a1)
	bra.s loc_2065fc
loc_2065cc:
	cmpi.b #$2,$28(a0)
	bcc.s loc_20661c
	move.w $12(a1),d0
	bpl.s loc_2065dc
	neg.w d0
loc_2065dc:
	cmpi.w #$d00,d0
	bcc.s loc_2065e6
	move.w #$d00,d0
loc_2065e6:
	tst.w $12(a1)
	bpl.s loc_2065ee
	neg.w d0
loc_2065ee:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_2065fc:
	bset.b #$2,$22(a1)
	bne.s loc_20661a
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_20661a:
	rts
loc_20661c:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206668
	cmpi.b #$2,$28(a0)
	bne.s loc_206638
	tst.w $12(a1)
	bpl.s loc_2065fc
	bra.s loc_20663e
loc_206638:
	tst.w $12(a1)
	bmi.s loc_2065fc
loc_20663e:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206650
	btst.l #$2,d1
	beq.s loc_2065fc
	neg.w d0
loc_206650:
	cmpi.b #$2,$28(a0)
	beq.s loc_20665e
	bset.b #$1,$22(a1)
loc_20665e:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2065fc
loc_206668:
	tst.w $10(a1)
	bmi.s loc_2065fc
	btst.l #$0,d1
	beq.w loc_2065fc
	move.w #$f600,d0
	bra.w loc_2065ee

sub_20667e:
	tst.b ($ff1906).l
	bne.s loc_2066b2
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066b2
	cmpi.w #$50,d0
	bcc.s loc_2066b2
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066b2
	cmpi.w #$50,d0
	bcc.s loc_2066b2
	moveq #$1,d0
	rts
loc_2066b2:
	moveq #$0,d0
	rts

sub_2066b6:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2066c0
	bsr.s sub_2066c2
loc_2066c0:
	rts

sub_2066c2:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a08).l
	subi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2067a6
	cmpi.b #$80,d0
	beq.w loc_20672c
	cmpi.b #$c0,d0
	beq.w loc_206768
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_2067e4
	bne.s loc_20672a
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_2067e4
loc_20672a:
	rts
loc_20672c:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_2067e4
	bne.s loc_206766
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_2067e4
loc_206766:
	rts
loc_206768:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_2067e4
	bne.s loc_2067a4
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_2067e4
loc_2067a4:
	rts
loc_2067a6:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_2067e4
	bne.s loc_2067e2
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_2067e4
loc_2067e2:
	rts

sub_2067e4:
	jsr (sub_200ede).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_206828
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_20680c
	add.b ($ff156a).l,d1
loc_20680c:
	add.w d1,d1
	move.w dat_20682c(pc,d1.w),d1
	lea dat_20682c(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_20681c:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2068a0
	addq.w #$2,d1
	dbf d6,loc_20681c
loc_206828:
	moveq #$0,d0
	rts
dat_20682c:
	.incbin 26668, 116
loc_2068a0:
	cmpi.b #$4,$24(a0)
	bne.s loc_2068b2
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2068b2:
	move.b #$0,($ff1950).l
	move.l d1,-(a7)
	move.w dat_2068f6(pc,d1.w),d0
	jsr dat_2068f6(pc,d0.w)
	move.l (a7)+,d1
	cmpi.w #$3,d1
	bcs.s loc_2068e6
	move.w #$be,d0
	cmpi.b #$4,d1
	beq.s loc_2068e0
	cmpi.b #$6,d1
	beq.s loc_2068e0
	move.w #$b5,d0
loc_2068e0:
	jsr (sub_20226c).l
loc_2068e6:
	tst.b ($ff1950).l
	beq.s loc_2068f2
	moveq #$0,d0
	rts
loc_2068f2:
	moveq #$1,d0
	rts
dat_2068f6:
	.incbin 26870, 32
	andi.w #$fff0,d2
	tst.b d1
	bne.s loc_206922
	addi.w #$10,d2
loc_206922:
	andi.w #$fff0,d3
	btst.l #$b,d4
	bne.s loc_206930
	addi.w #$10,d3
loc_206930:
	move.w d3,d1
	movem.l d1-d2,-(a7)
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a08).l
	jsr (sub_200770).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	movem.l (a7)+,d1-d2
	move.w d2,d4
	move.w d1,d5
	jsr (sub_207a7c).l
	bne.s loc_206992
	move.b #$29,$0(a1)
	move.w d5,$8(a1)
	move.w d4,$c(a1)
loc_206992:
	move.w #$0,d3
	jsr (sub_203370).l
	subi.w #$10,d5
	jsr (sub_203370).l
	subi.w #$10,d4
	jsr (sub_203370).l
	addi.w #$10,d5
	jsr (sub_203370).l
	move.w #$92,d0
	jsr (sub_205bfe).l
	rts
	.incbin 27078, 58
loc_206a00:
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	rts
loc_206a18:
	move.w #$700,d0
	tst.w $12(a0)
	bmi.s loc_206a24
	neg.w d0
loc_206a24:
	move.w d0,$12(a0)
	bra.s loc_206a00
	.incbin 27178, 18
loc_206a3c:
	andi.w #$fff0,d2
	addq.w #$8,d2
	andi.w #$fff0,d3
	addq.w #$8,d3
	move.w d3,d1
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a08).l
	jsr (sub_200770).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	bra.s loc_206a00
	.incbin 27252, 232
	move.w d3,d1
	andi.w #$f,d1
	cmpi.b #$8,d1
	bcc.s loc_206b74
	btst.l #$b,d4
	bne.w loc_206a18
	bra.w loc_206a3c
loc_206b74:
	btst.l #$b,d4
	bne.w loc_206a3c
	bra.w loc_206a18
	.incbin 27520, 36
loc_206ba4:
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
	bne.s loc_206c5e
	move.b ($ff1593).l,($ff195b).l
loc_206c5e:
	tst.b ($ff1522).l
	bpl.s loc_206c74
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c74:
	rts

sub_206c76:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206ba4
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
	bne.s loc_206d30
	move.b ($ff1591).l,($ff195b).l
loc_206d30:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206d52
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206d52:
	tst.b ($ff1522).l
	bpl.s loc_206d68
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206d68:
	rts

sub_206d6a:
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
	bpl.s loc_206da6
	move.b d1,d0
	bpl.s loc_206da0
	subq.b #$1,d0
loc_206da0:
	addi.b #$20,d0
	bra.s loc_206db0
loc_206da6:
	move.b d1,d0
	bpl.s loc_206dac
	addq.b #$1,d0
loc_206dac:
	addi.b #$1f,d0
loc_206db0:
	andi.b #$c0,d0
	beq.w loc_206e80
	cmpi.b #$80,d0
	beq.w loc_20701c
	andi.b #$38,d1
	bne.s loc_206dc8
	addq.w #$8,d2
loc_206dc8:
	cmpi.b #$40,d0
	beq.w loc_2070f2
	bra.w loc_206f54

sub_206dd4:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_20707a
	cmpi.b #$80,d0
	beq.w sub_206fa4
	cmpi.b #$c0,d0
	beq.w loc_206ee4

sub_206dfc:
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
	jsr (sub_2010c6).l
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
	jsr (sub_2010c6).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206e60:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206e6e
	move.b ($f768).w,d3
	exg d0,d1
loc_206e6e:
	btst.l #$0,d3
	beq.s loc_206e76
	move.b d2,d3
loc_206e76:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206e80:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010c6).l
	move.b #$0,d2
loc_206e9c:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ea8
	move.b d2,d3
loc_206ea8:
	rts

sub_206eaa:
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
	jsr (sub_2010c6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ee2
	move.b #$0,d3
loc_206ee2:
	rts
loc_206ee4:
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
	jsr (sub_201236).l
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
	jsr (sub_201236).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206e60

sub_206f4c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f54:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201236).l
	move.b #$c0,d2
	bra.w loc_206e9c
	.incbin 28532, 48

sub_206fa4:
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
	jsr (sub_2010c6).l
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
	jsr (sub_2010c6).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206e60

sub_207014:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20701c:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010c6).l
	move.b #$80,d2
	bra.w loc_206e9c
	.incbin 28736, 58
loc_20707a:
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
	jsr (sub_201236).l
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
	jsr (sub_201236).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206e60

sub_2070ea:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2070f2:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201236).l
	move.b #$40,d2
	bra.w loc_206e9c
	.incbin 28950, 48

sub_207146:
	btst.b #$6,$2c(a0)
	bne.s loc_207194
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_207172
	addi.w #$c,d3
	moveq #$a,d5
loc_207172:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_207180:
	tst.b $1(a1)
	bpl.s loc_20718c
	move.b $20(a1),d0
	bne.s loc_207198
loc_20718c:
	lea $40(a1),a1
	dbf d6,loc_207180
loc_207194:
	moveq #$0,d0
	rts
loc_207198:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20751e).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2071c0
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2071c6
	bra.w loc_20718c
loc_2071c0:
	cmp.w d4,d0
	bhi.w loc_20718c
loc_2071c6:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2071de
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2071e4
	bra.w loc_20718c
loc_2071de:
	cmp.w d5,d0
	bhi.w loc_20718c
loc_2071e4:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207258
	cmpi.b #$c0,d1
	beq.w loc_207438
	tst.b d1
	bmi.w sub_207322
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_20721c
	cmpi.w #$5a,$30(a0)
	bcc.w loc_20721a
	addq.b #$2,$24(a1)
loc_20721a:
	rts
loc_20721c:
	tst.w $12(a0)
	bpl.s loc_207246
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207256
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207256
	addq.b #$4,$25(a1)
	rts
loc_207246:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207256
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207256:
	rts

sub_207258:
	tst.b ($ff1521).l
	bne.s loc_207272
	tst.b ($ff151f).l
	bne.s loc_207272
	cmpi.b #$2,$1c(a0)
	bne.w sub_207322
loc_207272:
	tst.b $21(a1)
	beq.s loc_20729c
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_20729a
	bset.b #$7,$22(a1)
loc_20729a:
	rts
loc_20729c:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2072b4
	moveq #$6,d0
loc_2072b4:
	move.w d0,$3e(a1)
	move.w dat_207314(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2072ce
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2072ce:
	bsr.w sub_20a680
	move.w #$96,d0
	jsr (sub_20226c).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207304
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20730c
	neg.w $12(a0)
	rts
loc_207304:
	addi.w #$100,$12(a0)
	rts
loc_20730c:
	subi.w #$100,$12(a0)
	rts
dat_207314:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207322:
	tst.b ($ff1521).l
	bne.s loc_207332
	tst.b ($ff151f).l
	beq.s loc_207336
loc_207332:
	moveq #$ffffffff,d0
	rts
loc_207336:
	nop
	tst.w $30(a0)
	bne.s loc_207332
	movea.l a1,a2

sub_207340:
	tst.b ($ff151e).l
	bne.s loc_20736c
	tst.w ($ff1512).l
	beq.w loc_2073d6
	jsr (sub_207a7c).l
	bne.s loc_20736c
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20736c:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_207382
	move.b #$0,($ff156f).l
loc_207382:
	move.b #$4,$24(a0)
	bsr.w sub_205294
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2073b2
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2073b2:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2073c0
	neg.w $10(a0)
loc_2073c0:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2073d6:
	tst.w ($ff1588).l
	bne.w loc_20736c

sub_2073e0:
	tst.w ($ff1906).l
	bne.s loc_207434
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205294
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20226c).l
loc_207434:
	moveq #$ffffffff,d0
	rts
loc_207438:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$17,d1
	beq.w loc_2074c8
	cmpi.b #$1f,d1
	beq.w loc_2074c8
	cmpi.b #$23,d1
	beq.w loc_2074c8
	cmpi.b #$27,d1
	beq.w loc_2074c8
	cmpi.b #$3a,d1
	beq.w loc_207510
	cmpi.b #$3b,d1
	beq.w loc_207510
	tst.b ($f7aa).w
	beq.w loc_2074c6
	cmpi.b #$1,($f7aa).w
	beq.s loc_207490
	cmpi.b #$4,($f7aa).w
	beq.s loc_2074b2
	cmpi.b #$5,($f7aa).w
	beq.s loc_2074c0
loc_207490:
	cmpi.b #$3c,d1
	blt.s loc_2074c6
	cmpi.b #$3f,d1
	bgt.s loc_2074c6
	bsr.w sub_207258
	tst.b $20(a1)
	bne.s loc_2074aa
	addq.b #$3,$21(a1)
loc_2074aa:
	clr.b $20(a1)
	bra.w loc_2074c8
loc_2074b2:
	cmpi.b #$3f,d1
	beq.s loc_2074d4
	cmpi.b #$3e,d1
	beq.s loc_2074ce
	bra.s loc_2074c6
loc_2074c0:
	cmpi.b #$3d,d1
	beq.s loc_2074ce
loc_2074c6:
	rts
loc_2074c8:
	addq.b #$1,$21(a1)
	rts
loc_2074ce:
	bsr.w sub_207322
	bra.s loc_2074c8
loc_2074d4:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20750e
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20750e
	neg.w $10(a0)
loc_20750e:
	rts
loc_207510:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20751c
	addq.b #$1,$21(a1)
loc_20751c:
	rts
dat_20751e:
	.incbin 29982, 126
loc_20759c:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2075b2
	move.l #$4000,(dat_20772c).l
	bra.s loc_2075d2
loc_2075b2:
	addi.l #$2000,(dat_20772c).l
	cmpi.l #$80000,(dat_20772c).l
	bls.s loc_2075d2
	move.l #$80000,(dat_20772c).l
loc_2075d2:
	move.l (dat_20772c).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2075e4
	sub.l d0,$c(a0)
loc_2075e4:
	btst.b #$1,($f604).w
	beq.s loc_2075f0
	add.l d0,$c(a0)
loc_2075f0:
	btst.b #$2,($f604).w
	beq.s loc_2075fc
	sub.l d0,$8(a0)
loc_2075fc:
	btst.b #$3,($f604).w
	beq.s loc_207608
	add.l d0,$8(a0)
loc_207608:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ede).l
	move.w (a1),($ff194e).l
	lea (dat_207730).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20764a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207644
	move.b #$0,d1
loc_207644:
	move.b d1,($ff1904).l
loc_20764a:
	btst.b #$7,($f605).w
	beq.s loc_20766a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207664
	add.b (a2),d1
loc_207664:
	move.b d1,($ff1904).l
loc_20766a:
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
	beq.s loc_2076f6
	bsr.w sub_207a7c
	bne.s loc_2076f6
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
loc_2076f6:
	btst.b #$4,($f605).w
	beq.s loc_207726
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207726:
	jmp (sub_203a34).l
dat_20772c:
	dc.b $00,$00,$40,$00
dat_207730:
	.incbin 30512, 314

sub_20786a:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207878:
	clr.l (a2)+
	dbf d0,loc_207878
	rts

sub_207880:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20788e(pc,d0.w),d0
	jmp dat_20788e(pc,d0.w)
dat_20788e:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207b2e).l,a0
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
	bcc.s loc_2078cc
	moveq #$0,d6
loc_2078cc:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2078d4:
	cmp.w (a0),d6
	bls.s loc_2078e6
	tst.b $4(a0)
	bpl.s loc_2078e2
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2078e2:
	addq.w #$8,a0
	bra.s loc_2078d4
loc_2078e6:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207906
loc_2078f4:
	cmp.w (a0),d6
	bls.s loc_207906
	tst.b $4(a0)
	bpl.s loc_207902
	addq.b #$1,$1(a2)
loc_207902:
	addq.w #$8,a0
	bra.s loc_2078f4
loc_207906:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2079f0
	bge.s loc_207996
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207972
loc_207940:
	cmp.w -$8(a0),d6
	bge.s loc_207972
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207956
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207956:
	bsr.w sub_207a14
	bne.s loc_207960
	subq.w #$8,a0
	bra.s loc_207940
loc_207960:
	tst.b $4(a0)
	bpl.s loc_207970
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207970:
	addq.w #$8,a0
loc_207972:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20797e:
	cmp.w -$8(a0),d6
	bgt.s loc_207990
	tst.b -$4(a0)
	bpl.s loc_20798c
	subq.b #$1,(a2)
loc_20798c:
	subq.w #$8,a0
	bra.s loc_20797e
loc_207990:
	move.l a0,($f770).w
	rts
loc_207996:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2079aa:
	cmp.w (a0),d6
	bls.s loc_2079cc
	tst.b $4(a0)
	bpl.s loc_2079b8
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2079b8:
	bsr.w sub_207a14
	beq.s loc_2079aa
	tst.b $4(a0)
	bpl.s loc_2079cc
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2079cc:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2079ec
loc_2079da:
	cmp.w (a0),d6
	bls.s loc_2079ec
	tst.b $4(a0)
	bpl.s loc_2079e8
	addq.b #$1,$1(a2)
loc_2079e8:
	addq.w #$8,a0
	bra.s loc_2079da
loc_2079ec:
	move.l a0,($f774).w
loc_2079f0:
	rts

sub_2079f2:
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

sub_207a14:
	bsr.s sub_2079f2
	beq.s loc_207a26
	tst.b $4(a0)
	bpl.s loc_207a2c
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207a2c
loc_207a26:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207a2c:
	bsr.w sub_207a7c
	bne.s loc_207a7a
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
	bpl.s loc_207a5c
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207a5c:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207a6e
	nop
	nop
	nop
	nop
loc_207a6e:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207a7a:
	rts

sub_207a7c:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207a84:
	tst.b (a1)
	beq.s loc_207a90
	lea $40(a1),a1
	dbf d0,loc_207a84
loc_207a90:
	rts

sub_207a92:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207ab0
loc_207aa4:
	tst.b (a1)
	beq.s loc_207ab0
	lea $40(a1),a1
	dbf d0,loc_207aa4
loc_207ab0:
	rts
loc_207ab2:
	move.w $8(a0),d0
loc_207ab6:
	tst.b $1(a0)
	bmi.s loc_207b20
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207b20
loc_207ad4:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207b16
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207b0e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207b06
	moveq #$0,d1
	bra.s loc_207b0e
loc_207b06:
	cmpi.w #$3,d1
	bcs.s loc_207b0e
	moveq #$2,d1
loc_207b0e:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207b16:
	jsr (sub_203ae0).l
	moveq #$1,d0
	rts
loc_207b20:
	btst.b #$7,($ff152e).l
	bne.s loc_207ad4
	moveq #$0,d0
	rts
dat_207b2e:
	.incbin 31534, 3658

sub_208978:
	btst.b #$3,$22(a0)
	beq.s loc_2089e8
	btst.b #$3,$22(a1)
	beq.s loc_2089e8
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2089e8
	tst.b $2a(a1)
	beq.s loc_2089aa
	move.w #$ab,d0
	jsr (sub_20226c).l
loc_2089aa:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2089d6
	cmpi.b #$17,$1c(a1)
	beq.s loc_2089d6
	bclr.b #$0,$2c(a1)
loc_2089d6:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2089e8
	bclr.b #$1,$22(a1)
loc_2089e8:
	rts

sub_2089ea:
	cmpi.b #$4,$24(a1)
	bne.s loc_2089fc
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_2089fc:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208a5c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208a1e
	bclr.b #$3,$22(a0)
	bra.w sub_208978
loc_208a1e:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208a5c
	tst.b ($ff195b).l
	beq.s loc_208a46
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208a56
loc_208a46:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208a56:
	move.b #$0,$1c(a1)
loc_208a5c:
	bset.b #$3,$22(a1)
	beq.s loc_208a7e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208ab6
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208a7e:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208aaa
	cmpi.b #$2,$24(a0)
	beq.s loc_208ab0
loc_208aaa:
	move.w $10(a1),$14(a1)
loc_208ab0:
	bclr.b #$1,$22(a1)
loc_208ab6:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_208ac0:
	move.b #$1,$25(a0)

sub_208ac6:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208d7a
	btst.b #$6,$2c(a1)
	bne.w loc_208d7a
	cmpi.b #$6,$24(a1)
	bcc.w loc_208d7a
	tst.b $0(a1)
	beq.w loc_208d7a
	tst.b $1(a0)
	bpl.w loc_208d7a
	tst.b ($ff1906).l
	bne.w loc_208d7a
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208d7a
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208d7a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208b34
	btst.b #$3,$22(a0)
	bne.s loc_208b46
	bra.w loc_208d7a
loc_208b34:
	cmpi.b #$1,$25(a0)
	bne.s loc_208b46
	tst.w $12(a1)
	beq.s loc_208b46
	bmi.w loc_208d7a
loc_208b46:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208d7a
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208d7a
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208b7c
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208b7c:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208b8a
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208b8a:
	cmp.w d4,d5
	bcs.w loc_208c1e
	cmpi.b #$1,$25(a0)
	beq.w loc_208d7a
	cmpi.b #$a,$0(a0)
	bne.s loc_208bac
	btst.b #$1,$22(a1)
	bne.w loc_208d7a
loc_208bac:
	cmpi.b #$4,d5
	bls.w loc_208d7a
	bsr.w sub_208dca
	move.l d0,-(a7)
	bsr.w sub_208978
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208bd6
	tst.w $10(a1)
	beq.s loc_208c06
	bpl.s loc_208bde
	bra.s loc_208c06
loc_208bd6:
	tst.w $10(a1)
	beq.s loc_208c06
	bpl.s loc_208c06
loc_208bde:
	bsr.w sub_208d8a
	btst.b #$1,$22(a1)
	bne.s loc_208bfc
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208bfc:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208c06:
	bsr.w sub_208e40
	bsr.w sub_208d8a
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208c1e:
	cmpi.b #$19,$0(a0)
	bne.s loc_208c30
	btst.b #$2,$22(a1)
	bne.w loc_208d7a
loc_208c30:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208c46
	bmi.w loc_208d16
loc_208c46:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208c58
	tst.w $12(a1)
	beq.s loc_208c58
	bmi.w loc_208d7a
loc_208c58:
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
	beq.s loc_208ca4
	bpl.s loc_208c84
	neg.b d0
loc_208c84:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d6a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208ca4
	tst.w $10(a0)
	bpl.s loc_208ca0
	neg.w d1
loc_208ca0:
	add.w d1,$8(a1)
loc_208ca4:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208d0e
	tst.w $12(a0)
	bmi.s loc_208ce2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dfc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208ce2
	add.w d1,$c(a1)
	bra.w loc_208d7a
loc_208ce2:
	tst.w $12(a0)
	bpl.s loc_208d0e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207014).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208d0e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073e0).l
	movem.l (a7)+,a0-a1
	bra.s loc_208d7a
loc_208d0e:
	bsr.w sub_2089ea
	moveq #$1,d0
	rts
loc_208d16:
	cmpi.b #$1,$25(a0)
	beq.s loc_208d7a
	cmpi.b #$9,$0(a0)
	beq.s loc_208d7a
	cmpi.b #$a,$0(a0)
	bne.s loc_208d40
	cmpi.b #$2,$25(a0)
	beq.s loc_208d60
	btst.b #$1,$1(a0)
	bne.s loc_208d60
	bra.s loc_208d7a
loc_208d40:
	btst.b #$1,$22(a1)
	bne.s loc_208d60
	tst.w $12(a0)
	beq.s loc_208d60
	bmi.s loc_208d60
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073e0).l
	movem.l (a7)+,a0-a1
loc_208d60:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208e40
	bsr.w sub_208978
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208d7a:
	bsr.w sub_208e40
	bsr.w sub_208978
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208d8a:
	tst.w $10(a0)
	beq.s loc_208dc8
	cmpi.b #$a,$0(a0)
	beq.s loc_208dc8
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208da4
	neg.b d0
loc_208da4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d6a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208dc8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073e0).l
	movem.l (a7)+,a0-a1
loc_208dc8:
	rts

sub_208dca:
	cmpi.b #$a,$0(a0)
	bne.s loc_208dda
	move.b #$0,$20(a1)
	rts
loc_208dda:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208e2e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208e3e
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208dfc
	tst.w $10(a2)
	beq.s loc_208e3e
loc_208dfc:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208e0e
	cmp.w $8(a2),d1
	bcs.s loc_208e3e
	bra.s loc_208e14
loc_208e0e:
	cmp.w $8(a2),d1
	bcc.s loc_208e3e
loc_208e14:
	cmpi.b #$15,$0(a0)
	beq.s loc_208e3e
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073e0).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208e2e:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208e3e:
	rts

sub_208e40:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208e5a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208e5a
	move.b #$0,$20(a1)
loc_208e5a:
	rts
	.incbin 36444, 374
loc_208fd2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208fe0(pc,d0.w),d0
	jmp dat_208fe0(pc,d0.w)
dat_208fe0:
	.incbin 36832, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208fd2
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209036
	tst.b $1(a0)
	bpl.s loc_20903e
loc_209036:
	move.w dat_209090(pc,d0.w),d1
	jsr dat_209090(pc,d1.w)
loc_20903e:
	bsr.w sub_203a34
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209070
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209070:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203ae0
	rts
dat_209090:
	.incbin 37008, 26
	addq.b #$2,$24(a0)
	move.l #$209412,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209100
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209418,$4(a0)
	bra.s loc_209142
loc_209100:
	btst.l #$3,d0
	beq.s loc_20912e
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209462,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bccc).l
	move.l (a7)+,d0
	bra.s loc_209142
loc_20912e:
	btst.b #$1,$1(a0)
	beq.s loc_209142
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209142:
	btst.l #$1,d0
	beq.s loc_20914e
	bset.b #$5,$2(a0)
loc_20914e:
	andi.w #$2,d0
	move.w dat_20915a(pc,d0.w),$30(a0)
	rts
dat_20915a:
	dc.b $f0,$00,$f6,$00

sub_20915e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ac6).l
	tst.b $1(a0)
	bpl.s loc_20917a
	lea ($d000).w,a1
	bsr.s sub_20915e
	bne.s loc_20917c
loc_20917a:
	rts
loc_20917c:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20226c).l
	lea (dat_209404).l,a1
	bra.w sub_205c3e
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_2091d0:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ac6).l
	tst.b $1(a0)
	bpl.s loc_2091f2
	lea ($d000).w,a1
	bsr.s sub_2091d0
	btst.b #$5,$22(a0)
	bne.s loc_2091f4
loc_2091f2:
	rts
loc_2091f4:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209222
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209222:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_20923c
	move.b #$0,$1c(a1)
loc_20923c:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_20226c).l
	lea (dat_209404).l,a1
	bra.w sub_205c3e
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 37490, 106
	tst.b $1(a0)
	bpl.s loc_2092f4
	lea ($d000).w,a1
	bsr.w sub_20915e
	bne.s loc_2092f6
	btst.b #$5,$22(a0)
	bne.s loc_2092f6
loc_2092f4:
	rts
loc_2092f6:
	move.b #$16,$24(a0)
	moveq #$0,d0
	move.b #$e0,d0
	jsr (sub_200770).l
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
	beq.s loc_209334
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_209334:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_209356
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_209356:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_20226c).l
	lea (dat_209404).l,a1
	bra.w sub_205c3e
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 37786, 106
dat_209404:
	.incbin 37892, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2094fe(pc,d0.w),d1
	jmp dat_2094fe(pc,d1.w)
dat_2094fe:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209508:
	.incbin 38152, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209560
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209558
	moveq #$0,d1
	bra.s loc_209560
loc_209558:
	cmpi.w #$3,d1
	bcs.s loc_209560
	moveq #$2,d1
loc_209560:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20957c
	moveq #$6,d1
loc_20957c:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209508).l,a1
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
	beq.s loc_2095cc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2095c4
	moveq #$0,d0
	bra.s loc_2095cc
loc_2095c4:
	cmpi.w #$3,d0
	bcs.s loc_2095cc
	moveq #$2,d0
loc_2095cc:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20969a
	dbf d0,loc_2095cc
	bclr.b #$7,(a2)
	bra.s loc_209622
loc_2095de:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20960a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209602
	moveq #$0,d0
	bra.s loc_20960a
loc_209602:
	cmpi.w #$3,d0
	bcs.s loc_20960a
	moveq #$2,d0
loc_20960a:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20969a
	dbf d0,loc_20960a
	bclr.b #$7,(a2)
	bsr.w sub_207a92
	bne.w loc_2096a6
loc_209622:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20996c,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209678
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209678
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209678:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20969a:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2095de
loc_2096a6:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2096cc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2096c4
	moveq #$0,d0
	bra.s loc_2096cc
loc_2096c4:
	cmpi.w #$3,d0
	bcs.s loc_2096cc
	moveq #$2,d0
loc_2096cc:
	lea $1(a2),a3
loc_2096d0:
	btst.b #$0,-(a3)
	bne.w sub_203ae0
	dbf d0,loc_2096d0
	tst.b $1(a0)
	bmi.s loc_209700
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20977a
loc_209700:
	tst.w ($ff190e).l
	bne.s loc_209710
	move.b ($ff1913).l,$1a(a0)
loc_209710:
	bra.w sub_203a34
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20977e
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209760
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209758
	moveq #$0,d1
	bra.s loc_209760
loc_209758:
	cmpi.w #$3,d1
	bcs.s loc_209760
	moveq #$2,d1
loc_209760:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209964).l,a1
	bsr.w sub_205c3e
	bra.w sub_203a34
loc_20977a:
	bra.w sub_203ae0

sub_20977e:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2097ce
	bset.b #$1,($ff150d).l
	beq.s loc_2097b8
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2097ce
	bset.b #$2,($ff150d).l
	bne.s loc_2097ce
loc_2097b8:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205bfe).l
loc_2097ce:
	jmp (sub_20226c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2097e2(pc,d0.w),d1
	jmp dat_2097e2(pc,d1.w)
dat_2097e2:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_2097fe
	move.w d0,d5
loc_2097fe:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_20980e
loc_209806:
	bsr.w sub_207a7c
	bne.w loc_2098c4
loc_20980e:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20996c,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20986c
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20986c
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20986c:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_2098b4
	move.w d4,d0
	jsr (sub_200770).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_2098b4
	subi.w #$80,d4
	bcc.s loc_2098b4
	move.w #$288,d4
loc_2098b4:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209806
loc_2098c4:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_20226c).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2039de
	addi.w #$18,$12(a0)
	bmi.s loc_209924
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209924
	jsr (sub_206eaa).l
	tst.w d1
	bpl.s loc_209924
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209924:
	tst.b ($ff1916).l
	beq.s loc_209960
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209960
	bra.w sub_203a34
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20977e
	lea (dat_209964).l,a1
	bsr.w sub_205c3e
	bra.w sub_203a34
loc_209960:
	bra.w sub_203ae0
dat_209964:
	.incbin 39268, 852
loc_209cb8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ce6(pc,d0.w),d0
	jsr dat_209ce6(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209ce4
	cmpi.w #$5a,($f786).w
	bcs.s loc_209cde
	btst.b #$0,($ff1505).l
	bne.s loc_209ce4
loc_209cde:
	jmp (sub_203a34).l
loc_209ce4:
	rts
dat_209ce6:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a2c0,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209d1a
	move.b #$13,$1a(a0)
loc_209d1a:
	rts
loc_209d1c:
	tst.b ($ff0f01).l
	beq.s loc_209d2a
	jmp (sub_203ae0).l
loc_209d2a:
	cmpi.b #$a,$28(a0)
	beq.w loc_209cb8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d4e(pc,d0.w),d0
	jsr dat_209d4e(pc,d0.w)
	jsr (sub_203a34).l
	jmp (loc_207ab2).l
dat_209d4e:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a2c0,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209d9c
	tst.b $29(a0)
	bne.s loc_209d9c
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209d9c:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_209e68
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209dc4
	addq.b #$2,$1a(a0)
loc_209dc4:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209dd8
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209dd8:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_209e3e
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209e0a
	tst.b $29(a0)
	beq.s loc_209e02
	tst.b ($ff1956).l
	beq.s loc_209e3e
	bra.s loc_209e0a
loc_209e02:
	tst.b ($ff1956).l
	bne.s loc_209e3e
loc_209e0a:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_209e68
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209e38
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209e38:
	jsr (sub_205bfe).l
loc_209e3e:
	rts
	subq.b #$1,$2a(a0)
	beq.s loc_209e50
	lea (dat_20a238).l,a1
	bra.w sub_205c3e
loc_209e50:
	addq.b #$2,$24(a0)
	move.b #$b,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209e66
	addq.b #$2,$1a(a0)
loc_209e66:
	rts

sub_209e68:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209ea0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209e98
	moveq #$0,d1
	bra.s loc_209ea0
loc_209e98:
	cmpi.w #$3,d1
	bcs.s loc_209ea0
	moveq #$2,d1
loc_209ea0:
	add.w d1,d0
	rts

sub_209ea4:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209ec6
	tst.b ($ff1956).l
	beq.s loc_209ebe
	tst.b $29(a0)
	bne.s loc_209ec6
	rts
loc_209ebe:
	tst.b $29(a0)
	beq.s loc_209ec6
	rts
loc_209ec6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ac6).l
	tst.b $28(a0)
	bne.s loc_209ee8
	tst.b ($ff0f01).l
	beq.s loc_209ee8
	jmp (loc_207ab2).l
loc_209ee8:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209d1c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f00(pc,d0.w),d1
	jmp dat_209f00(pc,d1.w)
dat_209f00:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a2c0,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209f4a
	tst.b $29(a0)
	bne.s loc_209f4a
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209f4a:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209e68
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209f76
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209f76:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209fd0
	move.b $25(a0),d0
	beq.s loc_209fb0
	bsr.w sub_20397c
	jsr (sub_206eaa).l
	tst.w d1
	bpl.w loc_209fbe
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209fbe
loc_209fb0:
	tst.b $1(a0)
	bpl.s loc_209fbe
	lea ($d000).w,a1
	bsr.w sub_209ea4
loc_209fbe:
	tst.w ($ff190e).l
	bne.s loc_209fd0
	lea (dat_20a238).l,a1
	bsr.w sub_205c3e
loc_209fd0:
	bsr.w sub_203a34
	jmp (loc_207ab2).l
	.incbin 40922, 606
dat_20a238:
	.incbin 41528, 586
loc_20a482:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a496(pc,d0.w),d0
	jsr dat_20a496(pc,d0.w)
	jmp (sub_203a34).l
dat_20a496:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a4d6,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a4d0
	jmp (sub_203ae0).l
loc_20a4d0:
	subq.w #$2,$c(a0)
	rts
	.incbin 42198, 82
	tst.b $28(a0)
	bmi.w loc_20a482
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a53e(pc,d0.w),d0
	jmp dat_20a53e(pc,d0.w)
dat_20a53e:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a5d8,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a56e
	move.b #$3,$1a(a0)
	bra.s loc_20a58e
loc_20a56e:
	tst.w ($ff1588).l
	beq.s loc_20a57c
	move.b #$2,$1a(a0)
loc_20a57c:
	tst.b $28(a0)
	beq.s loc_20a58e
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a58e:
	tst.b $28(a0)
	bne.s loc_20a5d2
	tst.b $29(a0)
	beq.s loc_20a5be
	tst.w ($ff1512).l
	beq.s loc_20a5aa
	bclr.b #$5,$2(a0)
	bra.s loc_20a5d2
loc_20a5aa:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a5d2
	eori.b #$20,$2(a0)
	bra.s loc_20a5d2
loc_20a5be:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a5d2
	move.b #$2,$1a(a0)
loc_20a5d2:
	jmp (sub_203a34).l
	.incbin 42456, 168

sub_20a680:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a69c
	move.l d1,(a3)
loc_20a69c:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a6c6
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205bfe).l
loc_20a6c6:
	rts
loc_20a6c8:
	tst.w ($ff1588).l
	beq.s loc_20a71e
	bsr.w sub_20a91a
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
	lea (dat_20aa7a).l,a2
	moveq #$2,d6
	bsr.w sub_20aad2
	bra.w loc_20a778
loc_20a71e:
	tst.b ($ff1511).l
	beq.s loc_20a742
	bpl.s loc_20a72c
	bsr.w sub_20a8c4
loc_20a72c:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a9b4
loc_20a742:
	tst.b ($ff150f).l
	beq.s loc_20a778
	bpl.s loc_20a750
	bsr.w sub_20a8b0
loc_20a750:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a774
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a774:
	bsr.w sub_20a9aa
loc_20a778:
	tst.w ($ff1588).l
	bne.w loc_20a824
	tst.b ($ff1510).l
	beq.w loc_20a824
	tst.w ($f63a).w
	bne.w loc_20a824
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a882
	tst.b ($f7cc).w
	bne.s loc_20a7ce
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a7ce
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a7ce
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a7ce
	move.b #$9,(a1)
loc_20a7ce:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20aac0
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20aaca
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a820
	move.w #$63,d1
loc_20a820:
	bsr.w sub_20aaca
loc_20a824:
	tst.b ($ff150e).l
	beq.s loc_20a836
	clr.b ($ff150e).l
	bsr.w sub_20aaa0
loc_20a836:
	tst.b ($f7d6).w
	beq.s loc_20a880
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a856
	move.l #$6d400001,d0
loc_20a856:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a938
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a876
	move.l #$6e800001,d0
loc_20a876:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a938
loc_20a880:
	rts
loc_20a882:
	btst.b #$7,($ff152e).l
	bne.s loc_20a8ae
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2073e0
	move.b #$1,($ff150c).l
loc_20a8ae:
	rts

sub_20a8b0:
	move.l #$73600002,($c00004).l
	lea dat_20a916(pc),a2
	move.w #$2,d2
	bra.s loc_20a8e0

sub_20a8c4:
	lea ($c00000).l,a6
	bsr.w sub_20aaa0
	move.l #$70600002,($c00004).l
	lea dat_20a90e(pc),a2
	move.w #$6,d2
loc_20a8e0:
	lea (dat_2330bc).l,a1
loc_20a8e6:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a902
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a8f6:
	move.l (a3)+,(a6)
	dbf d1,loc_20a8f6
loc_20a8fc:
	dbf d2,loc_20a8e6
	rts
loc_20a902:
	move.l #$0,(a6)
	dbf d1,loc_20a902
	bra.s loc_20a8fc
dat_20a90e:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a916:
	dc.b $ff,$ff,$00,$00

sub_20a91a:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20aa96
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20aa96

sub_20a938:
	lea (dat_20aa72).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20a948:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a94c:
	sub.l d3,d1
	bcs.s loc_20a954
	addq.w #$1,d2
	bra.s loc_20a94c
loc_20a954:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a95e
	move.w #$1,d4
loc_20a95e:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a96a
	tst.w d6
	bne.s loc_20a99c
loc_20a96a:
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
loc_20a990:
	addi.l #$400000,d0
	dbf d6,loc_20a948
	rts
loc_20a99c:
	moveq #$f,d5
loc_20a99e:
	move.l #$0,(a6)
	dbf d5,loc_20a99e
	bra.s loc_20a990

sub_20a9aa:
	lea (dat_20aa7a).l,a2
	moveq #$2,d6
	bra.s loc_20a9bc

sub_20a9b4:
	lea (dat_20aa6e).l,a2
	moveq #$5,d6
loc_20a9bc:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20a9c4:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a9c8:
	sub.l d3,d1
	bcs.s loc_20a9d0
	addq.w #$1,d2
	bra.s loc_20a9c8
loc_20a9d0:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a9da
	move.w #$1,d4
loc_20a9da:
	tst.w d4
	beq.s loc_20aa08
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
loc_20aa08:
	addi.l #$400000,d0
	dbf d6,loc_20a9c4
	rts
	.incbin 43540, 90
dat_20aa6e:
	dc.b $00,$01,$86,$a0
dat_20aa72:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20aa7a:
	dc.b $00,$00,$00,$64
dat_20aa7e:
	dc.b $00,$00,$00,$0a
dat_20aa82:
	dc.b $00,$00,$00,$01
dat_20aa86:
	.incbin 43654, 16

sub_20aa96:
	moveq #$3,d6
	lea (dat_20aa86).l,a2
	bra.s sub_20aad2

sub_20aaa0:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20aab6
	moveq #$9,d1
loc_20aab6:
	lea (dat_20aa82).l,a2
	moveq #$0,d6
	bra.s sub_20aad2

sub_20aac0:
	lea (dat_20aa82).l,a2
	moveq #$0,d6
	bra.s sub_20aad2

sub_20aaca:
	lea (dat_20aa7e).l,a2
	moveq #$1,d6

sub_20aad2:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20aada:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aade:
	sub.l d3,d1
	bcs.s loc_20aae6
	addq.w #$1,d2
	bra.s loc_20aade
loc_20aae6:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aaf0
	move.w #$1,d4
loc_20aaf0:
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
	dbf d6,loc_20aada
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ab34(pc,d0.w),d1
	jmp dat_20ab34(pc,d1.w)
dat_20ab34:
	dc.b $00,$04,$00,$7e
	addq.b #$2,$24(a0)
	move.l #$20ae32,$4(a0)
	move.w #$4ce,$2(a0)
	move.b #$4,$1(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$1,$18(a0)
	move.b #$d7,$20(a0)
	move.w $8(a0),$32(a0)
	move.w #$5,$34(a0)
	moveq #$0,d0
	move.b $28(a0),d6
	btst.l #$1,d6
	beq.s loc_20ab8a
	addi.w #$40,d0
loc_20ab8a:
	btst.l #$0,d6
	beq.s loc_20ab94
	addi.w #$20,d0
loc_20ab94:
	move.w d0,$30(a0)
	lsr.w #$1,d0
	move.w d0,$2e(a0)
	beq.s loc_20abb2
	move.l #$10000,$2a(a0)
	btst.l #$6,d6
	bne.s loc_20abb2
	neg.l $2a(a0)
loc_20abb2:
	move.l $2a(a0),d0
	beq.s loc_20abda
	lea $8(a0),a1
	tst.w $28(a0)
	bmi.s loc_20abc6
	lea $c(a0),a1
loc_20abc6:
	add.l d0,(a1)
	addi.w #$ffff,$2e(a0)
	bne.s loc_20abda
	move.w $30(a0),$2e(a0)
	neg.l $2a(a0)
loc_20abda:
	tst.b $21(a0)
	beq.w loc_20ac76
	tst.w $34(a0)
	beq.s loc_20abf8
	subq.w #$1,$34(a0)
	moveq #$a,d0
	bsr.w sub_20a680
	moveq #$0,d1
	bsr.w sub_205f86
loc_20abf8:
	tst.b $1(a0)
	bpl.s loc_20ac08
	move.w #$7f,d0
	jsr (sub_205bfe).l
loc_20ac08:
	lea ($d000).w,a1
	clr.b $21(a0)
	move.w $8(a0),d1
	move.w $c(a0),d2
	sub.w $8(a1),d1
	sub.w $c(a1),d2
	jsr (sub_200a08).l
	jsr (sub_200770).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a1)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$4,$22(a1)
	bclr.b #$5,$22(a1)
	clr.b $3c(a1)
	move.b #$1,$1c(a0)
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20ac76
	cmpi.b #$8a,$2(a2,d0.w)
	bcc.s loc_20ac76
	addq.b #$1,$2(a2,d0.w)
loc_20ac76:
	lea (dat_20ae22).l,a1
	bsr.w sub_205c3e
	jsr (sub_203a34).l
	move.w $32(a0),d0
	jmp (loc_207ab6).l
	.incbin 44176, 402
dat_20ae22:
	.incbin 44578, 142
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aece(pc,d0.w),d0
	jsr dat_20aece(pc,d0.w)
	jsr (sub_203a34).l
	move.w $3e(a0),d0
	jmp (loc_207ab6).l
dat_20aece:
	dc.b $00,$04,$00,$6e
	move.w $8(a0),$3e(a0)
	addq.b #$2,$24(a0)
	move.l #$20aff4,$4(a0)
	move.w #$435e,$2(a0)
	move.b #$4,$1(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	move.b #$1,$18(a0)
	move.b #$e7,$20(a0)
	move.w #$c0,$30(a0)
	move.w #$60,$2e(a0)
	btst.b #$7,$28(a0)
	bne.s loc_20af28
	move.w #$a0,$30(a0)
	move.w #$50,$2e(a0)
loc_20af28:
	move.l #$10000,$2a(a0)
	btst.b #$6,$28(a0)
	bne.s loc_20af3c
	neg.l $2a(a0)
loc_20af3c:
	tst.b $21(a0)
	beq.w loc_20afcc
	tst.b $1(a0)
	bpl.s loc_20af54
	move.w #$b5,d0
	jsr (sub_20226c).l
loc_20af54:
	lea ($d000).w,a1
	clr.b $21(a0)
	move.w $8(a1),d5
	move.w $c(a1),d6
	sub.w $8(a0),d5
	sub.w $c(a0),d6
	move.w d6,d0
	subi.w #$fff8,d0
	subi.w #$10,d0
	bcc.s loc_20af82
	move.w #$0,$10(a1)
	bra.w loc_20afcc
loc_20af82:
	move.w d5,d0
	subi.w #$ffe8,d0
	subi.w #$30,d0
	bcc.s loc_20af9e
	move.w #$700,$12(a1)
	tst.w d6
	bpl.s loc_20af9c
	neg.w $12(a1)
loc_20af9c:
	bra.s loc_20afba
loc_20af9e:
	move.w #$4f3,$10(a1)
	tst.w d5
	bpl.s loc_20afac
	neg.w $10(a1)
loc_20afac:
	move.w #$4f3,$12(a1)
	tst.w d6
	bpl.s loc_20afba
	neg.w $12(a1)
loc_20afba:
	bset.b #$1,$22(a1)
	bclr.b #$4,$22(a1)
	bclr.b #$5,$22(a1)
loc_20afcc:
	lea $8(a0),a1
	tst.w $28(a0)
	bmi.s loc_20afda
	lea $c(a0),a1
loc_20afda:
	move.l $2a(a0),d0
	add.l d0,(a1)
	addi.w #$ffff,$2e(a0)
	bne.s loc_20aff2
	move.w $30(a0),$2e(a0)
	neg.l $2a(a0)
loc_20aff2:
	rts
	.incbin 45044, 34
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b02a(pc,d0.w),d0
	jsr dat_20b02a(pc,d0.w)
	jmp (sub_203a34).l
dat_20b02a:
	dc.b $00,$06,$00,$52,$00,$5c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$638b,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20b064
	move.w #$642a,d0
loc_20b064:
	move.w d0,$2(a0)
	move.l #$20b096,$4(a0)
	moveq #$a,d0
	bsr.w sub_20a680
	moveq #$0,d1
	bsr.w sub_205f86
	lea dat_20b08c(pc),a1
	jmp (sub_205c3e).l
	jmp (sub_203ae0).l
dat_20b08c:
	.incbin 45196, 36
	move.b $28(a0),d0
	subq.b #$1,d0
	bmi.s loc_20b0bc
	bra.w loc_20b2d8
loc_20b0bc:
	jsr (sub_20e646).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b0dc(pc,d0.w),d0
	jsr dat_20b0dc(pc,d0.w)
	jsr (sub_203a34).l
	jmp (loc_207ab2).l
dat_20b0dc:
	dc.b $00,$0a,$00,$4e,$00,$62,$00,$90
	dc.b $00,$f0
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$0,$1a(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w #$a421,$2(a0)
	move.w #$3d,$2a(a0)
	lea dat_20b238(pc),a1
	tst.b $28(a0)
	bmi.s loc_20b126
	lea dat_20b27a(pc),a1
	st $3f(a0)
loc_20b126:
	move.l a1,$4(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b13c
	addq.b #$2,$24(a0)
	move.w #$3d,$2a(a0)
loc_20b13c:
	rts
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b15a
	move.b #$25,$20(a0)
	addq.b #$2,$24(a0)
	addq.b #$1,$1c(a0)
	move.w #$33,$2a(a0)
loc_20b15a:
	lea (dat_20b224).l,a1
	jsr (sub_205c3e).l
	jmp (sub_203a34).l
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b1ca
	move.b #$26,$20(a0)
	addq.b #$2,$24(a0)
	addq.b #$1,$1c(a0)
	move.l #$8000,$30(a0)
	move.w #$20,$2a(a0)
	move.l #$ffff8000,$2c(a0)
	tst.b $28(a0)
	bpl.s loc_20b1ac
	move.w #$30,$2a(a0)
	move.l #$ffffc000,$2c(a0)
loc_20b1ac:
	move.w $8(a0),d0
	lea ($d000).w,a1
	sub.w $8(a1),d0
	bpl.s loc_20b1ca
	neg.l $2c(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20b1ca:
	bra.s loc_20b15a
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b220
	move.w #$41,$2a(a0)
	tst.b $28(a0)
	bpl.s loc_20b1f6
	move.w #$61,$2a(a0)
loc_20b1f6:
	neg.l $30(a0)
	tst.b $3f(a0)
	beq.s loc_20b220
	jsr (sub_207a7c).l
	bne.s loc_20b220
	move.b $0(a0),$0(a1)
	move.l $8(a0),$8(a1)
	move.l $c(a0),$c(a1)
	move.b #$1,$28(a1)
loc_20b220:
	bra.w loc_20b15a
dat_20b224:
	.incbin 45604, 20
dat_20b238:
	.incbin 45624, 66
dat_20b27a:
	.incbin 45690, 94
loc_20b2d8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b2ec(pc,d0.w),d0
	jsr dat_20b2ec(pc,d0.w)
	jmp (sub_203a34).l
dat_20b2ec:
	.incbin 45804, 108
	tst.b $28(a0)
	bmi.w loc_20b364
	bra.w loc_20b632
loc_20b364:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b37e(pc,d0.w),d0
	jsr dat_20b37e(pc,d0.w)
	jsr (sub_203a34).l
	jmp (loc_207ab2).l
dat_20b37e:
	.incbin 45950, 22
	cmpi.b #$2,($ff152e).l
	bne.w loc_20b3b0
	tst.b ($ff156a).l
	beq.w loc_20b3b0
	jmp (sub_203ae0).l
loc_20b3b0:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$0,$18(a0)
	move.w #$3af,$2(a0)
	move.l #$20b608,$4(a0)
	move.w #$7,$30(a0)
	tst.w ($ff1906).l
	bne.w loc_20b3f2
	lea ($d000).w,a6
	lea $3e(a0),a5
	bsr.w sub_20b3f4
	tst.b $3e(a0)
	bne.w loc_20b478
loc_20b3f2:
	rts

sub_20b3f4:
	tst.w $12(a6)
	bmi.w loc_20b476
	cmpi.b #$4,$24(a6)
	beq.w loc_20b476
	cmpi.b #$6,$24(a6)
	beq.w loc_20b476
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ffe8,d0
	subi.w #$10,d0
	bcc.w loc_20b476
	move.w $8(a6),d0
	sub.w $8(a0),d0
	subi.w #$ffe8,d0
	subi.w #$30,d0
	bcc.w loc_20b476
	st (a5)
	bset.b #$0,$2c(a6)
	bset.b #$2,$22(a6)
	move.b #$e,$16(a6)
	move.b #$7,$17(a6)
	move.b #$2,$1c(a6)
	move.w #$0,$10(a6)
	move.w #$f800,$12(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),d0
	addi.w #$fff0,d0
	move.w d0,$c(a6)
loc_20b476:
	rts
loc_20b478:
	addq.b #$2,$24(a0)
	move.w #$8,$2a(a0)
	move.b #$1,$1a(a0)
	move.w #$d7,d0
	jmp (sub_20226c).l
	.incbin 46226, 416
loc_20b632:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b640(pc,d0.w),d0
	jmp dat_20b640(pc,d0.w)
dat_20b640:
	.incbin 46656, 1128
	move.b $28(a0),d0
	bpl.s loc_20bab2
	bra.w loc_20bc5c
loc_20bab2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bacc(pc,d0.w),d0
	jsr dat_20bacc(pc,d0.w)
	jsr (sub_203a34).l
	jmp (loc_207ab2).l
dat_20bacc:
	dc.b $00,$04,$00,$ee
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.l #$20bc54,$4(a0)
	move.w #$3bd,$2(a0)
	move.w #$100,$2c(a0)
	move.b $28(a0),d0
	beq.s loc_20bb0a
	neg.w $2c(a0)
loc_20bb0a:
	jsr (sub_207a92).l
	bne.w loc_20bbb4
	move.w a0,$3e(a1)
	move.w a1,$2e(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_207a92).l
	bne.w loc_20bbb4
	move.w a0,$3e(a1)
	move.w a1,$30(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_207a92).l
	bne.w loc_20bbb4
	move.w a0,$3e(a1)
	move.w a1,$32(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_207a92).l
	bne.w loc_20bbb4
	move.w a0,$3e(a1)
	move.w a1,$34(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	bra.s loc_20bbba
loc_20bbb4:
	jmp (sub_203ae0).l
loc_20bbba:
	move.w $2c(a0),d0
	add.w d0,$2a(a0)
	move.w $2a(a0),d0
	lsr.w #$8,d0
	jsr (sub_200770).l
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
	rts
	dc.b $00,$02,$01,$f8,$05,$00,$00,$f8
loc_20bc5c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bc82(pc,d0.w),d0
	jsr dat_20bc82(pc,d0.w)
	movea.w $3e(a0),a1
	cmpi.b #$2c,$0(a1)
	beq.s loc_20bc7c
	jmp (sub_203ae0).l
loc_20bc7c:
	jmp (sub_203a34).l
dat_20bc82:
	dc.b $00,$04,$00,$28
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$20bcb8,$4(a0)
	move.w #$3bd,$2(a0)
	move.b #$8b,$20(a0)
	move.w $2a(a0),$8(a0)
	move.w $2e(a0),$c(a0)
	rts
	dc.b $00,$02,$01,$f8,$05,$00,$04,$f8
loc_20bcc0:
	moveq #$2,d0
	jmp (sub_202436).l

sub_20bcc8:
	rts
	dc.b $00,$00

sub_20bccc:
	cmpi.b #$f,d0
	bne.s loc_20bcd8
	move.w #$4f2,$2(a0)
loc_20bcd8:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bd3a(pc,d0.w),d0
	jsr dat_20bd3a(pc,d0.w)
	jsr (sub_203a34).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20bd18
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20bd18:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20bd36
	rts
loc_20bd36:
	bra.w loc_20cd42
dat_20bd3a:
	dc.b $00,$10,$00,$6e
dat_20bd3e:
	dc.b $10,$08,$00,$12,$0c,$83,$0c,$10
	dc.b $82,$0c,$10,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$31e,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20bd66
	move.w #$3fc,d0
loc_20bd66:
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20bee8,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20bd3e(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20be12(pc)
	tst.b $1a(a0)
	beq.s loc_20bdbc
	lea ($d000).w,a1
	jmp (sub_208ac6).l
loc_20bdbc:
	lea ($d000).w,a1
	jsr (sub_208ac6).l
	beq.s loc_20be10
	btst.b #$3,$22(a0)
	beq.s loc_20be10
	tst.b ($ff1521).l
	bne.s loc_20be10
	tst.b ($ff151f).l
	bne.s loc_20be10
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20be0e
	tst.w $30(a0)
	bne.s loc_20be0e
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_207340).l
loc_20be0e:
	movea.l (a7)+,a0
loc_20be10:
	rts

sub_20be12:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20be2c
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20be2e(pc,d0.w),d0
	jmp dat_20be2e(pc,d0.w)
loc_20be2c:
	rts
dat_20be2e:
	.incbin 48686, 28
	jsr sub_20be8a(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	jsr sub_20be8a(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	rts
	jsr sub_20be8a(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	rts

sub_20be8a:
	tst.b $3a(a0)
	beq.s loc_20bea8
	subq.b #$1,$3a(a0)
	bne.s loc_20bee6
	btst.b #$7,$1(a0)
	beq.s loc_20bea8
	move.w #$b7,d0
	jsr (sub_20226c).l
loc_20bea8:
	tst.b $3c(a0)
	beq.s loc_20bec8
	subq.b #$8,$3b(a0)
	bcc.s loc_20bee6
	move.b #$0,$3b(a0)
	move.b #$0,$3c(a0)
	move.b #$3c,$3a(a0)
	bra.s loc_20bee6
loc_20bec8:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20bee6
	move.b #$20,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20bee6:
	rts
	.incbin 48872, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bf3e(pc,d0.w),d0
	jsr dat_20bf3e(pc,d0.w)
	jsr (sub_203a34).l
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20bf3a
	rts
loc_20bf3a:
	bra.w loc_20cd42
dat_20bf3e:
	dc.b $00,$04,$00,$7a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$433e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c03e,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	cmpi.b #$2,$28(a0)
	bcs.s loc_20bfb8
	jsr (sub_207a92).l
	beq.s loc_20bf8e
	jmp (sub_203ae0).l
loc_20bf8e:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$ea,$39(a1)
	move.w a0,$34(a1)
	move.b $28(a0),d0
	andi.b #$1,d0
	add.b d0,d0
	move.b d0,$28(a1)
loc_20bfb8:
	bsr.s sub_20c01c
	tst.b ($ff152e).l
	beq.s loc_20bfee
loc_20bfc2:
	cmpi.b #$1,$28(a0)
	beq.s loc_20bfee
	tst.b $3a(a0)
	bne.s loc_20bff0
	moveq #$0,d0
	move.b $3b(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea dat_20c02e(pc,d0.w),a1
	move.b (a1)+,$3a(a0)
	move.b (a1)+,d0
	ext.w d0
	move.w d0,$38(a0)
	move.w (a1)+,$36(a0)
loc_20bfee:
	rts
loc_20bff0:
	move.w $38(a0),d0
	add.w d0,$36(a0)
	move.w $36(a0),d0
	move.w d0,$10(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	subq.b #$1,$3a(a0)
	beq.s loc_20c010
	rts
loc_20c010:
	addq.b #$1,$3b(a0)
	andi.b #$3,$3b(a0)
	bra.s loc_20bfc2

sub_20c01c:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ac6).l
dat_20c02e:
	.incbin 49198, 24
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c07c(pc,d0.w),d0
	jsr dat_20c07c(pc,d0.w)
	jsr (sub_203a34).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c078
	rts
loc_20c078:
	bra.w loc_20cd42
dat_20c07c:
	dc.b $00,$04,$00,$a0
	ori.b #$4,$1(a0)
	move.w #$39f,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c1a6,$4(a0)
	move.b $28(a0),d0
	lsr.b #$2,d0
	move.b d0,$1a(a0)
	move.b #$10,$19(a0)
	move.b #$e,$16(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	beq.s loc_20c11c
	moveq #$20,d1
	cmpi.b #$1,d0
	beq.s loc_20c0d6
	moveq #$a,d1
loc_20c0d6:
	jsr (sub_207a92).l
	bne.s loc_20c11c
	move.b d1,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w a0,$34(a1)
	move.b #$20,$38(a1)
	move.b #$2,$28(a1)
	cmpi.b #$20,d1
	beq.s loc_20c11c
	move.b #$18,$38(a1)
	move.b $28(a0),d0
	andi.b #$1,d0
	add.b d0,d0
	ori.b #$4,d0
	move.b d0,$28(a1)
loc_20c11c:
	jsr sub_20c132(pc)
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ac6).l

sub_20c132:
	btst.b #$2,$28(a0)
	bne.s loc_20c14e
	jsr sub_20c164(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
loc_20c14e:
	jsr sub_20c164(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts

sub_20c164:
	lea ($d000).w,a1
	move.w $8(a0),d0
	move.b $19(a0),d1
	ext.w d1
	sub.w d1,d0
	move.w $8(a1),d1
	sub.w d0,d1
	bcs.s loc_20c192
	cmpi.w #$50,d1
	bcc.s loc_20c184
	rts
loc_20c184:
	subq.b #$8,$3b(a0)
	bcc.s loc_20c1a4
	move.b #$0,$3b(a0)
	rts
loc_20c192:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20c1a4
	move.b #$20,$3b(a0)
loc_20c1a4:
	rts
	.incbin 49574, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c1ca(pc,d0.w),d0
	jsr dat_20c1ca(pc,d0.w)
	jmp (sub_203a34).l
dat_20c1ca:
	dc.b $00,$04,$00,$3a
	ori.b #$4,$1(a0)
	move.w #$34e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c514,$4(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20c244(pc,d0.w),d0
	jsr dat_20c244(pc,d0.w)
	jsr sub_20c254(pc)
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c236
	rts
loc_20c236:
	bra.w loc_20cd42

sub_20c23a:
	lea ($d000).w,a1
	jmp (loc_208ac0).l
dat_20c244:
	.incbin 49732, 16

sub_20c254:
	tst.b $3f(a0)
	beq.s loc_20c294
	btst.b #$3,$22(a0)
	bne.s loc_20c26e
	tst.b $3e(a0)
	beq.s loc_20c294
	subq.b #$8,$3e(a0)
	bra.s loc_20c27a
loc_20c26e:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20c294
	addq.b #$8,$3e(a0)
loc_20c27a:
	move.b $3e(a0),d0
	jsr (sub_200770).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $30(a0),d0
	move.w d0,$c(a0)
loc_20c294:
	rts
	dc.b $11,$7c,$00,$01,$00,$3f,$4e,$ba
	dc.b $ff,$9c,$4e,$75
loc_20c2a2:
	tst.b $38(a0)
	bne.s loc_20c2e6
	move.b #$1,$3f(a0)
	lea (dat_20c318).l,a1
	cmpi.b #$1,$28(a0)
	beq.s loc_20c2c2
	lea (dat_20c338).l,a1
loc_20c2c2:
	moveq #$0,d0
	move.b $39(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea $0(a1,d0.w),a1
	move.b (a1)+,$38(a0)
	move.b (a1)+,d0
	ext.w d0
	move.w d0,$36(a0)
	move.w (a1)+,$34(a0)
loc_20c2e0:
	jsr sub_20c23a(pc)
	rts
loc_20c2e6:
	move.w $34(a0),d0
	move.w d0,$10(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	move.w $36(a0),d0
	add.w d0,$34(a0)
	subq.b #$1,$38(a0)
	bne.s loc_20c2e0
	addq.b #$1,$39(a0)
	cmpi.b #$8,$39(a0)
	bne.s loc_20c2a2
	move.b #$2,$39(a0)
	bra.s loc_20c2a2
dat_20c318:
	.incbin 49944, 32
dat_20c338:
	.incbin 49976, 32
loc_20c358:
	jsr sub_20c23a(pc)
	tst.b $38(a0)
	bne.s loc_20c39a
	clr.b $3f(a0)
	lea (dat_20c3d4).l,a1
	cmpi.b #$3,$28(a0)
	beq.s loc_20c37a
	lea (dat_20c3f4).l,a1
loc_20c37a:
	moveq #$0,d0
	move.b $39(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea $0(a1,d0.w),a1
	move.b (a1)+,$38(a0)
	move.b (a1)+,d0
	ext.w d0
	move.w d0,$36(a0)
	move.w (a1)+,$34(a0)
loc_20c398:
	rts
loc_20c39a:
	move.w $34(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	move.w $36(a0),d0
	add.w d0,$34(a0)
	move.w $34(a0),d0
	andi.w #$ff00,d0
	move.w d0,$12(a0)
	subq.b #$1,$38(a0)
	bne.s loc_20c398
	addq.b #$1,$39(a0)
	cmpi.b #$8,$39(a0)
	bne.s loc_20c358
	move.b #$2,$39(a0)
	bra.s loc_20c358
dat_20c3d4:
	.incbin 50132, 32
dat_20c3f4:
	.incbin 50164, 2382
loc_20cd42:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20cd66
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20cd66:
	jmp (sub_203ae0).l
	jsr (sub_20e646).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cd86(pc,d0.w),d0
	jsr dat_20cd86(pc,d0.w)
	jmp (loc_207ab2).l
dat_20cd86:
	dc.b $00,$0e,$00,$60,$00,$82,$00,$ec
	dc.b $01,$06,$01,$14,$01,$7c
	move.l #$21e2b6,d1
	move.b #$1,d0
	move.b $28(a0),$2e(a0)
	bpl.s loc_20cdb0
	move.l #$21e466,d1
	move.b #$2,d0
loc_20cdb0:
	move.b d0,$1a(a0)
	move.l d1,$4(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$19(a0)
	move.b #$14,$16(a0)
	move.w #$23f2,$2(a0)
	move.w #$100,$12(a0)
	move.b #$6,$20(a0)
	addq.b #$2,$24(a0)
	jsr sub_20cf20(pc)
	jsr (sub_206eaa).l
	tst.w d1
	bpl.s loc_20cdf8
	addq.b #$2,$24(a0)
loc_20cdf8:
	lea dat_20cfcc(pc),a1
	jsr (sub_205c3e).l
	jmp (sub_203a34).l
	btst.b #$7,$1(a0)
	beq.s loc_20ce56
	bclr.b #$0,$1(a0)
	bclr.b #$0,$22(a0)
	lea ($d000).w,a1
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcc.s loc_20ce38
	neg.w d0
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20ce38:
	tst.b $1(a0)
	bpl.s loc_20ce56
	move.w $c(a0),d1
	sub.w $c(a1),d1
	bcc.s loc_20ce4a
	neg.w d1
loc_20ce4a:
	cmpi.w #$20,d1
	bcc.s loc_20ce56
	cmpi.w #$60,d0
	bcs.s loc_20ce5e
loc_20ce56:
	move.b #$1,$1c(a0)
	bra.s loc_20cdf8
loc_20ce5e:
	move.b #$2,$1c(a0)
	jsr sub_20cf3a(pc)
	move.w #$78,$2c(a0)
	addq.b #$2,$24(a0)
	subq.w #$1,$2c(a0)
	beq.s loc_20ce7c
	bra.w loc_20cdf8
loc_20ce7c:
	move.b #$3,$1c(a0)
	move.w #$3c,$2c(a0)
	addq.b #$2,$24(a0)
	subq.w #$1,$2c(a0)
	beq.s loc_20ce96
	bra.w loc_20cdf8
loc_20ce96:
	addq.b #$2,$24(a0)
	move.w #$100,d0
	tst.b $28(a0)
	bpl.s loc_20cea8
	move.w #$80,d0
loc_20cea8:
	move.b #$0,$1c(a0)
	btst.b #$0,$22(a0)
	bne.s loc_20ceb8
	neg.w d0
loc_20ceb8:
	move.w d0,$10(a0)
	jsr sub_20cf20(pc)
	jsr (sub_2070ea).l
	tst.w d1
	bmi.s loc_20cef2
	jsr (sub_206f4c).l
	tst.w d1
	bmi.s loc_20cef2
	jsr (sub_206eaa).l
	tst.w d1
	beq.s loc_20ceee
	cmpi.w #$7,d1
	bpl.s loc_20cef2
	cmpi.w #$fff9,d1
	bmi.s loc_20cef2
	add.w d1,$c(a0)
loc_20ceee:
	bra.w loc_20cdf8
loc_20cef2:
	move.w #$48,$2c(a0)
	move.w #$3,$1c(a0)
	addq.b #$2,$24(a0)
	subq.w #$1,$2c(a0)
	beq.s loc_20cf0c
	bra.w loc_20cdf8
loc_20cf0c:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	subq.b #$2,$24(a0)
	bra.w loc_20cdf8

sub_20cf20:
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	rts

sub_20cf3a:
	tst.b $28(a0)
	bpl.s loc_20cf42
	rts
loc_20cf42:
	jsr (sub_207a7c).l
	bne.s loc_20cf86
	move.b #$25,$0(a1)
	move.w a0,$30(a1)
	move.w #$40,$2c(a1)
	move.b $28(a0),$28(a1)
	move.b $1(a0),$2e(a1)
	move.w $c(a0),d0
	subq.w #$4,d0
	move.w d0,$c(a1)
	move.w $8(a0),d0
	moveq #$11,d1
	btst.b #$0,$1(a0)
	bne.s loc_20cf80
	neg.w d1
loc_20cf80:
	add.w d1,d0
	move.w d0,$8(a1)
loc_20cf86:
	jsr (sub_207a7c).l
	bne.s loc_20cfca
	move.b #$25,$0(a1)
	move.w a0,$30(a1)
	move.w #$14,$2c(a1)
	move.b $28(a0),$28(a1)
	move.b $1(a0),$2e(a1)
	move.w $c(a0),d0
	subq.w #$6,d0
	move.w d0,$c(a1)
	move.w $8(a0),d0
	moveq #$9,d1
	btst.b #$0,$1(a0)
	bne.s loc_20cfc4
	neg.w d1
loc_20cfc4:
	add.w d1,d0
	move.w d0,$8(a1)
loc_20cfca:
	rts
dat_20cfcc:
	.incbin 53196, 1292
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$28(a1)
	lea (dat_23d6bc).l,a1
	jmp (sub_205c3e).l
	.incbin 54518, 1740
	jsr (sub_20e68e).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20dce4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dbe2(pc,d0.w),d0
	jmp dat_20dbe2(pc,d0.w)
dat_20dbe2:
	.incbin 56290, 258
loc_20dce4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dcf2(pc,d0.w),d0
	jmp dat_20dcf2(pc,d0.w)
dat_20dcf2:
	.incbin 56562, 2388

sub_20e646:
	tst.b ($ff156a).l
	beq.s loc_20e68c
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e65e
	tst.b $28(a0)
	beq.s loc_20e68c
loc_20e65e:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203ae0).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e68a
	move.w #$9e,d0
	jsr (sub_20226c).l
loc_20e68a:
	addq.l #$4,a7
loc_20e68c:
	rts

sub_20e68e:
	tst.b $28(a0)
	bmi.s loc_20e6be
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e6ae
	tst.b ($ff156d).l
	bne.s loc_20e6be
	addq.l #$4,a7
	jmp (loc_207ab2).l
loc_20e6ae:
	tst.b ($ff156a).l
	bne.s loc_20e6be
	addq.l #$4,a7
	jmp (sub_203ae0).l
loc_20e6be:
	rts
	.incbin 59072, 284
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e7ea(pc,d0.w),d0
	jmp dat_20e7ea(pc,d0.w)
dat_20e7ea:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20eee8,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20eea8).l,a2
loc_20e838:
	jsr (sub_207a7c).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20eee8,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20e88a
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20e88a:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20e838
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20e8b2
	bge.s loc_20e8a8
	neg.w d0
loc_20e8a8:
	add.w d0,$a(a0)
	jmp (sub_203a34).l
loc_20e8b2:
	addq.b #$4,$24(a0)
	jmp (sub_203a34).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20e8d6
	bge.s loc_20e8cc
	neg.w d0
loc_20e8cc:
	add.w d0,$8(a0)
	jmp (sub_203a34).l
loc_20e8d6:
	addq.b #$4,$24(a0)
	jmp (sub_203a34).l
	tst.b $1e(a0)
	beq.s loc_20e8f0
	subq.b #$1,$1e(a0)
	jmp (sub_203a34).l
loc_20e8f0:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20e90a
	bge.s loc_20e900
	neg.w d0
loc_20e900:
	add.w d0,$a(a0)
	jmp (sub_203a34).l
loc_20e90a:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202436).l
	tst.b $1e(a0)
	beq.s loc_20e92c
	subq.b #$1,$1e(a0)
	jmp (sub_203a34).l
loc_20e92c:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20e946
	bge.s loc_20e93c
	neg.w d0
loc_20e93c:
	add.w d0,$8(a0)
	jmp (sub_203a34).l
loc_20e946:
	jmp (sub_203ae0).l
	tst.l ($f680).w
	bne.s loc_20e960
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203ae0).l
loc_20e960:
	rts
	.incbin 59746, 1350
dat_20eea8:
	.incbin 61096, 340

sub_20effc:
	jsr (sub_2064b2).l
	subq.b #$1,($f66c).w
	bpl.w loc_20f08e
	move.b #$a,($f66c).w
	moveq #$0,d0
	move.b ($f666).w,d0
	addq.b #$1,d0
	cmpi.b #$2,d0
	bcs.s loc_20f020
	moveq #$0,d0
loc_20f020:
	move.b d0,($f666).w
	lsl.w #$3,d0
	movea.l dat_20f090(pc,d0.w),a1
	movea.l dat_20f094(pc,d0.w),a2
	bsr.s sub_20f07e
	lea ($c00004).l,a5
	move.l #$940093a0,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7420,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	movea.l a2,a1
	bsr.s sub_20f07e
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7760,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	rts

sub_20f07e:
	lea ($ff1980).l,a3
	move.w #$bf,d0
loc_20f088:
	move.l (a1)+,(a3)+
	dbf d0,loc_20f088
loc_20f08e:
	rts
dat_20f090:
	dc.b $00,$23,$3c,$da
dat_20f094:
	dc.b $00,$23,$3e,$1a,$00,$23,$3a,$9a
	dc.b $00,$23,$3b,$da
dat_20f0a0:
	.incbin 61600, 16
dat_20f0b0:
	.incbin 61616, 596
dat_20f304:
	.incbin 62212, 48
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20f356
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20f356:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,dat_20f304
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f37e
	bge.s loc_20f374
	neg.w d0
loc_20f374:
	add.w d0,$a(a0)
	jmp ($203a6e).l
loc_20f37e:
	addq.b #$4,$24(a0)
	jmp ($203a6e).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f3a2
	bge.s loc_20f398
	neg.w d0
loc_20f398:
	add.w d0,$8(a0)
	jmp ($203a6e).l
loc_20f3a2:
	addq.b #$4,$24(a0)
	jmp ($203a6e).l
	tst.b $1e(a0)
	beq.s loc_20f3bc
	subq.b #$1,$1e(a0)
	jmp ($203a6e).l
loc_20f3bc:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f3d6
	bge.s loc_20f3cc
	neg.w d0
loc_20f3cc:
	add.w d0,$a(a0)
	jmp ($203a6e).l
loc_20f3d6:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp ($202448).l
	tst.b $1e(a0)
	beq.s loc_20f3f8
	subq.b #$1,$1e(a0)
	jmp ($203a6e).l
loc_20f3f8:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f412
	bge.s loc_20f408
	neg.w d0
loc_20f408:
	add.w d0,$8(a0)
	jmp ($203a6e).l
loc_20f412:
	jmp ($203b1a).l
	tst.l ($f680).w
	bne.s loc_20f42c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp ($203b1a).l
loc_20f42c:
	rts
	.incbin 62510, 1690
	jmp ($2064ec).l
	.incbin 64206, 796
	jmp (dat_206294).l
	.incbin 65008, 66064
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 16782
dat_23724a:
	.incbin 225866, 256
dat_23734a:
	.incbin 226122, 4096
dat_23834a:
	.incbin 230218, 4896
dat_23966a:
	.incbin 235114, 15204
dat_23d1ce:
	.incbin 250318, 934
dat_23d574:
	.incbin 251252, 328
dat_23d6bc:
	.incbin 251580, 10564
