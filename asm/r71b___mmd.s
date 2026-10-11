; R71B__.MMD
; disassembled from the disc; code only, data comes from data/R71B__.MMD at build time
	.file "R71B__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$1f,$d0
	jmp (loc_201b46).l
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
	bsr.w sub_20207c
	bsr.w sub_202024
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2013c0

sub_200184:
	rts
	.incbin 390, 364

sub_2002f2:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200304:
	move.w d1,(a0)+
	dbf d0,loc_200304
	move.w #$15,d4
loc_20030e:
	move.b #$12,($f62a).w
	bsr.w sub_200704
	bsr.s sub_200324
	bsr.w sub_202442
	dbf d4,loc_20030e
	rts

sub_200324:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20033a:
	bsr.s sub_200368
	dbf d0,loc_20033a
	cmpi.b #$1,($ff1506).l
	bne.s loc_200366
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200360:
	bsr.s sub_200368
	dbf d0,loc_200360
loc_200366:
	rts

sub_200368:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200390
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_20037e
	move.w d1,(a0)+
	rts
loc_20037e:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_20038c
	move.w d1,(a0)+
	rts
loc_20038c:
	addq.w #$2,(a0)+
	rts
loc_200390:
	addq.w #$2,a0
	rts

sub_200394:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20039e:
	move.b #$12,($f62a).w
	bsr.w sub_200704
	bsr.s sub_2003b4
	bsr.w sub_202442
	dbf d4,loc_20039e
	rts

sub_2003b4:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003c4:
	bsr.s sub_2003e2
	dbf d0,loc_2003c4
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003da:
	bsr.s sub_2003e2
	dbf d0,loc_2003da
	rts

sub_2003e2:
	move.w (a0),d2
	beq.s loc_20040e
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_2003f2
	subq.w #$2,(a0)+
	rts
loc_2003f2:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200400
	subi.w #$20,(a0)+
	rts
loc_200400:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_20040e
	subi.w #$200,(a0)+
	rts
loc_20040e:
	addq.w #$2,a0
	rts

sub_200412:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_20042c:
	move.w d1,(a0)+
	dbf d0,loc_20042c
	move.w #$15,d4
loc_200436:
	move.b #$12,($f62a).w
	bsr.w sub_200704
	bsr.s sub_20044c
	bsr.w sub_202442
	dbf d4,loc_200436
	rts

sub_20044c:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200462:
	bsr.s sub_200490
	dbf d0,loc_200462
	cmpi.b #$1,($ff1506).l
	bne.s loc_20048e
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200488:
	bsr.s sub_200490
	dbf d0,loc_200488
loc_20048e:
	rts

sub_200490:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2004bc
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2004a8
	cmp.w d2,d1
	bcs.s loc_2004a8
	move.w d1,(a0)+
	rts
loc_2004a8:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2004b8
	cmp.w d2,d1
	bcs.s loc_2004b8
	move.w d1,(a0)+
	rts
loc_2004b8:
	subq.w #$2,(a0)+
	rts
loc_2004bc:
	addq.w #$2,a0
	rts

sub_2004c0:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2004ca:
	move.b #$12,($f62a).w
	bsr.w sub_200704
	bsr.s sub_2004e0
	bsr.w sub_202442
	dbf d4,loc_2004ca
	rts

sub_2004e0:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004f0:
	bsr.s sub_20050e
	dbf d0,loc_2004f0
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200506:
	bsr.s sub_20050e
	dbf d0,loc_200506
	rts

sub_20050e:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_20054a
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200526
	addq.w #$2,(a0)+
	rts
loc_200526:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_200538
	addi.w #$20,(a0)+
	rts
loc_200538:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_20054a
	addi.w #$200,(a0)+
	rts
loc_20054a:
	addq.w #$2,a0
	rts

sub_20054e:
	lea (dat_2005ba).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200562:
	move.l (a2)+,(a3)+
	dbf d7,loc_200562
	rts

sub_20056a:
	lea (dat_2005ba).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_20057a:
	move.l (a2)+,(a3)+
	dbf d7,loc_20057a
	rts
	.incbin 1410, 56
dat_2005ba:
	.incbin 1466, 330

sub_200704:
	move.w #$2300,sr
loc_200708:
	tst.b ($f62a).w
	bne.s loc_200708
	rts

sub_200710:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200728(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200728(pc,d0.w),d0
	rts
dat_200728:
	.incbin 1832, 640

sub_2009a8:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a04
	move.w d2,d4
	tst.w d3
	bpl.w loc_2009c2
	neg.w d3
loc_2009c2:
	tst.w d4
	bpl.w loc_2009ca
	neg.w d4
loc_2009ca:
	cmp.w d3,d4
	bcc.w loc_2009dc
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a0e(pc,d4.w),d0
	bra.s loc_2009e6
loc_2009dc:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a0e(pc,d3.w),d0
loc_2009e6:
	tst.w d1
	bpl.w loc_2009f2
	neg.w d0
	addi.w #$80,d0
loc_2009f2:
	tst.w d2
	bpl.w loc_2009fe
	neg.w d0
	addi.w #$100,d0
loc_2009fe:
	movem.l (a7)+,d3-d4
	rts
loc_200a04:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a0e:
	.incbin 2574, 258

sub_200b10:
	btst.b #$3,$22(a0)
	beq.s loc_200b24
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b24:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200b46
	move.b $26(a0),d0
	bpl.s loc_200b40
	subq.b #$1,d0
loc_200b40:
	addi.b #$20,d0
	bra.s loc_200b52
loc_200b46:
	move.b $26(a0),d0
	bpl.s loc_200b4e
	addq.b #$1,d0
loc_200b4e:
	addi.b #$1f,d0
loc_200b52:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200ddc
	cmpi.b #$80,d0
	beq.w loc_200d3a
	cmpi.b #$c0,d0
	beq.w loc_200c9e
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
	bsr.w sub_201066
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
	bsr.w sub_201066
	move.w (a7)+,d0
	bsr.w sub_200c72
	tst.w d1
	beq.s loc_200be0
	bpl.s loc_200be2
	cmpi.w #$fff2,d1
	blt.s loc_200c08
	add.w d1,$c(a0)
loc_200be0:
	rts
loc_200be2:
	cmpi.w #$e,d1
	bgt.s loc_200bee
loc_200be8:
	add.w d1,$c(a0)
	rts
loc_200bee:
	tst.b $38(a0)
	bne.s loc_200be8
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c08:
	rts
	.incbin 3082, 34
loc_200c2c:
	rts
	.incbin 3118, 68

sub_200c72:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200c80
	move.b ($f768).w,d2
	move.w d0,d1
loc_200c80:
	btst.l #$0,d2
	bne.s loc_200c8c
	move.b d2,$26(a0)
	rts
loc_200c8c:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200c9e:
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
	bsr.w sub_2011d6
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
	bsr.w sub_2011d6
	move.w (a7)+,d0
	bsr.w sub_200c72
	tst.w d1
	beq.s loc_200d12
	bpl.s loc_200d14
	cmpi.w #$fff2,d1
	blt.w loc_200c2c
	add.w d1,$8(a0)
loc_200d12:
	rts
loc_200d14:
	cmpi.w #$e,d1
	bgt.s loc_200d20
loc_200d1a:
	add.w d1,$8(a0)
	rts
loc_200d20:
	tst.b $38(a0)
	bne.s loc_200d1a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d3a:
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
	bsr.w sub_201066
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
	bsr.w sub_201066
	move.w (a7)+,d0
	bsr.w sub_200c72
	tst.w d1
	beq.s loc_200db4
	bpl.s loc_200db6
	cmpi.w #$fff2,d1
	blt.w loc_200c08
	sub.w d1,$c(a0)
loc_200db4:
	rts
loc_200db6:
	cmpi.w #$e,d1
	bgt.s loc_200dc2
loc_200dbc:
	sub.w d1,$c(a0)
	rts
loc_200dc2:
	tst.b $38(a0)
	bne.s loc_200dbc
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200ddc:
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
	bsr.w sub_2011d6
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
	bsr.w sub_2011d6
	move.w (a7)+,d0
	bsr.w sub_200c72
	tst.w d1
	beq.s loc_200e56
	bpl.s loc_200e58
	cmpi.w #$fff2,d1
	blt.w loc_200c2c
	sub.w d1,$8(a0)
loc_200e56:
	rts
loc_200e58:
	cmpi.w #$e,d1
	bgt.s loc_200e64
loc_200e5e:
	sub.w d1,$8(a0)
	rts
loc_200e64:
	tst.b $38(a0)
	bne.s loc_200e5e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200e7e:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200e94
	andi.w #$380,d0
loc_200e94:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200ef4
	bmi.s loc_200ef8
	cmpi.b #$5,($ff1506).l
	beq.s loc_200ec4
	cmpi.b #$6,($ff1506).l
	bne.s loc_200eca
loc_200ec4:
	andi.w #$7fff,$2(a0)
loc_200eca:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200eda
	bclr.b #$6,$1(a0)
loc_200eda:
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
loc_200ef4:
	movea.l d1,a1
	rts
loc_200ef8:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f60
	btst.b #$6,$1(a0)
	bne.s loc_200f26
	cmpi.b #$14,d1
	bne.w loc_20104a
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_20104a
loc_200f26:
	cmpi.b #$15,d1
	bne.s loc_200f34
	move.w #$60,d1
	bra.w loc_20104a
loc_200f34:
	cmpi.b #$1e,d1
	bne.s loc_200f42
	move.w #$61,d1
	bra.w loc_20104a
loc_200f42:
	cmpi.b #$1f,d1
	bne.s loc_200f50
	move.w #$62,d1
	bra.w loc_20104a
loc_200f50:
	cmpi.b #$32,d1
	bne.w loc_20104a
	move.w #$63,d1
	bra.w loc_20104a
loc_200f60:
	cmpi.b #$5,($ff1506).l
	bne.w loc_200fc6
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_200fb0
	cmpi.b #$6,d1
	beq.s loc_200fb0
	tst.b ($ff1956).l
	beq.w loc_20104a
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_200fc0
	cmpi.b #$3c,d1
	beq.s loc_200fc0
	cmpi.b #$37,d1
	beq.s loc_200fc0
	cmpi.b #$2f,d1
	beq.s loc_200fc0
	cmpi.b #$16,d1
	beq.s loc_200fc0
	bra.w loc_20104a
loc_200fb0:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_20104a
loc_200fc0:
	addq.b #$1,d1
	bra.w loc_20104a
loc_200fc6:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201036
	cmpi.b #$3,$0(a0)
	bcc.w loc_20104a
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20104a
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_200ffa
	move.w #$6a,d1
	bra.s loc_20104a
loc_200ffa:
	cmpi.b #$48,d1
	bne.s loc_201006
	move.w #$6b,d1
	bra.s loc_20104a
loc_201006:
	cmpi.b #$4a,d1
	bne.s loc_201012
	move.w #$6c,d1
	bra.s loc_20104a
loc_201012:
	cmpi.b #$10,d1
	bne.s loc_20101e
	move.w #$6d,d1
	bra.s loc_20104a
loc_20101e:
	cmpi.b #$63,d1
	bne.s loc_20102a
	move.w #$6e,d1
	bra.s loc_20104a
loc_20102a:
	cmpi.b #$43,d1
	bne.s loc_20104a
	move.w #$6f,d1
	bra.s loc_20104a
loc_201036:
	btst.b #$6,$1(a0)
	beq.s loc_20104a
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_20104a
	move.w #$51,d1
loc_20104a:
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

sub_201066:
	bsr.w sub_200e7e
	cmpi.l #$210000,d1
	beq.s loc_201080
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201080
	btst.l d5,d4
	bne.s loc_20108e
loc_201080:
	add.w a3,d2
	bsr.w sub_201126
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_20108e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201080
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2010b4
	not.w d1
	neg.b (a4)
loc_2010b4:
	btst.l #$c,d4
	beq.s loc_2010c4
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2010c4:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2344a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2010e0
	neg.w d0
loc_2010e0:
	tst.w d0
	beq.s loc_201080
	bmi.s loc_2010fc
	cmpi.b #$10,d0
	beq.s loc_201118
loc_2010ec:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2010fc:
	cmpa.w #$10,a3
	bne.s loc_20110c
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2010ec
loc_20110c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201080
loc_201118:
	sub.w a3,d2
	bsr.w sub_201126
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201126:
	bsr.w sub_200e7e
	cmpi.l #$210000,d1
	beq.s loc_201140
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201140
	btst.l d5,d4
	bne.s loc_20114e
loc_201140:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20114e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201140
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201174
	not.w d1
	neg.b (a4)
loc_201174:
	btst.l #$c,d4
	beq.s loc_201184
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201184:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2344a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011a0
	neg.w d0
loc_2011a0:
	tst.w d0
	beq.s loc_201140
	bmi.s loc_2011b6
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
	bpl.w loc_201140
	not.w d1
	rts

sub_2011d6:
	bsr.w sub_200e7e
	cmpi.l #$210000,d1
	beq.s loc_2011f0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011f0
	btst.l d5,d4
	bne.s loc_2011fe
loc_2011f0:
	add.w a3,d3
	bsr.w sub_201286
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2011fe:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011f0
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20122c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20122c:
	btst.l #$b,d4
	beq.s loc_201234
	neg.b (a4)
loc_201234:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2354a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201250
	neg.w d0
loc_201250:
	tst.w d0
	beq.s loc_2011f0
	bmi.s loc_20126c
	cmpi.b #$10,d0
	beq.s loc_201278
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20126c:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011f0
loc_201278:
	sub.w a3,d3
	bsr.w sub_201286
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201286:
	bsr.w sub_200e7e
	cmpi.l #$210000,d1
	beq.s loc_2012a0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012a0
	btst.l d5,d4
	bne.s loc_2012ae
loc_2012a0:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2012ae:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012a0
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012dc
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012dc:
	btst.l #$b,d4
	beq.s loc_2012e4
	neg.b (a4)
loc_2012e4:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2354a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201300
	neg.w d0
loc_201300:
	tst.w d0
	beq.s loc_2012a0
	bmi.s loc_201316
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201316:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012a0
	not.w d1
	rts

sub_201326:
	rts
	.incbin 4904, 152
loc_2013c0:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2013e0
	tst.b ($ff0f01).l
	bne.s loc_2013e0
	move.b #$1,($ff156a).l
loc_2013e0:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201446
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207664
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201446
	move.b #$1,($ff1508).l
loc_201446:
	bset.b #$7,($f600).w
	bsr.w sub_202434
	tst.b ($ff156e).l
	bne.s loc_20146c
	btst.b #$7,($ff152e).l
	beq.s loc_2014a2
	bset.b #$0,($ff151d).l
	beq.s loc_201478
loc_20146c:
	bsr.w sub_2004c0
	bclr.b #$0,($ff151d).l
loc_201478:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201512
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2014a0
	bclr.b #$7,($ff152e).l
loc_2014a0:
	rts
loc_2014a2:
	bset.b #$0,($ff151d).l
	beq.s loc_2014b0
	bsr.w sub_200394
loc_2014b0:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2014cc
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2014f4
loc_2014cc:
	tst.b ($ff1508).l
	bne.s loc_201512
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2014f4:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2014fc:
	move.l #$0,(a1)+
	dbf d6,loc_2014fc
	move.b #$c,($f62a).w
	bsr.w sub_200704
	rts
loc_201512:
	cmpi.w #$800,($f78e).w
	bne.s loc_201530
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201530:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201546
	btst.b #$7,($ff152e).l
	beq.s loc_20154c
loc_201546:
	move.l #$eee0eee,d0
loc_20154c:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201554:
	move.l d0,(a1)+
	dbf d6,loc_201554
loc_20155a:
	move.b #$c,($f62a).w
	bsr.w sub_200704
	bsr.w sub_202442
	bne.s loc_20155a
	tst.l ($f680).w
	bsr.w sub_201a00
	moveq #$0,d0
	lea (dat_20f8c2).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201584
	bsr.w sub_202548
loc_201584:
	moveq #$1,d0
	bsr.w sub_202548
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2015a0:
	move.l d0,(a1)+
	dbf d1,loc_2015a0
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2015b2:
	move.l d0,(a1)+
	dbf d1,loc_2015b2
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2015c2:
	move.l d0,(a1)+
	dbf d1,loc_2015c2
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_2015d4:
	move.l d0,(a1)+
	dbf d1,loc_2015d4
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2015e4:
	move.l d0,(a1)+
	dbf d1,loc_2015e4
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2015f4:
	move.l d0,(a1)+
	dbf d1,loc_2015f4
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20211e
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
	bsr.w sub_20056a
	moveq #$3,d0
	bsr.w sub_20054e
	bsr.w sub_202798
	bsr.w sub_2028b2
	bset.b #$2,($f754).w
	bsr.w sub_20335c
	bsr.w sub_203252
	jsr (sub_201326).l
	bsr.w sub_20193a
loc_201674:
	move.b #$c,($f62a).w
	bsr.w sub_200704
	bsr.w sub_202442
	bne.s loc_201674
	tst.l ($f680).w
	bne.s loc_201674
	bsr.w sub_2018c6
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201a60
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2016d8
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2016d8:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20171a
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20171a:
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
	jsr (sub_20f8bc).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2017aa
loc_2017a4:
	bsr.w sub_200412
	bra.s loc_2017b8
loc_2017aa:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2017a4
	bsr.w sub_2002f2
loc_2017b8:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2017c6:
	move.b #$8,($f62a).w
	bsr.w sub_200704
	tst.b ($f7cc).w
	bne.s loc_2017e4
	btst.b #$7,($f605).w
	beq.s loc_2017e4
	eori.b #$1,($f63a).w
loc_2017e4:
	btst.b #$0,($f63a).w
	beq.w loc_201856
	bsr.w sub_201ac4
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201834
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2017c6
	subq.b #$1,($ff1508).l
	bpl.s loc_201816
	clr.b ($ff1508).l
loc_201816:
	move.w #$e,d0
	jsr (sub_205a1a).l
	bsr.w sub_207664
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201842
loc_201834:
	andi.b #$70,d0
	beq.w loc_2017c6
	clr.b ($ff1508).l
loc_201842:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2013c0
loc_201856:
	bsr.w sub_201b0a
	addq.w #$1,($ff1504).l
	jsr (sub_20767a).l
	jsr (sub_203770).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2013c0
	tst.w ($ff1502).l
	bne.w loc_2013c0
	tst.w ($ff1906).l
	bne.s loc_20189e
	cmpi.b #$6,($d024).w
	bcs.s loc_20189e
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2018a2
loc_20189e:
	bsr.w sub_2028b2
loc_2018a2:
	jsr (sub_20391a).l
	tst.w ($ff190e).l
	bne.s loc_2018b4
	bsr.w sub_200184
loc_2018b4:
	jsr (sub_20cdec).l
	bsr.w sub_202442
	bsr.w sub_20196c
	bra.w loc_2017c6

sub_2018c6:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2018de
	move.w #$78,$30(a1)
loc_2018de:
	rts
	.incbin 6368, 90

sub_20193a:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_20194c(pc,d0.w),($f796).w
	rts
dat_20194c:
	.incbin 6476, 32

sub_20196c:
	subq.b #$1,($ff1910).l
	bpl.s loc_20198a
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_20198a:
	subq.b #$1,($ff1912).l
	bpl.s loc_2019a8
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_2019a8:
	subq.b #$1,($ff1914).l
	bpl.s loc_2019d0
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_2019d0
	move.b #$0,($ff1915).l
loc_2019d0:
	tst.b ($ff1916).l
	beq.s loc_2019fe
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_2019fe:
	rts

sub_201a00:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a22
	cmpi.b #$2,d0
	bne.s loc_201a22
	add.b ($ff156a).l,d0
loc_201a22:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a3a(pc,d1.w),d0
	jmp (sub_205a1a).l
dat_201a3a:
	.incbin 6714, 38

sub_201a60:
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

sub_201ac4:
	move.w #$ab,d0
	jsr (sub_20220c).l
	bset.b #$7,($f63a).w
	bne.s loc_201b08
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201aee
loc_201ae4:
	move.w #$d5,d0
	jmp (sub_205a1a).l
loc_201aee:
	tst.b ($ff151f).l
	bne.s loc_201ae4
	tst.b ($ff1520).l
	bne.s loc_201ae4
	move.w #$90,d0
	jmp (sub_205a1a).l
loc_201b08:
	rts

sub_201b0a:
	bclr.b #$7,($f63a).w
	beq.s loc_201b44
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b2a
loc_201b20:
	move.w #$d6,d0
	jmp (sub_205a1a).l
loc_201b2a:
	tst.b ($ff151f).l
	bne.s loc_201b20
	tst.b ($ff1520).l
	bne.s loc_201b20
	move.w #$91,d0
	jmp (sub_205a1a).l
loc_201b44:
	rts
loc_201b46:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201bd2
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201b82
	move.w #$700,d0
loc_201b7e:
	dbf d0,loc_201b7e
loc_201b82:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201bb8(pc,d0.w),d0
	jsr dat_201bb8(pc,d0.w)
loc_201b98:
	jsr (sub_202230).l
	tst.b ($f63a).w
	bne.s loc_201bac
	bsr.w sub_201fe4
	bsr.w sub_201fd2
loc_201bac:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201bb8:
	.incbin 7096, 26
loc_201bd2:
	tst.b ($ff1957).l
	beq.w loc_201b98
	cmpi.b #$2,($ff1506).l
	bne.w loc_201b98
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c00
	move.w #$700,d0
loc_201bfc:
	dbf d0,loc_201bfc
loc_201c00:
	move.w #$1,($f6fc).w
	jsr (sub_2021a4).l
	tst.b ($f64e).w
	bne.s loc_201c38
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201c5c
loc_201c38:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201c5c:
	move.w ($f624).w,(a5)
	jsr (sub_2021c0).l
	bra.w loc_201b98
	.incbin 7274, 60
	jsr (sub_2021a4).l
	bsr.w sub_202040
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
	bsr.w sub_20593c
	tst.b ($f767).w
	beq.s loc_201d54
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201d54:
	jsr (sub_20f8bc).l
	jsr (sub_2021c0).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e48
	bsr.w sub_2024b4
	jmp (loc_20a8d0).l
	dc.b $4e,$75
	jsr (sub_2021a4).l
	bsr.w sub_202040
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
	jsr (sub_2021c0).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e48
	bra.w loc_202498
	.incbin 7724, 16
	bsr.w sub_201f28
	cmpi.b #$1,($ff1903).l
	bne.s loc_201e5e
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201e5e:
	move.w ($f624).w,(a5)
	bra.w loc_202498
	dc.b $4e,$b9,$00,$20,$21,$a4,$61,$00
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
	jsr (sub_2021c0).l
	lea ($d000).w,a0
	bsr.w sub_20593c
	tst.b ($f767).w
	beq.s loc_201f1a
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f1a:
	tst.w ($f614).w
	beq.w loc_201f26
	subq.w #$1,($f614).w
loc_201f26:
	rts

sub_201f28:
	jsr (sub_2021a4).l
	bsr.w sub_202040
	tst.b ($f64e).w
	bne.s loc_201f5e
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201f82
loc_201f5e:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201f82:
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
	jmp (sub_2021c0).l
	dc.b $4e,$73

sub_201fd2:
	tst.b ($d02a).w
	bne.s loc_201fe2
	tst.w ($f786).w
	beq.s loc_201fe2
	addq.w #$1,($f786).w
loc_201fe2:
	rts

sub_201fe4:
	tst.w ($f780).w
	beq.s loc_201fee
	addq.w #$1,($f780).w
loc_201fee:
	tst.w ($f782).w
	beq.s loc_201ff8
	addq.w #$1,($f782).w
loc_201ff8:
	rts
	.incbin 8186, 42

sub_202024:
	bsr.w sub_2021a4
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2021c0

sub_202040:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20204e
	addq.w #$2,a1

sub_20204e:
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

sub_20207c:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2020f8).l,a2
	moveq #$12,d7
loc_202090:
	move.w (a2)+,(a0)
	dbf d7,loc_202090
	move.w (dat_2020fa).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2020b6:
	move.w d0,(a1)
	dbf d7,loc_2020b6
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2020e8:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2020e8
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2020f8:
	dc.b $80,$04
dat_2020fa:
	.incbin 8442, 36

sub_20211e:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202140:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202140
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20216e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20216e
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_20218c:
	move.l d0,(a1)+
	dbf d1,loc_20218c
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_20219c:
	move.l d0,(a1)+
	dbf d1,loc_20219c
	rts

sub_2021a4:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2021b4:
	btst.b #$0,($a11100).l
	bne.s loc_2021b4
	rts

sub_2021c0:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8654, 62

sub_20220c:
	tst.b ($f00a).w
	bne.s loc_202218
	move.b d0,($f00a).w
	rts
loc_202218:
	tst.b ($f00b).w
	bne.s loc_202224
	move.b d0,($f00b).w
	rts
loc_202224:
	tst.b ($f00c).w
	bne.s loc_20222e
	move.b d0,($f00c).w
loc_20222e:
	rts

sub_202230:
	jsr (sub_2021a4).l
	tst.b ($f00a).w
	beq.s loc_20224a
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_20224a:
	tst.b ($f00b).w
	beq.s loc_20225e
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20225e:
	tst.b ($f00c).w
	beq.s loc_202272
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202272:
	bra.w sub_2021c0
	.incbin 8822, 32

sub_202296:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202358).l,a3
	lea ($c00000).l,a4
	bra.s loc_2022b2

sub_2022a8:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20236e).l,a3
loc_2022b2:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2022c0
	adda.w #$a,a3
loc_2022c0:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202384
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2022e0
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2022e0:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20232c
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202308
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202308:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202316:
	lsr.w #$4,d0
loc_202318:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202326
	jmp (a3)

sub_202322:
	moveq #$0,d4
	moveq #$8,d3
loc_202326:
	dbf d0,loc_202318
	bra.s sub_2022e0
loc_20232c:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_20233a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20233a:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202316
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202316
loc_202358:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202322
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202322
	rts
dat_20236e:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202322
	rts

sub_202384:
	move.b (a0)+,d0
loc_202386:
	cmpi.b #$ff,d0
	bne.s loc_20238e
	rts
loc_20238e:
	move.w d0,d7
loc_202390:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202386
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
	bne.s loc_2023be
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202390
loc_2023be:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2023ca:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2023ca
	bra.s loc_202390

sub_2023d6:
	movem.l a1-a2,-(a7)
	lea (dat_20f8d2).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2023ee:
	tst.l (a2)
	beq.s loc_2023f6
	addq.w #$6,a2
	bra.s loc_2023ee
loc_2023f6:
	move.w (a1)+,d0
	bmi.s loc_202402
loc_2023fa:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2023fa
loc_202402:
	movem.l (a7)+,a1-a2
	rts
loc_202408:
	movem.l a1-a2,-(a7)
	lea (dat_20f8d2).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202434
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20242e
loc_202426:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202426
loc_20242e:
	movem.l (a7)+,a1-a2
	rts

sub_202434:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_20243a:
	clr.l (a2)+
	dbf d0,loc_20243a
	rts

sub_202442:
	tst.l ($f680).w
	beq.s loc_202496
	tst.w ($f6f8).w
	bne.s loc_202496
	movea.l ($f680).w,a0
	lea (loc_202358).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202464
	adda.w #$a,a3
loc_202464:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202384
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
loc_202496:
	rts
loc_202498:
	tst.w ($f6f8).w
	beq.w loc_202536
loc_2024a0:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2024d2

sub_2024b4:
	tst.w ($f6f8).w
	beq.s loc_202536
	tst.b ($f744).w
	bne.s loc_2024a0
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2024d2:
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
loc_202506:
	movea.w #$8,a5
	bsr.w sub_202322
	subq.w #$1,($f6f8).w
	beq.s loc_202538
	subq.w #$1,($f6fa).w
	bne.s loc_202506
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202536:
	rts
loc_202538:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20253e:
	move.l $6(a0),(a0)+
	dbf d0,loc_20253e
	rts

sub_202548:
	lea (dat_20f8d2).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_20255a:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202296
	dbf d1,loc_20255a
	rts
	.incbin 9594, 542

sub_202798:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2027f4).l,a0
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
	bra.w loc_202800
dat_2027f4:
	dc.b $00,$04,$00,$00,$2e,$97,$00,$00
	dc.b $05,$10,$00,$60
loc_202800:
	tst.b ($ff1522).l
	beq.s loc_202820
	jsr (sub_20674c).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_20281e
	moveq #$0,d0
loc_20281e:
	bra.s loc_202836
loc_202820:
	lea (dat_202872).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202836:
	subi.w #$a0,d1
	bcc.s loc_20283e
	moveq #$0,d1
loc_20283e:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202848
	move.w d2,d1
loc_202848:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202854
	moveq #$0,d0
loc_202854:
	cmp.w ($f72e).w,d0
	blt.s loc_20285e
	move.w ($f72e).w,d0
loc_20285e:
	move.w d0,($f704).w
	bsr.w sub_20287a
	lea (dat_202876).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202872:
	dc.b $00,$40,$01,$8c
dat_202876:
	dc.b $84,$86,$7f,$7f

sub_20287a:
	swap d0
	lsr.l #$2,d0
	move.l d0,d2
	lsr.w #$1,d2
	add.l d2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$1,d1
	move.w d1,($f710).w
	lsr.l #$1,d1
	move.l d1,d2
	lsr.l #$1,d2
	add.l d1,d2
	move.w d2,($f718).w
	lsr.l #$2,d1
	move.l d1,d2
	add.l d2,d2
	add.l d2,d1
	move.w d1,($f708).w
	rts

sub_2028b2:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2028be
	rts
loc_2028be:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202abe
	bsr.w sub_202b5e
	bsr.w sub_203404
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	move.l d4,d3
	asr.l #$1,d3
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_202de8
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202db4
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202d80
	move.w ($f704).w,d0
	lsr.w #$2,d0
	move.w d0,d1
	lsr.w #$1,d1
	add.w d1,d0
	bsr.w sub_202d50
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
	bsr.w sub_2029e0
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_20296e:
	move.w d0,(a1)+
	dbf d6,loc_20296e
	bsr.w sub_202a24
	move.w ($f718).w,d0
	neg.w d0
	moveq #$13,d6
loc_202980:
	move.w d0,(a1)+
	dbf d6,loc_202980
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	move.w d0,d4
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea (dat_23b204).l,a4
	addi.w #$80,($f7d8).w
	lea $0(a2,d0.w),a2
	bra.w loc_202a62
dat_2029b2:
	.incbin 10674, 38
dat_2029d8:
	dc.b $00,$00,$00,$00,$00,$00,$00,$00

sub_2029e0:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$25,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$24,d6
	adda.w #$58,a1
loc_202a04:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_2029b2(pc,d6.w),d5
loc_202a0e:
	move.w d0,-(a1)
	dbf d5,loc_202a0e
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202a04
	adda.w #$58,a1
	rts

sub_202a24:
	move.w ($f708).w,d0
	move.w ($f718).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$8,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$7,d6
loc_202a44:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_2029d8(pc,d6.w),d5
loc_202a4e:
	move.w d0,(a1)+
	dbf d5,loc_202a4e
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202a44
	rts
	dc.b $09,$07
loc_202a62:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202a7a(pc,d2.w)
loc_202a72:
	cmpi.w #$268,d4
	bcc.s loc_202a92
	move.w (a2)+,d0
loc_202a7a:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	addq.w #$8,d4
	dbf d1,loc_202a72
	rts
loc_202a92:
	addq.w #$1,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	move.w d1,d3
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202aa0:
	move.w d2,d0
	andi.b #$ff,d0
	jsr (sub_200710).l
	lsr.w #$5,d0
	add.w ($f718).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$2,d2
	dbf d3,loc_202aa0
	rts

sub_202abe:
	move.w ($f700).w,d4
	bsr.s sub_202af2
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202af0
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202aea
	bset.b #$2,($f754).w
	rts
loc_202aea:
	bset.b #$3,($f754).w
loc_202af0:
	rts

sub_202af2:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b04
	bcs.s loc_202b34
	bra.s loc_202b0a
loc_202b04:
	clr.w ($f73a).w
	rts
loc_202b0a:
	cmpi.w #$10,d0
	blt.s loc_202b14
	move.w #$10,d0
loc_202b14:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b22
	move.w ($f72a).w,d0
loc_202b22:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b34:
	cmpi.w #$fff0,d0
	bge.s loc_202b3e
	move.w #$fff0,d0
loc_202b3e:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b22
	move.w ($f728).w,d0
	bra.s loc_202b22
	.incbin 11086, 16

sub_202b5e:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202b72
	subq.w #$5,d0
loc_202b72:
	btst.b #$1,$22(a6)
	beq.s loc_202b92
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202bde
	subi.w #$40,d0
	bcc.s loc_202bde
	tst.b ($f75c).w
	bne.s loc_202bf0
	bra.s loc_202b9e
loc_202b92:
	sub.w ($f73e).w,d0
	bne.s loc_202ba4
	tst.b ($f75c).w
	bne.s loc_202bf0
loc_202b9e:
	clr.w ($f73c).w
	rts
loc_202ba4:
	cmpi.w #$60,($f73e).w
	bne.s loc_202bcc
	move.w $14(a6),d1
	bpl.s loc_202bb4
	neg.w d1
loc_202bb4:
	cmpi.w #$800,d1
	bcc.s loc_202bde
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c3e
	cmpi.w #$fffa,d0
	blt.s loc_202c08
	bra.s loc_202bf6
loc_202bcc:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c3e
	cmpi.w #$fffe,d0
	blt.s loc_202c08
	bra.s loc_202bf6
loc_202bde:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c3e
	cmpi.w #$fff0,d0
	blt.s loc_202c08
	bra.s loc_202bf6
loc_202bf0:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202bf6:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c48
	bra.w loc_202c14
loc_202c08:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c14:
	cmp.w ($f72c).w,d1
	bgt.s loc_202c6c
	cmpi.w #$ff00,d1
	bgt.s loc_202c38
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c6c
loc_202c38:
	move.w ($f72c).w,d1
	bra.s loc_202c6c
loc_202c3e:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c48:
	cmp.w ($f72e).w,d1
	blt.s loc_202c6c
	subi.w #$800,d1
	bcs.s loc_202c68
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c6c
loc_202c68:
	move.w ($f72e).w,d1
loc_202c6c:
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
	bne.s loc_202cae
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202ca8
	bset.b #$0,($f754).w
	rts
loc_202ca8:
	bset.b #$1,($f754).w
loc_202cae:
	rts
	.incbin 11440, 64
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d18
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202d12
	bset.b #$0,($f756).w
	rts
loc_202d12:
	bset.b #$1,($f756).w
loc_202d18:
	rts
	.incbin 11546, 54

sub_202d50:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d7e
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202d78
	bset.b #$0,($f756).w
	rts
loc_202d78:
	bset.b #$1,($f756).w
loc_202d7e:
	rts

sub_202d80:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202db2
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202dac
	bset.b d6,($f756).w
	bra.s loc_202db2
loc_202dac:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202db2:
	rts

sub_202db4:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202de6
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202de0
	bset.b d6,($f758).w
	bra.s loc_202de6
loc_202de0:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202de6:
	rts

sub_202de8:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e1a
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e14
	bset.b d6,($f75a).w
	bra.s loc_202e1a
loc_202e14:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e1a:
	rts
	.incbin 11804, 44

sub_202e48:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f06
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_202fec
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_202fee
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f04
	bclr.b #$0,(a2)
	beq.s loc_202eba
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20321a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_202ff0
loc_202eba:
	bclr.b #$1,(a2)
	beq.s loc_202ed4
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20321a
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_202ff0
loc_202ed4:
	bclr.b #$2,(a2)
	beq.s loc_202eea
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20321a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203046
loc_202eea:
	bclr.b #$3,(a2)
	beq.s loc_202f04
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20321a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203046
loc_202f04:
	rts

sub_202f06:
	lea (dat_2032d2).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f22
	bclr.b #$1,(a2)
	beq.s loc_202f6c
	move.w #$e0,d4
loc_202f22:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202f9c(pc,d0.w),a3
	beq.s loc_202f54
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20321a
	movem.l (a7)+,d4-d5
	bsr.w sub_202ff0
	movea.l (a7)+,a0
	bra.s loc_202f6c
loc_202f54:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20321c
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20301c
	movea.l (a7)+,a0
loc_202f6c:
	tst.b (a2)
	bne.s loc_202f72
	rts
loc_202f72:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202f86
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202f86:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202fac
dat_202f9c:
	.incbin 12188, 16
loc_202fac:
	moveq #$f,d6
	move.l #$800000,d7
loc_202fb4:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_202fe0
	btst.b d0,(a2)
	beq.s loc_202fe0
	add.w d0,d0
	movea.l dat_202f9c(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2030f2
	movem.l (a7)+,d4-d5
	bsr.w sub_20321a
	bsr.w sub_203074
	movem.l (a7)+,d4-d5/a0
loc_202fe0:
	addi.w #$10,d4
	dbf d6,loc_202fb4
	clr.b (a2)
	rts

sub_202fec:
	rts

sub_202fee:
	rts

sub_202ff0:
	moveq #$15,d6

sub_202ff2:
	move.l #$800000,d7
	move.l d0,d1
loc_202ffa:
	movem.l d4-d5,-(a7)
	bsr.w sub_2030f2
	move.l d1,d0
	bsr.w sub_203074
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_202ffa
	rts

sub_20301c:
	move.l #$800000,d7
	move.l d0,d1
loc_203024:
	movem.l d4-d5,-(a7)
	bsr.w sub_2030f4
	move.l d1,d0
	bsr.w sub_203074
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203024
	rts

sub_203046:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203050:
	movem.l d4-d5,-(a7)
	bsr.w sub_2030f2
	move.l d1,d0
	bsr.w sub_203074
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203050
	rts

sub_203074:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2030b0
	btst.b #$3,(a0)
	bne.s loc_203090
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203090:
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
loc_2030b0:
	btst.b #$3,(a0)
	bne.s loc_2030d2
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
loc_2030d2:
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

sub_2030f2:
	add.w (a3),d5

sub_2030f4:
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
	beq.s loc_203142
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
loc_203142:
	rts
	.incbin 12612, 214

sub_20321a:
	add.w (a3),d5

sub_20321c:
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
	.incbin 12854, 28

sub_203252:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20327c
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032a4

sub_20327c:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203280:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20321a
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_202ff2
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203280
	rts
loc_2032a4:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032a8:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2032d2).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203324
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2032a8
	rts
dat_2032d2:
	.incbin 13010, 66
dat_203314:
	.incbin 13076, 16

sub_203324:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203314(pc,d0.w),a3
	beq.s loc_203346
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20321a
	movem.l (a7)+,d4-d5
	bsr.w sub_202ff0
	bra.s loc_20335a
loc_203346:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20321c
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20301c
loc_20335a:
	rts

sub_20335c:
	moveq #$0,d0
	lea (dat_20f8c2).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2022a8
	movea.l (a2)+,a0
	bsr.w sub_2033b6
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20054e
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2033a0
	jmp (loc_20cdc8).l
loc_2033a0:
	btst.b #$1,($ff151c).l
	beq.s loc_2033b4
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033b4
	bsr.w sub_2023d6
loc_2033b4:
	rts

sub_2033b6:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033c0:
	move.l d0,(a3)+
	dbf d1,loc_2033c0
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2033d6
	lea ($a040).w,a3
	moveq #$2,d1

sub_2033d6:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_236828).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2033f0:
	move.w d1,d0
	movea.l a3,a0
loc_2033f4:
	move.b (a1)+,(a0)+
	dbf d0,loc_2033f4
	lea $80(a3),a3
	dbf d2,loc_2033f0
	rts

sub_203404:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20347e(pc,d0.w),d0
	jsr dat_20347e(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20342a
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20342a:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203458
	bcc.s loc_20345a
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20344e
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20344e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203458:
	rts
loc_20345a:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203472
	btst.b #$1,($d022).w
	beq.s loc_203472
	add.w d1,d1
	add.w d1,d1
loc_203472:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20347e:
	.incbin 13438, 578
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2036d2(pc,d0.w),d0
	jmp dat_2036d2(pc,d0.w)
dat_2036d2:
	dc.b $00,$06,$00,$0e,$00,$16
	move.w #$510,($f726).w
	rts
	move.w #$710,($f726).w
	rts
	.incbin 14056, 136

sub_203770:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203778:
	move.b (a0),d0
	beq.s loc_20378e
	add.w d0,d0
	add.w d0,d0
	lea (dat_203b92).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20378e:
	lea $40(a0),a0
	dbf d7,loc_203778
	rts

sub_203798:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037d6
	bpl.s loc_2037c8
	btst.b #$1,$2c(a0)
	beq.s loc_2037c8
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037d6
loc_2037c8:
	btst.b #$2,$2c(a0)
	bne.s loc_2037d6
	addi.w #$38,$12(a0)
loc_2037d6:
	tst.w $12(a0)
	bmi.s loc_2037ea
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2037ea
	move.w #$1000,$12(a0)
loc_2037ea:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2037fa:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203836
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203836
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203834
	neg.w d1
loc_203834:
	add.w d1,d0
loc_203836:
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

sub_203850:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038c0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038dc
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038dc
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_20389a
	cmpi.w #$800,d3
	bcs.s loc_2038ac
	subi.w #$800,d3
	bra.s loc_2038ac
loc_20389a:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038ac
	cmpi.w #$100,d3
	bcc.s loc_2038ac
	addi.w #$800,d3
loc_2038ac:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038dc
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038dc
loc_2038c0:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038dc
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038dc:
	rts
	.incbin 14558, 30

sub_2038fc:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203902:
	move.l d1,(a1)+
	dbf d0,loc_203902
	rts
dat_20390a:
	.incbin 14602, 16

sub_20391a:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203926:
	tst.w (a4)
	beq.w loc_2039e6
	moveq #$2,d6
loc_20392e:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039de
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203994
	movea.l dat_20390a(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203978
	cmpi.w #$800,d2
	bcs.s loc_20398a
	subi.w #$800,d2
	bra.s loc_20398a
loc_203978:
	cmpi.w #$700,$4(a1)
	bcs.s loc_20398a
	cmpi.w #$100,d2
	bcc.s loc_20398a
	addi.w #$800,d2
loc_20398a:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039b6
loc_203994:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039b6
	.incbin 14750, 24
loc_2039b6:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2039d4
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039d8
loc_2039d4:
	bsr.w sub_203a08
loc_2039d8:
	bset.b #$7,$1(a0)
loc_2039de:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_20392e
loc_2039e6:
	lea $80(a4),a4
	dbf d7,loc_203926
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a00
	move.l #$0,(a2)
	rts
loc_203a00:
	move.b #$0,-$5(a2)
	rts

sub_203a08:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a4e
	btst.l #$1,d4
	bne.w loc_203a9c
loc_203a1a:
	cmpi.b #$50,d5
	beq.s loc_203a4c
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
	bne.s loc_203a46
	addq.w #$1,d0
loc_203a46:
	move.w d0,(a2)+
	dbf d1,loc_203a1a
loc_203a4c:
	rts
loc_203a4e:
	btst.l #$1,d4
	bne.w loc_203ae2
loc_203a56:
	cmpi.b #$50,d5
	beq.s loc_203a9a
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
	bne.s loc_203a94
	addq.w #$1,d0
loc_203a94:
	move.w d0,(a2)+
	dbf d1,loc_203a56
loc_203a9a:
	rts
loc_203a9c:
	cmpi.b #$50,d5
	beq.s loc_203ae0
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
	bne.s loc_203ada
	addq.w #$1,d0
loc_203ada:
	move.w d0,(a2)+
	dbf d1,loc_203a9c
loc_203ae0:
	rts
loc_203ae2:
	cmpi.b #$50,d5
	beq.s loc_203b34
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
	bne.s loc_203b2e
	addq.w #$1,d0
loc_203b2e:
	move.w d0,(a2)+
	dbf d1,loc_203ae2
loc_203b34:
	rts
	.incbin 15158, 92
dat_203b92:
	.incbin 15250, 246

sub_203c88:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203c9a
	move.w #$0,(a1)
	rts
loc_203c9a:
	tst.w (a1)
	bne.s loc_203ca4
	move.b #$1,$1(a1)
loc_203ca4:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203cee
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ce0
	neg.w $10(a0)
loc_203ce0:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a1a
loc_203cee:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d0c
	cmpa.w #$d040,a0
	beq.s loc_203d0c
	tst.b ($ff1906).l
	beq.s loc_203d0c
	jmp (loc_20707e).l
loc_203d0c:
	move.b $2a(a0),d0
	beq.s loc_203d36
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d28
	cmpi.b #$2d,d0
	bcs.s loc_203d32
	move.b #$2d,d0
	bra.s loc_203d32
loc_203d28:
	cmpi.b #$1e,d0
	bcs.s loc_203d32
	move.b #$1e,d0
loc_203d32:
	move.b d0,$2a(a0)
loc_203d36:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d44(pc,d0.w),d1
	jmp dat_203d44(pc,d1.w)
dat_203d44:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d4e:
	tst.b ($d300).w
	bne.s loc_203d8c
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203d8c:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203db4
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203db4:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203de8:
	tst.b ($ff1506).l
	bne.s loc_203e4e
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e4e
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e52
	cmpi.b #$2f,d1
	bne.s loc_203e50
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e4e
	tst.b $2c(a0)
	beq.s loc_203e4e
	jsr (sub_207876).l
	bne.s loc_203e4e
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e46
	moveq #$0,d0
loc_203e46:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e4e:
	rts
loc_203e50:
	rts

sub_203e52:
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

sub_203e78:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203e84
	neg.w d0
loc_203e84:
	btst.b #$1,$2c(a0)
	beq.s loc_203e94
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203ebc
loc_203e94:
	cmpi.w #$600,d0
	bcs.s loc_203ebc
	tst.w $14(a0)
	bpl.s loc_203eae
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203eca
	move.w #$e0,d1
	bra.s loc_203eca
loc_203eae:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203eca
	move.w #$60,d1
	bra.s loc_203eca
loc_203ebc:
	cmpi.w #$a0,d1
	beq.s loc_203eca
	bcc.s loc_203ec8
	addq.w #$2,d1
	bra.s loc_203eca
loc_203ec8:
	subq.w #$2,d1
loc_203eca:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203e78
	bsr.w sub_203de8
	tst.w ($ff1588).l
	beq.s loc_203ef0
	btst.b #$4,($f605).w
	beq.s loc_203ef0
	move.b #$1,($ff1906).l
	rts
loc_203ef0:
	tst.b ($f7cc).w
	bne.s loc_203efc
	move.w ($f604).w,($f602).w
loc_203efc:
	btst.b #$0,$2c(a0)
	beq.s loc_203f20
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f1a
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f38
loc_203f1a:
	bsr.w sub_204202
	bra.s loc_203f38
loc_203f20:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203f7e(pc,d0.w),d1
	jsr dat_203f7e(pc,d1.w)
	jsr (sub_2064d2).l
loc_203f38:
	bsr.s sub_203f8c
	bsr.w sub_20404c
	bsr.w sub_204066
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203f60
	tst.b $1c(a0)
	bne.s loc_203f60
	move.b $1d(a0),$1c(a0)
loc_203f60:
	bsr.w sub_20540a
	tst.b $2c(a0)
	bmi.s loc_203f78
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f78
	jsr (sub_206c1c).l
loc_203f78:
	bsr.w sub_2052c0
	rts
dat_203f7e:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203f8c:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203fb0
	move.w $30(a0),d0
	beq.s loc_203fa2
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203fb0
loc_203fa2:
	btst.b #$6,$2c(a0)
	bne.s loc_203fb0
	jsr (sub_203850).l
loc_203fb0:
	tst.b ($ff151f).l
	beq.s loc_203ff4
	tst.w $32(a0)
	beq.s loc_203ff4
	subq.w #$1,$32(a0)
	bne.s loc_203ff4
	tst.b ($ff1520).l
	bne.s loc_203fec
	tst.b ($ff1958).l
	bne.s loc_203fec
	tst.b ($ff152e).l
	bne.s loc_203fe6
	move.w #$e,d0
	jsr (sub_205a1a).l
loc_203fe6:
	jsr (sub_201a00).l
loc_203fec:
	move.b #$0,($ff151f).l
loc_203ff4:
	tst.b ($ff1520).l
	beq.s loc_20404a
	tst.w $34(a0)
	beq.s loc_20404a
	subq.w #$1,$34(a0)
	bne.s loc_20404a
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204042
	tst.b ($ff1958).l
	bne.s loc_204042
	tst.b ($ff152e).l
	bne.s loc_20403c
	move.w #$e,d0
	jsr (sub_205a1a).l
loc_20403c:
	jsr (sub_201a00).l
loc_204042:
	move.b #$0,($ff1520).l
loc_20404a:
	rts

sub_20404c:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204066:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204072
loc_204070:
	rts
loc_204072:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204084
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204070
loc_204084:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2040c8
	bset.b #$6,$22(a0)
	bne.s loc_204070
	bsr.w sub_205d1e
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204070
	bra.s loc_204100
loc_2040c8:
	tst.w $12(a0)
	beq.s loc_2040d0
	bpl.s loc_204070
loc_2040d0:
	bclr.b #$6,$22(a0)
	beq.s loc_204070
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204070
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204100
	move.w #$f000,$12(a0)
loc_204100:
	jsr (sub_207876).l
	bne.s loc_204114
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204114:
	rts

sub_204116:
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
	bcs.s loc_2041f0
	move.l #$50000,d0
loc_2041f0:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204202:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204228
	tst.b ($ff152e).l
	beq.s loc_20421e
	cmpi.b #$2,($ff152e).l
	bne.s loc_204228
loc_20421e:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2042d8
loc_204228:
	tst.b $2a(a0)
	bne.w loc_2042e6
	tst.b ($f784).w
	beq.w loc_2042e6
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204246
	neg.w d0
loc_204246:
	tst.w ($f786).w
	bne.s loc_204252
	move.w #$1,($f786).w
loc_204252:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204268
	move.b #$1,($ff1502).l
	bra.w loc_205a16
loc_204268:
	cmpi.w #$d2,d1
	bcs.s loc_2042bc
	cmpi.b #$2,($ff1522).l
	beq.s loc_2042ba
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204292
	move.w #$82,d0
	jsr (sub_205a1a).l
	moveq #$0,d0
loc_204292:
	add.b ($f784).w,d0
	bpl.s loc_20429c
	moveq #$0,d0
	bra.s loc_2042a4
loc_20429c:
	cmpi.b #$3,d0
	bcs.s loc_2042a4
	moveq #$2,d0
loc_2042a4:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204116
	move.b #$2,($ff1522).l
loc_2042ba:
	rts
loc_2042bc:
	cmpi.w #$5a,d1
	bcc.s loc_2042d4
	cmp.w d2,d0
	bcc.w loc_203d4e
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2042d4:
	cmp.w d2,d0
	bcc.s loc_2042e6
loc_2042d8:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2042e6:
	rts
	bsr.w sub_203c88
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204318
	tst.b ($ff195b).l
	beq.s loc_204306
	cmpi.b #$79,$1a(a0)
	bne.s loc_204342
	bra.s loc_20430e
loc_204306:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204342
loc_20430e:
	bsr.w sub_204baa
	jmp (sub_203798).l
loc_204318:
	bsr.w sub_2043f0
	bsr.w sub_204202
	bsr.w sub_204c94
	bsr.w sub_204dc0
	bsr.w sub_204464
	bsr.w sub_204c16
	bsr.w sub_204baa
	jsr (sub_2037fa).l
	bsr.w sub_200b10
	bsr.w sub_204e3e
loc_204342:
	rts
	tst.b ($f7c7).w
	bne.s loc_20435e
	cmpi.b #$15,$1c(a0)
	beq.s loc_20435e
	tst.w $12(a0)
	bmi.s loc_20435e
	move.b #$0,$1c(a0)
loc_20435e:
	bsr.w sub_2043f0
	bsr.w sub_204202
	bsr.w sub_204d7e
	bsr.w sub_204aca
	bsr.w sub_204baa
	jsr (sub_203798).l
	btst.b #$6,$22(a0)
	beq.s loc_204386
	subi.w #$28,$12(a0)
loc_204386:
	bsr.w sub_204e88
	bsr.w sub_204eac
	rts
	bsr.w sub_2043f0
	bsr.w sub_204202
	bsr.w sub_204c94
	bsr.w sub_204dfc
	bsr.w sub_204904
	bsr.w sub_204baa
	tst.b $2a(a0)
	bne.s loc_2043b4
	jsr (sub_2037fa).l
loc_2043b4:
	bsr.w sub_200b10
	bsr.w sub_204e3e
	rts
	bsr.w sub_2043f0
	bsr.w sub_204202
	bsr.w sub_204d7e
	bsr.w sub_204aca
	bsr.w sub_204baa
	jsr (sub_203798).l
	btst.b #$6,$22(a0)
	beq.s loc_2043e6
	subi.w #$28,$12(a0)
loc_2043e6:
	bsr.w sub_204e88
	bsr.w sub_204eac
	rts

sub_2043f0:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20445c
	tst.w ($ff1506).l
	bne.s loc_20445c
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20445e).l,a2
loc_204424:
	move.b (a2)+,d0
	bmi.s loc_204434
	cmp.b d0,d1
	bne.s loc_204424
	bset.b #$1,$2c(a0)
	rts
loc_204434:
	bclr.b #$1,$2c(a0)
	beq.s loc_20445c
	tst.w $12(a0)
	bpl.s loc_20445c
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20445c
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20445c
	neg.w $10(a0)
loc_20445c:
	rts
dat_20445e:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204464:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_20478e
	tst.w $3e(a0)
	bne.w loc_20473e
	btst.b #$2,($f602).w
	beq.s loc_20448c
	bsr.w sub_20481e
loc_20448c:
	btst.b #$3,($f602).w
	beq.s loc_204498
	bsr.w sub_204894
loc_204498:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_20473e
	tst.w $14(a0)
	beq.s loc_2044b8
	tst.b $2a(a0)
	beq.w loc_20473e
	bra.s loc_2044c4
loc_2044b8:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2044c4:
	btst.b #$3,$22(a0)
	beq.s loc_204516
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20456e
	cmpi.b #$1e,$0(a1)
	bne.s loc_2044f6
	move.b #$0,$1c(a0)
	bra.w loc_20473e
loc_2044f6:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204552
	cmp.w d2,d1
	bge.s loc_204540
	bra.s loc_20456e
loc_204516:
	jsr (sub_206980).l
	cmpi.w #$c,d1
	blt.s loc_20456e
	move.w #$ab,d0
	jsr (sub_20220c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20454a
loc_204540:
	btst.b #$0,$22(a0)
	bne.s loc_20455a
	bra.s loc_204564
loc_20454a:
	cmpi.b #$3,$37(a0)
	bne.s loc_20456e
loc_204552:
	btst.b #$0,$22(a0)
	bne.s loc_204564
loc_20455a:
	move.b #$32,$1c(a0)
	bra.w loc_20473e
loc_204564:
	move.b #$6,$1c(a0)
	bra.w loc_20473e
loc_20456e:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204582
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204582:
	btst.b #$7,($f788).w
	bne.w loc_204686
	btst.b #$6,($f788).w
	bne.w loc_2046a6
	btst.b #$1,($f602).w
	bne.w loc_2046a6
	andi.b #$f,($f788).w
	beq.s loc_2045ba
	btst.b #$0,($f603).w
	beq.s loc_2045ce
	bset.b #$7,($f788).w
	bra.w loc_204762
loc_2045ba:
	btst.b #$0,($f603).w
	beq.w loc_2045ce
	move.b #$1,($f788).w
	bra.w loc_204762
loc_2045ce:
	btst.b #$0,($f602).w
	beq.s loc_20464a
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_20462c
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2045fe
	asr.w #$1,d2
	sub.w d2,d1
loc_2045fe:
	btst.b #$0,$22(a0)
	beq.s loc_20460a
	neg.w d0
	neg.w d1
loc_20460a:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204620
	cmp.w d0,d1
	ble.s loc_204626
	bra.s loc_204624
loc_204620:
	cmp.w d1,d0
	ble.s loc_204626
loc_204624:
	move.w d1,d0
loc_204626:
	move.w d0,$14(a0)
	rts
loc_20462c:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204646
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20220c).l
loc_204646:
	bra.w loc_204762
loc_20464a:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20466a
	move.w #$ab,d0
	jsr (sub_20220c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2046a6
loc_20466a:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20220c).l
	bra.w loc_20473e
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204686:
	btst.b #$0,($f602).w
	beq.s loc_2046a6
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204762
	addq.w #$2,($f73e).w
	bra.w loc_204762
loc_2046a6:
	btst.b #$6,($f788).w
	bne.w loc_204722
	andi.b #$f,($f788).w
	beq.s loc_2046ca
	btst.b #$1,($f603).w
	beq.s loc_2046dc
	bset.b #$6,($f788).w
	bra.w loc_204762
loc_2046ca:
	btst.b #$1,($f603).w
	beq.s loc_2046dc
	move.b #$1,($f788).w
	bra.w loc_204762
loc_2046dc:
	btst.b #$1,($f602).w
	beq.s loc_20473e
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204720
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204720
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204712
	neg.w $14(a0)
loc_204712:
	move.w #$9c,d0
	jsr (sub_20220c).l
	bsr.w sub_204c3e
loc_204720:
	bra.s loc_204762
loc_204722:
	btst.b #$1,($f602).w
	beq.s loc_20473e
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204762
	subq.w #$2,($f73e).w
	bra.s loc_204762
loc_20473e:
	cmpi.w #$60,($f73e).w
	bne.s loc_204758
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204762
	move.b #$0,($f788).w
	bra.s loc_204762
loc_204758:
	bcc.s loc_20475e
	addq.w #$4,($f73e).w
loc_20475e:
	subq.w #$2,($f73e).w
loc_204762:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20478e
	move.w $14(a0),d0
	beq.s loc_20478e
	bmi.s loc_204782
	sub.w d5,d0
	bcc.s loc_20477c
	move.w #$0,d0
loc_20477c:
	move.w d0,$14(a0)
	bra.s loc_20478e
loc_204782:
	add.w d5,d0
	bcc.s loc_20478a
	move.w #$0,d0
loc_20478a:
	move.w d0,$14(a0)
loc_20478e:
	move.b $26(a0),d0
	jsr (sub_200710).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2047ac:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_20481c
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_20481c
	bmi.s loc_2047c4
	neg.w d1
loc_2047c4:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206840
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_20481c
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204818
	cmpi.b #$40,d0
	beq.s loc_204806
	cmpi.b #$80,d0
	beq.s loc_204800
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204800:
	sub.w d1,$12(a0)
	rts
loc_204806:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204818:
	add.w d1,$12(a0)
loc_20481c:
	rts

sub_20481e:
	tst.b $2a(a0)
	bne.s loc_204892
	move.w $14(a0),d0
	beq.s loc_20482c
	bpl.s loc_20485c
loc_20482c:
	bset.b #$0,$22(a0)
	bne.s loc_204840
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204840:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204850
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204850
	move.w d1,d0
loc_204850:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_20485c:
	sub.w d4,d0
	bcc.s loc_204864
	move.w #$ff80,d0
loc_204864:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204892
	cmpi.w #$400,d0
	blt.s loc_204892
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20220c).l
loc_204892:
	rts

sub_204894:
	tst.b $2a(a0)
	bne.s loc_204902
	move.w $14(a0),d0
	bmi.s loc_2048cc
	bclr.b #$0,$22(a0)
	beq.s loc_2048b4
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048b4:
	cmp.w d6,d0
	bge.s loc_2048c0
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2048c0
	move.w d6,d0
loc_2048c0:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048cc:
	add.w d4,d0
	bcc.s loc_2048d4
	move.w #$80,d0
loc_2048d4:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204902
	cmpi.w #$fc00,d0
	bgt.s loc_204902
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20220c).l
loc_204902:
	rts

sub_204904:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204a4e
	tst.w $3e(a0)
	bne.s loc_20493c
	btst.b #$2,($f602).w
	beq.s loc_204930
	bsr.w sub_204a84
loc_204930:
	btst.b #$3,($f602).w
	beq.s loc_20493c
	bsr.w sub_204aa8
loc_20493c:
	tst.b $2a(a0)
	beq.w loc_2049e6
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20495c
	asr.w #$1,d2
	sub.w d2,d1
loc_20495c:
	btst.b #$0,$22(a0)
	beq.s loc_204968
	neg.w d0
	neg.w d1
loc_204968:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20497e
	cmp.w d0,d1
	ble.s loc_204984
	bra.s loc_204982
loc_20497e:
	cmp.w d1,d0
	ble.s loc_204984
loc_204982:
	move.w d1,d0
loc_204984:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_2049b8
	rts
loc_204992:
	move.w #$ab,d0
	jsr (sub_20220c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204a18
loc_2049b8:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204992
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20220c).l
	btst.b #$0,$22(a0)
	bne.s loc_2049de
	bsr.w sub_204aa8
	bra.s loc_2049e6
loc_2049de:
	bsr.w sub_204a84
	bra.s loc_2049e6
	dc.b $4e,$75
loc_2049e6:
	move.w $14(a0),d0
	beq.s loc_204a08
	bmi.s loc_2049fc
	sub.w d5,d0
	bcc.s loc_2049f6
	move.w #$0,d0
loc_2049f6:
	move.w d0,$14(a0)
	bra.s loc_204a08
loc_2049fc:
	add.w d5,d0
	bcc.s loc_204a04
	move.w #$0,d0
loc_204a04:
	move.w d0,$14(a0)
loc_204a08:
	tst.w $14(a0)
	bne.s loc_204a4e
	move.w #$ab,d0
	jsr (sub_20220c).l
loc_204a18:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a38
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a48
loc_204a38:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a48:
	move.b #$5,$1c(a0)
loc_204a4e:
	move.b $26(a0),d0
	jsr (sub_200710).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204a72
	move.w #$1000,d1
loc_204a72:
	cmpi.w #$f000,d1
	bge.s loc_204a7c
	move.w #$f000,d1
loc_204a7c:
	move.w d1,$10(a0)
	bra.w loc_2047ac

sub_204a84:
	move.w $14(a0),d0
	beq.s loc_204a8c
	bpl.s loc_204a9a
loc_204a8c:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204a9a:
	sub.w d4,d0
	bcc.s loc_204aa2
	move.w #$ff80,d0
loc_204aa2:
	move.w d0,$14(a0)
	rts

sub_204aa8:
	move.w $14(a0),d0
	bmi.s loc_204abc
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204abc:
	add.w d4,d0
	bcc.s loc_204ac4
	move.w #$80,d0
loc_204ac4:
	move.w d0,$14(a0)
	rts

sub_204aca:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b04
	tst.w ($ff1506).l
	bne.s loc_204b04
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204afc
	cmpi.w #$840,$8(a0)
	bcc.s loc_204afc
	rts
loc_204afc:
	btst.b #$1,$2c(a0)
	bne.s loc_204b34
loc_204b04:
	btst.b #$2,($f602).w
	beq.s loc_204b1e
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b1e
	move.w d1,d0
loc_204b1e:
	btst.b #$3,($f602).w
	beq.s loc_204b34
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b34
	move.w d6,d0
loc_204b34:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b4a
	bcc.s loc_204b46
	addq.w #$4,($f73e).w
loc_204b46:
	subq.w #$2,($f73e).w
loc_204b4a:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204b78
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204b78
	bmi.s loc_204b6c
	sub.w d1,d0
	bcc.s loc_204b66
	move.w #$0,d0
loc_204b66:
	move.w d0,$10(a0)
	rts
loc_204b6c:
	sub.w d1,d0
	bcs.s loc_204b74
	move.w #$0,d0
loc_204b74:
	move.w d0,$10(a0)
loc_204b78:
	rts
	.incbin 19322, 48

sub_204baa:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204bfe
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204bd8
	addi.w #$38,d0
loc_204bd8:
	cmp.w d1,d0
	bls.s loc_204bfe
loc_204bdc:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204bec
	rts
loc_204bec:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206eae
	move.b #$6,$24(a0)
	rts
loc_204bfe:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204bdc

sub_204c16:
	tst.b ($f7ca).w
	bne.s loc_204c3c
	move.w $14(a0),d0
	bpl.s loc_204c24
	neg.w d0
loc_204c24:
	cmpi.w #$80,d0
	bcs.s loc_204c3c
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c3c
	btst.b #$1,($f602).w
	bne.s sub_204c3e
loc_204c3c:
	rts

sub_204c3e:
	btst.b #$2,$22(a0)
	beq.s loc_204c48
	bra.s loc_204c78
loc_204c48:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c68
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c78
loc_204c68:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c78:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204c92
	cmpi.w #$200,$14(a0)
	bcc.s loc_204c92
	move.w #$200,$14(a0)
loc_204c92:
	rts

sub_204c94:
	tst.b $2a(a0)
	beq.s loc_204c9c
	rts
loc_204c9c:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204cae
	tst.w $14(a0)
	beq.w loc_204d74
loc_204cae:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204d74
	btst.b #$3,$22(a0)
	beq.s loc_204cca
	jsr (sub_2059a0).l
	beq.s loc_204cfa
loc_204cca:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2068aa
	cmpi.w #$6,d1
	blt.w loc_204d74
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204cf0
	move.w #$380,d2
loc_204cf0:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204cfa:
	jsr (sub_200710).l
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
	jsr (sub_20220c).l
	btst.b #$2,$22(a0)
	bne.s loc_204d76
	tst.b ($ff195b).l
	beq.s loc_204d58
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d68
loc_204d58:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d68:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204d74:
	rts
loc_204d76:
	bset.b #$4,$22(a0)
	rts

sub_204d7e:
	tst.b $3c(a0)
	beq.s loc_204db0
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204d94
	move.w #$fe00,d1
loc_204d94:
	cmp.w $12(a0),d1
	ble.s loc_204dae
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204dae
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204dae:
	rts
loc_204db0:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204dbe
	move.w #$f040,$12(a0)
loc_204dbe:
	rts

sub_204dc0:
	tst.b $2a(a0)
	bne.s loc_204dfa
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204dfa
	move.b $26(a0),d0
	jsr (sub_200710).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204dfa
	bmi.s loc_204df6
	tst.w d0
	beq.s loc_204df4
	add.w d0,$14(a0)
loc_204df4:
	rts
loc_204df6:
	add.w d0,$14(a0)
loc_204dfa:
	rts

sub_204dfc:
	tst.b $2a(a0)
	bne.s loc_204e3c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e3c
	move.b $26(a0),d0
	jsr (sub_200710).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204e32
	tst.w d0
	bpl.s loc_204e2c
	asr.l #$2,d0
loc_204e2c:
	add.w d0,$14(a0)
	rts
loc_204e32:
	tst.w d0
	bmi.s loc_204e38
	asr.l #$2,d0
loc_204e38:
	add.w d0,$14(a0)
loc_204e3c:
	rts

sub_204e3e:
	nop
	tst.b $38(a0)
	bne.s loc_204e80
	tst.w $3e(a0)
	bne.s loc_204e82
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204e80
	move.w $14(a0),d0
	bpl.s loc_204e62
	neg.w d0
loc_204e62:
	cmpi.w #$280,d0
	bcc.s loc_204e80
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204e80:
	rts
loc_204e82:
	subq.w #$1,$3e(a0)
	rts

sub_204e88:
	btst.b #$1,$2c(a0)
	bne.s loc_204eaa
	move.b $26(a0),d0
	beq.s loc_204eaa
	bpl.s loc_204ea0
	addq.b #$2,d0
	bcc.s loc_204e9e
	moveq #$0,d0
loc_204e9e:
	bra.s loc_204ea6
loc_204ea0:
	subq.b #$2,d0
	bcc.s loc_204ea6
	moveq #$0,d0
loc_204ea6:
	move.b d0,$26(a0)
loc_204eaa:
	rts

sub_204eac:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2009a8).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204f90
	cmpi.b #$80,d0
	beq.w loc_204ff2
	cmpi.b #$c0,d0
	beq.w loc_20504e
	bsr.w sub_206bc0
	tst.w d1
	bpl.s loc_204efe
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204efe:
	bsr.w sub_206a22
	tst.w d1
	bpl.s loc_204f10
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f10:
	bsr.w sub_2068d2
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204f8e
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204f2e
	cmp.b d2,d0
	blt.s loc_204f8e
loc_204f2e:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050b0
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f6c
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204f5e
	asr.w $12(a0)
	bra.s loc_204f80
loc_204f5e:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204f6c:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204f80
	move.w #$fc0,$12(a0)
loc_204f80:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204f8e
	neg.w $14(a0)
loc_204f8e:
	rts
loc_204f90:
	bsr.w sub_206bc0
	tst.w d1
	bpl.s loc_204faa
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204faa:
	bsr.w sub_206a7a
	tst.w d1
	bpl.s loc_204fc4
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204fc2
	move.w #$0,$12(a0)
loc_204fc2:
	rts
loc_204fc4:
	tst.w $12(a0)
	bmi.s loc_204ff0
	bsr.w sub_2068d2
	tst.w d1
	bpl.s loc_204ff0
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050b0
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204ff0:
	rts
loc_204ff2:
	bsr.w sub_206bc0
	tst.w d1
	bpl.s loc_205004
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205004:
	bsr.w sub_206a22
	tst.w d1
	bpl.s loc_205016
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205016:
	bsr.w sub_206a7a
	tst.w d1
	bpl.s loc_20504c
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205036
	move.w #$0,$12(a0)
	rts
loc_205036:
	move.b d3,$26(a0)
	bsr.w sub_205122
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20504c
	neg.w $14(a0)
loc_20504c:
	rts
loc_20504e:
	bsr.w sub_206a22
	tst.w d1
	bpl.s loc_205068
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205068:
	bsr.w sub_206a7a
	tst.w d1
	bpl.s loc_205082
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205080
	move.w #$0,$12(a0)
loc_205080:
	rts
loc_205082:
	tst.w $12(a0)
	bmi.s loc_2050ae
	bsr.w sub_2068d2
	tst.w d1
	bpl.s loc_2050ae
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050b0
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050ae:
	rts

sub_2050b0:
	btst.b #$4,$22(a0)
	beq.s loc_2050ba
	nop
loc_2050ba:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205114
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2050f4
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205104
loc_2050f4:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205104:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20220c).l
loc_205114:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205122:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2037fa).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20515c
	subi.w #$20,$12(a0)
loc_20515c:
	jsr (sub_2064d2).l
	bsr.w sub_205178
	bsr.w sub_204baa
	bsr.w sub_20404c
	bsr.w sub_20540a
	jmp (sub_203850).l

sub_205178:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206eae
	bsr.w sub_204eac
	btst.b #$1,$22(a0)
	bne.s loc_2051b2
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2051b2:
	rts
	.incbin 20916, 268

sub_2052c0:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2052e8
	cmpi.b #$5,($ff1506).l
	beq.s loc_2052e8
	cmpi.b #$2,($ff1506).l
	beq.s loc_2052e8
	tst.b ($ff1506).l
	bne.w loc_2053aa
loc_2052e8:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205326
	tst.b ($ff1506).l
	bne.w loc_2053ac
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2053ac
	bra.s loc_20532e
loc_205326:
	cmp.b ($f7af).w,d1
	beq.w loc_2053ac
loc_20532e:
	cmp.b ($f7ac).w,d1
	beq.s loc_20535e
	cmp.b ($f7ad).w,d1
	beq.s loc_205342
	bclr.b #$6,$1(a0)
	rts
loc_205342:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2053c4
	btst.b #$1,$22(a0)
	beq.s loc_20535e
	bclr.b #$6,$1(a0)
	rts
loc_20535e:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205370
	bclr.b #$6,$1(a0)
	rts
loc_205370:
	cmpi.b #$e0,d2
	bcs.s loc_20537e
	bset.b #$6,$1(a0)
	rts
loc_20537e:
	btst.b #$6,$1(a0)
	bne.s loc_20539a
	move.b $26(a0),d1
	beq.s loc_2053aa
	cmpi.b #$80,d1
	bhi.s loc_2053aa
	bset.b #$6,$1(a0)
	rts
loc_20539a:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2053aa
	bclr.b #$6,$1(a0)
loc_2053aa:
	rts
loc_2053ac:
	btst.b #$2,$22(a0)
	bne.s loc_2053be
	move.w #$9c,d0
	jsr (sub_20220c).l
loc_2053be:
	jmp (sub_204c3e).l
loc_2053c4:
	tst.w $12(a0)
	bmi.s loc_205408
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2053fc
	cmpi.w #$38,d1
	bcs.s loc_2053f4
	cmpi.w #$80,d1
	bcs.s loc_205408
loc_2053ec:
	bclr.b #$6,$1(a0)
	rts
loc_2053f4:
	bset.b #$6,$1(a0)
	rts
loc_2053fc:
	cmpi.w #$38,d1
	bcs.s loc_2053ec
	cmpi.w #$80,d1
	bcc.s loc_2053f4
loc_205408:
	rts

sub_20540a:
	lea (dat_2056fa).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20542c
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20542c:
	bsr.w sub_20569c
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2054a4
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205472
	move.b d0,$1e(a0)

sub_205456:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20546a
	bpl.s loc_20546a
	cmpi.b #$fd,d0
	bge.s loc_205474
loc_20546a:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205472:
	rts
loc_205474:
	addq.b #$1,d0
	bne.s loc_205484
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20546a
loc_205484:
	addq.b #$1,d0
	bne.s loc_205498
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20546a
loc_205498:
	addq.b #$1,d0
	bne.s loc_2054a2
	move.b $2(a1,d1.w),$1c(a0)
loc_2054a2:
	rts
loc_2054a4:
	subq.b #$1,$1e(a0)
	bpl.s loc_205472
	addq.b #$1,d0
	bne.w loc_20555e
	tst.b ($ff195b).l
	bne.w loc_205626
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2054cc
	not.b d0
loc_2054cc:
	btst.b #$1,$2c(a0)
	bne.s loc_2054da
	addi.b #$10,d0
	bra.s loc_2054dc
loc_2054da:
	addq.b #$8,d0
loc_2054dc:
	bpl.s loc_2054e0
	moveq #$3,d1
loc_2054e0:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2055d2
	move.w $14(a0),d2
	bpl.s loc_2054fe
	neg.w d2
loc_2054fe:
	btst.b #$1,$2c(a0)
	beq.s loc_205516
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2058fc).l,a1
	bra.s loc_205540
loc_205516:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2058d6).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205540
	lea (dat_20577a).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205540
	lea (dat_205772).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205540:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20554e
	moveq #$0,d2
loc_20554e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205456
	add.b d3,$1a(a0)
	rts
loc_20555e:
	addq.b #$1,d0
	bne.s loc_2055ce
	move.w $14(a0),d2
	bpl.s loc_20556a
	neg.w d2
loc_20556a:
	lea (dat_205858).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055a8
	lea (dat_20578a).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20559c
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2055a8
	lea (dat_205904).l,a1
	bra.s loc_2055a8
loc_20559c:
	cmpi.w #$600,d2
	bcc.s loc_2055a8
	lea (dat_205782).l,a1
loc_2055a8:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2055b2
	moveq #$0,d2
loc_2055b2:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205456
loc_2055ce:
	addq.b #$1,d0
	bne.s loc_205612
loc_2055d2:
	move.w $14(a0),d2
	bmi.s loc_2055da
	neg.w d2
loc_2055da:
	addi.w #$800,d2
	bpl.s loc_2055e2
	moveq #$0,d2
loc_2055e2:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_20586a).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055fc
	lea (dat_205792).l,a1
loc_2055fc:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205456
loc_205612:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205626:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205638
	not.b d0
loc_205638:
	addi.b #$10,d0
	bpl.s loc_205640
	moveq #$0,d1
loc_205640:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20566e
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20555e
loc_20566e:
	move.w $14(a0),d2
	bpl.s loc_205676
	neg.w d2
loc_205676:
	lea (dat_205852).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205688
	lea (dat_20584c).l,a1
loc_205688:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205692
	moveq #$0,d2
loc_205692:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205456

sub_20569c:
	tst.b ($ff195b).l
	beq.s loc_2056a8
	move.b dat_2056aa(pc,d0.w),d0
loc_2056a8:
	rts
dat_2056aa:
	.incbin 22186, 80
dat_2056fa:
	.incbin 22266, 120
dat_205772:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20577a:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205782:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20578a:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205792:
	.incbin 22418, 186
dat_20584c:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205852:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205858:
	.incbin 22616, 18
dat_20586a:
	.incbin 22634, 108
dat_2058d6:
	.incbin 22742, 38
dat_2058fc:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205904:
	.incbin 22788, 56

sub_20593c:
	tst.b (a0)
	beq.w loc_20599e
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_20599e
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_20599e
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205970:
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
loc_20598a:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_20598a
	dbf d1,loc_205970
loc_20599e:
	rts

sub_2059a0:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a14
	move.w #$98,d0
	jsr (sub_20220c).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_2009a8).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205a02
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a02:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a14:
	rts
loc_205a16:
	move.w #$e,d0

sub_205a1a:
	cmpi.w #$67,d0
	bne.s loc_205a28
	move.b #$1,($ff1958).l
loc_205a28:
	move.w d0,($a12010).l
loc_205a2e:
	move.w ($a12020).l,d0
	beq.s loc_205a2e
	cmp.w ($a12020).l,d0
	bne.s loc_205a2e
	move.w #$0,($a12010).l
loc_205a46:
	move.w ($a12020).l,d0
	bne.s loc_205a46
	move.w ($a12020).l,d0
	bne.s loc_205a46
	rts
	dc.b $00,$00

sub_205a5a:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205a76
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205a76:
	subq.b #$1,$1e(a0)
	bpl.s loc_205ab6
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205ab8
loc_205a92:
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
loc_205ab6:
	rts
loc_205ab8:
	addq.b #$1,d0
	bne.s loc_205ac8
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205a92
loc_205ac8:
	addq.b #$1,d0
	bne.s loc_205adc
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205a92
loc_205adc:
	addq.b #$1,d0
	bne.s loc_205ae6
	move.b $2(a1,d1.w),$1c(a0)
loc_205ae6:
	addq.b #$1,d0
	bne.s loc_205aee
	addq.b #$2,$24(a0)
loc_205aee:
	addq.b #$1,d0
	bne.s loc_205afc
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205afc:
	addq.b #$1,d0
	bne.s loc_205b04
	addq.b #$2,$25(a0)
loc_205b04:
	rts
	.incbin 23302, 536

sub_205d1e:
	rts
	.incbin 23840, 116

sub_205d94:
	tst.b $25(a0)
	bne.s loc_205dc4
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207876).l
	bne.s loc_205dc4
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205dc4:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205dd4(pc,d0.w),d0
	jmp dat_205dd4(pc,d0.w)
dat_205dd4:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205dfc
	andi.b #$7f,$2(a0)
loc_205dfc:
	move.l #$23b172,$4(a0)
	bsr.s sub_205d94
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205e2a
	move.w #$100,$1c(a0)
loc_205e2a:
	lea (dat_23b15e).l,a1
	bsr.w sub_205a5a
	jmp (sub_203850).l
	tst.b $25(a0)
	beq.s loc_205e46
	jmp (sub_2038fc).l
loc_205e46:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e68(pc,d0.w),d0
	jsr dat_205e68(pc,d0.w)
	jmp (sub_203850).l
dat_205e68:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e96
	andi.b #$7f,$2(a0)
loc_205e96:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_205ebc
	bsr.w sub_205f28
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205f1e
loc_205ebc:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206980).l
	tst.w d1
	bpl.s loc_205f1a
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205f04
	bsr.w sub_205f28
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205f4e
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205f04:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205f1e
loc_205f1a:
	addq.w #$2,$c(a0)
loc_205f1e:
	lea (dat_2336bc).l,a1
	bra.w sub_205a5a

sub_205f28:
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

sub_205f4e:
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
	bra.s loc_205f1e
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205f1e
	.incbin 24458, 836
loc_2062ce:
	bclr.b #$7,($ff156b).l
	beq.s loc_20631c
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20631e(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2062f2:
	move.l (a1)+,(a2)+
	dbf d0,loc_2062f2
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20631c:
	rts
dat_20631e:
	.incbin 25374, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206354(pc,d0.w),d0
	jsr dat_206354(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_20634e
	jsr (sub_203850).l
loc_20634e:
	jmp (loc_2078ac).l
dat_206354:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23af86,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206436
	cmpi.b #$6,$24(a1)
	bcc.w loc_206436
	bsr.w sub_20649a
	beq.w loc_206436
	tst.b $28(a0)
	bne.s loc_2063e8
	move.w $10(a1),d0
	bpl.s loc_2063a8
	neg.w d0
loc_2063a8:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2063ba
	move.w #$d00,d1
loc_2063ba:
	cmp.w d1,d0
	bcc.s loc_2063c0
	move.w d1,d0
loc_2063c0:
	tst.w $10(a1)
	bpl.s loc_2063c8
	neg.w d0
loc_2063c8:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_206418
	neg.w $14(a1)
	bra.s loc_206418
loc_2063e8:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206438
	move.w $12(a1),d0
	bpl.s loc_2063f8
	neg.w d0
loc_2063f8:
	cmpi.w #$d00,d0
	bcc.s loc_206402
	move.w #$d00,d0
loc_206402:
	tst.w $12(a1)
	bpl.s loc_20640a
	neg.w d0
loc_20640a:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206418:
	bset.b #$2,$22(a1)
	bne.s loc_206436
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206436:
	rts
loc_206438:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206484
	cmpi.b #$2,$28(a0)
	bne.s loc_206454
	tst.w $12(a1)
	bpl.s loc_206418
	bra.s loc_20645a
loc_206454:
	tst.w $12(a1)
	bmi.s loc_206418
loc_20645a:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_20646c
	btst.l #$2,d1
	beq.s loc_206418
	neg.w d0
loc_20646c:
	cmpi.b #$2,$28(a0)
	beq.s loc_20647a
	bset.b #$1,$22(a1)
loc_20647a:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206418
loc_206484:
	tst.w $10(a1)
	bmi.s loc_206418
	btst.l #$0,d1
	beq.w loc_206418
	move.w #$f600,d0
	bra.w loc_20640a

sub_20649a:
	tst.b ($ff1906).l
	bne.s loc_2064ce
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2064ce
	cmpi.w #$50,d0
	bcc.s loc_2064ce
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2064ce
	cmpi.w #$50,d0
	bcc.s loc_2064ce
	moveq #$1,d0
	rts
loc_2064ce:
	moveq #$0,d0
	rts

sub_2064d2:
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_20652e
	move.w $10(a0),d0
	bpl.s loc_2064e6
	neg.w d0
loc_2064e6:
	cmpi.w #$a00,d0
	bcs.s loc_20652e
	move.w $c(a0),d2
	move.w $8(a0),d3
	addq.w #$8,d2
	jsr (sub_200e7e).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_20651a
	add.b ($ff156a).l,d1
loc_20651a:
	add.w d1,d1
	move.w dat_206530(pc,d1.w),d1
	lea dat_206530(pc,d1.w),a1
loc_206524:
	move.w (a1)+,d1
	bmi.s loc_20652e
	cmp.w d1,d0
	bne.s loc_206524
	bra.s loc_206570
loc_20652e:
	rts
dat_206530:
	.incbin 25904, 64
loc_206570:
	jsr (sub_207876).l
	bne.s loc_2065a0
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $16(a0),d0
	ext.w d0
	add.w d0,$c(a1)
	tst.w $10(a0)
	bpl.s loc_2065a0
	bset.b #$0,$22(a1)
loc_2065a0:
	rts
	.incbin 26018, 216
loc_20667a:
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
	bne.s loc_206734
	move.b ($ff1593).l,($ff195b).l
loc_206734:
	tst.b ($ff1522).l
	bpl.s loc_20674a
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20674a:
	rts

sub_20674c:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20667a
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
	bne.s loc_206806
	move.b ($ff1591).l,($ff195b).l
loc_206806:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206828
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206828:
	tst.b ($ff1522).l
	bpl.s loc_20683e
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20683e:
	rts

sub_206840:
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
	bpl.s loc_20687c
	move.b d1,d0
	bpl.s loc_206876
	subq.b #$1,d0
loc_206876:
	addi.b #$20,d0
	bra.s loc_206886
loc_20687c:
	move.b d1,d0
	bpl.s loc_206882
	addq.b #$1,d0
loc_206882:
	addi.b #$1f,d0
loc_206886:
	andi.b #$c0,d0
	beq.w loc_206956
	cmpi.b #$80,d0
	beq.w loc_206af2
	andi.b #$38,d1
	bne.s loc_20689e
	addq.w #$8,d2
loc_20689e:
	cmpi.b #$40,d0
	beq.w loc_206bc8
	bra.w loc_206a2a

sub_2068aa:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206b50
	cmpi.b #$80,d0
	beq.w sub_206a7a
	cmpi.b #$c0,d0
	beq.w loc_2069ba

sub_2068d2:
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
	jsr (sub_201066).l
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
	jsr (sub_201066).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206936:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206944
	move.b ($f768).w,d3
	exg d0,d1
loc_206944:
	btst.l #$0,d3
	beq.s loc_20694c
	move.b d2,d3
loc_20694c:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206956:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201066).l
	move.b #$0,d2
loc_206972:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20697e
	move.b d2,d3
loc_20697e:
	rts

sub_206980:
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
	jsr (sub_201066).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2069b8
	move.b #$0,d3
loc_2069b8:
	rts
loc_2069ba:
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
	jsr (sub_2011d6).l
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
	jsr (sub_2011d6).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206936

sub_206a22:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a2a:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011d6).l
	move.b #$c0,d2
	bra.w loc_206972
loc_206a4a:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011d6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a78
	move.b #$c0,d3
loc_206a78:
	rts

sub_206a7a:
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
	jsr (sub_201066).l
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
	jsr (sub_201066).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206936

sub_206aea:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206af2:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201066).l
	move.b #$80,d2
	bra.w loc_206972
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
	jsr (sub_201066).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b4e
	move.b #$80,d3
loc_206b4e:
	rts
loc_206b50:
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
	jsr (sub_2011d6).l
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
	jsr (sub_2011d6).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206936

sub_206bc0:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206bc8:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011d6).l
	move.b #$40,d2
	bra.w loc_206972
loc_206bec:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011d6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c1a
	move.b #$40,d3
loc_206c1a:
	rts

sub_206c1c:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206c40
	addi.w #$c,d3
	moveq #$a,d5
loc_206c40:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206c4e:
	tst.b $1(a1)
	bpl.s loc_206c5a
	move.b $20(a1),d0
	bne.s loc_206c66
loc_206c5a:
	lea $40(a1),a1
	dbf d6,loc_206c4e
	moveq #$0,d0
	rts
loc_206c66:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207000).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206c8e
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206c94
	bra.w loc_206c5a
loc_206c8e:
	cmp.w d4,d0
	bhi.w loc_206c5a
loc_206c94:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206cac
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206cb2
	bra.w loc_206c5a
loc_206cac:
	cmp.w d5,d0
	bhi.w loc_206c5a
loc_206cb2:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206d26
	cmpi.b #$c0,d1
	beq.w loc_206f06
	tst.b d1
	bmi.w sub_206df0
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206cea
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206ce8
	addq.b #$2,$24(a1)
loc_206ce8:
	rts
loc_206cea:
	tst.w $12(a0)
	bpl.s loc_206d14
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206d24
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206d24
	addq.b #$4,$25(a1)
	rts
loc_206d14:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206d24
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206d24:
	rts

sub_206d26:
	tst.b ($ff1521).l
	bne.s loc_206d40
	tst.b ($ff151f).l
	bne.s loc_206d40
	cmpi.b #$2,$1c(a0)
	bne.w sub_206df0
loc_206d40:
	tst.b $21(a1)
	beq.s loc_206d6a
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206d68
	bset.b #$7,$22(a1)
loc_206d68:
	rts
loc_206d6a:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206d82
	moveq #$6,d0
loc_206d82:
	move.w d0,$3e(a1)
	move.w dat_206de2(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206d9c
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206d9c:
	bsr.w sub_20a888
	move.w #$96,d0
	jsr (sub_20220c).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206dd2
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206dda
	neg.w $12(a0)
	rts
loc_206dd2:
	addi.w #$100,$12(a0)
	rts
loc_206dda:
	subi.w #$100,$12(a0)
	rts
dat_206de2:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206df0:
	tst.b ($ff1521).l
	bne.s loc_206e00
	tst.b ($ff151f).l
	beq.s loc_206e04
loc_206e00:
	moveq #$ffffffff,d0
	rts
loc_206e04:
	nop
	tst.w $30(a0)
	bne.s loc_206e00
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206e3a
	tst.w ($ff1512).l
	beq.w loc_206ea4
	jsr (sub_207876).l
	bne.s loc_206e3a
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206e3a:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206e50
	move.b #$0,($ff156f).l
loc_206e50:
	move.b #$4,$24(a0)
	bsr.w sub_2050b0
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206e80
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206e80:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206e8e
	neg.w $10(a0)
loc_206e8e:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206ea4:
	tst.w ($ff1588).l
	bne.w loc_206e3a

sub_206eae:
	tst.w ($ff1906).l
	bne.s loc_206f02
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2050b0
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20220c).l
loc_206f02:
	moveq #$ffffffff,d0
	rts
loc_206f06:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206f9e
	cmpi.b #$23,d1
	beq.w loc_206f9e
	cmpi.b #$2d,d1
	beq.w loc_206ff4
	cmpi.b #$31,d1
	beq.w loc_206ff4
	cmpi.b #$35,d1
	beq.w loc_206fe6
	cmpi.b #$3a,d1
	beq.w loc_206fe6
	cmpi.b #$3b,d1
	beq.w loc_206fe6
	tst.b ($f7aa).w
	beq.w loc_206f9c
	cmpi.b #$1,($f7aa).w
	beq.s loc_206f66
	cmpi.b #$4,($f7aa).w
	beq.s loc_206f88
	cmpi.b #$5,($f7aa).w
	beq.s loc_206f96
loc_206f66:
	cmpi.b #$3c,d1
	blt.s loc_206f9c
	cmpi.b #$3f,d1
	bgt.s loc_206f9c
	bsr.w sub_206d26
	tst.b $20(a1)
	bne.s loc_206f80
	addq.b #$3,$21(a1)
loc_206f80:
	clr.b $20(a1)
	bra.w loc_206f9e
loc_206f88:
	cmpi.b #$3f,d1
	beq.s loc_206faa
	cmpi.b #$3e,d1
	beq.s loc_206fa4
	bra.s loc_206f9c
loc_206f96:
	cmpi.b #$3d,d1
	beq.s loc_206fa4
loc_206f9c:
	rts
loc_206f9e:
	addq.b #$1,$21(a1)
	rts
loc_206fa4:
	bsr.w sub_206df0
	bra.s loc_206f9e
loc_206faa:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_206fe4
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_206fe4
	neg.w $10(a0)
loc_206fe4:
	rts
loc_206fe6:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206ff2
	addq.b #$1,$21(a1)
loc_206ff2:
	rts
loc_206ff4:
	btst.b #$2,$22(a0)
	beq.w sub_206d26
	bra.s loc_206f9e
dat_207000:
	.incbin 28672, 126
loc_20707e:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207094
	move.l #$4000,(dat_20720e).l
	bra.s loc_2070b4
loc_207094:
	addi.l #$2000,(dat_20720e).l
	cmpi.l #$80000,(dat_20720e).l
	bls.s loc_2070b4
	move.l #$80000,(dat_20720e).l
loc_2070b4:
	move.l (dat_20720e).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2070c6
	sub.l d0,$c(a0)
loc_2070c6:
	btst.b #$1,($f604).w
	beq.s loc_2070d2
	add.l d0,$c(a0)
loc_2070d2:
	btst.b #$2,($f604).w
	beq.s loc_2070de
	sub.l d0,$8(a0)
loc_2070de:
	btst.b #$3,($f604).w
	beq.s loc_2070ea
	add.l d0,$8(a0)
loc_2070ea:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e7e).l
	move.w (a1),($ff194e).l
	lea (dat_207212).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20712c
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207126
	move.b #$0,d1
loc_207126:
	move.b d1,($ff1904).l
loc_20712c:
	btst.b #$7,($f605).w
	beq.s loc_20714c
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207146
	add.b (a2),d1
loc_207146:
	move.b d1,($ff1904).l
loc_20714c:
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
	beq.s loc_2071d8
	bsr.w sub_207876
	bne.s loc_2071d8
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
loc_2071d8:
	btst.b #$4,($f605).w
	beq.s loc_207208
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207208:
	jmp (sub_203850).l
dat_20720e:
	dc.b $00,$00,$40,$00
dat_207212:
	.incbin 29202, 1106

sub_207664:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207672:
	clr.l (a2)+
	dbf d0,loc_207672
	rts

sub_20767a:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207688(pc,d0.w),d0
	jmp dat_207688(pc,d0.w)
dat_207688:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207928).l,a0
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
	bcc.s loc_2076c6
	moveq #$0,d6
loc_2076c6:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2076ce:
	cmp.w (a0),d6
	bls.s loc_2076e0
	tst.b $4(a0)
	bpl.s loc_2076dc
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2076dc:
	addq.w #$8,a0
	bra.s loc_2076ce
loc_2076e0:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207700
loc_2076ee:
	cmp.w (a0),d6
	bls.s loc_207700
	tst.b $4(a0)
	bpl.s loc_2076fc
	addq.b #$1,$1(a2)
loc_2076fc:
	addq.w #$8,a0
	bra.s loc_2076ee
loc_207700:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2077ea
	bge.s loc_207790
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20776c
loc_20773a:
	cmp.w -$8(a0),d6
	bge.s loc_20776c
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207750
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207750:
	bsr.w sub_20780e
	bne.s loc_20775a
	subq.w #$8,a0
	bra.s loc_20773a
loc_20775a:
	tst.b $4(a0)
	bpl.s loc_20776a
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20776a:
	addq.w #$8,a0
loc_20776c:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207778:
	cmp.w -$8(a0),d6
	bgt.s loc_20778a
	tst.b -$4(a0)
	bpl.s loc_207786
	subq.b #$1,(a2)
loc_207786:
	subq.w #$8,a0
	bra.s loc_207778
loc_20778a:
	move.l a0,($f770).w
	rts
loc_207790:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2077a4:
	cmp.w (a0),d6
	bls.s loc_2077c6
	tst.b $4(a0)
	bpl.s loc_2077b2
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077b2:
	bsr.w sub_20780e
	beq.s loc_2077a4
	tst.b $4(a0)
	bpl.s loc_2077c6
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077c6:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2077e6
loc_2077d4:
	cmp.w (a0),d6
	bls.s loc_2077e6
	tst.b $4(a0)
	bpl.s loc_2077e2
	addq.b #$1,$1(a2)
loc_2077e2:
	addq.w #$8,a0
	bra.s loc_2077d4
loc_2077e6:
	move.l a0,($f774).w
loc_2077ea:
	rts

sub_2077ec:
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

sub_20780e:
	bsr.s sub_2077ec
	beq.s loc_207820
	tst.b $4(a0)
	bpl.s loc_207826
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207826
loc_207820:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207826:
	bsr.w sub_207876
	bne.s loc_207874
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
	bpl.s loc_207856
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207856:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207868
	nop
	nop
	nop
	nop
loc_207868:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207874:
	rts

sub_207876:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20787e:
	tst.b (a1)
	beq.s loc_20788a
	lea $40(a1),a1
	dbf d0,loc_20787e
loc_20788a:
	rts

sub_20788c:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078aa
loc_20789e:
	tst.b (a1)
	beq.s loc_2078aa
	lea $40(a1),a1
	dbf d0,loc_20789e
loc_2078aa:
	rts
loc_2078ac:
	move.w $8(a0),d0

sub_2078b0:
	tst.b $1(a0)
	bmi.s loc_20791a
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20791a
loc_2078ce:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207910
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207908
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207900
	moveq #$0,d1
	bra.s loc_207908
loc_207900:
	cmpi.w #$3,d1
	bcs.s loc_207908
	moveq #$2,d1
loc_207908:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207910:
	jsr (sub_2038fc).l
	moveq #$1,d0
	rts
loc_20791a:
	btst.b #$7,($ff152e).l
	bne.s loc_2078ce
	moveq #$0,d0
	rts
dat_207928:
	.incbin 31016, 5146

sub_208d42:
	btst.b #$3,$22(a0)
	beq.s loc_208db2
	btst.b #$3,$22(a1)
	beq.s loc_208db2
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208db2
	tst.b $2a(a1)
	beq.s loc_208d74
	move.w #$ab,d0
	jsr (sub_20220c).l
loc_208d74:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208da0
	cmpi.b #$17,$1c(a1)
	beq.s loc_208da0
	bclr.b #$0,$2c(a1)
loc_208da0:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208db2
	bclr.b #$1,$22(a1)
loc_208db2:
	rts

sub_208db4:
	cmpi.b #$4,$24(a1)
	bne.s loc_208dc6
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208dc6:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208e26
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208de8
	bclr.b #$3,$22(a0)
	bra.w sub_208d42
loc_208de8:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208e26
	tst.b ($ff195b).l
	beq.s loc_208e10
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208e20
loc_208e10:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208e20:
	move.b #$0,$1c(a1)
loc_208e26:
	bset.b #$3,$22(a1)
	beq.s loc_208e48
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208e80
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208e48:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208e74
	cmpi.b #$2,$24(a0)
	beq.s loc_208e7a
loc_208e74:
	move.w $10(a1),$14(a1)
loc_208e7a:
	bclr.b #$1,$22(a1)
loc_208e80:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_208e90:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209144
	btst.b #$6,$2c(a1)
	bne.w loc_209144
	cmpi.b #$6,$24(a1)
	bcc.w loc_209144
	tst.b $0(a1)
	beq.w loc_209144
	tst.b $1(a0)
	bpl.w loc_209144
	tst.b ($ff1906).l
	bne.w loc_209144
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209144
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209144
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208efe
	btst.b #$3,$22(a0)
	bne.s loc_208f10
	bra.w loc_209144
loc_208efe:
	cmpi.b #$1,$25(a0)
	bne.s loc_208f10
	tst.w $12(a1)
	beq.s loc_208f10
	bmi.w loc_209144
loc_208f10:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209144
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209144
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208f46
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208f46:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208f54
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208f54:
	cmp.w d4,d5
	bcs.w loc_208fe8
	cmpi.b #$1,$25(a0)
	beq.w loc_209144
	cmpi.b #$a,$0(a0)
	bne.s loc_208f76
	btst.b #$1,$22(a1)
	bne.w loc_209144
loc_208f76:
	cmpi.b #$4,d5
	bls.w loc_209144
	bsr.w sub_209194
	move.l d0,-(a7)
	bsr.w sub_208d42
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208fa0
	tst.w $10(a1)
	beq.s loc_208fd0
	bpl.s loc_208fa8
	bra.s loc_208fd0
loc_208fa0:
	tst.w $10(a1)
	beq.s loc_208fd0
	bpl.s loc_208fd0
loc_208fa8:
	bsr.w sub_209154
	btst.b #$1,$22(a1)
	bne.s loc_208fc6
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208fc6:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208fd0:
	bsr.w sub_20920a
	bsr.w sub_209154
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208fe8:
	cmpi.b #$19,$0(a0)
	bne.s loc_208ffa
	btst.b #$2,$22(a1)
	bne.w loc_209144
loc_208ffa:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_209010
	bmi.w loc_2090e0
loc_209010:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_209022
	tst.w $12(a1)
	beq.s loc_209022
	bmi.w loc_209144
loc_209022:
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
	beq.s loc_20906e
	bpl.s loc_20904e
	neg.b d0
loc_20904e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206840).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20906e
	tst.w $10(a0)
	bpl.s loc_20906a
	neg.w d1
loc_20906a:
	add.w d1,$8(a1)
loc_20906e:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_2090d8
	tst.w $12(a0)
	bmi.s loc_2090ac
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2068d2).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2090ac
	add.w d1,$c(a1)
	bra.w loc_209144
loc_2090ac:
	tst.w $12(a0)
	bpl.s loc_2090d8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206aea).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2090d8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206eae).l
	movem.l (a7)+,a0-a1
	bra.s loc_209144
loc_2090d8:
	bsr.w sub_208db4
	moveq #$1,d0
	rts
loc_2090e0:
	cmpi.b #$1,$25(a0)
	beq.s loc_209144
	cmpi.b #$9,$0(a0)
	beq.s loc_209144
	cmpi.b #$a,$0(a0)
	bne.s loc_20910a
	cmpi.b #$2,$25(a0)
	beq.s loc_20912a
	btst.b #$1,$1(a0)
	bne.s loc_20912a
	bra.s loc_209144
loc_20910a:
	btst.b #$1,$22(a1)
	bne.s loc_20912a
	tst.w $12(a0)
	beq.s loc_20912a
	bmi.s loc_20912a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206eae).l
	movem.l (a7)+,a0-a1
loc_20912a:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20920a
	bsr.w sub_208d42
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209144:
	bsr.w sub_20920a
	bsr.w sub_208d42
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209154:
	tst.w $10(a0)
	beq.s loc_209192
	cmpi.b #$a,$0(a0)
	beq.s loc_209192
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_20916e
	neg.b d0
loc_20916e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206840).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209192
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206eae).l
	movem.l (a7)+,a0-a1
loc_209192:
	rts

sub_209194:
	cmpi.b #$a,$0(a0)
	bne.s loc_2091a4
	move.b #$0,$20(a1)
	rts
loc_2091a4:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2091f8
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209208
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_2091c6
	tst.w $10(a2)
	beq.s loc_209208
loc_2091c6:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_2091d8
	cmp.w $8(a2),d1
	bcs.s loc_209208
	bra.s loc_2091de
loc_2091d8:
	cmp.w $8(a2),d1
	bcc.s loc_209208
loc_2091de:
	cmpi.b #$15,$0(a0)
	beq.s loc_209208
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206eae).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2091f8:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209208:
	rts

sub_20920a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209224
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209224
	move.b #$0,$20(a1)
loc_209224:
	rts
	.incbin 37414, 374
loc_20939c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2093aa(pc,d0.w),d0
	jmp dat_2093aa(pc,d0.w)
dat_2093aa:
	.incbin 37802, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_20939c
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209400
	tst.b $1(a0)
	bpl.s loc_209408
loc_209400:
	move.w dat_20945a(pc,d0.w),d1
	jsr dat_20945a(pc,d1.w)
loc_209408:
	bsr.w sub_203850
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20943a
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20943a:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2038fc
	rts
dat_20945a:
	.incbin 37978, 26
	addq.b #$2,$24(a0)
	move.l #$2097dc,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2094ca
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2097e2,$4(a0)
	bra.s loc_20950c
loc_2094ca:
	btst.l #$3,d0
	beq.s loc_2094f8
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20982c,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20ce26).l
	move.l (a7)+,d0
	bra.s loc_20950c
loc_2094f8:
	btst.b #$1,$1(a0)
	beq.s loc_20950c
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20950c:
	btst.l #$1,d0
	beq.s loc_209518
	bset.b #$5,$2(a0)
loc_209518:
	andi.w #$2,d0
	move.w dat_209524(pc,d0.w),$30(a0)
	rts
dat_209524:
	dc.b $f0,$00,$f6,$00

sub_209528:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208e90).l
	tst.b $1(a0)
	bpl.s loc_209544
	lea ($d000).w,a1
	bsr.s sub_209528
	bne.s loc_209546
loc_209544:
	rts
loc_209546:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20220c).l
	.incbin 38264, 34

sub_20959a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208e90).l
	tst.b $1(a0)
	bpl.s loc_2095bc
	lea ($d000).w,a1
	bsr.s sub_20959a
	btst.b #$5,$22(a0)
	bne.s loc_2095be
loc_2095bc:
	rts
loc_2095be:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_2095ec
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_2095ec:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209606
	move.b #$0,$1c(a1)
loc_209606:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_20220c).l
	.incbin 38432, 90
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jsr (sub_20220c).l
	lea (dat_2097ce).l,a1
	bra.w sub_205a5a
	.incbin 38548, 140
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_20220c).l
	lea (dat_2097ce).l,a1
	bra.w sub_205a5a
	.incbin 38738, 124
dat_2097ce:
	.incbin 38862, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2098c8(pc,d0.w),d1
	jmp dat_2098c8(pc,d1.w)
dat_2098c8:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2098d2:
	.incbin 39122, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20992a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209922
	moveq #$0,d1
	bra.s loc_20992a
loc_209922:
	cmpi.w #$3,d1
	bcs.s loc_20992a
	moveq #$2,d1
loc_20992a:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209946
	moveq #$6,d1
loc_209946:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2098d2).l,a1
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
	beq.s loc_209996
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20998e
	moveq #$0,d0
	bra.s loc_209996
loc_20998e:
	cmpi.w #$3,d0
	bcs.s loc_209996
	moveq #$2,d0
loc_209996:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209a64
	dbf d0,loc_209996
	bclr.b #$7,(a2)
	bra.s loc_2099ec
loc_2099a8:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2099d4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2099cc
	moveq #$0,d0
	bra.s loc_2099d4
loc_2099cc:
	cmpi.w #$3,d0
	bcs.s loc_2099d4
	moveq #$2,d0
loc_2099d4:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209a64
	dbf d0,loc_2099d4
	bclr.b #$7,(a2)
	bsr.w sub_20788c
	bne.w loc_209a70
loc_2099ec:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209d36,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209a42
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209a42
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209a42:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209a64:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2099a8
loc_209a70:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209a96
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209a8e
	moveq #$0,d0
	bra.s loc_209a96
loc_209a8e:
	cmpi.w #$3,d0
	bcs.s loc_209a96
	moveq #$2,d0
loc_209a96:
	lea $1(a2),a3
loc_209a9a:
	btst.b #$0,-(a3)
	bne.w sub_2038fc
	dbf d0,loc_209a9a
	tst.b $1(a0)
	bmi.s loc_209aca
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209b44
loc_209aca:
	tst.w ($ff190e).l
	bne.s loc_209ada
	move.b ($ff1913).l,$1a(a0)
loc_209ada:
	bra.w sub_203850
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209b48
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209b2a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209b22
	moveq #$0,d1
	bra.s loc_209b2a
loc_209b22:
	cmpi.w #$3,d1
	bcs.s loc_209b2a
	moveq #$2,d1
loc_209b2a:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209d2e).l,a1
	bsr.w sub_205a5a
	bra.w sub_203850
loc_209b44:
	bra.w sub_2038fc

sub_209b48:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209b98
	bset.b #$1,($ff150d).l
	beq.s loc_209b82
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209b98
	bset.b #$2,($ff150d).l
	bne.s loc_209b98
loc_209b82:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a1a).l
loc_209b98:
	jmp (sub_20220c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209bac(pc,d0.w),d1
	jmp dat_209bac(pc,d1.w)
dat_209bac:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_209bc8
	move.w d0,d5
loc_209bc8:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_209bd8
loc_209bd0:
	bsr.w sub_207876
	bne.w loc_209c8e
loc_209bd8:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209d36,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209c36
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209c36
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209c36:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_209c7e
	move.w d4,d0
	jsr (sub_200710).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_209c7e
	subi.w #$80,d4
	bcc.s loc_209c7e
	move.w #$288,d4
loc_209c7e:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209bd0
loc_209c8e:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_20220c).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2037fa
	addi.w #$18,$12(a0)
	bmi.s loc_209cee
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209cee
	jsr (sub_206980).l
	tst.w d1
	bpl.s loc_209cee
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209cee:
	tst.b ($ff1916).l
	beq.s loc_209d2a
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209d2a
	bra.w sub_203850
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209b48
	lea (dat_209d2e).l,a1
	bsr.w sub_205a5a
	bra.w sub_203850
loc_209d2a:
	bra.w sub_2038fc
dat_209d2e:
	.incbin 40238, 402
loc_209ec0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209eee(pc,d0.w),d0
	jsr dat_209eee(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209eec
	cmpi.w #$5a,($f786).w
	bcs.s loc_209ee6
	btst.b #$0,($ff1505).l
	bne.s loc_209eec
loc_209ee6:
	jmp (sub_203850).l
loc_209eec:
	rts
dat_209eee:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a4c8,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209f22
	move.b #$13,$1a(a0)
loc_209f22:
	rts
loc_209f24:
	tst.b ($ff0f01).l
	beq.s loc_209f32
	jmp (sub_2038fc).l
loc_209f32:
	cmpi.b #$a,$28(a0)
	beq.w loc_209ec0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f56(pc,d0.w),d0
	jsr dat_209f56(pc,d0.w)
	jsr (sub_203850).l
	jmp (loc_2078ac).l
dat_209f56:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a4c8,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209fa4
	tst.b $29(a0)
	bne.s loc_209fa4
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209fa4:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a070
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209fcc
	addq.b #$2,$1a(a0)
loc_209fcc:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209fe0
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209fe0:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a046
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a012
	tst.b $29(a0)
	beq.s loc_20a00a
	tst.b ($ff1956).l
	beq.s loc_20a046
	bra.s loc_20a012
loc_20a00a:
	tst.b ($ff1956).l
	bne.s loc_20a046
loc_20a012:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a070
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a040
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a040:
	jsr (sub_205a1a).l
loc_20a046:
	rts
	.incbin 41032, 40

sub_20a070:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a0a8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a0a0
	moveq #$0,d1
	bra.s loc_20a0a8
loc_20a0a0:
	cmpi.w #$3,d1
	bcs.s loc_20a0a8
	moveq #$2,d1
loc_20a0a8:
	add.w d1,d0
	rts

sub_20a0ac:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a0ce
	tst.b ($ff1956).l
	beq.s loc_20a0c6
	tst.b $29(a0)
	bne.s loc_20a0ce
	rts
loc_20a0c6:
	tst.b $29(a0)
	beq.s loc_20a0ce
	rts
loc_20a0ce:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208e90).l
	tst.b $28(a0)
	bne.s loc_20a0f0
	tst.b ($ff0f01).l
	beq.s loc_20a0f0
	jmp (loc_2078ac).l
loc_20a0f0:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209f24
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a108(pc,d0.w),d1
	jmp dat_20a108(pc,d1.w)
dat_20a108:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a4c8,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a152
	tst.b $29(a0)
	bne.s loc_20a152
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a152:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a070
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a17e
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a17e:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a1d8
	move.b $25(a0),d0
	beq.s loc_20a1b8
	bsr.w sub_203798
	jsr (sub_206980).l
	tst.w d1
	bpl.w loc_20a1c6
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a1c6
loc_20a1b8:
	tst.b $1(a0)
	bpl.s loc_20a1c6
	lea ($d000).w,a1
	bsr.w sub_20a0ac
loc_20a1c6:
	tst.w ($ff190e).l
	bne.s loc_20a1d8
	lea (dat_20a440).l,a1
	bsr.w sub_205a5a
loc_20a1d8:
	bsr.w sub_203850
	jmp (loc_2078ac).l
	.incbin 41442, 68
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
	bsr.w sub_20a070
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203850
	.incbin 41560, 488
dat_20a440:
	.incbin 42048, 586
loc_20a68a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a69e(pc,d0.w),d0
	jsr dat_20a69e(pc,d0.w)
	jmp (sub_203850).l
dat_20a69e:
	.incbin 42654, 146
	tst.b $28(a0)
	bmi.w loc_20a68a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a746(pc,d0.w),d0
	jmp dat_20a746(pc,d0.w)
dat_20a746:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a7e0,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a776
	move.b #$3,$1a(a0)
	bra.s loc_20a796
loc_20a776:
	tst.w ($ff1588).l
	beq.s loc_20a784
	move.b #$2,$1a(a0)
loc_20a784:
	tst.b $28(a0)
	beq.s loc_20a796
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a796:
	tst.b $28(a0)
	bne.s loc_20a7da
	tst.b $29(a0)
	beq.s loc_20a7c6
	tst.w ($ff1512).l
	beq.s loc_20a7b2
	bclr.b #$5,$2(a0)
	bra.s loc_20a7da
loc_20a7b2:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a7da
	eori.b #$20,$2(a0)
	bra.s loc_20a7da
loc_20a7c6:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a7da
	move.b #$2,$1a(a0)
loc_20a7da:
	jmp (sub_203850).l
	.incbin 42976, 168

sub_20a888:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a8a4
	move.l d1,(a3)
loc_20a8a4:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a8ce
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a1a).l
loc_20a8ce:
	rts
loc_20a8d0:
	tst.w ($ff1588).l
	beq.s loc_20a926
	bsr.w sub_20ab22
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
	lea (dat_20ac82).l,a2
	moveq #$2,d6
	bsr.w sub_20acda
	bra.w loc_20a980
loc_20a926:
	tst.b ($ff1511).l
	beq.s loc_20a94a
	bpl.s loc_20a934
	bsr.w sub_20aacc
loc_20a934:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20abbc
loc_20a94a:
	tst.b ($ff150f).l
	beq.s loc_20a980
	bpl.s loc_20a958
	bsr.w sub_20aab8
loc_20a958:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a97c
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a97c:
	bsr.w sub_20abb2
loc_20a980:
	tst.w ($ff1588).l
	bne.w loc_20aa2c
	tst.b ($ff1510).l
	beq.w loc_20aa2c
	tst.w ($f63a).w
	bne.w loc_20aa2c
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20aa8a
	tst.b ($f7cc).w
	bne.s loc_20a9d6
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a9d6
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a9d6
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a9d6
	move.b #$9,(a1)
loc_20a9d6:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20acc8
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20acd2
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20aa28
	move.w #$63,d1
loc_20aa28:
	bsr.w sub_20acd2
loc_20aa2c:
	tst.b ($ff150e).l
	beq.s loc_20aa3e
	clr.b ($ff150e).l
	bsr.w sub_20aca8
loc_20aa3e:
	tst.b ($f7d6).w
	beq.s loc_20aa88
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aa5e
	move.l #$6d400001,d0
loc_20aa5e:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20ab40
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aa7e
	move.l #$6e800001,d0
loc_20aa7e:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20ab40
loc_20aa88:
	rts
loc_20aa8a:
	btst.b #$7,($ff152e).l
	bne.s loc_20aab6
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206eae
	move.b #$1,($ff150c).l
loc_20aab6:
	rts

sub_20aab8:
	move.l #$73600002,($c00004).l
	lea dat_20ab1e(pc),a2
	move.w #$2,d2
	bra.s loc_20aae8

sub_20aacc:
	lea ($c00000).l,a6
	bsr.w sub_20aca8
	move.l #$70600002,($c00004).l
	lea dat_20ab16(pc),a2
	move.w #$6,d2
loc_20aae8:
	lea (dat_2330bc).l,a1
loc_20aaee:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ab0a
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20aafe:
	move.l (a3)+,(a6)
	dbf d1,loc_20aafe
loc_20ab04:
	dbf d2,loc_20aaee
	rts
loc_20ab0a:
	move.l #$0,(a6)
	dbf d1,loc_20ab0a
	bra.s loc_20ab04
dat_20ab16:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ab1e:
	dc.b $ff,$ff,$00,$00

sub_20ab22:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20ac9e
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20ac9e

sub_20ab40:
	lea (dat_20ac7a).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ab50:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ab54:
	sub.l d3,d1
	bcs.s loc_20ab5c
	addq.w #$1,d2
	bra.s loc_20ab54
loc_20ab5c:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ab66
	move.w #$1,d4
loc_20ab66:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20ab72
	tst.w d6
	bne.s loc_20aba4
loc_20ab72:
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
loc_20ab98:
	addi.l #$400000,d0
	dbf d6,loc_20ab50
	rts
loc_20aba4:
	moveq #$f,d5
loc_20aba6:
	move.l #$0,(a6)
	dbf d5,loc_20aba6
	bra.s loc_20ab98

sub_20abb2:
	lea (dat_20ac82).l,a2
	moveq #$2,d6
	bra.s loc_20abc4

sub_20abbc:
	lea (dat_20ac76).l,a2
	moveq #$5,d6
loc_20abc4:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20abcc:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20abd0:
	sub.l d3,d1
	bcs.s loc_20abd8
	addq.w #$1,d2
	bra.s loc_20abd0
loc_20abd8:
	add.l d3,d1
	tst.w d2
	beq.s loc_20abe2
	move.w #$1,d4
loc_20abe2:
	tst.w d4
	beq.s loc_20ac10
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
loc_20ac10:
	addi.l #$400000,d0
	dbf d6,loc_20abcc
	rts
	.incbin 44060, 32
loc_20ac3c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ac40:
	sub.l d3,d1
	bcs.s loc_20ac48
	addq.w #$1,d2
	bra.s loc_20ac40
loc_20ac48:
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
	dbf d6,loc_20ac3c
	rts
dat_20ac76:
	dc.b $00,$01,$86,$a0
dat_20ac7a:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20ac82:
	dc.b $00,$00,$00,$64
dat_20ac86:
	dc.b $00,$00,$00,$0a
dat_20ac8a:
	dc.b $00,$00,$00,$01
dat_20ac8e:
	.incbin 44174, 16

sub_20ac9e:
	moveq #$3,d6
	lea (dat_20ac8e).l,a2
	bra.s sub_20acda

sub_20aca8:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20acbe
	moveq #$9,d1
loc_20acbe:
	lea (dat_20ac8a).l,a2
	moveq #$0,d6
	bra.s sub_20acda

sub_20acc8:
	lea (dat_20ac8a).l,a2
	moveq #$0,d6
	bra.s sub_20acda

sub_20acd2:
	lea (dat_20ac86).l,a2
	moveq #$1,d6

sub_20acda:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ace2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ace6:
	sub.l d3,d1
	bcs.s loc_20acee
	addq.w #$1,d2
	bra.s loc_20ace6
loc_20acee:
	add.l d3,d1
	tst.w d2
	beq.s loc_20acf8
	move.w #$1,d4
loc_20acf8:
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
	dbf d6,loc_20ace2
	rts
	.incbin 44334, 726
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$2488,$2(a0)
	move.l #$23b354,$4(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
loc_20b02e:
	lea ($d000).w,a1
	bsr.w sub_20b0a4
	beq.s loc_20b098
	move.b #$1,($ff156e).l
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$150,d0
	move.w d0,$8(a1)
	bset.b #$0,($f7cc).w
	move.w #$808,($f602).w
	move.w #$0,$10(a1)
	move.w #$0,$14(a1)
	move.b #$1,($f744).w
	move.w #$af,d0
	jsr (sub_20220c).l
	jsr (sub_207876).l
	bne.s loc_20b02e
	move.b #$14,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$28(a1)
loc_20b098:
	lea (dat_23b34c).l,a1
	jmp (sub_205a5a).l

sub_20b0a4:
	move.b $17(a1),d1
	ext.w d1
	addi.w #$10,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20b0e0
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20b0e0
	move.b $16(a1),d1
	ext.w d1
	addi.w #$20,d1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_20b0e0
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20b0e0
	moveq #$1,d0
	rts
loc_20b0e0:
	moveq #$0,d0
	rts
	.incbin 45284, 1776
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b7f2(pc,d0.w),d0
	jsr dat_20b7f2(pc,d0.w)
	jsr (sub_203850).l
	jmp (loc_2078ac).l
dat_20b7f2:
	dc.b $00,$08,$00,$4c,$00,$d4,$00,$e0
	tst.b $28(a0)
	beq.s loc_20b806
	bset.b #$1,$1(a0)
loc_20b806:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$34d,$2(a0)
	tst.b ($ff1956).l
	bne.s loc_20b824
	ori.b #$80,$2(a0)
loc_20b824:
	move.l #$20b90c,$4(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	tst.b $2a(a0)
	beq.s loc_20b84a
	subq.b #$1,$2a(a0)
	bra.s loc_20b89c
loc_20b84a:
	move.b $17(a6),d0
	ext.w d0
	move.b $17(a0),d1
	ext.w d1
	add.w d0,d1
	move.w $8(a0),d0
	sub.w $8(a6),d0
	add.w d1,d0
	bmi.s loc_20b89e
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20b89e
	move.b $16(a6),d0
	ext.w d0
	move.b $16(a0),d1
	ext.w d1
	add.w d0,d1
	move.w $c(a0),d0
	sub.w $c(a6),d0
	add.w d1,d0
	bmi.s loc_20b89e
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20b89e
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	eori.b #$1,($ff1956).l
loc_20b89c:
	rts
loc_20b89e:
	btst.b #$7,$2(a0)
	beq.s loc_20b8b0
	tst.b ($ff1956).l
	bne.s loc_20b8ba
	rts
loc_20b8b0:
	tst.b ($ff1956).l
	beq.s loc_20b8ba
	rts
loc_20b8ba:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	rts
	lea (dat_20b8fe).l,a1
	jmp (sub_205a5a).l
	ori.w #$8000,$2(a0)
	move.b #$4,$18(a0)
	tst.b ($ff1956).l
	beq.s loc_20b8f2
	andi.w #$7fff,$2(a0)
	move.b #$0,$18(a0)
loc_20b8f2:
	move.b #$0,$1b(a0)
	subq.b #$4,$24(a0)
	rts
dat_20b8fe:
	.incbin 47358, 184
	cmpi.b #$4,$24(a0)
	bcs.s loc_20b9ca
	tst.b $3e(a0)
	beq.s loc_20b9ca
	jmp (sub_2038fc).l
loc_20b9ca:
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20b9da
	cmpi.b #$6,($d024).w
	bcc.s loc_20b9f0
loc_20b9da:
	move.w dat_20ba38(pc,d0.w),d0
	jsr dat_20ba38(pc,d0.w)
	cmpi.b #$4,$24(a0)
	bne.s loc_20b9f0
	tst.b $28(a0)
	bne.s loc_20b9f6
loc_20b9f0:
	jsr (sub_203850).l
loc_20b9f6:
	cmpi.b #$2,$24(a0)
	bne.s loc_20ba36
	move.l $2a(a0),-(a7)
	move.l $36(a0),-(a7)
	move.l $3a(a0),-(a7)
	move.w $34(a0),d0
	jsr (sub_2078b0).l
	bne.s loc_20ba1e
	move.l (a7)+,d0
	move.l (a7)+,d0
	move.l (a7)+,d0
	rts
loc_20ba1e:
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
loc_20ba36:
	rts
dat_20ba38:
	.incbin 47672, 16
	addq.b #$2,$24(a0)
	move.w $8(a0),$34(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20c3d4,$4(a0)
	move.b #$8,$17(a0)
	move.b #$8,$16(a0)
	move.b #$1,$1a(a0)
	move.b $28(a0),d0
	cmpi.b #$2,d0
	bcs.s loc_20ba92
	subq.b #$1,d0
	move.b d0,$29(a0)
	move.b d0,$1b(a0)
	move.b #$0,$28(a0)
loc_20ba92:
	moveq #$2,d6
	move.l a0,-(a7)
loc_20ba96:
	jsr (sub_20788c).l
	beq.s loc_20baa6
	movea.l (a7)+,a0
	jmp (sub_2038fc).l
loc_20baa6:
	movea.l a1,a0
	dbf d6,loc_20ba96
	movea.l (a7)+,a0
	moveq #$2,d6
	move.b #$4,d1
loc_20bab4:
	jsr (sub_20788c).l
	move.b #$1e,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a0),$8(a1)
	move.w $8(a0),$34(a1)
	move.w $c(a0),$c(a1)
	cmpi.b #$2,d6
	bne.s loc_20baf8
	move.w #$520,$2(a1)
	move.l #$2097e2,$4(a1)
	move.b #$5,$18(a1)
	move.l a1,$2a(a0)
	bra.s loc_20bb22
loc_20baf8:
	move.w #$300,$2(a1)
	move.l #$20c3d4,$4(a1)
	move.b #$20,$17(a1)
	move.b #$20,$16(a1)
	cmpi.w #$1,d6
	bne.s loc_20bb1e
	move.l a1,$36(a0)
	bra.s loc_20bb22
loc_20bb1e:
	move.l a1,$3a(a0)
loc_20bb22:
	move.b $28(a0),$28(a1)
	move.l a0,$2a(a1)
	move.b d1,$24(a1)
	cmpi.w #$2,d6
	bne.s loc_20bb38
	addq.b #$4,d1
loc_20bb38:
	addq.b #$2,d1
	dbf d6,loc_20bab4
	tst.b $29(a0)
	bne.s loc_20bb58
	movea.l $2a(a0),a1
	cmpi.b #$6,$24(a1)
	bcs.s loc_20bb5a
	cmpi.b #$2,$29(a1)
	beq.s loc_20bb5a
loc_20bb58:
	rts
loc_20bb5a:
	lea (dat_20c3c8).l,a1
	jmp (sub_205a5a).l
	tst.b $28(a0)
	bne.s loc_20bb74
	bsr.w sub_20bb76
	bra.w loc_20bf3e
loc_20bb74:
	rts

sub_20bb76:
	lea (dat_20bc1a).l,a2
	lea (dat_20bc38).l,a3
	tst.b $28(a0)
	beq.s loc_20bba8
	lea (dat_20bc24).l,a2
	lea (dat_20bc5c).l,a3
	cmpi.b #$1,$28(a0)
	beq.s loc_20bba8
	lea (dat_20bc2e).l,a2
	lea (dat_20bc80).l,a3
loc_20bba8:
	move.w #$520,$2(a0)
	movea.l $2a(a0),a1
	moveq #$0,d0
	move.b $1b(a1),d0
	btst.l #$0,d0
	bne.s loc_20bbc4
	move.w #$4f2,$2(a0)
loc_20bbc4:
	move.w d0,d1
	move.b dat_20bc04(pc,d0.w),d0
	add.w d0,d0
	add.w d0,d0
	move.l dat_20bc0e(pc,d0.w),$4(a0)
	andi.b #$fc,$1(a0)
	move.b $0(a2,d1.w),d0
	or.b d0,$1(a0)
	add.w d1,d1
	add.w d1,d1
	move.w $0(a3,d1.w),d0
	move.w $8(a1),$8(a0)
	add.w d0,$8(a0)
	move.w $2(a3,d1.w),d0
	move.w $c(a1),$c(a0)
	add.w d0,$c(a0)
	rts
dat_20bc04:
	dc.b $02,$00,$02,$01,$02,$00,$02,$01
	dc.b $02,$00
dat_20bc0e:
	dc.b $00,$20,$97,$e2,$00,$20,$97,$dc
	dc.b $00,$20,$98,$2c
dat_20bc1a:
	dc.b $00,$00,$00,$00,$01,$01,$01,$00
	dc.b $00,$00
dat_20bc24:
	dc.b $02,$00,$00,$00,$01,$01,$03,$02
	dc.b $02,$00
dat_20bc2e:
	dc.b $01,$01,$03,$02,$02,$00,$00,$00
	dc.b $01,$00
dat_20bc38:
	.incbin 48184, 36
dat_20bc5c:
	.incbin 48220, 36
dat_20bc80:
	.incbin 48256, 202

sub_20bd4a:
	lea (dat_20be90).l,a2
	lea (dat_20be9a).l,a3
	lea (dat_20bec2).l,a4
	tst.b $28(a0)
	beq.s loc_20bd7a
	lea (dat_20beae).l,a3
	lea (dat_20bed6).l,a4
	tst.b $29(a0)
	beq.s loc_20bd7a
	lea (dat_20beea).l,a4
loc_20bd7a:
	lea (dat_20c1ee).l,a5
	bra.s loc_20bdb8

sub_20bd82:
	lea (dat_20be90).l,a2
	lea (dat_20bea4).l,a3
	lea (dat_20becc).l,a4
	tst.b $28(a0)
	beq.s loc_20bdb2
	lea (dat_20beb8).l,a3
	lea (dat_20bee0).l,a4
	tst.b $29(a0)
	beq.s loc_20bdb2
	lea (dat_20bef4).l,a4
loc_20bdb2:
	lea (dat_20c1f8).l,a5
loc_20bdb8:
	movea.l $2a(a0),a1
	moveq #$0,d0
	move.b $1b(a1),d0
	move.b $0(a2,d0.w),$1a(a0)
	andi.b #$fc,$1(a0)
	move.b $0(a3,d0.w),d1
	or.b d1,$1(a0)
	move.b $0(a4,d0.w),d0
	lea (dat_20befe).l,a4
	add.w d0,d0
	add.w d0,d0
	move.w $0(a4,d0.w),d1
	move.w $8(a1),$8(a0)
	add.w d1,$8(a0)
	move.w $2(a4,d0.w),d1
	move.w $c(a1),$c(a0)
	add.w d1,$c(a0)
	tst.b $28(a0)
	beq.s loc_20be4c
	movea.l $2a(a0),a2
	movea.l $2a(a2),a2
	tst.b $29(a2)
	beq.s loc_20be34
	cmpi.b #$2,$29(a2)
	bne.s loc_20be4c
	tst.b $29(a0)
	bne.s loc_20be4c
	movea.l a5,a3
	move.l a0,-(a7)
	movea.l a2,a0
	movea.l $2e(a2),a2
	bsr.w sub_20bfb8
	movea.l (a7)+,a0
	rts
loc_20be34:
	tst.b ($ff1906).l
	bne.s loc_20be4c
	lea ($d000).w,a2
	bsr.s sub_20be4e
	bne.w loc_20c068
	move.b #$0,$29(a0)
loc_20be4c:
	rts

sub_20be4e:
	move.w #$18,d2
	move.w #$18,d3
	bra.w loc_20bf5a
	.incbin 48730, 54
dat_20be90:
	dc.b $04,$02,$04,$03,$04,$02,$04,$03
	dc.b $04,$00
dat_20be9a:
	dc.b $00,$00,$00,$00,$02,$02,$02,$00
	dc.b $00,$00
dat_20bea4:
	dc.b $03,$02,$03,$01,$01,$00,$01,$01
	dc.b $03,$00
dat_20beae:
	dc.b $01,$00,$00,$00,$02,$02,$03,$01
	dc.b $01,$00
dat_20beb8:
	dc.b $02,$02,$03,$01,$01,$00,$00,$00
	dc.b $02,$00
dat_20bec2:
	dc.b $01,$00,$01,$02,$03,$04,$03,$02
	dc.b $01,$00
dat_20becc:
	dc.b $09,$08,$09,$0a,$0b,$0c,$0b,$0a
	dc.b $09,$00
dat_20bed6:
	dc.b $07,$00,$01,$02,$03,$04,$05,$06
	dc.b $07,$00
dat_20bee0:
	dc.b $03,$04,$05,$06,$07,$00,$01,$02
	dc.b $03,$00
dat_20beea:
	dc.b $0b,$0c,$0d,$0e,$0f,$08,$09,$0a
	dc.b $0b,$00
dat_20bef4:
	dc.b $0f,$08,$09,$0a,$0b,$0c,$0d,$0e
	dc.b $0f,$00
dat_20befe:
	.incbin 48894, 64
loc_20bf3e:
	tst.b ($ff1906).l
	bne.s loc_20bf50
	lea ($d000).w,a2
	bsr.s sub_20bf52
	bne.w loc_20c10c
loc_20bf50:
	rts

sub_20bf52:
	move.w #$20,d2
	move.w #$20,d3
loc_20bf5a:
	cmpi.b #$4,$24(a2)
	bne.s loc_20bf6c
	subq.b #$2,$24(a2)
	move.w #$78,$30(a2)
loc_20bf6c:
	cmpi.b #$2b,$1c(a2)
	beq.s loc_20bfb4
	cmpi.b #$6,$24(a2)
	bcc.s loc_20bfb4
	move.b $17(a2),d1
	ext.w d1
	add.w d2,d1
	move.w $8(a0),d0
	sub.w $8(a2),d0
	add.w d1,d0
	bmi.s loc_20bfb4
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20bfb4
	move.b $16(a2),d1
	ext.w d1
	add.w d3,d1
	move.w $c(a0),d0
	sub.w $c(a2),d0
	add.w d1,d0
	bmi.s loc_20bfb4
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20bfb4
	moveq #$1,d0
	rts
loc_20bfb4:
	moveq #$0,d0
	rts

sub_20bfb8:
	moveq #$0,d0
	move.b $1b(a1),d0
	move.w d0,d2
	move.b $0(a3,d0.w),d0
	lea (dat_20c202).l,a1
	add.w d0,d0
	add.w d0,d0
	move.w $8(a0),$8(a2)
	move.w $0(a1,d0.w),d1
	add.w d1,$8(a2)
	move.w $c(a0),$c(a2)
	move.w $2(a1,d0.w),d1
	add.w d1,$c(a2)
	rts
loc_20bfec:
	lea (dat_20c020).l,a3
	moveq #$0,d0
	move.b $25(a4),d0
	subi.b #$a,d0
	beq.s loc_20c004
	lea (dat_20c044).l,a3
loc_20c004:
	move.b $1b(a1),d0
	add.w d0,d0
	add.w d0,d0
	move.w $0(a3,d0.w),$10(a4)
	move.w $2(a3,d0.w),$12(a4)
	move.b #$1a,$32(a4)
	rts
dat_20c020:
	.incbin 49184, 36
dat_20c044:
	.incbin 49220, 36
loc_20c068:
	clr.b $3c(a2)
	bset.b #$0,$2c(a2)
	bset.b #$2,$22(a2)
	move.b #$e,$16(a2)
	move.b #$7,$17(a2)
	move.b #$2,$1c(a2)
	movea.l $2a(a0),a4
	movea.l $2a(a4),a4
	addq.b #$2,$24(a4)
	move.b #$1,$29(a4)
	move.l a2,$2e(a4)
	movea.l a5,a3
	movem.l a0-a1,-(a7)
	movea.l a4,a0
	bsr.w sub_20bfb8
	movem.l (a7)+,a0-a1
	movea.l $2a(a0),a4
	cmpi.b #$a,$24(a0)
	bne.s loc_20c0c2
	adda.l #$4,a4
loc_20c0c2:
	movea.l $36(a4),a4
	move.b $24(a4),$25(a4)
	movem.l a0-a4,-(a7)
	movea.l $2a(a0),a1
	movea.l $2a(a1),a1
	movea.l a4,a0
	cmpi.b #$a,$24(a0)
	bne.s loc_20c0ee
	move.b #$2,$28(a1)
	bsr.w sub_20bd4a
	bra.s loc_20c0f8
loc_20c0ee:
	move.b #$1,$28(a1)
	bsr.w sub_20bd82
loc_20c0f8:
	movem.l (a7)+,a0-a4
	move.b #$e,$24(a4)
	move.b #$1,$29(a4)
	bra.w loc_20bfec
loc_20c10c:
	clr.b $3c(a2)
	bset.b #$0,$2c(a2)
	bset.b #$2,$22(a2)
	move.b #$e,$16(a2)
	move.b #$7,$17(a2)
	move.b #$2,$1c(a2)
	move.l a2,$2e(a0)
	move.b #$3c,$32(a0)
	addq.b #$2,$24(a0)
	movea.l $2a(a0),a1
	lea (dat_20c1da).l,a3
	bsr.w sub_20bfb8
	btst.l #$0,d2
	bne.s loc_20c1a0
	move.w #$e0,d0
	jsr (sub_200710).l
	mulu.w #$1000,d0
	mulu.w #$1000,d1
	lsr.l #$8,d0
	lsr.l #$8,d1
	move.w d0,$12(a2)
	move.w d1,$10(a2)
	btst.b #$1,$1(a0)
	beq.s loc_20c17a
	neg.w $12(a2)
loc_20c17a:
	bclr.b #$0,$22(a2)
	btst.b #$0,$1(a0)
	beq.s loc_20c192
	bset.b #$0,$22(a2)
	neg.w $10(a2)
loc_20c192:
	bset.b #$1,$22(a2)
	bclr.b #$3,$22(a2)
	rts
loc_20c1a0:
	btst.l #$1,d2
	bne.s loc_20c1c0
	move.w #$0,$12(a2)
	move.w #$1000,$10(a2)
	btst.b #$0,$1(a0)
	beq.s loc_20c192
	neg.w $10(a2)
	bra.s loc_20c192
loc_20c1c0:
	move.w #$0,$10(a2)
	move.w #$f000,$12(a2)
	btst.b #$1,$1(a0)
	beq.s loc_20c192
	neg.w $12(a2)
	bra.s loc_20c192
dat_20c1da:
	.incbin 49626, 20
dat_20c1ee:
	dc.b $01,$00,$01,$02,$03,$04,$05,$06
	dc.b $07,$00
dat_20c1f8:
	dc.b $03,$04,$05,$06,$07,$00,$01,$02
	dc.b $03,$00
dat_20c202:
	.incbin 49666, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c23c(pc,d0.w),d0
	jsr dat_20c23c(pc,d0.w)
	jsr (sub_203850).l
	jmp (loc_2078ac).l
dat_20c23c:
	dc.b $00,$08,$00,$4c,$00,$50,$00,$7e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20c3d4,$4(a0)
	move.b #$20,$19(a0)
	move.b #$c,$16(a0)
	move.b #$2,$1a(a0)
	tst.b $28(a0)
	beq.s loc_20c288
	move.b #$0,$1a(a0)
	move.w #$f800,$12(a0)
	move.b #$6,$24(a0)
	bra.s loc_20c2ba
loc_20c288:
	bra.w loc_20c2dc
	.incbin 49804, 46
loc_20c2ba:
	addi.w #$40,$12(a0)
	jsr (sub_2037fa).l
	move.w ($f704).w,d0
	addi.w #$e8,d0
	cmp.w $c(a0),d0
	bcc.s loc_20c2da
	jmp (sub_2038fc).l
loc_20c2da:
	rts
loc_20c2dc:
	tst.b ($ff1906).l
	bne.s loc_20c2ee
	lea ($d000).w,a2
	bsr.s sub_20c2f0
	bne.w loc_20c308
loc_20c2ee:
	rts

sub_20c2f0:
	btst.b #$1,$22(a2)
	beq.s loc_20c2fc
	moveq #$0,d0
	rts
loc_20c2fc:
	move.w #$20,d2
	move.w #$10,d3
	bra.w loc_20bf5a
loc_20c308:
	clr.b ($d02c).w
	jsr (sub_207876).l
	bne.s loc_20c34c
	move.b #$8,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$28(a1)
	movea.l a1,a3
	jsr (sub_207876).l
	bne.s loc_20c34c
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$6,$c(a1)
loc_20c34c:
	move.w #$ce,d0
	jsr (sub_20220c).l
	addq.b #$2,$24(a0)
	move.w $8(a0),$2c(a0)
	move.b #$6,$2a(a0)
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcc.s loc_20c39c
	move.w #$f000,$10(a2)
	bset.b #$0,$22(a1)
	move.w #$200,$10(a3)
	addi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$800,$10(a0)
	bset.b #$0,$22(a2)
	rts
loc_20c39c:
	move.w #$1000,$10(a2)
	bclr.b #$0,$22(a1)
	move.w #$fe00,$10(a3)
	subi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$f800,$10(a0)
	bclr.b #$0,$22(a2)
	rts
dat_20c3c8:
	.incbin 50120, 192
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c496(pc,d0.w),d0
	jmp dat_20c496(pc,d0.w)
dat_20c496:
	.incbin 50326, 270
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c5b2(pc,d0.w),d0
	jmp dat_20c5b2(pc,d0.w)
dat_20c5b2:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20ccb0,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20cc70).l,a2
loc_20c600:
	jsr (sub_207876).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20ccb0,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20c652
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20c652:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20c600
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c67a
	bge.s loc_20c670
	neg.w d0
loc_20c670:
	add.w d0,$a(a0)
	jmp (sub_203850).l
loc_20c67a:
	addq.b #$4,$24(a0)
	jmp (sub_203850).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c69e
	bge.s loc_20c694
	neg.w d0
loc_20c694:
	add.w d0,$8(a0)
	jmp (sub_203850).l
loc_20c69e:
	addq.b #$4,$24(a0)
	jmp (sub_203850).l
	tst.b $1e(a0)
	beq.s loc_20c6b8
	subq.b #$1,$1e(a0)
	jmp (sub_203850).l
loc_20c6b8:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c6d2
	bge.s loc_20c6c8
	neg.w d0
loc_20c6c8:
	add.w d0,$a(a0)
	jmp (sub_203850).l
loc_20c6d2:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2023d6).l
	tst.b $1e(a0)
	beq.s loc_20c6f4
	subq.b #$1,$1e(a0)
	jmp (sub_203850).l
loc_20c6f4:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c70e
	bge.s loc_20c704
	neg.w d0
loc_20c704:
	add.w d0,$8(a0)
	jmp (sub_203850).l
loc_20c70e:
	jmp (sub_2038fc).l
	tst.l ($f680).w
	bne.s loc_20c728
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2038fc).l
loc_20c728:
	rts
	.incbin 50986, 1350
dat_20cc70:
	.incbin 52336, 344
loc_20cdc8:
	lea dat_20ce1a(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cdd4:
	cmp.w (a1)+,d0
	bcs.s loc_20cddc
	addq.b #$2,d1
	bra.s loc_20cdd4
loc_20cddc:
	move.b d1,($ff1574).l
	move.w dat_20ce22(pc,d1.w),d0
	jmp (sub_2023d6).l

sub_20cdec:
	lea dat_20ce1a(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cdf8:
	cmp.w (a1)+,d0
	bcs.s loc_20ce00
	addq.b #$2,d1
	bra.s loc_20cdf8
loc_20ce00:
	cmp.b ($ff1574).l,d1
	bne.s loc_20ce0a
	rts
loc_20ce0a:
	move.b d1,($ff1574).l
	move.w dat_20ce1e(pc,d1.w),d0
	jmp (loc_202408).l
dat_20ce1a:
	dc.b $22,$00,$ff,$ff
dat_20ce1e:
	dc.b $00,$07,$00,$08
dat_20ce22:
	dc.b $00,$02,$00,$06

sub_20ce26:
	move.w #$4f2,$2(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ce4c(pc,d0.w),d0
	jsr dat_20ce4c(pc,d0.w)
	jsr (sub_203850).l
	move.w $36(a0),d0
	jmp (sub_2078b0).l
dat_20ce4c:
	dc.b $00,$96,$01,$52

sub_20ce50:
	lea ($d000).w,a1
	move.b #$8,$16(a0)
	jsr (sub_208e90).l
	bne.s loc_20ce70
	move.b #$c,$16(a0)
	jsr (sub_208e90).l
	beq.s loc_20ce9a
loc_20ce70:
	move.b #$8,$16(a0)
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcs.s loc_20ce9a
	move.w $c(a0),d0
	move.b $16(a0),d1
	ext.w d1
	sub.w d1,d0
	move.b $16(a1),d1
	ext.w d1
	sub.w d1,d0
	addq.w #$2,d0
	move.w d0,$c(a1)
loc_20ce9a:
	move.b #$8,$16(a0)
	rts
dat_20cea2:
	.incbin 52898, 64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20d044,$4(a0)
	move.w #$366,$2(a0)
	move.b #$20,$19(a0)
	move.b #$8,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20cf7a
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d1
	moveq #$0,d2
	move.b $28(a0),d1
	andi.w #$f,d1
	move.b d1,$2f(a0)
	move.b d1,d2
	subq.b #$1,d2
loc_20cf32:
	jsr (sub_207876).l
	bne.s loc_20cf74
	move.b #$20,$0(a1)
	move.w $36(a0),$36(a1)
	move.w $32(a0),$32(a1)
	move.b $28(a0),$28(a1)
	move.b $2f(a0),$2f(a1)
	move.b d1,$3c(a1)
	move.b #$2,$1a(a1)
	cmp.b $2f(a0),d1
	bne.s loc_20cf74
	move.b #$1,$1a(a1)
	move.b #$a9,$20(a1)
loc_20cf74:
	subq.b #$1,d1
	dbf d2,loc_20cf32
loc_20cf7a:
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$f0,d0
	lsr.b #$1,d0
	lea dat_20cea2(pc),a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$3a(a0)
	move.w (a1)+,$3e(a0)
	move.w (a1)+,$34(a0)
	move.w (a1)+,$38(a0)
	move.l $8(a0),d0
	move.l $c(a0),d1
	movem.l d0-d1,-(a7)
	bsr.w sub_20cfda
	movem.l (a7)+,d0-d1
	move.b $2f(a0),d4
	cmp.b $3c(a0),d4
	bne.s loc_20cfd8
	move.l $8(a0),d2
	move.l $c(a0),d3
	sub.l d0,d2
	sub.l d1,d3
	asr.l #$8,d2
	asr.l #$8,d3
	move.w d2,$10(a0)
	move.w d3,$12(a0)
	bsr.w sub_20ce50
loc_20cfd8:
	rts

sub_20cfda:
	tst.b $3d(a0)
	bne.s loc_20cffa
	move.w $30(a0),d0
	add.w $3e(a0),d0
	move.w d0,$30(a0)
	add.w d0,$3a(a0)
	cmp.w $34(a0),d0
	seq $3d(a0)
	bra.s loc_20d014
loc_20cffa:
	move.w $30(a0),d0
	sub.w $3e(a0),d0
	move.w d0,$30(a0)
	add.w d0,$3a(a0)
	cmp.w $38(a0),d0
	bne.s loc_20d014
	clr.b $3d(a0)
loc_20d014:
	move.b $3a(a0),d0
	jsr (sub_200710).l
	move.b $3c(a0),d2
	ext.w d2
	asl.w #$4,d2
	mulu.w d2,d0
	mulu.w d2,d1
	asr.l #$4,d0
	asr.w #$4,d0
	asr.l #$4,d1
	asr.w #$4,d1
	add.w $32(a0),d1
	add.w $36(a0),d0
	move.w d1,$c(a0)
	move.w d0,$8(a0)
	rts
	.incbin 53316, 914
	move.b $29(a0),d0
	bpl.s loc_20d3f6
	addq.b #$1,d0
	beq.s loc_20d3e4
	bra.w loc_20d624
loc_20d3e4:
	movea.w $3e(a0),a1
	cmpi.b #$22,$0(a1)
	beq.s loc_20d3fc
loc_20d3f0:
	jmp (sub_2038fc).l
loc_20d3f6:
	jsr (sub_20e6bc).l
loc_20d3fc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d420(pc,d0.w),d0
	jsr dat_20d420(pc,d0.w)
	lea dat_20d694(pc),a1
	jsr (sub_205a5a).l
	jsr (sub_203850).l
	jmp (loc_2078ac).l
dat_20d420:
	dc.b $00,$04,$00,$fc
	move.b #$31,$20(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2e(a0)
	move.w #$8000,$2c(a0)
	move.w #$8000,$30(a0)
	move.w #$200,d0
	move.w #$100,d1
	moveq #$4,d2
	tst.b $28(a0)
	beq.s loc_20d45c
	move.w #$100,d0
	move.w #$80,d1
	moveq #$0,d2
loc_20d45c:
	move.w d0,$36(a0)
	move.w d1,$38(a0)
	move.b d2,$1c(a0)
	movea.w a0,a1
	bsr.s sub_20d4e8
	moveq #$2,d6
	move.w #$1000,d5
	move.w #$800,d4
	tst.b $28(a0)
	beq.s loc_20d484
	move.w #$2000,d5
	move.w #$1000,d4
loc_20d484:
	moveq #$0,d3
	moveq #$0,d2
	moveq #$0,d1
loc_20d48a:
	jsr (sub_20788c).l
	bne.w loc_20d3f0
	move.w a0,$3e(a1)
	addq.b #$1,d1
	move.b d1,d0
	add.b $1c(a0),d0
	move.b d0,$1c(a1)
	sub.w d5,d3
	sub.w d4,d2
	move.w d3,$32(a1)
	move.w d2,$34(a1)
	move.b #$ff,$29(a1)
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l $2a(a0),$2a(a1)
	move.l $2e(a0),$2e(a1)
	move.w $36(a0),$36(a1)
	move.w $38(a0),$38(a1)
	bsr.s sub_20d4e8
	dbf d6,loc_20d48a
	rts

sub_20d4e8:
	move.b #$2,$24(a1)
	ori.b #$4,$1(a1)
	move.b #$3,$18(a1)
	move.b #$c,$17(a1)
	move.b #$c,$19(a1)
	move.b #$8,$16(a1)
	move.w #$23c6,$2(a1)
	move.l #$20db5a,$4(a1)
	rts
	tst.b $28(a0)
	bne.w loc_20d5ba
	tst.b $29(a0)
	bmi.w loc_20d5ba
	tst.w $3a(a0)
	beq.s loc_20d53a
	subq.w #$1,$3a(a0)
	bra.w loc_20d5ba
loc_20d53a:
	lea ($d000).w,a2
	bsr.w sub_20d5fc
	bcc.w loc_20d5ba
	move.w #$f0,$3a(a0)
	jsr (sub_207876).l
	bne.s loc_20d5ba
	move.b #$8,$1c(a1)
	move.b #$fe,$29(a1)
	move.b #$f1,$20(a1)
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	bsr.w sub_20d4e8
	move.w d5,d1
	move.w d6,d2
	jsr (sub_2009a8).l
	jsr (sub_200710).l
	swap d1
	swap d0
	asr.l #$7,d1
	asr.l #$7,d0
	move.l d0,$2e(a1)
	move.l d1,$2a(a1)
	bpl.s loc_20d5aa
	bchg.b #$0,$1(a1)
	bchg.b #$0,$22(a1)
loc_20d5aa:
	tst.b $1(a0)
	bpl.s loc_20d5ba
	move.w #$a0,d0
	jsr (sub_20220c).l
loc_20d5ba:
	move.w $32(a0),d0
	add.w $36(a0),d0
	move.w d0,$32(a0)
	lsr.w #$8,d0
	jsr (sub_200710).l
	swap d0
	asr.l #$4,d0
	add.l $2a(a0),d0
	move.l d0,$8(a0)
	move.w $34(a0),d0
	add.w $38(a0),d0
	move.w d0,$34(a0)
	lsr.w #$8,d0
	jsr (sub_200710).l
	swap d1
	asr.l #$2,d1
	add.l $2e(a0),d1
	move.l d1,$c(a0)
	rts

sub_20d5fc:
	move.w $c(a2),d0
	sub.w $c(a0),d0
	move.w d0,d6
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20d622
	move.w $8(a2),d0
	sub.w $8(a0),d0
	move.w d0,d5
	subi.w #$ff88,d0
	subi.w #$f0,d0
loc_20d622:
	rts
loc_20d624:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	tst.b $21(a0)
	beq.s loc_20d666
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2038fc).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	move.b #$1,$25(a0)
	move.w #$9e,d0
	jmp (sub_20220c).l
loc_20d666:
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bpl.s loc_20d676
	neg.w d0
loc_20d676:
	cmpi.w #$e0,d0
	bgt.w loc_20d3f0
	lea dat_20d694(pc),a1
	jsr (sub_205a5a).l
	jsr (sub_203850).l
	jmp (loc_2078ac).l
dat_20d694:
	.incbin 54932, 3180
	tst.b $24(a0)
	bne.s loc_20e344
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4376,$2(a0)
	move.l #$20e366,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20e35a(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20e344:
	lea ($d000).w,a1
	jsr (sub_208e90).l
	jsr (sub_203850).l
	jmp (loc_2078ac).l
dat_20e35a:
	.incbin 58202, 106
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e3e2(pc,d0.w),d0
	jsr dat_20e3e2(pc,d0.w)
	jsr (sub_203850).l
	move.w $2a(a0),d0
	jmp (sub_2078b0).l
dat_20e3e2:
	dc.b $00,$06,$00,$8c,$00,$ba
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$b5,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$386,$2(a0)
	move.l #$20e4ae,$4(a0)
	move.w $8(a0),$2a(a0)
	lea dat_20e4ec(pc),a1
	moveq #$0,d0
	move.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2e(a0)
	lea dat_20e4bc(pc),a1
	moveq #$0,d0
	move.b ($ff152e).l,d0
	lsl.w #$4,d0
	moveq #$0,d1
	move.b $28(a0),d1
	lsl.w #$3,d1
	add.w d1,d0
	adda.w d0,a1
	moveq #$0,d0
	moveq #$0,d1
	move.w (a1)+,d0
	move.w (a1)+,d1
	lsl.l #$8,d0
	lsl.l #$8,d1
	move.l d0,$32(a0)
	move.l d1,$36(a0)
	move.w (a1)+,$2c(a0)
	move.w (a1),$30(a0)
	move.l $32(a0),d0
	move.l $36(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	subq.w #$1,$30(a0)
	bne.s loc_20e49a
	addq.b #$2,$24(a0)
	move.w $2e(a0),$30(a0)
	neg.l $32(a0)
	neg.l $36(a0)
	tst.b $1(a0)
loc_20e49a:
	rts
	subq.w #$1,$30(a0)
	bne.s loc_20e4ac
	subq.b #$2,$24(a0)
	move.w $2c(a0),$30(a0)
loc_20e4ac:
	rts
	dc.b $00,$02,$02,$f0,$0d,$00,$00,$f0
	dc.b $00,$0d,$10,$00,$f0,$00
dat_20e4bc:
	.incbin 58556, 48
dat_20e4ec:
	dc.b $00,$3c,$00,$28,$00,$14
	tst.b $29(a0)
	bne.w loc_20e57a
	tst.b $24(a0)
	bne.s loc_20e53c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$38e,$2(a0)
	move.l #$20e67a,$4(a0)
	move.b $28(a0),$1a(a0)
	move.w #$96,$2a(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
loc_20e53c:
	subq.w #$1,$2a(a0)
	bne.s loc_20e56e
	move.w #$96,$2a(a0)
	jsr (sub_207876).l
	bne.s loc_20e56e
	move.b $0(a0),$0(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20e56e:
	jsr (sub_203850).l
	jmp (loc_2078ac).l
loc_20e57a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e58e(pc,d0.w),d0
	jsr dat_20e58e(pc,d0.w)
	jmp (sub_203850).l
dat_20e58e:
	dc.b $00,$08,$00,$7c,$00,$98,$00,$c4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$b5,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$386,$2(a0)
	move.l #$20e6ae,$4(a0)
	move.w #$20,$2e(a0)
	move.l #$8000,d0
	btst.b #$0,$28(a0)
	seq $3f(a0)
	bne.s loc_20e5e6
	neg.l d0
loc_20e5e6:
	move.l d0,$30(a0)
	lea $8(a0),a1
	move.w $8(a0),d0
	cmpi.b #$2,$28(a0)
	bge.s loc_20e602
	lea $c(a0),a1
	move.w $c(a0),d0
loc_20e602:
	move.w a1,$2a(a0)
	move.w d0,$2c(a0)
	move.l $30(a0),d0
	movea.w $2a(a0),a1
	add.l d0,(a1)
	subq.w #$1,$2e(a0)
	bne.s loc_20e624
	addq.b #$2,$24(a0)
	move.w #$1e,$2e(a0)
loc_20e624:
	rts
	subq.w #$1,$2e(a0)
	bne.s loc_20e650
	addq.b #$2,$24(a0)
	move.l #$60000,d0
	move.l #$ffffc000,d1
	btst.b #$0,$28(a0)
	bne.s loc_20e648
	neg.l d0
	neg.l d1
loc_20e648:
	move.l d0,$30(a0)
	move.l d1,$34(a0)
loc_20e650:
	rts
	move.l $34(a0),d0
	add.l d0,$30(a0)
	move.l $30(a0),d0
	movea.w $2a(a0),a1
	add.l d0,(a1)
	move.w (a1),d0
	sub.w $2c(a0),d0
	smi d0
	cmp.b $3f(a0),d0
	beq.s loc_20e678
	jmp (sub_2038fc).l
loc_20e678:
	rts
	.incbin 59002, 66

sub_20e6bc:
	tst.b ($ff156a).l
	beq.s loc_20e702
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e6d4
	tst.b $28(a0)
	beq.s loc_20e702
loc_20e6d4:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2038fc).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e700
	move.w #$9e,d0
	jsr (sub_20220c).l
loc_20e700:
	addq.l #$4,a7
loc_20e702:
	rts

sub_20e704:
	tst.b $28(a0)
	bmi.s loc_20e734
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e724
	tst.b ($ff156d).l
	bne.s loc_20e734
	addq.l #$4,a7
	jmp (loc_2078ac).l
loc_20e724:
	tst.b ($ff156a).l
	bne.s loc_20e734
	addq.l #$4,a7
	jmp (sub_2038fc).l
loc_20e734:
	rts
	jsr (sub_20e704).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20e84c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e756(pc,d0.w),d0
	jmp dat_20e756(pc,d0.w)
dat_20e756:
	.incbin 59222, 246
loc_20e84c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e85a(pc,d0.w),d0
	jmp dat_20e85a(pc,d0.w)
dat_20e85a:
	.incbin 59482, 1006
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$4af,$2(a0)
	move.l #$20ecdc,$4(a0)
	moveq #$8,d0
	moveq #$4,d1
	moveq #$0,d2
	tst.b $28(a0)
	bmi.s loc_20ec78
	moveq #$14,d0
	moveq #$18,d1
	moveq #$1,d2
loc_20ec78:
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
	move.b d2,$1c(a0)
	lea dat_20ec98(pc),a1
	jsr (sub_205a5a).l
	jmp (sub_203850).l
dat_20ec98:
	.incbin 60568, 174
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ed6a(pc,d0.w),d0
	jsr dat_20ed6a(pc,d0.w)
	jsr (sub_203850).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20ed68
	jmp (loc_2078ac).l
loc_20ed68:
	rts
dat_20ed6a:
	dc.b $00,$08,$00,$9e,$01,$08,$01,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$22,$17(a0)
	move.b #$22,$19(a0)
	move.b #$20,$16(a0)
	lea dat_20f198(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	move.l #$20ef1a,$4(a0)
	move.l #$20f158,$2c(a0)
	move.w $c(a0),$30(a0)
	move.w #$4,$2a(a0)
	move.w #$1,$32(a0)
	moveq #$0,d0
	tst.b ($ff156a).l
	bne.s loc_20edde
	addq.b #$2,d0
loc_20edde:
	tst.b ($ff152e).l
	bne.s loc_20ede8
	addq.b #$1,d0
loc_20ede8:
	move.b d0,$1a(a0)
	tst.b ($ff156a).l
	bne.s loc_20ee08
	tst.b ($ff152e).l
	bne.s loc_20ee08
	move.b #$fa,$20(a0)
	subi.w #$10,$c(a0)
loc_20ee08:
	tst.b ($ff156a).l
	bne.s loc_20ee70
	tst.b ($ff152e).l
	bne.s loc_20ee70
	bsr.w sub_20eeec
	tst.b $21(a0)
	beq.s loc_20ee5c
	clr.w $20(a0)
	clr.w $2a(a0)
	move.b #$7,$1a(a0)
	addq.b #$2,$24(a0)
	move.b #$1,($ff156a).l
	move.l #$96,d0
	jsr (sub_20a888).l
	lea ($d000).w,a1
	jsr (sub_208e90).l
	beq.s loc_20ee5a
	jsr (sub_208d42).l
loc_20ee5a:
	rts
loc_20ee5c:
	lea ($d000).w,a1
	jsr (sub_208e90).l
	lea dat_20ef12(pc),a1
	jmp (sub_205a5a).l
loc_20ee70:
	rts
	.incbin 61042, 122

sub_20eeec:
	addq.w #$1,$2a(a0)
	move.w $2a(a0),d0
	andi.w #$7,d0
	bne.s loc_20ef02
	move.w $32(a0),d0
	add.w d0,$c(a0)
loc_20ef02:
	move.w $2a(a0),d0
	andi.w #$1f,d0
	bne.s loc_20ef10
	neg.w $32(a0)
loc_20ef10:
	rts
dat_20ef12:
	.incbin 61202, 646
dat_20f198:
	.incbin 61848, 22
	jsr (sub_20e6bc).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f1ce(pc,d0.w),d0
	jsr dat_20f1ce(pc,d0.w)
	jsr (sub_203850).l
	jmp (loc_2078ac).l
dat_20f1ce:
	.incbin 61902, 30
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$e,$17(a0)
	move.b #$e,$19(a0)
	move.b #$9,$16(a0)
	move.b #$2c,$20(a0)
	move.w #$245d,d0
	tst.b ($ff152e).l
	bne.s loc_20f224
	move.w #$23e9,d0
loc_20f224:
	move.w d0,$2(a0)
	lea dat_20f49a(pc),a1
	lea dat_20f440(pc),a2
	tst.b $28(a0)
	beq.s loc_20f23e
	lea dat_20f508(pc),a1
	lea dat_20f46a(pc),a2
loc_20f23e:
	move.l a1,$4(a0)
	move.l a2,$2e(a0)
	rts
	addi.l #$10000,$c(a0)
	jsr (sub_206980).l
	tst.w d1
	bpl.s loc_20f262
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20f262:
	rts
	addq.b #$2,$24(a0)
	move.l #$6000,d0
	move.l #$1000,d1
	bra.w loc_20f3dc
	bsr.w sub_20f3f4
	beq.s loc_20f2be
	move.w ($d008).w,d0
	sub.w $8(a0),d0
	spl d1
	subi.w #$ff80,d0
	subi.w #$100,d0
	bcc.s loc_20f2b4
	move.w ($d00c).w,d0
	sub.w $c(a0),d0
	subi.w #$ff80,d0
	subi.w #$100,d0
	bcc.s loc_20f2b4
	btst.b #$0,$1(a0)
	sne d0
	eor.b d1,d0
	bne.s loc_20f2b4
	addq.b #$2,$24(a0)
loc_20f2b4:
	movea.l $2e(a0),a1
	jmp (sub_205a5a).l
loc_20f2be:
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts
	.incbin 62160, 268
loc_20f3dc:
	tst.b $28(a0)
	beq.s loc_20f3e4
	move.l d1,d0
loc_20f3e4:
	btst.b #$0,$1(a0)
	bne.s loc_20f3ee
	neg.l d0
loc_20f3ee:
	move.l d0,$2a(a0)
	rts

sub_20f3f4:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	moveq #$0,d3
	move.b $17(a0),d3
	lea (loc_206a4a).l,a1
	tst.w $2a(a0)
	bpl.s loc_20f416
	neg.w d3
	lea (loc_206bec).l,a1
loc_20f416:
	jsr (a1)
	tst.w d1
	bmi.s loc_20f434
	jsr (sub_206980).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.s loc_20f434
	add.w d1,$c(a0)
	moveq #$ffffffff,d0
	rts
loc_20f434:
	move.l $2a(a0),d0
	sub.l d0,$8(a0)
	moveq #$0,d0
	rts
dat_20f440:
	.incbin 62528, 42
dat_20f46a:
	.incbin 62570, 48
dat_20f49a:
	.incbin 62618, 110
dat_20f508:
	.incbin 62728, 148
	tst.b $24(a0)
	bne.s loc_20f5c6
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$11,$16(a0)
	move.l #$20f606,$4(a0)
loc_20f5c6:
	move.b ($ff1588).l,$1a(a0)
	tst.b ($ff1956).l
	beq.s loc_20f5e6
	lea ($d000).w,a1
	jsr (sub_208e90).l
	sne $2a(a0)
	bra.s loc_20f5fa
loc_20f5e6:
	tst.b $2a(a0)
	beq.s loc_20f5fa
	clr.b $2a(a0)
	lea ($d000).w,a1
	jsr (sub_208d42).l
loc_20f5fa:
	jsr (sub_203850).l
	jmp (loc_2078ac).l
	.incbin 62982, 694

sub_20f8bc:
	jmp (loc_2062ce).l
dat_20f8c2:
	.incbin 63682, 16
dat_20f8d2:
	.incbin 63698, 1360
	moveq #$0,d0
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
loc_20fe48:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fe48
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
	.incbin 65126, 26
	subq.b #$1,(a2)
	bpl.w loc_20feb8
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fe96
	moveq #$0,d0
loc_20fe96:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fea6:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fea6
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20feb8:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
	.incbin 65220, 65852
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 1536
dat_2336bc:
	.incbin 210620, 3304
dat_2343a4:
	.incbin 213924, 256
dat_2344a4:
	.incbin 214180, 4096
dat_2354a4:
	.incbin 218276, 4996
dat_236828:
	.incbin 223272, 18742
dat_23b15e:
	.incbin 242014, 166
dat_23b204:
	.incbin 242180, 328
dat_23b34c:
	.incbin 242508, 19636
