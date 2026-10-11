; R81B__.MMD
; disassembled from the disc; code only, data comes from data/R81B__.MMD at build time
	.file "R81B__.MMD", 262144

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
	lea (dat_23634a).l,a2
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
	lea (dat_23644a).l,a2
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
	lea (dat_23634a).l,a2
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
	lea (dat_23644a).l,a2
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
	lea (dat_23634a).l,a2
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
	lea (dat_23744a).l,a2
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
	lea (dat_23634a).l,a2
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
	lea (dat_23744a).l,a2
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
	bsr.w sub_2070a8
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
	lea (dat_20e952).l,a2
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
	bsr.w sub_2033ee
	bsr.w sub_2032f4
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
	jsr (sub_20e8d2).l
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
	jsr (sub_2057f4).l
	bsr.w sub_2070a8
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
	jsr (sub_2070be).l
	jsr (sub_20352e).l
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
	jsr (sub_2036d8).l
	tst.w ($ff190e).l
	bne.s loc_20196e
	bsr.w sub_200184
loc_20196e:
	jsr (sub_20bcc4).l
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
	jmp (sub_2057f4).l
dat_201af4:
	.incbin 6900, 38

sub_201b1a:
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
	jmp (sub_2057f4).l
loc_201ba8:
	tst.b ($ff151f).l
	bne.s loc_201b9e
	tst.b ($ff1520).l
	bne.s loc_201b9e
	move.w #$90,d0
	jmp (sub_2057f4).l
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
	jmp (sub_2057f4).l
loc_201be4:
	tst.b ($ff151f).l
	bne.s loc_201bda
	tst.b ($ff1520).l
	bne.s loc_201bda
	move.w #$91,d0
	jmp (sub_2057f4).l
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
	bsr.w sub_205716
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
	jsr (sub_20e8d2).l
	jsr (sub_20227a).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202eea
	bsr.w sub_20256e
	jmp (loc_2097f4).l
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
	bsr.w sub_202eea
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
	bsr.w sub_205716
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
	lea (dat_20e962).l,a1
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
	lea (dat_20e962).l,a1
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
	lea (dat_20e962).l,a1
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
	jsr (sub_206380).l
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
	dc.b $00,$30,$06,$a0
dat_202988:
	dc.b $7f,$7f,$7f,$7f

sub_20298c:
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
	bsr.w sub_202b60
	bsr.w sub_202c00
	bsr.w sub_203496
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202e8a
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202e56
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e22
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202df2
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
	lea (dat_202ace).l,a2
	moveq #$34,d4
	moveq #$8,d6
	bsr.w sub_202ae0
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a72:
	move.w d0,(a1)+
	dbf d6,loc_202a72
	move.w ($f710).w,d0
	neg.w d0
	moveq #$1b,d6
loc_202a80:
	move.w d0,(a1)+
	dbf d6,loc_202a80
	lea (dat_202ad8).l,a2
	moveq #$24,d4
	moveq #$6,d6
	bsr.w sub_202ae0
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202a9c:
	move.w d0,(a1)+
	dbf d6,loc_202a9c
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202aaa:
	move.w d0,(a1)+
	dbf d6,loc_202aaa
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b1e
dat_202ace:
	dc.b $03,$03,$01,$05,$01,$01,$01,$01
	dc.b $01,$00
dat_202ad8:
	dc.b $03,$01,$01,$03,$01,$01,$01,$00

sub_202ae0:
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
	adda.w d4,a1
loc_202b00:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b $0(a2,d6.w),d5
loc_202b0a:
	move.w d0,-(a1)
	dbf d5,loc_202b0a
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b00
	adda.w d4,a1
	rts
loc_202b1e:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b2c(pc,d2.w)
loc_202b2a:
	move.w (a2)+,d0
loc_202b2c:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b2a
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
	dbf d1,loc_202b2a
	rts

sub_202b60:
	move.w ($f700).w,d4
	bsr.s sub_202b94
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b92
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b8c
	bset.b #$2,($f754).w
	rts
loc_202b8c:
	bset.b #$3,($f754).w
loc_202b92:
	rts

sub_202b94:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202ba6
	bcs.s loc_202bd6
	bra.s loc_202bac
loc_202ba6:
	clr.w ($f73a).w
	rts
loc_202bac:
	cmpi.w #$10,d0
	blt.s loc_202bb6
	move.w #$10,d0
loc_202bb6:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202bc4
	move.w ($f72a).w,d0
loc_202bc4:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202bd6:
	cmpi.w #$fff0,d0
	bge.s loc_202be0
	move.w #$fff0,d0
loc_202be0:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202bc4
	move.w ($f728).w,d0
	bra.s loc_202bc4
	.incbin 11248, 16

sub_202c00:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c14
	subq.w #$5,d0
loc_202c14:
	btst.b #$1,$22(a6)
	beq.s loc_202c34
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c80
	subi.w #$40,d0
	bcc.s loc_202c80
	tst.b ($f75c).w
	bne.s loc_202c92
	bra.s loc_202c40
loc_202c34:
	sub.w ($f73e).w,d0
	bne.s loc_202c46
	tst.b ($f75c).w
	bne.s loc_202c92
loc_202c40:
	clr.w ($f73c).w
	rts
loc_202c46:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c6e
	move.w $14(a6),d1
	bpl.s loc_202c56
	neg.w d1
loc_202c56:
	cmpi.w #$800,d1
	bcc.s loc_202c80
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202ce0
	cmpi.w #$fffa,d0
	blt.s loc_202caa
	bra.s loc_202c98
loc_202c6e:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202ce0
	cmpi.w #$fffe,d0
	blt.s loc_202caa
	bra.s loc_202c98
loc_202c80:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202ce0
	cmpi.w #$fff0,d0
	blt.s loc_202caa
	bra.s loc_202c98
loc_202c92:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c98:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202cea
	bra.w loc_202cb6
loc_202caa:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cb6:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d0e
	cmpi.w #$ff00,d1
	bgt.s loc_202cda
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d0e
loc_202cda:
	move.w ($f72c).w,d1
	bra.s loc_202d0e
loc_202ce0:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cea:
	cmp.w ($f72e).w,d1
	blt.s loc_202d0e
	subi.w #$800,d1
	bcs.s loc_202d0a
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d0e
loc_202d0a:
	move.w ($f72e).w,d1
loc_202d0e:
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
	bne.s loc_202d50
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d4a
	bset.b #$0,($f754).w
	rts
loc_202d4a:
	bset.b #$1,($f754).w
loc_202d50:
	rts
	.incbin 11602, 64
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202dba
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202db4
	bset.b #$0,($f756).w
	rts
loc_202db4:
	bset.b #$1,($f756).w
loc_202dba:
	rts
	.incbin 11708, 54

sub_202df2:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e20
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e1a
	bset.b #$0,($f756).w
	rts
loc_202e1a:
	bset.b #$1,($f756).w
loc_202e20:
	rts

sub_202e22:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e54
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e4e
	bset.b d6,($f756).w
	bra.s loc_202e54
loc_202e4e:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e54:
	rts

sub_202e56:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e88
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e82
	bset.b d6,($f758).w
	bra.s loc_202e88
loc_202e82:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e88:
	rts

sub_202e8a:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202ebc
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202eb6
	bset.b d6,($f75a).w
	bra.s loc_202ebc
loc_202eb6:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202ebc:
	rts
	.incbin 11966, 44

sub_202eea:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202fa8
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20308e
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203090
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202fa6
	bclr.b #$0,(a2)
	beq.s loc_202f5c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032bc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203092
loc_202f5c:
	bclr.b #$1,(a2)
	beq.s loc_202f76
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032bc
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203092
loc_202f76:
	bclr.b #$2,(a2)
	beq.s loc_202f8c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032bc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030e8
loc_202f8c:
	bclr.b #$3,(a2)
	beq.s loc_202fa6
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032bc
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2030e8
loc_202fa6:
	rts

sub_202fa8:
	lea (dat_203374).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202fc4
	bclr.b #$1,(a2)
	beq.s loc_20300e
	move.w #$e0,d4
loc_202fc4:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20303e(pc,d0.w),a3
	beq.s loc_202ff6
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032bc
	movem.l (a7)+,d4-d5
	bsr.w sub_203092
	movea.l (a7)+,a0
	bra.s loc_20300e
loc_202ff6:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032be
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030be
	movea.l (a7)+,a0
loc_20300e:
	tst.b (a2)
	bne.s loc_203014
	rts
loc_203014:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203028
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203028:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_20304e
dat_20303e:
	.incbin 12350, 16
loc_20304e:
	moveq #$f,d6
	move.l #$800000,d7
loc_203056:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203082
	btst.b d0,(a2)
	beq.s loc_203082
	add.w d0,d0
	movea.l dat_20303e(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203194
	movem.l (a7)+,d4-d5
	bsr.w sub_2032bc
	bsr.w sub_203116
	movem.l (a7)+,d4-d5/a0
loc_203082:
	addi.w #$10,d4
	dbf d6,loc_203056
	clr.b (a2)
	rts

sub_20308e:
	rts

sub_203090:
	rts

sub_203092:
	moveq #$15,d6

sub_203094:
	move.l #$800000,d7
	move.l d0,d1
loc_20309c:
	movem.l d4-d5,-(a7)
	bsr.w sub_203194
	move.l d1,d0
	bsr.w sub_203116
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20309c
	rts

sub_2030be:
	move.l #$800000,d7
	move.l d0,d1
loc_2030c6:
	movem.l d4-d5,-(a7)
	bsr.w sub_203196
	move.l d1,d0
	bsr.w sub_203116
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030c6
	rts

sub_2030e8:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2030f2:
	movem.l d4-d5,-(a7)
	bsr.w sub_203194
	move.l d1,d0
	bsr.w sub_203116
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2030f2
	rts

sub_203116:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203152
	btst.b #$3,(a0)
	bne.s loc_203132
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203132:
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
loc_203152:
	btst.b #$3,(a0)
	bne.s loc_203174
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
loc_203174:
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

sub_203194:
	add.w (a3),d5

sub_203196:
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
	beq.s loc_2031e4
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
loc_2031e4:
	rts
	.incbin 12774, 214

sub_2032bc:
	add.w (a3),d5

sub_2032be:
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
	.incbin 13016, 28

sub_2032f4:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20331e
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203346

sub_20331e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203322:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032bc
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203094
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203322
	rts
loc_203346:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20334a:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203374).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2033b6
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_20334a
	rts
dat_203374:
	.incbin 13172, 50
dat_2033a6:
	.incbin 13222, 16

sub_2033b6:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033a6(pc,d0.w),a3
	beq.s loc_2033d8
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032bc
	movem.l (a7)+,d4-d5
	bsr.w sub_203092
	bra.s loc_2033ec
loc_2033d8:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032be
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030be
loc_2033ec:
	rts

sub_2033ee:
	moveq #$0,d0
	lea (dat_20e952).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202362
	movea.l (a2)+,a0
	bsr.w sub_203448
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200508
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203432
	jmp (loc_20bca0).l
loc_203432:
	btst.b #$1,($ff151c).l
	beq.s loc_203446
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203446
	bsr.w sub_202490
loc_203446:
	rts

sub_203448:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203452:
	move.l d0,(a3)+
	dbf d1,loc_203452
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203468
	lea ($a040).w,a3
	moveq #$2,d1

sub_203468:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2386a2).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203482:
	move.w d1,d0
	movea.l a3,a0
loc_203486:
	move.b (a1)+,(a0)+
	dbf d0,loc_203486
	lea $80(a3),a3
	dbf d2,loc_203482
	rts

sub_203496:
	lea ($d000).w,a6
	bsr.w sub_2034f2
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2034cc
	bcc.s loc_2034ce
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2034c2
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2034c2:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2034cc:
	rts
loc_2034ce:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2034e6
	btst.b #$1,$22(a6)
	beq.s loc_2034e6
	add.w d1,d1
	add.w d1,d1
loc_2034e6:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts

sub_2034f2:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203504(pc,d0.w),d0
	jmp dat_203504(pc,d0.w)
dat_203504:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$710,($f726).w
	rts
	.incbin 13586, 28

sub_20352e:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203536:
	move.b (a0),d0
	beq.s loc_20354c
	add.w d0,d0
	add.w d0,d0
	lea (dat_203950).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20354c:
	lea $40(a0),a0
	dbf d7,loc_203536
	rts

sub_203556:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203594
	bpl.s loc_203586
	btst.b #$1,$2c(a0)
	beq.s loc_203586
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203594
loc_203586:
	btst.b #$2,$2c(a0)
	bne.s loc_203594
	addi.w #$38,$12(a0)
loc_203594:
	tst.w $12(a0)
	bmi.s loc_2035a8
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2035a8
	move.w #$1000,$12(a0)
loc_2035a8:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2035b8:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2035f4
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2035f4
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2035f2
	neg.w d1
loc_2035f2:
	add.w d1,d0
loc_2035f4:
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

sub_20360e:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20367e
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20369a
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_20369a
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203658
	cmpi.w #$800,d3
	bcs.s loc_20366a
	subi.w #$800,d3
	bra.s loc_20366a
loc_203658:
	cmpi.w #$700,($f704).w
	bcs.s loc_20366a
	cmpi.w #$100,d3
	bcc.s loc_20366a
	addi.w #$800,d3
loc_20366a:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20369a
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_20369a
loc_20367e:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_20369a
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_20369a:
	rts
	.incbin 13980, 30

sub_2036ba:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2036c0:
	move.l d1,(a1)+
	dbf d0,loc_2036c0
	rts
dat_2036c8:
	.incbin 14024, 16

sub_2036d8:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2036e4:
	tst.w (a4)
	beq.w loc_2037a4
	moveq #$2,d6
loc_2036ec:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_20379c
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203752
	movea.l dat_2036c8(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203736
	cmpi.w #$800,d2
	bcs.s loc_203748
	subi.w #$800,d2
	bra.s loc_203748
loc_203736:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203748
	cmpi.w #$100,d2
	bcc.s loc_203748
	addi.w #$800,d2
loc_203748:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203774
loc_203752:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203774
	.incbin 14172, 24
loc_203774:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203792
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203796
loc_203792:
	bsr.w sub_2037c6
loc_203796:
	bset.b #$7,$1(a0)
loc_20379c:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2036ec
loc_2037a4:
	lea $80(a4),a4
	dbf d7,loc_2036e4
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_2037be
	move.l #$0,(a2)
	rts
loc_2037be:
	move.b #$0,-$5(a2)
	rts

sub_2037c6:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_20380c
	btst.l #$1,d4
	bne.w loc_20385a
loc_2037d8:
	cmpi.b #$50,d5
	beq.s loc_20380a
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
	bne.s loc_203804
	addq.w #$1,d0
loc_203804:
	move.w d0,(a2)+
	dbf d1,loc_2037d8
loc_20380a:
	rts
loc_20380c:
	btst.l #$1,d4
	bne.w loc_2038a0
loc_203814:
	cmpi.b #$50,d5
	beq.s loc_203858
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
	bne.s loc_203852
	addq.w #$1,d0
loc_203852:
	move.w d0,(a2)+
	dbf d1,loc_203814
loc_203858:
	rts
loc_20385a:
	cmpi.b #$50,d5
	beq.s loc_20389e
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
	bne.s loc_203898
	addq.w #$1,d0
loc_203898:
	move.w d0,(a2)+
	dbf d1,loc_20385a
loc_20389e:
	rts
loc_2038a0:
	cmpi.b #$50,d5
	beq.s loc_2038f2
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

sub_2038cc:
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
	bne.s loc_2038ec
	addq.w #$1,d0
loc_2038ec:
	move.w d0,(a2)+
	dbf d1,loc_2038a0
loc_2038f2:
	rts
	.incbin 14580, 92
dat_203950:
	.incbin 14672, 274

sub_203a62:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203a74
	move.w #$0,(a1)
	rts
loc_203a74:
	tst.w (a1)
	bne.s loc_203a7e
	move.b #$1,$1(a1)
loc_203a7e:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203ac8
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203aba
	neg.w $10(a0)
loc_203aba:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_2057f4
loc_203ac8:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203ae6
	cmpa.w #$d040,a0
	beq.s loc_203ae6
	tst.b ($ff1906).l
	beq.s loc_203ae6
	jmp (loc_206d4a).l
loc_203ae6:
	move.b $2a(a0),d0
	beq.s loc_203b10
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203b02
	cmpi.b #$2d,d0
	bcs.s loc_203b0c
	move.b #$2d,d0
	bra.s loc_203b0c
loc_203b02:
	cmpi.b #$1e,d0
	bcs.s loc_203b0c
	move.b #$1e,d0
loc_203b0c:
	move.b d0,$2a(a0)
loc_203b10:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203b1e(pc,d0.w),d1
	jmp dat_203b1e(pc,d1.w)
dat_203b1e:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203b28:
	tst.b ($d300).w
	bne.s loc_203b66
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203b66:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203b8e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203b8e:
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203bc2:
	tst.b ($ff1506).l
	bne.s loc_203c28
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203c28
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203c2c
	cmpi.b #$2f,d1
	bne.s loc_203c2a
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203c28
	tst.b $2c(a0)
	beq.s loc_203c28
	jsr (sub_2072ba).l
	bne.s loc_203c28
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203c20
	moveq #$0,d0
loc_203c20:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203c28:
	rts
loc_203c2a:
	rts

sub_203c2c:
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

sub_203c52:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203c5e
	neg.w d0
loc_203c5e:
	btst.b #$1,$2c(a0)
	beq.s loc_203c6e
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203c96
loc_203c6e:
	cmpi.w #$600,d0
	bcs.s loc_203c96
	tst.w $14(a0)
	bpl.s loc_203c88
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203ca4
	move.w #$e0,d1
	bra.s loc_203ca4
loc_203c88:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203ca4
	move.w #$60,d1
	bra.s loc_203ca4
loc_203c96:
	cmpi.w #$a0,d1
	beq.s loc_203ca4
	bcc.s loc_203ca2
	addq.w #$2,d1
	bra.s loc_203ca4
loc_203ca2:
	subq.w #$2,d1
loc_203ca4:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203c52
	bsr.w sub_203bc2
	tst.w ($ff1588).l
	beq.s loc_203cca
	btst.b #$4,($f605).w
	beq.s loc_203cca
	move.b #$1,($ff1906).l
	rts
loc_203cca:
	tst.b ($f7cc).w
	bne.s loc_203cd6
	move.w ($f604).w,($f602).w
loc_203cd6:
	btst.b #$0,$2c(a0)
	beq.s loc_203cfa
	cmpi.b #$6,($ff1506).l
	bne.s loc_203cf4
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203d12
loc_203cf4:
	bsr.w sub_203fdc
	bra.s loc_203d12
loc_203cfa:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203d58(pc,d0.w),d1
	jsr dat_203d58(pc,d1.w)
	jsr (sub_2062ac).l
loc_203d12:
	bsr.s sub_203d66
	bsr.w sub_203e26
	bsr.w sub_203e40
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203d3a
	tst.b $1c(a0)
	bne.s loc_203d3a
	move.b $1d(a0),$1c(a0)
loc_203d3a:
	bsr.w sub_2051e4
	tst.b $2c(a0)
	bmi.s loc_203d52
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203d52
	jsr (sub_206850).l
loc_203d52:
	bsr.w sub_20509a
	rts
dat_203d58:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203d66:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203d8a
	move.w $30(a0),d0
	beq.s loc_203d7c
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203d8a
loc_203d7c:
	btst.b #$6,$2c(a0)
	bne.s loc_203d8a
	jsr (sub_20360e).l
loc_203d8a:
	tst.b ($ff151f).l
	beq.s loc_203dce
	tst.w $32(a0)
	beq.s loc_203dce
	subq.w #$1,$32(a0)
	bne.s loc_203dce
	tst.b ($ff1520).l
	bne.s loc_203dc6
	tst.b ($ff1958).l
	bne.s loc_203dc6
	tst.b ($ff152e).l
	bne.s loc_203dc0
	move.w #$e,d0
	jsr (sub_2057f4).l
loc_203dc0:
	jsr (sub_201aba).l
loc_203dc6:
	move.b #$0,($ff151f).l
loc_203dce:
	tst.b ($ff1520).l
	beq.s loc_203e24
	tst.w $34(a0)
	beq.s loc_203e24
	subq.w #$1,$34(a0)
	bne.s loc_203e24
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_203e1c
	tst.b ($ff1958).l
	bne.s loc_203e1c
	tst.b ($ff152e).l
	bne.s loc_203e16
	move.w #$e,d0
	jsr (sub_2057f4).l
loc_203e16:
	jsr (sub_201aba).l
loc_203e1c:
	move.b #$0,($ff1520).l
loc_203e24:
	rts

sub_203e26:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_203e40:
	cmpi.b #$2,($ff1506).l
	beq.s loc_203e4c
loc_203e4a:
	rts
loc_203e4c:
	cmpi.b #$1,($ff1507).l
	bne.s loc_203e5e
	cmpi.w #$c8,$8(a0)
	bcs.s loc_203e4a
loc_203e5e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_203ea2
	bset.b #$6,$22(a0)
	bne.s loc_203e4a
	bsr.w sub_205af8
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_203e4a
	bra.s loc_203eda
loc_203ea2:
	tst.w $12(a0)
	beq.s loc_203eaa
	bpl.s loc_203e4a
loc_203eaa:
	bclr.b #$6,$22(a0)
	beq.s loc_203e4a
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_203e4a
	cmpi.w #$f000,$12(a0)
	bgt.s loc_203eda
	move.w #$f000,$12(a0)
loc_203eda:
	jsr (sub_2072ba).l
	bne.s loc_203eee
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_203eee:
	rts

sub_203ef0:
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
	bcs.s loc_203fca
	move.l #$50000,d0
loc_203fca:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_203fdc:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204002
	tst.b ($ff152e).l
	beq.s loc_203ff8
	cmpi.b #$2,($ff152e).l
	bne.s loc_204002
loc_203ff8:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2040b2
loc_204002:
	tst.b $2a(a0)
	bne.w loc_2040c0
	tst.b ($f784).w
	beq.w loc_2040c0
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204020
	neg.w d0
loc_204020:
	tst.w ($f786).w
	bne.s loc_20402c
	move.w #$1,($f786).w
loc_20402c:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204042
	move.b #$1,($ff1502).l
	bra.w loc_2057f0
loc_204042:
	cmpi.w #$d2,d1
	bcs.s loc_204096
	cmpi.b #$2,($ff1522).l
	beq.s loc_204094
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20406c
	move.w #$82,d0
	jsr (sub_2057f4).l
	moveq #$0,d0
loc_20406c:
	add.b ($f784).w,d0
	bpl.s loc_204076
	moveq #$0,d0
	bra.s loc_20407e
loc_204076:
	cmpi.b #$3,d0
	bcs.s loc_20407e
	moveq #$2,d0
loc_20407e:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_203ef0
	move.b #$2,($ff1522).l
loc_204094:
	rts
loc_204096:
	cmpi.w #$5a,d1
	bcc.s loc_2040ae
	cmp.w d2,d0
	bcc.w loc_203b28
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2040ae:
	cmp.w d2,d0
	bcc.s loc_2040c0
loc_2040b2:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2040c0:
	rts
	bsr.w sub_203a62
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2040f2
	tst.b ($ff195b).l
	beq.s loc_2040e0
	cmpi.b #$79,$1a(a0)
	bne.s loc_20411c
	bra.s loc_2040e8
loc_2040e0:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20411c
loc_2040e8:
	bsr.w sub_204984
	jmp (sub_203556).l
loc_2040f2:
	bsr.w sub_2041ca
	bsr.w sub_203fdc
	bsr.w sub_204a6e
	bsr.w sub_204b9a
	bsr.w sub_20423e
	bsr.w sub_2049f0
	bsr.w sub_204984
	jsr (sub_2035b8).l
	bsr.w sub_200bca
	bsr.w sub_204c18
loc_20411c:
	rts
	tst.b ($f7c7).w
	bne.s loc_204138
	cmpi.b #$15,$1c(a0)
	beq.s loc_204138
	tst.w $12(a0)
	bmi.s loc_204138
	move.b #$0,$1c(a0)
loc_204138:
	bsr.w sub_2041ca
	bsr.w sub_203fdc
	bsr.w sub_204b58
	bsr.w sub_2048a4
	bsr.w sub_204984
	jsr (sub_203556).l
	btst.b #$6,$22(a0)
	beq.s loc_204160
	subi.w #$28,$12(a0)
loc_204160:
	bsr.w sub_204c62
	bsr.w sub_204c86
	rts
	bsr.w sub_2041ca
	bsr.w sub_203fdc
	bsr.w sub_204a6e
	bsr.w sub_204bd6
	bsr.w sub_2046de
	bsr.w sub_204984
	tst.b $2a(a0)
	bne.s loc_20418e
	jsr (sub_2035b8).l
loc_20418e:
	bsr.w sub_200bca
	bsr.w sub_204c18
	rts
	bsr.w sub_2041ca
	bsr.w sub_203fdc
	bsr.w sub_204b58
	bsr.w sub_2048a4
	bsr.w sub_204984
	jsr (sub_203556).l
	btst.b #$6,$22(a0)
	beq.s loc_2041c0
	subi.w #$28,$12(a0)
loc_2041c0:
	bsr.w sub_204c62
	bsr.w sub_204c86
	rts

sub_2041ca:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204236
	tst.w ($ff1506).l
	bne.s loc_204236
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204238).l,a2
loc_2041fe:
	move.b (a2)+,d0
	bmi.s loc_20420e
	cmp.b d0,d1
	bne.s loc_2041fe
	bset.b #$1,$2c(a0)
	rts
loc_20420e:
	bclr.b #$1,$2c(a0)
	beq.s loc_204236
	tst.w $12(a0)
	bpl.s loc_204236
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204236
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204236
	neg.w $10(a0)
loc_204236:
	rts
dat_204238:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20423e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204568
	tst.w $3e(a0)
	bne.w loc_204518
	btst.b #$2,($f602).w
	beq.s loc_204266
	bsr.w sub_2045f8
loc_204266:
	btst.b #$3,($f602).w
	beq.s loc_204272
	bsr.w sub_20466e
loc_204272:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204518
	tst.w $14(a0)
	beq.s loc_204292
	tst.b $2a(a0)
	beq.w loc_204518
	bra.s loc_20429e
loc_204292:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20429e:
	btst.b #$3,$22(a0)
	beq.s loc_2042f0
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204348
	cmpi.b #$1e,$0(a1)
	bne.s loc_2042d0
	move.b #$0,$1c(a0)
	bra.w loc_204518
loc_2042d0:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20432c
	cmp.w d2,d1
	bge.s loc_20431a
	bra.s loc_204348
loc_2042f0:
	jsr (sub_2065b4).l
	cmpi.w #$c,d1
	blt.s loc_204348
	move.w #$ab,d0
	jsr (sub_2022c6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204324
loc_20431a:
	btst.b #$0,$22(a0)
	bne.s loc_204334
	bra.s loc_20433e
loc_204324:
	cmpi.b #$3,$37(a0)
	bne.s loc_204348
loc_20432c:
	btst.b #$0,$22(a0)
	bne.s loc_20433e
loc_204334:
	move.b #$32,$1c(a0)
	bra.w loc_204518
loc_20433e:
	move.b #$6,$1c(a0)
	bra.w loc_204518
loc_204348:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20435c
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20435c:
	btst.b #$7,($f788).w
	bne.w loc_204460
	btst.b #$6,($f788).w
	bne.w loc_204480
	btst.b #$1,($f602).w
	bne.w loc_204480
	andi.b #$f,($f788).w
	beq.s loc_204394
	btst.b #$0,($f603).w
	beq.s loc_2043a8
	bset.b #$7,($f788).w
	bra.w loc_20453c
loc_204394:
	btst.b #$0,($f603).w
	beq.w loc_2043a8
	move.b #$1,($f788).w
	bra.w loc_20453c
loc_2043a8:
	btst.b #$0,($f602).w
	beq.s loc_204424
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204406
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2043d8
	asr.w #$1,d2
	sub.w d2,d1
loc_2043d8:
	btst.b #$0,$22(a0)
	beq.s loc_2043e4
	neg.w d0
	neg.w d1
loc_2043e4:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2043fa
	cmp.w d0,d1
	ble.s loc_204400
	bra.s loc_2043fe
loc_2043fa:
	cmp.w d1,d0
	ble.s loc_204400
loc_2043fe:
	move.w d1,d0
loc_204400:
	move.w d0,$14(a0)
	rts
loc_204406:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204420
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022c6).l
loc_204420:
	bra.w loc_20453c
loc_204424:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204444
	move.w #$ab,d0
	jsr (sub_2022c6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204480
loc_204444:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022c6).l
	bra.w loc_204518
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204460:
	btst.b #$0,($f602).w
	beq.s loc_204480
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20453c
	addq.w #$2,($f73e).w
	bra.w loc_20453c
loc_204480:
	btst.b #$6,($f788).w
	bne.w loc_2044fc
	andi.b #$f,($f788).w
	beq.s loc_2044a4
	btst.b #$1,($f603).w
	beq.s loc_2044b6
	bset.b #$6,($f788).w
	bra.w loc_20453c
loc_2044a4:
	btst.b #$1,($f603).w
	beq.s loc_2044b6
	move.b #$1,($f788).w
	bra.w loc_20453c
loc_2044b6:
	btst.b #$1,($f602).w
	beq.s loc_204518
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2044fa
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2044fa
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2044ec
	neg.w $14(a0)
loc_2044ec:
	move.w #$9c,d0
	jsr (sub_2022c6).l
	bsr.w sub_204a18
loc_2044fa:
	bra.s loc_20453c
loc_2044fc:
	btst.b #$1,($f602).w
	beq.s loc_204518
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20453c
	subq.w #$2,($f73e).w
	bra.s loc_20453c
loc_204518:
	cmpi.w #$60,($f73e).w
	bne.s loc_204532
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20453c
	move.b #$0,($f788).w
	bra.s loc_20453c
loc_204532:
	bcc.s loc_204538
	addq.w #$4,($f73e).w
loc_204538:
	subq.w #$2,($f73e).w
loc_20453c:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204568
	move.w $14(a0),d0
	beq.s loc_204568
	bmi.s loc_20455c
	sub.w d5,d0
	bcc.s loc_204556
	move.w #$0,d0
loc_204556:
	move.w d0,$14(a0)
	bra.s loc_204568
loc_20455c:
	add.w d5,d0
	bcc.s loc_204564
	move.w #$0,d0
loc_204564:
	move.w d0,$14(a0)
loc_204568:
	move.b $26(a0),d0
	jsr (sub_2007ca).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204586:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2045f6
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2045f6
	bmi.s loc_20459e
	neg.w d1
loc_20459e:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206474
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2045f6
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2045f2
	cmpi.b #$40,d0
	beq.s loc_2045e0
	cmpi.b #$80,d0
	beq.s loc_2045da
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2045da:
	sub.w d1,$12(a0)
	rts
loc_2045e0:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2045f2:
	add.w d1,$12(a0)
loc_2045f6:
	rts

sub_2045f8:
	tst.b $2a(a0)
	bne.s loc_20466c
	move.w $14(a0),d0
	beq.s loc_204606
	bpl.s loc_204636
loc_204606:
	bset.b #$0,$22(a0)
	bne.s loc_20461a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20461a:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20462a
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20462a
	move.w d1,d0
loc_20462a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204636:
	sub.w d4,d0
	bcc.s loc_20463e
	move.w #$ff80,d0
loc_20463e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20466c
	cmpi.w #$400,d0
	blt.s loc_20466c
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022c6).l
loc_20466c:
	rts

sub_20466e:
	tst.b $2a(a0)
	bne.s loc_2046dc
	move.w $14(a0),d0
	bmi.s loc_2046a6
	bclr.b #$0,$22(a0)
	beq.s loc_20468e
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20468e:
	cmp.w d6,d0
	bge.s loc_20469a
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_20469a
	move.w d6,d0
loc_20469a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2046a6:
	add.w d4,d0
	bcc.s loc_2046ae
	move.w #$80,d0
loc_2046ae:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2046dc
	cmpi.w #$fc00,d0
	bgt.s loc_2046dc
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022c6).l
loc_2046dc:
	rts

sub_2046de:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204828
	tst.w $3e(a0)
	bne.s loc_204716
	btst.b #$2,($f602).w
	beq.s loc_20470a
	bsr.w sub_20485e
loc_20470a:
	btst.b #$3,($f602).w
	beq.s loc_204716
	bsr.w sub_204882
loc_204716:
	tst.b $2a(a0)
	beq.w loc_2047c0
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204736
	asr.w #$1,d2
	sub.w d2,d1
loc_204736:
	btst.b #$0,$22(a0)
	beq.s loc_204742
	neg.w d0
	neg.w d1
loc_204742:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204758
	cmp.w d0,d1
	ble.s loc_20475e
	bra.s loc_20475c
loc_204758:
	cmp.w d1,d0
	ble.s loc_20475e
loc_20475c:
	move.w d1,d0
loc_20475e:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204792
	rts
loc_20476c:
	move.w #$ab,d0
	jsr (sub_2022c6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_2047f2
loc_204792:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_20476c
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022c6).l
	btst.b #$0,$22(a0)
	bne.s loc_2047b8
	bsr.w sub_204882
	bra.s loc_2047c0
loc_2047b8:
	bsr.w sub_20485e
	bra.s loc_2047c0
	dc.b $4e,$75
loc_2047c0:
	move.w $14(a0),d0
	beq.s loc_2047e2
	bmi.s loc_2047d6
	sub.w d5,d0
	bcc.s loc_2047d0
	move.w #$0,d0
loc_2047d0:
	move.w d0,$14(a0)
	bra.s loc_2047e2
loc_2047d6:
	add.w d5,d0
	bcc.s loc_2047de
	move.w #$0,d0
loc_2047de:
	move.w d0,$14(a0)
loc_2047e2:
	tst.w $14(a0)
	bne.s loc_204828
	move.w #$ab,d0
	jsr (sub_2022c6).l
loc_2047f2:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204812
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204822
loc_204812:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204822:
	move.b #$5,$1c(a0)
loc_204828:
	move.b $26(a0),d0
	jsr (sub_2007ca).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_20484c
	move.w #$1000,d1
loc_20484c:
	cmpi.w #$f000,d1
	bge.s loc_204856
	move.w #$f000,d1
loc_204856:
	move.w d1,$10(a0)
	bra.w loc_204586

sub_20485e:
	move.w $14(a0),d0
	beq.s loc_204866
	bpl.s loc_204874
loc_204866:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204874:
	sub.w d4,d0
	bcc.s loc_20487c
	move.w #$ff80,d0
loc_20487c:
	move.w d0,$14(a0)
	rts

sub_204882:
	move.w $14(a0),d0
	bmi.s loc_204896
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204896:
	add.w d4,d0
	bcc.s loc_20489e
	move.w #$80,d0
loc_20489e:
	move.w d0,$14(a0)
	rts

sub_2048a4:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_2048de
	tst.w ($ff1506).l
	bne.s loc_2048de
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_2048d6
	cmpi.w #$840,$8(a0)
	bcc.s loc_2048d6
	rts
loc_2048d6:
	btst.b #$1,$2c(a0)
	bne.s loc_20490e
loc_2048de:
	btst.b #$2,($f602).w
	beq.s loc_2048f8
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_2048f8
	move.w d1,d0
loc_2048f8:
	btst.b #$3,($f602).w
	beq.s loc_20490e
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_20490e
	move.w d6,d0
loc_20490e:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204924
	bcc.s loc_204920
	addq.w #$4,($f73e).w
loc_204920:
	subq.w #$2,($f73e).w
loc_204924:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204952
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204952
	bmi.s loc_204946
	sub.w d1,d0
	bcc.s loc_204940
	move.w #$0,d0
loc_204940:
	move.w d0,$10(a0)
	rts
loc_204946:
	sub.w d1,d0
	bcs.s loc_20494e
	move.w #$0,d0
loc_20494e:
	move.w d0,$10(a0)
loc_204952:
	rts
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204982
	bsr.w sub_2066ae
	tst.w d1
	bpl.s loc_204982
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
loc_204982:
	rts

sub_204984:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_2049d8
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_2049b2
	addi.w #$38,d0
loc_2049b2:
	cmp.w d1,d0
	bls.s loc_2049d8
loc_2049b6:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_2049c6
	rts
loc_2049c6:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206b28
	move.b #$6,$24(a0)
	rts
loc_2049d8:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_2049b6

sub_2049f0:
	tst.b ($f7ca).w
	bne.s loc_204a16
	move.w $14(a0),d0
	bpl.s loc_2049fe
	neg.w d0
loc_2049fe:
	cmpi.w #$80,d0
	bcs.s loc_204a16
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a16
	btst.b #$1,($f602).w
	bne.s sub_204a18
loc_204a16:
	rts

sub_204a18:
	btst.b #$2,$22(a0)
	beq.s loc_204a22
	bra.s loc_204a52
loc_204a22:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a42
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204a52
loc_204a42:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204a52:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204a6c
	cmpi.w #$200,$14(a0)
	bcc.s loc_204a6c
	move.w #$200,$14(a0)
loc_204a6c:
	rts

sub_204a6e:
	tst.b $2a(a0)
	beq.s loc_204a76
	rts
loc_204a76:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204a88
	tst.w $14(a0)
	beq.w loc_204b4e
loc_204a88:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204b4e
	btst.b #$3,$22(a0)
	beq.s loc_204aa4
	jsr (sub_20577a).l
	beq.s loc_204ad4
loc_204aa4:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2064de
	cmpi.w #$6,d1
	blt.w loc_204b4e
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204aca
	move.w #$380,d2
loc_204aca:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204ad4:
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
	bne.s loc_204b50
	tst.b ($ff195b).l
	beq.s loc_204b32
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204b42
loc_204b32:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204b42:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204b4e:
	rts
loc_204b50:
	bset.b #$4,$22(a0)
	rts

sub_204b58:
	tst.b $3c(a0)
	beq.s loc_204b8a
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204b6e
	move.w #$fe00,d1
loc_204b6e:
	cmp.w $12(a0),d1
	ble.s loc_204b88
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204b88
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204b88:
	rts
loc_204b8a:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204b98
	move.w #$f040,$12(a0)
loc_204b98:
	rts

sub_204b9a:
	tst.b $2a(a0)
	bne.s loc_204bd4
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204bd4
	move.b $26(a0),d0
	jsr (sub_2007ca).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204bd4
	bmi.s loc_204bd0
	tst.w d0
	beq.s loc_204bce
	add.w d0,$14(a0)
loc_204bce:
	rts
loc_204bd0:
	add.w d0,$14(a0)
loc_204bd4:
	rts

sub_204bd6:
	tst.b $2a(a0)
	bne.s loc_204c16
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204c16
	move.b $26(a0),d0
	jsr (sub_2007ca).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204c0c
	tst.w d0
	bpl.s loc_204c06
	asr.l #$2,d0
loc_204c06:
	add.w d0,$14(a0)
	rts
loc_204c0c:
	tst.w d0
	bmi.s loc_204c12
	asr.l #$2,d0
loc_204c12:
	add.w d0,$14(a0)
loc_204c16:
	rts

sub_204c18:
	nop
	tst.b $38(a0)
	bne.s loc_204c5a
	tst.w $3e(a0)
	bne.s loc_204c5c
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204c5a
	move.w $14(a0),d0
	bpl.s loc_204c3c
	neg.w d0
loc_204c3c:
	cmpi.w #$280,d0
	bcc.s loc_204c5a
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204c5a:
	rts
loc_204c5c:
	subq.w #$1,$3e(a0)
	rts

sub_204c62:
	btst.b #$1,$2c(a0)
	bne.s loc_204c84
	move.b $26(a0),d0
	beq.s loc_204c84
	bpl.s loc_204c7a
	addq.b #$2,d0
	bcc.s loc_204c78
	moveq #$0,d0
loc_204c78:
	bra.s loc_204c80
loc_204c7a:
	subq.b #$2,d0
	bcc.s loc_204c80
	moveq #$0,d0
loc_204c80:
	move.b d0,$26(a0)
loc_204c84:
	rts

sub_204c86:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a62).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204d6a
	cmpi.b #$80,d0
	beq.w loc_204dcc
	cmpi.b #$c0,d0
	beq.w loc_204e28
	bsr.w sub_2067f4
	tst.w d1
	bpl.s loc_204cd8
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204cd8:
	bsr.w sub_206656
	tst.w d1
	bpl.s loc_204cea
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204cea:
	bsr.w sub_206506
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204d68
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204d08
	cmp.b d2,d0
	blt.s loc_204d68
loc_204d08:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204e8a
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204d46
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204d38
	asr.w $12(a0)
	bra.s loc_204d5a
loc_204d38:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204d46:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204d5a
	move.w #$fc0,$12(a0)
loc_204d5a:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204d68
	neg.w $14(a0)
loc_204d68:
	rts
loc_204d6a:
	bsr.w sub_2067f4
	tst.w d1
	bpl.s loc_204d84
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204d84:
	bsr.w sub_2066ae
	tst.w d1
	bpl.s loc_204d9e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204d9c
	move.w #$0,$12(a0)
loc_204d9c:
	rts
loc_204d9e:
	tst.w $12(a0)
	bmi.s loc_204dca
	bsr.w sub_206506
	tst.w d1
	bpl.s loc_204dca
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204e8a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204dca:
	rts
loc_204dcc:
	bsr.w sub_2067f4
	tst.w d1
	bpl.s loc_204dde
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204dde:
	bsr.w sub_206656
	tst.w d1
	bpl.s loc_204df0
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204df0:
	bsr.w sub_2066ae
	tst.w d1
	bpl.s loc_204e26
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204e10
	move.w #$0,$12(a0)
	rts
loc_204e10:
	move.b d3,$26(a0)
	bsr.w sub_204efc
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204e26
	neg.w $14(a0)
loc_204e26:
	rts
loc_204e28:
	bsr.w sub_206656
	tst.w d1
	bpl.s loc_204e42
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204e42:
	bsr.w sub_2066ae
	tst.w d1
	bpl.s loc_204e5c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204e5a
	move.w #$0,$12(a0)
loc_204e5a:
	rts
loc_204e5c:
	tst.w $12(a0)
	bmi.s loc_204e88
	bsr.w sub_206506
	tst.w d1
	bpl.s loc_204e88
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204e8a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204e88:
	rts

sub_204e8a:
	btst.b #$4,$22(a0)
	beq.s loc_204e94
	nop
loc_204e94:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_204eee
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ece
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204ede
loc_204ece:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204ede:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2022c6).l
loc_204eee:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_204efc:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2035b8).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_204f36
	subi.w #$20,$12(a0)
loc_204f36:
	jsr (sub_2062ac).l
	bsr.w sub_204f52
	bsr.w sub_204984
	bsr.w sub_203e26
	bsr.w sub_2051e4
	jmp (sub_20360e).l

sub_204f52:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206b28
	bsr.w sub_204c86
	btst.b #$1,$22(a0)
	bne.s loc_204f8c
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_204f8c:
	rts
	bsr.w sub_204fa6
	jsr (sub_203556).l
	bsr.w sub_203e26
	bsr.w sub_2051e4
	jmp (sub_20360e).l

sub_204fa6:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_205014
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_204fda
	clr.b ($ff1508).l
loc_204fda:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204ff4
	tst.b ($ff0f01).l
	beq.s loc_204ff4
	move.b #$0,($ff1508).l
	bra.s loc_20500e
loc_204ff4:
	jsr (sub_2072ba).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_205014
loc_20500e:
	move.w #$3c,$3a(a0)
loc_205014:
	rts
	tst.w $3a(a0)
	beq.w loc_205098
	subq.w #$1,$3a(a0)
	bne.w loc_205098
	move.w #$1,($ff1502).l
	jsr (sub_20225e).l
	move.b #$1,($a01c3e).l
	jsr (sub_20227a).l
	bsr.w sub_2070a8
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_205066
	cmpi.b #$1,($ff152e).l
	bne.s loc_205066
	bclr.b #$1,($ff151c).l
loc_205066:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_205094
	cmpi.b #$1,($ff152e).l
	bne.s loc_20508e
	tst.b ($ff158e).l
	beq.s loc_205094
	move.b #$1,($ff1522).l
	bra.s loc_205094
loc_20508e:
	clr.b ($ff1522).l
loc_205094:
	bra.w sub_2057f4
loc_205098:
	rts

sub_20509a:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2050c2
	cmpi.b #$5,($ff1506).l
	beq.s loc_2050c2
	cmpi.b #$2,($ff1506).l
	beq.s loc_2050c2
	tst.b ($ff1506).l
	bne.w loc_205184
loc_2050c2:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205100
	tst.b ($ff1506).l
	bne.w loc_205186
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205186
	bra.s loc_205108
loc_205100:
	cmp.b ($f7af).w,d1
	beq.w loc_205186
loc_205108:
	cmp.b ($f7ac).w,d1
	beq.s loc_205138
	cmp.b ($f7ad).w,d1
	beq.s loc_20511c
	bclr.b #$6,$1(a0)
	rts
loc_20511c:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20519e
	btst.b #$1,$22(a0)
	beq.s loc_205138
	bclr.b #$6,$1(a0)
	rts
loc_205138:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20514a
	bclr.b #$6,$1(a0)
	rts
loc_20514a:
	cmpi.b #$e0,d2
	bcs.s loc_205158
	bset.b #$6,$1(a0)
	rts
loc_205158:
	btst.b #$6,$1(a0)
	bne.s loc_205174
	move.b $26(a0),d1
	beq.s loc_205184
	cmpi.b #$80,d1
	bhi.s loc_205184
	bset.b #$6,$1(a0)
	rts
loc_205174:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205184
	bclr.b #$6,$1(a0)
loc_205184:
	rts
loc_205186:
	btst.b #$2,$22(a0)
	bne.s loc_205198
	move.w #$9c,d0
	jsr (sub_2022c6).l
loc_205198:
	jmp (sub_204a18).l
loc_20519e:
	tst.w $12(a0)
	bmi.s loc_2051e2
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2051d6
	cmpi.w #$38,d1
	bcs.s loc_2051ce
	cmpi.w #$80,d1
	bcs.s loc_2051e2
loc_2051c6:
	bclr.b #$6,$1(a0)
	rts
loc_2051ce:
	bset.b #$6,$1(a0)
	rts
loc_2051d6:
	cmpi.w #$38,d1
	bcs.s loc_2051c6
	cmpi.w #$80,d1
	bcc.s loc_2051ce
loc_2051e2:
	rts

sub_2051e4:
	lea (dat_2054d4).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205206
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205206:
	bsr.w sub_205476
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20527e
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20524c
	move.b d0,$1e(a0)

sub_205230:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205244
	bpl.s loc_205244
	cmpi.b #$fd,d0
	bge.s loc_20524e
loc_205244:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20524c:
	rts
loc_20524e:
	addq.b #$1,d0
	bne.s loc_20525e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205244
loc_20525e:
	addq.b #$1,d0
	bne.s loc_205272
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205244
loc_205272:
	addq.b #$1,d0
	bne.s loc_20527c
	move.b $2(a1,d1.w),$1c(a0)
loc_20527c:
	rts
loc_20527e:
	subq.b #$1,$1e(a0)
	bpl.s loc_20524c
	addq.b #$1,d0
	bne.w loc_205338
	tst.b ($ff195b).l
	bne.w loc_205400
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2052a6
	not.b d0
loc_2052a6:
	btst.b #$1,$2c(a0)
	bne.s loc_2052b4
	addi.b #$10,d0
	bra.s loc_2052b6
loc_2052b4:
	addq.b #$8,d0
loc_2052b6:
	bpl.s loc_2052ba
	moveq #$3,d1
loc_2052ba:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2053ac
	move.w $14(a0),d2
	bpl.s loc_2052d8
	neg.w d2
loc_2052d8:
	btst.b #$1,$2c(a0)
	beq.s loc_2052f0
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2056d6).l,a1
	bra.s loc_20531a
loc_2052f0:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2056b0).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20531a
	lea (dat_205554).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20531a
	lea (dat_20554c).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20531a:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205328
	moveq #$0,d2
loc_205328:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205230
	add.b d3,$1a(a0)
	rts
loc_205338:
	addq.b #$1,d0
	bne.s loc_2053a8
	move.w $14(a0),d2
	bpl.s loc_205344
	neg.w d2
loc_205344:
	lea (dat_205632).l,a1
	tst.b ($ff195b).l
	bne.s loc_205382
	lea (dat_205564).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205376
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205382
	lea (dat_2056de).l,a1
	bra.s loc_205382
loc_205376:
	cmpi.w #$600,d2
	bcc.s loc_205382
	lea (dat_20555c).l,a1
loc_205382:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20538c
	moveq #$0,d2
loc_20538c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205230
loc_2053a8:
	addq.b #$1,d0
	bne.s loc_2053ec
loc_2053ac:
	move.w $14(a0),d2
	bmi.s loc_2053b4
	neg.w d2
loc_2053b4:
	addi.w #$800,d2
	bpl.s loc_2053bc
	moveq #$0,d2
loc_2053bc:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205644).l,a1
	tst.b ($ff195b).l
	bne.s loc_2053d6
	lea (dat_20556c).l,a1
loc_2053d6:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205230
loc_2053ec:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205400:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205412
	not.b d0
loc_205412:
	addi.b #$10,d0
	bpl.s loc_20541a
	moveq #$0,d1
loc_20541a:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205448
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205338
loc_205448:
	move.w $14(a0),d2
	bpl.s loc_205450
	neg.w d2
loc_205450:
	lea (dat_20562c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205462
	lea (dat_205626).l,a1
loc_205462:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20546c
	moveq #$0,d2
loc_20546c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205230

sub_205476:
	tst.b ($ff195b).l
	beq.s loc_205482
	move.b dat_205484(pc,d0.w),d0
loc_205482:
	rts
dat_205484:
	.incbin 21636, 80
dat_2054d4:
	.incbin 21716, 120
dat_20554c:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205554:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20555c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205564:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20556c:
	.incbin 21868, 186
dat_205626:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20562c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205632:
	.incbin 22066, 18
dat_205644:
	.incbin 22084, 108
dat_2056b0:
	.incbin 22192, 38
dat_2056d6:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2056de:
	.incbin 22238, 56

sub_205716:
	tst.b (a0)
	beq.w loc_205778
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205778
	move.b d0,(a2)
	lea (dat_22f1b0).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205778
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_20574a:
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
loc_205764:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205764
	dbf d1,loc_20574a
loc_205778:
	rts

sub_20577a:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2057ee
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
	bne.s loc_2057dc
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_2057dc:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_2057ee:
	rts
loc_2057f0:
	move.w #$e,d0

sub_2057f4:
	cmpi.w #$67,d0
	bne.s loc_205802
	move.b #$1,($ff1958).l
loc_205802:
	move.w d0,($a12010).l
loc_205808:
	move.w ($a12020).l,d0
	beq.s loc_205808
	cmp.w ($a12020).l,d0
	bne.s loc_205808
	move.w #$0,($a12010).l
loc_205820:
	move.w ($a12020).l,d0
	bne.s loc_205820
	move.w ($a12020).l,d0
	bne.s loc_205820
	rts
	dc.b $00,$00

sub_205834:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205850
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205850:
	subq.b #$1,$1e(a0)
	bpl.s loc_205890
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205892
loc_20586c:
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
loc_205890:
	rts
loc_205892:
	addq.b #$1,d0
	bne.s loc_2058a2
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20586c
loc_2058a2:
	addq.b #$1,d0
	bne.s loc_2058b6
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20586c
loc_2058b6:
	addq.b #$1,d0
	bne.s loc_2058c0
	move.b $2(a1,d1.w),$1c(a0)
loc_2058c0:
	addq.b #$1,d0
	bne.s loc_2058c8
	addq.b #$2,$24(a0)
loc_2058c8:
	addq.b #$1,d0
	bne.s loc_2058d6
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_2058d6:
	addq.b #$1,d0
	bne.s loc_2058de
	addq.b #$2,$25(a0)
loc_2058de:
	rts
	.incbin 22752, 536

sub_205af8:
	rts
	.incbin 23290, 1454
loc_2060a8:
	bclr.b #$7,($ff156b).l
	beq.s loc_2060f6
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2060f8(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2060cc:
	move.l (a1)+,(a2)+
	dbf d0,loc_2060cc
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2060f6:
	rts
dat_2060f8:
	.incbin 24824, 58
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23b59e,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206210
	cmpi.b #$6,$24(a1)
	bcc.w loc_206210
	bsr.w sub_206274
	beq.w loc_206210
	tst.b $28(a0)
	bne.s loc_2061c2
	move.w $10(a1),d0
	bpl.s loc_206182
	neg.w d0
loc_206182:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206194
	move.w #$d00,d1
loc_206194:
	cmp.w d1,d0
	bcc.s loc_20619a
	move.w d1,d0
loc_20619a:
	tst.w $10(a1)
	bpl.s loc_2061a2
	neg.w d0
loc_2061a2:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2061f2
	neg.w $14(a1)
	bra.s loc_2061f2
loc_2061c2:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206212
	move.w $12(a1),d0
	bpl.s loc_2061d2
	neg.w d0
loc_2061d2:
	cmpi.w #$d00,d0
	bcc.s loc_2061dc
	move.w #$d00,d0
loc_2061dc:
	tst.w $12(a1)
	bpl.s loc_2061e4
	neg.w d0
loc_2061e4:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_2061f2:
	bset.b #$2,$22(a1)
	bne.s loc_206210
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206210:
	rts
loc_206212:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_20625e
	cmpi.b #$2,$28(a0)
	bne.s loc_20622e
	tst.w $12(a1)
	bpl.s loc_2061f2
	bra.s loc_206234
loc_20622e:
	tst.w $12(a1)
	bmi.s loc_2061f2
loc_206234:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206246
	btst.l #$2,d1
	beq.s loc_2061f2
	neg.w d0
loc_206246:
	cmpi.b #$2,$28(a0)
	beq.s loc_206254
	bset.b #$1,$22(a1)
loc_206254:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2061f2
loc_20625e:
	tst.w $10(a1)
	bmi.s loc_2061f2
	btst.l #$0,d1
	beq.w loc_2061f2
	move.w #$f600,d0
	bra.w loc_2061e4

sub_206274:
	tst.b ($ff1906).l
	bne.s loc_2062a8
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2062a8
	cmpi.w #$50,d0
	bcc.s loc_2062a8
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2062a8
	cmpi.w #$50,d0
	bcc.s loc_2062a8
	moveq #$1,d0
	rts
loc_2062a8:
	moveq #$0,d0
	rts

sub_2062ac:
	rts
loc_2062ae:
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
	bne.s loc_206368
	move.b ($ff1593).l,($ff195b).l
loc_206368:
	tst.b ($ff1522).l
	bpl.s loc_20637e
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20637e:
	rts

sub_206380:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2062ae
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
	bne.s loc_20643a
	move.b ($ff1591).l,($ff195b).l
loc_20643a:
	cmpi.b #$2,($ff1506).l
	bne.s loc_20645c
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_20645c:
	tst.b ($ff1522).l
	bpl.s loc_206472
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206472:
	rts

sub_206474:
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
	bpl.s loc_2064b0
	move.b d1,d0
	bpl.s loc_2064aa
	subq.b #$1,d0
loc_2064aa:
	addi.b #$20,d0
	bra.s loc_2064ba
loc_2064b0:
	move.b d1,d0
	bpl.s loc_2064b6
	addq.b #$1,d0
loc_2064b6:
	addi.b #$1f,d0
loc_2064ba:
	andi.b #$c0,d0
	beq.w loc_20658a
	cmpi.b #$80,d0
	beq.w loc_206726
	andi.b #$38,d1
	bne.s loc_2064d2
	addq.w #$8,d2
loc_2064d2:
	cmpi.b #$40,d0
	beq.w loc_2067fc
	bra.w loc_20665e

sub_2064de:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206784
	cmpi.b #$80,d0
	beq.w sub_2066ae
	cmpi.b #$c0,d0
	beq.w loc_2065ee

sub_206506:
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
loc_20656a:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206578
	move.b ($f768).w,d3
	exg d0,d1
loc_206578:
	btst.l #$0,d3
	beq.s loc_206580
	move.b d2,d3
loc_206580:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_20658a:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201120).l
	move.b #$0,d2
loc_2065a6:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2065b2
	move.b d2,d3
loc_2065b2:
	rts

sub_2065b4:
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
	beq.s loc_2065ec
	move.b #$0,d3
loc_2065ec:
	rts
loc_2065ee:
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
	bra.w loc_20656a

sub_206656:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20665e:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201290).l
	move.b #$c0,d2
	bra.w loc_2065a6
	.incbin 26238, 48

sub_2066ae:
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
	bra.w loc_20656a

sub_20671e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206726:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201120).l
	move.b #$80,d2
	bra.w loc_2065a6
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
	beq.s loc_206782
	move.b #$80,d3
loc_206782:
	rts
loc_206784:
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
	bra.w loc_20656a

sub_2067f4:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2067fc:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201290).l
	move.b #$40,d2
	bra.w loc_2065a6
	.incbin 26656, 48

sub_206850:
	btst.b #$0,$2c(a0)
	beq.s loc_20685c
	moveq #$0,d0
	rts
loc_20685c:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206880
	addi.w #$c,d3
	moveq #$a,d5
loc_206880:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_20688e:
	tst.b $1(a1)
	bpl.s loc_20689a
	move.b $20(a1),d0
	bne.s loc_2068a6
loc_20689a:
	lea $40(a1),a1
	dbf d6,loc_20688e
	moveq #$0,d0
	rts
loc_2068a6:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206ccc).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2068ce
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2068d4
	bra.w loc_20689a
loc_2068ce:
	cmp.w d4,d0
	bhi.w loc_20689a
loc_2068d4:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2068ec
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2068f2
	bra.w loc_20689a
loc_2068ec:
	cmp.w d5,d0
	bhi.w loc_20689a
loc_2068f2:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_20698a
	cmpi.b #$c0,d1
	beq.w loc_206b80
	tst.b d1
	bmi.w loc_20690e
	bra.s loc_20691a
loc_20690e:
	tst.b ($ff151f).l
	bne.s loc_20689a
	bra.w sub_206a54
loc_20691a:
	tst.b ($ff1956).l
	beq.s loc_20692a
	tst.b $29(a1)
	bne.s loc_206932
	rts
loc_20692a:
	tst.b $29(a1)
	beq.s loc_206932
	rts
loc_206932:
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_20694e
	cmpi.w #$5a,$30(a0)
	bcc.s loc_20694c
	addq.b #$2,$24(a1)
loc_20694c:
	rts
loc_20694e:
	tst.w $12(a0)
	bpl.s loc_206978
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206988
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206988
	addq.b #$4,$25(a1)
	rts
loc_206978:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206988
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206988:
	rts

sub_20698a:
	tst.b ($ff1521).l
	bne.s loc_2069a4
	tst.b ($ff151f).l
	bne.s loc_2069a4
	cmpi.b #$2,$1c(a0)
	bne.w sub_206a54
loc_2069a4:
	tst.b $21(a1)
	beq.s loc_2069ce
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2069cc
	bset.b #$7,$22(a1)
loc_2069cc:
	rts
loc_2069ce:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2069e6
	moveq #$6,d0
loc_2069e6:
	move.w d0,$3e(a1)
	move.w dat_206a46(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206a00
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206a00:
	bsr.w sub_2097ac
	move.w #$96,d0
	jsr (sub_2022c6).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206a36
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206a3e
	neg.w $12(a0)
	rts
loc_206a36:
	addi.w #$100,$12(a0)
	rts
loc_206a3e:
	subi.w #$100,$12(a0)
	rts
dat_206a46:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206a54:
	btst.b #$0,$2c(a0)
	bne.s loc_206a6c
	tst.b ($ff1521).l
	bne.s loc_206a6c
	tst.b ($ff151f).l
	beq.s loc_206a70
loc_206a6c:
	moveq #$ffffffff,d0
	rts
loc_206a70:
	nop
	tst.w $30(a0)
	bne.s loc_206a6c
	movea.l a1,a2

sub_206a7a:
	tst.b ($ff151e).l
	bne.s loc_206ab4
	tst.w ($ff1512).l
	beq.w loc_206b1e
	jsr (sub_2072ba).l
	bne.s loc_206ab4
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b ($ff1956).l
	beq.s loc_206ab4
	move.b #$1,$29(a1)
loc_206ab4:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206aca
	move.b #$0,($ff156f).l
loc_206aca:
	move.b #$4,$24(a0)
	bsr.w sub_204e8a
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206afa
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206afa:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206b08
	neg.w $10(a0)
loc_206b08:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206b1e:
	tst.w ($ff1588).l
	bne.w loc_206ab4

sub_206b28:
	tst.w ($ff1906).l
	bne.s loc_206b7c
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_204e8a
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
loc_206b7c:
	moveq #$ffffffff,d0
	rts
loc_206b80:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$6,d1
	beq.w loc_206c90
	cmpi.b #$17,d1
	beq.w loc_206c18
	cmpi.b #$1f,d1
	beq.w loc_206c18
	cmpi.b #$22,d1
	beq.w loc_206c60
	cmpi.b #$23,d1
	beq.w loc_206c18
	cmpi.b #$2d,d1
	beq.w loc_206c6e
	cmpi.b #$30,d1
	beq.w loc_206c7a
	tst.b ($f7aa).w
	beq.w loc_206c16
	cmpi.b #$1,($f7aa).w
	beq.s loc_206be0
	cmpi.b #$4,($f7aa).w
	beq.s loc_206c02
	cmpi.b #$5,($f7aa).w
	beq.s loc_206c10
loc_206be0:
	cmpi.b #$3c,d1
	blt.s loc_206c16
	cmpi.b #$3f,d1
	bgt.s loc_206c16
	bsr.w sub_20698a
	tst.b $20(a1)
	bne.s loc_206bfa
	addq.b #$3,$21(a1)
loc_206bfa:
	clr.b $20(a1)
	bra.w loc_206c18
loc_206c02:
	cmpi.b #$3f,d1
	beq.s loc_206c24
	cmpi.b #$3e,d1
	beq.s loc_206c1e
	bra.s loc_206c16
loc_206c10:
	cmpi.b #$3d,d1
	beq.s loc_206c1e
loc_206c16:
	rts
loc_206c18:
	addq.b #$1,$21(a1)
	rts
loc_206c1e:
	bsr.w sub_206a54
	bra.s loc_206c18
loc_206c24:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_206c5e
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_206c5e
	neg.w $10(a0)
loc_206c5e:
	rts
loc_206c60:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206c6c
	addq.b #$1,$21(a1)
loc_206c6c:
	rts
loc_206c6e:
	btst.b #$2,$22(a0)
	beq.w sub_20698a
	bra.s loc_206c18
loc_206c7a:
	move.w $8(a0),d0
	sub.w $8(a1),d0
	smi d0
	move.b $29(a1),d1
	eor.b d0,d1
	beq.w sub_20698a
	bra.s loc_206c18
loc_206c90:
	tst.w $12(a0)
	bpl.s loc_206cba
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206cca
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206cca
	addq.b #$4,$25(a1)
	rts
loc_206cba:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206cca
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206cca:
	rts
dat_206ccc:
	.incbin 27852, 126
loc_206d4a:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206d60
	move.l #$4000,(dat_206eda).l
	bra.s loc_206d80
loc_206d60:
	addi.l #$2000,(dat_206eda).l
	cmpi.l #$80000,(dat_206eda).l
	bls.s loc_206d80
	move.l #$80000,(dat_206eda).l
loc_206d80:
	move.l (dat_206eda).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206d92
	sub.l d0,$c(a0)
loc_206d92:
	btst.b #$1,($f604).w
	beq.s loc_206d9e
	add.l d0,$c(a0)
loc_206d9e:
	btst.b #$2,($f604).w
	beq.s loc_206daa
	sub.l d0,$8(a0)
loc_206daa:
	btst.b #$3,($f604).w
	beq.s loc_206db6
	add.l d0,$8(a0)
loc_206db6:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f38).l
	move.w (a1),($ff194e).l
	lea (dat_206ede).l,a2
	btst.b #$6,($f605).w
	beq.s loc_206df8
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_206df2
	move.b #$0,d1
loc_206df2:
	move.b d1,($ff1904).l
loc_206df8:
	btst.b #$7,($f605).w
	beq.s loc_206e18
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_206e12
	add.b (a2),d1
loc_206e12:
	move.b d1,($ff1904).l
loc_206e18:
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
	beq.s loc_206ea4
	bsr.w sub_2072ba
	bne.s loc_206ea4
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
loc_206ea4:
	btst.b #$4,($f605).w
	beq.s loc_206ed4
	move.b #$0,($ff1906).l
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_206ed4:
	jmp (sub_20360e).l
dat_206eda:
	dc.b $00,$00,$40,$00
dat_206ede:
	.incbin 28382, 458

sub_2070a8:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2070b6:
	clr.l (a2)+
	dbf d0,loc_2070b6
	rts

sub_2070be:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2070cc(pc,d0.w),d0
	jmp dat_2070cc(pc,d0.w)
dat_2070cc:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_20736c).l,a0
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
	bcc.s loc_20710a
	moveq #$0,d6
loc_20710a:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207112:
	cmp.w (a0),d6
	bls.s loc_207124
	tst.b $4(a0)
	bpl.s loc_207120
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207120:
	addq.w #$8,a0
	bra.s loc_207112
loc_207124:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207144
loc_207132:
	cmp.w (a0),d6
	bls.s loc_207144
	tst.b $4(a0)
	bpl.s loc_207140
	addq.b #$1,$1(a2)
loc_207140:
	addq.w #$8,a0
	bra.s loc_207132
loc_207144:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20722e
	bge.s loc_2071d4
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2071b0
loc_20717e:
	cmp.w -$8(a0),d6
	bge.s loc_2071b0
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207194
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207194:
	bsr.w sub_207252
	bne.s loc_20719e
	subq.w #$8,a0
	bra.s loc_20717e
loc_20719e:
	tst.b $4(a0)
	bpl.s loc_2071ae
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2071ae:
	addq.w #$8,a0
loc_2071b0:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2071bc:
	cmp.w -$8(a0),d6
	bgt.s loc_2071ce
	tst.b -$4(a0)
	bpl.s loc_2071ca
	subq.b #$1,(a2)
loc_2071ca:
	subq.w #$8,a0
	bra.s loc_2071bc
loc_2071ce:
	move.l a0,($f770).w
	rts
loc_2071d4:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2071e8:
	cmp.w (a0),d6
	bls.s loc_20720a
	tst.b $4(a0)
	bpl.s loc_2071f6
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2071f6:
	bsr.w sub_207252
	beq.s loc_2071e8
	tst.b $4(a0)
	bpl.s loc_20720a
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20720a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_20722a
loc_207218:
	cmp.w (a0),d6
	bls.s loc_20722a
	tst.b $4(a0)
	bpl.s loc_207226
	addq.b #$1,$1(a2)
loc_207226:
	addq.w #$8,a0
	bra.s loc_207218
loc_20722a:
	move.l a0,($f774).w
loc_20722e:
	rts

sub_207230:
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

sub_207252:
	bsr.s sub_207230
	beq.s loc_207264
	tst.b $4(a0)
	bpl.s loc_20726a
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_20726a
loc_207264:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_20726a:
	bsr.w sub_2072ba
	bne.s loc_2072b8
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
	bpl.s loc_20729a
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20729a:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2072ac
	nop
	nop
	nop
	nop
loc_2072ac:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2072b8:
	rts

sub_2072ba:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2072c2:
	tst.b (a1)
	beq.s loc_2072ce
	lea $40(a1),a1
	dbf d0,loc_2072c2
loc_2072ce:
	rts

sub_2072d0:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2072ee
loc_2072e2:
	tst.b (a1)
	beq.s loc_2072ee
	lea $40(a1),a1
	dbf d0,loc_2072e2
loc_2072ee:
	rts
loc_2072f0:
	move.w $8(a0),d0
loc_2072f4:
	tst.b $1(a0)
	bmi.s loc_20735e
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20735e
loc_207312:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207354
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20734c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207344
	moveq #$0,d1
	bra.s loc_20734c
loc_207344:
	cmpi.w #$3,d1
	bcs.s loc_20734c
	moveq #$2,d1
loc_20734c:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207354:
	jsr (sub_2036ba).l
	moveq #$1,d0
	rts
loc_20735e:
	btst.b #$7,($ff152e).l
	bne.s loc_207312
	moveq #$0,d0
	rts
dat_20736c:
	.incbin 29548, 1468
dat_207928:
	dc.b $15,$70,$01,$2b
loc_20792c:
	sub.w $0(a2,a6.w),d0
	.incbin 31024, 822

sub_207c66:
	btst.b #$3,$22(a0)
	beq.s loc_207cd6
	btst.b #$3,$22(a1)
	beq.s loc_207cd6
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207cd6
	tst.b $2a(a1)
	beq.s loc_207c98
	move.w #$ab,d0
	jsr (sub_2022c6).l
loc_207c98:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207cc4
	cmpi.b #$17,$1c(a1)
	beq.s loc_207cc4
	bclr.b #$0,$2c(a1)
loc_207cc4:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207cd6
	bclr.b #$1,$22(a1)
loc_207cd6:
	rts

sub_207cd8:
	cmpi.b #$4,$24(a1)
	bne.s loc_207cea
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207cea:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207d4a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207d0c
	bclr.b #$3,$22(a0)
	bra.w sub_207c66
loc_207d0c:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207d4a
	tst.b ($ff195b).l
	beq.s loc_207d34
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207d44
loc_207d34:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207d44:
	move.b #$0,$1c(a1)
loc_207d4a:
	bset.b #$3,$22(a1)
	beq.s loc_207d6c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207da4
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207d6c:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207d98
	cmpi.b #$2,$24(a0)
	beq.s loc_207d9e
loc_207d98:
	move.w $10(a1),$14(a1)
loc_207d9e:
	bclr.b #$1,$22(a1)
loc_207da4:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_207dae:
	move.b #$1,$25(a0)

sub_207db4:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208068
	btst.b #$6,$2c(a1)
	bne.w loc_208068
	cmpi.b #$6,$24(a1)
	bcc.w loc_208068
	tst.b $0(a1)
	beq.w loc_208068
	tst.b $1(a0)
	bpl.w loc_208068
	tst.b ($ff1906).l
	bne.w loc_208068
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208068
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208068
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207e22
	btst.b #$3,$22(a0)
	bne.s loc_207e34
	bra.w loc_208068
loc_207e22:
	cmpi.b #$1,$25(a0)
	bne.s loc_207e34
	tst.w $12(a1)
	beq.s loc_207e34
	bmi.w loc_208068
loc_207e34:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208068
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208068
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207e6a
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207e6a:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207e78
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207e78:
	cmp.w d4,d5
	bcs.w loc_207f0c
	cmpi.b #$1,$25(a0)
	beq.w loc_208068
	cmpi.b #$a,$0(a0)
	bne.s loc_207e9a
	btst.b #$1,$22(a1)
	bne.w loc_208068
loc_207e9a:
	cmpi.b #$4,d5
	bls.w loc_208068
	bsr.w sub_2080b8
	move.l d0,-(a7)
	bsr.w sub_207c66
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207ec4
	tst.w $10(a1)
	beq.s loc_207ef4
	bpl.s loc_207ecc
	bra.s loc_207ef4
loc_207ec4:
	tst.w $10(a1)
	beq.s loc_207ef4
	bpl.s loc_207ef4
loc_207ecc:
	bsr.w sub_208078
	btst.b #$1,$22(a1)
	bne.s loc_207eea
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207eea:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207ef4:
	bsr.w sub_20812e
	bsr.w sub_208078
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207f0c:
	cmpi.b #$19,$0(a0)
	bne.s loc_207f1e
	btst.b #$2,$22(a1)
	bne.w loc_208068
loc_207f1e:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207f34
	bmi.w loc_208004
loc_207f34:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207f46
	tst.w $12(a1)
	beq.s loc_207f46
	bmi.w loc_208068
loc_207f46:
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
	beq.s loc_207f92
	bpl.s loc_207f72
	neg.b d0
loc_207f72:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206474).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207f92
	tst.w $10(a0)
	bpl.s loc_207f8e
	neg.w d1
loc_207f8e:
	add.w d1,$8(a1)
loc_207f92:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_207ffc
	tst.w $12(a0)
	bmi.s loc_207fd0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206506).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207fd0
	add.w d1,$c(a1)
	bra.w loc_208068
loc_207fd0:
	tst.w $12(a0)
	bpl.s loc_207ffc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20671e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207ffc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b28).l
	movem.l (a7)+,a0-a1
	bra.s loc_208068
loc_207ffc:
	bsr.w sub_207cd8
	moveq #$1,d0
	rts
loc_208004:
	cmpi.b #$1,$25(a0)
	beq.s loc_208068
	cmpi.b #$9,$0(a0)
	beq.s loc_208068
	cmpi.b #$a,$0(a0)
	bne.s loc_20802e
	cmpi.b #$2,$25(a0)
	beq.s loc_20804e
	btst.b #$1,$1(a0)
	bne.s loc_20804e
	bra.s loc_208068
loc_20802e:
	btst.b #$1,$22(a1)
	bne.s loc_20804e
	tst.w $12(a0)
	beq.s loc_20804e
	bmi.s loc_20804e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b28).l
	movem.l (a7)+,a0-a1
loc_20804e:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20812e
	bsr.w sub_207c66
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208068:
	bsr.w sub_20812e
	bsr.w sub_207c66
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208078:
	tst.w $10(a0)
	beq.s loc_2080b6
	cmpi.b #$a,$0(a0)
	beq.s loc_2080b6
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208092
	neg.b d0
loc_208092:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206474).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2080b6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b28).l
	movem.l (a7)+,a0-a1
loc_2080b6:
	rts

sub_2080b8:
	cmpi.b #$a,$0(a0)
	bne.s loc_2080c8
	move.b #$0,$20(a1)
	rts
loc_2080c8:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20811c
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20812c
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_2080ea
	tst.w $10(a2)
	beq.s loc_20812c
loc_2080ea:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_2080fc
	cmp.w $8(a2),d1
	bcs.s loc_20812c
	bra.s loc_208102
loc_2080fc:
	cmp.w $8(a2),d1
	bcc.s loc_20812c
loc_208102:
	cmpi.b #$15,$0(a0)
	beq.s loc_20812c
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b28).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20811c:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20812c:
	rts

sub_20812e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208148
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208148
	move.b #$0,$20(a1)
loc_208148:
	rts
	.incbin 33098, 90
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207db4).l
	.incbin 33202, 270
loc_2082c0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2082ce(pc,d0.w),d0
	jmp dat_2082ce(pc,d0.w)
dat_2082ce:
	.incbin 33486, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2082c0
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208324
	tst.b $1(a0)
	bpl.s loc_20832c
loc_208324:
	move.w dat_20837e(pc,d0.w),d1
	jsr dat_20837e(pc,d1.w)
loc_20832c:
	bsr.w sub_20360e
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20835e
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20835e:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2036ba
	rts
dat_20837e:
	.incbin 33662, 26
	addq.b #$2,$24(a0)
	move.l #$208700,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2083ee
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$208706,$4(a0)
	bra.s loc_208430
loc_2083ee:
	btst.l #$3,d0
	beq.s loc_20841c
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$208750,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bd16).l
	move.l (a7)+,d0
	bra.s loc_208430
loc_20841c:
	btst.b #$1,$1(a0)
	beq.s loc_208430
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208430:
	btst.l #$1,d0
	beq.s loc_20843c
	bset.b #$5,$2(a0)
loc_20843c:
	andi.w #$2,d0
	move.w dat_208448(pc,d0.w),$30(a0)
	rts
dat_208448:
	dc.b $f0,$00,$f6,$00

sub_20844c:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207db4).l
	tst.b $1(a0)
	bpl.s loc_208468
	lea ($d000).w,a1
	bsr.s sub_20844c
	bne.s loc_20846a
loc_208468:
	rts
loc_20846a:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2022c6).l
	lea (dat_2086f2).l,a1
	bra.w sub_205834
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 33982, 212
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jsr (sub_2022c6).l
	lea (dat_2086f2).l,a1
	bra.w sub_205834
	.incbin 34232, 18
	tst.b $1(a0)
	bpl.s loc_2085e2
	lea ($d000).w,a1
	bsr.w sub_20844c
	bne.s loc_2085e4
	btst.b #$5,$22(a0)
	bne.s loc_2085e4
loc_2085e2:
	rts
loc_2085e4:
	move.b #$16,$24(a0)
	moveq #$0,d0
	move.b #$e0,d0
	jsr (sub_2007ca).l
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
	beq.s loc_208622
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_208622:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_208644
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_208644:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_2022c6).l
	lea (dat_2086f2).l,a1
	bra.w sub_205834
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 34440, 106
dat_2086f2:
	.incbin 34546, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2087ec(pc,d0.w),d1
	jmp dat_2087ec(pc,d1.w)
dat_2087ec:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2087f6:
	.incbin 34806, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20884e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208846
	moveq #$0,d1
	bra.s loc_20884e
loc_208846:
	cmpi.w #$3,d1
	bcs.s loc_20884e
	moveq #$2,d1
loc_20884e:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20886a
	moveq #$6,d1
loc_20886a:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2087f6).l,a1
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
	beq.s loc_2088ba
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2088b2
	moveq #$0,d0
	bra.s loc_2088ba
loc_2088b2:
	cmpi.w #$3,d0
	bcs.s loc_2088ba
	moveq #$2,d0
loc_2088ba:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208988
	dbf d0,loc_2088ba
	bclr.b #$7,(a2)
	bra.s loc_208910
loc_2088cc:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2088f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2088f0
	moveq #$0,d0
	bra.s loc_2088f8
loc_2088f0:
	cmpi.w #$3,d0
	bcs.s loc_2088f8
	moveq #$2,d0
loc_2088f8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208988
	dbf d0,loc_2088f8
	bclr.b #$7,(a2)
	bsr.w sub_2072d0
	bne.w loc_208994
loc_208910:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208c5a,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208966
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208966
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208966:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_208988:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2088cc
loc_208994:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2089ba
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2089b2
	moveq #$0,d0
	bra.s loc_2089ba
loc_2089b2:
	cmpi.w #$3,d0
	bcs.s loc_2089ba
	moveq #$2,d0
loc_2089ba:
	lea $1(a2),a3
loc_2089be:
	btst.b #$0,-(a3)
	bne.w sub_2036ba
	dbf d0,loc_2089be
	tst.b $1(a0)
	bmi.s loc_2089ee
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208a68
loc_2089ee:
	tst.w ($ff190e).l
	bne.s loc_2089fe
	move.b ($ff1913).l,$1a(a0)
loc_2089fe:
	bra.w sub_20360e
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208a6c
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208a4e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208a46
	moveq #$0,d1
	bra.s loc_208a4e
loc_208a46:
	cmpi.w #$3,d1
	bcs.s loc_208a4e
	moveq #$2,d1
loc_208a4e:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208c52).l,a1
	bsr.w sub_205834
	bra.w sub_20360e
loc_208a68:
	bra.w sub_2036ba

sub_208a6c:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208abc
	bset.b #$1,($ff150d).l
	beq.s loc_208aa6
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208abc
	bset.b #$2,($ff150d).l
	bne.s loc_208abc
loc_208aa6:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_2057f4).l
loc_208abc:
	jmp (sub_2022c6).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208ad0(pc,d0.w),d1
	jmp dat_208ad0(pc,d1.w)
dat_208ad0:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_208aec
	move.w d0,d5
loc_208aec:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_208afc
loc_208af4:
	bsr.w sub_2072ba
	bne.w loc_208bb2
loc_208afc:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$208c5a,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208b5a
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_208b5a
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_208b5a:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_208ba2
	move.w d4,d0
	jsr (sub_2007ca).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_208ba2
	subi.w #$80,d4
	bcc.s loc_208ba2
	move.w #$288,d4
loc_208ba2:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_208af4
loc_208bb2:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_2022c6).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2035b8
	addi.w #$18,$12(a0)
	bmi.s loc_208c12
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_208c12
	jsr (sub_2065b4).l
	tst.w d1
	bpl.s loc_208c12
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_208c12:
	tst.b ($ff1916).l
	beq.s loc_208c4e
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_208c4e
	bra.w sub_20360e
	.incbin 35884, 34
loc_208c4e:
	bra.w sub_2036ba
dat_208c52:
	.incbin 35922, 402
loc_208de4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208e12(pc,d0.w),d0
	jsr dat_208e12(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208e10
	cmpi.w #$5a,($f786).w
	bcs.s loc_208e0a
	btst.b #$0,($ff1505).l
	bne.s loc_208e10
loc_208e0a:
	jmp (sub_20360e).l
loc_208e10:
	rts
dat_208e12:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$2093ec,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208e46
	move.b #$13,$1a(a0)
loc_208e46:
	rts
loc_208e48:
	tst.b ($ff0f01).l
	beq.s loc_208e56
	jmp (sub_2036ba).l
loc_208e56:
	cmpi.b #$a,$28(a0)
	beq.w loc_208de4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208e7a(pc,d0.w),d0
	jsr dat_208e7a(pc,d0.w)
	jsr (sub_20360e).l
	jmp (loc_2072f0).l
dat_208e7a:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$2093ec,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208ec8
	tst.b $29(a0)
	bne.s loc_208ec8
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_208ec8:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_208f94
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_208ef0
	addq.b #$2,$1a(a0)
loc_208ef0:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208f04
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_208f04:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_208f6a
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208f36
	tst.b $29(a0)
	beq.s loc_208f2e
	tst.b ($ff1956).l
	beq.s loc_208f6a
	bra.s loc_208f36
loc_208f2e:
	tst.b ($ff1956).l
	bne.s loc_208f6a
loc_208f36:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_208f94
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_208f64
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_208f64:
	jsr (sub_2057f4).l
loc_208f6a:
	rts
	.incbin 36716, 40

sub_208f94:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208fcc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208fc4
	moveq #$0,d1
	bra.s loc_208fcc
loc_208fc4:
	cmpi.w #$3,d1
	bcs.s loc_208fcc
	moveq #$2,d1
loc_208fcc:
	add.w d1,d0
	rts

sub_208fd0:
	cmpi.b #$6,($ff1506).l
	bne.s loc_208ff2
	tst.b ($ff1956).l
	beq.s loc_208fea
	tst.b $29(a0)
	bne.s loc_208ff2
	rts
loc_208fea:
	tst.b $29(a0)
	beq.s loc_208ff2
	rts
loc_208ff2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207db4).l
	tst.b $28(a0)
	bne.s loc_209014
	tst.b ($ff0f01).l
	beq.s loc_209014
	jmp (loc_2072f0).l
loc_209014:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208e48
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20902c(pc,d0.w),d1
	jmp dat_20902c(pc,d1.w)
dat_20902c:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$2093ec,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209076
	tst.b $29(a0)
	bne.s loc_209076
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209076:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_208f94
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_2090a2
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_2090a2:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_2090fc
	move.b $25(a0),d0
	beq.s loc_2090dc
	bsr.w sub_203556
	jsr (sub_2065b4).l
	tst.w d1
	bpl.w loc_2090ea
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_2090ea
loc_2090dc:
	tst.b $1(a0)
	bpl.s loc_2090ea
	lea ($d000).w,a1
	bsr.w sub_208fd0
loc_2090ea:
	tst.w ($ff190e).l
	bne.s loc_2090fc
	lea (dat_209364).l,a1
	bsr.w sub_205834
loc_2090fc:
	bsr.w sub_20360e
	jmp (loc_2072f0).l
	.incbin 37126, 606
dat_209364:
	dc.b $00,$14,$00,$20,$00,$2c,$00,$38
	dc.b $00,$44

sub_20936e:
	ori.w #$5c,(a0)
	ori.w #$74,$7e(a0)
	btst.b d0,(a0)
	.incbin 37754, 564
loc_2095ae:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2095c2(pc,d0.w),d0
	jsr dat_2095c2(pc,d0.w)
	jmp (sub_20360e).l
dat_2095c2:
	.incbin 38338, 146
	tst.b $28(a0)
	bmi.w loc_2095ae
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20966a(pc,d0.w),d0
	jmp dat_20966a(pc,d0.w)
dat_20966a:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$209704,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20969a
	move.b #$3,$1a(a0)
	bra.s loc_2096ba
loc_20969a:
	tst.w ($ff1588).l
	beq.s loc_2096a8
	move.b #$2,$1a(a0)
loc_2096a8:
	tst.b $28(a0)
	beq.s loc_2096ba
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_2096ba:
	tst.b $28(a0)
	bne.s loc_2096fe
	tst.b $29(a0)
	beq.s loc_2096ea
	tst.w ($ff1512).l
	beq.s loc_2096d6
	bclr.b #$5,$2(a0)
	bra.s loc_2096fe
loc_2096d6:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_2096fe
	eori.b #$20,$2(a0)
	bra.s loc_2096fe
loc_2096ea:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_2096fe
	move.b #$2,$1a(a0)
loc_2096fe:
	jmp (sub_20360e).l
	.incbin 38660, 168

sub_2097ac:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_2097c8
	move.l d1,(a3)
loc_2097c8:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_2097f2
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_2057f4).l
loc_2097f2:
	rts
loc_2097f4:
	tst.w ($ff1588).l
	beq.s loc_20984a
	bsr.w sub_209a46
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
	lea (dat_209ba6).l,a2
	moveq #$2,d6
	bsr.w sub_209bfe
	bra.w loc_2098a4
loc_20984a:
	tst.b ($ff1511).l
	beq.s loc_20986e
	bpl.s loc_209858
	bsr.w sub_2099f0
loc_209858:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209ae0
loc_20986e:
	tst.b ($ff150f).l
	beq.s loc_2098a4
	bpl.s loc_20987c
	bsr.w sub_2099dc
loc_20987c:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_2098a0
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_2098a0:
	bsr.w sub_209ad6
loc_2098a4:
	tst.w ($ff1588).l
	bne.w loc_209950
	tst.b ($ff1510).l
	beq.w loc_209950
	tst.w ($f63a).w
	bne.w loc_209950
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_2099ae
	tst.b ($f7cc).w
	bne.s loc_2098fa
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2098fa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2098fa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_2098fa
	move.b #$9,(a1)
loc_2098fa:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209bec
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209bf6
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20994c
	move.w #$63,d1
loc_20994c:
	bsr.w sub_209bf6
loc_209950:
	tst.b ($ff150e).l
	beq.s loc_209962
	clr.b ($ff150e).l
	bsr.w sub_209bcc
loc_209962:
	tst.b ($f7d6).w
	beq.s loc_2099ac
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209982
	move.l #$6d400001,d0
loc_209982:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209a64
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_2099a2
	move.l #$6e800001,d0
loc_2099a2:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209a64
loc_2099ac:
	rts
loc_2099ae:
	btst.b #$7,($ff152e).l
	bne.s loc_2099da
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206b28
	move.b #$1,($ff150c).l
loc_2099da:
	rts

sub_2099dc:
	move.l #$73600002,($c00004).l
	lea dat_209a42(pc),a2
	move.w #$2,d2
	bra.s loc_209a0c

sub_2099f0:
	lea ($c00000).l,a6
	bsr.w sub_209bcc
	move.l #$70600002,($c00004).l
	lea dat_209a3a(pc),a2
	move.w #$6,d2
loc_209a0c:
	lea (dat_233a34).l,a1
loc_209a12:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209a2e
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209a22:
	move.l (a3)+,(a6)
	dbf d1,loc_209a22
loc_209a28:
	dbf d2,loc_209a12
	rts
loc_209a2e:
	move.l #$0,(a6)
	dbf d1,loc_209a2e
	bra.s loc_209a28
dat_209a3a:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209a42:
	dc.b $ff,$ff,$00,$00

sub_209a46:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209bc2
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209bc2

sub_209a64:
	lea (dat_209b9e).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209a74:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209a78:
	sub.l d3,d1
	bcs.s loc_209a80
	addq.w #$1,d2
	bra.s loc_209a78
loc_209a80:
	add.l d3,d1
	tst.w d2
	beq.s loc_209a8a
	move.w #$1,d4
loc_209a8a:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209a96
	tst.w d6
	bne.s loc_209ac8
loc_209a96:
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
loc_209abc:
	addi.l #$400000,d0
	dbf d6,loc_209a74
	rts
loc_209ac8:
	moveq #$f,d5
loc_209aca:
	move.l #$0,(a6)
	dbf d5,loc_209aca
	bra.s loc_209abc

sub_209ad6:
	lea (dat_209ba6).l,a2
	moveq #$2,d6
	bra.s loc_209ae8

sub_209ae0:
	lea (dat_209b9a).l,a2
	moveq #$5,d6
loc_209ae8:
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209af0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209af4:
	sub.l d3,d1
	bcs.s loc_209afc
	addq.w #$1,d2
	bra.s loc_209af4
loc_209afc:
	add.l d3,d1
	tst.w d2
	beq.s loc_209b06
	move.w #$1,d4
loc_209b06:
	tst.w d4
	beq.s loc_209b34
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
loc_209b34:
	addi.l #$400000,d0
	dbf d6,loc_209af0
	rts
	.incbin 39744, 32
loc_209b60:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209b64:
	sub.l d3,d1
	bcs.s loc_209b6c
	addq.w #$1,d2
	bra.s loc_209b64
loc_209b6c:
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
	dbf d6,loc_209b60
	rts
dat_209b9a:
	dc.b $00,$01,$86,$a0
dat_209b9e:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209ba6:
	dc.b $00,$00,$00,$64
dat_209baa:
	dc.b $00,$00,$00,$0a
dat_209bae:
	dc.b $00,$00,$00,$01
dat_209bb2:
	.incbin 39858, 16

sub_209bc2:
	moveq #$3,d6
	lea (dat_209bb2).l,a2
	bra.s sub_209bfe

sub_209bcc:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209be2
	moveq #$9,d1
loc_209be2:
	lea (dat_209bae).l,a2
	moveq #$0,d6
	bra.s sub_209bfe

sub_209bec:
	lea (dat_209bae).l,a2
	moveq #$0,d6
	bra.s sub_209bfe

sub_209bf6:
	lea (dat_209baa).l,a2
	moveq #$1,d6

sub_209bfe:
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209c06:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209c0a:
	sub.l d3,d1
	bcs.s loc_209c12
	addq.w #$1,d2
	bra.s loc_209c0a
loc_209c12:
	add.l d3,d1
	tst.w d2
	beq.s loc_209c1c
	move.w #$1,d4
loc_209c1c:
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
	dbf d6,loc_209c06
	rts
	.incbin 40018, 954
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a030(pc,d0.w),d0
	jsr dat_20a030(pc,d0.w)
	cmpi.b #$2,($ff1507).l
	beq.s loc_20a02a
	jsr (sub_20360e).l
loc_20a02a:
	jmp (loc_2072f0).l
dat_20a030:
	.incbin 41008, 1636
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a6a2(pc,d0.w),d1
	jmp dat_20a6a2(pc,d1.w)
dat_20a6a2:
	.incbin 42658, 300
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a7dc(pc,d0.w),d0
	jmp dat_20a7dc(pc,d0.w)
dat_20a7dc:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_2057f4).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20a8b2,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20a838
	tst.b ($ff1508).l
	beq.s loc_20a840
	move.l #$20a8b6,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20a840
loc_20a838:
	tst.b ($ff1508).l
	bne.s loc_20a850
loc_20a840:
	bset.b #$7,($ff156b).l
	jsr (sub_2072ba).l
	beq.s loc_20a856
loc_20a850:
	jmp (sub_2036ba).l
loc_20a856:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20a898
	move.w #$6e,d0
	jmp (sub_2057f4).l
loc_20a898:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20a8ac
	bge.s loc_20a8a8
	neg.w d0
loc_20a8a8:
	add.w d0,$8(a0)
loc_20a8ac:
	jmp (sub_20360e).l
	.incbin 43186, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a8f8(pc,d0.w),d0
	jmp dat_20a8f8(pc,d0.w)
dat_20a8f8:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20aff6,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20afb6).l,a2
loc_20a946:
	jsr (sub_2072ba).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20aff6,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20a998
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20a998:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20a946
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20a9c0
	bge.s loc_20a9b6
	neg.w d0
loc_20a9b6:
	add.w d0,$a(a0)
	jmp (sub_20360e).l
loc_20a9c0:
	addq.b #$4,$24(a0)
	jmp (sub_20360e).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20a9e4
	bge.s loc_20a9da
	neg.w d0
loc_20a9da:
	add.w d0,$8(a0)
	jmp (sub_20360e).l
loc_20a9e4:
	addq.b #$4,$24(a0)
	jmp (sub_20360e).l
	tst.b $1e(a0)
	beq.s loc_20a9fe
	subq.b #$1,$1e(a0)
	jmp (sub_20360e).l
loc_20a9fe:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20aa18
	bge.s loc_20aa0e
	neg.w d0
loc_20aa0e:
	add.w d0,$a(a0)
	jmp (sub_20360e).l
loc_20aa18:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202490).l
	tst.b $1e(a0)
	beq.s loc_20aa3a
	subq.b #$1,$1e(a0)
	jmp (sub_20360e).l
loc_20aa3a:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20aa54
	bge.s loc_20aa4a
	neg.w d0
loc_20aa4a:
	add.w d0,$8(a0)
	jmp (sub_20360e).l
loc_20aa54:
	jmp (sub_2036ba).l
	tst.l ($f680).w
	bne.s loc_20aa6e
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2036ba).l
loc_20aa6e:
	rts
	.incbin 43632, 1350
dat_20afb6:
	.incbin 44982, 3306
loc_20bca0:
	lea dat_20bcf2(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bcac:
	cmp.w (a1)+,d0
	bcs.s loc_20bcb4
	addq.b #$2,d1
	bra.s loc_20bcac
loc_20bcb4:
	move.b d1,($ff1574).l
	move.w dat_20bd0a(pc,d1.w),d0
	jmp (sub_202490).l

sub_20bcc4:
	lea dat_20bcf2(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bcd0:
	cmp.w (a1)+,d0
	bcs.s loc_20bcd8
	addq.b #$2,d1
	bra.s loc_20bcd0
loc_20bcd8:
	cmp.b ($ff1574).l,d1
	bne.s loc_20bce2
	rts
loc_20bce2:
	move.b d1,($ff1574).l
	move.w dat_20bcfe(pc,d1.w),d0
	jmp (loc_2024c2).l
dat_20bcf2:
	dc.b $07,$00,$0b,$00,$0f,$00,$14,$00
	dc.b $18,$20,$ff,$ff
dat_20bcfe:
	dc.b $00,$09,$00,$0a,$00,$0b,$00,$0c
	dc.b $00,$0d,$00,$0e
dat_20bd0a:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06
	dc.b $00,$07,$00,$08

sub_20bd16:
	move.w #$4ea,d1
	cmpi.b #$e,d0
	beq.s loc_20bd24
	move.w #$4f2,d1
loc_20bd24:
	move.w d1,$2(a0)
	rts
	.incbin 48426, 42
	tst.b $28(a0)
	bmi.w loc_20be46
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bd7a(pc,d0.w),d0
	jsr dat_20bd7a(pc,d0.w)
	jsr (sub_20360e).l
	move.w $36(a0),d0
	jmp (loc_2072f4).l
dat_20bd7a:
	.incbin 48506, 204
loc_20be46:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be9a(pc,d0.w),d0
	jsr dat_20be9a(pc,d0.w)
	jsr (sub_20360e).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20be8a
	movea.w d1,a1
	tst.b $0(a1)
	beq.s loc_20be94
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20be8a:
	move.w $36(a0),d0
	jmp (loc_2072f4).l
loc_20be94:
	jmp (sub_2036ba).l
dat_20be9a:
	dc.b $00,$04,$00,$54
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$488,$2(a0)
	move.b #$4,$18(a0)
	move.l #$20bf8c,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	cmpi.b #$ff,$28(a0)
	beq.s loc_20beee
	move.b #$1,$1a(a0)
	move.b #$83,$20(a0)
	move.b #$12,$19(a0)
loc_20beee:
	tst.b $1a(a0)
	bne.w loc_20bf5e
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20bf06
	neg.w d0
loc_20bf06:
	cmpi.w #$20,d0
	bcc.s loc_20bf5c
	jsr (sub_207db4).l
	beq.s loc_20bf5c
	btst.b #$3,$22(a0)
	beq.s loc_20bf5c
	tst.b ($ff1521).l
	bne.s loc_20bf5c
	tst.b ($ff151f).l
	bne.s loc_20bf5c
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20bf5a
	tst.w $30(a0)
	bne.s loc_20bf5a
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206a7a).l
loc_20bf5a:
	movea.l (a7)+,a0
loc_20bf5c:
	rts
loc_20bf5e:
	btst.b #$7,$1(a0)
	beq.s loc_20bf8a
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20bf76
	neg.w d0
loc_20bf76:
	cmpi.w #$20,d0
	bcc.s loc_20bf8a
	move.w $8(a0),d3
	move.w $c(a0),d4
	jsr (sub_207db4).l
loc_20bf8a:
	rts
	.incbin 49036, 694
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c262(pc,d0.w),d0
	jsr dat_20c262(pc,d0.w)
	bsr.s sub_20c266
	jsr (sub_20360e).l
	move.w $36(a0),d0
	jmp (loc_2072f4).l
dat_20c262:
	dc.b $00,$0e,$00,$38

sub_20c266:
	lea ($d000).w,a1
	jmp (sub_207db4).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$41b,$2(a0)
	move.l #$20c318,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	tst.b $3a(a0)
	bne.s loc_20c2c0
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea dat_20c2e8(pc,d0.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$3a(a0)
	move.b (a2)+,$19(a0)
	move.b (a2)+,$16(a0)
	bra.s loc_20c2d6
loc_20c2c0:
	subq.b #$1,$3a(a0)
	bne.s loc_20c2d6
	addq.b #$1,$3c(a0)
	cmpi.b #$c,$3c(a0)
	bcs.s loc_20c2d6
	clr.b $3c(a0)
loc_20c2d6:
	clr.w $12(a0)
	tst.b $1a(a0)
	bne.s loc_20c2e6
	move.w #$100,$12(a0)
loc_20c2e6:
	rts
dat_20c2e8:
	.incbin 49896, 224
	tst.b $29(a0)
	bpl.s loc_20c3d2
	bra.w loc_20c4f6
loc_20c3d2:
	jsr (sub_20e338).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c3f6(pc,d0.w),d0
	jsr dat_20c3f6(pc,d0.w)
	jsr (sub_20360e).l
	move.w $30(a0),d0
	jmp (loc_2072f4).l
dat_20c3f6:
	dc.b $00,$06,$00,$92,$00,$ae
	move.w $8(a0),$30(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$244e,$2(a0)
	move.l #$20c4e8,$4(a0)
	move.b #$18,$19(a0)
	move.b #$e,$16(a0)
	move.b #$2a,$20(a0)
	move.l #$ffffb000,$2c(a0)
	addq.b #$2,$24(a0)
	jsr (sub_2072d0).l
	beq.s loc_20c448
	jmp (sub_2036ba).l
loc_20c448:
	move.b $0(a0),$0(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w a0,$3e(a1)
	tst.b $29(a0)
	beq.s loc_20c488
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
loc_20c488:
	addi.l #$10000,$c(a0)
	jsr (sub_2065b4).l
	tst.w d1
	bpl.s loc_20c4a2
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20c4a2:
	rts
	tst.b $1(a0)
	bpl.s loc_20c4c2
	addq.w #$1,$32(a0)
	move.w $32(a0),d0
	andi.w #$1f,d0
	bne.s loc_20c4c2
	move.w #$b1,d0
	jsr (sub_2022c6).l
loc_20c4c2:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	jsr (sub_2065b4).l
	add.w d1,$c(a0)
	addi.w #$ffff,$2a(a0)
	bpl.s loc_20c4e6
	move.w #$199,$2a(a0)
	neg.l $2c(a0)
loc_20c4e6:
	rts
	dc.b $00,$02,$02,$f0,$0f,$00,$00,$e8
	dc.b $f0,$07,$00,$10,$08,$00
loc_20c4f6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c50a(pc,d0.w),d0
	jsr dat_20c50a(pc,d0.w)
	jmp (sub_20360e).l
dat_20c50a:
	dc.b $00,$04,$00,$34
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$244e,$2(a0)
	move.l #$20c5c2,$4(a0)
	move.b #$c,$19(a0)
	move.b #$10,$16(a0)
	move.b #$ab,$20(a0)
	movea.w $3e(a0),a1
	cmpi.b #$24,$0(a1)
	beq.s loc_20c550
	jmp (sub_2036ba).l
loc_20c550:
	tst.b $28(a0)
	bne.s loc_20c56a
	addi.w #$ffff,$2a(a0)
	bpl.s loc_20c594
	move.w #$3c,$2a(a0)
	eori.b #$1,$1c(a0)
loc_20c56a:
	move.w #$ffe7,$2c(a0)
	move.w #$0,$2e(a0)
	tst.b $1c(a0)
	beq.s loc_20c588
	move.w #$ffed,$2c(a0)
	move.w #$fff1,$2e(a0)
loc_20c588:
	btst.b #$0,$1(a0)
	beq.s loc_20c594
	neg.w $2c(a0)
loc_20c594:
	move.w $8(a1),d0
	move.w $c(a1),d1
	add.w $2c(a0),d0
	add.w $2e(a0),d1
	move.w d0,$8(a0)
	move.w d1,$c(a0)
	lea dat_20c5b6(pc),a1
	jmp (sub_205834).l
dat_20c5b6:
	.incbin 50614, 1614
	tst.b $28(a0)
	beq.s loc_20cc0e
	bra.w loc_20cdb2
loc_20cc0e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cc36(pc,d0.w),d0
	jsr dat_20cc36(pc,d0.w)
	lea dat_20cd4c(pc),a1
	jsr (sub_205834).l
	jsr (sub_20360e).l
	move.w $30(a0),d0
	jmp (loc_2072f4).l
dat_20cc36:
	dc.b $00,$06,$00,$d8,$00,$f0
	move.w $8(a0),$30(a0)
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$36a,$2(a0)
	move.w #$80,$2a(a0)
	move.l #$10000,$2c(a0)
	move.l #$20cd52,$4(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$2e,$16(a0)
	jsr (sub_2072d0).l
	beq.s loc_20cc8e
	jmp (sub_2036ba).l
loc_20cc8e:
	move.b $0(a0),$0(a1)
	move.w a0,$3e(a1)
	move.b #$1,$28(a1)
	lea (a1),a2
	jsr (sub_2072d0).l
	beq.s loc_20ccae
	jmp (sub_2036ba).l
loc_20ccae:
	move.b $0(a0),$0(a1)
	move.w a0,$3e(a1)
	move.b #$ff,$28(a1)
	move.w #$ffd4,$3c(a1)
	move.w #$14,$3c(a2)
	bset.b #$1,$1(a2)
	bset.b #$1,$22(a2)
	lea (a1),a6
	bsr.s sub_20ccdc
	lea (a2),a6

sub_20ccdc:
	ori.b #$4,$1(a6)
	move.w #$36a,$2(a6)
	move.w a0,$3e(a6)
	move.b #$3,$18(a6)
	move.l #$20cebc,$4(a6)
	move.b #$20,$17(a6)
	move.b #$20,$19(a6)
	move.b #$1c,$16(a6)
	rts
	addq.w #$1,$c(a0)
	jsr (sub_2065b4).l
	tst.w d1
	bpl.s loc_20cd24
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20cd24:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	jsr (sub_2065b4).l
	add.w d1,$c(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20cd4a
	neg.l $2c(a0)
	move.w #$80,$2a(a0)
loc_20cd4a:
	rts
dat_20cd4c:
	.incbin 52556, 102
loc_20cdb2:
	movea.w $3e(a0),a1
	cmpi.b #$28,$0(a1)
	beq.s loc_20cdc4
	jmp (sub_2036ba).l
loc_20cdc4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cdf0(pc,d0.w),d0
	jsr dat_20cdf0(pc,d0.w)
	movea.w $3e(a0),a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.w $3c(a0),d0
	add.w d0,$c(a0)
	jmp (sub_20360e).l
dat_20cdf0:
	.incbin 52720, 18
	tst.b $28(a0)
	bpl.s loc_20ce10
	move.b #$a,$24(a0)
	bra.s loc_20ce60
loc_20ce10:
	move.b #$2,$24(a0)
	bra.w loc_20ce1a
loc_20ce1a:
	move.b #$6,$1a(a0)
	move.w #$5,$2a(a0)
	move.w #$0,$20(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20ce3e
	addq.b #$2,$24(a0)
	bra.s loc_20ce40
loc_20ce3e:
	rts
loc_20ce40:
	move.b #$7,$1a(a0)
	move.w #$49,$2a(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20ce5e
	addq.b #$2,$24(a0)
	bra.s loc_20ce60
loc_20ce5e:
	rts
loc_20ce60:
	move.b #$6,$1a(a0)
	move.w #$5,$2a(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20ce7e
	addq.b #$2,$24(a0)
	bra.s loc_20ce80
loc_20ce7e:
	rts
loc_20ce80:
	move.w #$ff,$1c(a0)
	move.w #$49,$2a(a0)
	move.w #$a800,$20(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20cea8
	addi.b #$f2,$24(a0)
	bra.w loc_20ce1a
loc_20cea8:
	lea dat_20ceb2(pc),a1
	jmp (sub_205834).l
dat_20ceb2:
	.incbin 52914, 656
	tst.b $28(a0)
	bne.w loc_20d2ae
	tst.b $29(a0)
	beq.s loc_20d176
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20d45e
	move.w $2e(a0),d0
	cmp.w $2e(a1),d0
	bne.w loc_20d45e
	move.w $30(a0),d0
	cmp.w $30(a1),d0
	bne.w loc_20d45e
loc_20d176:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d19c(pc,d0.w),d0
	jsr dat_20d19c(pc,d0.w)
	jsr (sub_20360e).l
	tst.b $29(a0)
	bmi.s loc_20d19a
	move.w $2e(a0),d0
	jmp (loc_2072f4).l
loc_20d19a:
	rts
dat_20d19c:
	dc.b $00,$08,$00,$aa,$00,$ba,$00,$fa
	lea dat_20d4de(pc),a5
	moveq #$0,d0
	move.b $29(a0),d0
	add.w d0,d0
	adda.w $0(a5,d0.w),a5
	move.w (a5)+,$2c(a0)
	lea (a0),a6
	bsr.s sub_20d206
	move.w (a5)+,d6
	bra.s loc_20d200
loc_20d1c0:
	jsr (sub_2072ba).l
	beq.s loc_20d1ce
	jmp (sub_2036ba).l
loc_20d1ce:
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
	bsr.s sub_20d206
loc_20d200:
	dbf d6,loc_20d1c0
	rts

sub_20d206:
	move.b #$2,$24(a6)
	ori.b #$4,$1(a6)
	move.b #$3,$18(a6)
	move.b #$10,$17(a6)
	move.b #$10,$19(a6)
	move.b #$5,$16(a6)
	move.w #$34c,$2(a6)
	move.l #$20d474,$4(a6)
	move.w $8(a0),$2e(a6)
	move.w $c(a0),$30(a6)
	rts
	move.b #$5,$16(a0)
	move.w #$78,$2c(a0)
	addq.b #$2,$24(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_207dae).l
	sne $3e(a0)
	addi.w #$ffff,$2c(a0)
	bne.s loc_20d294
	move.b #$10,$16(a0)
	move.w #$ff,$1c(a0)
	addq.b #$2,$24(a0)
	tst.b $3e(a0)
	beq.s loc_20d294
	lea ($d000).w,a1
	jmp (sub_207c66).l
loc_20d294:
	rts
	lea dat_20d464(pc),a1
	jsr (sub_205834).l
	tst.b $1a(a0)
	bne.s loc_20d2ac
	move.b #$2,$24(a0)
loc_20d2ac:
	rts
loc_20d2ae:
	tst.b $29(a0)
	beq.s loc_20d2da
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20d45e
	move.w $2c(a0),d0
	cmp.w $2c(a1),d0
	bne.w loc_20d45e
	move.w $2e(a0),d0
	cmp.w $2e(a1),d0
	bne.w loc_20d45e
loc_20d2da:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d300(pc,d0.w),d0
	jsr dat_20d300(pc,d0.w)
	jsr (sub_20360e).l
	tst.b $29(a0)
	bmi.s loc_20d2fe
	move.w $2c(a0),d0
	jmp (loc_2072f4).l
loc_20d2fe:
	rts
dat_20d300:
	.incbin 54016, 350
loc_20d45e:
	jmp (sub_2036ba).l
dat_20d464:
	.incbin 54372, 122
dat_20d4de:
	.incbin 54494, 3674

sub_20e338:
	tst.b ($ff156a).l
	beq.s loc_20e37e
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e350
	tst.b $28(a0)
	beq.s loc_20e37e
loc_20e350:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2036ba).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e37c
	move.w #$9e,d0
	jsr (sub_2022c6).l
loc_20e37c:
	addq.l #$4,a7
loc_20e37e:
	rts
	.incbin 58240, 1362

sub_20e8d2:
	jmp (loc_2060a8).l
	.incbin 59608, 122
dat_20e952:
	.incbin 59730, 16
dat_20e962:
	.incbin 59746, 2914
	jmp ($206358).l
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
	jmp (dat_207928).l
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
	jmp ($20634a).l
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
	.incbin 231074, 31070
