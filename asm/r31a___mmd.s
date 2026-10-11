; R31A__.MMD
; disassembled from the disc; code only, data comes from data/R31A__.MMD at build time
	.file "R31A__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$42
	jmp (loc_201bb8).l
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
	bsr.w sub_2020ee
	bsr.w sub_202096
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201432

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200200).l,a1
	lea (dat_200208).l,a2
	bsr.s sub_2001c2
	lea (dat_20020e).l,a1
	lea (dat_200230).l,a2
	bsr.s sub_2001c2
	lea (dat_200234).l,a1
	lea (dat_200254).l,a2
	bsr.s sub_2001c2
	lea (dat_20025a).l,a1
	lea (dat_200260).l,a2

sub_2001c2:
	subq.b #$1,(a5)
	bpl.s loc_2001f6
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
	bcs.s loc_2001e2
	moveq #$0,d0
loc_2001e2:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_2001f6:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200200:
	dc.b $2f,$03,$01,$00,$01,$01,$02,$02
dat_200208:
	dc.b $00,$ee,$00,$0e,$00,$00
dat_20020e:
	.incbin 526, 34
dat_200230:
	dc.b $00,$ee,$00,$00
dat_200234:
	.incbin 564, 32
dat_200254:
	dc.b $00,$00,$0e,$0e,$0e,$ae
dat_20025a:
	dc.b $3f,$02,$01,$00,$02,$01
dat_200260:
	dc.b $0e,$e0,$00,$00

sub_200264:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200276:
	move.w d1,(a0)+
	dbf d0,loc_200276
	move.w #$15,d4
loc_200280:
	move.b #$12,($f62a).w
	bsr.w sub_200776
	bsr.s sub_200296
	bsr.w sub_2024b4
	dbf d4,loc_200280
	rts

sub_200296:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002ac:
	bsr.s sub_2002da
	dbf d0,loc_2002ac
	cmpi.b #$1,($ff1506).l
	bne.s loc_2002d8
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002d2:
	bsr.s sub_2002da
	dbf d0,loc_2002d2
loc_2002d8:
	rts

sub_2002da:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200302
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002f0
	move.w d1,(a0)+
	rts
loc_2002f0:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2002fe
	move.w d1,(a0)+
	rts
loc_2002fe:
	addq.w #$2,(a0)+
	rts
loc_200302:
	addq.w #$2,a0
	rts

sub_200306:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200310:
	move.b #$12,($f62a).w
	bsr.w sub_200776
	bsr.s sub_200326
	bsr.w sub_2024b4
	dbf d4,loc_200310
	rts

sub_200326:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200336:
	bsr.s sub_200354
	dbf d0,loc_200336
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20034c:
	bsr.s sub_200354
	dbf d0,loc_20034c
	rts

sub_200354:
	move.w (a0),d2
	beq.s loc_200380
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200364
	subq.w #$2,(a0)+
	rts
loc_200364:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200372
	subi.w #$20,(a0)+
	rts
loc_200372:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200380
	subi.w #$200,(a0)+
	rts
loc_200380:
	addq.w #$2,a0
	rts

sub_200384:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_20039e:
	move.w d1,(a0)+
	dbf d0,loc_20039e
	move.w #$15,d4
loc_2003a8:
	move.b #$12,($f62a).w
	bsr.w sub_200776
	bsr.s sub_2003be
	bsr.w sub_2024b4
	dbf d4,loc_2003a8
	rts

sub_2003be:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003d4:
	bsr.s sub_200402
	dbf d0,loc_2003d4
	cmpi.b #$1,($ff1506).l
	bne.s loc_200400
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003fa:
	bsr.s sub_200402
	dbf d0,loc_2003fa
loc_200400:
	rts

sub_200402:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_20042e
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_20041a
	cmp.w d2,d1
	bcs.s loc_20041a
	move.w d1,(a0)+
	rts
loc_20041a:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_20042a
	cmp.w d2,d1
	bcs.s loc_20042a
	move.w d1,(a0)+
	rts
loc_20042a:
	subq.w #$2,(a0)+
	rts
loc_20042e:
	addq.w #$2,a0
	rts

sub_200432:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20043c:
	move.b #$12,($f62a).w
	bsr.w sub_200776
	bsr.s sub_200452
	bsr.w sub_2024b4
	dbf d4,loc_20043c
	rts

sub_200452:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200462:
	bsr.s sub_200480
	dbf d0,loc_200462
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200478:
	bsr.s sub_200480
	dbf d0,loc_200478
	rts

sub_200480:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2004bc
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200498
	addq.w #$2,(a0)+
	rts
loc_200498:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2004aa
	addi.w #$20,(a0)+
	rts
loc_2004aa:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2004bc
	addi.w #$200,(a0)+
	rts
loc_2004bc:
	addq.w #$2,a0
	rts

sub_2004c0:
	lea (dat_20052c).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_2004d4:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004d4
	rts

sub_2004dc:
	lea (dat_20052c).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2004ec:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004ec
	rts
	dc.b $43,$f9,$00,$20,$05,$2c
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$80,a3
	move.w (a1)+,d7
loc_200508:
	move.l (a2)+,(a3)+
	dbf d7,loc_200508
	rts
	.incbin 1296, 28
dat_20052c:
	.incbin 1324, 586

sub_200776:
	move.w #$2300,sr
loc_20077a:
	tst.b ($f62a).w
	bne.s loc_20077a
	rts

sub_200782:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_20079a(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_20079a(pc,d0.w),d0
	rts
dat_20079a:
	.incbin 1946, 640

sub_200a1a:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a76
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a34
	neg.w d3
loc_200a34:
	tst.w d4
	bpl.w loc_200a3c
	neg.w d4
loc_200a3c:
	cmp.w d3,d4
	bcc.w loc_200a4e
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a80(pc,d4.w),d0
	bra.s loc_200a58
loc_200a4e:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a80(pc,d3.w),d0
loc_200a58:
	tst.w d1
	bpl.w loc_200a64
	neg.w d0
	addi.w #$80,d0
loc_200a64:
	tst.w d2
	bpl.w loc_200a70
	neg.w d0
	addi.w #$100,d0
loc_200a70:
	movem.l (a7)+,d3-d4
	rts
loc_200a76:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a80:
	.incbin 2688, 258

sub_200b82:
	btst.b #$3,$22(a0)
	beq.s loc_200b96
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b96:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200bb8
	move.b $26(a0),d0
	bpl.s loc_200bb2
	subq.b #$1,d0
loc_200bb2:
	addi.b #$20,d0
	bra.s loc_200bc4
loc_200bb8:
	move.b $26(a0),d0
	bpl.s loc_200bc0
	addq.b #$1,d0
loc_200bc0:
	addi.b #$1f,d0
loc_200bc4:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e4e
	cmpi.b #$80,d0
	beq.w loc_200dac
	cmpi.b #$c0,d0
	beq.w loc_200d10
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
	bsr.w sub_2010d8
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
	bsr.w sub_2010d8
	move.w (a7)+,d0
	bsr.w sub_200ce4
	tst.w d1
	beq.s loc_200c52
	bpl.s loc_200c54
	cmpi.w #$fff2,d1
	blt.s loc_200c7a
	add.w d1,$c(a0)
loc_200c52:
	rts
loc_200c54:
	cmpi.w #$e,d1
	bgt.s loc_200c60
loc_200c5a:
	add.w d1,$c(a0)
	rts
loc_200c60:
	tst.b $38(a0)
	bne.s loc_200c5a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c7a:
	rts
	.incbin 3196, 34
loc_200c9e:
	rts
	.incbin 3232, 68

sub_200ce4:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200cf2
	move.b ($f768).w,d2
	move.w d0,d1
loc_200cf2:
	btst.l #$0,d2
	bne.s loc_200cfe
	move.b d2,$26(a0)
	rts
loc_200cfe:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d10:
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
	bsr.w sub_201248
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
	bsr.w sub_201248
	move.w (a7)+,d0
	bsr.w sub_200ce4
	tst.w d1
	beq.s loc_200d84
	bpl.s loc_200d86
	cmpi.w #$fff2,d1
	blt.w loc_200c9e
	add.w d1,$8(a0)
loc_200d84:
	rts
loc_200d86:
	cmpi.w #$e,d1
	bgt.s loc_200d92
loc_200d8c:
	add.w d1,$8(a0)
	rts
loc_200d92:
	tst.b $38(a0)
	bne.s loc_200d8c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200dac:
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
	bsr.w sub_2010d8
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
	bsr.w sub_2010d8
	move.w (a7)+,d0
	bsr.w sub_200ce4
	tst.w d1
	beq.s loc_200e26
	bpl.s loc_200e28
	cmpi.w #$fff2,d1
	blt.w loc_200c7a
	sub.w d1,$c(a0)
loc_200e26:
	rts
loc_200e28:
	cmpi.w #$e,d1
	bgt.s loc_200e34
loc_200e2e:
	sub.w d1,$c(a0)
	rts
loc_200e34:
	tst.b $38(a0)
	bne.s loc_200e2e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e4e:
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
	bsr.w sub_201248
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
	bsr.w sub_201248
	move.w (a7)+,d0
	bsr.w sub_200ce4
	tst.w d1
	beq.s loc_200ec8
	bpl.s loc_200eca
	cmpi.w #$fff2,d1
	blt.w loc_200c9e
	sub.w d1,$8(a0)
loc_200ec8:
	rts
loc_200eca:
	cmpi.w #$e,d1
	bgt.s loc_200ed6
loc_200ed0:
	sub.w d1,$8(a0)
	rts
loc_200ed6:
	tst.b $38(a0)
	bne.s loc_200ed0
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200ef0:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f06
	andi.w #$380,d0
loc_200f06:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f66
	bmi.s loc_200f6a
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f36
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f3c
loc_200f36:
	andi.w #$7fff,$2(a0)
loc_200f3c:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f4c
	bclr.b #$6,$1(a0)
loc_200f4c:
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
loc_200f66:
	movea.l d1,a1
	rts
loc_200f6a:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fd2
	btst.b #$6,$1(a0)
	bne.s loc_200f98
	cmpi.b #$14,d1
	bne.w loc_2010bc
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_2010bc
loc_200f98:
	cmpi.b #$15,d1
	bne.s loc_200fa6
	move.w #$60,d1
	bra.w loc_2010bc
loc_200fa6:
	cmpi.b #$1e,d1
	bne.s loc_200fb4
	move.w #$61,d1
	bra.w loc_2010bc
loc_200fb4:
	cmpi.b #$1f,d1
	bne.s loc_200fc2
	move.w #$62,d1
	bra.w loc_2010bc
loc_200fc2:
	cmpi.b #$32,d1
	bne.w loc_2010bc
	move.w #$63,d1
	bra.w loc_2010bc
loc_200fd2:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201038
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201022
	cmpi.b #$6,d1
	beq.s loc_201022
	tst.b ($ff1956).l
	beq.w loc_2010bc
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201032
	cmpi.b #$3c,d1
	beq.s loc_201032
	cmpi.b #$37,d1
	beq.s loc_201032
	cmpi.b #$2f,d1
	beq.s loc_201032
	cmpi.b #$16,d1
	beq.s loc_201032
	bra.w loc_2010bc
loc_201022:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_2010bc
loc_201032:
	addq.b #$1,d1
	bra.w loc_2010bc
loc_201038:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010a8
	cmpi.b #$3,$0(a0)
	bcc.w loc_2010bc
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2010bc
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_20106c
	move.w #$6a,d1
	bra.s loc_2010bc
loc_20106c:
	cmpi.b #$48,d1
	bne.s loc_201078
	move.w #$6b,d1
	bra.s loc_2010bc
loc_201078:
	cmpi.b #$4a,d1
	bne.s loc_201084
	move.w #$6c,d1
	bra.s loc_2010bc
loc_201084:
	cmpi.b #$10,d1
	bne.s loc_201090
	move.w #$6d,d1
	bra.s loc_2010bc
loc_201090:
	cmpi.b #$63,d1
	bne.s loc_20109c
	move.w #$6e,d1
	bra.s loc_2010bc
loc_20109c:
	cmpi.b #$43,d1
	bne.s loc_2010bc
	move.w #$6f,d1
	bra.s loc_2010bc
loc_2010a8:
	btst.b #$6,$1(a0)
	beq.s loc_2010bc
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_2010bc
	move.w #$51,d1
loc_2010bc:
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

sub_2010d8:
	bsr.w sub_200ef0
	cmpi.l #$210000,d1
	beq.s loc_2010f2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2010f2
	btst.l d5,d4
	bne.s loc_201100
loc_2010f2:
	add.w a3,d2
	bsr.w sub_201198
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201100:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2010f2
	lea (dat_21d600).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201126
	not.w d1
	neg.b (a4)
loc_201126:
	btst.l #$c,d4
	beq.s loc_201136
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201136:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21d700).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201152
	neg.w d0
loc_201152:
	tst.w d0
	beq.s loc_2010f2
	bmi.s loc_20116e
	cmpi.b #$10,d0
	beq.s loc_20118a
loc_20115e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20116e:
	cmpa.w #$10,a3
	bne.s loc_20117e
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20115e
loc_20117e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2010f2
loc_20118a:
	sub.w a3,d2
	bsr.w sub_201198
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201198:
	bsr.w sub_200ef0
	cmpi.l #$210000,d1
	beq.s loc_2011b2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011b2
	btst.l d5,d4
	bne.s loc_2011c0
loc_2011b2:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2011c0:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011b2
	lea (dat_21d600).l,a2
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
	lea (dat_21d700).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201212
	neg.w d0
loc_201212:
	tst.w d0
	beq.s loc_2011b2
	bmi.s loc_201228
loc_201218:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201228:
	cmpa.w #$10,a3
	bne.s loc_201238
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201218
loc_201238:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011b2
	not.w d1
	rts

sub_201248:
	bsr.w sub_200ef0
	cmpi.l #$210000,d1
	beq.s loc_201262
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201262
	btst.l d5,d4
	bne.s loc_201270
loc_201262:
	add.w a3,d3
	bsr.w sub_2012f8
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201270:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201262
	lea (dat_21d600).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20129e
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20129e:
	btst.l #$b,d4
	beq.s loc_2012a6
	neg.b (a4)
loc_2012a6:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21e700).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012c2
	neg.w d0
loc_2012c2:
	tst.w d0
	beq.s loc_201262
	bmi.s loc_2012de
	cmpi.b #$10,d0
	beq.s loc_2012ea
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012de:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201262
loc_2012ea:
	sub.w a3,d3
	bsr.w sub_2012f8
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2012f8:
	bsr.w sub_200ef0
	cmpi.l #$210000,d1
	beq.s loc_201312
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201312
	btst.l d5,d4
	bne.s loc_201320
loc_201312:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201320:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201312
	lea (dat_21d600).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20134e
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20134e:
	btst.l #$b,d4
	beq.s loc_201356
	neg.b (a4)
loc_201356:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21e700).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201372
	neg.w d0
loc_201372:
	tst.w d0
	beq.s loc_201312
	bmi.s loc_201388
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201388:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201312
	not.w d1
	rts

sub_201398:
	rts
	.incbin 5018, 152
loc_201432:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201452
	tst.b ($ff0f01).l
	bne.s loc_201452
	move.b #$1,($ff156a).l
loc_201452:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_2014b8
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2078f8
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_2014b8
	move.b #$1,($ff1508).l
loc_2014b8:
	bset.b #$7,($f600).w
	bsr.w sub_2024a6
	tst.b ($ff156e).l
	bne.s loc_2014de
	btst.b #$7,($ff152e).l
	beq.s loc_201514
	bset.b #$0,($ff151d).l
	beq.s loc_2014ea
loc_2014de:
	bsr.w sub_200432
	bclr.b #$0,($ff151d).l
loc_2014ea:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201584
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_201512
	bclr.b #$7,($ff152e).l
loc_201512:
	rts
loc_201514:
	bset.b #$0,($ff151d).l
	beq.s loc_201522
	bsr.w sub_200306
loc_201522:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20153e
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201566
loc_20153e:
	tst.b ($ff1508).l
	bne.s loc_201584
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201566:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20156e:
	move.l #$0,(a1)+
	dbf d6,loc_20156e
	move.b #$c,($f62a).w
	bsr.w sub_200776
	rts
loc_201584:
	cmpi.w #$800,($f78e).w
	bne.s loc_2015a2
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_2015a2:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2015b8
	btst.b #$7,($ff152e).l
	beq.s loc_2015be
loc_2015b8:
	move.l #$eee0eee,d0
loc_2015be:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015c6:
	move.l d0,(a1)+
	dbf d6,loc_2015c6
loc_2015cc:
	move.b #$c,($f62a).w
	bsr.w sub_200776
	bsr.w sub_2024b4
	bne.s loc_2015cc
	tst.l ($f680).w
	bsr.w sub_201a72
	moveq #$0,d0
	lea (dat_20face).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015f6
	bsr.w sub_2025ba
loc_2015f6:
	moveq #$1,d0
	bsr.w sub_2025ba
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201612:
	move.l d0,(a1)+
	dbf d1,loc_201612
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201624:
	move.l d0,(a1)+
	dbf d1,loc_201624
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201634:
	move.l d0,(a1)+
	dbf d1,loc_201634
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201646:
	move.l d0,(a1)+
	dbf d1,loc_201646
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201656:
	move.l d0,(a1)+
	dbf d1,loc_201656
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201666:
	move.l d0,(a1)+
	dbf d1,loc_201666
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202190
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
	bsr.w sub_2004dc
	moveq #$3,d0
	bsr.w sub_2004c0
	bsr.w sub_20281c
	bsr.w sub_202998
	bset.b #$2,($f754).w
	bsr.w sub_20357a
	bsr.w sub_203480
	jsr (sub_201398).l
	bsr.w sub_2019ac
loc_2016e6:
	move.b #$c,($f62a).w
	bsr.w sub_200776
	bsr.w sub_2024b4
	bne.s loc_2016e6
	tst.l ($f680).w
	bne.s loc_2016e6
	bsr.w sub_201938
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201ad2
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_20174a
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_20174a:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20178c
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20178c:
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
	jsr (sub_20fac8).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_20181c
loc_201816:
	bsr.w sub_200384
	bra.s loc_20182a
loc_20181c:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201816
	bsr.w sub_200264
loc_20182a:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201838:
	move.b #$8,($f62a).w
	bsr.w sub_200776
	tst.b ($f7cc).w
	bne.s loc_201856
	btst.b #$7,($f605).w
	beq.s loc_201856
	eori.b #$1,($f63a).w
loc_201856:
	btst.b #$0,($f63a).w
	beq.w loc_2018c8
	bsr.w sub_201b36
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2018a6
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201838
	subq.b #$1,($ff1508).l
	bpl.s loc_201888
	clr.b ($ff1508).l
loc_201888:
	move.w #$e,d0
	jsr (sub_205c38).l
	bsr.w sub_2078f8
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_2018b4
loc_2018a6:
	andi.b #$70,d0
	beq.w loc_201838
	clr.b ($ff1508).l
loc_2018b4:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201432
loc_2018c8:
	bsr.w sub_201b7c
	addq.w #$1,($ff1504).l
	jsr (sub_20790e).l
	jsr (sub_20398e).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201432
	tst.w ($ff1502).l
	bne.w loc_201432
	tst.w ($ff1906).l
	bne.s loc_201910
	cmpi.b #$6,($d024).w
	bcs.s loc_201910
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201914
loc_201910:
	bsr.w sub_202998
loc_201914:
	jsr (sub_203b38).l
	tst.w ($ff190e).l
	bne.s loc_201926
	bsr.w sub_200184
loc_201926:
	jsr (sub_20bf28).l
	bsr.w sub_2024b4
	bsr.w sub_2019de
	bra.w loc_201838

sub_201938:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201950
	move.w #$78,$30(a1)
loc_201950:
	rts
	.incbin 6482, 90

sub_2019ac:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_2019be(pc,d0.w),($f796).w
	rts
dat_2019be:
	.incbin 6590, 32

sub_2019de:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019fc
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019fc:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a1a
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a1a:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a42
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a42
	move.b #$0,($ff1915).l
loc_201a42:
	tst.b ($ff1916).l
	beq.s loc_201a70
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a70:
	rts

sub_201a72:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a94
	cmpi.b #$2,d0
	bne.s loc_201a94
	add.b ($ff156a).l,d0
loc_201a94:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201aac(pc,d1.w),d0
	jmp (sub_205c38).l
dat_201aac:
	.incbin 6828, 38

sub_201ad2:
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

sub_201b36:
	move.w #$ab,d0
	jsr (sub_20227e).l
	bset.b #$7,($f63a).w
	bne.s loc_201b7a
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b60
loc_201b56:
	move.w #$d5,d0
	jmp (sub_205c38).l
loc_201b60:
	tst.b ($ff151f).l
	bne.s loc_201b56
	tst.b ($ff1520).l
	bne.s loc_201b56
	move.w #$90,d0
	jmp (sub_205c38).l
loc_201b7a:
	rts

sub_201b7c:
	bclr.b #$7,($f63a).w
	beq.s loc_201bb6
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b9c
loc_201b92:
	move.w #$d6,d0
	jmp (sub_205c38).l
loc_201b9c:
	tst.b ($ff151f).l
	bne.s loc_201b92
	tst.b ($ff1520).l
	bne.s loc_201b92
	move.w #$91,d0
	jmp (sub_205c38).l
loc_201bb6:
	rts
loc_201bb8:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c44
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201bf4
	move.w #$700,d0
loc_201bf0:
	dbf d0,loc_201bf0
loc_201bf4:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c2a(pc,d0.w),d0
	jsr dat_201c2a(pc,d0.w)
loc_201c0a:
	jsr (sub_2022a2).l
	tst.b ($f63a).w
	bne.s loc_201c1e
	bsr.w sub_202056
	bsr.w sub_202044
loc_201c1e:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c2a:
	.incbin 7210, 26
loc_201c44:
	tst.b ($ff1957).l
	beq.w loc_201c0a
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c0a
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c72
	move.w #$700,d0
loc_201c6e:
	dbf d0,loc_201c6e
loc_201c72:
	move.w #$1,($f6fc).w
	jsr (sub_202216).l
	tst.b ($f64e).w
	bne.s loc_201caa
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201cce
loc_201caa:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201cce:
	move.w ($f624).w,(a5)
	jsr (sub_202232).l
	bra.w loc_201c0a
	.incbin 7388, 60
	jsr (sub_202216).l
	bsr.w sub_2020b2
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
	bsr.w sub_205b5a
	tst.b ($f767).w
	beq.s loc_201dc6
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201dc6:
	jsr (sub_20fac8).l
	jsr (sub_202232).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203078
	bsr.w sub_202526
	jmp (loc_20a94e).l
	dc.b $4e,$75
	jsr (sub_202216).l
	bsr.w sub_2020b2
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
	jsr (sub_202232).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203078
	bra.w loc_20250a
	.incbin 7838, 16
	bsr.w sub_201f9a
	cmpi.b #$1,($ff1903).l
	bne.s loc_201ed0
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201ed0:
	move.w ($f624).w,(a5)
	bra.w loc_20250a
	.incbin 7896, 82
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jsr (sub_202232).l
	lea ($d000).w,a0
	bsr.w sub_205b5a
	tst.b ($f767).w
	beq.s loc_201f8c
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f8c:
	tst.w ($f614).w
	beq.w loc_201f98
	subq.w #$1,($f614).w
loc_201f98:
	rts

sub_201f9a:
	jsr (sub_202216).l
	bsr.w sub_2020b2
	tst.b ($f64e).w
	bne.s loc_201fd0
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201ff4
loc_201fd0:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201ff4:
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
	jmp (sub_202232).l
	dc.b $4e,$73

sub_202044:
	tst.b ($d02a).w
	bne.s loc_202054
	tst.w ($f786).w
	beq.s loc_202054
	addq.w #$1,($f786).w
loc_202054:
	rts

sub_202056:
	tst.w ($f780).w
	beq.s loc_202060
	addq.w #$1,($f780).w
loc_202060:
	tst.w ($f782).w
	beq.s loc_20206a
	addq.w #$1,($f782).w
loc_20206a:
	rts
	.incbin 8300, 42

sub_202096:
	bsr.w sub_202216
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202232

sub_2020b2:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_2020c0
	addq.w #$2,a1

sub_2020c0:
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

sub_2020ee:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_20216a).l,a2
	moveq #$12,d7
loc_202102:
	move.w (a2)+,(a0)
	dbf d7,loc_202102
	move.w (dat_20216c).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202128:
	move.w d0,(a1)
	dbf d7,loc_202128
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_20215a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20215a
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_20216a:
	dc.b $80,$04
dat_20216c:
	.incbin 8556, 36

sub_202190:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2021b2:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021b2
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2021e0:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021e0
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2021fe:
	move.l d0,(a1)+
	dbf d1,loc_2021fe
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_20220e:
	move.l d0,(a1)+
	dbf d1,loc_20220e
	rts

sub_202216:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202226:
	btst.b #$0,($a11100).l
	bne.s loc_202226
	rts

sub_202232:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8768, 62

sub_20227e:
	tst.b ($f00a).w
	bne.s loc_20228a
	move.b d0,($f00a).w
	rts
loc_20228a:
	tst.b ($f00b).w
	bne.s loc_202296
	move.b d0,($f00b).w
	rts
loc_202296:
	tst.b ($f00c).w
	bne.s loc_2022a0
	move.b d0,($f00c).w
loc_2022a0:
	rts

sub_2022a2:
	jsr (sub_202216).l
	tst.b ($f00a).w
	beq.s loc_2022bc
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2022bc:
	tst.b ($f00b).w
	beq.s loc_2022d0
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2022d0:
	tst.b ($f00c).w
	beq.s loc_2022e4
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2022e4:
	bra.w sub_202232
	.incbin 8936, 32

sub_202308:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2023ca).l,a3
	lea ($c00000).l,a4
	bra.s loc_202324

sub_20231a:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2023e0).l,a3
loc_202324:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202332
	adda.w #$a,a3
loc_202332:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2023f6
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202352
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202352:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20239e
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20237a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20237a:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202388:
	lsr.w #$4,d0
loc_20238a:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202398
	jmp (a3)

sub_202394:
	moveq #$0,d4
	moveq #$8,d3
loc_202398:
	dbf d0,loc_20238a
	bra.s sub_202352
loc_20239e:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2023ac
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023ac:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202388
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202388
loc_2023ca:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202394
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202394
	rts
dat_2023e0:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202394
	rts

sub_2023f6:
	move.b (a0)+,d0
loc_2023f8:
	cmpi.b #$ff,d0
	bne.s loc_202400
	rts
loc_202400:
	move.w d0,d7
loc_202402:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2023f8
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
	bne.s loc_202430
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202402
loc_202430:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_20243c:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_20243c
	bra.s loc_202402

sub_202448:
	movem.l a1-a2,-(a7)
	lea (dat_20fade).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202460:
	tst.l (a2)
	beq.s loc_202468
	addq.w #$6,a2
	bra.s loc_202460
loc_202468:
	move.w (a1)+,d0
	bmi.s loc_202474
loc_20246c:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20246c
loc_202474:
	movem.l (a7)+,a1-a2
	rts
loc_20247a:
	movem.l a1-a2,-(a7)
	lea (dat_20fade).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_2024a6
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_2024a0
loc_202498:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202498
loc_2024a0:
	movem.l (a7)+,a1-a2
	rts

sub_2024a6:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2024ac:
	clr.l (a2)+
	dbf d0,loc_2024ac
	rts

sub_2024b4:
	tst.l ($f680).w
	beq.s loc_202508
	tst.w ($f6f8).w
	bne.s loc_202508
	movea.l ($f680).w,a0
	lea (loc_2023ca).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2024d6
	adda.w #$a,a3
loc_2024d6:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2023f6
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
loc_202508:
	rts
loc_20250a:
	tst.w ($f6f8).w
	beq.w loc_2025a8
loc_202512:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202544

sub_202526:
	tst.w ($f6f8).w
	beq.s loc_2025a8
	tst.b ($f744).w
	bne.s loc_202512
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202544:
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
loc_202578:
	movea.w #$8,a5
	bsr.w sub_202394
	subq.w #$1,($f6f8).w
	beq.s loc_2025aa
	subq.w #$1,($f6fa).w
	bne.s loc_202578
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2025a8:
	rts
loc_2025aa:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2025b0:
	move.l $6(a0),(a0)+
	dbf d0,loc_2025b0
	rts

sub_2025ba:
	lea (dat_20fade).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2025cc:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202308
	dbf d1,loc_2025cc
	rts
	.incbin 9708, 560

sub_20281c:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202878).l,a0
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
	bra.w loc_2028a4
dat_202878:
	dc.b $00,$04,$00,$00,$2e,$97,$00,$00
	dc.b $05,$10,$00,$60
dat_202884:
	.incbin 10372, 32
loc_2028a4:
	tst.b ($ff1522).l
	beq.s loc_2028c4
	jsr (sub_206cb0).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_2028c2
	moveq #$0,d0
loc_2028c2:
	bra.s loc_202900
loc_2028c4:
	lea (dat_20293c).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2028e6
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202884).l,a1
	adda.w d0,a1
	bra.s loc_2028f0
loc_2028e6:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2028f0:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202900:
	subi.w #$a0,d1
	bcc.s loc_202908
	moveq #$0,d1
loc_202908:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202912
	move.w d2,d1
loc_202912:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20291e
	moveq #$0,d0
loc_20291e:
	cmp.w ($f72e).w,d0
	blt.s loc_202928
	move.w ($f72e).w,d0
loc_202928:
	move.w d0,($f704).w
	bsr.w sub_202944
	lea (dat_202940).l,a1
	move.l (a1),($f7ac).w
	rts
dat_20293c:
	dc.b $00,$60,$03,$ec
dat_202940:
	dc.b $7f,$7f,$7f,$7f

sub_202944:
	move.w #$218,d0
	move.w #$520,d2
	sub.w ($f704).w,d2
	bcs.s loc_20295a
	lsr.w #$1,d2
	sub.w d2,d0
	bpl.s loc_20295a
	moveq #$0,d0
loc_20295a:
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
loc_202990:
	clr.l (a2)+
	dbf d2,loc_202990
	rts

sub_202998:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2029a4
	rts
loc_2029a4:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202cee
	bsr.w sub_202d8e
	bsr.w sub_203622
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_203018
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202fe4
	lea ($a83c).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202fb0
	move.w #$218,d0
	move.w #$520,d1
	sub.w ($f704).w,d1
	bcs.s loc_202a1c
	lsr.w #$1,d1
	sub.w d1,d0
	bpl.s loc_202a1c
	moveq #$0,d0
loc_202a1c:
	bsr.w sub_202f80
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
	addi.l #$800,(a2)+
	addi.l #$1000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$c000,(a2)+
	moveq #$3f,d6
	moveq #$0,d1
loc_202aa8:
	move.w d1,d2
	mulu.w #$400,d2
	addi.l #$8000,d2
	add.l d2,(a2)+
	addq.b #$1,d1
	dbf d6,loc_202aa8
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divs.w #$1c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$6,d6
	lea ($a94a).w,a1
loc_202ae8:
	move.w d3,d0
	neg.w d0
	move.w d0,-(a1)
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202ae8
	lea ($a94a).w,a1
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202b04:
	move.w d0,(a1)+
	dbf d6,loc_202b04
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b12:
	move.w d0,(a1)+
	dbf d6,loc_202b12
	lea ($a800).w,a2
	moveq #$e,d6
loc_202b1e:
	move.l (a2)+,d1
	swap d1
	add.w ($f708).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202bfe).l,a3
	move.b $0(a3,d6.w),d5
loc_202b34:
	move.w d1,(a1)+
	dbf d5,loc_202b34
	dbf d6,loc_202b1e
	move.w ($f708).w,d0
	neg.w d0
	moveq #$5,d6
loc_202b46:
	move.w d0,(a1)+
	dbf d6,loc_202b46
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b54:
	move.w d0,(a1)+
	dbf d6,loc_202b54
	move.w ($f710).w,d0
	neg.w d0
	moveq #$7,d6
loc_202b62:
	move.w d0,(a1)+
	dbf d6,loc_202b62
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b70:
	move.w d0,(a1)+
	dbf d6,loc_202b70
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divs.w #$28,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	moveq #$9,d6
	move.w ($f708).w,d3
loc_202b96:
	move.w d3,d0
	neg.w d0
	move.w d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b96
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202bae:
	move.w d0,(a1)+
	dbf d6,loc_202bae
	lea ($cc00).w,a1
	lea ($a93c).w,a2
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
	bcs.s loc_202bfa
	cmpi.w #$1b,d1
	bcs.s loc_202bde
	moveq #$1c,d1
loc_202bde:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	lea (dat_202c0e).l,a3
	lea (dat_23a746).l,a4
	addi.w #$40,($f7d8).w
	bsr.w sub_202c64
loc_202bfa:
	bra.w loc_202c14
dat_202bfe:
	.incbin 11262, 16
dat_202c0e:
	dc.b $00,$38,$02,$50,$7f,$ff
loc_202c14:
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	lea ($a83c).w,a2
	move.b ($f7d8).w,d5
	sub.w ($f70c).w,d4
loc_202c26:
	move.l (a2)+,d2
	swap d2
	add.w ($f708).w,d2
	neg.w d2
	move.w d2,d0
	move.w #$5c0,d3
	sub.w ($f704).w,d3
	cmp.w d3,d4
	bcs.s loc_202c58
	andi.w #$7f,d5
	move.w d5,d6
	add.w d6,d6
	move.b $0(a4,d6.w),d3
	ext.w d3
	add.w ($f700).w,d3
	neg.w d3
	swap d0
	move.w d3,d0
	swap d0
loc_202c58:
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d5
	dbf d1,loc_202c26
	rts

sub_202c64:
	cmp.w (a3),d4
	bcc.s loc_202c9a
loc_202c68:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c84(pc,d2.w)
loc_202c78:
	tst.w d1
	bmi.s loc_202c98
	cmp.w (a3),d4
	bcc.s loc_202cb4
loc_202c80:
	move.w (a2)+,d0
	addq.w #$8,d4
loc_202c84:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c78
loc_202c98:
	rts
loc_202c9a:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	bgt.s loc_202cbe
	cmp.w (a3),d4
	bcs.s loc_202c68
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c68
	bra.s loc_202cbe
loc_202cb4:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c80
loc_202cbe:
	subq.w #$1,d3
	move.w d3,d6
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202cc8:
	andi.w #$ff,d2
	move.b $0(a4,d2.w),d0
	ext.w d0
	add.w ($f708).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d2
	dbf d3,loc_202cc8
	lsr.w #$3,d6
loc_202ce4:
	move.w (a2)+,d0
	subq.w #$1,d1
	dbf d6,loc_202ce4
	bra.s loc_202c78

sub_202cee:
	move.w ($f700).w,d4
	bsr.s sub_202d22
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202d20
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202d1a
	bset.b #$2,($f754).w
	rts
loc_202d1a:
	bset.b #$3,($f754).w
loc_202d20:
	rts

sub_202d22:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202d34
	bcs.s loc_202d64
	bra.s loc_202d3a
loc_202d34:
	clr.w ($f73a).w
	rts
loc_202d3a:
	cmpi.w #$10,d0
	blt.s loc_202d44
	move.w #$10,d0
loc_202d44:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202d52
	move.w ($f72a).w,d0
loc_202d52:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d64:
	cmpi.w #$fff0,d0
	bge.s loc_202d6e
	move.w #$fff0,d0
loc_202d6e:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202d52
	move.w ($f728).w,d0
	bra.s loc_202d52
	.incbin 11646, 16

sub_202d8e:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202da2
	subq.w #$5,d0
loc_202da2:
	btst.b #$1,$22(a6)
	beq.s loc_202dc2
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202e0e
	subi.w #$40,d0
	bcc.s loc_202e0e
	tst.b ($f75c).w
	bne.s loc_202e20
	bra.s loc_202dce
loc_202dc2:
	sub.w ($f73e).w,d0
	bne.s loc_202dd4
	tst.b ($f75c).w
	bne.s loc_202e20
loc_202dce:
	clr.w ($f73c).w
	rts
loc_202dd4:
	cmpi.w #$60,($f73e).w
	bne.s loc_202dfc
	move.w $14(a6),d1
	bpl.s loc_202de4
	neg.w d1
loc_202de4:
	cmpi.w #$800,d1
	bcc.s loc_202e0e
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e6e
	cmpi.w #$fffa,d0
	blt.s loc_202e38
	bra.s loc_202e26
loc_202dfc:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e6e
	cmpi.w #$fffe,d0
	blt.s loc_202e38
	bra.s loc_202e26
loc_202e0e:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e6e
	cmpi.w #$fff0,d0
	blt.s loc_202e38
	bra.s loc_202e26
loc_202e20:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202e26:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202e78
	bra.w loc_202e44
loc_202e38:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e44:
	cmp.w ($f72c).w,d1
	bgt.s loc_202e9c
	cmpi.w #$ff00,d1
	bgt.s loc_202e68
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e9c
loc_202e68:
	move.w ($f72c).w,d1
	bra.s loc_202e9c
loc_202e6e:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e78:
	cmp.w ($f72e).w,d1
	blt.s loc_202e9c
	subi.w #$800,d1
	bcs.s loc_202e98
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e9c
loc_202e98:
	move.w ($f72e).w,d1
loc_202e9c:
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
	bne.s loc_202ede
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202ed8
	bset.b #$0,($f754).w
	rts
loc_202ed8:
	bset.b #$1,($f754).w
loc_202ede:
	rts
	.incbin 12000, 160

sub_202f80:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202fae
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202fa8
	bset.b #$0,($f756).w
	rts
loc_202fa8:
	bset.b #$1,($f756).w
loc_202fae:
	rts

sub_202fb0:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202fe2
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202fdc
	bset.b d6,($f756).w
	bra.s loc_202fe2
loc_202fdc:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202fe2:
	rts

sub_202fe4:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_203016
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_203010
	bset.b d6,($f758).w
	bra.s loc_203016
loc_203010:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_203016:
	rts

sub_203018:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_20304a
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_203044
	bset.b d6,($f75a).w
	bra.s loc_20304a
loc_203044:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_20304a:
	rts
	.incbin 12364, 44

sub_203078:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203136
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20321a
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20321c
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203134
	bclr.b #$0,(a2)
	beq.s loc_2030ea
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203448
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20321e
loc_2030ea:
	bclr.b #$1,(a2)
	beq.s loc_203104
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203448
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20321e
loc_203104:
	bclr.b #$2,(a2)
	beq.s loc_20311a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203448
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203274
loc_20311a:
	bclr.b #$3,(a2)
	beq.s loc_203134
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203448
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203274
loc_203134:
	rts

sub_203136:
	lea (dat_203500).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203152
	bclr.b #$1,(a2)
	beq.s loc_20319c
	move.w #$e0,d4
loc_203152:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2031cc(pc,d0.w),a3
	beq.s loc_203184
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203448
	movem.l (a7)+,d4-d5
	bsr.w sub_20321e
	movea.l (a7)+,a0
	bra.s loc_20319c
loc_203184:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20344a
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20324a
	movea.l (a7)+,a0
loc_20319c:
	tst.b (a2)
	bne.s loc_2031a2
	rts
loc_2031a2:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2031b6
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2031b6:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2031dc
dat_2031cc:
	.incbin 12748, 16
loc_2031dc:
	moveq #$f,d6
	move.l #$800000,d7
loc_2031e4:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_20320e
	add.w d0,d0
	movea.l dat_2031cc(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203320
	movem.l (a7)+,d4-d5
	bsr.w sub_203448
	bsr.w sub_2032a2
	movem.l (a7)+,d4-d5/a0
loc_20320e:
	addi.w #$10,d4
	dbf d6,loc_2031e4
	clr.b (a2)
	rts

sub_20321a:
	rts

sub_20321c:
	rts

sub_20321e:
	moveq #$15,d6

sub_203220:
	move.l #$800000,d7
	move.l d0,d1
loc_203228:
	movem.l d4-d5,-(a7)
	bsr.w sub_203320
	move.l d1,d0
	bsr.w sub_2032a2
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203228
	rts

sub_20324a:
	move.l #$800000,d7
	move.l d0,d1
loc_203252:
	movem.l d4-d5,-(a7)
	bsr.w sub_203322
	move.l d1,d0
	bsr.w sub_2032a2
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203252
	rts

sub_203274:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20327e:
	movem.l d4-d5,-(a7)
	bsr.w sub_203320
	move.l d1,d0
	bsr.w sub_2032a2
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20327e
	rts

sub_2032a2:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2032de
	btst.b #$3,(a0)
	bne.s loc_2032be
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2032be:
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
loc_2032de:
	btst.b #$3,(a0)
	bne.s loc_203300
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
loc_203300:
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

sub_203320:
	add.w (a3),d5

sub_203322:
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
	beq.s loc_203370
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
loc_203370:
	rts
	.incbin 13170, 214

sub_203448:
	add.w (a3),d5

sub_20344a:
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
	.incbin 13412, 28

sub_203480:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2034aa
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2034d2

sub_2034aa:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034ae:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203448
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203220
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2034ae
	rts
loc_2034d2:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034d6:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203500).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_203542
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2034d6
	rts
dat_203500:
	.incbin 13568, 50
dat_203532:
	.incbin 13618, 16

sub_203542:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203532(pc,d0.w),a3
	beq.s loc_203564
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203448
	movem.l (a7)+,d4-d5
	bsr.w sub_20321e
	bra.s loc_203578
loc_203564:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20344a
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20324a
loc_203578:
	rts

sub_20357a:
	moveq #$0,d0
	lea (dat_20face).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20231a
	movea.l (a2)+,a0
	bsr.w sub_2035d4
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004c0
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2035be
	jmp (loc_20bf04).l
loc_2035be:
	btst.b #$1,($ff151c).l
	beq.s loc_2035d2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2035d2
	bsr.w sub_202448
loc_2035d2:
	rts

sub_2035d4:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2035de:
	move.l d0,(a3)+
	dbf d1,loc_2035de
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2035f4
	lea ($a040).w,a3
	moveq #$2,d1

sub_2035f4:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_21f9bc).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20360e:
	move.w d1,d0
	movea.l a3,a0
loc_203612:
	move.b (a1)+,(a0)+
	dbf d0,loc_203612
	lea $80(a3),a3
	dbf d2,loc_20360e
	rts

sub_203622:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20369c(pc,d0.w),d0
	jsr dat_20369c(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203648
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203648:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203676
	bcc.s loc_203678
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20366c
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20366c:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203676:
	rts
loc_203678:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203690
	btst.b #$1,($d022).w
	beq.s loc_203690
	add.w d1,d1
	add.w d1,d1
loc_203690:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20369c:
	.incbin 13980, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203756(pc,d0.w),d0
	jmp dat_203756(pc,d0.w)
dat_203756:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$510,($f726).w
	rts
	.incbin 14180, 32
	move.w #$710,($f726).w
	rts
	.incbin 14220, 514

sub_20398e:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203996:
	move.b (a0),d0
	beq.s loc_2039ac
	add.w d0,d0
	add.w d0,d0
	lea (dat_203db0).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2039ac:
	lea $40(a0),a0
	dbf d7,loc_203996
	rts

sub_2039b6:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2039f4
	bpl.s loc_2039e6
	btst.b #$1,$2c(a0)
	beq.s loc_2039e6
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2039f4
loc_2039e6:
	btst.b #$2,$2c(a0)
	bne.s loc_2039f4
	addi.w #$38,$12(a0)
loc_2039f4:
	tst.w $12(a0)
	bmi.s loc_203a08
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a08
	move.w #$1000,$12(a0)
loc_203a08:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a18:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a54
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a54
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a52
	neg.w d1
loc_203a52:
	add.w d1,d0
loc_203a54:
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

sub_203a6e:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203ade
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203afa
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203afa
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203ab8
	cmpi.w #$800,d3
	bcs.s loc_203aca
	subi.w #$800,d3
	bra.s loc_203aca
loc_203ab8:
	cmpi.w #$700,($f704).w
	bcs.s loc_203aca
	cmpi.w #$100,d3
	bcc.s loc_203aca
	addi.w #$800,d3
loc_203aca:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203afa
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203afa
loc_203ade:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203afa
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203afa:
	rts
	.incbin 15100, 30

sub_203b1a:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b20:
	move.l d1,(a1)+
	dbf d0,loc_203b20
	rts
dat_203b28:
	.incbin 15144, 16

sub_203b38:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b44:
	tst.w (a4)
	beq.w loc_203c04
	moveq #$2,d6
loc_203b4c:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203bfc
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203bb2
	movea.l dat_203b28(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203b96
	cmpi.w #$800,d2
	bcs.s loc_203ba8
	subi.w #$800,d2
	bra.s loc_203ba8
loc_203b96:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203ba8
	cmpi.w #$100,d2
	bcc.s loc_203ba8
	addi.w #$800,d2
loc_203ba8:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203bd4
loc_203bb2:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203bd4
	.incbin 15292, 24
loc_203bd4:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203bf2
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203bf6
loc_203bf2:
	bsr.w sub_203c26
loc_203bf6:
	bset.b #$7,$1(a0)
loc_203bfc:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b4c
loc_203c04:
	lea $80(a4),a4
	dbf d7,loc_203b44
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c1e
	move.l #$0,(a2)
	rts
loc_203c1e:
	move.b #$0,-$5(a2)
	rts

sub_203c26:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c6c
	btst.l #$1,d4
	bne.w loc_203cba
loc_203c38:
	cmpi.b #$50,d5
	beq.s loc_203c6a
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
	bne.s loc_203c64
	addq.w #$1,d0
loc_203c64:
	move.w d0,(a2)+
	dbf d1,loc_203c38
loc_203c6a:
	rts
loc_203c6c:
	btst.l #$1,d4
	bne.w loc_203d00
loc_203c74:
	cmpi.b #$50,d5
	beq.s loc_203cb8
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
	bne.s loc_203cb2
	addq.w #$1,d0
loc_203cb2:
	move.w d0,(a2)+
	dbf d1,loc_203c74
loc_203cb8:
	rts
loc_203cba:
	cmpi.b #$50,d5
	beq.s loc_203cfe
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
	bne.s loc_203cf8
	addq.w #$1,d0
loc_203cf8:
	move.w d0,(a2)+
	dbf d1,loc_203cba
loc_203cfe:
	rts
loc_203d00:
	cmpi.b #$50,d5
	beq.s loc_203d52
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
	bne.s loc_203d4c
	addq.w #$1,d0
loc_203d4c:
	move.w d0,(a2)+
	dbf d1,loc_203d00
loc_203d52:
	rts
	.incbin 15700, 92
dat_203db0:
	.incbin 15792, 246

sub_203ea6:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203eb8
	move.w #$0,(a1)
	rts
loc_203eb8:
	tst.w (a1)
	bne.s loc_203ec2
	move.b #$1,$1(a1)
loc_203ec2:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203f0c
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203efe
	neg.w $10(a0)
loc_203efe:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205c38
loc_203f0c:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203f2a
	cmpa.w #$d040,a0
	beq.s loc_203f2a
	tst.b ($ff1906).l
	beq.s loc_203f2a
	jmp (loc_2075d6).l
loc_203f2a:
	move.b $2a(a0),d0
	beq.s loc_203f54
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203f46
	cmpi.b #$2d,d0
	bcs.s loc_203f50
	move.b #$2d,d0
	bra.s loc_203f50
loc_203f46:
	cmpi.b #$1e,d0
	bcs.s loc_203f50
	move.b #$1e,d0
loc_203f50:
	move.b d0,$2a(a0)
loc_203f54:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203f62(pc,d0.w),d1
	jmp dat_203f62(pc,d1.w)
dat_203f62:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203f6c:
	tst.b ($d300).w
	bne.s loc_203faa
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203faa:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203fd2
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203fd2:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_204006:
	tst.b ($ff1506).l
	bne.s loc_20406c
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_20406c
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_204070
	cmpi.b #$2f,d1
	bne.s loc_20406e
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_20406c
	tst.b $2c(a0)
	beq.s loc_20406c
	jsr (sub_207b0a).l
	bne.s loc_20406c
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_204064
	moveq #$0,d0
loc_204064:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_20406c:
	rts
loc_20406e:
	rts

sub_204070:
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

sub_204096:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_2040a2
	neg.w d0
loc_2040a2:
	btst.b #$1,$2c(a0)
	beq.s loc_2040b2
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_2040da
loc_2040b2:
	cmpi.w #$600,d0
	bcs.s loc_2040da
	tst.w $14(a0)
	bpl.s loc_2040cc
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_2040e8
	move.w #$e0,d1
	bra.s loc_2040e8
loc_2040cc:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_2040e8
	move.w #$60,d1
	bra.s loc_2040e8
loc_2040da:
	cmpi.w #$a0,d1
	beq.s loc_2040e8
	bcc.s loc_2040e6
	addq.w #$2,d1
	bra.s loc_2040e8
loc_2040e6:
	subq.w #$2,d1
loc_2040e8:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_204096
	bsr.w sub_204006
	tst.w ($ff1588).l
	beq.s loc_20410e
	btst.b #$4,($f605).w
	beq.s loc_20410e
	move.b #$1,($ff1906).l
	rts
loc_20410e:
	tst.b ($f7cc).w
	bne.s loc_20411a
	move.w ($f604).w,($f602).w
loc_20411a:
	btst.b #$0,$2c(a0)
	beq.s loc_20413e
	cmpi.b #$6,($ff1506).l
	bne.s loc_204138
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204156
loc_204138:
	bsr.w sub_204420
	bra.s loc_204156
loc_20413e:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20419c(pc,d0.w),d1
	jsr dat_20419c(pc,d1.w)
	jsr (sub_2066f0).l
loc_204156:
	bsr.s sub_2041aa
	bsr.w sub_20426a
	bsr.w sub_204284
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_20417e
	tst.b $1c(a0)
	bne.s loc_20417e
	move.b $1d(a0),$1c(a0)
loc_20417e:
	bsr.w sub_205628
	tst.b $2c(a0)
	bmi.s loc_204196
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204196
	jsr (sub_207180).l
loc_204196:
	bsr.w sub_2054de
	rts
dat_20419c:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_2041aa:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2041ce
	move.w $30(a0),d0
	beq.s loc_2041c0
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2041ce
loc_2041c0:
	btst.b #$6,$2c(a0)
	bne.s loc_2041ce
	jsr (sub_203a6e).l
loc_2041ce:
	tst.b ($ff151f).l
	beq.s loc_204212
	tst.w $32(a0)
	beq.s loc_204212
	subq.w #$1,$32(a0)
	bne.s loc_204212
	tst.b ($ff1520).l
	bne.s loc_20420a
	tst.b ($ff1958).l
	bne.s loc_20420a
	tst.b ($ff152e).l
	bne.s loc_204204
	move.w #$e,d0
	jsr (sub_205c38).l
loc_204204:
	jsr (sub_201a72).l
loc_20420a:
	move.b #$0,($ff151f).l
loc_204212:
	tst.b ($ff1520).l
	beq.s loc_204268
	tst.w $34(a0)
	beq.s loc_204268
	subq.w #$1,$34(a0)
	bne.s loc_204268
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204260
	tst.b ($ff1958).l
	bne.s loc_204260
	tst.b ($ff152e).l
	bne.s loc_20425a
	move.w #$e,d0
	jsr (sub_205c38).l
loc_20425a:
	jsr (sub_201a72).l
loc_204260:
	move.b #$0,($ff1520).l
loc_204268:
	rts

sub_20426a:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204284:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204290
loc_20428e:
	rts
loc_204290:
	cmpi.b #$1,($ff1507).l
	bne.s loc_2042a2
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20428e
loc_2042a2:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2042e6
	bset.b #$6,$22(a0)
	bne.s loc_20428e
	bsr.w sub_205f3c
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20428e
	bra.s loc_20431e
loc_2042e6:
	tst.w $12(a0)
	beq.s loc_2042ee
	bpl.s loc_20428e
loc_2042ee:
	bclr.b #$6,$22(a0)
	beq.s loc_20428e
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20428e
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20431e
	move.w #$f000,$12(a0)
loc_20431e:
	jsr (sub_207b0a).l
	bne.s loc_204332
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204332:
	rts

sub_204334:
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
	bcs.s loc_20440e
	move.l #$50000,d0
loc_20440e:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204420:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204446
	tst.b ($ff152e).l
	beq.s loc_20443c
	cmpi.b #$2,($ff152e).l
	bne.s loc_204446
loc_20443c:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2044f6
loc_204446:
	tst.b $2a(a0)
	bne.w loc_204504
	tst.b ($f784).w
	beq.w loc_204504
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204464
	neg.w d0
loc_204464:
	tst.w ($f786).w
	bne.s loc_204470
	move.w #$1,($f786).w
loc_204470:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204486
	move.b #$1,($ff1502).l
	bra.w loc_205c34
loc_204486:
	cmpi.w #$d2,d1
	bcs.s loc_2044da
	cmpi.b #$2,($ff1522).l
	beq.s loc_2044d8
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2044b0
	move.w #$82,d0
	jsr (sub_205c38).l
	moveq #$0,d0
loc_2044b0:
	add.b ($f784).w,d0
	bpl.s loc_2044ba
	moveq #$0,d0
	bra.s loc_2044c2
loc_2044ba:
	cmpi.b #$3,d0
	bcs.s loc_2044c2
	moveq #$2,d0
loc_2044c2:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204334
	move.b #$2,($ff1522).l
loc_2044d8:
	rts
loc_2044da:
	cmpi.w #$5a,d1
	bcc.s loc_2044f2
	cmp.w d2,d0
	bcc.w loc_203f6c
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2044f2:
	cmp.w d2,d0
	bcc.s loc_204504
loc_2044f6:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204504:
	rts
	bsr.w sub_203ea6
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204536
	tst.b ($ff195b).l
	beq.s loc_204524
	cmpi.b #$79,$1a(a0)
	bne.s loc_204560
	bra.s loc_20452c
loc_204524:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204560
loc_20452c:
	bsr.w sub_204dc8
	jmp (sub_2039b6).l
loc_204536:
	bsr.w sub_20460e
	bsr.w sub_204420
	bsr.w sub_204eb2
	bsr.w sub_204fde
	bsr.w sub_204682
	bsr.w sub_204e34
	bsr.w sub_204dc8
	jsr (sub_203a18).l
	bsr.w sub_200b82
	bsr.w sub_20505c
loc_204560:
	rts
	.incbin 17762, 172

sub_20460e:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20467a
	tst.w ($ff1506).l
	bne.s loc_20467a
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20467c).l,a2
loc_204642:
	move.b (a2)+,d0
	bmi.s loc_204652
	cmp.b d0,d1
	bne.s loc_204642
	bset.b #$1,$2c(a0)
	rts
loc_204652:
	bclr.b #$1,$2c(a0)
	beq.s loc_20467a
	tst.w $12(a0)
	bpl.s loc_20467a
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20467a
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20467a
	neg.w $10(a0)
loc_20467a:
	rts
dat_20467c:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204682:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2049ac
	tst.w $3e(a0)
	bne.w loc_20495c
	btst.b #$2,($f602).w
	beq.s loc_2046aa
	bsr.w sub_204a3c
loc_2046aa:
	btst.b #$3,($f602).w
	beq.s loc_2046b6
	bsr.w sub_204ab2
loc_2046b6:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_20495c
	tst.w $14(a0)
	beq.s loc_2046d6
	tst.b $2a(a0)
	beq.w loc_20495c
	bra.s loc_2046e2
loc_2046d6:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2046e2:
	btst.b #$3,$22(a0)
	beq.s loc_204734
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20478c
	cmpi.b #$1e,$0(a1)
	bne.s loc_204714
	move.b #$0,$1c(a0)
	bra.w loc_20495c
loc_204714:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204770
	cmp.w d2,d1
	bge.s loc_20475e
	bra.s loc_20478c
loc_204734:
	jsr (sub_206ee4).l
	cmpi.w #$c,d1
	blt.s loc_20478c
	move.w #$ab,d0
	jsr (sub_20227e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204768
loc_20475e:
	btst.b #$0,$22(a0)
	bne.s loc_204778
	bra.s loc_204782
loc_204768:
	cmpi.b #$3,$37(a0)
	bne.s loc_20478c
loc_204770:
	btst.b #$0,$22(a0)
	bne.s loc_204782
loc_204778:
	move.b #$32,$1c(a0)
	bra.w loc_20495c
loc_204782:
	move.b #$6,$1c(a0)
	bra.w loc_20495c
loc_20478c:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2047a0
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2047a0:
	btst.b #$7,($f788).w
	bne.w loc_2048a4
	btst.b #$6,($f788).w
	bne.w loc_2048c4
	btst.b #$1,($f602).w
	bne.w loc_2048c4
	andi.b #$f,($f788).w
	beq.s loc_2047d8
	btst.b #$0,($f603).w
	beq.s loc_2047ec
	bset.b #$7,($f788).w
	bra.w loc_204980
loc_2047d8:
	btst.b #$0,($f603).w
	beq.w loc_2047ec
	move.b #$1,($f788).w
	bra.w loc_204980
loc_2047ec:
	btst.b #$0,($f602).w
	beq.s loc_204868
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_20484a
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20481c
	asr.w #$1,d2
	sub.w d2,d1
loc_20481c:
	btst.b #$0,$22(a0)
	beq.s loc_204828
	neg.w d0
	neg.w d1
loc_204828:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20483e
	cmp.w d0,d1
	ble.s loc_204844
	bra.s loc_204842
loc_20483e:
	cmp.w d1,d0
	ble.s loc_204844
loc_204842:
	move.w d1,d0
loc_204844:
	move.w d0,$14(a0)
	rts
loc_20484a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204864
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20227e).l
loc_204864:
	bra.w loc_204980
loc_204868:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204888
	move.w #$ab,d0
	jsr (sub_20227e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2048c4
loc_204888:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20227e).l
	bra.w loc_20495c
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2048a4:
	btst.b #$0,($f602).w
	beq.s loc_2048c4
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204980
	addq.w #$2,($f73e).w
	bra.w loc_204980
loc_2048c4:
	btst.b #$6,($f788).w
	bne.w loc_204940
	andi.b #$f,($f788).w
	beq.s loc_2048e8
	btst.b #$1,($f603).w
	beq.s loc_2048fa
	bset.b #$6,($f788).w
	bra.w loc_204980
loc_2048e8:
	btst.b #$1,($f603).w
	beq.s loc_2048fa
	move.b #$1,($f788).w
	bra.w loc_204980
loc_2048fa:
	btst.b #$1,($f602).w
	beq.s loc_20495c
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20493e
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20493e
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204930
	neg.w $14(a0)
loc_204930:
	move.w #$9c,d0
	jsr (sub_20227e).l
	bsr.w sub_204e5c
loc_20493e:
	bra.s loc_204980
loc_204940:
	btst.b #$1,($f602).w
	beq.s loc_20495c
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204980
	subq.w #$2,($f73e).w
	bra.s loc_204980
loc_20495c:
	cmpi.w #$60,($f73e).w
	bne.s loc_204976
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204980
	move.b #$0,($f788).w
	bra.s loc_204980
loc_204976:
	bcc.s loc_20497c
	addq.w #$4,($f73e).w
loc_20497c:
	subq.w #$2,($f73e).w
loc_204980:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2049ac
	move.w $14(a0),d0
	beq.s loc_2049ac
	bmi.s loc_2049a0
	sub.w d5,d0
	bcc.s loc_20499a
	move.w #$0,d0
loc_20499a:
	move.w d0,$14(a0)
	bra.s loc_2049ac
loc_2049a0:
	add.w d5,d0
	bcc.s loc_2049a8
	move.w #$0,d0
loc_2049a8:
	move.w d0,$14(a0)
loc_2049ac:
	move.b $26(a0),d0
	jsr (sub_200782).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204a3a
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204a3a
	bmi.s loc_2049e2
	neg.w d1
loc_2049e2:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206da4
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204a3a
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204a36
	cmpi.b #$40,d0
	beq.s loc_204a24
	cmpi.b #$80,d0
	beq.s loc_204a1e
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a1e:
	sub.w d1,$12(a0)
	rts
loc_204a24:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a36:
	add.w d1,$12(a0)
loc_204a3a:
	rts

sub_204a3c:
	tst.b $2a(a0)
	bne.s loc_204ab0
	move.w $14(a0),d0
	beq.s loc_204a4a
	bpl.s loc_204a7a
loc_204a4a:
	bset.b #$0,$22(a0)
	bne.s loc_204a5e
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a5e:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204a6e
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204a6e
	move.w d1,d0
loc_204a6e:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a7a:
	sub.w d4,d0
	bcc.s loc_204a82
	move.w #$ff80,d0
loc_204a82:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204ab0
	cmpi.w #$400,d0
	blt.s loc_204ab0
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20227e).l
loc_204ab0:
	rts

sub_204ab2:
	tst.b $2a(a0)
	bne.s loc_204b20
	move.w $14(a0),d0
	bmi.s loc_204aea
	bclr.b #$0,$22(a0)
	beq.s loc_204ad2
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204ad2:
	cmp.w d6,d0
	bge.s loc_204ade
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204ade
	move.w d6,d0
loc_204ade:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204aea:
	add.w d4,d0
	bcc.s loc_204af2
	move.w #$80,d0
loc_204af2:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b20
	cmpi.w #$fc00,d0
	bgt.s loc_204b20
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20227e).l
loc_204b20:
	rts
	.incbin 19234, 678

sub_204dc8:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204e1c
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204df6
	addi.w #$38,d0
loc_204df6:
	cmp.w d1,d0
	bls.s loc_204e1c
loc_204dfa:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204e0a
	rts
loc_204e0a:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_20741a
	move.b #$6,$24(a0)
	rts
loc_204e1c:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204dfa

sub_204e34:
	tst.b ($f7ca).w
	bne.s loc_204e5a
	move.w $14(a0),d0
	bpl.s loc_204e42
	neg.w d0
loc_204e42:
	cmpi.w #$80,d0
	bcs.s loc_204e5a
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204e5a
	btst.b #$1,($f602).w
	bne.s sub_204e5c
loc_204e5a:
	rts

sub_204e5c:
	btst.b #$2,$22(a0)
	beq.s loc_204e66
	bra.s loc_204e96
loc_204e66:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e86
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e96
loc_204e86:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e96:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204eb0
	cmpi.w #$200,$14(a0)
	bcc.s loc_204eb0
	move.w #$200,$14(a0)
loc_204eb0:
	rts

sub_204eb2:
	tst.b $2a(a0)
	beq.s loc_204eba
	rts
loc_204eba:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204ecc
	tst.w $14(a0)
	beq.w loc_204f92
loc_204ecc:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204f92
	btst.b #$3,$22(a0)
	beq.s loc_204ee8
	jsr (sub_205bbe).l
	beq.s loc_204f18
loc_204ee8:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206e0e
	cmpi.w #$6,d1
	blt.w loc_204f92
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f0e
	move.w #$380,d2
loc_204f0e:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204f18:
	jsr (sub_200782).l
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
	jsr (sub_20227e).l
	btst.b #$2,$22(a0)
	bne.s loc_204f94
	tst.b ($ff195b).l
	beq.s loc_204f76
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f86
loc_204f76:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f86:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204f92:
	rts
loc_204f94:
	bset.b #$4,$22(a0)
	rts
	.incbin 20380, 66

sub_204fde:
	tst.b $2a(a0)
	bne.s loc_205018
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205018
	move.b $26(a0),d0
	jsr (sub_200782).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_205018
	bmi.s loc_205014
	tst.w d0
	beq.s loc_205012
	add.w d0,$14(a0)
loc_205012:
	rts
loc_205014:
	add.w d0,$14(a0)
loc_205018:
	rts
	.incbin 20506, 66

sub_20505c:
	nop
	tst.b $38(a0)
	bne.s loc_20509e
	tst.w $3e(a0)
	bne.s loc_2050a0
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20509e
	move.w $14(a0),d0
	bpl.s loc_205080
	neg.w d0
loc_205080:
	cmpi.w #$280,d0
	bcc.s loc_20509e
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_20509e:
	rts
loc_2050a0:
	subq.w #$1,$3e(a0)
	rts
	.incbin 20646, 214
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
	.incbin 20874, 234
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
	.incbin 21126, 72

sub_2052ce:
	btst.b #$4,$22(a0)
	beq.s loc_2052d8
	nop
loc_2052d8:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205332
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205312
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205322
loc_205312:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205322:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20227e).l
loc_205332:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21312, 414

sub_2054de:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205506
	cmpi.b #$5,($ff1506).l
	beq.s loc_205506
	cmpi.b #$2,($ff1506).l
	beq.s loc_205506
	tst.b ($ff1506).l
	bne.w loc_2055c8
loc_205506:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205544
	tst.b ($ff1506).l
	bne.w loc_2055ca
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2055ca
	bra.s loc_20554c
loc_205544:
	cmp.b ($f7af).w,d1
	beq.w loc_2055ca
loc_20554c:
	cmp.b ($f7ac).w,d1
	beq.s loc_20557c
	cmp.b ($f7ad).w,d1
	beq.s loc_205560
	bclr.b #$6,$1(a0)
	rts
loc_205560:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2055e2
	btst.b #$1,$22(a0)
	beq.s loc_20557c
	bclr.b #$6,$1(a0)
	rts
loc_20557c:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20558e
	bclr.b #$6,$1(a0)
	rts
loc_20558e:
	cmpi.b #$e0,d2
	bcs.s loc_20559c
	bset.b #$6,$1(a0)
	rts
loc_20559c:
	btst.b #$6,$1(a0)
	bne.s loc_2055b8
	move.b $26(a0),d1
	beq.s loc_2055c8
	cmpi.b #$80,d1
	bhi.s loc_2055c8
	bset.b #$6,$1(a0)
	rts
loc_2055b8:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2055c8
	bclr.b #$6,$1(a0)
loc_2055c8:
	rts
loc_2055ca:
	btst.b #$2,$22(a0)
	bne.s loc_2055dc
	move.w #$9c,d0
	jsr (sub_20227e).l
loc_2055dc:
	jmp (sub_204e5c).l
loc_2055e2:
	tst.w $12(a0)
	bmi.s loc_205626
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_20561a
	cmpi.w #$38,d1
	bcs.s loc_205612
	cmpi.w #$80,d1
	bcs.s loc_205626
loc_20560a:
	bclr.b #$6,$1(a0)
	rts
loc_205612:
	bset.b #$6,$1(a0)
	rts
loc_20561a:
	cmpi.w #$38,d1
	bcs.s loc_20560a
	cmpi.w #$80,d1
	bcc.s loc_205612
loc_205626:
	rts

sub_205628:
	lea (dat_205918).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20564a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20564a:
	bsr.w sub_2058ba
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2056c2
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205690
	move.b d0,$1e(a0)

sub_205674:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205688
	bpl.s loc_205688
	cmpi.b #$fd,d0
	bge.s loc_205692
loc_205688:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205690:
	rts
loc_205692:
	addq.b #$1,d0
	bne.s loc_2056a2
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205688
loc_2056a2:
	addq.b #$1,d0
	bne.s loc_2056b6
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205688
loc_2056b6:
	addq.b #$1,d0
	bne.s loc_2056c0
	move.b $2(a1,d1.w),$1c(a0)
loc_2056c0:
	rts
loc_2056c2:
	subq.b #$1,$1e(a0)
	bpl.s loc_205690
	addq.b #$1,d0
	bne.w loc_20577c
	tst.b ($ff195b).l
	bne.w loc_205844
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056ea
	not.b d0
loc_2056ea:
	btst.b #$1,$2c(a0)
	bne.s loc_2056f8
	addi.b #$10,d0
	bra.s loc_2056fa
loc_2056f8:
	addq.b #$8,d0
loc_2056fa:
	bpl.s loc_2056fe
	moveq #$3,d1
loc_2056fe:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2057f0
	move.w $14(a0),d2
	bpl.s loc_20571c
	neg.w d2
loc_20571c:
	btst.b #$1,$2c(a0)
	beq.s loc_205734
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205b1a).l,a1
	bra.s loc_20575e
loc_205734:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205af4).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20575e
	lea (dat_205998).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20575e
	lea (dat_205990).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20575e:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20576c
	moveq #$0,d2
loc_20576c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205674
	add.b d3,$1a(a0)
	rts
loc_20577c:
	addq.b #$1,d0
	bne.s loc_2057ec
	move.w $14(a0),d2
	bpl.s loc_205788
	neg.w d2
loc_205788:
	lea (dat_205a76).l,a1
	tst.b ($ff195b).l
	bne.s loc_2057c6
	lea (dat_2059a8).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2057ba
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2057c6
	lea (dat_205b22).l,a1
	bra.s loc_2057c6
loc_2057ba:
	cmpi.w #$600,d2
	bcc.s loc_2057c6
	lea (dat_2059a0).l,a1
loc_2057c6:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2057d0
	moveq #$0,d2
loc_2057d0:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205674
loc_2057ec:
	addq.b #$1,d0
	bne.s loc_205830
loc_2057f0:
	move.w $14(a0),d2
	bmi.s loc_2057f8
	neg.w d2
loc_2057f8:
	addi.w #$800,d2
	bpl.s loc_205800
	moveq #$0,d2
loc_205800:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205a88).l,a1
	tst.b ($ff195b).l
	bne.s loc_20581a
	lea (dat_2059b0).l,a1
loc_20581a:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205674
loc_205830:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205844:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205856
	not.b d0
loc_205856:
	addi.b #$10,d0
	bpl.s loc_20585e
	moveq #$0,d1
loc_20585e:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20588c
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20577c
loc_20588c:
	move.w $14(a0),d2
	bpl.s loc_205894
	neg.w d2
loc_205894:
	lea (dat_205a70).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2058a6
	lea (dat_205a6a).l,a1
loc_2058a6:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2058b0
	moveq #$0,d2
loc_2058b0:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205674

sub_2058ba:
	tst.b ($ff195b).l
	beq.s loc_2058c6
	move.b dat_2058c8(pc,d0.w),d0
loc_2058c6:
	rts
dat_2058c8:
	.incbin 22728, 80
dat_205918:
	.incbin 22808, 120
dat_205990:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205998:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2059a0:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2059a8:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2059b0:
	.incbin 22960, 186
dat_205a6a:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205a70:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205a76:
	.incbin 23158, 18
dat_205a88:
	.incbin 23176, 108
dat_205af4:
	.incbin 23284, 38
dat_205b1a:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205b22:
	.incbin 23330, 56

sub_205b5a:
	tst.b (a0)
	beq.w loc_205bbc
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205bbc
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205bbc
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205b8e:
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
loc_205ba8:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205ba8
	dbf d1,loc_205b8e
loc_205bbc:
	rts

sub_205bbe:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205c32
	move.w #$98,d0
	jsr (sub_20227e).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a1a).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205c20
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205c20:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205c32:
	rts
loc_205c34:
	move.w #$e,d0

sub_205c38:
	cmpi.w #$67,d0
	bne.s loc_205c46
	move.b #$1,($ff1958).l
loc_205c46:
	move.w d0,($a12010).l
loc_205c4c:
	move.w ($a12020).l,d0
	beq.s loc_205c4c
	cmp.w ($a12020).l,d0
	bne.s loc_205c4c
	move.w #$0,($a12010).l
loc_205c64:
	move.w ($a12020).l,d0
	bne.s loc_205c64
	move.w ($a12020).l,d0
	bne.s loc_205c64
	rts
	dc.b $00,$00

sub_205c78:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205c94
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205c94:
	subq.b #$1,$1e(a0)
	bpl.s loc_205cd4
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205cd6
loc_205cb0:
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
loc_205cd4:
	rts
loc_205cd6:
	addq.b #$1,d0
	bne.s loc_205ce6
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205cb0
loc_205ce6:
	addq.b #$1,d0
	bne.s loc_205cfa
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205cb0
loc_205cfa:
	addq.b #$1,d0
	bne.s loc_205d04
	move.b $2(a1,d1.w),$1c(a0)
loc_205d04:
	addq.b #$1,d0
	bne.s loc_205d0c
	addq.b #$2,$24(a0)
loc_205d0c:
	addq.b #$1,d0
	bne.s loc_205d1a
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205d1a:
	addq.b #$1,d0
	bne.s loc_205d22
	addq.b #$2,$25(a0)
loc_205d22:
	rts
	.incbin 23844, 166
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205de6(pc,d0.w),d0
	jsr dat_205de6(pc,d0.w)
	jsr (sub_203a6e).l
	jmp (loc_207b40).l
dat_205de6:
	.incbin 24038, 342

sub_205f3c:
	rts
	.incbin 24382, 116

sub_205fb2:
	tst.b $25(a0)
	bne.s loc_205fe2
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207b0a).l
	bne.s loc_205fe2
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205fe2:
	rts
	.incbin 24548, 42
	tst.b $29(a0)
	beq.s loc_20601a
	andi.b #$7f,$2(a0)
loc_20601a:
	move.l #$23a6b4,$4(a0)
	bsr.s sub_205fb2
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_206048
	move.w #$100,$1c(a0)
loc_206048:
	lea (dat_23a6a0).l,a1
	bsr.w sub_205c78
	jmp (sub_203a6e).l
	.incbin 24664, 456

sub_206220:
	tst.w $12(a1)
	bpl.s loc_206262
	bsr.w sub_2062d6
	beq.s loc_206262
	move.b #$4,$24(a0)
	tst.b $28(a0)
	bne.s loc_206260
	jsr (sub_207b0a).l
	bne.s loc_206260
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$4,$c(a1)
	move.w #$a4,d0
	jmp (sub_20227e).l
loc_206260:
	rts
loc_206262:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d46).l
	.incbin 25200, 36
loc_206294:
	bne.s loc_20629c
	move.b #$18,$19(a0)
loc_20629c:
	move.b #$8,$16(a0)
	moveq #$c,d0
	jsr (sub_20bf6e).l
	lea ($d000).w,a1
	bsr.w sub_206220
	lea ($d040).w,a1
	bra.w sub_206220
	.incbin 25274, 28

sub_2062d6:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	moveq #$0,d1
	move.b $19(a0),d1
	add.w d1,d0
	bmi.s loc_20630a
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20630a
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$0,d1
	move.b $16(a0),d1
	add.w d1,d0
	bmi.s loc_20630a
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20630a
	moveq #$1,d0
	rts
loc_20630a:
	moveq #$0,d0
	rts
	.incbin 25358, 478
loc_2064ec:
	bclr.b #$7,($ff156b).l
	beq.s loc_20653a
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20653c(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206510:
	move.l (a1)+,(a2)+
	dbf d0,loc_206510
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20653a:
	rts
dat_20653c:
	.incbin 25916, 436

sub_2066f0:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2066fa
	bsr.s sub_2066fc
loc_2066fa:
	rts

sub_2066fc:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a1a).l
	subi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2067e0
	cmpi.b #$80,d0
	beq.w loc_206766
	cmpi.b #$c0,d0
	beq.w loc_2067a2
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_20681e
	bne.s loc_206764
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_20681e
loc_206764:
	rts
loc_206766:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_20681e
	bne.s loc_2067a0
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_20681e
loc_2067a0:
	rts
loc_2067a2:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_20681e
	bne.s loc_2067de
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_20681e
loc_2067de:
	rts
loc_2067e0:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_20681e
	bne.s loc_20681c
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_20681e
loc_20681c:
	rts

sub_20681e:
	jsr (sub_200ef0).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_206862
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_206846
	add.b ($ff156a).l,d1
loc_206846:
	add.w d1,d1
	move.w dat_206866(pc,d1.w),d1
	lea dat_206866(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_206856:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2068da
	addq.w #$2,d1
	dbf d6,loc_206856
loc_206862:
	moveq #$0,d0
	rts
dat_206866:
	.incbin 26726, 116
loc_2068da:
	cmpi.b #$4,$24(a0)
	bne.s loc_2068ec
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2068ec:
	move.b #$0,($ff1950).l
	move.l d1,-(a7)
	move.w dat_206930(pc,d1.w),d0
	jsr dat_206930(pc,d0.w)
	move.l (a7)+,d1
	cmpi.w #$3,d1
	bcs.s loc_206920
	move.w #$be,d0
	cmpi.b #$4,d1
	beq.s loc_20691a
	cmpi.b #$6,d1
	beq.s loc_20691a
	move.w #$b5,d0
loc_20691a:
	jsr (sub_20227e).l
loc_206920:
	tst.b ($ff1950).l
	beq.s loc_20692c
	moveq #$0,d0
	rts
loc_20692c:
	moveq #$1,d0
	rts
dat_206930:
	.incbin 26928, 686
loc_206bde:
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
	bne.s loc_206c98
	move.b ($ff1593).l,($ff195b).l
loc_206c98:
	tst.b ($ff1522).l
	bpl.s loc_206cae
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206cae:
	rts

sub_206cb0:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206bde
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
	bne.s loc_206d6a
	move.b ($ff1591).l,($ff195b).l
loc_206d6a:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206d8c
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206d8c:
	tst.b ($ff1522).l
	bpl.s loc_206da2
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206da2:
	rts

sub_206da4:
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
	bpl.s loc_206de0
	move.b d1,d0
	bpl.s loc_206dda
	subq.b #$1,d0
loc_206dda:
	addi.b #$20,d0
	bra.s loc_206dea
loc_206de0:
	move.b d1,d0
	bpl.s loc_206de6
	addq.b #$1,d0
loc_206de6:
	addi.b #$1f,d0
loc_206dea:
	andi.b #$c0,d0
	beq.w loc_206eba
	cmpi.b #$80,d0
	beq.w loc_207056
	andi.b #$38,d1
	bne.s loc_206e02
	addq.w #$8,d2
loc_206e02:
	cmpi.b #$40,d0
	beq.w loc_20712c
	bra.w loc_206f8e

sub_206e0e:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2070b4
	cmpi.b #$80,d0
	beq.w loc_206fde
	cmpi.b #$c0,d0
	beq.w loc_206f1e

sub_206e36:
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
	jsr (sub_2010d8).l
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
	jsr (sub_2010d8).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206e9a:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206ea8
	move.b ($f768).w,d3
	exg d0,d1
loc_206ea8:
	btst.l #$0,d3
	beq.s loc_206eb0
	move.b d2,d3
loc_206eb0:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206eba:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010d8).l
	move.b #$0,d2
loc_206ed6:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ee2
	move.b d2,d3
loc_206ee2:
	rts

sub_206ee4:
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
	jsr (sub_2010d8).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206f1c
	move.b #$0,d3
loc_206f1c:
	rts
loc_206f1e:
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
	jsr (sub_201248).l
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
	jsr (sub_201248).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206e9a
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206f8e:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201248).l
	move.b #$c0,d2
	bra.w loc_206ed6
	.incbin 28590, 48
loc_206fde:
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
	jsr (sub_2010d8).l
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
	jsr (sub_2010d8).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206e9a

sub_20704e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207056:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010d8).l
	move.b #$80,d2
	bra.w loc_206ed6
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
	jsr (sub_2010d8).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2070b2
	move.b #$80,d3
loc_2070b2:
	rts
loc_2070b4:
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
	jsr (sub_201248).l
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
	jsr (sub_201248).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206e9a
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_20712c:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201248).l
	move.b #$40,d2
	bra.w loc_206ed6
	.incbin 29008, 48

sub_207180:
	btst.b #$6,$2c(a0)
	bne.s loc_2071ce
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_2071ac
	addi.w #$c,d3
	moveq #$a,d5
loc_2071ac:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_2071ba:
	tst.b $1(a1)
	bpl.s loc_2071c6
	move.b $20(a1),d0
	bne.s loc_2071d2
loc_2071c6:
	lea $40(a1),a1
	dbf d6,loc_2071ba
loc_2071ce:
	moveq #$0,d0
	rts
loc_2071d2:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207558).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2071fa
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_207200
	bra.w loc_2071c6
loc_2071fa:
	cmp.w d4,d0
	bhi.w loc_2071c6
loc_207200:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_207218
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_20721e
	bra.w loc_2071c6
loc_207218:
	cmp.w d5,d0
	bhi.w loc_2071c6
loc_20721e:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207292
	cmpi.b #$c0,d1
	beq.w loc_207472
	tst.b d1
	bmi.w sub_20735c
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207256
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207254
	addq.b #$2,$24(a1)
loc_207254:
	rts
loc_207256:
	tst.w $12(a0)
	bpl.s loc_207280
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207290
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207290
	addq.b #$4,$25(a1)
	rts
loc_207280:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207290
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207290:
	rts

sub_207292:
	tst.b ($ff1521).l
	bne.s loc_2072ac
	tst.b ($ff151f).l
	bne.s loc_2072ac
	cmpi.b #$2,$1c(a0)
	bne.w sub_20735c
loc_2072ac:
	tst.b $21(a1)
	beq.s loc_2072d6
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2072d4
	bset.b #$7,$22(a1)
loc_2072d4:
	rts
loc_2072d6:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2072ee
	moveq #$6,d0
loc_2072ee:
	move.w d0,$3e(a1)
	move.w dat_20734e(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_207308
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_207308:
	bsr.w sub_20a906
	move.w #$96,d0
	jsr (sub_20227e).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_20733e
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207346
	neg.w $12(a0)
	rts
loc_20733e:
	addi.w #$100,$12(a0)
	rts
loc_207346:
	subi.w #$100,$12(a0)
	rts
dat_20734e:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_20735c:
	tst.b ($ff1521).l
	bne.s loc_20736c
	tst.b ($ff151f).l
	beq.s loc_207370
loc_20736c:
	moveq #$ffffffff,d0
	rts
loc_207370:
	nop
	tst.w $30(a0)
	bne.s loc_20736c
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_2073a6
	tst.w ($ff1512).l
	beq.w loc_207410
	jsr (sub_207b0a).l
	bne.s loc_2073a6
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_2073a6:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2073bc
	move.b #$0,($ff156f).l
loc_2073bc:
	move.b #$4,$24(a0)
	bsr.w sub_2052ce
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2073ec
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2073ec:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2073fa
	neg.w $10(a0)
loc_2073fa:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207410:
	tst.w ($ff1588).l
	bne.w loc_2073a6

sub_20741a:
	tst.w ($ff1906).l
	bne.s loc_20746e
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2052ce
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20227e).l
loc_20746e:
	moveq #$ffffffff,d0
	rts
loc_207472:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$17,d1
	beq.w loc_207502
	cmpi.b #$1f,d1
	beq.w loc_207502
	cmpi.b #$23,d1
	beq.w loc_207502
	cmpi.b #$27,d1
	beq.w loc_207502
	cmpi.b #$3a,d1
	beq.w loc_20754a
	cmpi.b #$3b,d1
	beq.w loc_20754a
	tst.b ($f7aa).w
	beq.w loc_207500
	cmpi.b #$1,($f7aa).w
	beq.s loc_2074ca
	cmpi.b #$4,($f7aa).w
	beq.s loc_2074ec
	cmpi.b #$5,($f7aa).w
	beq.s loc_2074fa
loc_2074ca:
	cmpi.b #$3c,d1
	blt.s loc_207500
	cmpi.b #$3f,d1
	bgt.s loc_207500
	bsr.w sub_207292
	tst.b $20(a1)
	bne.s loc_2074e4
	addq.b #$3,$21(a1)
loc_2074e4:
	clr.b $20(a1)
	bra.w loc_207502
loc_2074ec:
	cmpi.b #$3f,d1
	beq.s loc_20750e
	cmpi.b #$3e,d1
	beq.s loc_207508
	bra.s loc_207500
loc_2074fa:
	cmpi.b #$3d,d1
	beq.s loc_207508
loc_207500:
	rts
loc_207502:
	addq.b #$1,$21(a1)
	rts
loc_207508:
	bsr.w sub_20735c
	bra.s loc_207502
loc_20750e:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207548
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207548
	neg.w $10(a0)
loc_207548:
	rts
loc_20754a:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207556
	addq.b #$1,$21(a1)
loc_207556:
	rts
dat_207558:
	.incbin 30040, 126
loc_2075d6:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2075ec
	move.l #$4000,(dat_207766).l
	bra.s loc_20760c
loc_2075ec:
	addi.l #$2000,(dat_207766).l
	cmpi.l #$80000,(dat_207766).l
	bls.s loc_20760c
	move.l #$80000,(dat_207766).l
loc_20760c:
	move.l (dat_207766).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20761e
	sub.l d0,$c(a0)
loc_20761e:
	btst.b #$1,($f604).w
	beq.s loc_20762a
	add.l d0,$c(a0)
loc_20762a:
	btst.b #$2,($f604).w
	beq.s loc_207636
	sub.l d0,$8(a0)
loc_207636:
	btst.b #$3,($f604).w
	beq.s loc_207642
	add.l d0,$8(a0)
loc_207642:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ef0).l
	move.w (a1),($ff194e).l
	lea (dat_20776a).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207684
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20767e
	move.b #$0,d1
loc_20767e:
	move.b d1,($ff1904).l
loc_207684:
	btst.b #$7,($f605).w
	beq.s loc_2076a4
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20769e
	add.b (a2),d1
loc_20769e:
	move.b d1,($ff1904).l
loc_2076a4:
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
	beq.s loc_207730
	bsr.w sub_207b0a
	bne.s loc_207730
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
loc_207730:
	btst.b #$4,($f605).w
	beq.s loc_207760
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207760:
	jmp (sub_203a6e).l
dat_207766:
	dc.b $00,$00,$40,$00
dat_20776a:
	.incbin 30570, 398

sub_2078f8:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207906:
	clr.l (a2)+
	dbf d0,loc_207906
	rts

sub_20790e:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20791c(pc,d0.w),d0
	jmp dat_20791c(pc,d0.w)
dat_20791c:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207bbc).l,a0
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
	bcc.s loc_20795a
	moveq #$0,d6
loc_20795a:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207962:
	cmp.w (a0),d6
	bls.s loc_207974
	tst.b $4(a0)
	bpl.s loc_207970
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207970:
	addq.w #$8,a0
	bra.s loc_207962
loc_207974:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207994
loc_207982:
	cmp.w (a0),d6
	bls.s loc_207994
	tst.b $4(a0)
	bpl.s loc_207990
	addq.b #$1,$1(a2)
loc_207990:
	addq.w #$8,a0
	bra.s loc_207982
loc_207994:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207a7e
	bge.s loc_207a24
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207a00
loc_2079ce:
	cmp.w -$8(a0),d6
	bge.s loc_207a00
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2079e4
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2079e4:
	bsr.w sub_207aa2
	bne.s loc_2079ee
	subq.w #$8,a0
	bra.s loc_2079ce
loc_2079ee:
	tst.b $4(a0)
	bpl.s loc_2079fe
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2079fe:
	addq.w #$8,a0
loc_207a00:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207a0c:
	cmp.w -$8(a0),d6
	bgt.s loc_207a1e
	tst.b -$4(a0)
	bpl.s loc_207a1a
	subq.b #$1,(a2)
loc_207a1a:
	subq.w #$8,a0
	bra.s loc_207a0c
loc_207a1e:
	move.l a0,($f770).w
	rts
loc_207a24:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207a38:
	cmp.w (a0),d6
	bls.s loc_207a5a
	tst.b $4(a0)
	bpl.s loc_207a46
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207a46:
	bsr.w sub_207aa2
	beq.s loc_207a38
	tst.b $4(a0)
	bpl.s loc_207a5a
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207a5a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207a7a
loc_207a68:
	cmp.w (a0),d6
	bls.s loc_207a7a
	tst.b $4(a0)
	bpl.s loc_207a76
	addq.b #$1,$1(a2)
loc_207a76:
	addq.w #$8,a0
	bra.s loc_207a68
loc_207a7a:
	move.l a0,($f774).w
loc_207a7e:
	rts

sub_207a80:
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

sub_207aa2:
	bsr.s sub_207a80
	beq.s loc_207ab4
	tst.b $4(a0)
	bpl.s loc_207aba
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207aba
loc_207ab4:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207aba:
	bsr.w sub_207b0a
	bne.s loc_207b08
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
	bpl.s loc_207aea
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207aea:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207afc
	nop
	nop
	nop
	nop
loc_207afc:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207b08:
	rts

sub_207b0a:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207b12:
	tst.b (a1)
	beq.s loc_207b1e
	lea $40(a1),a1
	dbf d0,loc_207b12
loc_207b1e:
	rts

sub_207b20:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207b3e
loc_207b32:
	tst.b (a1)
	beq.s loc_207b3e
	lea $40(a1),a1
	dbf d0,loc_207b32
loc_207b3e:
	rts
loc_207b40:
	move.w $8(a0),d0
	tst.b $1(a0)
	bmi.s loc_207bae
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207bae
loc_207b62:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207ba4
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207b9c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207b94
	moveq #$0,d1
	bra.s loc_207b9c
loc_207b94:
	cmpi.w #$3,d1
	bcs.s loc_207b9c
	moveq #$2,d1
loc_207b9c:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207ba4:
	jsr (sub_203b1a).l
	moveq #$1,d0
	rts
loc_207bae:
	btst.b #$7,($ff152e).l
	bne.s loc_207b62
	moveq #$0,d0
	rts
dat_207bbc:
	.incbin 31676, 4162

sub_208bfe:
	btst.b #$3,$22(a0)
	beq.s loc_208c6e
	btst.b #$3,$22(a1)
	beq.s loc_208c6e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208c6e
	tst.b $2a(a1)
	beq.s loc_208c30
	move.w #$ab,d0
	jsr (sub_20227e).l
loc_208c30:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208c5c
	cmpi.b #$17,$1c(a1)
	beq.s loc_208c5c
	bclr.b #$0,$2c(a1)
loc_208c5c:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c6e
	bclr.b #$1,$22(a1)
loc_208c6e:
	rts

sub_208c70:
	cmpi.b #$4,$24(a1)
	bne.s loc_208c82
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208c82:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208ce2
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208ca4
	bclr.b #$3,$22(a0)
	bra.w sub_208bfe
loc_208ca4:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208ce2
	tst.b ($ff195b).l
	beq.s loc_208ccc
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208cdc
loc_208ccc:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208cdc:
	move.b #$0,$1c(a1)
loc_208ce2:
	bset.b #$3,$22(a1)
	beq.s loc_208d04
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208d3c
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208d04:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208d30
	cmpi.b #$2,$24(a0)
	beq.s loc_208d36
loc_208d30:
	move.w $10(a1),$14(a1)
loc_208d36:
	bclr.b #$1,$22(a1)
loc_208d3c:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_208d46:
	move.b #$1,$25(a0)
loc_208d4c:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209000
	btst.b #$6,$2c(a1)
	bne.w loc_209000
	cmpi.b #$6,$24(a1)
	bcc.w loc_209000
	tst.b $0(a1)
	beq.w loc_209000
	tst.b $1(a0)
	bpl.w loc_209000
	tst.b ($ff1906).l
	bne.w loc_209000
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209000
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209000
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208dba
	btst.b #$3,$22(a0)
	bne.s loc_208dcc
	bra.w loc_209000
loc_208dba:
	cmpi.b #$1,$25(a0)
	bne.s loc_208dcc
	tst.w $12(a1)
	beq.s loc_208dcc
	bmi.w loc_209000
loc_208dcc:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209000
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209000
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208e02
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208e02:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208e10
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208e10:
	cmp.w d4,d5
	bcs.w loc_208ea4
	cmpi.b #$1,$25(a0)
	beq.w loc_209000
	cmpi.b #$a,$0(a0)
	bne.s loc_208e32
	btst.b #$1,$22(a1)
	bne.w loc_209000
loc_208e32:
	cmpi.b #$4,d5
	bls.w loc_209000
	bsr.w sub_209050
	move.l d0,-(a7)
	bsr.w sub_208bfe
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208e5c
	tst.w $10(a1)
	beq.s loc_208e8c
	bpl.s loc_208e64
	bra.s loc_208e8c
loc_208e5c:
	tst.w $10(a1)
	beq.s loc_208e8c
	bpl.s loc_208e8c
loc_208e64:
	bsr.w sub_209010
	btst.b #$1,$22(a1)
	bne.s loc_208e82
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208e82:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208e8c:
	bsr.w sub_2090c6
	bsr.w sub_209010
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208ea4:
	cmpi.b #$19,$0(a0)
	bne.s loc_208eb6
	btst.b #$2,$22(a1)
	bne.w loc_209000
loc_208eb6:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208ecc
	bmi.w loc_208f9c
loc_208ecc:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208ede
	tst.w $12(a1)
	beq.s loc_208ede
	bmi.w loc_209000
loc_208ede:
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
	beq.s loc_208f2a
	bpl.s loc_208f0a
	neg.b d0
loc_208f0a:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206da4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f2a
	tst.w $10(a0)
	bpl.s loc_208f26
	neg.w d1
loc_208f26:
	add.w d1,$8(a1)
loc_208f2a:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208f94
	tst.w $12(a0)
	bmi.s loc_208f68
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e36).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f68
	add.w d1,$c(a1)
	bra.w loc_209000
loc_208f68:
	tst.w $12(a0)
	bpl.s loc_208f94
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20704e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f94
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20741a).l
	movem.l (a7)+,a0-a1
	bra.s loc_209000
loc_208f94:
	bsr.w sub_208c70
	moveq #$1,d0
	rts
loc_208f9c:
	cmpi.b #$1,$25(a0)
	beq.s loc_209000
	cmpi.b #$9,$0(a0)
	beq.s loc_209000
	cmpi.b #$a,$0(a0)
	bne.s loc_208fc6
	cmpi.b #$2,$25(a0)
	beq.s loc_208fe6
	btst.b #$1,$1(a0)
	bne.s loc_208fe6
	bra.s loc_209000
loc_208fc6:
	btst.b #$1,$22(a1)
	bne.s loc_208fe6
	tst.w $12(a0)
	beq.s loc_208fe6
	bmi.s loc_208fe6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20741a).l
	movem.l (a7)+,a0-a1
loc_208fe6:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_2090c6
	bsr.w sub_208bfe
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209000:
	bsr.w sub_2090c6
	bsr.w sub_208bfe
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209010:
	tst.w $10(a0)
	beq.s loc_20904e
	cmpi.b #$a,$0(a0)
	beq.s loc_20904e
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_20902a
	neg.b d0
loc_20902a:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206da4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20904e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20741a).l
	movem.l (a7)+,a0-a1
loc_20904e:
	rts

sub_209050:
	cmpi.b #$a,$0(a0)
	bne.s loc_209060
	move.b #$0,$20(a1)
	rts
loc_209060:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2090b4
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_2090c4
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209082
	tst.w $10(a2)
	beq.s loc_2090c4
loc_209082:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209094
	cmp.w $8(a2),d1
	bcs.s loc_2090c4
	bra.s loc_20909a
loc_209094:
	cmp.w $8(a2),d1
	bcc.s loc_2090c4
loc_20909a:
	cmpi.b #$15,$0(a0)
	beq.s loc_2090c4
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20741a).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2090b4:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_2090c4:
	rts

sub_2090c6:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2090e0
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2090e0
	move.b #$0,$20(a1)
loc_2090e0:
	rts
	.incbin 37090, 1708
dat_20978e:
	.incbin 38798, 62
	beq.s loc_2097e6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2097de
	moveq #$0,d1
	bra.s loc_2097e6
loc_2097de:
	cmpi.w #$3,d1
	bcs.s loc_2097e6
	moveq #$2,d1
loc_2097e6:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209802
	moveq #$6,d1
loc_209802:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20978e).l,a1
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
	beq.s loc_209852
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20984a
	moveq #$0,d0
	bra.s loc_209852
loc_20984a:
	cmpi.w #$3,d0
	bcs.s loc_209852
	moveq #$2,d0
loc_209852:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209920
	dbf d0,loc_209852
	bclr.b #$7,(a2)
	bra.s loc_2098a8
loc_209864:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209890
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209888
	moveq #$0,d0
	bra.s loc_209890
loc_209888:
	cmpi.w #$3,d0
	bcs.s loc_209890
	moveq #$2,d0
loc_209890:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209920
	dbf d0,loc_209890
	bclr.b #$7,(a2)
	bsr.w sub_207b20
	bne.w loc_20992c
loc_2098a8:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209bf2,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2098fe
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_2098fe
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_2098fe:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209920:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209864
loc_20992c:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209952
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20994a
	moveq #$0,d0
	bra.s loc_209952
loc_20994a:
	cmpi.w #$3,d0
	bcs.s loc_209952
	moveq #$2,d0
loc_209952:
	lea $1(a2),a3
loc_209956:
	btst.b #$0,-(a3)
	bne.w sub_203b1a
	dbf d0,loc_209956
	tst.b $1(a0)
	bmi.s loc_209986
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209a00
loc_209986:
	tst.w ($ff190e).l
	bne.s loc_209996
	move.b ($ff1913).l,$1a(a0)
loc_209996:
	bra.w sub_203a6e
	.incbin 39322, 102
loc_209a00:
	bra.w sub_203b1a
	.incbin 39428, 888
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209daa(pc,d0.w),d0
	jsr dat_209daa(pc,d0.w)
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b1a
	rts
dat_209daa:
	.incbin 40362, 284
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d46).l
	.incbin 40660, 106
loc_209f3e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f6c(pc,d0.w),d0
	jsr dat_209f6c(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209f6a
	cmpi.w #$5a,($f786).w
	bcs.s loc_209f64
	btst.b #$0,($ff1505).l
	bne.s loc_209f6a
loc_209f64:
	jmp (sub_203a6e).l
loc_209f6a:
	rts
dat_209f6c:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a546,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209fa0
	move.b #$13,$1a(a0)
loc_209fa0:
	rts
loc_209fa2:
	tst.b ($ff0f01).l
	beq.s loc_209fb0
	jmp (sub_203b1a).l
loc_209fb0:
	cmpi.b #$a,$28(a0)
	beq.w loc_209f3e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209fd4(pc,d0.w),d0
	jsr dat_209fd4(pc,d0.w)
	jsr (sub_203a6e).l
	jmp (loc_207b40).l
dat_209fd4:
	.incbin 40916, 50
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a022
	tst.b $29(a0)
	bne.s loc_20a022
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a022:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a0ee
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a04a
	addq.b #$2,$1a(a0)
loc_20a04a:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a05e
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a05e:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a0c4
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a090
	tst.b $29(a0)
	beq.s loc_20a088
	tst.b ($ff1956).l
	beq.s loc_20a0c4
	bra.s loc_20a090
loc_20a088:
	tst.b ($ff1956).l
	bne.s loc_20a0c4
loc_20a090:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a0ee
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a0be
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a0be:
	jsr (sub_205c38).l
loc_20a0c4:
	rts
	.incbin 41158, 40

sub_20a0ee:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a126
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a11e
	moveq #$0,d1
	bra.s loc_20a126
loc_20a11e:
	cmpi.w #$3,d1
	bcs.s loc_20a126
	moveq #$2,d1
loc_20a126:
	add.w d1,d0
	rts

sub_20a12a:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a14c
	tst.b ($ff1956).l
	beq.s loc_20a144
	tst.b $29(a0)
	bne.s loc_20a14c
	rts
loc_20a144:
	tst.b $29(a0)
	beq.s loc_20a14c
	rts
loc_20a14c:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d4c).l
	tst.b $28(a0)
	bne.s loc_20a16e
	tst.b ($ff0f01).l
	beq.s loc_20a16e
	jmp (loc_207b40).l
loc_20a16e:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209fa2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a186(pc,d0.w),d1
	jmp dat_20a186(pc,d1.w)
dat_20a186:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a546,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a1d0
	tst.b $29(a0)
	bne.s loc_20a1d0
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a1d0:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a0ee
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a1fc
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a1fc:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a256
	move.b $25(a0),d0
	beq.s loc_20a236
	bsr.w sub_2039b6
	jsr (sub_206ee4).l
	tst.w d1
	bpl.w loc_20a244
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a244
loc_20a236:
	tst.b $1(a0)
	bpl.s loc_20a244
	lea ($d000).w,a1
	bsr.w sub_20a12a
loc_20a244:
	tst.w ($ff190e).l
	bne.s loc_20a256
	lea (dat_20a4be).l,a1
	bsr.w sub_205c78
loc_20a256:
	bsr.w sub_203a6e
	jmp (loc_207b40).l
	.incbin 41568, 606
dat_20a4be:
	.incbin 42174, 586
loc_20a708:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a71c(pc,d0.w),d0
	jsr dat_20a71c(pc,d0.w)
	jmp (sub_203a6e).l
dat_20a71c:
	.incbin 42780, 146
	tst.b $28(a0)
	bmi.w loc_20a708
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a7c4(pc,d0.w),d0
	jmp dat_20a7c4(pc,d0.w)
dat_20a7c4:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a85e,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a7f4
	move.b #$3,$1a(a0)
	bra.s loc_20a814
loc_20a7f4:
	tst.w ($ff1588).l
	beq.s loc_20a802
	move.b #$2,$1a(a0)
loc_20a802:
	tst.b $28(a0)
	beq.s loc_20a814
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a814:
	tst.b $28(a0)
	bne.s loc_20a858
	tst.b $29(a0)
	beq.s loc_20a844
	tst.w ($ff1512).l
	beq.s loc_20a830
	bclr.b #$5,$2(a0)
	bra.s loc_20a858
loc_20a830:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a858
	eori.b #$20,$2(a0)
	bra.s loc_20a858
loc_20a844:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a858
	move.b #$2,$1a(a0)
loc_20a858:
	jmp (sub_203a6e).l
	.incbin 43102, 168

sub_20a906:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a922
	move.l d1,(a3)
loc_20a922:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a94c
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c38).l
loc_20a94c:
	rts
loc_20a94e:
	tst.w ($ff1588).l
	beq.s loc_20a9a4
	bsr.w sub_20aba0
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
	lea (dat_20ad00).l,a2
	moveq #$2,d6
	bsr.w sub_20ad58
	bra.w loc_20a9fe
loc_20a9a4:
	tst.b ($ff1511).l
	beq.s loc_20a9c8
	bpl.s loc_20a9b2
	bsr.w sub_20ab4a
loc_20a9b2:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ac3a
loc_20a9c8:
	tst.b ($ff150f).l
	beq.s loc_20a9fe
	bpl.s loc_20a9d6
	bsr.w sub_20ab36
loc_20a9d6:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a9fa
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a9fa:
	bsr.w sub_20ac30
loc_20a9fe:
	tst.w ($ff1588).l
	bne.w loc_20aaaa
	tst.b ($ff1510).l
	beq.w loc_20aaaa
	tst.w ($f63a).w
	bne.w loc_20aaaa
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20ab08
	tst.b ($f7cc).w
	bne.s loc_20aa54
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20aa54
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20aa54
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20aa54
	move.b #$9,(a1)
loc_20aa54:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20ad46
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20ad50
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20aaa6
	move.w #$63,d1
loc_20aaa6:
	bsr.w sub_20ad50
loc_20aaaa:
	tst.b ($ff150e).l
	beq.s loc_20aabc
	clr.b ($ff150e).l
	bsr.w sub_20ad26
loc_20aabc:
	tst.b ($f7d6).w
	beq.s loc_20ab06
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aadc
	move.l #$6d400001,d0
loc_20aadc:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20abbe
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aafc
	move.l #$6e800001,d0
loc_20aafc:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20abbe
loc_20ab06:
	rts
loc_20ab08:
	btst.b #$7,($ff152e).l
	bne.s loc_20ab34
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_20741a
	move.b #$1,($ff150c).l
loc_20ab34:
	rts

sub_20ab36:
	move.l #$73600002,($c00004).l
	lea dat_20ab9c(pc),a2
	move.w #$2,d2
	bra.s loc_20ab66

sub_20ab4a:
	lea ($c00000).l,a6
	bsr.w sub_20ad26
	move.l #$70600002,($c00004).l
	lea dat_20ab94(pc),a2
	move.w #$6,d2
loc_20ab66:
	lea (dat_2330bc).l,a1
loc_20ab6c:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ab88
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ab7c:
	move.l (a3)+,(a6)
	dbf d1,loc_20ab7c
loc_20ab82:
	dbf d2,loc_20ab6c
	rts
loc_20ab88:
	move.l #$0,(a6)
	dbf d1,loc_20ab88
	bra.s loc_20ab82
dat_20ab94:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ab9c:
	dc.b $ff,$ff,$00,$00

sub_20aba0:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20ad1c
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20ad1c

sub_20abbe:
	lea (dat_20acf8).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20abce:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20abd2:
	sub.l d3,d1
	bcs.s loc_20abda
	addq.w #$1,d2
	bra.s loc_20abd2
loc_20abda:
	add.l d3,d1
	tst.w d2
	beq.s loc_20abe4
	move.w #$1,d4
loc_20abe4:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20abf0
	tst.w d6
	bne.s loc_20ac22
loc_20abf0:
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
loc_20ac16:
	addi.l #$400000,d0
	dbf d6,loc_20abce
	rts
loc_20ac22:
	moveq #$f,d5
loc_20ac24:
	move.l #$0,(a6)
	dbf d5,loc_20ac24
	bra.s loc_20ac16

sub_20ac30:
	lea (dat_20ad00).l,a2
	moveq #$2,d6
	bra.s loc_20ac42

sub_20ac3a:
	lea (dat_20acf4).l,a2
	moveq #$5,d6
loc_20ac42:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ac4a:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ac4e:
	sub.l d3,d1
	bcs.s loc_20ac56
	addq.w #$1,d2
	bra.s loc_20ac4e
loc_20ac56:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ac60
	move.w #$1,d4
loc_20ac60:
	tst.w d4
	beq.s loc_20ac8e
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
loc_20ac8e:
	addi.l #$400000,d0
	dbf d6,loc_20ac4a
	rts
	.incbin 44186, 32
loc_20acba:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20acbe:
	sub.l d3,d1
	bcs.s loc_20acc6
	addq.w #$1,d2
	bra.s loc_20acbe
loc_20acc6:
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
	dbf d6,loc_20acba
	rts
dat_20acf4:
	dc.b $00,$01,$86,$a0
dat_20acf8:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20ad00:
	dc.b $00,$00,$00,$64
dat_20ad04:
	dc.b $00,$00,$00,$0a
dat_20ad08:
	dc.b $00,$00,$00,$01
dat_20ad0c:
	.incbin 44300, 16

sub_20ad1c:
	moveq #$3,d6
	lea (dat_20ad0c).l,a2
	bra.s sub_20ad58

sub_20ad26:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20ad3c
	moveq #$9,d1
loc_20ad3c:
	lea (dat_20ad08).l,a2
	moveq #$0,d6
	bra.s sub_20ad58

sub_20ad46:
	lea (dat_20ad08).l,a2
	moveq #$0,d6
	bra.s sub_20ad58

sub_20ad50:
	lea (dat_20ad04).l,a2
	moveq #$1,d6

sub_20ad58:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ad60:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ad64:
	sub.l d3,d1
	bcs.s loc_20ad6c
	addq.w #$1,d2
	bra.s loc_20ad64
loc_20ad6c:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ad76
	move.w #$1,d4
loc_20ad76:
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
	dbf d6,loc_20ad60
	rts
	.incbin 44460, 4440
loc_20bf04:
	lea dat_20bf56(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bf10:
	cmp.w (a1)+,d0
	bcs.s loc_20bf18
	addq.b #$2,d1
	bra.s loc_20bf10
loc_20bf18:
	move.b d1,($ff1574).l
	move.w dat_20bf66(pc,d1.w),d0
	jmp (sub_202448).l

sub_20bf28:
	lea dat_20bf56(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bf34:
	cmp.w (a1)+,d0
	bcs.s loc_20bf3c
	addq.b #$2,d1
	bra.s loc_20bf34
loc_20bf3c:
	cmp.b ($ff1574).l,d1
	bne.s loc_20bf46
	rts
loc_20bf46:
	move.b d1,($ff1574).l
	move.w dat_20bf5e(pc,d1.w),d0
	jmp (loc_20247a).l
dat_20bf56:
	dc.b $04,$a0,$10,$00,$18,$00,$ff,$ff
dat_20bf5e:
	dc.b $00,$07,$00,$08,$00,$09,$00,$0a
dat_20bf66:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06

sub_20bf6e:
	move.w #$4f2,$2(a0)
	rts
	.incbin 49014, 2642
loc_20c9c8:
	lea ($d000).w,a1
	jmp (loc_208d4c).l
	.incbin 51666, 188
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	cmpi.b #$20,$3b(a0)
	beq.s loc_20caa4
	bra.w loc_20c9c8
loc_20caa4:
	jsr sub_20cb40(pc)
	lea ($d000).w,a1
	bsr.s sub_20cadc
	bne.s loc_20cabc
	move.b #$8,$3a(a0)
	addq.b #$2,$24(a0)
	rts
loc_20cabc:
	move.w #$f900,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	rts

sub_20cadc:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d4c).l
	.incbin 51946, 86

sub_20cb40:
	tst.b ($ff152e).l
	beq.s loc_20cb8c
	cmpi.b #$1,($ff152e).l
	beq.s loc_20cb5a
	tst.b ($ff156a).l
	bne.s loc_20cb8c
loc_20cb5a:
	jsr (sub_207b0a).l
	bne.s loc_20cb70
	bsr.s sub_20cb8e
	move.w $8(a0),d0
	subi.w #$18,d0
	move.w d0,$8(a1)
loc_20cb70:
	jsr (sub_207b0a).l
	bne.s loc_20cb8c
	bsr.s sub_20cb8e
	move.w $8(a0),d0
	addi.w #$18,d0
	move.w d0,$8(a1)
	move.b #$1,$3a(a1)
loc_20cb8c:
	rts

sub_20cb8e:
	move.b #$27,$0(a1)
	move.b #$2,$28(a1)
	move.w $c(a0),d0
	addq.b #$8,d0
	move.w d0,$c(a1)
	rts
	.incbin 52134, 9986
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f2b6(pc,d0.w),d0
	jmp dat_20f2b6(pc,d0.w)
dat_20f2b6:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20f9b4,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20f974).l,a2
loc_20f304:
	jsr (sub_207b0a).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20f9b4,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
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
	dbf d6,loc_20f304
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f37e
	bge.s loc_20f374
	neg.w d0
loc_20f374:
	add.w d0,$a(a0)
	jmp (sub_203a6e).l
loc_20f37e:
	addq.b #$4,$24(a0)
	jmp (sub_203a6e).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f3a2
	bge.s loc_20f398
	neg.w d0
loc_20f398:
	add.w d0,$8(a0)
	jmp (sub_203a6e).l
loc_20f3a2:
	addq.b #$4,$24(a0)
	jmp (sub_203a6e).l
	tst.b $1e(a0)
	beq.s loc_20f3bc
	subq.b #$1,$1e(a0)
	jmp (sub_203a6e).l
loc_20f3bc:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f3d6
	bge.s loc_20f3cc
	neg.w d0
loc_20f3cc:
	add.w d0,$a(a0)
	jmp (sub_203a6e).l
loc_20f3d6:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202448).l
	tst.b $1e(a0)
	beq.s loc_20f3f8
	subq.b #$1,$1e(a0)
	jmp (sub_203a6e).l
loc_20f3f8:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f412
	bge.s loc_20f408
	neg.w d0
loc_20f408:
	add.w d0,$8(a0)
	jmp (sub_203a6e).l
loc_20f412:
	jmp (sub_203b1a).l
	tst.l ($f680).w
	bne.s loc_20f42c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b1a).l
loc_20f42c:
	rts
	.incbin 62510, 1350
dat_20f974:
	.incbin 63860, 340

sub_20fac8:
	jmp (loc_2064ec).l
dat_20face:
	.incbin 64206, 16
dat_20fade:
	.incbin 64222, 780
	jmp (loc_206294).l
	.incbin 65008, 55312
dat_21d600:
	.incbin 120320, 256
dat_21d700:
	.incbin 120576, 4096
dat_21e700:
	.incbin 124672, 4796
dat_21f9bc:
	.incbin 129468, 1604
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 30180
dat_23a6a0:
	.incbin 239264, 166
dat_23a746:
	.incbin 239430, 22714
