; R82B__.MMD
; disassembled from the disc; code only, data comes from data/R82B__.MMD at build time
	.file "R82B__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$8a
	jmp (loc_201c00).l
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
	bsr.w sub_202136
	bsr.w sub_2020de
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_20147a

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_20023a).l,a1
	lea (dat_200242).l,a2
	bsr.w sub_2001fc
	lea (dat_200248).l,a1
	lea (dat_200250).l,a2
	bsr.w sub_2001fc
	lea (dat_200256).l,a1
	lea (dat_20025e).l,a2
	bsr.s sub_2001fc
	cmpi.b #$1,($ff1507).l
	beq.s loc_2001e2
	lea (dat_200264).l,a1
	lea (dat_200276).l,a2
	bsr.s sub_2001fc
	lea (dat_20027c).l,a1
	lea (dat_200282).l,a2
	bra.w sub_2001fc
loc_2001e2:
	lea (dat_200286).l,a1
	lea (dat_200296).l,a2
	bsr.s sub_2001fc
	lea (dat_20029a).l,a1
	lea (dat_2002a8).l,a2

sub_2001fc:
	subq.b #$1,(a5)
	bpl.s loc_200230
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
	bcs.s loc_20021c
	moveq #$0,d0
loc_20021c:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_200230:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_20023a:
	dc.b $26,$03,$04,$02,$04,$01,$04,$00
dat_200242:
	dc.b $06,$ae,$04,$6c,$02,$2a
dat_200248:
	dc.b $27,$03,$04,$02,$04,$01,$04,$00
dat_200250:
	dc.b $04,$6c,$02,$2a,$06,$ae
dat_200256:
	dc.b $28,$03,$04,$02,$04,$01,$04,$00
dat_20025e:
	dc.b $02,$2a,$06,$ae,$04,$6c
dat_200264:
	.incbin 612, 18
dat_200276:
	dc.b $0c,$c0,$0e,$ee,$00,$00
dat_20027c:
	dc.b $3f,$02,$0f,$00,$0f,$01
dat_200282:
	dc.b $00,$e0,$00,$ee
dat_200286:
	.incbin 646, 16
dat_200296:
	dc.b $00,$00,$0e,$ee
dat_20029a:
	dc.b $32,$06,$02,$00,$02,$01,$02,$00
	dc.b $02,$01,$02,$00,$37,$01
dat_2002a8:
	dc.b $0e,$ee,$00,$00

sub_2002ac:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_2002be:
	move.w d1,(a0)+
	dbf d0,loc_2002be
	move.w #$15,d4
loc_2002c8:
	move.b #$12,($f62a).w
	bsr.w sub_2007be
	bsr.s sub_2002de
	bsr.w sub_2024fc
	dbf d4,loc_2002c8
	rts

sub_2002de:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002f4:
	bsr.s sub_200322
	dbf d0,loc_2002f4
	cmpi.b #$1,($ff1506).l
	bne.s loc_200320
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20031a:
	bsr.s sub_200322
	dbf d0,loc_20031a
loc_200320:
	rts

sub_200322:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_20034a
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_200338
	move.w d1,(a0)+
	rts
loc_200338:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_200346
	move.w d1,(a0)+
	rts
loc_200346:
	addq.w #$2,(a0)+
	rts
loc_20034a:
	addq.w #$2,a0
	rts

sub_20034e:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200358:
	move.b #$12,($f62a).w
	bsr.w sub_2007be
	bsr.s sub_20036e
	bsr.w sub_2024fc
	dbf d4,loc_200358
	rts

sub_20036e:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20037e:
	bsr.s sub_20039c
	dbf d0,loc_20037e
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200394:
	bsr.s sub_20039c
	dbf d0,loc_200394
	rts

sub_20039c:
	move.w (a0),d2
	beq.s loc_2003c8
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_2003ac
	subq.w #$2,(a0)+
	rts
loc_2003ac:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_2003ba
	subi.w #$20,(a0)+
	rts
loc_2003ba:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_2003c8
	subi.w #$200,(a0)+
	rts
loc_2003c8:
	addq.w #$2,a0
	rts

sub_2003cc:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_2003e6:
	move.w d1,(a0)+
	dbf d0,loc_2003e6
	move.w #$15,d4
loc_2003f0:
	move.b #$12,($f62a).w
	bsr.w sub_2007be
	bsr.s sub_200406
	bsr.w sub_2024fc
	dbf d4,loc_2003f0
	rts

sub_200406:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20041c:
	bsr.s sub_20044a
	dbf d0,loc_20041c
	cmpi.b #$1,($ff1506).l
	bne.s loc_200448
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200442:
	bsr.s sub_20044a
	dbf d0,loc_200442
loc_200448:
	rts

sub_20044a:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200476
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200462
	cmp.w d2,d1
	bcs.s loc_200462
	move.w d1,(a0)+
	rts
loc_200462:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200472
	cmp.w d2,d1
	bcs.s loc_200472
	move.w d1,(a0)+
	rts
loc_200472:
	subq.w #$2,(a0)+
	rts
loc_200476:
	addq.w #$2,a0
	rts

sub_20047a:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200484:
	move.b #$12,($f62a).w
	bsr.w sub_2007be
	bsr.s sub_20049a
	bsr.w sub_2024fc
	dbf d4,loc_200484
	rts

sub_20049a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004aa:
	bsr.s sub_2004c8
	dbf d0,loc_2004aa
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004c0:
	bsr.s sub_2004c8
	dbf d0,loc_2004c0
	rts

sub_2004c8:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_200504
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_2004e0
	addq.w #$2,(a0)+
	rts
loc_2004e0:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2004f2
	addi.w #$20,(a0)+
	rts
loc_2004f2:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_200504
	addi.w #$200,(a0)+
	rts
loc_200504:
	addq.w #$2,a0
	rts

sub_200508:
	lea (dat_200574).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_20051c:
	move.l (a2)+,(a3)+
	dbf d7,loc_20051c
	rts

sub_200524:
	lea (dat_200574).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200534:
	move.l (a2)+,(a3)+
	dbf d7,loc_200534
	rts
	.incbin 1340, 56
dat_200574:
	.incbin 1396, 586

sub_2007be:
	move.w #$2300,sr
loc_2007c2:
	tst.b ($f62a).w
	bne.s loc_2007c2
	rts

sub_2007ca:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_2007e2(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_2007e2(pc,d0.w),d0
	rts
dat_2007e2:
	.incbin 2018, 640

sub_200a62:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200abe
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a7c
	neg.w d3
loc_200a7c:
	tst.w d4
	bpl.w loc_200a84
	neg.w d4
loc_200a84:
	cmp.w d3,d4
	bcc.w loc_200a96
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200ac8(pc,d4.w),d0
	bra.s loc_200aa0
loc_200a96:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200ac8(pc,d3.w),d0
loc_200aa0:
	tst.w d1
	bpl.w loc_200aac
	neg.w d0
	addi.w #$80,d0
loc_200aac:
	tst.w d2
	bpl.w loc_200ab8
	neg.w d0
	addi.w #$100,d0
loc_200ab8:
	movem.l (a7)+,d3-d4
	rts
loc_200abe:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200ac8:
	.incbin 2760, 258

sub_200bca:
	btst.b #$3,$22(a0)
	beq.s loc_200bde
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200bde:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c00
	move.b $26(a0),d0
	bpl.s loc_200bfa
	subq.b #$1,d0
loc_200bfa:
	addi.b #$20,d0
	bra.s loc_200c0c
loc_200c00:
	move.b $26(a0),d0
	bpl.s loc_200c08
	addq.b #$1,d0
loc_200c08:
	addi.b #$1f,d0
loc_200c0c:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e96
	cmpi.b #$80,d0
	beq.w loc_200df4
	cmpi.b #$c0,d0
	beq.w loc_200d58
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
	bsr.w sub_201120
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
	bsr.w sub_201120
	move.w (a7)+,d0
	bsr.w sub_200d2c
	tst.w d1
	beq.s loc_200c9a
	bpl.s loc_200c9c
	cmpi.w #$fff2,d1
	blt.s loc_200cc2
	add.w d1,$c(a0)
loc_200c9a:
	rts
loc_200c9c:
	cmpi.w #$e,d1
	bgt.s loc_200ca8
loc_200ca2:
	add.w d1,$c(a0)
	rts
loc_200ca8:
	tst.b $38(a0)
	bne.s loc_200ca2
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200cc2:
	rts
	.incbin 3268, 34
loc_200ce6:
	rts
	.incbin 3304, 68

sub_200d2c:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d3a
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d3a:
	btst.l #$0,d2
	bne.s loc_200d46
	move.b d2,$26(a0)
	rts
loc_200d46:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d58:
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
	bsr.w sub_201290
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
	bsr.w sub_201290
	move.w (a7)+,d0
	bsr.w sub_200d2c
	tst.w d1
	beq.s loc_200dcc
	bpl.s loc_200dce
	cmpi.w #$fff2,d1
	blt.w loc_200ce6
	add.w d1,$8(a0)
loc_200dcc:
	rts
loc_200dce:
	cmpi.w #$e,d1
	bgt.s loc_200dda
loc_200dd4:
	add.w d1,$8(a0)
	rts
loc_200dda:
	tst.b $38(a0)
	bne.s loc_200dd4
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200df4:
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
	bsr.w sub_201120
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
	bsr.w sub_201120
	move.w (a7)+,d0
	bsr.w sub_200d2c
	tst.w d1
	beq.s loc_200e6e
	bpl.s loc_200e70
	cmpi.w #$fff2,d1
	blt.w loc_200cc2
	sub.w d1,$c(a0)
loc_200e6e:
	rts
loc_200e70:
	cmpi.w #$e,d1
	bgt.s loc_200e7c
loc_200e76:
	sub.w d1,$c(a0)
	rts
loc_200e7c:
	tst.b $38(a0)
	bne.s loc_200e76
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e96:
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
	bsr.w sub_201290
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
	bsr.w sub_201290
	move.w (a7)+,d0
	bsr.w sub_200d2c
	tst.w d1
	beq.s loc_200f10
	bpl.s loc_200f12
	cmpi.w #$fff2,d1
	blt.w loc_200ce6
	sub.w d1,$8(a0)
loc_200f10:
	rts
loc_200f12:
	cmpi.w #$e,d1
	bgt.s loc_200f1e
loc_200f18:
	sub.w d1,$8(a0)
	rts
loc_200f1e:
	tst.b $38(a0)
	bne.s loc_200f18
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f38:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f4e
	andi.w #$380,d0
loc_200f4e:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200fae
	bmi.s loc_200fb2
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f7e
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f84
loc_200f7e:
	andi.w #$7fff,$2(a0)
loc_200f84:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f94
	bclr.b #$6,$1(a0)
loc_200f94:
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
loc_200fae:
	movea.l d1,a1
	rts
loc_200fb2:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_20101a
	btst.b #$6,$1(a0)
	bne.s loc_200fe0
	cmpi.b #$14,d1
	bne.w loc_201104
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201104
loc_200fe0:
	cmpi.b #$15,d1
	bne.s loc_200fee
	move.w #$60,d1
	bra.w loc_201104
loc_200fee:
	cmpi.b #$1e,d1
	bne.s loc_200ffc
	move.w #$61,d1
	bra.w loc_201104
loc_200ffc:
	cmpi.b #$1f,d1
	bne.s loc_20100a
	move.w #$62,d1
	bra.w loc_201104
loc_20100a:
	cmpi.b #$32,d1
	bne.w loc_201104
	move.w #$63,d1
	bra.w loc_201104
loc_20101a:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201080
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_20106a
	cmpi.b #$6,d1
	beq.s loc_20106a
	tst.b ($ff1956).l
	beq.w loc_201104
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_20107a
	cmpi.b #$3c,d1
	beq.s loc_20107a
	cmpi.b #$37,d1
	beq.s loc_20107a
	cmpi.b #$2f,d1
	beq.s loc_20107a
	cmpi.b #$16,d1
	beq.s loc_20107a
	bra.w loc_201104
loc_20106a:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201104
loc_20107a:
	addq.b #$1,d1
	bra.w loc_201104
loc_201080:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010f0
	cmpi.b #$3,$0(a0)
	bcc.w loc_201104
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201104
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2010b4
	move.w #$6a,d1
	bra.s loc_201104
loc_2010b4:
	cmpi.b #$48,d1
	bne.s loc_2010c0
	move.w #$6b,d1
	bra.s loc_201104
loc_2010c0:
	cmpi.b #$4a,d1
	bne.s loc_2010cc
	move.w #$6c,d1
	bra.s loc_201104
loc_2010cc:
	cmpi.b #$10,d1
	bne.s loc_2010d8
	move.w #$6d,d1
	bra.s loc_201104
loc_2010d8:
	cmpi.b #$63,d1
	bne.s loc_2010e4
	move.w #$6e,d1
	bra.s loc_201104
loc_2010e4:
	cmpi.b #$43,d1
	bne.s loc_201104
	move.w #$6f,d1
	bra.s loc_201104
loc_2010f0:
	btst.b #$6,$1(a0)
	beq.s loc_201104
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201104
	move.w #$51,d1
loc_201104:
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

sub_201120:
	bsr.w sub_200f38
	cmpi.l #$210000,d1
	beq.s loc_20113a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20113a
	btst.l d5,d4
	bne.s loc_201148
loc_20113a:
	add.w a3,d2
	bsr.w sub_2011e0
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201148:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20113a
	lea (dat_236c7e).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20116e
	not.w d1
	neg.b (a4)
loc_20116e:
	btst.l #$c,d4
	beq.s loc_20117e
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20117e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236d7e).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20119a
	neg.w d0
loc_20119a:
	tst.w d0
	beq.s loc_20113a
	bmi.s loc_2011b6
	cmpi.b #$10,d0
	beq.s loc_2011d2
loc_2011a6:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011b6:
	cmpa.w #$10,a3
	bne.s loc_2011c6
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011a6
loc_2011c6:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20113a
loc_2011d2:
	sub.w a3,d2
	bsr.w sub_2011e0
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_2011e0:
	bsr.w sub_200f38
	cmpi.l #$210000,d1
	beq.s loc_2011fa
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011fa
	btst.l d5,d4
	bne.s loc_201208
loc_2011fa:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201208:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011fa
	lea (dat_236c7e).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20122e
	not.w d1
	neg.b (a4)
loc_20122e:
	btst.l #$c,d4
	beq.s loc_20123e
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20123e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236d7e).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20125a
	neg.w d0
loc_20125a:
	tst.w d0
	beq.s loc_2011fa
	bmi.s loc_201270
loc_201260:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201270:
	cmpa.w #$10,a3
	bne.s loc_201280
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201260
loc_201280:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011fa
	not.w d1
	rts

sub_201290:
	bsr.w sub_200f38
	cmpi.l #$210000,d1
	beq.s loc_2012aa
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012aa
	btst.l d5,d4
	bne.s loc_2012b8
loc_2012aa:
	add.w a3,d3
	bsr.w sub_201340
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2012b8:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012aa
	lea (dat_236c7e).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012e6
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012e6:
	btst.l #$b,d4
	beq.s loc_2012ee
	neg.b (a4)
loc_2012ee:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_237d7e).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20130a
	neg.w d0
loc_20130a:
	tst.w d0
	beq.s loc_2012aa
	bmi.s loc_201326
	cmpi.b #$10,d0
	beq.s loc_201332
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201326:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012aa
loc_201332:
	sub.w a3,d3
	bsr.w sub_201340
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201340:
	bsr.w sub_200f38
	cmpi.l #$210000,d1
	beq.s loc_20135a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20135a
	btst.l d5,d4
	bne.s loc_201368
loc_20135a:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201368:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20135a
	lea (dat_236c7e).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201396
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201396:
	btst.l #$b,d4
	beq.s loc_20139e
	neg.b (a4)
loc_20139e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_237d7e).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2013ba
	neg.w d0
loc_2013ba:
	tst.w d0
	beq.s loc_20135a
	bmi.s loc_2013d0
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013d0:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20135a
	not.w d1
	rts

sub_2013e0:
	rts
	.incbin 5090, 152
loc_20147a:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20149a
	tst.b ($ff0f01).l
	bne.s loc_20149a
	move.b #$1,($ff156a).l
loc_20149a:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201500
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207376
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201500
	move.b #$1,($ff1508).l
loc_201500:
	bset.b #$7,($f600).w
	bsr.w sub_2024ee
	tst.b ($ff156e).l
	bne.s loc_201526
	btst.b #$7,($ff152e).l
	beq.s loc_20155c
	bset.b #$0,($ff151d).l
	beq.s loc_201532
loc_201526:
	bsr.w sub_20047a
	bclr.b #$0,($ff151d).l
loc_201532:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2015cc
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_20155a
	bclr.b #$7,($ff152e).l
loc_20155a:
	rts
loc_20155c:
	bset.b #$0,($ff151d).l
	beq.s loc_20156a
	bsr.w sub_20034e
loc_20156a:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201586
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015ae
loc_201586:
	tst.b ($ff1508).l
	bne.s loc_2015cc
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015ae:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015b6:
	move.l #$0,(a1)+
	dbf d6,loc_2015b6
	move.b #$c,($f62a).w
	bsr.w sub_2007be
	rts
loc_2015cc:
	cmpi.w #$800,($f78e).w
	bne.s loc_2015ea
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_2015ea:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201600
	btst.b #$7,($ff152e).l
	beq.s loc_201606
loc_201600:
	move.l #$eee0eee,d0
loc_201606:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20160e:
	move.l d0,(a1)+
	dbf d6,loc_20160e
loc_201614:
	move.b #$c,($f62a).w
	bsr.w sub_2007be
	bsr.w sub_2024fc
	bne.s loc_201614
	tst.l ($f680).w
	bsr.w sub_201aba
	moveq #$0,d0
	lea (dat_20fbf2).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20163e
	bsr.w sub_202602
loc_20163e:
	moveq #$1,d0
	bsr.w sub_202602
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20165a:
	move.l d0,(a1)+
	dbf d1,loc_20165a
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_20166c:
	move.l d0,(a1)+
	dbf d1,loc_20166c
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_20167c:
	move.l d0,(a1)+
	dbf d1,loc_20167c
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_20168e:
	move.l d0,(a1)+
	dbf d1,loc_20168e
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20169e:
	move.l d0,(a1)+
	dbf d1,loc_20169e
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2016ae:
	move.l d0,(a1)+
	dbf d1,loc_2016ae
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_2021d8
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
	bsr.w sub_200524
	moveq #$3,d0
	bsr.w sub_200508
	bsr.w sub_202864
	bsr.w sub_2029b8
	bset.b #$2,($f754).w
	bsr.w sub_2033fc
	bsr.w sub_203312
	jsr (sub_2013e0).l
	bsr.w sub_2019f4
loc_20172e:
	move.b #$c,($f62a).w
	bsr.w sub_2007be
	bsr.w sub_2024fc
	bne.s loc_20172e
	tst.l ($f680).w
	bne.s loc_20172e
	bsr.w sub_201980
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b1a
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201792
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201792:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_2017d4
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_2017d4:
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
	jsr (sub_20fb50).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201864
loc_20185e:
	bsr.w sub_2003cc
	bra.s loc_201872
loc_201864:
	bclr.b #$0,($ff0f22).l
	bne.s loc_20185e
	bsr.w sub_2002ac
loc_201872:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201880:
	move.b #$8,($f62a).w
	bsr.w sub_2007be
	tst.b ($f7cc).w
	bne.s loc_20189e
	btst.b #$7,($f605).w
	beq.s loc_20189e
	eori.b #$1,($f63a).w
loc_20189e:
	btst.b #$0,($f63a).w
	beq.w loc_201910
	bsr.w sub_201b7e
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2018ee
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201880
	subq.b #$1,($ff1508).l
	bpl.s loc_2018d0
	clr.b ($ff1508).l
loc_2018d0:
	move.w #$e,d0
	jsr (sub_205ad6).l
	bsr.w sub_207376
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_2018fc
loc_2018ee:
	andi.b #$70,d0
	beq.w loc_201880
	clr.b ($ff1508).l
loc_2018fc:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_20147a
loc_201910:
	bsr.w sub_201bc4
	addq.w #$1,($ff1504).l
	jsr (sub_20738c).l
	jsr (sub_203810).l
	cmpi.w #$800,($f78e).w
	beq.w loc_20147a
	tst.w ($ff1502).l
	bne.w loc_20147a
	tst.w ($ff1906).l
	bne.s loc_201958
	cmpi.b #$6,($d024).w
	bcs.s loc_201958
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_20195c
loc_201958:
	bsr.w sub_2029b8
loc_20195c:
	jsr (sub_2039ba).l
	tst.w ($ff190e).l
	bne.s loc_20196e
	bsr.w sub_200184
loc_20196e:
	jsr (sub_20cee2).l
	bsr.w sub_2024fc
	bsr.w sub_201a26
	bra.w loc_201880

sub_201980:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201998
	move.w #$78,$30(a1)
loc_201998:
	rts
	.incbin 6554, 90

sub_2019f4:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a06(pc,d0.w),($f796).w
	rts
dat_201a06:
	.incbin 6662, 32

sub_201a26:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a44
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a44:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a62
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a62:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a8a
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a8a
	move.b #$0,($ff1915).l
loc_201a8a:
	tst.b ($ff1916).l
	beq.s loc_201ab8
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201ab8:
	rts

sub_201aba:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201adc
	cmpi.b #$2,d0
	bne.s loc_201adc
	add.b ($ff156a).l,d0
loc_201adc:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201af4(pc,d1.w),d0
	jmp (sub_205ad6).l
dat_201af4:
	.incbin 6900, 38

sub_201b1a:
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

sub_201b7e:
	move.w #$ab,d0
	jsr (sub_2022c6).l
	bset.b #$7,($f63a).w
	bne.s loc_201bc2
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201ba8
loc_201b9e:
	move.w #$d5,d0
	jmp (sub_205ad6).l
loc_201ba8:
	tst.b ($ff151f).l
	bne.s loc_201b9e
	tst.b ($ff1520).l
	bne.s loc_201b9e
	move.w #$90,d0
	jmp (sub_205ad6).l
loc_201bc2:
	rts

sub_201bc4:
	bclr.b #$7,($f63a).w
	beq.s loc_201bfe
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201be4
loc_201bda:
	move.w #$d6,d0
	jmp (sub_205ad6).l
loc_201be4:
	tst.b ($ff151f).l
	bne.s loc_201bda
	tst.b ($ff1520).l
	bne.s loc_201bda
	move.w #$91,d0
	jmp (sub_205ad6).l
loc_201bfe:
	rts
loc_201c00:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c8c
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c3c
	move.w #$700,d0
loc_201c38:
	dbf d0,loc_201c38
loc_201c3c:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c72(pc,d0.w),d0
	jsr dat_201c72(pc,d0.w)
loc_201c52:
	jsr (sub_2022ea).l
	tst.b ($f63a).w
	bne.s loc_201c66
	bsr.w sub_20209e
	bsr.w sub_20208c
loc_201c66:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c72:
	.incbin 7282, 26
loc_201c8c:
	tst.b ($ff1957).l
	beq.w loc_201c52
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c52
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201cba
	move.w #$700,d0
loc_201cb6:
	dbf d0,loc_201cb6
loc_201cba:
	move.w #$1,($f6fc).w
	jsr (sub_20225e).l
	tst.b ($f64e).w
	bne.s loc_201cf2
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d16
loc_201cf2:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d16:
	move.w ($f624).w,(a5)
	jsr (sub_20227a).l
	bra.w loc_201c52
	.incbin 7460, 60
	jsr (sub_20225e).l
	bsr.w sub_2020fa
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
	bsr.w sub_2059f8
	tst.b ($f767).w
	beq.s loc_201e0e
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e0e:
	jsr (sub_20fb50).l
	jsr (sub_20227a).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f08
	bsr.w sub_20256e
	jmp (loc_20a710).l
	dc.b $4e,$75
	jsr (sub_20225e).l
	bsr.w sub_2020fa
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
	jsr (sub_20227a).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f08
	bra.w loc_202552
	.incbin 7910, 16
	bsr.w sub_201fe2
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f18
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f18:
	move.w ($f624).w,(a5)
	bra.w loc_202552
	dc.b $4e,$b9,$00,$20,$22,$5e,$61,$00
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
	jsr (sub_20227a).l
	lea ($d000).w,a0
	bsr.w sub_2059f8
	tst.b ($f767).w
	beq.s loc_201fd4
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201fd4:
	tst.w ($f614).w
	beq.w loc_201fe0
	subq.w #$1,($f614).w
loc_201fe0:
	rts

sub_201fe2:
	jsr (sub_20225e).l
	bsr.w sub_2020fa
	tst.b ($f64e).w
	bne.s loc_202018
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_20203c
loc_202018:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20203c:
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
	jmp (sub_20227a).l
	dc.b $4e,$73

sub_20208c:
	tst.b ($d02a).w
	bne.s loc_20209c
	tst.w ($f786).w
	beq.s loc_20209c
	addq.w #$1,($f786).w
loc_20209c:
	rts

sub_20209e:
	tst.w ($f780).w
	beq.s loc_2020a8
	addq.w #$1,($f780).w
loc_2020a8:
	tst.w ($f782).w
	beq.s loc_2020b2
	addq.w #$1,($f782).w
loc_2020b2:
	rts
	.incbin 8372, 42

sub_2020de:
	bsr.w sub_20225e
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_20227a

sub_2020fa:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202108
	addq.w #$2,a1

sub_202108:
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

sub_202136:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2021b2).l,a2
	moveq #$12,d7
loc_20214a:
	move.w (a2)+,(a0)
	dbf d7,loc_20214a
	move.w (dat_2021b4).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202170:
	move.w d0,(a1)
	dbf d7,loc_202170
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2021a2:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021a2
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2021b2:
	dc.b $80,$04
dat_2021b4:
	.incbin 8628, 36

sub_2021d8:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2021fa:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021fa
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_202228:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202228
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202246:
	move.l d0,(a1)+
	dbf d1,loc_202246
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202256:
	move.l d0,(a1)+
	dbf d1,loc_202256
	rts

sub_20225e:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_20226e:
	btst.b #$0,($a11100).l
	bne.s loc_20226e
	rts

sub_20227a:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8840, 62

sub_2022c6:
	tst.b ($f00a).w
	bne.s loc_2022d2
	move.b d0,($f00a).w
	rts
loc_2022d2:
	tst.b ($f00b).w
	bne.s loc_2022de
	move.b d0,($f00b).w
	rts
loc_2022de:
	tst.b ($f00c).w
	bne.s loc_2022e8
	move.b d0,($f00c).w
loc_2022e8:
	rts

sub_2022ea:
	jsr (sub_20225e).l
	tst.b ($f00a).w
	beq.s loc_202304
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202304:
	tst.b ($f00b).w
	beq.s loc_202318
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202318:
	tst.b ($f00c).w
	beq.s loc_20232c
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_20232c:
	bra.w sub_20227a
	.incbin 9008, 32

sub_202350:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202412).l,a3
	lea ($c00000).l,a4
	bra.s loc_20236c

sub_202362:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_202428).l,a3
loc_20236c:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_20237a
	adda.w #$a,a3
loc_20237a:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_20243e
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_20239a
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_20239a:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2023e6
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2023c2
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023c2:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2023d0:
	lsr.w #$4,d0
loc_2023d2:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2023e0
	jmp (a3)

sub_2023dc:
	moveq #$0,d4
	moveq #$8,d3
loc_2023e0:
	dbf d0,loc_2023d2
	bra.s sub_20239a
loc_2023e6:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2023f4
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023f4:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2023d0
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2023d0
loc_202412:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023dc
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023dc
	rts
dat_202428:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023dc
	rts

sub_20243e:
	move.b (a0)+,d0
loc_202440:
	cmpi.b #$ff,d0
	bne.s loc_202448
	rts
loc_202448:
	move.w d0,d7
loc_20244a:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202440
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
	bne.s loc_202478
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_20244a
loc_202478:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202484:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202484
	bra.s loc_20244a

sub_202490:
	movem.l a1-a2,-(a7)
	lea (dat_20fc02).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2024a8:
	tst.l (a2)
	beq.s loc_2024b0
	addq.w #$6,a2
	bra.s loc_2024a8
loc_2024b0:
	move.w (a1)+,d0
	bmi.s loc_2024bc
loc_2024b4:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2024b4
loc_2024bc:
	movem.l (a7)+,a1-a2
	rts
loc_2024c2:
	movem.l a1-a2,-(a7)
	lea (dat_20fc02).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_2024ee
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_2024e8
loc_2024e0:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2024e0
loc_2024e8:
	movem.l (a7)+,a1-a2
	rts

sub_2024ee:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2024f4:
	clr.l (a2)+
	dbf d0,loc_2024f4
	rts

sub_2024fc:
	tst.l ($f680).w
	beq.s loc_202550
	tst.w ($f6f8).w
	bne.s loc_202550
	movea.l ($f680).w,a0
	lea (loc_202412).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_20251e
	adda.w #$a,a3
loc_20251e:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_20243e
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
loc_202550:
	rts
loc_202552:
	tst.w ($f6f8).w
	beq.w loc_2025f0
loc_20255a:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_20258c

sub_20256e:
	tst.w ($f6f8).w
	beq.s loc_2025f0
	tst.b ($f744).w
	bne.s loc_20255a
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_20258c:
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
loc_2025c0:
	movea.w #$8,a5
	bsr.w sub_2023dc
	subq.w #$1,($f6f8).w
	beq.s loc_2025f2
	subq.w #$1,($f6fa).w
	bne.s loc_2025c0
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2025f0:
	rts
loc_2025f2:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2025f8:
	move.l $6(a0),(a0)+
	dbf d0,loc_2025f8
	rts

sub_202602:
	lea (dat_20fc02).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202614:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202350
	dbf d1,loc_202614
	rts
	.incbin 9780, 560

sub_202864:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2028c0).l,a0
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
	bra.w loc_2028ec
dat_2028c0:
	dc.b $00,$04,$00,$00,$1e,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_2028cc:
	.incbin 10444, 32
loc_2028ec:
	tst.b ($ff1522).l
	beq.s loc_20290c
	jsr (sub_206786).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_20290a
	moveq #$0,d0
loc_20290a:
	bra.s loc_202948
loc_20290c:
	lea (dat_202984).l,a1
	tst.w ($ff1580).l
	bpl.s loc_20292e
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_2028cc).l,a1
	adda.w d0,a1
	bra.s loc_202938
loc_20292e:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202938:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202948:
	subi.w #$a0,d1
	bcc.s loc_202950
	moveq #$0,d1
loc_202950:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_20295a
	move.w d2,d1
loc_20295a:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202966
	moveq #$0,d0
loc_202966:
	cmp.w ($f72e).w,d0
	blt.s loc_202970
	move.w ($f72e).w,d0
loc_202970:
	move.w d0,($f704).w
	bsr.w sub_20298c
	lea (dat_202988).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202984:
	dc.b $00,$2e,$04,$8c
dat_202988:
	dc.b $7f,$7f,$7f,$7f

sub_20298c:
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

sub_2029b8:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2029c4
	rts
loc_2029c4:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b7e
	bsr.w sub_202c1e
	bsr.w sub_2034a4
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202ea8
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202e74
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e40
	move.l ($f704).w,d0
	lsr.l #$3,d0
	swap d0
	bsr.w sub_202e10
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
	bsr.w sub_202af2
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a6a:
	move.w d0,(a1)+
	dbf d6,loc_202a6a
	bsr.w sub_202ac2
	move.w ($f718).w,d0
	neg.w d0
	moveq #$9,d6
loc_202a7c:
	move.w d0,(a1)+
	dbf d6,loc_202a7c
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202a8a:
	move.w d0,(a1)+
	dbf d6,loc_202a8a
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b3c
dat_202aae:
	dc.b $01,$01,$00,$00,$00,$00,$00,$00
dat_202ab6:
	dc.b $01,$01,$01,$01,$01,$01,$01,$03
	dc.b $03,$01,$01,$01

sub_202ac2:
	move.w ($f708).w,d0
	move.w ($f718).w,d2
	moveq #$8,d6
	bsr.w sub_202b2a
	move.w ($f708).w,d3
	moveq #$7,d6
loc_202ad6:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202aae(pc,d6.w),d5
loc_202ae0:
	move.w d0,(a1)+
	dbf d5,loc_202ae0
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202ad6
	rts

sub_202af2:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	moveq #$c,d6
	bsr.w sub_202b2a
	move.w ($f708).w,d3
	moveq #$b,d6
	adda.w #$38,a1
loc_202b0a:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202ab6(pc,d6.w),d5
loc_202b14:
	move.w d0,-(a1)
	dbf d5,loc_202b14
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b0a
	adda.w #$38,a1
	rts

sub_202b2a:
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w d6,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	rts
loc_202b3c:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b4a(pc,d2.w)
loc_202b48:
	move.w (a2)+,d0
loc_202b4a:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b48
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
	dbf d1,loc_202b48
	rts

sub_202b7e:
	move.w ($f700).w,d4
	bsr.s sub_202bb2
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bb0
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202baa
	bset.b #$2,($f754).w
	rts
loc_202baa:
	bset.b #$3,($f754).w
loc_202bb0:
	rts

sub_202bb2:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202bc4
	bcs.s loc_202bf4
	bra.s loc_202bca
loc_202bc4:
	clr.w ($f73a).w
	rts
loc_202bca:
	cmpi.w #$10,d0
	blt.s loc_202bd4
	move.w #$10,d0
loc_202bd4:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202be2
	move.w ($f72a).w,d0
loc_202be2:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202bf4:
	cmpi.w #$fff0,d0
	bge.s loc_202bfe
	move.w #$fff0,d0
loc_202bfe:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202be2
	move.w ($f728).w,d0
	bra.s loc_202be2
	.incbin 11278, 16

sub_202c1e:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c32
	subq.w #$5,d0
loc_202c32:
	btst.b #$1,$22(a6)
	beq.s loc_202c52
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c9e
	subi.w #$40,d0
	bcc.s loc_202c9e
	tst.b ($f75c).w
	bne.s loc_202cb0
	bra.s loc_202c5e
loc_202c52:
	sub.w ($f73e).w,d0
	bne.s loc_202c64
	tst.b ($f75c).w
	bne.s loc_202cb0
loc_202c5e:
	clr.w ($f73c).w
	rts
loc_202c64:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c8c
	move.w $14(a6),d1
	bpl.s loc_202c74
	neg.w d1
loc_202c74:
	cmpi.w #$800,d1
	bcc.s loc_202c9e
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202cfe
	cmpi.w #$fffa,d0
	blt.s loc_202cc8
	bra.s loc_202cb6
loc_202c8c:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202cfe
	cmpi.w #$fffe,d0
	blt.s loc_202cc8
	bra.s loc_202cb6
loc_202c9e:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202cfe
	cmpi.w #$fff0,d0
	blt.s loc_202cc8
	bra.s loc_202cb6
loc_202cb0:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202cb6:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d08
	bra.w loc_202cd4
loc_202cc8:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cd4:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d2c
	cmpi.w #$ff00,d1
	bgt.s loc_202cf8
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d2c
loc_202cf8:
	move.w ($f72c).w,d1
	bra.s loc_202d2c
loc_202cfe:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d08:
	cmp.w ($f72e).w,d1
	blt.s loc_202d2c
	subi.w #$800,d1
	bcs.s loc_202d28
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d2c
loc_202d28:
	move.w ($f72e).w,d1
loc_202d2c:
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
	bne.s loc_202d6e
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d68
	bset.b #$0,($f754).w
	rts
loc_202d68:
	bset.b #$1,($f754).w
loc_202d6e:
	rts
	.incbin 11632, 68
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202dd8
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202dd2
	bset.b #$0,($f756).w
	rts
loc_202dd2:
	bset.b #$1,($f756).w
loc_202dd8:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e0e
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e08
	bset.b #$4,($f756).w
	rts
loc_202e08:
	bset.b #$5,($f756).w
loc_202e0e:
	rts

sub_202e10:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e3e
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e38
	bset.b #$0,($f756).w
	rts
loc_202e38:
	bset.b #$1,($f756).w
loc_202e3e:
	rts

sub_202e40:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e72
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e6c
	bset.b d6,($f756).w
	bra.s loc_202e72
loc_202e6c:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e72:
	rts

sub_202e74:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202ea6
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202ea0
	bset.b d6,($f758).w
	bra.s loc_202ea6
loc_202ea0:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202ea6:
	rts

sub_202ea8:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202eda
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202ed4
	bset.b d6,($f75a).w
	bra.s loc_202eda
loc_202ed4:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202eda:
	rts
	.incbin 11996, 44

sub_202f08:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202fc6
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030ac
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030ae
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202fc4
	bclr.b #$0,(a2)
	beq.s loc_202f7a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032da
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030b0
loc_202f7a:
	bclr.b #$1,(a2)
	beq.s loc_202f94
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032da
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030b0
loc_202f94:
	bclr.b #$2,(a2)
	beq.s loc_202faa
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032da
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203106
loc_202faa:
	bclr.b #$3,(a2)
	beq.s loc_202fc4
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032da
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203106
loc_202fc4:
	rts

sub_202fc6:
	lea (dat_203392).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202fe2
	bclr.b #$1,(a2)
	beq.s loc_20302c
	move.w #$e0,d4
loc_202fe2:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20305c(pc,d0.w),a3
	beq.s loc_203014
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032da
	movem.l (a7)+,d4-d5
	bsr.w sub_2030b0
	movea.l (a7)+,a0
	bra.s loc_20302c
loc_203014:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032dc
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030dc
	movea.l (a7)+,a0
loc_20302c:
	tst.b (a2)
	bne.s loc_203032
	rts
loc_203032:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203046
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203046:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_20306c
dat_20305c:
	.incbin 12380, 16
loc_20306c:
	moveq #$f,d6
	move.l #$800000,d7
loc_203074:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2030a0
	btst.b d0,(a2)
	beq.s loc_2030a0
	add.w d0,d0
	movea.l dat_20305c(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031b2
	movem.l (a7)+,d4-d5
	bsr.w sub_2032da
	bsr.w sub_203134
	movem.l (a7)+,d4-d5/a0
loc_2030a0:
	addi.w #$10,d4
	dbf d6,loc_203074
	clr.b (a2)
	rts

sub_2030ac:
	rts

sub_2030ae:
	rts

sub_2030b0:
	moveq #$15,d6

sub_2030b2:
	move.l #$800000,d7
	move.l d0,d1
loc_2030ba:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031b2
	move.l d1,d0
	bsr.w sub_203134
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030ba
	rts

sub_2030dc:
	move.l #$800000,d7
	move.l d0,d1
loc_2030e4:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031b4
	move.l d1,d0
	bsr.w sub_203134
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030e4
	rts

sub_203106:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203110:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031b2
	move.l d1,d0
	bsr.w sub_203134
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203110
	rts

sub_203134:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203170
	btst.b #$3,(a0)
	bne.s loc_203150
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203150:
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
loc_203170:
	btst.b #$3,(a0)
	bne.s loc_203192
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
loc_203192:
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

sub_2031b2:
	add.w (a3),d5

sub_2031b4:
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
	beq.s loc_203202
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
loc_203202:
	rts
	.incbin 12804, 30
	subq.b #$1,d3
	andi.w #$7f,d3
	ror.w #$7,d3
	add.w d4,d4
	andi.w #$1e0,d4
	andi.w #$1e,d5
	add.w d4,d3
	add.w d5,d3
	movea.l d3,a0
	rts
	.incbin 12860, 158

sub_2032da:
	add.w (a3),d5

sub_2032dc:
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
	dc.b $d8,$6b,$00,$04,$da,$53
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$2,d0
	swap d0
	move.w d4,d0
	rts

sub_203312:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20333c
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203364

sub_20333c:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203340:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032da
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030b2
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203340
	rts
loc_203364:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203368:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203392).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2033c4
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203368
	rts
dat_203392:
	.incbin 13202, 34
dat_2033b4:
	.incbin 13236, 16

sub_2033c4:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033b4(pc,d0.w),a3
	beq.s loc_2033e6
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032da
	movem.l (a7)+,d4-d5
	bsr.w sub_2030b0
	bra.s loc_2033fa
loc_2033e6:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032dc
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030dc
loc_2033fa:
	rts

sub_2033fc:
	moveq #$0,d0
	lea (dat_20fbf2).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202362
	movea.l (a2)+,a0
	bsr.w sub_203456
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200508
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203440
	jmp (loc_20cebe).l
loc_203440:
	btst.b #$1,($ff151c).l
	beq.s loc_203454
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203454
	bsr.w sub_202490
loc_203454:
	rts

sub_203456:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203460:
	move.l d0,(a3)+
	dbf d1,loc_203460
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203476
	lea ($a040).w,a3
	moveq #$2,d1

sub_203476:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_238fd6).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203490:
	move.w d1,d0
	movea.l a3,a0
loc_203494:
	move.b (a1)+,(a0)+
	dbf d0,loc_203494
	lea $80(a3),a3
	dbf d2,loc_203490
	rts

sub_2034a4:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20351e(pc,d0.w),d0
	jsr dat_20351e(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2034ca
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2034ca:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2034f8
	bcc.s loc_2034fa
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2034ee
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2034ee:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2034f8:
	rts
loc_2034fa:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203512
	btst.b #$1,($d022).w
	beq.s loc_203512
	add.w d1,d1
	add.w d1,d1
loc_203512:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20351e:
	.incbin 13598, 392
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2036b8(pc,d0.w),d0
	jmp dat_2036b8(pc,d0.w)
dat_2036b8:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$710,($f726).w
	rts
	.incbin 14022, 330

sub_203810:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203818:
	move.b (a0),d0
	beq.s loc_20382e
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c32).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20382e:
	lea $40(a0),a0
	dbf d7,loc_203818
	rts

sub_203838:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203876
	bpl.s loc_203868
	btst.b #$1,$2c(a0)
	beq.s loc_203868
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203876
loc_203868:
	btst.b #$2,$2c(a0)
	bne.s loc_203876
	addi.w #$38,$12(a0)
loc_203876:
	tst.w $12(a0)
	bmi.s loc_20388a
	cmpi.w #$1000,$12(a0)
	bcs.s loc_20388a
	move.w #$1000,$12(a0)
loc_20388a:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_20389a:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2038d6
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2038d6
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2038d4
	neg.w d1
loc_2038d4:
	add.w d1,d0
loc_2038d6:
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

sub_2038f0:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203960
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20397c
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_20397c
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_20393a
	cmpi.w #$800,d3
	bcs.s loc_20394c
	subi.w #$800,d3
	bra.s loc_20394c
loc_20393a:
	cmpi.w #$700,($f704).w
	bcs.s loc_20394c
	cmpi.w #$100,d3
	bcc.s loc_20394c
	addi.w #$800,d3
loc_20394c:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20397c
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_20397c
loc_203960:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_20397c
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_20397c:
	rts
	.incbin 14718, 30

sub_20399c:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2039a2:
	move.l d1,(a1)+
	dbf d0,loc_2039a2
	rts
dat_2039aa:
	.incbin 14762, 16

sub_2039ba:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2039c6:
	tst.w (a4)
	beq.w loc_203a86
	moveq #$2,d6
loc_2039ce:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a7e
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a34
	movea.l dat_2039aa(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a18
	cmpi.w #$800,d2
	bcs.s loc_203a2a
	subi.w #$800,d2
	bra.s loc_203a2a
loc_203a18:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a2a
	cmpi.w #$100,d2
	bcc.s loc_203a2a
	addi.w #$800,d2
loc_203a2a:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a56
loc_203a34:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a56
	.incbin 14910, 24
loc_203a56:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a74
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a78
loc_203a74:
	bsr.w sub_203aa8
loc_203a78:
	bset.b #$7,$1(a0)
loc_203a7e:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2039ce
loc_203a86:
	lea $80(a4),a4
	dbf d7,loc_2039c6
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203aa0
	move.l #$0,(a2)
	rts
loc_203aa0:
	move.b #$0,-$5(a2)
	rts

sub_203aa8:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203aee
	btst.l #$1,d4
	bne.w loc_203b3c
loc_203aba:
	cmpi.b #$50,d5
	beq.s loc_203aec
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
	bne.s loc_203ae6
	addq.w #$1,d0
loc_203ae6:
	move.w d0,(a2)+
	dbf d1,loc_203aba
loc_203aec:
	rts
loc_203aee:
	btst.l #$1,d4
	bne.w loc_203b82
loc_203af6:
	cmpi.b #$50,d5
	beq.s loc_203b3a
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
	bne.s loc_203b34
	addq.w #$1,d0
loc_203b34:
	move.w d0,(a2)+
	dbf d1,loc_203af6
loc_203b3a:
	rts
loc_203b3c:
	cmpi.b #$50,d5
	beq.s loc_203b80
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
	bne.s loc_203b7a
	addq.w #$1,d0
loc_203b7a:
	move.w d0,(a2)+
	dbf d1,loc_203b3c
loc_203b80:
	rts
loc_203b82:
	cmpi.b #$50,d5
	beq.s loc_203bd4
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
	bne.s loc_203bce
	addq.w #$1,d0
loc_203bce:
	move.w d0,(a2)+
	dbf d1,loc_203b82
loc_203bd4:
	rts
	.incbin 15318, 92
dat_203c32:
	.incbin 15410, 274

sub_203d44:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d56
	move.w #$0,(a1)
	rts
loc_203d56:
	tst.w (a1)
	bne.s loc_203d60
	move.b #$1,$1(a1)
loc_203d60:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203daa
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d9c
	neg.w $10(a0)
loc_203d9c:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205ad6
loc_203daa:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203dc8
	cmpa.w #$d040,a0
	beq.s loc_203dc8
	tst.b ($ff1906).l
	beq.s loc_203dc8
	jmp (loc_207150).l
loc_203dc8:
	move.b $2a(a0),d0
	beq.s loc_203df2
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203de4
	cmpi.b #$2d,d0
	bcs.s loc_203dee
	move.b #$2d,d0
	bra.s loc_203dee
loc_203de4:
	cmpi.b #$1e,d0
	bcs.s loc_203dee
	move.b #$1e,d0
loc_203dee:
	move.b d0,$2a(a0)
loc_203df2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203e00(pc,d0.w),d1
	jmp dat_203e00(pc,d1.w)
dat_203e00:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203e0a:
	tst.b ($d300).w
	bne.s loc_203e48
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e48:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e70
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e70:
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203ea4:
	tst.b ($ff1506).l
	bne.s loc_203f0a
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203f0a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f0e
	cmpi.b #$2f,d1
	bne.s loc_203f0c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f0a
	tst.b $2c(a0)
	beq.s loc_203f0a
	jsr (sub_207588).l
	bne.s loc_203f0a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203f02
	moveq #$0,d0
loc_203f02:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f0a:
	rts
loc_203f0c:
	rts

sub_203f0e:
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

sub_203f34:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f40
	neg.w d0
loc_203f40:
	btst.b #$1,$2c(a0)
	beq.s loc_203f50
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203f78
loc_203f50:
	cmpi.w #$600,d0
	bcs.s loc_203f78
	tst.w $14(a0)
	bpl.s loc_203f6a
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203f86
	move.w #$e0,d1
	bra.s loc_203f86
loc_203f6a:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203f86
	move.w #$60,d1
	bra.s loc_203f86
loc_203f78:
	cmpi.w #$a0,d1
	beq.s loc_203f86
	bcc.s loc_203f84
	addq.w #$2,d1
	bra.s loc_203f86
loc_203f84:
	subq.w #$2,d1
loc_203f86:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203f34
	bsr.w sub_203ea4
	tst.w ($ff1588).l
	beq.s loc_203fac
	btst.b #$4,($f605).w
	beq.s loc_203fac
	move.b #$1,($ff1906).l
	rts
loc_203fac:
	tst.b ($f7cc).w
	bne.s loc_203fb8
	move.w ($f604).w,($f602).w
loc_203fb8:
	btst.b #$0,$2c(a0)
	beq.s loc_203fdc
	cmpi.b #$6,($ff1506).l
	bne.s loc_203fd6
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203ff4
loc_203fd6:
	bsr.w sub_2042be
	bra.s loc_203ff4
loc_203fdc:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20403a(pc,d0.w),d1
	jsr dat_20403a(pc,d1.w)
	jsr (sub_2065de).l
loc_203ff4:
	bsr.s sub_204048
	bsr.w sub_204108
	bsr.w sub_204122
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_20401c
	tst.b $1c(a0)
	bne.s loc_20401c
	move.b $1d(a0),$1c(a0)
loc_20401c:
	bsr.w sub_2054c6
	tst.b $2c(a0)
	bmi.s loc_204034
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204034
	jsr (sub_206c56).l
loc_204034:
	bsr.w sub_20537c
	rts
dat_20403a:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204048:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20406c
	move.w $30(a0),d0
	beq.s loc_20405e
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20406c
loc_20405e:
	btst.b #$6,$2c(a0)
	bne.s loc_20406c
	jsr (sub_2038f0).l
loc_20406c:
	tst.b ($ff151f).l
	beq.s loc_2040b0
	tst.w $32(a0)
	beq.s loc_2040b0
	subq.w #$1,$32(a0)
	bne.s loc_2040b0
	tst.b ($ff1520).l
	bne.s loc_2040a8
	tst.b ($ff1958).l
	bne.s loc_2040a8
	tst.b ($ff152e).l
	bne.s loc_2040a2
	move.w #$e,d0
	jsr (sub_205ad6).l
loc_2040a2:
	jsr (sub_201aba).l
loc_2040a8:
	move.b #$0,($ff151f).l
loc_2040b0:
	tst.b ($ff1520).l
	beq.s loc_204106
	tst.w $34(a0)
	beq.s loc_204106
	subq.w #$1,$34(a0)
	bne.s loc_204106
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2040fe
	tst.b ($ff1958).l
	bne.s loc_2040fe
	tst.b ($ff152e).l
	bne.s loc_2040f8
	move.w #$e,d0
	jsr (sub_205ad6).l
loc_2040f8:
	jsr (sub_201aba).l
loc_2040fe:
	move.b #$0,($ff1520).l
loc_204106:
	rts

sub_204108:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204122:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20412e
loc_20412c:
	rts
loc_20412e:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204140
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20412c
loc_204140:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204184
	bset.b #$6,$22(a0)
	bne.s loc_20412c
	bsr.w sub_205dda
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20412c
	bra.s loc_2041bc
loc_204184:
	tst.w $12(a0)
	beq.s loc_20418c
	bpl.s loc_20412c
loc_20418c:
	bclr.b #$6,$22(a0)
	beq.s loc_20412c
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20412c
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2041bc
	move.w #$f000,$12(a0)
loc_2041bc:
	jsr (sub_207588).l
	bne.s loc_2041d0
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2041d0:
	rts

sub_2041d2:
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
	bcs.s loc_2042ac
	move.l #$50000,d0
loc_2042ac:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2042be:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2042e4
	tst.b ($ff152e).l
	beq.s loc_2042da
	cmpi.b #$2,($ff152e).l
	bne.s loc_2042e4
loc_2042da:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204394
loc_2042e4:
	tst.b $2a(a0)
	bne.w loc_2043a2
	tst.b ($f784).w
	beq.w loc_2043a2
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204302
	neg.w d0
loc_204302:
	tst.w ($f786).w
	bne.s loc_20430e
	move.w #$1,($f786).w
loc_20430e:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204324
	move.b #$1,($ff1502).l
	bra.w loc_205ad2
loc_204324:
	cmpi.w #$d2,d1
	bcs.s loc_204378
	cmpi.b #$2,($ff1522).l
	beq.s loc_204376
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20434e
	move.w #$82,d0
	jsr (sub_205ad6).l
	moveq #$0,d0
loc_20434e:
	add.b ($f784).w,d0
	bpl.s loc_204358
	moveq #$0,d0
	bra.s loc_204360
loc_204358:
	cmpi.b #$3,d0
	bcs.s loc_204360
	moveq #$2,d0
loc_204360:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2041d2
	move.b #$2,($ff1522).l
loc_204376:
	rts
loc_204378:
	cmpi.w #$5a,d1
	bcc.s loc_204390
	cmp.w d2,d0
	bcc.w loc_203e0a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204390:
	cmp.w d2,d0
	bcc.s loc_2043a2
loc_204394:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2043a2:
	rts
	bsr.w sub_203d44
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2043d4
	tst.b ($ff195b).l
	beq.s loc_2043c2
	cmpi.b #$79,$1a(a0)
	bne.s loc_2043fe
	bra.s loc_2043ca
loc_2043c2:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2043fe
loc_2043ca:
	bsr.w sub_204c66
	jmp (sub_203838).l
loc_2043d4:
	bsr.w sub_2044ac
	bsr.w sub_2042be
	bsr.w sub_204d50
	bsr.w sub_204e7c
	bsr.w sub_204520
	bsr.w sub_204cd2
	bsr.w sub_204c66
	jsr (sub_20389a).l
	bsr.w sub_200bca
	bsr.w sub_204efa
loc_2043fe:
	rts
	.incbin 17408, 172

sub_2044ac:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204518
	tst.w ($ff1506).l
	bne.s loc_204518
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20451a).l,a2
loc_2044e0:
	move.b (a2)+,d0
	bmi.s loc_2044f0
	cmp.b d0,d1
	bne.s loc_2044e0
	bset.b #$1,$2c(a0)
	rts
loc_2044f0:
	bclr.b #$1,$2c(a0)
	beq.s loc_204518
	tst.w $12(a0)
	bpl.s loc_204518
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204518
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204518
	neg.w $10(a0)
loc_204518:
	rts
dat_20451a:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204520:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_20484a
	tst.w $3e(a0)
	bne.w loc_2047fa
	btst.b #$2,($f602).w
	beq.s loc_204548
	bsr.w sub_2048da
loc_204548:
	btst.b #$3,($f602).w
	beq.s loc_204554
	bsr.w sub_204950
loc_204554:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2047fa
	tst.w $14(a0)
	beq.s loc_204574
	tst.b $2a(a0)
	beq.w loc_2047fa
	bra.s loc_204580
loc_204574:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204580:
	btst.b #$3,$22(a0)
	beq.s loc_2045d2
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20462a
	cmpi.b #$1e,$0(a1)
	bne.s loc_2045b2
	move.b #$0,$1c(a0)
	bra.w loc_2047fa
loc_2045b2:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20460e
	cmp.w d2,d1
	bge.s loc_2045fc
	bra.s loc_20462a
loc_2045d2:
	jsr (sub_2069ba).l
	cmpi.w #$c,d1
	blt.s loc_20462a
	move.w #$ab,d0
	jsr (sub_2022c6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204606
loc_2045fc:
	btst.b #$0,$22(a0)
	bne.s loc_204616
	bra.s loc_204620
loc_204606:
	cmpi.b #$3,$37(a0)
	bne.s loc_20462a
loc_20460e:
	btst.b #$0,$22(a0)
	bne.s loc_204620
loc_204616:
	move.b #$32,$1c(a0)
	bra.w loc_2047fa
loc_204620:
	move.b #$6,$1c(a0)
	bra.w loc_2047fa
loc_20462a:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20463e
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20463e:
	btst.b #$7,($f788).w
	bne.w loc_204742
	btst.b #$6,($f788).w
	bne.w loc_204762
	btst.b #$1,($f602).w
	bne.w loc_204762
	andi.b #$f,($f788).w
	beq.s loc_204676
	btst.b #$0,($f603).w
	beq.s loc_20468a
	bset.b #$7,($f788).w
	bra.w loc_20481e
loc_204676:
	btst.b #$0,($f603).w
	beq.w loc_20468a
	move.b #$1,($f788).w
	bra.w loc_20481e
loc_20468a:
	btst.b #$0,($f602).w
	beq.s loc_204706
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2046e8
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2046ba
	asr.w #$1,d2
	sub.w d2,d1
loc_2046ba:
	btst.b #$0,$22(a0)
	beq.s loc_2046c6
	neg.w d0
	neg.w d1
loc_2046c6:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2046dc
	cmp.w d0,d1
	ble.s loc_2046e2
	bra.s loc_2046e0
loc_2046dc:
	cmp.w d1,d0
	ble.s loc_2046e2
loc_2046e0:
	move.w d1,d0
loc_2046e2:
	move.w d0,$14(a0)
	rts
loc_2046e8:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204702
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022c6).l
loc_204702:
	bra.w loc_20481e
loc_204706:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204726
	move.w #$ab,d0
	jsr (sub_2022c6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204762
loc_204726:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022c6).l
	bra.w loc_2047fa
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204742:
	btst.b #$0,($f602).w
	beq.s loc_204762
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20481e
	addq.w #$2,($f73e).w
	bra.w loc_20481e
loc_204762:
	btst.b #$6,($f788).w
	bne.w loc_2047de
	andi.b #$f,($f788).w
	beq.s loc_204786
	btst.b #$1,($f603).w
	beq.s loc_204798
	bset.b #$6,($f788).w
	bra.w loc_20481e
loc_204786:
	btst.b #$1,($f603).w
	beq.s loc_204798
	move.b #$1,($f788).w
	bra.w loc_20481e
loc_204798:
	btst.b #$1,($f602).w
	beq.s loc_2047fa
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2047dc
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047dc
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2047ce
	neg.w $14(a0)
loc_2047ce:
	move.w #$9c,d0
	jsr (sub_2022c6).l
	bsr.w sub_204cfa
loc_2047dc:
	bra.s loc_20481e
loc_2047de:
	btst.b #$1,($f602).w
	beq.s loc_2047fa
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20481e
	subq.w #$2,($f73e).w
	bra.s loc_20481e
loc_2047fa:
	cmpi.w #$60,($f73e).w
	bne.s loc_204814
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20481e
	move.b #$0,($f788).w
	bra.s loc_20481e
loc_204814:
	bcc.s loc_20481a
	addq.w #$4,($f73e).w
loc_20481a:
	subq.w #$2,($f73e).w
loc_20481e:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20484a
	move.w $14(a0),d0
	beq.s loc_20484a
	bmi.s loc_20483e
	sub.w d5,d0
	bcc.s loc_204838
	move.w #$0,d0
loc_204838:
	move.w d0,$14(a0)
	bra.s loc_20484a
loc_20483e:
	add.w d5,d0
	bcc.s loc_204846
	move.w #$0,d0
loc_204846:
	move.w d0,$14(a0)
loc_20484a:
	move.b $26(a0),d0
	jsr (sub_2007ca).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2048d8
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2048d8
	bmi.s loc_204880
	neg.w d1
loc_204880:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_20687a
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2048d8
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2048d4
	cmpi.b #$40,d0
	beq.s loc_2048c2
	cmpi.b #$80,d0
	beq.s loc_2048bc
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048bc:
	sub.w d1,$12(a0)
	rts
loc_2048c2:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048d4:
	add.w d1,$12(a0)
loc_2048d8:
	rts

sub_2048da:
	tst.b $2a(a0)
	bne.s loc_20494e
	move.w $14(a0),d0
	beq.s loc_2048e8
	bpl.s loc_204918
loc_2048e8:
	bset.b #$0,$22(a0)
	bne.s loc_2048fc
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048fc:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20490c
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20490c
	move.w d1,d0
loc_20490c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204918:
	sub.w d4,d0
	bcc.s loc_204920
	move.w #$ff80,d0
loc_204920:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20494e
	cmpi.w #$400,d0
	blt.s loc_20494e
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022c6).l
loc_20494e:
	rts

sub_204950:
	tst.b $2a(a0)
	bne.s loc_2049be
	move.w $14(a0),d0
	bmi.s loc_204988
	bclr.b #$0,$22(a0)
	beq.s loc_204970
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204970:
	cmp.w d6,d0
	bge.s loc_20497c
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_20497c
	move.w d6,d0
loc_20497c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204988:
	add.w d4,d0
	bcc.s loc_204990
	move.w #$80,d0
loc_204990:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2049be
	cmpi.w #$fc00,d0
	bgt.s loc_2049be
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022c6).l
loc_2049be:
	rts
	.incbin 18880, 678

sub_204c66:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204cba
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204c94
	addi.w #$38,d0
loc_204c94:
	cmp.w d1,d0
	bls.s loc_204cba
loc_204c98:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204ca8
	rts
loc_204ca8:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206f2e
	move.b #$6,$24(a0)
	rts
loc_204cba:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204c98

sub_204cd2:
	tst.b ($f7ca).w
	bne.s loc_204cf8
	move.w $14(a0),d0
	bpl.s loc_204ce0
	neg.w d0
loc_204ce0:
	cmpi.w #$80,d0
	bcs.s loc_204cf8
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204cf8
	btst.b #$1,($f602).w
	bne.s sub_204cfa
loc_204cf8:
	rts

sub_204cfa:
	btst.b #$2,$22(a0)
	beq.s loc_204d04
	bra.s loc_204d34
loc_204d04:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d24
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d34
loc_204d24:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d34:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d4e
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d4e
	move.w #$200,$14(a0)
loc_204d4e:
	rts

sub_204d50:
	tst.b $2a(a0)
	beq.s loc_204d58
	rts
loc_204d58:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204d6a
	tst.w $14(a0)
	beq.w loc_204e30
loc_204d6a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204e30
	btst.b #$3,$22(a0)
	beq.s loc_204d86
	jsr (sub_205a5c).l
	beq.s loc_204db6
loc_204d86:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2068e4
	cmpi.w #$6,d1
	blt.w loc_204e30
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204dac
	move.w #$380,d2
loc_204dac:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204db6:
	jsr (sub_2007ca).l
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
	jsr (sub_2022c6).l
	btst.b #$2,$22(a0)
	bne.s loc_204e32
	tst.b ($ff195b).l
	beq.s loc_204e14
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e24
loc_204e14:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e24:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204e30:
	rts
loc_204e32:
	bset.b #$4,$22(a0)
	rts
	.incbin 20026, 66

sub_204e7c:
	tst.b $2a(a0)
	bne.s loc_204eb6
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204eb6
	move.b $26(a0),d0
	jsr (sub_2007ca).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204eb6
	bmi.s loc_204eb2
	tst.w d0
	beq.s loc_204eb0
	add.w d0,$14(a0)
loc_204eb0:
	rts
loc_204eb2:
	add.w d0,$14(a0)
loc_204eb6:
	rts
	.incbin 20152, 66

sub_204efa:
	nop
	tst.b $38(a0)
	bne.s loc_204f3c
	tst.w $3e(a0)
	bne.s loc_204f3e
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204f3c
	move.w $14(a0),d0
	bpl.s loc_204f1e
	neg.w d0
loc_204f1e:
	cmpi.w #$280,d0
	bcc.s loc_204f3c
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204f3c:
	rts
loc_204f3e:
	subq.w #$1,$3e(a0)
	rts
	.incbin 20292, 308
	move.w #$0,$12(a0)
	rts
	.incbin 20608, 32
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
	.incbin 20654, 190

sub_20516c:
	btst.b #$4,$22(a0)
	beq.s loc_205176
	nop
loc_205176:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2051d0
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2051b0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2051c0
loc_2051b0:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2051c0:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2022c6).l
loc_2051d0:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20958, 414

sub_20537c:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2053a4
	cmpi.b #$5,($ff1506).l
	beq.s loc_2053a4
	cmpi.b #$2,($ff1506).l
	beq.s loc_2053a4
	tst.b ($ff1506).l
	bne.w loc_205466
loc_2053a4:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2053e2
	tst.b ($ff1506).l
	bne.w loc_205468
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205468
	bra.s loc_2053ea
loc_2053e2:
	cmp.b ($f7af).w,d1
	beq.w loc_205468
loc_2053ea:
	cmp.b ($f7ac).w,d1
	beq.s loc_20541a
	cmp.b ($f7ad).w,d1
	beq.s loc_2053fe
	bclr.b #$6,$1(a0)
	rts
loc_2053fe:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205480
	btst.b #$1,$22(a0)
	beq.s loc_20541a
	bclr.b #$6,$1(a0)
	rts
loc_20541a:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20542c
	bclr.b #$6,$1(a0)
	rts
loc_20542c:
	cmpi.b #$e0,d2
	bcs.s loc_20543a
	bset.b #$6,$1(a0)
	rts
loc_20543a:
	btst.b #$6,$1(a0)
	bne.s loc_205456
	move.b $26(a0),d1
	beq.s loc_205466
	cmpi.b #$80,d1
	bhi.s loc_205466
	bset.b #$6,$1(a0)
	rts
loc_205456:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205466
	bclr.b #$6,$1(a0)
loc_205466:
	rts
loc_205468:
	btst.b #$2,$22(a0)
	bne.s loc_20547a
	move.w #$9c,d0
	jsr (sub_2022c6).l
loc_20547a:
	jmp (sub_204cfa).l
loc_205480:
	tst.w $12(a0)
	bmi.s loc_2054c4
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2054b8
	cmpi.w #$38,d1
	bcs.s loc_2054b0
	cmpi.w #$80,d1
	bcs.s loc_2054c4
loc_2054a8:
	bclr.b #$6,$1(a0)
	rts
loc_2054b0:
	bset.b #$6,$1(a0)
	rts
loc_2054b8:
	cmpi.w #$38,d1
	bcs.s loc_2054a8
	cmpi.w #$80,d1
	bcc.s loc_2054b0
loc_2054c4:
	rts

sub_2054c6:
	lea (dat_2057b6).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2054e8
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2054e8:
	bsr.w sub_205758
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205560
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20552e
	move.b d0,$1e(a0)

sub_205512:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205526
	bpl.s loc_205526
	cmpi.b #$fd,d0
	bge.s loc_205530
loc_205526:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20552e:
	rts
loc_205530:
	addq.b #$1,d0
	bne.s loc_205540
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205526
loc_205540:
	addq.b #$1,d0
	bne.s loc_205554
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205526
loc_205554:
	addq.b #$1,d0
	bne.s loc_20555e
	move.b $2(a1,d1.w),$1c(a0)
loc_20555e:
	rts
loc_205560:
	subq.b #$1,$1e(a0)
	bpl.s loc_20552e
	addq.b #$1,d0
	bne.w loc_20561a
	tst.b ($ff195b).l
	bne.w loc_2056e2
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205588
	not.b d0
loc_205588:
	btst.b #$1,$2c(a0)
	bne.s loc_205596
	addi.b #$10,d0
	bra.s loc_205598
loc_205596:
	addq.b #$8,d0
loc_205598:
	bpl.s loc_20559c
	moveq #$3,d1
loc_20559c:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20568e
	move.w $14(a0),d2
	bpl.s loc_2055ba
	neg.w d2
loc_2055ba:
	btst.b #$1,$2c(a0)
	beq.s loc_2055d2
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2059b8).l,a1
	bra.s loc_2055fc
loc_2055d2:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205992).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2055fc
	lea (dat_205836).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2055fc
	lea (dat_20582e).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2055fc:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20560a
	moveq #$0,d2
loc_20560a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205512
	add.b d3,$1a(a0)
	rts
loc_20561a:
	addq.b #$1,d0
	bne.s loc_20568a
	move.w $14(a0),d2
	bpl.s loc_205626
	neg.w d2
loc_205626:
	lea (dat_205914).l,a1
	tst.b ($ff195b).l
	bne.s loc_205664
	lea (dat_205846).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205658
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205664
	lea (dat_2059c0).l,a1
	bra.s loc_205664
loc_205658:
	cmpi.w #$600,d2
	bcc.s loc_205664
	lea (dat_20583e).l,a1
loc_205664:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20566e
	moveq #$0,d2
loc_20566e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205512
loc_20568a:
	addq.b #$1,d0
	bne.s loc_2056ce
loc_20568e:
	move.w $14(a0),d2
	bmi.s loc_205696
	neg.w d2
loc_205696:
	addi.w #$800,d2
	bpl.s loc_20569e
	moveq #$0,d2
loc_20569e:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205926).l,a1
	tst.b ($ff195b).l
	bne.s loc_2056b8
	lea (dat_20584e).l,a1
loc_2056b8:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205512
loc_2056ce:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2056e2:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056f4
	not.b d0
loc_2056f4:
	addi.b #$10,d0
	bpl.s loc_2056fc
	moveq #$0,d1
loc_2056fc:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20572a
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20561a
loc_20572a:
	move.w $14(a0),d2
	bpl.s loc_205732
	neg.w d2
loc_205732:
	lea (dat_20590e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205744
	lea (dat_205908).l,a1
loc_205744:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20574e
	moveq #$0,d2
loc_20574e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205512

sub_205758:
	tst.b ($ff195b).l
	beq.s loc_205764
	move.b dat_205766(pc,d0.w),d0
loc_205764:
	rts
dat_205766:
	.incbin 22374, 80
dat_2057b6:
	.incbin 22454, 120
dat_20582e:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205836:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20583e:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205846:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20584e:
	.incbin 22606, 186
dat_205908:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20590e:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205914:
	.incbin 22804, 18
dat_205926:
	.incbin 22822, 108
dat_205992:
	.incbin 22930, 38
dat_2059b8:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2059c0:
	.incbin 22976, 56

sub_2059f8:
	tst.b (a0)
	beq.w loc_205a5a
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205a5a
	move.b d0,(a2)
	lea (dat_22f1b0).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205a5a
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205a2c:
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
loc_205a46:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a46
	dbf d1,loc_205a2c
loc_205a5a:
	rts

sub_205a5c:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205ad0
	move.w #$98,d0
	jsr (sub_2022c6).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a62).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205abe
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205abe:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205ad0:
	rts
loc_205ad2:
	move.w #$e,d0

sub_205ad6:
	cmpi.w #$67,d0
	bne.s loc_205ae4
	move.b #$1,($ff1958).l
loc_205ae4:
	move.w d0,($a12010).l
loc_205aea:
	move.w ($a12020).l,d0
	beq.s loc_205aea
	cmp.w ($a12020).l,d0
	bne.s loc_205aea
	move.w #$0,($a12010).l
loc_205b02:
	move.w ($a12020).l,d0
	bne.s loc_205b02
	move.w ($a12020).l,d0
	bne.s loc_205b02
	rts
	dc.b $00,$00

sub_205b16:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205b32
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205b32:
	subq.b #$1,$1e(a0)
	bpl.s loc_205b72
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205b74
loc_205b4e:
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
loc_205b72:
	rts
loc_205b74:
	addq.b #$1,d0
	bne.s loc_205b84
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b4e
loc_205b84:
	addq.b #$1,d0
	bne.s loc_205b98
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b4e
loc_205b98:
	addq.b #$1,d0
	bne.s loc_205ba2
	move.b $2(a1,d1.w),$1c(a0)
loc_205ba2:
	addq.b #$1,d0
	bne.s loc_205baa
	addq.b #$2,$24(a0)
loc_205baa:
	addq.b #$1,d0
	bne.s loc_205bb8
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205bb8:
	addq.b #$1,d0
	bne.s loc_205bc0
	addq.b #$2,$25(a0)
loc_205bc0:
	rts
	.incbin 23490, 536

sub_205dda:
	rts
	.incbin 24028, 738

sub_2060be:
	tst.w $12(a1)
	bpl.s loc_206100
	bsr.w sub_206174
	beq.s loc_206100
	move.b #$4,$24(a0)
	tst.b $28(a0)
	bne.s loc_2060fe
	jsr (sub_207588).l
	bne.s loc_2060fe
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$4,$c(a1)
	move.w #$a4,d0
	jmp (sub_2022c6).l
loc_2060fe:
	rts
loc_206100:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208cca).l
	.incbin 24846, 18
	ori.b #$4,$1(a0)
	move.b #$2c,$19(a0)
	cmpi.b #$2,$28(a0)
	bne.s loc_20613a
	move.b #$18,$19(a0)
loc_20613a:
	move.b #$8,$16(a0)
	moveq #$c,d0
	jsr (sub_20cf28).l
	lea ($d000).w,a1
	bsr.w sub_2060be
	lea ($d040).w,a1
	bra.w sub_2060be
	.incbin 24920, 28

sub_206174:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	moveq #$0,d1
	move.b $19(a0),d1
	add.w d1,d0
	bmi.s loc_2061a8
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_2061a8
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$0,d1
	move.b $16(a0),d1
	add.w d1,d0
	bmi.s loc_2061a8
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_2061a8
	moveq #$1,d0
	rts
loc_2061a8:
	moveq #$0,d0
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2061ba(pc,d0.w),d0
	jmp dat_2061ba(pc,d0.w)
dat_2061ba:
	.incbin 25018, 400
loc_20634a:
	move.b ($d022).w,$22(a0)
	lea (dat_23c228).l,a1
	jsr (sub_205b16).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_20636e
	rts
loc_20636e:
	cmp.b $24(a0),d0
	beq.s loc_206384
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_206384:
	jmp (sub_2038f0).l

sub_20638a:
	bclr.b #$7,($ff156b).l
	beq.s loc_2063d8
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2063da(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2063ae:
	move.l (a1)+,(a2)+
	dbf d0,loc_2063ae
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2063d8:
	rts
dat_2063da:
	.incbin 25562, 516

sub_2065de:
	cmpi.b #$2,($ff1507).l
	bne.s loc_2065ea
	rts
loc_2065ea:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200f38).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	bsr.s sub_206660
	bne.s loc_206642
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200f38).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	bsr.s sub_206660
	beq.s loc_20665e
loc_206642:
	move.w #$1,d0
	btst.l #$b,d4
	beq.s loc_20664e
	neg.w d0
loc_20664e:
	andi.w #$7ff,d4
	cmpi.w #$114,d4
	bne.s loc_20665a
	neg.w d0
loc_20665a:
	add.w d0,$8(a0)
loc_20665e:
	rts

sub_206660:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_206678
	add.b ($ff156a).l,d1
loc_206678:
	add.w d1,d1
	move.w dat_20669c(pc,d1.w),d1
	lea dat_20669c(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_206688:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_206698
	addq.w #$2,d1
	dbf d6,loc_206688
	moveq #$0,d0
	rts
loc_206698:
	moveq #$1,d0
	rts
dat_20669c:
	.incbin 26268, 24
loc_2066b4:
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
	bne.s loc_20676e
	move.b ($ff1593).l,($ff195b).l
loc_20676e:
	tst.b ($ff1522).l
	bpl.s loc_206784
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206784:
	rts

sub_206786:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2066b4
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
	bne.s loc_206840
	move.b ($ff1591).l,($ff195b).l
loc_206840:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206862
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206862:
	tst.b ($ff1522).l
	bpl.s loc_206878
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206878:
	rts

sub_20687a:
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
	bpl.s loc_2068b6
	move.b d1,d0
	bpl.s loc_2068b0
	subq.b #$1,d0
loc_2068b0:
	addi.b #$20,d0
	bra.s loc_2068c0
loc_2068b6:
	move.b d1,d0
	bpl.s loc_2068bc
	addq.b #$1,d0
loc_2068bc:
	addi.b #$1f,d0
loc_2068c0:
	andi.b #$c0,d0
	beq.w loc_206990
	cmpi.b #$80,d0
	beq.w loc_206b2c
	andi.b #$38,d1
	bne.s loc_2068d8
	addq.w #$8,d2
loc_2068d8:
	cmpi.b #$40,d0
	beq.w loc_206c02
	bra.w loc_206a64

sub_2068e4:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206b8a
	cmpi.b #$80,d0
	beq.w loc_206ab4
	cmpi.b #$c0,d0
	beq.w loc_2069f4

sub_20690c:
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
	jsr (sub_201120).l
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
	jsr (sub_201120).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206970:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_20697e
	move.b ($f768).w,d3
	exg d0,d1
loc_20697e:
	btst.l #$0,d3
	beq.s loc_206986
	move.b d2,d3
loc_206986:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206990:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201120).l
	move.b #$0,d2
loc_2069ac:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2069b8
	move.b d2,d3
loc_2069b8:
	rts

sub_2069ba:
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
	jsr (sub_201120).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2069f2
	move.b #$0,d3
loc_2069f2:
	rts
loc_2069f4:
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
	jsr (sub_201290).l
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
	jsr (sub_201290).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206970
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a64:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201290).l
	move.b #$c0,d2
	bra.w loc_2069ac
	.incbin 27268, 48
loc_206ab4:
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
	jsr (sub_201120).l
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
	jsr (sub_201120).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206970

sub_206b24:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b2c:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201120).l
	move.b #$80,d2
	bra.w loc_2069ac
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
	jsr (sub_201120).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b88
	move.b #$80,d3
loc_206b88:
	rts
loc_206b8a:
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
	jsr (sub_201290).l
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
	jsr (sub_201290).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206970
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206c02:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201290).l
	move.b #$40,d2
	bra.w loc_2069ac
	.incbin 27686, 48

sub_206c56:
	btst.b #$0,$2c(a0)
	beq.s loc_206c62
	moveq #$0,d0
	rts
loc_206c62:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206c86
	addi.w #$c,d3
	moveq #$a,d5
loc_206c86:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206c94:
	tst.b $1(a1)
	bpl.s loc_206ca0
	move.b $20(a1),d0
	bne.s loc_206cac
loc_206ca0:
	lea $40(a1),a1
	dbf d6,loc_206c94
	moveq #$0,d0
	rts
loc_206cac:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2070d2).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206cd4
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206cda
	bra.w loc_206ca0
loc_206cd4:
	cmp.w d4,d0
	bhi.w loc_206ca0
loc_206cda:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206cf2
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206cf8
	bra.w loc_206ca0
loc_206cf2:
	cmp.w d5,d0
	bhi.w loc_206ca0
loc_206cf8:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206d90
	cmpi.b #$c0,d1
	beq.w loc_206f86
	tst.b d1
	bmi.w loc_206d14
	bra.s loc_206d20
loc_206d14:
	tst.b ($ff151f).l
	bne.s loc_206ca0
	bra.w sub_206e5a
loc_206d20:
	tst.b ($ff1956).l
	beq.s loc_206d30
	tst.b $29(a1)
	bne.s loc_206d38
	rts
loc_206d30:
	tst.b $29(a1)
	beq.s loc_206d38
	rts
loc_206d38:
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206d54
	cmpi.w #$5a,$30(a0)
	bcc.s loc_206d52
	addq.b #$2,$24(a1)
loc_206d52:
	rts
loc_206d54:
	tst.w $12(a0)
	bpl.s loc_206d7e
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206d8e
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206d8e
	addq.b #$4,$25(a1)
	rts
loc_206d7e:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206d8e
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206d8e:
	rts

sub_206d90:
	tst.b ($ff1521).l
	bne.s loc_206daa
	tst.b ($ff151f).l
	bne.s loc_206daa
	cmpi.b #$2,$1c(a0)
	bne.w sub_206e5a
loc_206daa:
	tst.b $21(a1)
	beq.s loc_206dd4
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206dd2
	bset.b #$7,$22(a1)
loc_206dd2:
	rts
loc_206dd4:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206dec
	moveq #$6,d0
loc_206dec:
	move.w d0,$3e(a1)
	move.w dat_206e4c(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206e06
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206e06:
	bsr.w sub_20a6c8
	move.w #$96,d0
	jsr (sub_2022c6).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206e3c
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206e44
	neg.w $12(a0)
	rts
loc_206e3c:
	addi.w #$100,$12(a0)
	rts
loc_206e44:
	subi.w #$100,$12(a0)
	rts
dat_206e4c:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206e5a:
	btst.b #$0,$2c(a0)
	bne.s loc_206e72
	tst.b ($ff1521).l
	bne.s loc_206e72
	tst.b ($ff151f).l
	beq.s loc_206e76
loc_206e72:
	moveq #$ffffffff,d0
	rts
loc_206e76:
	nop
	tst.w $30(a0)
	bne.s loc_206e72
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206eba
	tst.w ($ff1512).l
	beq.w loc_206f24
	jsr (sub_207588).l
	bne.s loc_206eba
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b ($ff1956).l
	beq.s loc_206eba
	move.b #$1,$29(a1)
loc_206eba:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206ed0
	move.b #$0,($ff156f).l
loc_206ed0:
	move.b #$4,$24(a0)
	bsr.w sub_20516c
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206f00
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206f00:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206f0e
	neg.w $10(a0)
loc_206f0e:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206f24:
	tst.w ($ff1588).l
	bne.w loc_206eba

sub_206f2e:
	tst.w ($ff1906).l
	bne.s loc_206f82
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20516c
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2022c6).l
loc_206f82:
	moveq #$ffffffff,d0
	rts
loc_206f86:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$6,d1
	beq.w loc_207096
	cmpi.b #$17,d1
	beq.w loc_20701e
	cmpi.b #$1f,d1
	beq.w loc_20701e
	cmpi.b #$22,d1
	beq.w loc_207066
	cmpi.b #$23,d1
	beq.w loc_20701e
	cmpi.b #$2d,d1
	beq.w loc_207074
	cmpi.b #$30,d1
	beq.w loc_207080
	tst.b ($f7aa).w
	beq.w loc_20701c
	cmpi.b #$1,($f7aa).w
	beq.s loc_206fe6
	cmpi.b #$4,($f7aa).w
	beq.s loc_207008
	cmpi.b #$5,($f7aa).w
	beq.s loc_207016
loc_206fe6:
	cmpi.b #$3c,d1
	blt.s loc_20701c
	cmpi.b #$3f,d1
	bgt.s loc_20701c
	bsr.w sub_206d90
	tst.b $20(a1)
	bne.s loc_207000
	addq.b #$3,$21(a1)
loc_207000:
	clr.b $20(a1)
	bra.w loc_20701e
loc_207008:
	cmpi.b #$3f,d1
	beq.s loc_20702a
	cmpi.b #$3e,d1
	beq.s loc_207024
	bra.s loc_20701c
loc_207016:
	cmpi.b #$3d,d1
	beq.s loc_207024
loc_20701c:
	rts
loc_20701e:
	addq.b #$1,$21(a1)
	rts
loc_207024:
	bsr.w sub_206e5a
	bra.s loc_20701e
loc_20702a:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207064
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207064
	neg.w $10(a0)
loc_207064:
	rts
loc_207066:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207072
	addq.b #$1,$21(a1)
loc_207072:
	rts
loc_207074:
	btst.b #$2,$22(a0)
	beq.w sub_206d90
	bra.s loc_20701e
loc_207080:
	move.w $8(a0),d0
	sub.w $8(a1),d0
	smi d0
	move.b $29(a1),d1
	eor.b d0,d1
	beq.w sub_206d90
	bra.s loc_20701e
loc_207096:
	tst.w $12(a0)
	bpl.s loc_2070c0
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_2070d0
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_2070d0
	addq.b #$4,$25(a1)
	rts
loc_2070c0:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2070d0
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_2070d0:
	rts
dat_2070d2:
	.incbin 28882, 126
loc_207150:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207166
	move.l #$4000,(dat_2072e0).l
	bra.s loc_207186
loc_207166:
	addi.l #$2000,(dat_2072e0).l
	cmpi.l #$80000,(dat_2072e0).l
	bls.s loc_207186
	move.l #$80000,(dat_2072e0).l
loc_207186:
	move.l (dat_2072e0).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207198
	sub.l d0,$c(a0)
loc_207198:
	btst.b #$1,($f604).w
	beq.s loc_2071a4
	add.l d0,$c(a0)
loc_2071a4:
	btst.b #$2,($f604).w
	beq.s loc_2071b0
	sub.l d0,$8(a0)
loc_2071b0:
	btst.b #$3,($f604).w
	beq.s loc_2071bc
	add.l d0,$8(a0)
loc_2071bc:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f38).l
	move.w (a1),($ff194e).l
	lea (dat_2072e4).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2071fe
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2071f8
	move.b #$0,d1
loc_2071f8:
	move.b d1,($ff1904).l
loc_2071fe:
	btst.b #$7,($f605).w
	beq.s loc_20721e
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207218
	add.b (a2),d1
loc_207218:
	move.b d1,($ff1904).l
loc_20721e:
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
	beq.s loc_2072aa
	bsr.w sub_207588
	bne.s loc_2072aa
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
loc_2072aa:
	btst.b #$4,($f605).w
	beq.s loc_2072da
	move.b #$0,($ff1906).l
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2072da:
	jmp (sub_2038f0).l
dat_2072e0:
	dc.b $00,$00,$40,$00
dat_2072e4:
	.incbin 29412, 146

sub_207376:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207384:
	clr.l (a2)+
	dbf d0,loc_207384
	rts

sub_20738c:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20739a(pc,d0.w),d0
	jmp dat_20739a(pc,d0.w)
dat_20739a:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_20763a).l,a0
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
	bcc.s loc_2073d8
	moveq #$0,d6
loc_2073d8:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2073e0:
	cmp.w (a0),d6
	bls.s loc_2073f2
	tst.b $4(a0)
	bpl.s loc_2073ee
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2073ee:
	addq.w #$8,a0
	bra.s loc_2073e0
loc_2073f2:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207412
loc_207400:
	cmp.w (a0),d6
	bls.s loc_207412
	tst.b $4(a0)
	bpl.s loc_20740e
	addq.b #$1,$1(a2)
loc_20740e:
	addq.w #$8,a0
	bra.s loc_207400
loc_207412:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2074fc
	bge.s loc_2074a2
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20747e
loc_20744c:
	cmp.w -$8(a0),d6
	bge.s loc_20747e
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207462
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207462:
	bsr.w sub_207520
	bne.s loc_20746c
	subq.w #$8,a0
	bra.s loc_20744c
loc_20746c:
	tst.b $4(a0)
	bpl.s loc_20747c
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20747c:
	addq.w #$8,a0
loc_20747e:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20748a:
	cmp.w -$8(a0),d6
	bgt.s loc_20749c
	tst.b -$4(a0)
	bpl.s loc_207498
	subq.b #$1,(a2)
loc_207498:
	subq.w #$8,a0
	bra.s loc_20748a
loc_20749c:
	move.l a0,($f770).w
	rts
loc_2074a2:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2074b6:
	cmp.w (a0),d6
	bls.s loc_2074d8
	tst.b $4(a0)
	bpl.s loc_2074c4
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2074c4:
	bsr.w sub_207520
	beq.s loc_2074b6
	tst.b $4(a0)
	bpl.s loc_2074d8
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2074d8:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2074f8
loc_2074e6:
	cmp.w (a0),d6
	bls.s loc_2074f8
	tst.b $4(a0)
	bpl.s loc_2074f4
	addq.b #$1,$1(a2)
loc_2074f4:
	addq.w #$8,a0
	bra.s loc_2074e6
loc_2074f8:
	move.l a0,($f774).w
loc_2074fc:
	rts

sub_2074fe:
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

sub_207520:
	bsr.s sub_2074fe
	beq.s loc_207532
	tst.b $4(a0)
	bpl.s loc_207538
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207538
loc_207532:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207538:
	bsr.w sub_207588
	bne.s loc_207586
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
	bpl.s loc_207568
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207568:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20757a
	nop
	nop
	nop
	nop
loc_20757a:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207586:
	rts

sub_207588:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207590:
	tst.b (a1)
	beq.s loc_20759c
	lea $40(a1),a1
	dbf d0,loc_207590
loc_20759c:
	rts

sub_20759e:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2075bc
loc_2075b0:
	tst.b (a1)
	beq.s loc_2075bc
	lea $40(a1),a1
	dbf d0,loc_2075b0
loc_2075bc:
	rts
loc_2075be:
	move.w $8(a0),d0
	tst.b $1(a0)
	bmi.s loc_20762c
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20762c
loc_2075e0:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207622
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20761a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207612
	moveq #$0,d1
	bra.s loc_20761a
loc_207612:
	cmpi.w #$3,d1
	bcs.s loc_20761a
	moveq #$2,d1
loc_20761a:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207622:
	jsr (sub_20399c).l
	moveq #$1,d0
	rts
loc_20762c:
	btst.b #$7,($ff152e).l
	bne.s loc_2075e0
	moveq #$0,d0
	rts
dat_20763a:
	.incbin 30266, 5448

sub_208b82:
	btst.b #$3,$22(a0)
	beq.s loc_208bf2
	btst.b #$3,$22(a1)
	beq.s loc_208bf2
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208bf2
	tst.b $2a(a1)
	beq.s loc_208bb4
	move.w #$ab,d0
	jsr (sub_2022c6).l
loc_208bb4:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208be0
	cmpi.b #$17,$1c(a1)
	beq.s loc_208be0
	bclr.b #$0,$2c(a1)
loc_208be0:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208bf2
	bclr.b #$1,$22(a1)
loc_208bf2:
	rts

sub_208bf4:
	cmpi.b #$4,$24(a1)
	bne.s loc_208c06
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208c06:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208c66
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c28
	bclr.b #$3,$22(a0)
	bra.w sub_208b82
loc_208c28:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208c66
	tst.b ($ff195b).l
	beq.s loc_208c50
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208c60
loc_208c50:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208c60:
	move.b #$0,$1c(a1)
loc_208c66:
	bset.b #$3,$22(a1)
	beq.s loc_208c88
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208cc0
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208c88:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208cb4
	cmpi.b #$2,$24(a0)
	beq.s loc_208cba
loc_208cb4:
	move.w $10(a1),$14(a1)
loc_208cba:
	bclr.b #$1,$22(a1)
loc_208cc0:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_208cca:
	move.b #$1,$25(a0)
loc_208cd0:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208f84
	btst.b #$6,$2c(a1)
	bne.w loc_208f84
	cmpi.b #$6,$24(a1)
	bcc.w loc_208f84
	tst.b $0(a1)
	beq.w loc_208f84
	tst.b $1(a0)
	bpl.w loc_208f84
	tst.b ($ff1906).l
	bne.w loc_208f84
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208f84
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208f84
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208d3e
	btst.b #$3,$22(a0)
	bne.s loc_208d50
	bra.w loc_208f84
loc_208d3e:
	cmpi.b #$1,$25(a0)
	bne.s loc_208d50
	tst.w $12(a1)
	beq.s loc_208d50
	bmi.w loc_208f84
loc_208d50:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208f84
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208f84
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208d86
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208d86:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208d94
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208d94:
	cmp.w d4,d5
	bcs.w loc_208e28
	cmpi.b #$1,$25(a0)
	beq.w loc_208f84
	cmpi.b #$a,$0(a0)
	bne.s loc_208db6
	btst.b #$1,$22(a1)
	bne.w loc_208f84
loc_208db6:
	cmpi.b #$4,d5
	bls.w loc_208f84
	bsr.w sub_208fd4
	move.l d0,-(a7)
	bsr.w sub_208b82
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208de0
	tst.w $10(a1)
	beq.s loc_208e10
	bpl.s loc_208de8
	bra.s loc_208e10
loc_208de0:
	tst.w $10(a1)
	beq.s loc_208e10
	bpl.s loc_208e10
loc_208de8:
	bsr.w sub_208f94
	btst.b #$1,$22(a1)
	bne.s loc_208e06
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208e06:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208e10:
	bsr.w sub_20904a
	bsr.w sub_208f94
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208e28:
	cmpi.b #$19,$0(a0)
	bne.s loc_208e3a
	btst.b #$2,$22(a1)
	bne.w loc_208f84
loc_208e3a:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208e50
	bmi.w loc_208f20
loc_208e50:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208e62
	tst.w $12(a1)
	beq.s loc_208e62
	bmi.w loc_208f84
loc_208e62:
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
	beq.s loc_208eae
	bpl.s loc_208e8e
	neg.b d0
loc_208e8e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20687a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208eae
	tst.w $10(a0)
	bpl.s loc_208eaa
	neg.w d1
loc_208eaa:
	add.w d1,$8(a1)
loc_208eae:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208f18
	tst.w $12(a0)
	bmi.s loc_208eec
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20690c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208eec
	add.w d1,$c(a1)
	bra.w loc_208f84
loc_208eec:
	tst.w $12(a0)
	bpl.s loc_208f18
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b24).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f18
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f2e).l
	movem.l (a7)+,a0-a1
	bra.s loc_208f84
loc_208f18:
	bsr.w sub_208bf4
	moveq #$1,d0
	rts
loc_208f20:
	cmpi.b #$1,$25(a0)
	beq.s loc_208f84
	cmpi.b #$9,$0(a0)
	beq.s loc_208f84
	cmpi.b #$a,$0(a0)
	bne.s loc_208f4a
	cmpi.b #$2,$25(a0)
	beq.s loc_208f6a
	btst.b #$1,$1(a0)
	bne.s loc_208f6a
	bra.s loc_208f84
loc_208f4a:
	btst.b #$1,$22(a1)
	bne.s loc_208f6a
	tst.w $12(a0)
	beq.s loc_208f6a
	bmi.s loc_208f6a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f2e).l
	movem.l (a7)+,a0-a1
loc_208f6a:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20904a
	bsr.w sub_208b82
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208f84:
	bsr.w sub_20904a
	bsr.w sub_208b82
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208f94:
	tst.w $10(a0)
	beq.s loc_208fd2
	cmpi.b #$a,$0(a0)
	beq.s loc_208fd2
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208fae
	neg.b d0
loc_208fae:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20687a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208fd2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f2e).l
	movem.l (a7)+,a0-a1
loc_208fd2:
	rts

sub_208fd4:
	cmpi.b #$a,$0(a0)
	bne.s loc_208fe4
	move.b #$0,$20(a1)
	rts
loc_208fe4:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209038
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209048
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209006
	tst.w $10(a2)
	beq.s loc_209048
loc_209006:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209018
	cmp.w $8(a2),d1
	bcs.s loc_209048
	bra.s loc_20901e
loc_209018:
	cmp.w $8(a2),d1
	bcc.s loc_209048
loc_20901e:
	cmpi.b #$15,$0(a0)
	beq.s loc_209048
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f2e).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209038:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209048:
	rts

sub_20904a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209064
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209064
	move.b #$0,$20(a1)
loc_209064:
	rts
	.incbin 36966, 374
loc_2091dc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2091ea(pc,d0.w),d0
	jmp dat_2091ea(pc,d0.w)
dat_2091ea:
	.incbin 37354, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2091dc
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209240
	tst.b $1(a0)
	bpl.s loc_209248
loc_209240:
	move.w dat_20929a(pc,d0.w),d1
	jsr dat_20929a(pc,d1.w)
loc_209248:
	bsr.w sub_2038f0
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20927a
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20927a:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_20399c
	rts
dat_20929a:
	.incbin 37530, 26
	addq.b #$2,$24(a0)
	move.l #$20961c,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20930a
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209622,$4(a0)
	bra.s loc_20934c
loc_20930a:
	btst.l #$3,d0
	beq.s loc_209338
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20966c,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cf28).l
	move.l (a7)+,d0
	bra.s loc_20934c
loc_209338:
	btst.b #$1,$1(a0)
	beq.s loc_20934c
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20934c:
	btst.l #$1,d0
	beq.s loc_209358
	bset.b #$5,$2(a0)
loc_209358:
	andi.w #$2,d0
	move.w dat_209364(pc,d0.w),$30(a0)
	rts
dat_209364:
	.incbin 37732, 918
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209708(pc,d0.w),d1
	jmp dat_209708(pc,d1.w)
dat_209708:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209712:
	.incbin 38674, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20976a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209762
	moveq #$0,d1
	bra.s loc_20976a
loc_209762:
	cmpi.w #$3,d1
	bcs.s loc_20976a
	moveq #$2,d1
loc_20976a:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209786
	moveq #$6,d1
loc_209786:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209712).l,a1
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
	beq.s loc_2097d6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2097ce
	moveq #$0,d0
	bra.s loc_2097d6
loc_2097ce:
	cmpi.w #$3,d0
	bcs.s loc_2097d6
	moveq #$2,d0
loc_2097d6:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2098a4
	dbf d0,loc_2097d6
	bclr.b #$7,(a2)
	bra.s loc_20982c
loc_2097e8:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209814
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20980c
	moveq #$0,d0
	bra.s loc_209814
loc_20980c:
	cmpi.w #$3,d0
	bcs.s loc_209814
	moveq #$2,d0
loc_209814:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2098a4
	dbf d0,loc_209814
	bclr.b #$7,(a2)
	bsr.w sub_20759e
	bne.w loc_2098b0
loc_20982c:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209b76,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209882
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209882
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209882:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2098a4:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2097e8
loc_2098b0:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2098d6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2098ce
	moveq #$0,d0
	bra.s loc_2098d6
loc_2098ce:
	cmpi.w #$3,d0
	bcs.s loc_2098d6
	moveq #$2,d0
loc_2098d6:
	lea $1(a2),a3
loc_2098da:
	btst.b #$0,-(a3)
	bne.w sub_20399c
	dbf d0,loc_2098da
	tst.b $1(a0)
	bmi.s loc_20990a
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209984
loc_20990a:
	tst.w ($ff190e).l
	bne.s loc_20991a
	move.b ($ff1913).l,$1a(a0)
loc_20991a:
	bra.w sub_2038f0
	.incbin 39198, 102
loc_209984:
	bra.w sub_20399c
	.incbin 39304, 888
loc_209d00:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d2e(pc,d0.w),d0
	jsr dat_209d2e(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209d2c
	cmpi.w #$5a,($f786).w
	bcs.s loc_209d26
	btst.b #$0,($ff1505).l
	bne.s loc_209d2c
loc_209d26:
	jmp (sub_2038f0).l
loc_209d2c:
	rts
dat_209d2e:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a308,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209d62
	move.b #$13,$1a(a0)
loc_209d62:
	rts
loc_209d64:
	tst.b ($ff0f01).l
	beq.s loc_209d72
	jmp (sub_20399c).l
loc_209d72:
	cmpi.b #$a,$28(a0)
	beq.w loc_209d00
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d96(pc,d0.w),d0
	jsr dat_209d96(pc,d0.w)
	jsr (sub_2038f0).l
	jmp (loc_2075be).l
dat_209d96:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a308,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209de4
	tst.b $29(a0)
	bne.s loc_209de4
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209de4:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_209eb0
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209e0c
	addq.b #$2,$1a(a0)
loc_209e0c:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209e20
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209e20:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_209e86
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209e52
	tst.b $29(a0)
	beq.s loc_209e4a
	tst.b ($ff1956).l
	beq.s loc_209e86
	bra.s loc_209e52
loc_209e4a:
	tst.b ($ff1956).l
	bne.s loc_209e86
loc_209e52:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_209eb0
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209e80
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209e80:
	jsr (sub_205ad6).l
loc_209e86:
	rts
	.incbin 40584, 40

sub_209eb0:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209ee8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209ee0
	moveq #$0,d1
	bra.s loc_209ee8
loc_209ee0:
	cmpi.w #$3,d1
	bcs.s loc_209ee8
	moveq #$2,d1
loc_209ee8:
	add.w d1,d0
	rts

sub_209eec:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209f0e
	tst.b ($ff1956).l
	beq.s loc_209f06
	tst.b $29(a0)
	bne.s loc_209f0e
	rts
loc_209f06:
	tst.b $29(a0)
	beq.s loc_209f0e
	rts
loc_209f0e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208cd0).l
	tst.b $28(a0)
	bne.s loc_209f30
	tst.b ($ff0f01).l
	beq.s loc_209f30
	jmp (loc_2075be).l
loc_209f30:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209d64
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f48(pc,d0.w),d1
	jmp dat_209f48(pc,d1.w)
dat_209f48:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a308,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209f92
	tst.b $29(a0)
	bne.s loc_209f92
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209f92:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209eb0
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209fbe
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209fbe:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a018
	move.b $25(a0),d0
	beq.s loc_209ff8
	bsr.w sub_203838
	jsr (sub_2069ba).l
	tst.w d1
	bpl.w loc_20a006
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a006
loc_209ff8:
	tst.b $1(a0)
	bpl.s loc_20a006
	lea ($d000).w,a1
	bsr.w sub_209eec
loc_20a006:
	tst.w ($ff190e).l
	bne.s loc_20a018
	lea (dat_20a280).l,a1
	bsr.w sub_205b16
loc_20a018:
	bsr.w sub_2038f0
	jmp (loc_2075be).l
	.incbin 40994, 606
dat_20a280:
	.incbin 41600, 586
loc_20a4ca:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4de(pc,d0.w),d0
	jsr dat_20a4de(pc,d0.w)
	jmp (sub_2038f0).l
dat_20a4de:
	.incbin 42206, 146
	tst.b $28(a0)
	bmi.w loc_20a4ca
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a586(pc,d0.w),d0
	jmp dat_20a586(pc,d0.w)
dat_20a586:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a620,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a5b6
	move.b #$3,$1a(a0)
	bra.s loc_20a5d6
loc_20a5b6:
	tst.w ($ff1588).l
	beq.s loc_20a5c4
	move.b #$2,$1a(a0)
loc_20a5c4:
	tst.b $28(a0)
	beq.s loc_20a5d6
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a5d6:
	tst.b $28(a0)
	bne.s loc_20a61a
	tst.b $29(a0)
	beq.s loc_20a606
	tst.w ($ff1512).l
	beq.s loc_20a5f2
	bclr.b #$5,$2(a0)
	bra.s loc_20a61a
loc_20a5f2:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a61a
	eori.b #$20,$2(a0)
	bra.s loc_20a61a
loc_20a606:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a61a
	move.b #$2,$1a(a0)
loc_20a61a:
	jmp (sub_2038f0).l
	.incbin 42528, 168

sub_20a6c8:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a6e4
	move.l d1,(a3)
loc_20a6e4:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a70e
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205ad6).l
loc_20a70e:
	rts
loc_20a710:
	tst.w ($ff1588).l
	beq.s loc_20a766
	bsr.w sub_20a962
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
	lea (dat_20aac2).l,a2
	moveq #$2,d6
	bsr.w sub_20ab1a
	bra.w loc_20a7c0
loc_20a766:
	tst.b ($ff1511).l
	beq.s loc_20a78a
	bpl.s loc_20a774
	bsr.w sub_20a90c
loc_20a774:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a9fc
loc_20a78a:
	tst.b ($ff150f).l
	beq.s loc_20a7c0
	bpl.s loc_20a798
	bsr.w sub_20a8f8
loc_20a798:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a7bc
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a7bc:
	bsr.w sub_20a9f2
loc_20a7c0:
	tst.w ($ff1588).l
	bne.w loc_20a86c
	tst.b ($ff1510).l
	beq.w loc_20a86c
	tst.w ($f63a).w
	bne.w loc_20a86c
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a8ca
	tst.b ($f7cc).w
	bne.s loc_20a816
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a816
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a816
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a816
	move.b #$9,(a1)
loc_20a816:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20ab08
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20ab12
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a868
	move.w #$63,d1
loc_20a868:
	bsr.w sub_20ab12
loc_20a86c:
	tst.b ($ff150e).l
	beq.s loc_20a87e
	clr.b ($ff150e).l
	bsr.w sub_20aae8
loc_20a87e:
	tst.b ($f7d6).w
	beq.s loc_20a8c8
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a89e
	move.l #$6d400001,d0
loc_20a89e:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a980
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a8be
	move.l #$6e800001,d0
loc_20a8be:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a980
loc_20a8c8:
	rts
loc_20a8ca:
	btst.b #$7,($ff152e).l
	bne.s loc_20a8f6
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206f2e
	move.b #$1,($ff150c).l
loc_20a8f6:
	rts

sub_20a8f8:
	move.l #$73600002,($c00004).l
	lea dat_20a95e(pc),a2
	move.w #$2,d2
	bra.s loc_20a928

sub_20a90c:
	lea ($c00000).l,a6
	bsr.w sub_20aae8
	move.l #$70600002,($c00004).l
	lea dat_20a956(pc),a2
	move.w #$6,d2
loc_20a928:
	lea (dat_23338c).l,a1
loc_20a92e:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a94a
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a93e:
	move.l (a3)+,(a6)
	dbf d1,loc_20a93e
loc_20a944:
	dbf d2,loc_20a92e
	rts
loc_20a94a:
	move.l #$0,(a6)
	dbf d1,loc_20a94a
	bra.s loc_20a944
dat_20a956:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a95e:
	dc.b $ff,$ff,$00,$00

sub_20a962:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20aade
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20aade

sub_20a980:
	lea (dat_20aaba).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20a990:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a994:
	sub.l d3,d1
	bcs.s loc_20a99c
	addq.w #$1,d2
	bra.s loc_20a994
loc_20a99c:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a9a6
	move.w #$1,d4
loc_20a9a6:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a9b2
	tst.w d6
	bne.s loc_20a9e4
loc_20a9b2:
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
loc_20a9d8:
	addi.l #$400000,d0
	dbf d6,loc_20a990
	rts
loc_20a9e4:
	moveq #$f,d5
loc_20a9e6:
	move.l #$0,(a6)
	dbf d5,loc_20a9e6
	bra.s loc_20a9d8

sub_20a9f2:
	lea (dat_20aac2).l,a2
	moveq #$2,d6
	bra.s loc_20aa04

sub_20a9fc:
	lea (dat_20aab6).l,a2
	moveq #$5,d6
loc_20aa04:
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20aa0c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aa10:
	sub.l d3,d1
	bcs.s loc_20aa18
	addq.w #$1,d2
	bra.s loc_20aa10
loc_20aa18:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aa22
	move.w #$1,d4
loc_20aa22:
	tst.w d4
	beq.s loc_20aa50
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
loc_20aa50:
	addi.l #$400000,d0
	dbf d6,loc_20aa0c
	rts
	.incbin 43612, 90
dat_20aab6:
	dc.b $00,$01,$86,$a0
dat_20aaba:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20aac2:
	dc.b $00,$00,$00,$64
dat_20aac6:
	dc.b $00,$00,$00,$0a
dat_20aaca:
	dc.b $00,$00,$00,$01
dat_20aace:
	.incbin 43726, 16

sub_20aade:
	moveq #$3,d6
	lea (dat_20aace).l,a2
	bra.s sub_20ab1a

sub_20aae8:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20aafe
	moveq #$9,d1
loc_20aafe:
	lea (dat_20aaca).l,a2
	moveq #$0,d6
	bra.s sub_20ab1a

sub_20ab08:
	lea (dat_20aaca).l,a2
	moveq #$0,d6
	bra.s sub_20ab1a

sub_20ab12:
	lea (dat_20aac6).l,a2
	moveq #$1,d6

sub_20ab1a:
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20ab22:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ab26:
	sub.l d3,d1
	bcs.s loc_20ab2e
	addq.w #$1,d2
	bra.s loc_20ab26
loc_20ab2e:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ab38
	move.w #$1,d4
loc_20ab38:
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
	dbf d6,loc_20ab22
	rts
	.incbin 43886, 2626
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b5be(pc,d0.w),d1
	jmp dat_20b5be(pc,d1.w)
dat_20b5be:
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
	beq.s loc_20b606
	move.b #$10,$34(a0)
	move.b #$30,$38(a0)
loc_20b606:
	move.b $28(a0),d1
	andi.b #$f0,d1
	ext.w d1
	asl.w #$3,d1
	move.w d1,$36(a0)
	move.b $22(a0),d0
	ror.b #$2,d0
	andi.b #$c0,d0
	move.b d0,$26(a0)
	bsr.w sub_20b62e
	jmp (loc_2075be).l

sub_20b62e:
	moveq #$0,d2
	move.b $38(a0),d2
	move.w d2,d3
	add.w d3,d3
	lea ($d000).w,a1
	move.w $8(a1),d0
	sub.w $32(a0),d0
	add.w d2,d0
	cmp.w d3,d0
	bcc.s loc_20b666
	move.w $c(a1),d1
	sub.w $30(a0),d1
	add.w d2,d1
	cmp.w d3,d1
	bcc.s loc_20b666
	btst.b #$1,$22(a1)
	beq.s loc_20b676
	clr.b $3a(a0)
	rts
loc_20b666:
	tst.b $3a(a0)
	beq.s loc_20b674
	clr.b $38(a1)
	clr.b $3a(a0)
loc_20b674:
	rts
loc_20b676:
	tst.b $3a(a0)
	bne.s loc_20b6a0
	move.b #$1,$3a(a0)
	btst.b #$2,$22(a1)
	bne.s loc_20b68e
	clr.b $1c(a1)
loc_20b68e:
	bclr.b #$5,$22(a1)
	move.b #$1,$1d(a1)
	move.b #$1,$38(a1)
loc_20b6a0:
	move.w $14(a1),d0
	tst.w $36(a0)
	bpl.s loc_20b6c6
	cmpi.w #$fc00,d0
	ble.s loc_20b6b8
	move.w #$fc00,$14(a1)
	rts
loc_20b6b8:
	cmpi.w #$f100,d0
	bge.s loc_20b6c4
	move.w #$f100,$14(a1)
loc_20b6c4:
	rts
loc_20b6c6:
	cmpi.w #$400,d0
	bge.s loc_20b6d4
	move.w #$400,$14(a1)
	rts
loc_20b6d4:
	cmpi.w #$f00,d0
	ble.s loc_20b6e0
	move.w #$f00,$14(a1)
loc_20b6e0:
	rts
	.incbin 46818, 1684
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bd84(pc,d0.w),d0
	jmp dat_20bd84(pc,d0.w)
dat_20bd84:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205ad6).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20be5a,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20bde0
	tst.b ($ff1508).l
	beq.s loc_20bde8
	move.l #$20be5e,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20bde8
loc_20bde0:
	tst.b ($ff1508).l
	bne.s loc_20bdf8
loc_20bde8:
	bset.b #$7,($ff156b).l
	jsr (sub_207588).l
	beq.s loc_20bdfe
loc_20bdf8:
	jmp (sub_20399c).l
loc_20bdfe:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20be40
	move.w #$6e,d0
	jmp (sub_205ad6).l
loc_20be40:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20be54
	bge.s loc_20be50
	neg.w d0
loc_20be50:
	add.w d0,$8(a0)
loc_20be54:
	jmp (sub_2038f0).l
	.incbin 48730, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bea0(pc,d0.w),d0
	jmp dat_20bea0(pc,d0.w)
dat_20bea0:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c59e,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c55e).l,a2
loc_20beee:
	jsr (sub_207588).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c59e,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20bf40
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20bf40:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20beee
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bf68
	bge.s loc_20bf5e
	neg.w d0
loc_20bf5e:
	add.w d0,$a(a0)
	jmp (sub_2038f0).l
loc_20bf68:
	addq.b #$4,$24(a0)
	jmp (sub_2038f0).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bf8c
	bge.s loc_20bf82
	neg.w d0
loc_20bf82:
	add.w d0,$8(a0)
	jmp (sub_2038f0).l
loc_20bf8c:
	addq.b #$4,$24(a0)
	jmp (sub_2038f0).l
	tst.b $1e(a0)
	beq.s loc_20bfa6
	subq.b #$1,$1e(a0)
	jmp (sub_2038f0).l
loc_20bfa6:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bfc0
	bge.s loc_20bfb6
	neg.w d0
loc_20bfb6:
	add.w d0,$a(a0)
	jmp (sub_2038f0).l
loc_20bfc0:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202490).l
	tst.b $1e(a0)
	beq.s loc_20bfe2
	subq.b #$1,$1e(a0)
	jmp (sub_2038f0).l
loc_20bfe2:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bffc
	bge.s loc_20bff2
	neg.w d0
loc_20bff2:
	add.w d0,$8(a0)
	jmp (sub_2038f0).l
loc_20bffc:
	jmp (sub_20399c).l
	tst.l ($f680).w
	bne.s loc_20c016
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_20399c).l
loc_20c016:
	rts
	.incbin 49176, 1350
dat_20c55e:
	.incbin 50526, 1906
dat_20ccd0:
	.incbin 52432, 50
	move.b #$20,$19(a0)
	move.b #$60,$16(a0)
	move.b d0,d1
	andi.w #$4,d1
	lsr.w #$1,d1
	move.w dat_20ccd0(pc,d1.w),d2
	move.w d2,$34(a0)
	move.b d0,d1
	ext.w d1
	andi.w #$8,d1
	lsr.w #$2,d1
	move.b dat_20cd36(pc,d1.w),d2
	move.b d2,$38(a0)
	clr.b $3e(a0)
	rts
dat_20cd36:
	.incbin 52534, 392
loc_20cebe:
	lea dat_20cf10(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20ceca:
	cmp.w (a1)+,d0
	bcs.s loc_20ced2
	addq.b #$2,d1
	bra.s loc_20ceca
loc_20ced2:
	move.b d1,($ff1574).l
	move.w dat_20cf20(pc,d1.w),d0
	jmp (sub_202490).l

sub_20cee2:
	lea dat_20cf10(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20ceee:
	cmp.w (a1)+,d0
	bcs.s loc_20cef6
	addq.b #$2,d1
	bra.s loc_20ceee
loc_20cef6:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cf00
	rts
loc_20cf00:
	move.b d1,($ff1574).l
	move.w dat_20cf18(pc,d1.w),d0
	jmp (loc_2024c2).l
dat_20cf10:
	dc.b $03,$00,$06,$00,$15,$00,$ff,$ff
dat_20cf18:
	dc.b $00,$07,$00,$08,$00,$09,$00,$0a
dat_20cf20:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06

sub_20cf28:
	move.w #$4ea,d1
	cmpi.b #$e,d0
	beq.s loc_20cf36
	move.w #$4f2,d1
loc_20cf36:
	move.w d1,$2(a0)
	rts
	.incbin 53052, 11284

sub_20fb50:
	jsr (sub_20638a).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fbd8).l,a1
	move.w #$1f,d6
	bsr.w sub_20fb94
	bne.s loc_20fb92
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4740,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fb92:
	rts

sub_20fb94:
	subq.b #$1,(a2)
	bpl.w loc_20fbcc
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fbaa
	moveq #$0,d0
loc_20fbaa:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fbba:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fbba
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fbcc:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fbd8:
	.incbin 64472, 26
dat_20fbf2:
	.incbin 64498, 16
dat_20fc02:
	.incbin 64514, 502
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
	.incbin 209804, 14578
dat_236c7e:
	.incbin 224382, 256
dat_236d7e:
	.incbin 224638, 4096
dat_237d7e:
	.incbin 228734, 4696
dat_238fd6:
	.incbin 233430, 12882
dat_23c228:
	.incbin 246312, 15832
