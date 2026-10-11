; R32A__.MMD
; disassembled from the disc; code only, data comes from data/R32A__.MMD at build time
	.file "R32A__.MMD", 262144

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
	lea (dat_236c76).l,a2
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
	lea (dat_236d76).l,a2
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
	lea (dat_236c76).l,a2
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
	lea (dat_236d76).l,a2
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
	lea (dat_236c76).l,a2
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
	lea (dat_237d76).l,a2
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
	lea (dat_236c76).l,a2
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
	lea (dat_237d76).l,a2
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
	bsr.w sub_207932
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
	lea (dat_20f178).l,a2
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
	bsr.w sub_20356c
	bsr.w sub_203472
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
	jsr (sub_20f0d4).l
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
	jsr (sub_205c2a).l
	bsr.w sub_207932
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
	jsr (sub_207948).l
	jsr (sub_203980).l
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
	jsr (sub_203b2a).l
	tst.w ($ff190e).l
	bne.s loc_201926
	bsr.w sub_200184
loc_201926:
	jsr (sub_20c7ac).l
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
	jmp (sub_205c2a).l
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
	jmp (sub_205c2a).l
loc_201b60:
	tst.b ($ff151f).l
	bne.s loc_201b56
	tst.b ($ff1520).l
	bne.s loc_201b56
	move.w #$90,d0
	jmp (sub_205c2a).l
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
	jmp (sub_205c2a).l
loc_201b9c:
	tst.b ($ff151f).l
	bne.s loc_201b92
	tst.b ($ff1520).l
	bne.s loc_201b92
	move.w #$91,d0
	jmp (sub_205c2a).l
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
	bsr.w sub_205b4c
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
	jsr (sub_20f0d4).l
	jsr (sub_202232).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20306a
	bsr.w sub_202526
	jmp (loc_20a790).l
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
	bsr.w sub_20306a
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
	bsr.w sub_205b4c
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
	lea (dat_20f188).l,a1
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
	lea (dat_20f188).l,a1
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
	lea (dat_20f188).l,a1
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
	dc.b $00,$04,$00,$00,$26,$97,$00,$00
	dc.b $05,$10,$00,$60
dat_202884:
	.incbin 10372, 32
loc_2028a4:
	tst.b ($ff1522).l
	beq.s loc_2028c4
	jsr (sub_206ca2).l
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
	dc.b $00,$20,$01,$ac
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
	moveq #$d,d2
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
	bsr.w sub_202ce0
	bsr.w sub_202d80
	bsr.w sub_203614
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_20300a
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202fd6
	lea ($a838).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202fa2
	move.w #$218,d0
	move.w #$520,d1
	sub.w ($f704).w,d1
	bcs.s loc_202a1c
	lsr.w #$1,d1
	sub.w d1,d0
	bpl.s loc_202a1c
	moveq #$0,d0
loc_202a1c:
	bsr.w sub_202f72
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
	addi.l #$1000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$c000,(a2)+
	moveq #$3f,d6
	moveq #$0,d1
loc_202aa2:
	move.w d1,d2
	mulu.w #$100,d2
	addi.l #$8000,d2
	add.l d2,(a2)+
	addq.b #$1,d1
	dbf d6,loc_202aa2
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$6,d2
	divs.w #$1c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$6,d6
	lea ($a946).w,a1
loc_202ae0:
	move.w d3,d0
	neg.w d0
	move.w d0,-(a1)
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202ae0
	lea ($a946).w,a1
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202afc:
	move.w d0,(a1)+
	dbf d6,loc_202afc
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b0a:
	move.w d0,(a1)+
	dbf d6,loc_202b0a
	lea ($a800).w,a2
	moveq #$d,d6
loc_202b16:
	move.l (a2)+,d1
	swap d1
	add.w ($f708).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202bf4).l,a3
	move.b $0(a3,d6.w),d5
loc_202b2c:
	move.w d1,(a1)+
	dbf d5,loc_202b2c
	dbf d6,loc_202b16
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202b3e:
	move.w d0,(a1)+
	dbf d6,loc_202b3e
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b4c:
	move.w d0,(a1)+
	dbf d6,loc_202b4c
	move.w ($f710).w,d0
	neg.w d0
	moveq #$5,d6
loc_202b5a:
	move.w d0,(a1)+
	dbf d6,loc_202b5a
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202b68:
	move.w d0,(a1)+
	dbf d6,loc_202b68
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$6,d2
	divs.w #$2c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	moveq #$a,d6
	move.w ($f708).w,d3
loc_202b8c:
	move.w d3,d0
	neg.w d0
	move.w d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b8c
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202ba4:
	move.w d0,(a1)+
	dbf d6,loc_202ba4
	lea ($cc00).w,a1
	lea ($a938).w,a2
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
	bcs.s loc_202bf0
	cmpi.w #$1b,d1
	bcs.s loc_202bd4
	moveq #$1c,d1
loc_202bd4:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	lea (dat_202c02).l,a3
	lea (dat_23ce4c).l,a4
	addi.w #$40,($f7d8).w
	bsr.w sub_202c56
loc_202bf0:
	bra.w loc_202c08
dat_202bf4:
	dc.b $01,$03,$01,$01,$01,$03,$01,$03
	dc.b $01,$01,$01,$03,$03,$05
dat_202c02:
	dc.b $00,$38,$02,$50,$7f,$ff
loc_202c08:
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	lea ($a838).w,a2
	move.b ($f7d8).w,d5
	sub.w ($f70c).w,d4
loc_202c1a:
	move.l (a2)+,d2
	swap d2
	add.w ($f708).w,d2
	neg.w d2
	move.w d2,d0
	move.w #$5c0,d3
	sub.w ($f704).w,d3
	cmp.w d3,d4
	bcs.s loc_202c4a
	andi.w #$ff,d5
	move.b $0(a4,d5.w),d3
	ext.w d3
	add.w d3,d3
	add.w ($f700).w,d3
	neg.w d3
	swap d0
	move.w d3,d0
	swap d0
loc_202c4a:
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d5
	dbf d1,loc_202c1a
	rts

sub_202c56:
	cmp.w (a3),d4
	bcc.s loc_202c8c
loc_202c5a:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c76(pc,d2.w)
loc_202c6a:
	tst.w d1
	bmi.s loc_202c8a
	cmp.w (a3),d4
	bcc.s loc_202ca6
loc_202c72:
	move.w (a2)+,d0
	addq.w #$8,d4
loc_202c76:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c6a
loc_202c8a:
	rts
loc_202c8c:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	bgt.s loc_202cb0
	cmp.w (a3),d4
	bcs.s loc_202c5a
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c5a
	bra.s loc_202cb0
loc_202ca6:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c72
loc_202cb0:
	subq.w #$1,d3
	move.w d3,d6
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202cba:
	andi.w #$ff,d2
	move.b $0(a4,d2.w),d0
	ext.w d0
	add.w ($f708).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d2
	dbf d3,loc_202cba
	lsr.w #$3,d6
loc_202cd6:
	move.w (a2)+,d0
	subq.w #$1,d1
	dbf d6,loc_202cd6
	bra.s loc_202c6a

sub_202ce0:
	move.w ($f700).w,d4
	bsr.s sub_202d14
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202d12
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202d0c
	bset.b #$2,($f754).w
	rts
loc_202d0c:
	bset.b #$3,($f754).w
loc_202d12:
	rts

sub_202d14:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202d26
	bcs.s loc_202d56
	bra.s loc_202d2c
loc_202d26:
	clr.w ($f73a).w
	rts
loc_202d2c:
	cmpi.w #$10,d0
	blt.s loc_202d36
	move.w #$10,d0
loc_202d36:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202d44
	move.w ($f72a).w,d0
loc_202d44:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d56:
	cmpi.w #$fff0,d0
	bge.s loc_202d60
	move.w #$fff0,d0
loc_202d60:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202d44
	move.w ($f728).w,d0
	bra.s loc_202d44
	.incbin 11632, 16

sub_202d80:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202d94
	subq.w #$5,d0
loc_202d94:
	btst.b #$1,$22(a6)
	beq.s loc_202db4
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202e00
	subi.w #$40,d0
	bcc.s loc_202e00
	tst.b ($f75c).w
	bne.s loc_202e12
	bra.s loc_202dc0
loc_202db4:
	sub.w ($f73e).w,d0
	bne.s loc_202dc6
	tst.b ($f75c).w
	bne.s loc_202e12
loc_202dc0:
	clr.w ($f73c).w
	rts
loc_202dc6:
	cmpi.w #$60,($f73e).w
	bne.s loc_202dee
	move.w $14(a6),d1
	bpl.s loc_202dd6
	neg.w d1
loc_202dd6:
	cmpi.w #$800,d1
	bcc.s loc_202e00
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e60
	cmpi.w #$fffa,d0
	blt.s loc_202e2a
	bra.s loc_202e18
loc_202dee:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e60
	cmpi.w #$fffe,d0
	blt.s loc_202e2a
	bra.s loc_202e18
loc_202e00:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e60
	cmpi.w #$fff0,d0
	blt.s loc_202e2a
	bra.s loc_202e18
loc_202e12:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202e18:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202e6a
	bra.w loc_202e36
loc_202e2a:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e36:
	cmp.w ($f72c).w,d1
	bgt.s loc_202e8e
	cmpi.w #$ff00,d1
	bgt.s loc_202e5a
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e8e
loc_202e5a:
	move.w ($f72c).w,d1
	bra.s loc_202e8e
loc_202e60:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e6a:
	cmp.w ($f72e).w,d1
	blt.s loc_202e8e
	subi.w #$800,d1
	bcs.s loc_202e8a
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e8e
loc_202e8a:
	move.w ($f72e).w,d1
loc_202e8e:
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
	bne.s loc_202ed0
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202eca
	bset.b #$0,($f754).w
	rts
loc_202eca:
	bset.b #$1,($f754).w
loc_202ed0:
	rts
	.incbin 11986, 64
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f3a
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202f34
	bset.b #$0,($f756).w
	rts
loc_202f34:
	bset.b #$1,($f756).w
loc_202f3a:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f70
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202f6a
	bset.b #$4,($f756).w
	rts
loc_202f6a:
	bset.b #$5,($f756).w
loc_202f70:
	rts

sub_202f72:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202fa0
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202f9a
	bset.b #$0,($f756).w
	rts
loc_202f9a:
	bset.b #$1,($f756).w
loc_202fa0:
	rts

sub_202fa2:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202fd4
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202fce
	bset.b d6,($f756).w
	bra.s loc_202fd4
loc_202fce:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202fd4:
	rts

sub_202fd6:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_203008
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_203002
	bset.b d6,($f758).w
	bra.s loc_203008
loc_203002:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_203008:
	rts

sub_20300a:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_20303c
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_203036
	bset.b d6,($f75a).w
	bra.s loc_20303c
loc_203036:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_20303c:
	rts
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f756).w,a2
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203128
	lea ($f758).w,a2
	lea ($f710).w,a3
	bra.w sub_20320c

sub_20306a:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203128
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20320c
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20320e
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203126
	bclr.b #$0,(a2)
	beq.s loc_2030dc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20343a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203210
loc_2030dc:
	bclr.b #$1,(a2)
	beq.s loc_2030f6
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20343a
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203210
loc_2030f6:
	bclr.b #$2,(a2)
	beq.s loc_20310c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20343a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203266
loc_20310c:
	bclr.b #$3,(a2)
	beq.s loc_203126
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20343a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203266
loc_203126:
	rts

sub_203128:
	lea (dat_2034f2).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203144
	bclr.b #$1,(a2)
	beq.s loc_20318e
	move.w #$e0,d4
loc_203144:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2031be(pc,d0.w),a3
	beq.s loc_203176
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20343a
	movem.l (a7)+,d4-d5
	bsr.w sub_203210
	movea.l (a7)+,a0
	bra.s loc_20318e
loc_203176:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20343c
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20323c
	movea.l (a7)+,a0
loc_20318e:
	tst.b (a2)
	bne.s loc_203194
	rts
loc_203194:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2031a8
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2031a8:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2031ce
dat_2031be:
	.incbin 12734, 16
loc_2031ce:
	moveq #$f,d6
	move.l #$800000,d7
loc_2031d6:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_203200
	add.w d0,d0
	movea.l dat_2031be(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203312
	movem.l (a7)+,d4-d5
	bsr.w sub_20343a
	bsr.w sub_203294
	movem.l (a7)+,d4-d5/a0
loc_203200:
	addi.w #$10,d4
	dbf d6,loc_2031d6
	clr.b (a2)
	rts

sub_20320c:
	rts

sub_20320e:
	rts

sub_203210:
	moveq #$15,d6

sub_203212:
	move.l #$800000,d7
	move.l d0,d1
loc_20321a:
	movem.l d4-d5,-(a7)
	bsr.w sub_203312
	move.l d1,d0
	bsr.w sub_203294
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20321a
	rts

sub_20323c:
	move.l #$800000,d7
	move.l d0,d1
loc_203244:
	movem.l d4-d5,-(a7)
	bsr.w sub_203314
	move.l d1,d0
	bsr.w sub_203294
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203244
	rts

sub_203266:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203270:
	movem.l d4-d5,-(a7)
	bsr.w sub_203312
	move.l d1,d0
	bsr.w sub_203294
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203270
	rts

sub_203294:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2032d0
	btst.b #$3,(a0)
	bne.s loc_2032b0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2032b0:
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
loc_2032d0:
	btst.b #$3,(a0)
	bne.s loc_2032f2
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
loc_2032f2:
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

sub_203312:
	add.w (a3),d5

sub_203314:
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
	beq.s loc_203362
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
loc_203362:
	rts
	.incbin 13156, 214

sub_20343a:
	add.w (a3),d5

sub_20343c:
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
	.incbin 13398, 28

sub_203472:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20349c
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2034c4

sub_20349c:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034a0:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20343a
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203212
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2034a0
	rts
loc_2034c4:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034c8:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2034f2).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_203534
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2034c8
	rts
dat_2034f2:
	.incbin 13554, 50
dat_203524:
	.incbin 13604, 16

sub_203534:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203524(pc,d0.w),a3
	beq.s loc_203556
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20343a
	movem.l (a7)+,d4-d5
	bsr.w sub_203210
	bra.s loc_20356a
loc_203556:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20343c
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20323c
loc_20356a:
	rts

sub_20356c:
	moveq #$0,d0
	lea (dat_20f178).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20231a
	movea.l (a2)+,a0
	bsr.w sub_2035c6
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004c0
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2035b0
	jmp (loc_20c788).l
loc_2035b0:
	btst.b #$1,($ff151c).l
	beq.s loc_2035c4
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2035c4
	bsr.w sub_202448
loc_2035c4:
	rts

sub_2035c6:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2035d0:
	move.l d0,(a3)+
	dbf d1,loc_2035d0
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2035e6
	lea ($a040).w,a3
	moveq #$2,d1

sub_2035e6:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_239032).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203600:
	move.w d1,d0
	movea.l a3,a0
loc_203604:
	move.b (a1)+,(a0)+
	dbf d0,loc_203604
	lea $80(a3),a3
	dbf d2,loc_203600
	rts

sub_203614:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20368e(pc,d0.w),d0
	jsr dat_20368e(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20363a
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20363a:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203668
	bcc.s loc_20366a
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20365e
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20365e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203668:
	rts
loc_20366a:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203682
	btst.b #$1,($d022).w
	beq.s loc_203682
	add.w d1,d1
	add.w d1,d1
loc_203682:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20368e:
	.incbin 13966, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203748(pc,d0.w),d0
	jmp dat_203748(pc,d0.w)
dat_203748:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$510,($f726).w
	rts
	.incbin 14166, 118
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2037de(pc,d0.w),d0
	jmp dat_2037de(pc,d0.w)
dat_2037de:
	.incbin 14302, 418

sub_203980:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203988:
	move.b (a0),d0
	beq.s loc_20399e
	add.w d0,d0
	add.w d0,d0
	lea (dat_203da2).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20399e:
	lea $40(a0),a0
	dbf d7,loc_203988
	rts

sub_2039a8:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2039e6
	bpl.s loc_2039d8
	btst.b #$1,$2c(a0)
	beq.s loc_2039d8
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2039e6
loc_2039d8:
	btst.b #$2,$2c(a0)
	bne.s loc_2039e6
	addi.w #$38,$12(a0)
loc_2039e6:
	tst.w $12(a0)
	bmi.s loc_2039fa
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2039fa
	move.w #$1000,$12(a0)
loc_2039fa:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a0a:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a46
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a46
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a44
	neg.w d1
loc_203a44:
	add.w d1,d0
loc_203a46:
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

sub_203a60:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
loc_203a6e:
	beq.w loc_203ad0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203aec
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203aec
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203aaa
	cmpi.w #$800,d3
	bcs.s loc_203abc
	subi.w #$800,d3
	bra.s loc_203abc
loc_203aaa:
	cmpi.w #$700,($f704).w
	bcs.s loc_203abc
	cmpi.w #$100,d3
	bcc.s loc_203abc
	addi.w #$800,d3
loc_203abc:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203aec
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203aec
loc_203ad0:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203aec
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203aec:
	rts
	.incbin 15086, 30

sub_203b0c:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b12:
	move.l d1,(a1)+
	dbf d0,loc_203b12
	rts
loc_203b1a:
	ori.b #$0,d0
	dc.b $00,$ff,$f7,$00,$00,$ff,$f7,$08
	dc.b $00,$ff,$f7,$18

sub_203b2a:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b36:
	tst.w (a4)
	beq.w loc_203bf6
	moveq #$2,d6
loc_203b3e:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203bee
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203ba4
	movea.l loc_203b1a(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203b88
	cmpi.w #$800,d2
	bcs.s loc_203b9a
	subi.w #$800,d2
	bra.s loc_203b9a
loc_203b88:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203b9a
	cmpi.w #$100,d2
	bcc.s loc_203b9a
	addi.w #$800,d2
loc_203b9a:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203bc6
loc_203ba4:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203bc6
	.incbin 15278, 24
loc_203bc6:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203be4
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203be8
loc_203be4:
	bsr.w sub_203c18
loc_203be8:
	bset.b #$7,$1(a0)
loc_203bee:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b3e
loc_203bf6:
	lea $80(a4),a4
	dbf d7,loc_203b36
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c10
	move.l #$0,(a2)
	rts
loc_203c10:
	move.b #$0,-$5(a2)
	rts

sub_203c18:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c5e
	btst.l #$1,d4
	bne.w loc_203cac
loc_203c2a:
	cmpi.b #$50,d5
	beq.s loc_203c5c
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
	bne.s loc_203c56
	addq.w #$1,d0
loc_203c56:
	move.w d0,(a2)+
	dbf d1,loc_203c2a
loc_203c5c:
	rts
loc_203c5e:
	btst.l #$1,d4
	bne.w loc_203cf2
loc_203c66:
	cmpi.b #$50,d5
	beq.s loc_203caa
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
	bne.s loc_203ca4
	addq.w #$1,d0
loc_203ca4:
	move.w d0,(a2)+
	dbf d1,loc_203c66
loc_203caa:
	rts
loc_203cac:
	cmpi.b #$50,d5
	beq.s loc_203cf0
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
	bne.s loc_203cea
	addq.w #$1,d0
loc_203cea:
	move.w d0,(a2)+
	dbf d1,loc_203cac
loc_203cf0:
	rts
loc_203cf2:
	cmpi.b #$50,d5
	beq.s loc_203d44
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
	bne.s loc_203d3e
	addq.w #$1,d0
loc_203d3e:
	move.w d0,(a2)+
	dbf d1,loc_203cf2
loc_203d44:
	rts
	.incbin 15686, 92
dat_203da2:
	.incbin 15778, 246

sub_203e98:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203eaa
	move.w #$0,(a1)
	rts
loc_203eaa:
	tst.w (a1)
	bne.s loc_203eb4
	move.b #$1,$1(a1)
loc_203eb4:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203efe
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ef0
	neg.w $10(a0)
loc_203ef0:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205c2a
loc_203efe:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203f1c
	cmpa.w #$d040,a0
	beq.s loc_203f1c
	tst.b ($ff1906).l
	beq.s loc_203f1c
	jmp (loc_2075c8).l
loc_203f1c:
	move.b $2a(a0),d0
	beq.s loc_203f46
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203f38
	cmpi.b #$2d,d0
	bcs.s loc_203f42
	move.b #$2d,d0
	bra.s loc_203f42
loc_203f38:
	cmpi.b #$1e,d0
	bcs.s loc_203f42
	move.b #$1e,d0
loc_203f42:
	move.b d0,$2a(a0)
loc_203f46:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203f54(pc,d0.w),d1
	jmp dat_203f54(pc,d1.w)
dat_203f54:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203f5e:
	tst.b ($d300).w
	bne.s loc_203f9c
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203f9c:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203fc4
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203fc4:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203ff8:
	tst.b ($ff1506).l
	bne.s loc_20405e
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_20405e
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_204062
	cmpi.b #$2f,d1
	bne.s loc_204060
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_20405e
	tst.b $2c(a0)
	beq.s loc_20405e
	jsr (sub_207b44).l
	bne.s loc_20405e
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_204056
	moveq #$0,d0
loc_204056:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_20405e:
	rts
loc_204060:
	rts

sub_204062:
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

sub_204088:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204094
	neg.w d0
loc_204094:
	btst.b #$1,$2c(a0)
	beq.s loc_2040a4
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_2040cc
loc_2040a4:
	cmpi.w #$600,d0
	bcs.s loc_2040cc
	tst.w $14(a0)
	bpl.s loc_2040be
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_2040da
	move.w #$e0,d1
	bra.s loc_2040da
loc_2040be:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_2040da
	move.w #$60,d1
	bra.s loc_2040da
loc_2040cc:
	cmpi.w #$a0,d1
	beq.s loc_2040da
	bcc.s loc_2040d8
	addq.w #$2,d1
	bra.s loc_2040da
loc_2040d8:
	subq.w #$2,d1
loc_2040da:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_204088
	bsr.w sub_203ff8
	tst.w ($ff1588).l
	beq.s loc_204100
	btst.b #$4,($f605).w
	beq.s loc_204100
	move.b #$1,($ff1906).l
	rts
loc_204100:
	tst.b ($f7cc).w
	bne.s loc_20410c
	move.w ($f604).w,($f602).w
loc_20410c:
	btst.b #$0,$2c(a0)
	beq.s loc_204130
	cmpi.b #$6,($ff1506).l
	bne.s loc_20412a
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204148
loc_20412a:
	bsr.w sub_204412
	bra.s loc_204148
loc_204130:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20418e(pc,d0.w),d1
	jsr dat_20418e(pc,d1.w)
	jsr (sub_2066e2).l
loc_204148:
	bsr.s sub_20419c
	bsr.w sub_20425c
	bsr.w sub_204276
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204170
	tst.b $1c(a0)
	bne.s loc_204170
	move.b $1d(a0),$1c(a0)
loc_204170:
	bsr.w sub_20561a
	tst.b $2c(a0)
	bmi.s loc_204188
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204188
	jsr (sub_207172).l
loc_204188:
	bsr.w sub_2054d0
	rts
dat_20418e:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_20419c:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2041c0
	move.w $30(a0),d0
	beq.s loc_2041b2
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2041c0
loc_2041b2:
	btst.b #$6,$2c(a0)
	bne.s loc_2041c0
	jsr (sub_203a60).l
loc_2041c0:
	tst.b ($ff151f).l
	beq.s loc_204204
	tst.w $32(a0)
	beq.s loc_204204
	subq.w #$1,$32(a0)
	bne.s loc_204204
	tst.b ($ff1520).l
	bne.s loc_2041fc
	tst.b ($ff1958).l
	bne.s loc_2041fc
	tst.b ($ff152e).l
	bne.s loc_2041f6
	move.w #$e,d0
	jsr (sub_205c2a).l
loc_2041f6:
	jsr (sub_201a72).l
loc_2041fc:
	move.b #$0,($ff151f).l
loc_204204:
	tst.b ($ff1520).l
	beq.s loc_20425a
	tst.w $34(a0)
	beq.s loc_20425a
	subq.w #$1,$34(a0)
	bne.s loc_20425a
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204252
	tst.b ($ff1958).l
	bne.s loc_204252
	tst.b ($ff152e).l
	bne.s loc_20424c
	move.w #$e,d0
	jsr (sub_205c2a).l
loc_20424c:
	jsr (sub_201a72).l
loc_204252:
	move.b #$0,($ff1520).l
loc_20425a:
	rts

sub_20425c:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204276:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204282
loc_204280:
	rts
loc_204282:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204294
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204280
loc_204294:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2042d8
	bset.b #$6,$22(a0)
	bne.s loc_204280
	bsr.w sub_205f2e
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204280
	bra.s loc_204310
loc_2042d8:
	tst.w $12(a0)
	beq.s loc_2042e0
	bpl.s loc_204280
loc_2042e0:
	bclr.b #$6,$22(a0)
	beq.s loc_204280
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204280
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204310
	move.w #$f000,$12(a0)
loc_204310:
	jsr (sub_207b44).l
	bne.s loc_204324
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204324:
	rts

sub_204326:
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
	bcs.s loc_204400
	move.l #$50000,d0
loc_204400:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204412:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204438
	tst.b ($ff152e).l
	beq.s loc_20442e
	cmpi.b #$2,($ff152e).l
	bne.s loc_204438
loc_20442e:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2044e8
loc_204438:
	tst.b $2a(a0)
	bne.w loc_2044f6
	tst.b ($f784).w
	beq.w loc_2044f6
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204456
	neg.w d0
loc_204456:
	tst.w ($f786).w
	bne.s loc_204462
	move.w #$1,($f786).w
loc_204462:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204478
	move.b #$1,($ff1502).l
	bra.w loc_205c26
loc_204478:
	cmpi.w #$d2,d1
	bcs.s loc_2044cc
	cmpi.b #$2,($ff1522).l
	beq.s loc_2044ca
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2044a2
	move.w #$82,d0
	jsr (sub_205c2a).l
	moveq #$0,d0
loc_2044a2:
	add.b ($f784).w,d0
	bpl.s loc_2044ac
	moveq #$0,d0
	bra.s loc_2044b4
loc_2044ac:
	cmpi.b #$3,d0
	bcs.s loc_2044b4
	moveq #$2,d0
loc_2044b4:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204326
	move.b #$2,($ff1522).l
loc_2044ca:
	rts
loc_2044cc:
	cmpi.w #$5a,d1
	bcc.s loc_2044e4
	cmp.w d2,d0
	bcc.w loc_203f5e
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2044e4:
	cmp.w d2,d0
	bcc.s loc_2044f6
loc_2044e8:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2044f6:
	rts
	bsr.w sub_203e98
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204528
	tst.b ($ff195b).l
	beq.s loc_204516
	cmpi.b #$79,$1a(a0)
	bne.s loc_204552
	bra.s loc_20451e
loc_204516:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204552
loc_20451e:
	bsr.w sub_204dba
	jmp (sub_2039a8).l
loc_204528:
	bsr.w sub_204600
	bsr.w sub_204412
	bsr.w sub_204ea4
	bsr.w sub_204fd0
	bsr.w sub_204674
	bsr.w sub_204e26
	bsr.w sub_204dba
	jsr (sub_203a0a).l
	bsr.w sub_200b82
	bsr.w sub_20504e
loc_204552:
	rts
	tst.b ($f7c7).w
	bne.s loc_20456e
	cmpi.b #$15,$1c(a0)
	beq.s loc_20456e
	tst.w $12(a0)
	bmi.s loc_20456e
	move.b #$0,$1c(a0)
loc_20456e:
	bsr.w sub_204600
	bsr.w sub_204412
	bsr.w sub_204f8e
	bsr.w sub_204cda
	bsr.w sub_204dba
	jsr (sub_2039a8).l
	btst.b #$6,$22(a0)
	beq.s loc_204596
	subi.w #$28,$12(a0)
loc_204596:
	bsr.w sub_205098
	bsr.w sub_2050bc
	rts
	bsr.w sub_204600
	bsr.w sub_204412
	bsr.w sub_204ea4
	bsr.w sub_20500c
	bsr.w sub_204b14
	bsr.w sub_204dba
	tst.b $2a(a0)
	bne.s loc_2045c4
	jsr (sub_203a0a).l
loc_2045c4:
	bsr.w sub_200b82
	bsr.w sub_20504e
	rts
	bsr.w sub_204600
	bsr.w sub_204412
	bsr.w sub_204f8e
	bsr.w sub_204cda
	bsr.w sub_204dba
	jsr (sub_2039a8).l
	btst.b #$6,$22(a0)
	beq.s loc_2045f6
	subi.w #$28,$12(a0)
loc_2045f6:
	bsr.w sub_205098
	bsr.w sub_2050bc
	rts

sub_204600:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20466c
	tst.w ($ff1506).l
	bne.s loc_20466c
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20466e).l,a2
loc_204634:
	move.b (a2)+,d0
	bmi.s loc_204644
	cmp.b d0,d1
	bne.s loc_204634
	bset.b #$1,$2c(a0)
	rts
loc_204644:
	bclr.b #$1,$2c(a0)
	beq.s loc_20466c
	tst.w $12(a0)
	bpl.s loc_20466c
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20466c
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20466c
	neg.w $10(a0)
loc_20466c:
	rts
dat_20466e:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204674:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_20499e
	tst.w $3e(a0)
	bne.w loc_20494e
	btst.b #$2,($f602).w
	beq.s loc_20469c
	bsr.w sub_204a2e
loc_20469c:
	btst.b #$3,($f602).w
	beq.s loc_2046a8
	bsr.w sub_204aa4
loc_2046a8:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_20494e
	tst.w $14(a0)
	beq.s loc_2046c8
	tst.b $2a(a0)
	beq.w loc_20494e
	bra.s loc_2046d4
loc_2046c8:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2046d4:
	btst.b #$3,$22(a0)
	beq.s loc_204726
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20477e
	cmpi.b #$1e,$0(a1)
	bne.s loc_204706
	move.b #$0,$1c(a0)
	bra.w loc_20494e
loc_204706:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204762
	cmp.w d2,d1
	bge.s loc_204750
	bra.s loc_20477e
loc_204726:
	jsr (sub_206ed6).l
	cmpi.w #$c,d1
	blt.s loc_20477e
	move.w #$ab,d0
	jsr (sub_20227e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20475a
loc_204750:
	btst.b #$0,$22(a0)
	bne.s loc_20476a
	bra.s loc_204774
loc_20475a:
	cmpi.b #$3,$37(a0)
	bne.s loc_20477e
loc_204762:
	btst.b #$0,$22(a0)
	bne.s loc_204774
loc_20476a:
	move.b #$32,$1c(a0)
	bra.w loc_20494e
loc_204774:
	move.b #$6,$1c(a0)
	bra.w loc_20494e
loc_20477e:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204792
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204792:
	btst.b #$7,($f788).w
	bne.w loc_204896
	btst.b #$6,($f788).w
	bne.w loc_2048b6
	btst.b #$1,($f602).w
	bne.w loc_2048b6
	andi.b #$f,($f788).w
	beq.s loc_2047ca
	btst.b #$0,($f603).w
	beq.s loc_2047de
	bset.b #$7,($f788).w
	bra.w loc_204972
loc_2047ca:
	btst.b #$0,($f603).w
	beq.w loc_2047de
	move.b #$1,($f788).w
	bra.w loc_204972
loc_2047de:
	btst.b #$0,($f602).w
	beq.s loc_20485a
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_20483c
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20480e
	asr.w #$1,d2
	sub.w d2,d1
loc_20480e:
	btst.b #$0,$22(a0)
	beq.s loc_20481a
	neg.w d0
	neg.w d1
loc_20481a:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204830
	cmp.w d0,d1
	ble.s loc_204836
	bra.s loc_204834
loc_204830:
	cmp.w d1,d0
	ble.s loc_204836
loc_204834:
	move.w d1,d0
loc_204836:
	move.w d0,$14(a0)
	rts
loc_20483c:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204856
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20227e).l
loc_204856:
	bra.w loc_204972
loc_20485a:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20487a
	move.w #$ab,d0
	jsr (sub_20227e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2048b6
loc_20487a:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20227e).l
	bra.w loc_20494e
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204896:
	btst.b #$0,($f602).w
	beq.s loc_2048b6
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204972
	addq.w #$2,($f73e).w
	bra.w loc_204972
loc_2048b6:
	btst.b #$6,($f788).w
	bne.w loc_204932
	andi.b #$f,($f788).w
	beq.s loc_2048da
	btst.b #$1,($f603).w
	beq.s loc_2048ec
	bset.b #$6,($f788).w
	bra.w loc_204972
loc_2048da:
	btst.b #$1,($f603).w
	beq.s loc_2048ec
	move.b #$1,($f788).w
	bra.w loc_204972
loc_2048ec:
	btst.b #$1,($f602).w
	beq.s loc_20494e
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204930
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204930
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204922
	neg.w $14(a0)
loc_204922:
	move.w #$9c,d0
	jsr (sub_20227e).l
	bsr.w sub_204e4e
loc_204930:
	bra.s loc_204972
loc_204932:
	btst.b #$1,($f602).w
	beq.s loc_20494e
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204972
	subq.w #$2,($f73e).w
	bra.s loc_204972
loc_20494e:
	cmpi.w #$60,($f73e).w
	bne.s loc_204968
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204972
	move.b #$0,($f788).w
	bra.s loc_204972
loc_204968:
	bcc.s loc_20496e
	addq.w #$4,($f73e).w
loc_20496e:
	subq.w #$2,($f73e).w
loc_204972:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20499e
	move.w $14(a0),d0
	beq.s loc_20499e
	bmi.s loc_204992
	sub.w d5,d0
	bcc.s loc_20498c
	move.w #$0,d0
loc_20498c:
	move.w d0,$14(a0)
	bra.s loc_20499e
loc_204992:
	add.w d5,d0
	bcc.s loc_20499a
	move.w #$0,d0
loc_20499a:
	move.w d0,$14(a0)
loc_20499e:
	move.b $26(a0),d0
	jsr (sub_200782).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2049bc:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204a2c
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204a2c
	bmi.s loc_2049d4
	neg.w d1
loc_2049d4:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206d96
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204a2c
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204a28
	cmpi.b #$40,d0
	beq.s loc_204a16
	cmpi.b #$80,d0
	beq.s loc_204a10
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a10:
	sub.w d1,$12(a0)
	rts
loc_204a16:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a28:
	add.w d1,$12(a0)
loc_204a2c:
	rts

sub_204a2e:
	tst.b $2a(a0)
	bne.s loc_204aa2
	move.w $14(a0),d0
	beq.s loc_204a3c
	bpl.s loc_204a6c
loc_204a3c:
	bset.b #$0,$22(a0)
	bne.s loc_204a50
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a50:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204a60
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204a60
	move.w d1,d0
loc_204a60:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a6c:
	sub.w d4,d0
	bcc.s loc_204a74
	move.w #$ff80,d0
loc_204a74:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204aa2
	cmpi.w #$400,d0
	blt.s loc_204aa2
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20227e).l
loc_204aa2:
	rts

sub_204aa4:
	tst.b $2a(a0)
	bne.s loc_204b12
	move.w $14(a0),d0
	bmi.s loc_204adc
	bclr.b #$0,$22(a0)
	beq.s loc_204ac4
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204ac4:
	cmp.w d6,d0
	bge.s loc_204ad0
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204ad0
	move.w d6,d0
loc_204ad0:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204adc:
	add.w d4,d0
	bcc.s loc_204ae4
	move.w #$80,d0
loc_204ae4:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b12
	cmpi.w #$fc00,d0
	bgt.s loc_204b12
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20227e).l
loc_204b12:
	rts

sub_204b14:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204c5e
	tst.w $3e(a0)
	bne.s loc_204b4c
	btst.b #$2,($f602).w
	beq.s loc_204b40
	bsr.w sub_204c94
loc_204b40:
	btst.b #$3,($f602).w
	beq.s loc_204b4c
	bsr.w sub_204cb8
loc_204b4c:
	tst.b $2a(a0)
	beq.w loc_204bf6
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204b6c
	asr.w #$1,d2
	sub.w d2,d1
loc_204b6c:
	btst.b #$0,$22(a0)
	beq.s loc_204b78
	neg.w d0
	neg.w d1
loc_204b78:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204b8e
	cmp.w d0,d1
	ble.s loc_204b94
	bra.s loc_204b92
loc_204b8e:
	cmp.w d1,d0
	ble.s loc_204b94
loc_204b92:
	move.w d1,d0
loc_204b94:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204bc8
	rts
loc_204ba2:
	move.w #$ab,d0
	jsr (sub_20227e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204c28
loc_204bc8:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204ba2
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20227e).l
	btst.b #$0,$22(a0)
	bne.s loc_204bee
	bsr.w sub_204cb8
	bra.s loc_204bf6
loc_204bee:
	bsr.w sub_204c94
	bra.s loc_204bf6
	dc.b $4e,$75
loc_204bf6:
	move.w $14(a0),d0
	beq.s loc_204c18
	bmi.s loc_204c0c
	sub.w d5,d0
	bcc.s loc_204c06
	move.w #$0,d0
loc_204c06:
	move.w d0,$14(a0)
	bra.s loc_204c18
loc_204c0c:
	add.w d5,d0
	bcc.s loc_204c14
	move.w #$0,d0
loc_204c14:
	move.w d0,$14(a0)
loc_204c18:
	tst.w $14(a0)
	bne.s loc_204c5e
	move.w #$ab,d0
	jsr (sub_20227e).l
loc_204c28:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c48
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204c58
loc_204c48:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204c58:
	move.b #$5,$1c(a0)
loc_204c5e:
	move.b $26(a0),d0
	jsr (sub_200782).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204c82
	move.w #$1000,d1
loc_204c82:
	cmpi.w #$f000,d1
	bge.s loc_204c8c
	move.w #$f000,d1
loc_204c8c:
	move.w d1,$10(a0)
	bra.w loc_2049bc

sub_204c94:
	move.w $14(a0),d0
	beq.s loc_204c9c
	bpl.s loc_204caa
loc_204c9c:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204caa:
	sub.w d4,d0
	bcc.s loc_204cb2
	move.w #$ff80,d0
loc_204cb2:
	move.w d0,$14(a0)
	rts

sub_204cb8:
	move.w $14(a0),d0
	bmi.s loc_204ccc
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ccc:
	add.w d4,d0
	bcc.s loc_204cd4
	move.w #$80,d0
loc_204cd4:
	move.w d0,$14(a0)
	rts

sub_204cda:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204d14
	tst.w ($ff1506).l
	bne.s loc_204d14
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204d0c
	cmpi.w #$840,$8(a0)
	bcc.s loc_204d0c
	rts
loc_204d0c:
	btst.b #$1,$2c(a0)
	bne.s loc_204d44
loc_204d14:
	btst.b #$2,($f602).w
	beq.s loc_204d2e
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204d2e
	move.w d1,d0
loc_204d2e:
	btst.b #$3,($f602).w
	beq.s loc_204d44
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d44
	move.w d6,d0
loc_204d44:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204d5a
	bcc.s loc_204d56
	addq.w #$4,($f73e).w
loc_204d56:
	subq.w #$2,($f73e).w
loc_204d5a:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204d88
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204d88
	bmi.s loc_204d7c
	sub.w d1,d0
	bcc.s loc_204d76
	move.w #$0,d0
loc_204d76:
	move.w d0,$10(a0)
	rts
loc_204d7c:
	sub.w d1,d0
	bcs.s loc_204d84
	move.w #$0,d0
loc_204d84:
	move.w d0,$10(a0)
loc_204d88:
	rts
	.incbin 19850, 48

sub_204dba:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204e0e
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204de8
	addi.w #$38,d0
loc_204de8:
	cmp.w d1,d0
	bls.s loc_204e0e
loc_204dec:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204dfc
	rts
loc_204dfc:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_20740c
	move.b #$6,$24(a0)
	rts
loc_204e0e:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204dec

sub_204e26:
	tst.b ($f7ca).w
	bne.s loc_204e4c
	move.w $14(a0),d0
	bpl.s loc_204e34
	neg.w d0
loc_204e34:
	cmpi.w #$80,d0
	bcs.s loc_204e4c
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204e4c
	btst.b #$1,($f602).w
	bne.s sub_204e4e
loc_204e4c:
	rts

sub_204e4e:
	btst.b #$2,$22(a0)
	beq.s loc_204e58
	bra.s loc_204e88
loc_204e58:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e78
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e88
loc_204e78:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e88:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204ea2
	cmpi.w #$200,$14(a0)
	bcc.s loc_204ea2
	move.w #$200,$14(a0)
loc_204ea2:
	rts

sub_204ea4:
	tst.b $2a(a0)
	beq.s loc_204eac
	rts
loc_204eac:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204ebe
	tst.w $14(a0)
	beq.w loc_204f84
loc_204ebe:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204f84
	btst.b #$3,$22(a0)
	beq.s loc_204eda
	jsr (sub_205bb0).l
	beq.s loc_204f0a
loc_204eda:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206e00
	cmpi.w #$6,d1
	blt.w loc_204f84
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f00
	move.w #$380,d2
loc_204f00:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204f0a:
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
	bne.s loc_204f86
	tst.b ($ff195b).l
	beq.s loc_204f68
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f78
loc_204f68:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f78:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204f84:
	rts
loc_204f86:
	bset.b #$4,$22(a0)
	rts

sub_204f8e:
	tst.b $3c(a0)
	beq.s loc_204fc0
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204fa4
	move.w #$fe00,d1
loc_204fa4:
	cmp.w $12(a0),d1
	ble.s loc_204fbe
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204fbe
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204fbe:
	rts
loc_204fc0:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204fce
	move.w #$f040,$12(a0)
loc_204fce:
	rts

sub_204fd0:
	tst.b $2a(a0)
	bne.s loc_20500a
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20500a
	move.b $26(a0),d0
	jsr (sub_200782).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_20500a
	bmi.s loc_205006
	tst.w d0
	beq.s loc_205004
	add.w d0,$14(a0)
loc_205004:
	rts
loc_205006:
	add.w d0,$14(a0)
loc_20500a:
	rts

sub_20500c:
	tst.b $2a(a0)
	bne.s loc_20504c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20504c
	move.b $26(a0),d0
	jsr (sub_200782).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_205042
	tst.w d0
	bpl.s loc_20503c
	asr.l #$2,d0
loc_20503c:
	add.w d0,$14(a0)
	rts
loc_205042:
	tst.w d0
	bmi.s loc_205048
	asr.l #$2,d0
loc_205048:
	add.w d0,$14(a0)
loc_20504c:
	rts

sub_20504e:
	nop
	tst.b $38(a0)
	bne.s loc_205090
	tst.w $3e(a0)
	bne.s loc_205092
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205090
	move.w $14(a0),d0
	bpl.s loc_205072
	neg.w d0
loc_205072:
	cmpi.w #$280,d0
	bcc.s loc_205090
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205090:
	rts
loc_205092:
	subq.w #$1,$3e(a0)
	rts

sub_205098:
	btst.b #$1,$2c(a0)
	bne.s loc_2050ba
	move.b $26(a0),d0
	beq.s loc_2050ba
	bpl.s loc_2050b0
	addq.b #$2,d0
	bcc.s loc_2050ae
	moveq #$0,d0
loc_2050ae:
	bra.s loc_2050b6
loc_2050b0:
	subq.b #$2,d0
	bcc.s loc_2050b6
	moveq #$0,d0
loc_2050b6:
	move.b d0,$26(a0)
loc_2050ba:
	rts

sub_2050bc:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a1a).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_2051a0
	cmpi.b #$80,d0
	beq.w loc_205202
	cmpi.b #$c0,d0
	beq.w loc_20525e
	bsr.w sub_207116
	tst.w d1
	bpl.s loc_20510e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20510e:
	bsr.w sub_206f78
	tst.w d1
	bpl.s loc_205120
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205120:
	bsr.w sub_206e28
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20519e
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_20513e
	cmp.b d2,d0
	blt.s loc_20519e
loc_20513e:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052c0
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20517c
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20516e
	asr.w $12(a0)
	bra.s loc_205190
loc_20516e:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_20517c:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205190
	move.w #$fc0,$12(a0)
loc_205190:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20519e
	neg.w $14(a0)
loc_20519e:
	rts
loc_2051a0:
	bsr.w sub_207116
	tst.w d1
	bpl.s loc_2051ba
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2051ba:
	bsr.w sub_206fd0
	tst.w d1
	bpl.s loc_2051d4
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2051d2
	move.w #$0,$12(a0)
loc_2051d2:
	rts
loc_2051d4:
	tst.w $12(a0)
	bmi.s loc_205200
	bsr.w sub_206e28
	tst.w d1
	bpl.s loc_205200
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052c0
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205200:
	rts
loc_205202:
	bsr.w sub_207116
	tst.w d1
	bpl.s loc_205214
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205214:
	bsr.w sub_206f78
	tst.w d1
	bpl.s loc_205226
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205226:
	bsr.w sub_206fd0
	tst.w d1
	bpl.s loc_20525c
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205246
	move.w #$0,$12(a0)
	rts
loc_205246:
	move.b d3,$26(a0)
	bsr.w sub_205332
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20525c
	neg.w $14(a0)
loc_20525c:
	rts
loc_20525e:
	bsr.w sub_206f78
	tst.w d1
	bpl.s loc_205278
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205278:
	bsr.w sub_206fd0
	tst.w d1
	bpl.s loc_205292
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205290
	move.w #$0,$12(a0)
loc_205290:
	rts
loc_205292:
	tst.w $12(a0)
	bmi.s loc_2052be
	bsr.w sub_206e28
	tst.w d1
	bpl.s loc_2052be
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052c0
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2052be:
	rts

sub_2052c0:
	btst.b #$4,$22(a0)
	beq.s loc_2052ca
	nop
loc_2052ca:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205324
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205304
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205314
loc_205304:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205314:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20227e).l
loc_205324:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205332:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_203a0a).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20536c
	subi.w #$20,$12(a0)
loc_20536c:
	jsr (sub_2066e2).l
	bsr.w sub_205388
	bsr.w sub_204dba
	bsr.w sub_20425c
	bsr.w sub_20561a
	jmp (sub_203a60).l

sub_205388:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_20740c
	bsr.w sub_2050bc
	btst.b #$1,$22(a0)
	bne.s loc_2053c2
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2053c2:
	rts
	.incbin 21444, 268

sub_2054d0:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2054f8
	cmpi.b #$5,($ff1506).l
	beq.s loc_2054f8
	cmpi.b #$2,($ff1506).l
	beq.s loc_2054f8
	tst.b ($ff1506).l
	bne.w loc_2055ba
loc_2054f8:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205536
	tst.b ($ff1506).l
	bne.w loc_2055bc
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2055bc
	bra.s loc_20553e
loc_205536:
	cmp.b ($f7af).w,d1
	beq.w loc_2055bc
loc_20553e:
	cmp.b ($f7ac).w,d1
	beq.s loc_20556e
	cmp.b ($f7ad).w,d1
	beq.s loc_205552
	bclr.b #$6,$1(a0)
	rts
loc_205552:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2055d4
	btst.b #$1,$22(a0)
	beq.s loc_20556e
	bclr.b #$6,$1(a0)
	rts
loc_20556e:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205580
	bclr.b #$6,$1(a0)
	rts
loc_205580:
	cmpi.b #$e0,d2
	bcs.s loc_20558e
	bset.b #$6,$1(a0)
	rts
loc_20558e:
	btst.b #$6,$1(a0)
	bne.s loc_2055aa
	move.b $26(a0),d1
	beq.s loc_2055ba
	cmpi.b #$80,d1
	bhi.s loc_2055ba
	bset.b #$6,$1(a0)
	rts
loc_2055aa:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2055ba
	bclr.b #$6,$1(a0)
loc_2055ba:
	rts
loc_2055bc:
	btst.b #$2,$22(a0)
	bne.s loc_2055ce
	move.w #$9c,d0
	jsr (sub_20227e).l
loc_2055ce:
	jmp (sub_204e4e).l
loc_2055d4:
	tst.w $12(a0)
	bmi.s loc_205618
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_20560c
	cmpi.w #$38,d1
	bcs.s loc_205604
	cmpi.w #$80,d1
	bcs.s loc_205618
loc_2055fc:
	bclr.b #$6,$1(a0)
	rts
loc_205604:
	bset.b #$6,$1(a0)
	rts
loc_20560c:
	cmpi.w #$38,d1
	bcs.s loc_2055fc
	cmpi.w #$80,d1
	bcc.s loc_205604
loc_205618:
	rts

sub_20561a:
	lea (dat_20590a).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20563c
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20563c:
	bsr.w sub_2058ac
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2056b4
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205682
	move.b d0,$1e(a0)

sub_205666:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20567a
	bpl.s loc_20567a
	cmpi.b #$fd,d0
	bge.s loc_205684
loc_20567a:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205682:
	rts
loc_205684:
	addq.b #$1,d0
	bne.s loc_205694
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20567a
loc_205694:
	addq.b #$1,d0
	bne.s loc_2056a8
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20567a
loc_2056a8:
	addq.b #$1,d0
	bne.s loc_2056b2
	move.b $2(a1,d1.w),$1c(a0)
loc_2056b2:
	rts
loc_2056b4:
	subq.b #$1,$1e(a0)
	bpl.s loc_205682
	addq.b #$1,d0
	bne.w loc_20576e
	tst.b ($ff195b).l
	bne.w loc_205836
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056dc
	not.b d0
loc_2056dc:
	btst.b #$1,$2c(a0)
	bne.s loc_2056ea
	addi.b #$10,d0
	bra.s loc_2056ec
loc_2056ea:
	addq.b #$8,d0
loc_2056ec:
	bpl.s loc_2056f0
	moveq #$3,d1
loc_2056f0:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2057e2
	move.w $14(a0),d2
	bpl.s loc_20570e
	neg.w d2
loc_20570e:
	btst.b #$1,$2c(a0)
	beq.s loc_205726
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205b0c).l,a1
	bra.s loc_205750
loc_205726:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205ae6).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205750
	lea (dat_20598a).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205750
	lea (dat_205982).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205750:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20575e
	moveq #$0,d2
loc_20575e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205666
	add.b d3,$1a(a0)
	rts
loc_20576e:
	addq.b #$1,d0
	bne.s loc_2057de
	move.w $14(a0),d2
	bpl.s loc_20577a
	neg.w d2
loc_20577a:
	lea (dat_205a68).l,a1
	tst.b ($ff195b).l
	bne.s loc_2057b8
	lea (dat_20599a).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2057ac
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2057b8
	lea (dat_205b14).l,a1
	bra.s loc_2057b8
loc_2057ac:
	cmpi.w #$600,d2
	bcc.s loc_2057b8
	lea (dat_205992).l,a1
loc_2057b8:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2057c2
	moveq #$0,d2
loc_2057c2:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205666
loc_2057de:
	addq.b #$1,d0
	bne.s loc_205822
loc_2057e2:
	move.w $14(a0),d2
	bmi.s loc_2057ea
	neg.w d2
loc_2057ea:
	addi.w #$800,d2
	bpl.s loc_2057f2
	moveq #$0,d2
loc_2057f2:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205a7a).l,a1
	tst.b ($ff195b).l
	bne.s loc_20580c
	lea (dat_2059a2).l,a1
loc_20580c:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205666
loc_205822:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205836:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205848
	not.b d0
loc_205848:
	addi.b #$10,d0
	bpl.s loc_205850
	moveq #$0,d1
loc_205850:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20587e
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20576e
loc_20587e:
	move.w $14(a0),d2
	bpl.s loc_205886
	neg.w d2
loc_205886:
	lea (dat_205a62).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205898
	lea (dat_205a5c).l,a1
loc_205898:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2058a2
	moveq #$0,d2
loc_2058a2:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205666

sub_2058ac:
	tst.b ($ff195b).l
	beq.s loc_2058b8
	move.b dat_2058ba(pc,d0.w),d0
loc_2058b8:
	rts
dat_2058ba:
	.incbin 22714, 80
dat_20590a:
	.incbin 22794, 120
dat_205982:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20598a:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205992:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20599a:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2059a2:
	.incbin 22946, 186
dat_205a5c:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205a62:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205a68:
	.incbin 23144, 18
dat_205a7a:
	.incbin 23162, 108
dat_205ae6:
	.incbin 23270, 38
dat_205b0c:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205b14:
	.incbin 23316, 56

sub_205b4c:
	tst.b (a0)
	beq.w loc_205bae
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205bae
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205bae
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205b80:
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
loc_205b9a:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205b9a
	dbf d1,loc_205b80
loc_205bae:
	rts

sub_205bb0:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205c24
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
	bne.s loc_205c12
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205c12:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205c24:
	rts
loc_205c26:
	move.w #$e,d0

sub_205c2a:
	cmpi.w #$67,d0
	bne.s loc_205c38
	move.b #$1,($ff1958).l
loc_205c38:
	move.w d0,($a12010).l
loc_205c3e:
	move.w ($a12020).l,d0
	beq.s loc_205c3e
	cmp.w ($a12020).l,d0
	bne.s loc_205c3e
	move.w #$0,($a12010).l
loc_205c56:
	move.w ($a12020).l,d0
	bne.s loc_205c56
	move.w ($a12020).l,d0
	bne.s loc_205c56
	rts
	dc.b $00,$00

sub_205c6a:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205c86
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205c86:
	subq.b #$1,$1e(a0)
	bpl.s loc_205cc6
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205cc8
loc_205ca2:
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
loc_205cc6:
	rts
loc_205cc8:
	addq.b #$1,d0
	bne.s loc_205cd8
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205ca2
loc_205cd8:
	addq.b #$1,d0
	bne.s loc_205cec
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205ca2
loc_205cec:
	addq.b #$1,d0
	bne.s loc_205cf6
	move.b $2(a1,d1.w),$1c(a0)
loc_205cf6:
	addq.b #$1,d0
	bne.s loc_205cfe
	addq.b #$2,$24(a0)
loc_205cfe:
	addq.b #$1,d0
	bne.s loc_205d0c
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205d0c:
	addq.b #$1,d0
	bne.s loc_205d14
	addq.b #$2,$25(a0)
loc_205d14:
	rts
	.incbin 23830, 536

sub_205f2e:
	rts
	.incbin 24368, 32
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$23cbce,$4(a0)
	move.w #$541,$2(a0)
	move.w $8(a0),$30(a0)
	move.b #$6,$20(a0)
	move.w $30(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b0c
	lea (dat_23caa6).l,a1
	bsr.w sub_205c6a
	jmp (sub_203a60).l
	dc.b $4a,$28,$00,$25,$66,$2a,$72,$00
	dc.b $32,$28,$00,$3e,$e2,$09
loc_205fb2:
	ori.b #$80,d1
	jsr (sub_207b44).l
	bne.s loc_205fd4
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205fd4:
	rts
	.incbin 24534, 572

sub_206212:
	tst.w $12(a1)
	bpl.s loc_206254
	bsr.w sub_2062c8
	beq.s loc_206254
	move.b #$4,$24(a0)
	tst.b $28(a0)
	bne.s loc_206252
	jsr (sub_207b44).l
	bne.s loc_206252
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$4,$c(a1)
	move.w #$a4,d0
	jmp (sub_20227e).l
loc_206252:
	rts
loc_206254:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208b88).l
	.incbin 25186, 50
loc_206294:
	moveq #$c,d0
	jsr (sub_20c7e6).l
	lea ($d000).w,a1
	bsr.w sub_206212
	lea ($d040).w,a1
	bra.w sub_206212
	.incbin 25260, 28

sub_2062c8:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	moveq #$0,d1
	move.b $19(a0),d1
	add.w d1,d0
	bmi.s loc_2062fc
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_2062fc
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$0,d1
	move.b $16(a0),d1
	add.w d1,d0
	bmi.s loc_2062fc
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_2062fc
	moveq #$1,d0
	rts
loc_2062fc:
	moveq #$0,d0
	rts
	.incbin 25344, 478

sub_2064de:
	bclr.b #$7,($ff156b).l
	beq.s loc_20652c
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20652e(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206502:
	move.l (a1)+,(a2)+
	dbf d0,loc_206502
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20652c:
	rts
dat_20652e:
	.incbin 25902, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206564(pc,d0.w),d0
	jsr dat_206564(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_20655e
	jsr (sub_203a60).l
loc_20655e:
	jmp (loc_207b7a).l
dat_206564:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23cbce,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206646
	cmpi.b #$6,$24(a1)
	bcc.w loc_206646
	bsr.w sub_2066aa
	beq.w loc_206646
	tst.b $28(a0)
	bne.s loc_2065f8
	move.w $10(a1),d0
	bpl.s loc_2065b8
	neg.w d0
loc_2065b8:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2065ca
	move.w #$d00,d1
loc_2065ca:
	cmp.w d1,d0
	bcc.s loc_2065d0
	move.w d1,d0
loc_2065d0:
	tst.w $10(a1)
	bpl.s loc_2065d8
	neg.w d0
loc_2065d8:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_206628
	neg.w $14(a1)
	bra.s loc_206628
loc_2065f8:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206648
	move.w $12(a1),d0
	bpl.s loc_206608
	neg.w d0
loc_206608:
	cmpi.w #$d00,d0
	bcc.s loc_206612
	move.w #$d00,d0
loc_206612:
	tst.w $12(a1)
	bpl.s loc_20661a
	neg.w d0
loc_20661a:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206628:
	bset.b #$2,$22(a1)
	bne.s loc_206646
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206646:
	rts
loc_206648:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206694
	cmpi.b #$2,$28(a0)
	bne.s loc_206664
	tst.w $12(a1)
	bpl.s loc_206628
	bra.s loc_20666a
loc_206664:
	tst.w $12(a1)
	bmi.s loc_206628
loc_20666a:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_20667c
	btst.l #$2,d1
	beq.s loc_206628
	neg.w d0
loc_20667c:
	cmpi.b #$2,$28(a0)
	beq.s loc_20668a
	bset.b #$1,$22(a1)
loc_20668a:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206628
loc_206694:
	tst.w $10(a1)
	bmi.s loc_206628
	btst.l #$0,d1
	beq.w loc_206628
	move.w #$f600,d0
	bra.w loc_20661a

sub_2066aa:
	tst.b ($ff1906).l
	bne.s loc_2066de
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066de
	cmpi.w #$50,d0
	bcc.s loc_2066de
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066de
	cmpi.w #$50,d0
	bcc.s loc_2066de
	moveq #$1,d0
	rts
loc_2066de:
	moveq #$0,d0
	rts

sub_2066e2:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2066ec
	bsr.s sub_2066ee
loc_2066ec:
	rts

sub_2066ee:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a1a).l
	subi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2067d2
	cmpi.b #$80,d0
	beq.w loc_206758
	cmpi.b #$c0,d0
	beq.w loc_206794
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_206810
	bne.s loc_206756
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_206810
loc_206756:
	rts
loc_206758:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_206810
	bne.s loc_206792
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_206810
loc_206792:
	rts
loc_206794:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_206810
	bne.s loc_2067d0
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_206810
loc_2067d0:
	rts
loc_2067d2:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_206810
	bne.s loc_20680e
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_206810
loc_20680e:
	rts

sub_206810:
	jsr (sub_200ef0).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_206854
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_206838
	add.b ($ff156a).l,d1
loc_206838:
	add.w d1,d1
	move.w dat_206858(pc,d1.w),d1
	lea dat_206858(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_206848:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2068cc
	addq.w #$2,d1
	dbf d6,loc_206848
loc_206854:
	moveq #$0,d0
	rts
dat_206858:
	.incbin 26712, 116
loc_2068cc:
	cmpi.b #$4,$24(a0)
	bne.s loc_2068de
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2068de:
	move.b #$0,($ff1950).l
	move.l d1,-(a7)
	move.w dat_206922(pc,d1.w),d0
	jsr dat_206922(pc,d0.w)
	move.l (a7)+,d1
	cmpi.w #$3,d1
	bcs.s loc_206912
	move.w #$be,d0
	cmpi.b #$4,d1
	beq.s loc_20690c
	cmpi.b #$6,d1
	beq.s loc_20690c
	move.w #$b5,d0
loc_20690c:
	jsr (sub_20227e).l
loc_206912:
	tst.b ($ff1950).l
	beq.s loc_20691e
	moveq #$0,d0
	rts
loc_20691e:
	moveq #$1,d0
	rts
dat_206922:
	.incbin 26914, 208
	andi.w #$fff0,d2
	addq.w #$8,d2
	andi.w #$fff0,d3
	addq.w #$8,d3
	move.w d3,d1
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a1a).l
	jsr (sub_200782).l
	muls.w #$f900,d1
	asr.l #$8,d1
	asr.l #$1,d1
	move.w d1,$10(a0)
	muls.w #$f900,d0
	asr.l #$8,d0
	asr.l #$1,d0
	move.w d0,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	rts
	.incbin 27204, 396
loc_206bd0:
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
	bne.s loc_206c8a
	move.b ($ff1593).l,($ff195b).l
loc_206c8a:
	tst.b ($ff1522).l
	bpl.s loc_206ca0
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206ca0:
	rts

sub_206ca2:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206bd0
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
	bne.s loc_206d5c
	move.b ($ff1591).l,($ff195b).l
loc_206d5c:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206d7e
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206d7e:
	tst.b ($ff1522).l
	bpl.s loc_206d94
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206d94:
	rts

sub_206d96:
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
	bpl.s loc_206dd2
	move.b d1,d0
	bpl.s loc_206dcc
	subq.b #$1,d0
loc_206dcc:
	addi.b #$20,d0
	bra.s loc_206ddc
loc_206dd2:
	move.b d1,d0
	bpl.s loc_206dd8
	addq.b #$1,d0
loc_206dd8:
	addi.b #$1f,d0
loc_206ddc:
	andi.b #$c0,d0
	beq.w loc_206eac
	cmpi.b #$80,d0
	beq.w loc_207048
	andi.b #$38,d1
	bne.s loc_206df4
	addq.w #$8,d2
loc_206df4:
	cmpi.b #$40,d0
	beq.w loc_20711e
	bra.w loc_206f80

sub_206e00:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2070a6
	cmpi.b #$80,d0
	beq.w sub_206fd0
	cmpi.b #$c0,d0
	beq.w loc_206f10

sub_206e28:
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
loc_206e8c:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206e9a
	move.b ($f768).w,d3
	exg d0,d1
loc_206e9a:
	btst.l #$0,d3
	beq.s loc_206ea2
	move.b d2,d3
loc_206ea2:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206eac:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010d8).l
	move.b #$0,d2
loc_206ec8:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ed4
	move.b d2,d3
loc_206ed4:
	rts

sub_206ed6:
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
	beq.s loc_206f0e
	move.b #$0,d3
loc_206f0e:
	rts
loc_206f10:
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
	bra.w loc_206e8c

sub_206f78:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f80:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201248).l
	move.b #$c0,d2
	bra.w loc_206ec8
	.incbin 28576, 48

sub_206fd0:
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
	bra.w loc_206e8c

sub_207040:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207048:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010d8).l
	move.b #$80,d2
	bra.w loc_206ec8
	.incbin 28780, 58
loc_2070a6:
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
	bra.w loc_206e8c

sub_207116:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20711e:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201248).l
	move.b #$40,d2
	bra.w loc_206ec8
	.incbin 28994, 48

sub_207172:
	btst.b #$6,$2c(a0)
	bne.s loc_2071c0
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_20719e
	addi.w #$c,d3
	moveq #$a,d5
loc_20719e:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_2071ac:
	tst.b $1(a1)
	bpl.s loc_2071b8
	move.b $20(a1),d0
	bne.s loc_2071c4
loc_2071b8:
	lea $40(a1),a1
	dbf d6,loc_2071ac
loc_2071c0:
	moveq #$0,d0
	rts
loc_2071c4:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20754a).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2071ec
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2071f2
	bra.w loc_2071b8
loc_2071ec:
	cmp.w d4,d0
	bhi.w loc_2071b8
loc_2071f2:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_20720a
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_207210
	bra.w loc_2071b8
loc_20720a:
	cmp.w d5,d0
	bhi.w loc_2071b8
loc_207210:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207284
	cmpi.b #$c0,d1
	beq.w loc_207464
	tst.b d1
	bmi.w sub_20734e
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207248
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207246
	addq.b #$2,$24(a1)
loc_207246:
	rts
loc_207248:
	tst.w $12(a0)
	bpl.s loc_207272
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207282
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207282
	addq.b #$4,$25(a1)
	rts
loc_207272:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207282
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207282:
	rts

sub_207284:
	tst.b ($ff1521).l
	bne.s loc_20729e
	tst.b ($ff151f).l
	bne.s loc_20729e
	cmpi.b #$2,$1c(a0)
	bne.w sub_20734e
loc_20729e:
	tst.b $21(a1)
	beq.s loc_2072c8
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2072c6
	bset.b #$7,$22(a1)
loc_2072c6:
	rts
loc_2072c8:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2072e0
	moveq #$6,d0
loc_2072e0:
	move.w d0,$3e(a1)
	move.w dat_207340(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2072fa
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2072fa:
	bsr.w sub_20a748
	move.w #$96,d0
	jsr (sub_20227e).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207330
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207338
	neg.w $12(a0)
	rts
loc_207330:
	addi.w #$100,$12(a0)
	rts
loc_207338:
	subi.w #$100,$12(a0)
	rts
dat_207340:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_20734e:
	tst.b ($ff1521).l
	bne.s loc_20735e
	tst.b ($ff151f).l
	beq.s loc_207362
loc_20735e:
	moveq #$ffffffff,d0
	rts
loc_207362:
	nop
	tst.w $30(a0)
	bne.s loc_20735e
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_207398
	tst.w ($ff1512).l
	beq.w loc_207402
	jsr (sub_207b44).l
	bne.s loc_207398
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207398:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2073ae
	move.b #$0,($ff156f).l
loc_2073ae:
	move.b #$4,$24(a0)
	bsr.w sub_2052c0
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2073de
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2073de:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2073ec
	neg.w $10(a0)
loc_2073ec:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207402:
	tst.w ($ff1588).l
	bne.w loc_207398

sub_20740c:
	tst.w ($ff1906).l
	bne.s loc_207460
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2052c0
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
loc_207460:
	moveq #$ffffffff,d0
	rts
loc_207464:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$17,d1
	beq.w loc_2074f4
	cmpi.b #$1f,d1
	beq.w loc_2074f4
	cmpi.b #$23,d1
	beq.w loc_2074f4
	cmpi.b #$27,d1
	beq.w loc_2074f4
	cmpi.b #$3a,d1
	beq.w loc_20753c
	cmpi.b #$3b,d1
	beq.w loc_20753c
	tst.b ($f7aa).w
	beq.w loc_2074f2
	cmpi.b #$1,($f7aa).w
	beq.s loc_2074bc
	cmpi.b #$4,($f7aa).w
	beq.s loc_2074de
	cmpi.b #$5,($f7aa).w
	beq.s loc_2074ec
loc_2074bc:
	cmpi.b #$3c,d1
	blt.s loc_2074f2
	cmpi.b #$3f,d1
	bgt.s loc_2074f2
	bsr.w sub_207284
	tst.b $20(a1)
	bne.s loc_2074d6
	addq.b #$3,$21(a1)
loc_2074d6:
	clr.b $20(a1)
	bra.w loc_2074f4
loc_2074de:
	cmpi.b #$3f,d1
	beq.s loc_207500
	cmpi.b #$3e,d1
	beq.s loc_2074fa
	bra.s loc_2074f2
loc_2074ec:
	cmpi.b #$3d,d1
	beq.s loc_2074fa
loc_2074f2:
	rts
loc_2074f4:
	addq.b #$1,$21(a1)
	rts
loc_2074fa:
	bsr.w sub_20734e
	bra.s loc_2074f4
loc_207500:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20753a
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20753a
	neg.w $10(a0)
loc_20753a:
	rts
loc_20753c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207548
	addq.b #$1,$21(a1)
loc_207548:
	rts
dat_20754a:
	.incbin 30026, 126
loc_2075c8:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2075de
	move.l #$4000,(dat_207758).l
	bra.s loc_2075fe
loc_2075de:
	addi.l #$2000,(dat_207758).l
	cmpi.l #$80000,(dat_207758).l
	bls.s loc_2075fe
	move.l #$80000,(dat_207758).l
loc_2075fe:
	move.l (dat_207758).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207610
	sub.l d0,$c(a0)
loc_207610:
	btst.b #$1,($f604).w
	beq.s loc_20761c
	add.l d0,$c(a0)
loc_20761c:
	btst.b #$2,($f604).w
	beq.s loc_207628
	sub.l d0,$8(a0)
loc_207628:
	btst.b #$3,($f604).w
	beq.s loc_207634
	add.l d0,$8(a0)
loc_207634:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ef0).l
	move.w (a1),($ff194e).l
	lea (dat_20775c).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207676
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207670
	move.b #$0,d1
loc_207670:
	move.b d1,($ff1904).l
loc_207676:
	btst.b #$7,($f605).w
	beq.s loc_207696
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207690
	add.b (a2),d1
loc_207690:
	move.b d1,($ff1904).l
loc_207696:
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
	beq.s loc_207722
	bsr.w sub_207b44
	bne.s loc_207722
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
loc_207722:
	btst.b #$4,($f605).w
	beq.s loc_207752
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207752:
	jmp (sub_203a60).l
dat_207758:
	dc.b $00,$00,$40,$00
dat_20775c:
	.incbin 30556, 470

sub_207932:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207940:
	clr.l (a2)+
	dbf d0,loc_207940
	rts

sub_207948:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207956(pc,d0.w),d0
	jmp dat_207956(pc,d0.w)
dat_207956:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207bf6).l,a0
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
	bcc.s loc_207994
	moveq #$0,d6
loc_207994:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_20799c:
	cmp.w (a0),d6
	bls.s loc_2079ae
	tst.b $4(a0)
	bpl.s loc_2079aa
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2079aa:
	addq.w #$8,a0
	bra.s loc_20799c
loc_2079ae:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2079ce
loc_2079bc:
	cmp.w (a0),d6
	bls.s loc_2079ce
	tst.b $4(a0)
	bpl.s loc_2079ca
	addq.b #$1,$1(a2)
loc_2079ca:
	addq.w #$8,a0
	bra.s loc_2079bc
loc_2079ce:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207ab8
	bge.s loc_207a5e
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207a3a
loc_207a08:
	cmp.w -$8(a0),d6
	bge.s loc_207a3a
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207a1e
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207a1e:
	bsr.w sub_207adc
	bne.s loc_207a28
	subq.w #$8,a0
	bra.s loc_207a08
loc_207a28:
	tst.b $4(a0)
	bpl.s loc_207a38
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207a38:
	addq.w #$8,a0
loc_207a3a:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207a46:
	cmp.w -$8(a0),d6
	bgt.s loc_207a58
	tst.b -$4(a0)
	bpl.s loc_207a54
	subq.b #$1,(a2)
loc_207a54:
	subq.w #$8,a0
	bra.s loc_207a46
loc_207a58:
	move.l a0,($f770).w
	rts
loc_207a5e:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207a72:
	cmp.w (a0),d6
	bls.s loc_207a94
	tst.b $4(a0)
	bpl.s loc_207a80
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207a80:
	bsr.w sub_207adc
	beq.s loc_207a72
	tst.b $4(a0)
	bpl.s loc_207a94
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207a94:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207ab4
loc_207aa2:
	cmp.w (a0),d6
	bls.s loc_207ab4
	tst.b $4(a0)
	bpl.s loc_207ab0
	addq.b #$1,$1(a2)
loc_207ab0:
	addq.w #$8,a0
	bra.s loc_207aa2
loc_207ab4:
	move.l a0,($f774).w
loc_207ab8:
	rts

sub_207aba:
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

sub_207adc:
	bsr.s sub_207aba
	beq.s loc_207aee
	tst.b $4(a0)
	bpl.s loc_207af4
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207af4
loc_207aee:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207af4:
	bsr.w sub_207b44
	bne.s loc_207b42
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
	bpl.s loc_207b24
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207b24:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207b36
	nop
	nop
	nop
	nop
loc_207b36:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207b42:
	rts

sub_207b44:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207b4c:
	tst.b (a1)
	beq.s loc_207b58
	lea $40(a1),a1
	dbf d0,loc_207b4c
loc_207b58:
	rts

sub_207b5a:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207b78
loc_207b6c:
	tst.b (a1)
	beq.s loc_207b78
	lea $40(a1),a1
	dbf d0,loc_207b6c
loc_207b78:
	rts
loc_207b7a:
	move.w $8(a0),d0
	tst.b $1(a0)
	bmi.s loc_207be8
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207be8
loc_207b9c:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207bde
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207bd6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207bce
	moveq #$0,d1
	bra.s loc_207bd6
loc_207bce:
	cmpi.w #$3,d1
	bcs.s loc_207bd6
	moveq #$2,d1
loc_207bd6:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207bde:
	jsr (sub_203b0c).l
	moveq #$1,d0
	rts
loc_207be8:
	btst.b #$7,($ff152e).l
	bne.s loc_207b9c
	moveq #$0,d0
	rts
dat_207bf6:
	.incbin 31734, 3658

sub_208a40:
	btst.b #$3,$22(a0)
	beq.s loc_208ab0
	btst.b #$3,$22(a1)
	beq.s loc_208ab0
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208ab0
	tst.b $2a(a1)
	beq.s loc_208a72
	move.w #$ab,d0
	jsr (sub_20227e).l
loc_208a72:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208a9e
	cmpi.b #$17,$1c(a1)
	beq.s loc_208a9e
	bclr.b #$0,$2c(a1)
loc_208a9e:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208ab0
	bclr.b #$1,$22(a1)
loc_208ab0:
	rts

sub_208ab2:
	cmpi.b #$4,$24(a1)
	bne.s loc_208ac4
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208ac4:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208b24
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208ae6
	bclr.b #$3,$22(a0)
	bra.w sub_208a40
loc_208ae6:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208b24
	tst.b ($ff195b).l
	beq.s loc_208b0e
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208b1e
loc_208b0e:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208b1e:
	move.b #$0,$1c(a1)
loc_208b24:
	bset.b #$3,$22(a1)
	beq.s loc_208b46
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208b7e
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208b46:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208b72
	cmpi.b #$2,$24(a0)
	beq.s loc_208b78
loc_208b72:
	move.w $10(a1),$14(a1)
loc_208b78:
	bclr.b #$1,$22(a1)
loc_208b7e:
	rts
loc_208b80:
	move.b #$2,$25(a0)
	bra.s loc_208b8e
loc_208b88:
	move.b #$1,$25(a0)
loc_208b8e:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208e42
	btst.b #$6,$2c(a1)
	bne.w loc_208e42
	cmpi.b #$6,$24(a1)
	bcc.w loc_208e42
	tst.b $0(a1)
	beq.w loc_208e42
	tst.b $1(a0)
	bpl.w loc_208e42
	tst.b ($ff1906).l
	bne.w loc_208e42
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208e42
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208e42
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208bfc
	btst.b #$3,$22(a0)
	bne.s loc_208c0e
	bra.w loc_208e42
loc_208bfc:
	cmpi.b #$1,$25(a0)
	bne.s loc_208c0e
	tst.w $12(a1)
	beq.s loc_208c0e
	bmi.w loc_208e42
loc_208c0e:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208e42
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208e42
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208c44
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208c44:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208c52
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208c52:
	cmp.w d4,d5
	bcs.w loc_208ce6
	cmpi.b #$1,$25(a0)
	beq.w loc_208e42
	cmpi.b #$a,$0(a0)
	bne.s loc_208c74
	btst.b #$1,$22(a1)
	bne.w loc_208e42
loc_208c74:
	cmpi.b #$4,d5
	bls.w loc_208e42
	bsr.w sub_208e92
	move.l d0,-(a7)
	bsr.w sub_208a40
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208c9e
	tst.w $10(a1)
	beq.s loc_208cce
	bpl.s loc_208ca6
	bra.s loc_208cce
loc_208c9e:
	tst.w $10(a1)
	beq.s loc_208cce
	bpl.s loc_208cce
loc_208ca6:
	bsr.w sub_208e52
	btst.b #$1,$22(a1)
	bne.s loc_208cc4
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208cc4:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208cce:
	bsr.w sub_208f08
	bsr.w sub_208e52
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208ce6:
	cmpi.b #$19,$0(a0)
	bne.s loc_208cf8
	btst.b #$2,$22(a1)
	bne.w loc_208e42
loc_208cf8:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208d0e
	bmi.w loc_208dde
loc_208d0e:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208d20
	tst.w $12(a1)
	beq.s loc_208d20
	bmi.w loc_208e42
loc_208d20:
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
	beq.s loc_208d6c
	bpl.s loc_208d4c
	neg.b d0
loc_208d4c:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d96).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208d6c
	tst.w $10(a0)
	bpl.s loc_208d68
	neg.w d1
loc_208d68:
	add.w d1,$8(a1)
loc_208d6c:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208dd6
	tst.w $12(a0)
	bmi.s loc_208daa
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e28).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208daa
	add.w d1,$c(a1)
	bra.w loc_208e42
loc_208daa:
	tst.w $12(a0)
	bpl.s loc_208dd6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207040).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208dd6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20740c).l
	movem.l (a7)+,a0-a1
	bra.s loc_208e42
loc_208dd6:
	bsr.w sub_208ab2
	moveq #$1,d0
	rts
loc_208dde:
	cmpi.b #$1,$25(a0)
	beq.s loc_208e42
	cmpi.b #$9,$0(a0)
	beq.s loc_208e42
	cmpi.b #$a,$0(a0)
	bne.s loc_208e08
	cmpi.b #$2,$25(a0)
	beq.s loc_208e28
	btst.b #$1,$1(a0)
	bne.s loc_208e28
	bra.s loc_208e42
loc_208e08:
	btst.b #$1,$22(a1)
	bne.s loc_208e28
	tst.w $12(a0)
	beq.s loc_208e28
	bmi.s loc_208e28
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20740c).l
	movem.l (a7)+,a0-a1
loc_208e28:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208f08
	bsr.w sub_208a40
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208e42:
	bsr.w sub_208f08
	bsr.w sub_208a40
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208e52:
	tst.w $10(a0)
	beq.s loc_208e90
	cmpi.b #$a,$0(a0)
	beq.s loc_208e90
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208e6c
	neg.b d0
loc_208e6c:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d96).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208e90
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20740c).l
	movem.l (a7)+,a0-a1
loc_208e90:
	rts

sub_208e92:
	cmpi.b #$a,$0(a0)
	bne.s loc_208ea2
	move.b #$0,$20(a1)
	rts
loc_208ea2:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208ef6
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208f06
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208ec4
	tst.w $10(a2)
	beq.s loc_208f06
loc_208ec4:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208ed6
	cmp.w $8(a2),d1
	bcs.s loc_208f06
	bra.s loc_208edc
loc_208ed6:
	cmp.w $8(a2),d1
	bcc.s loc_208f06
loc_208edc:
	cmpi.b #$15,$0(a0)
	beq.s loc_208f06
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20740c).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208ef6:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208f06:
	rts

sub_208f08:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208f22
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208f22
	move.b #$0,$20(a1)
loc_208f22:
	rts
	.incbin 36644, 374
loc_20909a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2090a8(pc,d0.w),d0
	jmp dat_2090a8(pc,d0.w)
dat_2090a8:
	.incbin 37032, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_20909a
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_2090fe
	tst.b $1(a0)
	bpl.s loc_209106
loc_2090fe:
	move.w dat_209158(pc,d0.w),d1
	jsr dat_209158(pc,d1.w)
loc_209106:
	bsr.w sub_203a60
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209138
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209138:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b0c
	rts
dat_209158:
	.incbin 37208, 26
	addq.b #$2,$24(a0)
	move.l #$2094da,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2091c8
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2094e0,$4(a0)
	bra.s loc_20920a
loc_2091c8:
	btst.l #$3,d0
	beq.s loc_2091f6
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20952a,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c7e6).l
	move.l (a7)+,d0
	bra.s loc_20920a
loc_2091f6:
	btst.b #$1,$1(a0)
	beq.s loc_20920a
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20920a:
	btst.l #$1,d0
	beq.s loc_209216
	bset.b #$5,$2(a0)
loc_209216:
	andi.w #$2,d0
	move.w dat_209222(pc,d0.w),$30(a0)
	rts
dat_209222:
	dc.b $f0,$00,$f6,$00

sub_209226:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208b8e).l
	tst.b $1(a0)
	bpl.s loc_209242
	lea ($d000).w,a1
	bsr.s sub_209226
	bne.s loc_209244
loc_209242:
	rts
loc_209244:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20227e).l
	lea (dat_2094cc).l,a1
	bra.w sub_205c6a
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 37528, 162

sub_20933a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208b80).l
	tst.b $1(a0)
	bpl.s loc_209356
	lea ($d000).w,a1
	bsr.s sub_20933a
	bne.s loc_209358
loc_209356:
	rts
loc_209358:
	move.b #$10,$24(a0)
	subq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	neg.w $12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jsr (sub_20227e).l
	lea (dat_2094cc).l,a1
	bra.w sub_205c6a
	.incbin 37778, 314
dat_2094cc:
	.incbin 38092, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2095c6(pc,d0.w),d1
	jmp dat_2095c6(pc,d1.w)
dat_2095c6:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2095d0:
	.incbin 38352, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209628
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209620
	moveq #$0,d1
	bra.s loc_209628
loc_209620:
	cmpi.w #$3,d1
	bcs.s loc_209628
	moveq #$2,d1
loc_209628:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209644
	moveq #$6,d1
loc_209644:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2095d0).l,a1
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
	beq.s loc_209694
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20968c
	moveq #$0,d0
	bra.s loc_209694
loc_20968c:
	cmpi.w #$3,d0
	bcs.s loc_209694
	moveq #$2,d0
loc_209694:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209762
	dbf d0,loc_209694
	bclr.b #$7,(a2)
	bra.s loc_2096ea
loc_2096a6:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2096d2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2096ca
	moveq #$0,d0
	bra.s loc_2096d2
loc_2096ca:
	cmpi.w #$3,d0
	bcs.s loc_2096d2
	moveq #$2,d0
loc_2096d2:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209762
	dbf d0,loc_2096d2
	bclr.b #$7,(a2)
	bsr.w sub_207b5a
	bne.w loc_20976e
loc_2096ea:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209a34,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209740
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209740
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209740:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209762:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2096a6
loc_20976e:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209794
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20978c
	moveq #$0,d0
	bra.s loc_209794
loc_20978c:
	cmpi.w #$3,d0
	bcs.s loc_209794
	moveq #$2,d0
loc_209794:
	lea $1(a2),a3
loc_209798:
	btst.b #$0,-(a3)
	bne.w sub_203b0c
	dbf d0,loc_209798
	tst.b $1(a0)
	bmi.s loc_2097c8
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209842
loc_2097c8:
	tst.w ($ff190e).l
	bne.s loc_2097d8
	move.b ($ff1913).l,$1a(a0)
loc_2097d8:
	bra.w sub_203a60
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209846
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209828
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209820
	moveq #$0,d1
	bra.s loc_209828
loc_209820:
	cmpi.w #$3,d1
	bcs.s loc_209828
	moveq #$2,d1
loc_209828:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209a2c).l,a1
	bsr.w sub_205c6a
	bra.w sub_203a60
loc_209842:
	bra.w sub_203b0c

sub_209846:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209896
	bset.b #$1,($ff150d).l
	beq.s loc_209880
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209896
	bset.b #$2,($ff150d).l
	bne.s loc_209896
loc_209880:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c2a).l
loc_209896:
	jmp (sub_20227e).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2098aa(pc,d0.w),d1
	jmp dat_2098aa(pc,d1.w)
dat_2098aa:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_2098c6
	move.w d0,d5
loc_2098c6:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_2098d6
loc_2098ce:
	bsr.w sub_207b44
	bne.w loc_20998c
loc_2098d6:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209a34,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209934
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209934
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209934:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_20997c
	move.w d4,d0
	jsr (sub_200782).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_20997c
	subi.w #$80,d4
	bcc.s loc_20997c
	move.w #$288,d4
loc_20997c:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_2098ce
loc_20998c:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_20227e).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203a0a
	addi.w #$18,$12(a0)
	bmi.s loc_2099ec
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_2099ec
	jsr (sub_206ed6).l
	tst.w d1
	bpl.s loc_2099ec
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_2099ec:
	tst.b ($ff1916).l
	beq.s loc_209a28
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209a28
	bra.w sub_203a60
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209846
	lea (dat_209a2c).l,a1
	bsr.w sub_205c6a
	bra.w sub_203a60
loc_209a28:
	bra.w sub_203b0c
dat_209a2c:
	.incbin 39468, 852
loc_209d80:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209dae(pc,d0.w),d0
	jsr dat_209dae(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209dac
	cmpi.w #$5a,($f786).w
	bcs.s loc_209da6
	btst.b #$0,($ff1505).l
	bne.s loc_209dac
loc_209da6:
	jmp (sub_203a60).l
loc_209dac:
	rts
dat_209dae:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a388,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209de2
	move.b #$13,$1a(a0)
loc_209de2:
	rts
loc_209de4:
	tst.b ($ff0f01).l
	beq.s loc_209df2
	jmp (sub_203b0c).l
loc_209df2:
	cmpi.b #$a,$28(a0)
	beq.w loc_209d80
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209e16(pc,d0.w),d0
	jsr dat_209e16(pc,d0.w)
	jsr (sub_203a60).l
	jmp (loc_207b7a).l
dat_209e16:
	.incbin 40470, 312
	beq.s loc_209f68
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209f60
	moveq #$0,d1
	bra.s loc_209f68
loc_209f60:
	cmpi.w #$3,d1
	bcs.s loc_209f68
	moveq #$2,d1
loc_209f68:
	add.w d1,d0
	rts
	.incbin 40812, 48
	tst.b $28(a0)
	bne.s loc_209fb0
	tst.b ($ff0f01).l
	beq.s loc_209fb0
	jmp (loc_207b7a).l
loc_209fb0:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209de4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209fc8(pc,d0.w),d1
	jmp dat_209fc8(pc,d1.w)
dat_209fc8:
	.incbin 40904, 336
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a12a(pc,d0.w),d1
	jsr dat_20a12a(pc,d1.w)
	bra.w sub_203a60
dat_20a12a:
	.incbin 41258, 1056
loc_20a54a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a55e(pc,d0.w),d0
	jsr dat_20a55e(pc,d0.w)
	jmp (sub_203a60).l
dat_20a55e:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a59e,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a598
	jmp (sub_203b0c).l
loc_20a598:
	subq.w #$2,$c(a0)
	rts
	.incbin 42398, 82
	tst.b $28(a0)
	bmi.w loc_20a54a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a606(pc,d0.w),d0
	jmp dat_20a606(pc,d0.w)
dat_20a606:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a6a0,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a636
	move.b #$3,$1a(a0)
	bra.s loc_20a656
loc_20a636:
	tst.w ($ff1588).l
	beq.s loc_20a644
	move.b #$2,$1a(a0)
loc_20a644:
	tst.b $28(a0)
	beq.s loc_20a656
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a656:
	tst.b $28(a0)
	bne.s loc_20a69a
	tst.b $29(a0)
	beq.s loc_20a686
	tst.w ($ff1512).l
	beq.s loc_20a672
	bclr.b #$5,$2(a0)
	bra.s loc_20a69a
loc_20a672:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a69a
	eori.b #$20,$2(a0)
	bra.s loc_20a69a
loc_20a686:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a69a
	move.b #$2,$1a(a0)
loc_20a69a:
	jmp (sub_203a60).l
	.incbin 42656, 168

sub_20a748:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a764
	move.l d1,(a3)
loc_20a764:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a78e
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c2a).l
loc_20a78e:
	rts
loc_20a790:
	tst.w ($ff1588).l
	beq.s loc_20a7e6
	bsr.w sub_20a9e2
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
	lea (dat_20ab42).l,a2
	moveq #$2,d6
	bsr.w sub_20ab9a
	bra.w loc_20a840
loc_20a7e6:
	tst.b ($ff1511).l
	beq.s loc_20a80a
	bpl.s loc_20a7f4
	bsr.w sub_20a98c
loc_20a7f4:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20aa7c
loc_20a80a:
	tst.b ($ff150f).l
	beq.s loc_20a840
	bpl.s loc_20a818
	bsr.w sub_20a978
loc_20a818:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a83c
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a83c:
	bsr.w sub_20aa72
loc_20a840:
	tst.w ($ff1588).l
	bne.w loc_20a8ec
	tst.b ($ff1510).l
	beq.w loc_20a8ec
	tst.w ($f63a).w
	bne.w loc_20a8ec
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a94a
	tst.b ($f7cc).w
	bne.s loc_20a896
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a896
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a896
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a896
	move.b #$9,(a1)
loc_20a896:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20ab88
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20ab92
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a8e8
	move.w #$63,d1
loc_20a8e8:
	bsr.w sub_20ab92
loc_20a8ec:
	tst.b ($ff150e).l
	beq.s loc_20a8fe
	clr.b ($ff150e).l
	bsr.w sub_20ab68
loc_20a8fe:
	tst.b ($f7d6).w
	beq.s loc_20a948
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a91e
	move.l #$6d400001,d0
loc_20a91e:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20aa00
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a93e
	move.l #$6e800001,d0
loc_20a93e:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20aa00
loc_20a948:
	rts
loc_20a94a:
	btst.b #$7,($ff152e).l
	bne.s loc_20a976
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_20740c
	move.b #$1,($ff150c).l
loc_20a976:
	rts

sub_20a978:
	move.l #$73600002,($c00004).l
	lea dat_20a9de(pc),a2
	move.w #$2,d2
	bra.s loc_20a9a8

sub_20a98c:
	lea ($c00000).l,a6
	bsr.w sub_20ab68
	move.l #$70600002,($c00004).l
	lea dat_20a9d6(pc),a2
	move.w #$6,d2
loc_20a9a8:
	lea (dat_2330bc).l,a1
loc_20a9ae:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a9ca
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a9be:
	move.l (a3)+,(a6)
	dbf d1,loc_20a9be
loc_20a9c4:
	dbf d2,loc_20a9ae
	rts
loc_20a9ca:
	move.l #$0,(a6)
	dbf d1,loc_20a9ca
	bra.s loc_20a9c4
dat_20a9d6:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a9de:
	dc.b $ff,$ff,$00,$00

sub_20a9e2:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20ab5e
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20ab5e

sub_20aa00:
	lea (dat_20ab3a).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20aa10:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aa14:
	sub.l d3,d1
	bcs.s loc_20aa1c
	addq.w #$1,d2
	bra.s loc_20aa14
loc_20aa1c:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aa26
	move.w #$1,d4
loc_20aa26:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20aa32
	tst.w d6
	bne.s loc_20aa64
loc_20aa32:
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
loc_20aa58:
	addi.l #$400000,d0
	dbf d6,loc_20aa10
	rts
loc_20aa64:
	moveq #$f,d5
loc_20aa66:
	move.l #$0,(a6)
	dbf d5,loc_20aa66
	bra.s loc_20aa58

sub_20aa72:
	lea (dat_20ab42).l,a2
	moveq #$2,d6
	bra.s loc_20aa84

sub_20aa7c:
	lea (dat_20ab36).l,a2
	moveq #$5,d6
loc_20aa84:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20aa8c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aa90:
	sub.l d3,d1
	bcs.s loc_20aa98
	addq.w #$1,d2
	bra.s loc_20aa90
loc_20aa98:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aaa2
	move.w #$1,d4
loc_20aaa2:
	tst.w d4
	beq.s loc_20aad0
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
loc_20aad0:
	addi.l #$400000,d0
	dbf d6,loc_20aa8c
	rts
	.incbin 43740, 32
loc_20aafc:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ab00:
	sub.l d3,d1
	bcs.s loc_20ab08
	addq.w #$1,d2
	bra.s loc_20ab00
loc_20ab08:
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
	dbf d6,loc_20aafc
	rts
dat_20ab36:
	dc.b $00,$01,$86,$a0
dat_20ab3a:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20ab42:
	dc.b $00,$00,$00,$64
dat_20ab46:
	dc.b $00,$00,$00,$0a
dat_20ab4a:
	dc.b $00,$00,$00,$01
dat_20ab4e:
	.incbin 43854, 16

sub_20ab5e:
	moveq #$3,d6
	lea (dat_20ab4e).l,a2
	bra.s sub_20ab9a

sub_20ab68:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20ab7e
	moveq #$9,d1
loc_20ab7e:
	lea (dat_20ab4a).l,a2
	moveq #$0,d6
	bra.s sub_20ab9a

sub_20ab88:
	lea (dat_20ab4a).l,a2
	moveq #$0,d6
	bra.s sub_20ab9a

sub_20ab92:
	lea (dat_20ab46).l,a2
	moveq #$1,d6

sub_20ab9a:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20aba2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aba6:
	sub.l d3,d1
	bcs.s loc_20abae
	addq.w #$1,d2
	bra.s loc_20aba6
loc_20abae:
	add.l d3,d1
	tst.w d2
	beq.s loc_20abb8
	move.w #$1,d4
loc_20abb8:
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
	dbf d6,loc_20aba2
	rts
	.incbin 44014, 4044
	move.b $28(a0),d0
	subq.b #$1,d0
	bmi.s loc_20bbc6
	bra.w loc_20bde2
loc_20bbc6:
	jsr (sub_20e71e).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bbe6(pc,d0.w),d0
	jsr dat_20bbe6(pc,d0.w)
	jsr (sub_203a60).l
	jmp (loc_207b7a).l
dat_20bbe6:
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
	lea dat_20bd42(pc),a1
	tst.b $28(a0)
	bmi.s loc_20bc30
	lea dat_20bd84(pc),a1
	st $3f(a0)
loc_20bc30:
	move.l a1,$4(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20bc46
	addq.b #$2,$24(a0)
	move.w #$3d,$2a(a0)
loc_20bc46:
	rts
	addi.w #$ffff,$2a(a0)
	bne.s loc_20bc64
	move.b #$25,$20(a0)
	addq.b #$2,$24(a0)
	addq.b #$1,$1c(a0)
	move.w #$33,$2a(a0)
loc_20bc64:
	lea (dat_20bd2e).l,a1
	jsr (sub_205c6a).l
	jmp (sub_203a60).l
	addi.w #$ffff,$2a(a0)
	bne.s loc_20bcd4
	move.b #$26,$20(a0)
	addq.b #$2,$24(a0)
	addq.b #$1,$1c(a0)
	move.l #$8000,$30(a0)
	move.w #$20,$2a(a0)
	move.l #$ffff8000,$2c(a0)
	tst.b $28(a0)
	bpl.s loc_20bcb6
	move.w #$30,$2a(a0)
	move.l #$ffffc000,$2c(a0)
loc_20bcb6:
	move.w $8(a0),d0
	lea ($d000).w,a1
	sub.w $8(a1),d0
	bpl.s loc_20bcd4
	neg.l $2c(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20bcd4:
	bra.s loc_20bc64
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20bd2a
	move.w #$41,$2a(a0)
	tst.b $28(a0)
	bpl.s loc_20bd00
	move.w #$61,$2a(a0)
loc_20bd00:
	neg.l $30(a0)
	tst.b $3f(a0)
	beq.s loc_20bd2a
	jsr (sub_207b44).l
	bne.s loc_20bd2a
	move.b $0(a0),$0(a1)
	move.l $8(a0),$8(a1)
	move.l $c(a0),$c(a1)
	move.b #$1,$28(a1)
loc_20bd2a:
	bra.w loc_20bc64
dat_20bd2e:
	.incbin 48430, 20
dat_20bd42:
	.incbin 48450, 66
dat_20bd84:
	.incbin 48516, 94
loc_20bde2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bdf6(pc,d0.w),d0
	jsr dat_20bdf6(pc,d0.w)
	jmp (sub_203a60).l
dat_20bdf6:
	dc.b $00,$06,$00,$3c,$00,$56
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$6,$17(a0)
	move.b #$6,$19(a0)
	move.b #$6,$16(a0)
	move.w #$a7ae,$2(a0)
	move.l #$209a34,$4(a0)
	move.w #$b4,$2a(a0)
	addi.w #$ffff,$2a(a0)
	beq.s loc_20be4c
	addi.l #$10000,$c(a0)
	lea dat_20be52(pc),a1
	jmp (sub_205c6a).l
loc_20be4c:
	jmp (sub_203b0c).l
dat_20be52:
	.incbin 48722, 16
	tst.b $28(a0)
	bmi.w loc_20be6e
	bra.w loc_20c13c
loc_20be6e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be88(pc,d0.w),d0
	jsr dat_20be88(pc,d0.w)
	jsr (sub_203a60).l
	jmp (loc_207b7a).l
dat_20be88:
	.incbin 48776, 22
	cmpi.b #$2,($ff152e).l
	bne.w loc_20beba
	tst.b ($ff156a).l
	beq.w loc_20beba
	jmp (sub_203b0c).l
loc_20beba:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$0,$18(a0)
	move.w #$3af,$2(a0)
	move.l #$20c112,$4(a0)
	move.w #$7,$30(a0)
	tst.w ($ff1906).l
	bne.w loc_20befc
	lea ($d000).w,a6
	lea $3e(a0),a5
	bsr.w sub_20befe
	tst.b $3e(a0)
	bne.w loc_20bf82
loc_20befc:
	rts

sub_20befe:
	tst.w $12(a6)
	bmi.w loc_20bf80
	cmpi.b #$4,$24(a6)
	beq.w loc_20bf80
	cmpi.b #$6,$24(a6)
	beq.w loc_20bf80
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ffe8,d0
	subi.w #$10,d0
	bcc.w loc_20bf80
	move.w $8(a6),d0
	sub.w $8(a0),d0
	subi.w #$ffe8,d0
	subi.w #$30,d0
	bcc.w loc_20bf80
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
loc_20bf80:
	rts
loc_20bf82:
	addq.b #$2,$24(a0)
	move.w #$8,$2a(a0)
	move.b #$1,$1a(a0)
	move.w #$d7,d0
	jmp (sub_20227e).l
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20bfe4
	addq.b #$2,$24(a0)
	move.b #$2,$1a(a0)
	move.w #$6,$2a(a0)
	jsr (sub_207b44).l
	bne.w loc_20bfe6
	move.w a1,$2c(a0)
	move.w a0,$2e(a1)
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	lea ($d000).w,a6
	bset.b #$6,$2c(a6)
loc_20bfe4:
	rts
loc_20bfe6:
	jmp (sub_203b0c).l
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20c006
	addq.b #$2,$24(a0)
	move.w #$2,$2a(a0)
	move.b #$3,$1a(a0)
loc_20c006:
	rts
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20c022
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	move.b #$0,$1a(a0)
loc_20c022:
	rts
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20c04e
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	tst.w $30(a0)
	beq.s loc_20c04e
	subq.w #$1,$30(a0)
	moveq #$a,d0
	bsr.w sub_20a748
	moveq #$0,d1
	bra.w loc_205fb2
loc_20c04e:
	rts
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20c07a
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	tst.w $30(a0)
	beq.s loc_20c07a
	subq.w #$1,$30(a0)
	moveq #$a,d0
	bsr.w sub_20a748
	moveq #$0,d1
	bra.w loc_205fb2
loc_20c07a:
	rts
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20c096
	addq.b #$2,$24(a0)
	move.w #$4,$2a(a0)
	move.b #$3,$1a(a0)
loc_20c096:
	rts
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20c0b2
	addq.b #$2,$24(a0)
	move.w #$6,$2a(a0)
	move.b #$2,$1a(a0)
loc_20c0b2:
	rts
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20c0fa
	move.w #$9f,d0
	jsr (sub_20227e).l
	addq.b #$2,$24(a0)
	move.b #$0,$1a(a0)
	move.w #$78,$2a(a0)
	movea.w $2c(a0),a1
	move.b #$4,$24(a1)
	tst.b $3e(a0)
	beq.w loc_20c0fa
	sf $3e(a0)
	bclr.b #$0,($d02c).w
	bclr.b #$6,($d02c).w
loc_20c0fa:
	rts
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20c110
	move.b #$2,$24(a0)
	sf $3e(a0)
loc_20c110:
	rts
	.incbin 49426, 42
loc_20c13c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c14a(pc,d0.w),d0
	jmp dat_20c14a(pc,d0.w)
dat_20c14a:
	dc.b $00,$06,$00,$30,$00,$54
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$0,$18(a0)
	move.b #$18,$19(a0)
	move.b #$8,$16(a0)
	move.w #$43af,$2(a0)
	move.l #$20c1aa,$4(a0)
	movea.w $2e(a0),a1
	cmpi.b #$2f,$0(a1)
	beq.w loc_20c18e
	jmp (sub_203b0c).l
loc_20c18e:
	lea dat_20c1a4(pc),a1
	jsr (sub_205c6a).l
	jmp (sub_203a60).l
	jmp (sub_203b0c).l
dat_20c1a4:
	.incbin 49572, 1508
loc_20c788:
	lea dat_20c7da(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c794:
	cmp.w (a1)+,d0
	bcs.s loc_20c79c
	addq.b #$2,d1
	bra.s loc_20c794
loc_20c79c:
	move.b d1,($ff1574).l
	move.w dat_20c7e2(pc,d1.w),d0
	jmp (sub_202448).l

sub_20c7ac:
	lea dat_20c7da(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c7b8:
	cmp.w (a1)+,d0
	bcs.s loc_20c7c0
	addq.b #$2,d1
	bra.s loc_20c7b8
loc_20c7c0:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c7ca
	rts
loc_20c7ca:
	move.b d1,($ff1574).l
	move.w dat_20c7de(pc,d1.w),d0
	jmp (loc_20247a).l
dat_20c7da:
	dc.b $14,$00,$ff,$ff
dat_20c7de:
	dc.b $00,$05,$00,$06
dat_20c7e2:
	dc.b $00,$02,$00,$04

sub_20c7e6:
	cmpi.b #$f,d0
	bne.s loc_20c7f2
	move.w #$4f2,$2(a0)
loc_20c7f2:
	rts
	.incbin 51188, 616
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$433e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20cb58,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	cmpi.b #$2,$28(a0)
	bcs.s loc_20cad2
	jsr (sub_207b5a).l
	beq.s loc_20caa8
	jmp (sub_203b0c).l
loc_20caa8:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$ea,$39(a1)
	move.w a0,$34(a1)
	move.b $28(a0),d0
	andi.b #$1,d0
	add.b d0,d0
	move.b d0,$28(a1)
loc_20cad2:
	bsr.s sub_20cb36
	tst.b ($ff152e).l
	beq.s loc_20cb08
loc_20cadc:
	cmpi.b #$1,$28(a0)
	beq.s loc_20cb08
	tst.b $3a(a0)
	bne.s loc_20cb0a
	moveq #$0,d0
	move.b $3b(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea dat_20cb48(pc,d0.w),a1
	move.b (a1)+,$3a(a0)
	move.b (a1)+,d0
	ext.w d0
	move.w d0,$38(a0)
	move.w (a1)+,$36(a0)
loc_20cb08:
	rts
loc_20cb0a:
	move.w $38(a0),d0
	add.w d0,$36(a0)
	move.w $36(a0),d0
	move.w d0,$10(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	subq.b #$1,$3a(a0)
	beq.s loc_20cb2a
	rts
loc_20cb2a:
	addq.b #$1,$3b(a0)
	andi.b #$3,$3b(a0)
	bra.s loc_20cadc

sub_20cb36:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208b8e).l
dat_20cb48:
	.incbin 52040, 392
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cce4(pc,d0.w),d0
	jsr dat_20cce4(pc,d0.w)
	jmp (sub_203a60).l
dat_20cce4:
	dc.b $00,$04,$00,$3a
	ori.b #$4,$1(a0)
	move.w #$34e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20d02e,$4(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20cd5e(pc,d0.w),d0
	jsr dat_20cd5e(pc,d0.w)
	jsr sub_20cd6e(pc)
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20cd50
	rts
loc_20cd50:
	bra.w loc_20d85c

sub_20cd54:
	lea ($d000).w,a1
	jmp (loc_208b88).l
dat_20cd5e:
	.incbin 52574, 16

sub_20cd6e:
	tst.b $3f(a0)
	beq.s loc_20cdae
	btst.b #$3,$22(a0)
	bne.s loc_20cd88
	tst.b $3e(a0)
	beq.s loc_20cdae
	subq.b #$8,$3e(a0)
	bra.s loc_20cd94
loc_20cd88:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20cdae
	addq.b #$8,$3e(a0)
loc_20cd94:
	move.b $3e(a0),d0
	jsr (sub_200782).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $30(a0),d0
	move.w d0,$c(a0)
loc_20cdae:
	rts
	dc.b $11,$7c,$00,$01,$00,$3f,$4e,$ba
	dc.b $ff,$9c,$4e,$75
loc_20cdbc:
	tst.b $38(a0)
	bne.s loc_20ce00
	move.b #$1,$3f(a0)
	lea (dat_20ce32).l,a1
	cmpi.b #$1,$28(a0)
	beq.s loc_20cddc
	lea (dat_20ce52).l,a1
loc_20cddc:
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
loc_20cdfa:
	jsr sub_20cd54(pc)
	rts
loc_20ce00:
	move.w $34(a0),d0
	move.w d0,$10(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	move.w $36(a0),d0
	add.w d0,$34(a0)
	subq.b #$1,$38(a0)
	bne.s loc_20cdfa
	addq.b #$1,$39(a0)
	cmpi.b #$8,$39(a0)
	bne.s loc_20cdbc
	move.b #$2,$39(a0)
	bra.s loc_20cdbc
dat_20ce32:
	.incbin 52786, 32
dat_20ce52:
	.incbin 52818, 2570
loc_20d85c:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20d880
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20d880:
	jmp (sub_203b0c).l
	.incbin 55430, 916
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$1c,d1
	add.w d1,d0
	bmi.s loc_20dc32
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20dc32
	moveq #$1,d0
	rts
loc_20dc32:
	moveq #$0,d0
	rts
	.incbin 56374, 2792

sub_20e71e:
	tst.b ($ff156a).l
	beq.s loc_20e764
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e736
	tst.b $28(a0)
	beq.s loc_20e764
loc_20e736:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203b0c).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e762
	move.w #$9e,d0
	jsr (sub_20227e).l
loc_20e762:
	addq.l #$4,a7
loc_20e764:
	rts
	.incbin 59238, 334
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e8c2(pc,d0.w),d0
	jmp dat_20e8c2(pc,d0.w)
dat_20e8c2:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20efc0,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20ef80).l,a2
loc_20e910:
	jsr (sub_207b44).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20efc0,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20e962
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20e962:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20e910
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20e98a
	bge.s loc_20e980
	neg.w d0
loc_20e980:
	add.w d0,$a(a0)
	jmp (sub_203a60).l
loc_20e98a:
	addq.b #$4,$24(a0)
	jmp (sub_203a60).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20e9ae
	bge.s loc_20e9a4
	neg.w d0
loc_20e9a4:
	add.w d0,$8(a0)
	jmp (sub_203a60).l
loc_20e9ae:
	addq.b #$4,$24(a0)
	jmp (sub_203a60).l
	tst.b $1e(a0)
	beq.s loc_20e9c8
	subq.b #$1,$1e(a0)
	jmp (sub_203a60).l
loc_20e9c8:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20e9e2
	bge.s loc_20e9d8
	neg.w d0
loc_20e9d8:
	add.w d0,$a(a0)
	jmp (sub_203a60).l
loc_20e9e2:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202448).l
	tst.b $1e(a0)
	beq.s loc_20ea04
	subq.b #$1,$1e(a0)
	jmp (sub_203a60).l
loc_20ea04:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20ea1e
	bge.s loc_20ea14
	neg.w d0
loc_20ea14:
	add.w d0,$8(a0)
	jmp (sub_203a60).l
loc_20ea1e:
	jmp (sub_203b0c).l
	tst.l ($f680).w
	bne.s loc_20ea38
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b0c).l
loc_20ea38:
	rts
	.incbin 59962, 1350
dat_20ef80:
	.incbin 61312, 340

sub_20f0d4:
	jsr (sub_2064de).l
	subq.b #$1,($f66c).w
	bpl.w loc_20f166
	move.b #$a,($f66c).w
	moveq #$0,d0
	move.b ($f666).w,d0
	addq.b #$1,d0
	cmpi.b #$2,d0
	bcs.s loc_20f0f8
	moveq #$0,d0
loc_20f0f8:
	move.b d0,($f666).w
	lsl.w #$3,d0
	movea.l dat_20f168(pc,d0.w),a1
	movea.l dat_20f16c(pc,d0.w),a2
	bsr.s sub_20f156
	lea ($c00004).l,a5
	move.l #$940093a0,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7680,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	movea.l a2,a1
	bsr.s sub_20f156
	lea ($c00004).l,a5
	move.l #$94009360,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$79c0,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	rts

sub_20f156:
	lea ($ff1980).l,a3
	move.w #$bf,d0
loc_20f160:
	move.l (a1)+,(a3)+
	dbf d0,loc_20f160
loc_20f166:
	rts
dat_20f168:
	dc.b $00,$23,$45,$9a
dat_20f16c:
	dc.b $00,$23,$46,$da,$00,$23,$43,$9a
	dc.b $00,$23,$44,$da
dat_20f178:
	.incbin 61816, 16
dat_20f188:
	.incbin 61832, 380
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
	jmp (loc_203a6e).l
loc_20f37e:
	addq.b #$4,$24(a0)
	jmp (loc_203a6e).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f3a2
	bge.s loc_20f398
	neg.w d0
loc_20f398:
	add.w d0,$8(a0)
	jmp (loc_203a6e).l
loc_20f3a2:
	addq.b #$4,$24(a0)
	jmp (loc_203a6e).l
	tst.b $1e(a0)
	beq.s loc_20f3bc
	subq.b #$1,$1e(a0)
	jmp (loc_203a6e).l
loc_20f3bc:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f3d6
	bge.s loc_20f3cc
	neg.w d0
loc_20f3cc:
	add.w d0,$a(a0)
	jmp (loc_203a6e).l
loc_20f3d6:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202448).l
	tst.b $1e(a0)
	beq.s loc_20f3f8
	subq.b #$1,$1e(a0)
	jmp (loc_203a6e).l
loc_20f3f8:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f412
	bge.s loc_20f408
	neg.w d0
loc_20f408:
	add.w d0,$8(a0)
	jmp (loc_203a6e).l
loc_20f412:
	jmp (loc_203b1a).l
	tst.l ($f680).w
	bne.s loc_20f42c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (loc_203b1a).l
loc_20f42c:
	rts
	.incbin 62510, 1690
	jmp ($2064ec).l
	.incbin 64206, 796
	jmp (loc_206294).l
	.incbin 65008, 66064
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 15290
dat_236c76:
	.incbin 224374, 256
dat_236d76:
	.incbin 224630, 4096
dat_237d76:
	.incbin 228726, 4796
dat_239032:
	.incbin 233522, 14964
dat_23caa6:
	.incbin 248486, 934
dat_23ce4c:
	.incbin 249420, 12724
