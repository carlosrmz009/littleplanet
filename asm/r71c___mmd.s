; R71C__.MMD
; disassembled from the disc; code only, data comes from data/R71C__.MMD at build time
	.file "R71C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$21,$0a
	jmp (loc_201c80).l
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
	bsr.w sub_2021b6
	bsr.w sub_20215e
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2014fa

sub_200184:
	rts
	.incbin 390, 402

sub_200318:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20032a:
	move.w d1,(a0)+
	dbf d0,loc_20032a
	move.w #$15,d4
loc_200334:
	move.b #$12,($f62a).w
	bsr.w sub_20083e
	bsr.s sub_20034a
	bsr.w sub_20257c
	dbf d4,loc_200334
	rts

sub_20034a:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200360:
	bsr.s sub_20038e
	dbf d0,loc_200360
	cmpi.b #$1,($ff1506).l
	bne.s loc_20038c
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200386:
	bsr.s sub_20038e
	dbf d0,loc_200386
loc_20038c:
	rts

sub_20038e:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003b6
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2003a4
	move.w d1,(a0)+
	rts
loc_2003a4:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2003b2
	move.w d1,(a0)+
	rts
loc_2003b2:
	addq.w #$2,(a0)+
	rts
loc_2003b6:
	addq.w #$2,a0
	rts

sub_2003ba:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2003c4:
	move.b #$12,($f62a).w
	bsr.w sub_20083e
	bsr.s sub_2003da
	bsr.w sub_20257c
	dbf d4,loc_2003c4
	rts

sub_2003da:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003ea:
	bsr.s sub_200408
	dbf d0,loc_2003ea
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200400:
	bsr.s sub_200408
	dbf d0,loc_200400
	rts

sub_200408:
	move.w (a0),d2
	beq.s loc_200434
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200418
	subq.w #$2,(a0)+
	rts
loc_200418:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200426
	subi.w #$20,(a0)+
	rts
loc_200426:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200434
	subi.w #$200,(a0)+
	rts
loc_200434:
	addq.w #$2,a0
	rts

sub_200438:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200452:
	move.w d1,(a0)+
	dbf d0,loc_200452
	move.w #$15,d4
loc_20045c:
	move.b #$12,($f62a).w
	bsr.w sub_20083e
	bsr.s sub_200472
	bsr.w sub_20257c
	dbf d4,loc_20045c
	rts

sub_200472:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200488:
	bsr.s sub_2004b6
	dbf d0,loc_200488
	cmpi.b #$1,($ff1506).l
	bne.s loc_2004b4
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2004ae:
	bsr.s sub_2004b6
	dbf d0,loc_2004ae
loc_2004b4:
	rts

sub_2004b6:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2004e2
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2004ce
	cmp.w d2,d1
	bcs.s loc_2004ce
	move.w d1,(a0)+
	rts
loc_2004ce:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2004de
	cmp.w d2,d1
	bcs.s loc_2004de
	move.w d1,(a0)+
	rts
loc_2004de:
	subq.w #$2,(a0)+
	rts
loc_2004e2:
	addq.w #$2,a0
	rts

sub_2004e6:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2004f0:
	move.b #$12,($f62a).w
	bsr.w sub_20083e
	bsr.s sub_200506
	bsr.w sub_20257c
	dbf d4,loc_2004f0
	rts

sub_200506:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200516:
	bsr.s sub_200534
	dbf d0,loc_200516
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20052c:
	bsr.s sub_200534
	dbf d0,loc_20052c
	rts

sub_200534:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_200570
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_20054c
	addq.w #$2,(a0)+
	rts
loc_20054c:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_20055e
	addi.w #$20,(a0)+
	rts
loc_20055e:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_200570
	addi.w #$200,(a0)+
	rts
loc_200570:
	addq.w #$2,a0
	rts

sub_200574:
	lea (dat_2005e0).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200588:
	move.l (a2)+,(a3)+
	dbf d7,loc_200588
	rts

sub_200590:
	lea (dat_2005e0).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2005a0:
	move.l (a2)+,(a3)+
	dbf d7,loc_2005a0
	rts
	.incbin 1448, 56
dat_2005e0:
	.incbin 1504, 606

sub_20083e:
	move.w #$2300,sr
loc_200842:
	tst.b ($f62a).w
	bne.s loc_200842
	rts

sub_20084a:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200862(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200862(pc,d0.w),d0
	rts
dat_200862:
	.incbin 2146, 640

sub_200ae2:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200b3e
	move.w d2,d4
	tst.w d3
	bpl.w loc_200afc
	neg.w d3
loc_200afc:
	tst.w d4
	bpl.w loc_200b04
	neg.w d4
loc_200b04:
	cmp.w d3,d4
	bcc.w loc_200b16
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200b48(pc,d4.w),d0
	bra.s loc_200b20
loc_200b16:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200b48(pc,d3.w),d0
loc_200b20:
	tst.w d1
	bpl.w loc_200b2c
	neg.w d0
	addi.w #$80,d0
loc_200b2c:
	tst.w d2
	bpl.w loc_200b38
	neg.w d0
	addi.w #$100,d0
loc_200b38:
	movem.l (a7)+,d3-d4
	rts
loc_200b3e:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200b48:
	.incbin 2888, 258

sub_200c4a:
	btst.b #$3,$22(a0)
	beq.s loc_200c5e
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200c5e:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c80
	move.b $26(a0),d0
	bpl.s loc_200c7a
	subq.b #$1,d0
loc_200c7a:
	addi.b #$20,d0
	bra.s loc_200c8c
loc_200c80:
	move.b $26(a0),d0
	bpl.s loc_200c88
	addq.b #$1,d0
loc_200c88:
	addi.b #$1f,d0
loc_200c8c:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200f16
	cmpi.b #$80,d0
	beq.w loc_200e74
	cmpi.b #$c0,d0
	beq.w loc_200dd8
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
	bsr.w sub_2011a0
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
	bsr.w sub_2011a0
	move.w (a7)+,d0
	bsr.w sub_200dac
	tst.w d1
	beq.s loc_200d1a
	bpl.s loc_200d1c
	cmpi.w #$fff2,d1
	blt.s loc_200d42
	add.w d1,$c(a0)
loc_200d1a:
	rts
loc_200d1c:
	cmpi.w #$e,d1
	bgt.s loc_200d28
loc_200d22:
	add.w d1,$c(a0)
	rts
loc_200d28:
	tst.b $38(a0)
	bne.s loc_200d22
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d42:
	rts
	.incbin 3396, 34
loc_200d66:
	rts
	.incbin 3432, 68

sub_200dac:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200dba
	move.b ($f768).w,d2
	move.w d0,d1
loc_200dba:
	btst.l #$0,d2
	bne.s loc_200dc6
	move.b d2,$26(a0)
	rts
loc_200dc6:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200dd8:
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
	bsr.w sub_201310
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
	bsr.w sub_201310
	move.w (a7)+,d0
	bsr.w sub_200dac
	tst.w d1
	beq.s loc_200e4c
	bpl.s loc_200e4e
	cmpi.w #$fff2,d1
	blt.w loc_200d66
	add.w d1,$8(a0)
loc_200e4c:
	rts
loc_200e4e:
	cmpi.w #$e,d1
	bgt.s loc_200e5a
loc_200e54:
	add.w d1,$8(a0)
	rts
loc_200e5a:
	tst.b $38(a0)
	bne.s loc_200e54
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e74:
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
	bsr.w sub_2011a0
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
	bsr.w sub_2011a0
	move.w (a7)+,d0
	bsr.w sub_200dac
	tst.w d1
	beq.s loc_200eee
	bpl.s loc_200ef0
	cmpi.w #$fff2,d1
	blt.w loc_200d42
	sub.w d1,$c(a0)
loc_200eee:
	rts
loc_200ef0:
	cmpi.w #$e,d1
	bgt.s loc_200efc
loc_200ef6:
	sub.w d1,$c(a0)
	rts
loc_200efc:
	tst.b $38(a0)
	bne.s loc_200ef6
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200f16:
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
	bsr.w sub_201310
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
	bsr.w sub_201310
	move.w (a7)+,d0
	bsr.w sub_200dac
	tst.w d1
	beq.s loc_200f90
	bpl.s loc_200f92
	cmpi.w #$fff2,d1
	blt.w loc_200d66
	sub.w d1,$8(a0)
loc_200f90:
	rts
loc_200f92:
	cmpi.w #$e,d1
	bgt.s loc_200f9e
loc_200f98:
	sub.w d1,$8(a0)
	rts
loc_200f9e:
	tst.b $38(a0)
	bne.s loc_200f98
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200fb8:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200fce
	andi.w #$380,d0
loc_200fce:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_20102e
	bmi.s loc_201032
	cmpi.b #$5,($ff1506).l
	beq.s loc_200ffe
	cmpi.b #$6,($ff1506).l
	bne.s loc_201004
loc_200ffe:
	andi.w #$7fff,$2(a0)
loc_201004:
	cmpi.b #$4,($ff1506).l
	bne.s loc_201014
	bclr.b #$6,$1(a0)
loc_201014:
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
loc_20102e:
	movea.l d1,a1
	rts
loc_201032:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_20109a
	btst.b #$6,$1(a0)
	bne.s loc_201060
	cmpi.b #$14,d1
	bne.w loc_201184
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201184
loc_201060:
	cmpi.b #$15,d1
	bne.s loc_20106e
	move.w #$60,d1
	bra.w loc_201184
loc_20106e:
	cmpi.b #$1e,d1
	bne.s loc_20107c
	move.w #$61,d1
	bra.w loc_201184
loc_20107c:
	cmpi.b #$1f,d1
	bne.s loc_20108a
	move.w #$62,d1
	bra.w loc_201184
loc_20108a:
	cmpi.b #$32,d1
	bne.w loc_201184
	move.w #$63,d1
	bra.w loc_201184
loc_20109a:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201100
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_2010ea
	cmpi.b #$6,d1
	beq.s loc_2010ea
	tst.b ($ff1956).l
	beq.w loc_201184
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_2010fa
	cmpi.b #$3c,d1
	beq.s loc_2010fa
	cmpi.b #$37,d1
	beq.s loc_2010fa
	cmpi.b #$2f,d1
	beq.s loc_2010fa
	cmpi.b #$16,d1
	beq.s loc_2010fa
	bra.w loc_201184
loc_2010ea:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201184
loc_2010fa:
	addq.b #$1,d1
	bra.w loc_201184
loc_201100:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201170
	cmpi.b #$3,$0(a0)
	bcc.w loc_201184
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201184
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_201134
	move.w #$6a,d1
	bra.s loc_201184
loc_201134:
	cmpi.b #$48,d1
	bne.s loc_201140
	move.w #$6b,d1
	bra.s loc_201184
loc_201140:
	cmpi.b #$4a,d1
	bne.s loc_20114c
	move.w #$6c,d1
	bra.s loc_201184
loc_20114c:
	cmpi.b #$10,d1
	bne.s loc_201158
	move.w #$6d,d1
	bra.s loc_201184
loc_201158:
	cmpi.b #$63,d1
	bne.s loc_201164
	move.w #$6e,d1
	bra.s loc_201184
loc_201164:
	cmpi.b #$43,d1
	bne.s loc_201184
	move.w #$6f,d1
	bra.s loc_201184
loc_201170:
	btst.b #$6,$1(a0)
	beq.s loc_201184
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201184
	move.w #$51,d1
loc_201184:
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

sub_2011a0:
	bsr.w sub_200fb8
	cmpi.l #$210000,d1
	beq.s loc_2011ba
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011ba
	btst.l d5,d4
	bne.s loc_2011c8
loc_2011ba:
	add.w a3,d2
	bsr.w sub_201260
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2011c8:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011ba
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011ee
	not.w d1
	neg.b (a4)
loc_2011ee:
	btst.l #$c,d4
	beq.s loc_2011fe
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011fe:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2344a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20121a
	neg.w d0
loc_20121a:
	tst.w d0
	beq.s loc_2011ba
	bmi.s loc_201236
	cmpi.b #$10,d0
	beq.s loc_201252
loc_201226:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201236:
	cmpa.w #$10,a3
	bne.s loc_201246
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201226
loc_201246:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011ba
loc_201252:
	sub.w a3,d2
	bsr.w sub_201260
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201260:
	bsr.w sub_200fb8
	cmpi.l #$210000,d1
	beq.s loc_20127a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20127a
	btst.l d5,d4
	bne.s loc_201288
loc_20127a:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201288:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20127a
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2012ae
	not.w d1
	neg.b (a4)
loc_2012ae:
	btst.l #$c,d4
	beq.s loc_2012be
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012be:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2344a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2012da
	neg.w d0
loc_2012da:
	tst.w d0
	beq.s loc_20127a
	bmi.s loc_2012f0
loc_2012e0:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012f0:
	cmpa.w #$10,a3
	bne.s loc_201300
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2012e0
loc_201300:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20127a
	not.w d1
	rts

sub_201310:
	bsr.w sub_200fb8
	cmpi.l #$210000,d1
	beq.s loc_20132a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20132a
	btst.l d5,d4
	bne.s loc_201338
loc_20132a:
	add.w a3,d3
	bsr.w sub_2013c0
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201338:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20132a
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201366
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201366:
	btst.l #$b,d4
	beq.s loc_20136e
	neg.b (a4)
loc_20136e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2354a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20138a
	neg.w d0
loc_20138a:
	tst.w d0
	beq.s loc_20132a
	bmi.s loc_2013a6
	cmpi.b #$10,d0
	beq.s loc_2013b2
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013a6:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20132a
loc_2013b2:
	sub.w a3,d3
	bsr.w sub_2013c0
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2013c0:
	bsr.w sub_200fb8
	cmpi.l #$210000,d1
	beq.s loc_2013da
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2013da
	btst.l d5,d4
	bne.s loc_2013e8
loc_2013da:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2013e8:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2013da
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201416
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201416:
	btst.l #$b,d4
	beq.s loc_20141e
	neg.b (a4)
loc_20141e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2354a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20143a
	neg.w d0
loc_20143a:
	tst.w d0
	beq.s loc_2013da
	bmi.s loc_201450
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201450:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2013da
	not.w d1
	rts

sub_201460:
	rts
	.incbin 5218, 152
loc_2014fa:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20151a
	tst.b ($ff0f01).l
	bne.s loc_20151a
	move.b #$1,($ff156a).l
loc_20151a:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201580
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207770
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201580
	move.b #$1,($ff1508).l
loc_201580:
	bset.b #$7,($f600).w
	bsr.w sub_20256e
	tst.b ($ff156e).l
	bne.s loc_2015a6
	btst.b #$7,($ff152e).l
	beq.s loc_2015dc
	bset.b #$0,($ff151d).l
	beq.s loc_2015b2
loc_2015a6:
	bsr.w sub_2004e6
	bclr.b #$0,($ff151d).l
loc_2015b2:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_20164c
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2015da
	bclr.b #$7,($ff152e).l
loc_2015da:
	rts
loc_2015dc:
	bset.b #$0,($ff151d).l
	beq.s loc_2015ea
	bsr.w sub_2003ba
loc_2015ea:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201606
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_20162e
loc_201606:
	tst.b ($ff1508).l
	bne.s loc_20164c
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_20162e:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201636:
	move.l #$0,(a1)+
	dbf d6,loc_201636
	move.b #$c,($f62a).w
	bsr.w sub_20083e
	rts
loc_20164c:
	cmpi.w #$800,($f78e).w
	bne.s loc_20166a
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20166a:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201680
	btst.b #$7,($ff152e).l
	beq.s loc_201686
loc_201680:
	move.l #$eee0eee,d0
loc_201686:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20168e:
	move.l d0,(a1)+
	dbf d6,loc_20168e
loc_201694:
	move.b #$c,($f62a).w
	bsr.w sub_20083e
	bsr.w sub_20257c
	bne.s loc_201694
	tst.l ($f680).w
	bsr.w sub_201b3a
	moveq #$0,d0
	lea (dat_20f97a).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2016be
	bsr.w sub_202682
loc_2016be:
	moveq #$1,d0
	bsr.w sub_202682
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2016da:
	move.l d0,(a1)+
	dbf d1,loc_2016da
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2016ec:
	move.l d0,(a1)+
	dbf d1,loc_2016ec
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2016fc:
	move.l d0,(a1)+
	dbf d1,loc_2016fc
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_20170e:
	move.l d0,(a1)+
	dbf d1,loc_20170e
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20171e:
	move.l d0,(a1)+
	dbf d1,loc_20171e
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_20172e:
	move.l d0,(a1)+
	dbf d1,loc_20172e
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202258
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
	bsr.w sub_200590
	moveq #$3,d0
	bsr.w sub_200574
	bsr.w sub_2028d2
	bsr.w sub_2029ec
	bset.b #$2,($f754).w
	bsr.w sub_203476
	bsr.w sub_20336c
	jsr (sub_201460).l
	bsr.w sub_201a74
loc_2017ae:
	move.b #$c,($f62a).w
	bsr.w sub_20083e
	bsr.w sub_20257c
	bne.s loc_2017ae
	tst.l ($f680).w
	bne.s loc_2017ae
	bsr.w sub_201a00
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b9a
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201812
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201812:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201854
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201854:
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
	jsr (sub_20f974).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2018e4
loc_2018de:
	bsr.w sub_200438
	bra.s loc_2018f2
loc_2018e4:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2018de
	bsr.w sub_200318
loc_2018f2:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201900:
	move.b #$8,($f62a).w
	bsr.w sub_20083e
	tst.b ($f7cc).w
	bne.s loc_20191e
	btst.b #$7,($f605).w
	beq.s loc_20191e
	eori.b #$1,($f63a).w
loc_20191e:
	btst.b #$0,($f63a).w
	beq.w loc_201990
	bsr.w sub_201bfe
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20196e
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201900
	subq.b #$1,($ff1508).l
	bpl.s loc_201950
	clr.b ($ff1508).l
loc_201950:
	move.w #$e,d0
	jsr (sub_205b26).l
	bsr.w sub_207770
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_20197c
loc_20196e:
	andi.b #$70,d0
	beq.w loc_201900
	clr.b ($ff1508).l
loc_20197c:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2014fa
loc_201990:
	bsr.w sub_201c44
	addq.w #$1,($ff1504).l
	jsr (sub_207786).l
	jsr (sub_20387c).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2014fa
	tst.w ($ff1502).l
	bne.w loc_2014fa
	tst.w ($ff1906).l
	bne.s loc_2019d8
	cmpi.b #$6,($d024).w
	bcs.s loc_2019d8
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2019dc
loc_2019d8:
	bsr.w sub_2029ec
loc_2019dc:
	jsr (sub_203a26).l
	tst.w ($ff190e).l
	bne.s loc_2019ee
	bsr.w sub_200184
loc_2019ee:
	jsr (sub_20cedc).l
	bsr.w sub_20257c
	bsr.w sub_201aa6
	bra.w loc_201900

sub_201a00:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201a18
	move.w #$78,$30(a1)
loc_201a18:
	rts
	.incbin 6682, 90

sub_201a74:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a86(pc,d0.w),($f796).w
	rts
dat_201a86:
	.incbin 6790, 32

sub_201aa6:
	subq.b #$1,($ff1910).l
	bpl.s loc_201ac4
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201ac4:
	subq.b #$1,($ff1912).l
	bpl.s loc_201ae2
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201ae2:
	subq.b #$1,($ff1914).l
	bpl.s loc_201b0a
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201b0a
	move.b #$0,($ff1915).l
loc_201b0a:
	tst.b ($ff1916).l
	beq.s loc_201b38
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201b38:
	rts

sub_201b3a:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b5c
	cmpi.b #$2,d0
	bne.s loc_201b5c
	add.b ($ff156a).l,d0
loc_201b5c:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b74(pc,d1.w),d0
	jmp (sub_205b26).l
dat_201b74:
	.incbin 7028, 38

sub_201b9a:
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

sub_201bfe:
	move.w #$ab,d0
	jsr (sub_202346).l
	bset.b #$7,($f63a).w
	bne.s loc_201c42
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c28
loc_201c1e:
	move.w #$d5,d0
	jmp (sub_205b26).l
loc_201c28:
	tst.b ($ff151f).l
	bne.s loc_201c1e
	tst.b ($ff1520).l
	bne.s loc_201c1e
	move.w #$90,d0
	jmp (sub_205b26).l
loc_201c42:
	rts

sub_201c44:
	bclr.b #$7,($f63a).w
	beq.s loc_201c7e
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c64
loc_201c5a:
	move.w #$d6,d0
	jmp (sub_205b26).l
loc_201c64:
	tst.b ($ff151f).l
	bne.s loc_201c5a
	tst.b ($ff1520).l
	bne.s loc_201c5a
	move.w #$91,d0
	jmp (sub_205b26).l
loc_201c7e:
	rts
loc_201c80:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201d0c
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201cbc
	move.w #$700,d0
loc_201cb8:
	dbf d0,loc_201cb8
loc_201cbc:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201cf2(pc,d0.w),d0
	jsr dat_201cf2(pc,d0.w)
loc_201cd2:
	jsr (sub_20236a).l
	tst.b ($f63a).w
	bne.s loc_201ce6
	bsr.w sub_20211e
	bsr.w sub_20210c
loc_201ce6:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201cf2:
	.incbin 7410, 26
loc_201d0c:
	tst.b ($ff1957).l
	beq.w loc_201cd2
	cmpi.b #$2,($ff1506).l
	bne.w loc_201cd2
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201d3a
	move.w #$700,d0
loc_201d36:
	dbf d0,loc_201d36
loc_201d3a:
	move.w #$1,($f6fc).w
	jsr (sub_2022de).l
	tst.b ($f64e).w
	bne.s loc_201d72
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d96
loc_201d72:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d96:
	move.w ($f624).w,(a5)
	jsr (sub_2022fa).l
	bra.w loc_201cd2
	.incbin 7588, 60
	jsr (sub_2022de).l
	bsr.w sub_20217a
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
	bsr.w sub_205a48
	tst.b ($f767).w
	beq.s loc_201e8e
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e8e:
	jsr (sub_20f974).l
	jsr (sub_2022fa).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f62
	bsr.w sub_2025ee
	jmp (loc_20a9dc).l
	dc.b $4e,$75
	jsr (sub_2022de).l
	bsr.w sub_20217a
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
	jsr (sub_2022fa).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f62
	bra.w loc_2025d2
	.incbin 8038, 16
	bsr.w sub_202062
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f98
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f98:
	move.w ($f624).w,(a5)
	bra.w loc_2025d2
	dc.b $4e,$b9,$00,$20,$22,$de,$61,$00
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
	jsr (sub_2022fa).l
	lea ($d000).w,a0
	bsr.w sub_205a48
	tst.b ($f767).w
	beq.s loc_202054
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202054:
	tst.w ($f614).w
	beq.w loc_202060
	subq.w #$1,($f614).w
loc_202060:
	rts

sub_202062:
	jsr (sub_2022de).l
	bsr.w sub_20217a
	tst.b ($f64e).w
	bne.s loc_202098
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_2020bc
loc_202098:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_2020bc:
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
	jmp (sub_2022fa).l
	dc.b $4e,$73

sub_20210c:
	tst.b ($d02a).w
	bne.s loc_20211c
	tst.w ($f786).w
	beq.s loc_20211c
	addq.w #$1,($f786).w
loc_20211c:
	rts

sub_20211e:
	tst.w ($f780).w
	beq.s loc_202128
	addq.w #$1,($f780).w
loc_202128:
	tst.w ($f782).w
	beq.s loc_202132
	addq.w #$1,($f782).w
loc_202132:
	rts
	move.l d1,-(a7)
	move.l ($f636).w,d1
	bne.s loc_202142
	move.l #$2a6d365a,d1
loc_202142:
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

sub_20215e:
	bsr.w sub_2022de
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2022fa

sub_20217a:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202188
	addq.w #$2,a1

sub_202188:
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

sub_2021b6:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202232).l,a2
	moveq #$12,d7
loc_2021ca:
	move.w (a2)+,(a0)
	dbf d7,loc_2021ca
	move.w (dat_202234).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2021f0:
	move.w d0,(a1)
	dbf d7,loc_2021f0
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202222:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202222
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202232:
	dc.b $80,$04
dat_202234:
	.incbin 8756, 36

sub_202258:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20227a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20227a
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2022a8:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022a8
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2022c6:
	move.l d0,(a1)+
	dbf d1,loc_2022c6
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2022d6:
	move.l d0,(a1)+
	dbf d1,loc_2022d6
	rts

sub_2022de:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022ee:
	btst.b #$0,($a11100).l
	bne.s loc_2022ee
	rts

sub_2022fa:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8968, 62

sub_202346:
	tst.b ($f00a).w
	bne.s loc_202352
	move.b d0,($f00a).w
	rts
loc_202352:
	tst.b ($f00b).w
	bne.s loc_20235e
	move.b d0,($f00b).w
	rts
loc_20235e:
	tst.b ($f00c).w
	bne.s loc_202368
	move.b d0,($f00c).w
loc_202368:
	rts

sub_20236a:
	jsr (sub_2022de).l
	tst.b ($f00a).w
	beq.s loc_202384
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202384:
	tst.b ($f00b).w
	beq.s loc_202398
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202398:
	tst.b ($f00c).w
	beq.s loc_2023ac
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2023ac:
	bra.w sub_2022fa
	.incbin 9136, 32

sub_2023d0:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202492).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023ec

sub_2023e2:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2024a8).l,a3
loc_2023ec:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2023fa
	adda.w #$a,a3
loc_2023fa:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2024be
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_20241a
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_20241a:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202466
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202442
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202442:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202450:
	lsr.w #$4,d0
loc_202452:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202460
	jmp (a3)

sub_20245c:
	moveq #$0,d4
	moveq #$8,d3
loc_202460:
	dbf d0,loc_202452
	bra.s sub_20241a
loc_202466:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202474
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202474:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202450
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202450
loc_202492:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20245c
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20245c
	rts
dat_2024a8:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20245c
	rts

sub_2024be:
	move.b (a0)+,d0
loc_2024c0:
	cmpi.b #$ff,d0
	bne.s loc_2024c8
	rts
loc_2024c8:
	move.w d0,d7
loc_2024ca:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2024c0
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
	bne.s loc_2024f8
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2024ca
loc_2024f8:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202504:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202504
	bra.s loc_2024ca

sub_202510:
	movem.l a1-a2,-(a7)
	lea (dat_20f98a).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202528:
	tst.l (a2)
	beq.s loc_202530
	addq.w #$6,a2
	bra.s loc_202528
loc_202530:
	move.w (a1)+,d0
	bmi.s loc_20253c
loc_202534:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202534
loc_20253c:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9538, 44

sub_20256e:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202574:
	clr.l (a2)+
	dbf d0,loc_202574
	rts

sub_20257c:
	tst.l ($f680).w
	beq.s loc_2025d0
	tst.w ($f6f8).w
	bne.s loc_2025d0
	movea.l ($f680).w,a0
	lea (loc_202492).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_20259e
	adda.w #$a,a3
loc_20259e:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2024be
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
loc_2025d0:
	rts
loc_2025d2:
	tst.w ($f6f8).w
	beq.w loc_202670
loc_2025da:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_20260c

sub_2025ee:
	tst.w ($f6f8).w
	beq.s loc_202670
	tst.b ($f744).w
	bne.s loc_2025da
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_20260c:
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
loc_202640:
	movea.w #$8,a5
	bsr.w sub_20245c
	subq.w #$1,($f6f8).w
	beq.s loc_202672
	subq.w #$1,($f6fa).w
	bne.s loc_202640
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202670:
	rts
loc_202672:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202678:
	move.l $6(a0),(a0)+
	dbf d0,loc_202678
	rts

sub_202682:
	lea (dat_20f98a).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202694:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2023d0
	dbf d1,loc_202694
	rts
	.incbin 9908, 542

sub_2028d2:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_20292e).l,a0
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
	bra.w loc_20293a
dat_20292e:
	dc.b $00,$04,$00,$00,$2e,$97,$00,$00
	dc.b $05,$10,$00,$60
loc_20293a:
	tst.b ($ff1522).l
	beq.s loc_20295a
	jsr (sub_206858).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202958
	moveq #$0,d0
loc_202958:
	bra.s loc_202970
loc_20295a:
	lea (dat_2029ac).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202970:
	subi.w #$a0,d1
	bcc.s loc_202978
	moveq #$0,d1
loc_202978:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202982
	move.w d2,d1
loc_202982:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20298e
	moveq #$0,d0
loc_20298e:
	cmp.w ($f72e).w,d0
	blt.s loc_202998
	move.w ($f72e).w,d0
loc_202998:
	move.w d0,($f704).w
	bsr.w sub_2029b4
	lea (dat_2029b0).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2029ac:
	dc.b $00,$40,$01,$8c
dat_2029b0:
	dc.b $84,$86,$7f,$7f

sub_2029b4:
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

sub_2029ec:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2029f8
	rts
loc_2029f8:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202bd8
	bsr.w sub_202c78
	bsr.w sub_203510
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	move.l d4,d3
	asr.l #$1,d3
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_202f02
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202ece
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e9a
	move.w ($f704).w,d0
	lsr.w #$2,d0
	move.w d0,d1
	lsr.w #$1,d1
	add.w d1,d0
	bsr.w sub_202e6a
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
	bsr.w sub_202b06
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202aa8:
	move.w d0,(a1)+
	dbf d6,loc_202aa8
	bsr.w sub_202b4a
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202aba:
	move.w d0,(a1)+
	dbf d6,loc_202aba
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b96
dat_202ade:
	.incbin 10974, 40

sub_202b06:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$27,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$26,d6
	adda.w #$5c,a1
loc_202b2a:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202ade(pc,d6.w),d5
loc_202b34:
	move.w d0,-(a1)
	dbf d5,loc_202b34
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b2a
	adda.w #$5c,a1
	rts

sub_202b4a:
	move.w ($f708).w,d0
	move.w ($f718).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$a,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	swap d3
	add.l d2,d3
	swap d3
	moveq #$9,d6
loc_202b70:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b8c(pc,d6.w),d5
loc_202b7a:
	move.w d0,(a1)+
	dbf d5,loc_202b7a
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b70
	rts
dat_202b8c:
	dc.b $07,$03,$03,$05,$03,$03,$00,$00
	dc.b $00,$00
loc_202b96:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202ba4(pc,d2.w)
loc_202ba2:
	move.w (a2)+,d0
loc_202ba4:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202ba2
	rts
	.incbin 11194, 30

sub_202bd8:
	move.w ($f700).w,d4
	bsr.s sub_202c0c
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202c0a
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202c04
	bset.b #$2,($f754).w
	rts
loc_202c04:
	bset.b #$3,($f754).w
loc_202c0a:
	rts

sub_202c0c:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202c1e
	bcs.s loc_202c4e
	bra.s loc_202c24
loc_202c1e:
	clr.w ($f73a).w
	rts
loc_202c24:
	cmpi.w #$10,d0
	blt.s loc_202c2e
	move.w #$10,d0
loc_202c2e:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202c3c
	move.w ($f72a).w,d0
loc_202c3c:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c4e:
	cmpi.w #$fff0,d0
	bge.s loc_202c58
	move.w #$fff0,d0
loc_202c58:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202c3c
	move.w ($f728).w,d0
	bra.s loc_202c3c
	.incbin 11368, 16

sub_202c78:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c8c
	subq.w #$5,d0
loc_202c8c:
	btst.b #$1,$22(a6)
	beq.s loc_202cac
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202cf8
	subi.w #$40,d0
	bcc.s loc_202cf8
	tst.b ($f75c).w
	bne.s loc_202d0a
	bra.s loc_202cb8
loc_202cac:
	sub.w ($f73e).w,d0
	bne.s loc_202cbe
	tst.b ($f75c).w
	bne.s loc_202d0a
loc_202cb8:
	clr.w ($f73c).w
	rts
loc_202cbe:
	cmpi.w #$60,($f73e).w
	bne.s loc_202ce6
	move.w $14(a6),d1
	bpl.s loc_202cce
	neg.w d1
loc_202cce:
	cmpi.w #$800,d1
	bcc.s loc_202cf8
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d58
	cmpi.w #$fffa,d0
	blt.s loc_202d22
	bra.s loc_202d10
loc_202ce6:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d58
	cmpi.w #$fffe,d0
	blt.s loc_202d22
	bra.s loc_202d10
loc_202cf8:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d58
	cmpi.w #$fff0,d0
	blt.s loc_202d22
	bra.s loc_202d10
loc_202d0a:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202d10:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d62
	bra.w loc_202d2e
loc_202d22:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d2e:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d86
	cmpi.w #$ff00,d1
	bgt.s loc_202d52
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d86
loc_202d52:
	move.w ($f72c).w,d1
	bra.s loc_202d86
loc_202d58:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d62:
	cmp.w ($f72e).w,d1
	blt.s loc_202d86
	subi.w #$800,d1
	bcs.s loc_202d82
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d86
loc_202d82:
	move.w ($f72e).w,d1
loc_202d86:
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
	bne.s loc_202dc8
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202dc2
	bset.b #$0,($f754).w
	rts
loc_202dc2:
	bset.b #$1,($f754).w
loc_202dc8:
	rts
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202dfe
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202df8
	bset.b #$2,($f756).w
	bra.s loc_202dfe
loc_202df8:
	bset.b #$3,($f756).w
loc_202dfe:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e32
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e2c
	bset.b #$0,($f756).w
	rts
loc_202e2c:
	bset.b #$1,($f756).w
loc_202e32:
	rts
	.incbin 11828, 54

sub_202e6a:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e98
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e92
	bset.b #$0,($f756).w
	rts
loc_202e92:
	bset.b #$1,($f756).w
loc_202e98:
	rts

sub_202e9a:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202ecc
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202ec6
	bset.b d6,($f756).w
	bra.s loc_202ecc
loc_202ec6:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202ecc:
	rts

sub_202ece:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202f00
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202efa
	bset.b d6,($f758).w
	bra.s loc_202f00
loc_202efa:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202f00:
	rts

sub_202f02:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202f34
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f2e
	bset.b d6,($f75a).w
	bra.s loc_202f34
loc_202f2e:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202f34:
	rts
	.incbin 12086, 44

sub_202f62:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203020
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203106
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203108
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20301e
	bclr.b #$0,(a2)
	beq.s loc_202fd4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203334
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20310a
loc_202fd4:
	bclr.b #$1,(a2)
	beq.s loc_202fee
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203334
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20310a
loc_202fee:
	bclr.b #$2,(a2)
	beq.s loc_203004
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203334
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203160
loc_203004:
	bclr.b #$3,(a2)
	beq.s loc_20301e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203334
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203160
loc_20301e:
	rts

sub_203020:
	lea (dat_2033ec).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20303c
	bclr.b #$1,(a2)
	beq.s loc_203086
	move.w #$e0,d4
loc_20303c:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2030b6(pc,d0.w),a3
	beq.s loc_20306e
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203334
	movem.l (a7)+,d4-d5
	bsr.w sub_20310a
	movea.l (a7)+,a0
	bra.s loc_203086
loc_20306e:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203336
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203136
	movea.l (a7)+,a0
loc_203086:
	tst.b (a2)
	bne.s loc_20308c
	rts
loc_20308c:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2030a0
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2030a0:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2030c6
dat_2030b6:
	.incbin 12470, 16
loc_2030c6:
	moveq #$f,d6
	move.l #$800000,d7
loc_2030ce:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2030fa
	btst.b d0,(a2)
	beq.s loc_2030fa
	add.w d0,d0
	movea.l dat_2030b6(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20320c
	movem.l (a7)+,d4-d5
	bsr.w sub_203334
	bsr.w sub_20318e
	movem.l (a7)+,d4-d5/a0
loc_2030fa:
	addi.w #$10,d4
	dbf d6,loc_2030ce
	clr.b (a2)
	rts

sub_203106:
	rts

sub_203108:
	rts

sub_20310a:
	moveq #$15,d6

sub_20310c:
	move.l #$800000,d7
	move.l d0,d1
loc_203114:
	movem.l d4-d5,-(a7)
	bsr.w sub_20320c
	move.l d1,d0
	bsr.w sub_20318e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203114
	rts

sub_203136:
	move.l #$800000,d7
	move.l d0,d1
loc_20313e:
	movem.l d4-d5,-(a7)
	bsr.w sub_20320e
	move.l d1,d0
	bsr.w sub_20318e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20313e
	rts

sub_203160:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20316a:
	movem.l d4-d5,-(a7)
	bsr.w sub_20320c
	move.l d1,d0
	bsr.w sub_20318e
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20316a
	rts

sub_20318e:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2031ca
	btst.b #$3,(a0)
	bne.s loc_2031aa
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2031aa:
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
loc_2031ca:
	btst.b #$3,(a0)
	bne.s loc_2031ec
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
loc_2031ec:
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

sub_20320c:
	add.w (a3),d5

sub_20320e:
	add.w $4(a3),d4

sub_203212:
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
	beq.s loc_20325c
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
loc_20325c:
	rts
	.incbin 12894, 62
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_203212
	bne.s loc_2032c2
	movem.l (a7)+,d3-d5
	bra.s loc_2032ec
loc_2032c2:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_2032f0
	bne.s loc_2032ec
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_20333a
	bsr.w sub_20318e
	movem.l (a7)+,d3-d5
loc_2032ec:
	movea.l (a7)+,a0
	rts

sub_2032f0:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_203330
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_203330
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_203330
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_203330
	moveq #$0,d0
	rts
loc_203330:
	moveq #$1,d0
	rts

sub_203334:
	add.w (a3),d5

sub_203336:
	add.w $4(a3),d4

sub_20333a:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13136, 28

sub_20336c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203396
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2033be

sub_203396:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20339a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203334
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20310c
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20339a
	rts
loc_2033be:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033c2:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033ec).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20343e
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2033c2
	rts
dat_2033ec:
	.incbin 13292, 66
dat_20342e:
	.incbin 13358, 16

sub_20343e:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20342e(pc,d0.w),a3
	beq.s loc_203460
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203334
	movem.l (a7)+,d4-d5
	bsr.w sub_20310a
	bra.s loc_203474
loc_203460:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203336
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203136
loc_203474:
	rts

sub_203476:
	moveq #$0,d0
	lea (dat_20f97a).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023e2
	movea.l (a2)+,a0
	bsr.w sub_2034c2
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200574
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2034c0
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2034c0
	bsr.w sub_202510
loc_2034c0:
	rts

sub_2034c2:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2034cc:
	move.l d0,(a3)+
	dbf d1,loc_2034cc
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2034e2
	lea ($a040).w,a3
	moveq #$2,d1

sub_2034e2:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2367c4).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034fc:
	move.w d1,d0
	movea.l a3,a0
loc_203500:
	move.b (a1)+,(a0)+
	dbf d0,loc_203500
	lea $80(a3),a3
	dbf d2,loc_2034fc
	rts

sub_203510:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20358a(pc,d0.w),d0
	jsr dat_20358a(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203536
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203536:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203564
	bcc.s loc_203566
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20355a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20355a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203564:
	rts
loc_203566:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20357e
	btst.b #$1,($d022).w
	beq.s loc_20357e
	add.w d1,d1
	add.w d1,d1
loc_20357e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20358a:
	.incbin 13706, 578
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2037de(pc,d0.w),d0
	jmp dat_2037de(pc,d0.w)
dat_2037de:
	dc.b $00,$06,$00,$0e,$00,$16
	move.w #$510,($f726).w
	rts
	.incbin 14316, 20
	move.w #$210,($f726).w
	rts
	.incbin 14344, 116

sub_20387c:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203884:
	move.b (a0),d0
	beq.s loc_20389a
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c9e).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20389a:
	lea $40(a0),a0
	dbf d7,loc_203884
	rts

sub_2038a4:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2038e2
	bpl.s loc_2038d4
	btst.b #$1,$2c(a0)
	beq.s loc_2038d4
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2038e2
loc_2038d4:
	btst.b #$2,$2c(a0)
	bne.s loc_2038e2
	addi.w #$38,$12(a0)
loc_2038e2:
	tst.w $12(a0)
	bmi.s loc_2038f6
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2038f6
	move.w #$1000,$12(a0)
loc_2038f6:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203906:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203942
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203942
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203940
	neg.w d1
loc_203940:
	add.w d1,d0
loc_203942:
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

sub_20395c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2039cc
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039e8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2039e8
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2039a6
	cmpi.w #$800,d3
	bcs.s loc_2039b8
	subi.w #$800,d3
	bra.s loc_2039b8
loc_2039a6:
	cmpi.w #$700,($f704).w
	bcs.s loc_2039b8
	cmpi.w #$100,d3
	bcc.s loc_2039b8
	addi.w #$800,d3
loc_2039b8:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039e8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2039e8
loc_2039cc:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2039e8
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2039e8:
	rts
	.incbin 14826, 30

sub_203a08:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203a0e:
	move.l d1,(a1)+
	dbf d0,loc_203a0e
	rts
dat_203a16:
	.incbin 14870, 16

sub_203a26:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203a32:
	tst.w (a4)
	beq.w loc_203af2
	moveq #$2,d6
loc_203a3a:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203aea
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203aa0
	movea.l dat_203a16(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a84
	cmpi.w #$800,d2
	bcs.s loc_203a96
	subi.w #$800,d2
	bra.s loc_203a96
loc_203a84:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a96
	cmpi.w #$100,d2
	bcc.s loc_203a96
	addi.w #$800,d2
loc_203a96:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203ac2
loc_203aa0:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203ac2
	.incbin 15018, 24
loc_203ac2:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203ae0
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203ae4
loc_203ae0:
	bsr.w sub_203b14
loc_203ae4:
	bset.b #$7,$1(a0)
loc_203aea:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203a3a
loc_203af2:
	lea $80(a4),a4
	dbf d7,loc_203a32
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203b0c
	move.l #$0,(a2)
	rts
loc_203b0c:
	move.b #$0,-$5(a2)
	rts

sub_203b14:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203b5a
	btst.l #$1,d4
	bne.w loc_203ba8
loc_203b26:
	cmpi.b #$50,d5
	beq.s loc_203b58
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
	bne.s loc_203b52
	addq.w #$1,d0
loc_203b52:
	move.w d0,(a2)+
	dbf d1,loc_203b26
loc_203b58:
	rts
loc_203b5a:
	btst.l #$1,d4
	bne.w loc_203bee
loc_203b62:
	cmpi.b #$50,d5
	beq.s loc_203ba6
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
	bne.s loc_203ba0
	addq.w #$1,d0
loc_203ba0:
	move.w d0,(a2)+
	dbf d1,loc_203b62
loc_203ba6:
	rts
loc_203ba8:
	cmpi.b #$50,d5
	beq.s loc_203bec
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
	bne.s loc_203be6
	addq.w #$1,d0
loc_203be6:
	move.w d0,(a2)+
	dbf d1,loc_203ba8
loc_203bec:
	rts
loc_203bee:
	cmpi.b #$50,d5
	beq.s loc_203c40
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
	bne.s loc_203c3a
	addq.w #$1,d0
loc_203c3a:
	move.w d0,(a2)+
	dbf d1,loc_203bee
loc_203c40:
	rts
	.incbin 15426, 92
dat_203c9e:
	.incbin 15518, 246

sub_203d94:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203da6
	move.w #$0,(a1)
	rts
loc_203da6:
	tst.w (a1)
	bne.s loc_203db0
	move.b #$1,$1(a1)
loc_203db0:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203dfa
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203dec
	neg.w $10(a0)
loc_203dec:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205b26
loc_203dfa:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203e18
	cmpa.w #$d040,a0
	beq.s loc_203e18
	tst.b ($ff1906).l
	beq.s loc_203e18
	jmp (loc_20718a).l
loc_203e18:
	move.b $2a(a0),d0
	beq.s loc_203e42
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203e34
	cmpi.b #$2d,d0
	bcs.s loc_203e3e
	move.b #$2d,d0
	bra.s loc_203e3e
loc_203e34:
	cmpi.b #$1e,d0
	bcs.s loc_203e3e
	move.b #$1e,d0
loc_203e3e:
	move.b d0,$2a(a0)
loc_203e42:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203e50(pc,d0.w),d1
	jmp dat_203e50(pc,d1.w)
dat_203e50:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203e5a:
	tst.b ($d300).w
	bne.s loc_203e98
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e98:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203ec0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203ec0:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203ef4:
	tst.b ($ff1506).l
	bne.s loc_203f5a
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203f5a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f5e
	cmpi.b #$2f,d1
	bne.s loc_203f5c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f5a
	tst.b $2c(a0)
	beq.s loc_203f5a
	jsr (sub_207982).l
	bne.s loc_203f5a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203f52
	moveq #$0,d0
loc_203f52:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f5a:
	rts
loc_203f5c:
	rts

sub_203f5e:
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

sub_203f84:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f90
	neg.w d0
loc_203f90:
	btst.b #$1,$2c(a0)
	beq.s loc_203fa0
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203fc8
loc_203fa0:
	cmpi.w #$600,d0
	bcs.s loc_203fc8
	tst.w $14(a0)
	bpl.s loc_203fba
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203fd6
	move.w #$e0,d1
	bra.s loc_203fd6
loc_203fba:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203fd6
	move.w #$60,d1
	bra.s loc_203fd6
loc_203fc8:
	cmpi.w #$a0,d1
	beq.s loc_203fd6
	bcc.s loc_203fd4
	addq.w #$2,d1
	bra.s loc_203fd6
loc_203fd4:
	subq.w #$2,d1
loc_203fd6:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203f84
	bsr.w sub_203ef4
	tst.w ($ff1588).l
	beq.s loc_203ffc
	btst.b #$4,($f605).w
	beq.s loc_203ffc
	move.b #$1,($ff1906).l
	rts
loc_203ffc:
	tst.b ($f7cc).w
	bne.s loc_204008
	move.w ($f604).w,($f602).w
loc_204008:
	btst.b #$0,$2c(a0)
	beq.s loc_20402c
	cmpi.b #$6,($ff1506).l
	bne.s loc_204026
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204044
loc_204026:
	bsr.w sub_20430e
	bra.s loc_204044
loc_20402c:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20408a(pc,d0.w),d1
	jsr dat_20408a(pc,d1.w)
	jsr (sub_2065de).l
loc_204044:
	bsr.s sub_204098
	bsr.w sub_204158
	bsr.w sub_204172
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_20406c
	tst.b $1c(a0)
	bne.s loc_20406c
	move.b $1d(a0),$1c(a0)
loc_20406c:
	bsr.w sub_205516
	tst.b $2c(a0)
	bmi.s loc_204084
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204084
	jsr (sub_206d28).l
loc_204084:
	bsr.w sub_2053cc
	rts
dat_20408a:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204098:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2040bc
	move.w $30(a0),d0
	beq.s loc_2040ae
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2040bc
loc_2040ae:
	btst.b #$6,$2c(a0)
	bne.s loc_2040bc
	jsr (sub_20395c).l
loc_2040bc:
	tst.b ($ff151f).l
	beq.s loc_204100
	tst.w $32(a0)
	beq.s loc_204100
	subq.w #$1,$32(a0)
	bne.s loc_204100
	tst.b ($ff1520).l
	bne.s loc_2040f8
	tst.b ($ff1958).l
	bne.s loc_2040f8
	tst.b ($ff152e).l
	bne.s loc_2040f2
	move.w #$e,d0
	jsr (sub_205b26).l
loc_2040f2:
	jsr (sub_201b3a).l
loc_2040f8:
	move.b #$0,($ff151f).l
loc_204100:
	tst.b ($ff1520).l
	beq.s loc_204156
	tst.w $34(a0)
	beq.s loc_204156
	subq.w #$1,$34(a0)
	bne.s loc_204156
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20414e
	tst.b ($ff1958).l
	bne.s loc_20414e
	tst.b ($ff152e).l
	bne.s loc_204148
	move.w #$e,d0
	jsr (sub_205b26).l
loc_204148:
	jsr (sub_201b3a).l
loc_20414e:
	move.b #$0,($ff1520).l
loc_204156:
	rts

sub_204158:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204172:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20417e
loc_20417c:
	rts
loc_20417e:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204190
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20417c
loc_204190:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2041d4
	bset.b #$6,$22(a0)
	bne.s loc_20417c
	bsr.w sub_205e2a
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20417c
	bra.s loc_20420c
loc_2041d4:
	tst.w $12(a0)
	beq.s loc_2041dc
	bpl.s loc_20417c
loc_2041dc:
	bclr.b #$6,$22(a0)
	beq.s loc_20417c
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20417c
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20420c
	move.w #$f000,$12(a0)
loc_20420c:
	jsr (sub_207982).l
	bne.s loc_204220
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204220:
	rts

sub_204222:
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
	bcs.s loc_2042fc
	move.l #$50000,d0
loc_2042fc:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20430e:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204334
	tst.b ($ff152e).l
	beq.s loc_20432a
	cmpi.b #$2,($ff152e).l
	bne.s loc_204334
loc_20432a:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2043e4
loc_204334:
	tst.b $2a(a0)
	bne.w loc_2043f2
	tst.b ($f784).w
	beq.w loc_2043f2
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204352
	neg.w d0
loc_204352:
	tst.w ($f786).w
	bne.s loc_20435e
	move.w #$1,($f786).w
loc_20435e:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204374
	move.b #$1,($ff1502).l
	bra.w loc_205b22
loc_204374:
	cmpi.w #$d2,d1
	bcs.s loc_2043c8
	cmpi.b #$2,($ff1522).l
	beq.s loc_2043c6
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20439e
	move.w #$82,d0
	jsr (sub_205b26).l
	moveq #$0,d0
loc_20439e:
	add.b ($f784).w,d0
	bpl.s loc_2043a8
	moveq #$0,d0
	bra.s loc_2043b0
loc_2043a8:
	cmpi.b #$3,d0
	bcs.s loc_2043b0
	moveq #$2,d0
loc_2043b0:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204222
	move.b #$2,($ff1522).l
loc_2043c6:
	rts
loc_2043c8:
	cmpi.w #$5a,d1
	bcc.s loc_2043e0
	cmp.w d2,d0
	bcc.w loc_203e5a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2043e0:
	cmp.w d2,d0
	bcc.s loc_2043f2
loc_2043e4:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2043f2:
	rts
	bsr.w sub_203d94
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204424
	tst.b ($ff195b).l
	beq.s loc_204412
	cmpi.b #$79,$1a(a0)
	bne.s loc_20444e
	bra.s loc_20441a
loc_204412:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20444e
loc_20441a:
	bsr.w sub_204cb6
	jmp (sub_2038a4).l
loc_204424:
	bsr.w sub_2044fc
	bsr.w sub_20430e
	bsr.w sub_204da0
	bsr.w sub_204ecc
	bsr.w sub_204570
	bsr.w sub_204d22
	bsr.w sub_204cb6
	jsr (sub_203906).l
	bsr.w sub_200c4a
	bsr.w sub_204f4a
loc_20444e:
	rts
	tst.b ($f7c7).w
	bne.s loc_20446a
	cmpi.b #$15,$1c(a0)
	beq.s loc_20446a
	tst.w $12(a0)
	bmi.s loc_20446a
	move.b #$0,$1c(a0)
loc_20446a:
	bsr.w sub_2044fc
	bsr.w sub_20430e
	bsr.w sub_204e8a
	bsr.w sub_204bd6
	bsr.w sub_204cb6
	jsr (sub_2038a4).l
	btst.b #$6,$22(a0)
	beq.s loc_204492
	subi.w #$28,$12(a0)
loc_204492:
	bsr.w sub_204f94
	bsr.w sub_204fb8
	rts
	bsr.w sub_2044fc
	bsr.w sub_20430e
	bsr.w sub_204da0
	bsr.w sub_204f08
	bsr.w sub_204a10
	bsr.w sub_204cb6
	tst.b $2a(a0)
	bne.s loc_2044c0
	jsr (sub_203906).l
loc_2044c0:
	bsr.w sub_200c4a
	bsr.w sub_204f4a
	rts
	bsr.w sub_2044fc
	bsr.w sub_20430e
	bsr.w sub_204e8a
	bsr.w sub_204bd6
	bsr.w sub_204cb6
	jsr (sub_2038a4).l
	btst.b #$6,$22(a0)
	beq.s loc_2044f2
	subi.w #$28,$12(a0)
loc_2044f2:
	bsr.w sub_204f94
	bsr.w sub_204fb8
	rts

sub_2044fc:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204568
	tst.w ($ff1506).l
	bne.s loc_204568
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20456a).l,a2
loc_204530:
	move.b (a2)+,d0
	bmi.s loc_204540
	cmp.b d0,d1
	bne.s loc_204530
	bset.b #$1,$2c(a0)
	rts
loc_204540:
	bclr.b #$1,$2c(a0)
	beq.s loc_204568
	tst.w $12(a0)
	bpl.s loc_204568
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204568
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204568
	neg.w $10(a0)
loc_204568:
	rts
dat_20456a:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204570:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_20489a
	tst.w $3e(a0)
	bne.w loc_20484a
	btst.b #$2,($f602).w
	beq.s loc_204598
	bsr.w sub_20492a
loc_204598:
	btst.b #$3,($f602).w
	beq.s loc_2045a4
	bsr.w sub_2049a0
loc_2045a4:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_20484a
	tst.w $14(a0)
	beq.s loc_2045c4
	tst.b $2a(a0)
	beq.w loc_20484a
	bra.s loc_2045d0
loc_2045c4:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2045d0:
	btst.b #$3,$22(a0)
	beq.s loc_204622
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20467a
	cmpi.b #$1e,$0(a1)
	bne.s loc_204602
	move.b #$0,$1c(a0)
	bra.w loc_20484a
loc_204602:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20465e
	cmp.w d2,d1
	bge.s loc_20464c
	bra.s loc_20467a
loc_204622:
	jsr (sub_206a8c).l
	cmpi.w #$c,d1
	blt.s loc_20467a
	move.w #$ab,d0
	jsr (sub_202346).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204656
loc_20464c:
	btst.b #$0,$22(a0)
	bne.s loc_204666
	bra.s loc_204670
loc_204656:
	cmpi.b #$3,$37(a0)
	bne.s loc_20467a
loc_20465e:
	btst.b #$0,$22(a0)
	bne.s loc_204670
loc_204666:
	move.b #$32,$1c(a0)
	bra.w loc_20484a
loc_204670:
	move.b #$6,$1c(a0)
	bra.w loc_20484a
loc_20467a:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20468e
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20468e:
	btst.b #$7,($f788).w
	bne.w loc_204792
	btst.b #$6,($f788).w
	bne.w loc_2047b2
	btst.b #$1,($f602).w
	bne.w loc_2047b2
	andi.b #$f,($f788).w
	beq.s loc_2046c6
	btst.b #$0,($f603).w
	beq.s loc_2046da
	bset.b #$7,($f788).w
	bra.w loc_20486e
loc_2046c6:
	btst.b #$0,($f603).w
	beq.w loc_2046da
	move.b #$1,($f788).w
	bra.w loc_20486e
loc_2046da:
	btst.b #$0,($f602).w
	beq.s loc_204756
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204738
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20470a
	asr.w #$1,d2
	sub.w d2,d1
loc_20470a:
	btst.b #$0,$22(a0)
	beq.s loc_204716
	neg.w d0
	neg.w d1
loc_204716:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20472c
	cmp.w d0,d1
	ble.s loc_204732
	bra.s loc_204730
loc_20472c:
	cmp.w d1,d0
	ble.s loc_204732
loc_204730:
	move.w d1,d0
loc_204732:
	move.w d0,$14(a0)
	rts
loc_204738:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204752
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202346).l
loc_204752:
	bra.w loc_20486e
loc_204756:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204776
	move.w #$ab,d0
	jsr (sub_202346).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2047b2
loc_204776:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202346).l
	bra.w loc_20484a
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204792:
	btst.b #$0,($f602).w
	beq.s loc_2047b2
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20486e
	addq.w #$2,($f73e).w
	bra.w loc_20486e
loc_2047b2:
	btst.b #$6,($f788).w
	bne.w loc_20482e
	andi.b #$f,($f788).w
	beq.s loc_2047d6
	btst.b #$1,($f603).w
	beq.s loc_2047e8
	bset.b #$6,($f788).w
	bra.w loc_20486e
loc_2047d6:
	btst.b #$1,($f603).w
	beq.s loc_2047e8
	move.b #$1,($f788).w
	bra.w loc_20486e
loc_2047e8:
	btst.b #$1,($f602).w
	beq.s loc_20484a
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20482c
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20482c
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20481e
	neg.w $14(a0)
loc_20481e:
	move.w #$9c,d0
	jsr (sub_202346).l
	bsr.w sub_204d4a
loc_20482c:
	bra.s loc_20486e
loc_20482e:
	btst.b #$1,($f602).w
	beq.s loc_20484a
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20486e
	subq.w #$2,($f73e).w
	bra.s loc_20486e
loc_20484a:
	cmpi.w #$60,($f73e).w
	bne.s loc_204864
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20486e
	move.b #$0,($f788).w
	bra.s loc_20486e
loc_204864:
	bcc.s loc_20486a
	addq.w #$4,($f73e).w
loc_20486a:
	subq.w #$2,($f73e).w
loc_20486e:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20489a
	move.w $14(a0),d0
	beq.s loc_20489a
	bmi.s loc_20488e
	sub.w d5,d0
	bcc.s loc_204888
	move.w #$0,d0
loc_204888:
	move.w d0,$14(a0)
	bra.s loc_20489a
loc_20488e:
	add.w d5,d0
	bcc.s loc_204896
	move.w #$0,d0
loc_204896:
	move.w d0,$14(a0)
loc_20489a:
	move.b $26(a0),d0
	jsr (sub_20084a).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2048b8:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204928
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204928
	bmi.s loc_2048d0
	neg.w d1
loc_2048d0:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_20694c
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204928
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204924
	cmpi.b #$40,d0
	beq.s loc_204912
	cmpi.b #$80,d0
	beq.s loc_20490c
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20490c:
	sub.w d1,$12(a0)
	rts
loc_204912:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204924:
	add.w d1,$12(a0)
loc_204928:
	rts

sub_20492a:
	tst.b $2a(a0)
	bne.s loc_20499e
	move.w $14(a0),d0
	beq.s loc_204938
	bpl.s loc_204968
loc_204938:
	bset.b #$0,$22(a0)
	bne.s loc_20494c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20494c:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20495c
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20495c
	move.w d1,d0
loc_20495c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204968:
	sub.w d4,d0
	bcc.s loc_204970
	move.w #$ff80,d0
loc_204970:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20499e
	cmpi.w #$400,d0
	blt.s loc_20499e
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202346).l
loc_20499e:
	rts

sub_2049a0:
	tst.b $2a(a0)
	bne.s loc_204a0e
	move.w $14(a0),d0
	bmi.s loc_2049d8
	bclr.b #$0,$22(a0)
	beq.s loc_2049c0
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2049c0:
	cmp.w d6,d0
	bge.s loc_2049cc
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2049cc
	move.w d6,d0
loc_2049cc:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2049d8:
	add.w d4,d0
	bcc.s loc_2049e0
	move.w #$80,d0
loc_2049e0:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a0e
	cmpi.w #$fc00,d0
	bgt.s loc_204a0e
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202346).l
loc_204a0e:
	rts

sub_204a10:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204b5a
	tst.w $3e(a0)
	bne.s loc_204a48
	btst.b #$2,($f602).w
	beq.s loc_204a3c
	bsr.w sub_204b90
loc_204a3c:
	btst.b #$3,($f602).w
	beq.s loc_204a48
	bsr.w sub_204bb4
loc_204a48:
	tst.b $2a(a0)
	beq.w loc_204af2
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a68
	asr.w #$1,d2
	sub.w d2,d1
loc_204a68:
	btst.b #$0,$22(a0)
	beq.s loc_204a74
	neg.w d0
	neg.w d1
loc_204a74:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a8a
	cmp.w d0,d1
	ble.s loc_204a90
	bra.s loc_204a8e
loc_204a8a:
	cmp.w d1,d0
	ble.s loc_204a90
loc_204a8e:
	move.w d1,d0
loc_204a90:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204ac4
	rts
loc_204a9e:
	move.w #$ab,d0
	jsr (sub_202346).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204b24
loc_204ac4:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204a9e
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202346).l
	btst.b #$0,$22(a0)
	bne.s loc_204aea
	bsr.w sub_204bb4
	bra.s loc_204af2
loc_204aea:
	bsr.w sub_204b90
	bra.s loc_204af2
	dc.b $4e,$75
loc_204af2:
	move.w $14(a0),d0
	beq.s loc_204b14
	bmi.s loc_204b08
	sub.w d5,d0
	bcc.s loc_204b02
	move.w #$0,d0
loc_204b02:
	move.w d0,$14(a0)
	bra.s loc_204b14
loc_204b08:
	add.w d5,d0
	bcc.s loc_204b10
	move.w #$0,d0
loc_204b10:
	move.w d0,$14(a0)
loc_204b14:
	tst.w $14(a0)
	bne.s loc_204b5a
	move.w #$ab,d0
	jsr (sub_202346).l
loc_204b24:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204b44
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204b54
loc_204b44:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204b54:
	move.b #$5,$1c(a0)
loc_204b5a:
	move.b $26(a0),d0
	jsr (sub_20084a).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204b7e
	move.w #$1000,d1
loc_204b7e:
	cmpi.w #$f000,d1
	bge.s loc_204b88
	move.w #$f000,d1
loc_204b88:
	move.w d1,$10(a0)
	bra.w loc_2048b8

sub_204b90:
	move.w $14(a0),d0
	beq.s loc_204b98
	bpl.s loc_204ba6
loc_204b98:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ba6:
	sub.w d4,d0
	bcc.s loc_204bae
	move.w #$ff80,d0
loc_204bae:
	move.w d0,$14(a0)
	rts

sub_204bb4:
	move.w $14(a0),d0
	bmi.s loc_204bc8
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204bc8:
	add.w d4,d0
	bcc.s loc_204bd0
	move.w #$80,d0
loc_204bd0:
	move.w d0,$14(a0)
	rts

sub_204bd6:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204c10
	tst.w ($ff1506).l
	bne.s loc_204c10
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204c08
	cmpi.w #$840,$8(a0)
	bcc.s loc_204c08
	rts
loc_204c08:
	btst.b #$1,$2c(a0)
	bne.s loc_204c40
loc_204c10:
	btst.b #$2,($f602).w
	beq.s loc_204c2a
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204c2a
	move.w d1,d0
loc_204c2a:
	btst.b #$3,($f602).w
	beq.s loc_204c40
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204c40
	move.w d6,d0
loc_204c40:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204c56
	bcc.s loc_204c52
	addq.w #$4,($f73e).w
loc_204c52:
	subq.w #$2,($f73e).w
loc_204c56:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204c84
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204c84
	bmi.s loc_204c78
	sub.w d1,d0
	bcc.s loc_204c72
	move.w #$0,d0
loc_204c72:
	move.w d0,$10(a0)
	rts
loc_204c78:
	sub.w d1,d0
	bcs.s loc_204c80
	move.w #$0,d0
loc_204c80:
	move.w d0,$10(a0)
loc_204c84:
	rts
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204cb4
	bsr.w sub_206b86
	tst.w d1
	bpl.s loc_204cb4
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
loc_204cb4:
	rts

sub_204cb6:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204d0a
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204ce4
	addi.w #$38,d0
loc_204ce4:
	cmp.w d1,d0
	bls.s loc_204d0a
loc_204ce8:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204cf8
	rts
loc_204cf8:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206fba
	move.b #$6,$24(a0)
	rts
loc_204d0a:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ce8

sub_204d22:
	tst.b ($f7ca).w
	bne.s loc_204d48
	move.w $14(a0),d0
	bpl.s loc_204d30
	neg.w d0
loc_204d30:
	cmpi.w #$80,d0
	bcs.s loc_204d48
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204d48
	btst.b #$1,($f602).w
	bne.s sub_204d4a
loc_204d48:
	rts

sub_204d4a:
	btst.b #$2,$22(a0)
	beq.s loc_204d54
	bra.s loc_204d84
loc_204d54:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d74
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d84
loc_204d74:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d84:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d9e
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d9e
	move.w #$200,$14(a0)
loc_204d9e:
	rts

sub_204da0:
	tst.b $2a(a0)
	beq.s loc_204da8
	rts
loc_204da8:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204dba
	tst.w $14(a0)
	beq.w loc_204e80
loc_204dba:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204e80
	btst.b #$3,$22(a0)
	beq.s loc_204dd6
	jsr (sub_205aac).l
	beq.s loc_204e06
loc_204dd6:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2069b6
	cmpi.w #$6,d1
	blt.w loc_204e80
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204dfc
	move.w #$380,d2
loc_204dfc:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204e06:
	jsr (sub_20084a).l
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
	jsr (sub_202346).l
	btst.b #$2,$22(a0)
	bne.s loc_204e82
	tst.b ($ff195b).l
	beq.s loc_204e64
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e74
loc_204e64:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e74:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204e80:
	rts
loc_204e82:
	bset.b #$4,$22(a0)
	rts

sub_204e8a:
	tst.b $3c(a0)
	beq.s loc_204ebc
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204ea0
	move.w #$fe00,d1
loc_204ea0:
	cmp.w $12(a0),d1
	ble.s loc_204eba
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204eba
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204eba:
	rts
loc_204ebc:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204eca
	move.w #$f040,$12(a0)
loc_204eca:
	rts

sub_204ecc:
	tst.b $2a(a0)
	bne.s loc_204f06
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204f06
	move.b $26(a0),d0
	jsr (sub_20084a).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204f06
	bmi.s loc_204f02
	tst.w d0
	beq.s loc_204f00
	add.w d0,$14(a0)
loc_204f00:
	rts
loc_204f02:
	add.w d0,$14(a0)
loc_204f06:
	rts

sub_204f08:
	tst.b $2a(a0)
	bne.s loc_204f48
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204f48
	move.b $26(a0),d0
	jsr (sub_20084a).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204f3e
	tst.w d0
	bpl.s loc_204f38
	asr.l #$2,d0
loc_204f38:
	add.w d0,$14(a0)
	rts
loc_204f3e:
	tst.w d0
	bmi.s loc_204f44
	asr.l #$2,d0
loc_204f44:
	add.w d0,$14(a0)
loc_204f48:
	rts

sub_204f4a:
	nop
	tst.b $38(a0)
	bne.s loc_204f8c
	tst.w $3e(a0)
	bne.s loc_204f8e
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204f8c
	move.w $14(a0),d0
	bpl.s loc_204f6e
	neg.w d0
loc_204f6e:
	cmpi.w #$280,d0
	bcc.s loc_204f8c
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204f8c:
	rts
loc_204f8e:
	subq.w #$1,$3e(a0)
	rts

sub_204f94:
	btst.b #$1,$2c(a0)
	bne.s loc_204fb6
	move.b $26(a0),d0
	beq.s loc_204fb6
	bpl.s loc_204fac
	addq.b #$2,d0
	bcc.s loc_204faa
	moveq #$0,d0
loc_204faa:
	bra.s loc_204fb2
loc_204fac:
	subq.b #$2,d0
	bcc.s loc_204fb2
	moveq #$0,d0
loc_204fb2:
	move.b d0,$26(a0)
loc_204fb6:
	rts

sub_204fb8:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200ae2).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20509c
	cmpi.b #$80,d0
	beq.w loc_2050fe
	cmpi.b #$c0,d0
	beq.w loc_20515a
	bsr.w sub_206ccc
	tst.w d1
	bpl.s loc_20500a
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20500a:
	bsr.w sub_206b2e
	tst.w d1
	bpl.s loc_20501c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20501c:
	bsr.w sub_2069de
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20509a
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_20503a
	cmp.b d2,d0
	blt.s loc_20509a
loc_20503a:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051bc
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205078
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20506a
	asr.w $12(a0)
	bra.s loc_20508c
loc_20506a:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205078:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_20508c
	move.w #$fc0,$12(a0)
loc_20508c:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20509a
	neg.w $14(a0)
loc_20509a:
	rts
loc_20509c:
	bsr.w sub_206ccc
	tst.w d1
	bpl.s loc_2050b6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2050b6:
	bsr.w sub_206b86
	tst.w d1
	bpl.s loc_2050d0
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2050ce
	move.w #$0,$12(a0)
loc_2050ce:
	rts
loc_2050d0:
	tst.w $12(a0)
	bmi.s loc_2050fc
	bsr.w sub_2069de
	tst.w d1
	bpl.s loc_2050fc
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051bc
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050fc:
	rts
loc_2050fe:
	bsr.w sub_206ccc
	tst.w d1
	bpl.s loc_205110
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205110:
	bsr.w sub_206b2e
	tst.w d1
	bpl.s loc_205122
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205122:
	bsr.w sub_206b86
	tst.w d1
	bpl.s loc_205158
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205142
	move.w #$0,$12(a0)
	rts
loc_205142:
	move.b d3,$26(a0)
	bsr.w sub_20522e
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205158
	neg.w $14(a0)
loc_205158:
	rts
loc_20515a:
	bsr.w sub_206b2e
	tst.w d1
	bpl.s loc_205174
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205174:
	bsr.w sub_206b86
	tst.w d1
	bpl.s loc_20518e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20518c
	move.w #$0,$12(a0)
loc_20518c:
	rts
loc_20518e:
	tst.w $12(a0)
	bmi.s loc_2051ba
	bsr.w sub_2069de
	tst.w d1
	bpl.s loc_2051ba
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051bc
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2051ba:
	rts

sub_2051bc:
	btst.b #$4,$22(a0)
	beq.s loc_2051c6
	nop
loc_2051c6:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205220
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205200
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205210
loc_205200:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205210:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202346).l
loc_205220:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20522e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_203906).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205268
	subi.w #$20,$12(a0)
loc_205268:
	jsr (sub_2065de).l
	bsr.w sub_205284
	bsr.w sub_204cb6
	bsr.w sub_204158
	bsr.w sub_205516
	jmp (sub_20395c).l

sub_205284:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206fba
	bsr.w sub_204fb8
	btst.b #$1,$22(a0)
	bne.s loc_2052be
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2052be:
	rts
	bsr.w sub_2052d8
	jsr (sub_2038a4).l
	bsr.w sub_204158
	bsr.w sub_205516
	jmp (sub_20395c).l

sub_2052d8:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_205346
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_20530c
	clr.b ($ff1508).l
loc_20530c:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_205326
	tst.b ($ff0f01).l
	beq.s loc_205326
	move.b #$0,($ff1508).l
	bra.s loc_205340
loc_205326:
	jsr (sub_207982).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_205346
loc_205340:
	move.w #$3c,$3a(a0)
loc_205346:
	rts
	tst.w $3a(a0)
	beq.w loc_2053ca
	subq.w #$1,$3a(a0)
	bne.w loc_2053ca
	move.w #$1,($ff1502).l
	jsr (sub_2022de).l
	move.b #$1,($a01c3e).l
	jsr (sub_2022fa).l
	bsr.w sub_207770
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_205398
	cmpi.b #$1,($ff152e).l
	bne.s loc_205398
	bclr.b #$1,($ff151c).l
loc_205398:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_2053c6
	cmpi.b #$1,($ff152e).l
	bne.s loc_2053c0
	tst.b ($ff158e).l
	beq.s loc_2053c6
	move.b #$1,($ff1522).l
	bra.s loc_2053c6
loc_2053c0:
	clr.b ($ff1522).l
loc_2053c6:
	bra.w sub_205b26
loc_2053ca:
	rts

sub_2053cc:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2053f4
	cmpi.b #$5,($ff1506).l
	beq.s loc_2053f4
	cmpi.b #$2,($ff1506).l
	beq.s loc_2053f4
	tst.b ($ff1506).l
	bne.w loc_2054b6
loc_2053f4:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205432
	tst.b ($ff1506).l
	bne.w loc_2054b8
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2054b8
	bra.s loc_20543a
loc_205432:
	cmp.b ($f7af).w,d1
	beq.w loc_2054b8
loc_20543a:
	cmp.b ($f7ac).w,d1
	beq.s loc_20546a
	cmp.b ($f7ad).w,d1
	beq.s loc_20544e
	bclr.b #$6,$1(a0)
	rts
loc_20544e:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2054d0
	btst.b #$1,$22(a0)
	beq.s loc_20546a
	bclr.b #$6,$1(a0)
	rts
loc_20546a:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20547c
	bclr.b #$6,$1(a0)
	rts
loc_20547c:
	cmpi.b #$e0,d2
	bcs.s loc_20548a
	bset.b #$6,$1(a0)
	rts
loc_20548a:
	btst.b #$6,$1(a0)
	bne.s loc_2054a6
	move.b $26(a0),d1
	beq.s loc_2054b6
	cmpi.b #$80,d1
	bhi.s loc_2054b6
	bset.b #$6,$1(a0)
	rts
loc_2054a6:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2054b6
	bclr.b #$6,$1(a0)
loc_2054b6:
	rts
loc_2054b8:
	btst.b #$2,$22(a0)
	bne.s loc_2054ca
	move.w #$9c,d0
	jsr (sub_202346).l
loc_2054ca:
	jmp (sub_204d4a).l
loc_2054d0:
	tst.w $12(a0)
	bmi.s loc_205514
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205508
	cmpi.w #$38,d1
	bcs.s loc_205500
	cmpi.w #$80,d1
	bcs.s loc_205514
loc_2054f8:
	bclr.b #$6,$1(a0)
	rts
loc_205500:
	bset.b #$6,$1(a0)
	rts
loc_205508:
	cmpi.w #$38,d1
	bcs.s loc_2054f8
	cmpi.w #$80,d1
	bcc.s loc_205500
loc_205514:
	rts

sub_205516:
	lea (dat_205806).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205538
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205538:
	bsr.w sub_2057a8
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2055b0
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20557e
	move.b d0,$1e(a0)

sub_205562:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205576
	bpl.s loc_205576
	cmpi.b #$fd,d0
	bge.s loc_205580
loc_205576:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20557e:
	rts
loc_205580:
	addq.b #$1,d0
	bne.s loc_205590
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205576
loc_205590:
	addq.b #$1,d0
	bne.s loc_2055a4
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205576
loc_2055a4:
	addq.b #$1,d0
	bne.s loc_2055ae
	move.b $2(a1,d1.w),$1c(a0)
loc_2055ae:
	rts
loc_2055b0:
	subq.b #$1,$1e(a0)
	bpl.s loc_20557e
	addq.b #$1,d0
	bne.w loc_20566a
	tst.b ($ff195b).l
	bne.w loc_205732
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2055d8
	not.b d0
loc_2055d8:
	btst.b #$1,$2c(a0)
	bne.s loc_2055e6
	addi.b #$10,d0
	bra.s loc_2055e8
loc_2055e6:
	addq.b #$8,d0
loc_2055e8:
	bpl.s loc_2055ec
	moveq #$3,d1
loc_2055ec:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2056de
	move.w $14(a0),d2
	bpl.s loc_20560a
	neg.w d2
loc_20560a:
	btst.b #$1,$2c(a0)
	beq.s loc_205622
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205a08).l,a1
	bra.s loc_20564c
loc_205622:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2059e2).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20564c
	lea (dat_205886).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20564c
	lea (dat_20587e).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20564c:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20565a
	moveq #$0,d2
loc_20565a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205562
	add.b d3,$1a(a0)
	rts
loc_20566a:
	addq.b #$1,d0
	bne.s loc_2056da
	move.w $14(a0),d2
	bpl.s loc_205676
	neg.w d2
loc_205676:
	lea (dat_205964).l,a1
	tst.b ($ff195b).l
	bne.s loc_2056b4
	lea (dat_205896).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2056a8
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2056b4
	lea (dat_205a10).l,a1
	bra.s loc_2056b4
loc_2056a8:
	cmpi.w #$600,d2
	bcc.s loc_2056b4
	lea (dat_20588e).l,a1
loc_2056b4:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2056be
	moveq #$0,d2
loc_2056be:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205562
loc_2056da:
	addq.b #$1,d0
	bne.s loc_20571e
loc_2056de:
	move.w $14(a0),d2
	bmi.s loc_2056e6
	neg.w d2
loc_2056e6:
	addi.w #$800,d2
	bpl.s loc_2056ee
	moveq #$0,d2
loc_2056ee:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205976).l,a1
	tst.b ($ff195b).l
	bne.s loc_205708
	lea (dat_20589e).l,a1
loc_205708:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205562
loc_20571e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205732:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205744
	not.b d0
loc_205744:
	addi.b #$10,d0
	bpl.s loc_20574c
	moveq #$0,d1
loc_20574c:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20577a
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20566a
loc_20577a:
	move.w $14(a0),d2
	bpl.s loc_205782
	neg.w d2
loc_205782:
	lea (dat_20595e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205794
	lea (dat_205958).l,a1
loc_205794:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20579e
	moveq #$0,d2
loc_20579e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205562

sub_2057a8:
	tst.b ($ff195b).l
	beq.s loc_2057b4
	move.b dat_2057b6(pc,d0.w),d0
loc_2057b4:
	rts
dat_2057b6:
	.incbin 22454, 80
dat_205806:
	.incbin 22534, 120
dat_20587e:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205886:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20588e:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205896:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20589e:
	.incbin 22686, 186
dat_205958:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20595e:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205964:
	.incbin 22884, 18
dat_205976:
	.incbin 22902, 108
dat_2059e2:
	.incbin 23010, 38
dat_205a08:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205a10:
	.incbin 23056, 56

sub_205a48:
	tst.b (a0)
	beq.w loc_205aaa
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205aaa
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205aaa
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205a7c:
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
loc_205a96:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a96
	dbf d1,loc_205a7c
loc_205aaa:
	rts

sub_205aac:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205b20
	move.w #$98,d0
	jsr (sub_202346).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200ae2).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205b0e
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205b0e:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205b20:
	rts
loc_205b22:
	move.w #$e,d0

sub_205b26:
	cmpi.w #$67,d0
	bne.s loc_205b34
	move.b #$1,($ff1958).l
loc_205b34:
	move.w d0,($a12010).l
loc_205b3a:
	move.w ($a12020).l,d0
	beq.s loc_205b3a
	cmp.w ($a12020).l,d0
	bne.s loc_205b3a
	move.w #$0,($a12010).l
loc_205b52:
	move.w ($a12020).l,d0
	bne.s loc_205b52
	move.w ($a12020).l,d0
	bne.s loc_205b52
	rts
	dc.b $00,$00

sub_205b66:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205b82
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205b82:
	subq.b #$1,$1e(a0)
	bpl.s loc_205bc2
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205bc4
loc_205b9e:
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
loc_205bc2:
	rts
loc_205bc4:
	addq.b #$1,d0
	bne.s loc_205bd4
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b9e
loc_205bd4:
	addq.b #$1,d0
	bne.s loc_205be8
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b9e
loc_205be8:
	addq.b #$1,d0
	bne.s loc_205bf2
	move.b $2(a1,d1.w),$1c(a0)
loc_205bf2:
	addq.b #$1,d0
	bne.s loc_205bfa
	addq.b #$2,$24(a0)
loc_205bfa:
	addq.b #$1,d0
	bne.s loc_205c08
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205c08:
	addq.b #$1,d0
	bne.s loc_205c10
	addq.b #$2,$25(a0)
loc_205c10:
	rts
	.incbin 23570, 536

sub_205e2a:
	rts
	.incbin 24108, 116

sub_205ea0:
	tst.b $25(a0)
	bne.s loc_205ed0
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207982).l
	bne.s loc_205ed0
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205ed0:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205ee0(pc,d0.w),d0
	jmp dat_205ee0(pc,d0.w)
dat_205ee0:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205f08
	andi.b #$7f,$2(a0)
loc_205f08:
	move.l #$23b188,$4(a0)
	bsr.s sub_205ea0
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205f36
	move.w #$100,$1c(a0)
loc_205f36:
	lea (dat_23b174).l,a1
	bsr.w sub_205b66
	jmp (sub_20395c).l
	tst.b $25(a0)
	beq.s loc_205f52
	jmp (sub_203a08).l
loc_205f52:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f74(pc,d0.w),d0
	jsr dat_205f74(pc,d0.w)
	jmp (sub_20395c).l
dat_205f74:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205fa2
	andi.b #$7f,$2(a0)
loc_205fa2:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_205fc8
	bsr.w sub_206034
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_20602a
loc_205fc8:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206a8c).l
	tst.w d1
	bpl.s loc_206026
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206010
	bsr.w sub_206034
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_20605a
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206010:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_20602a
loc_206026:
	addq.w #$2,$c(a0)
loc_20602a:
	lea (dat_2336bc).l,a1
	bra.w sub_205b66

sub_206034:
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

sub_20605a:
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
	bra.s loc_20602a
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_20602a
	.incbin 24726, 836
loc_2063da:
	bclr.b #$7,($ff156b).l
	beq.s loc_206428
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20642a(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2063fe:
	move.l (a1)+,(a2)+
	dbf d0,loc_2063fe
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206428:
	rts
dat_20642a:
	.incbin 25642, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206460(pc,d0.w),d0
	jsr dat_206460(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_20645a
	jsr (sub_20395c).l
loc_20645a:
	jmp (loc_2079b8).l
dat_206460:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23af9c,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206542
	cmpi.b #$6,$24(a1)
	bcc.w loc_206542
	bsr.w sub_2065a6
	beq.w loc_206542
	tst.b $28(a0)
	bne.s loc_2064f4
	move.w $10(a1),d0
	bpl.s loc_2064b4
	neg.w d0
loc_2064b4:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2064c6
	move.w #$d00,d1
loc_2064c6:
	cmp.w d1,d0
	bcc.s loc_2064cc
	move.w d1,d0
loc_2064cc:
	tst.w $10(a1)
	bpl.s loc_2064d4
	neg.w d0
loc_2064d4:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_206524
	neg.w $14(a1)
	bra.s loc_206524
loc_2064f4:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206544
	move.w $12(a1),d0
	bpl.s loc_206504
	neg.w d0
loc_206504:
	cmpi.w #$d00,d0
	bcc.s loc_20650e
	move.w #$d00,d0
loc_20650e:
	tst.w $12(a1)
	bpl.s loc_206516
	neg.w d0
loc_206516:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206524:
	bset.b #$2,$22(a1)
	bne.s loc_206542
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206542:
	rts
loc_206544:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206590
	cmpi.b #$2,$28(a0)
	bne.s loc_206560
	tst.w $12(a1)
	bpl.s loc_206524
	bra.s loc_206566
loc_206560:
	tst.w $12(a1)
	bmi.s loc_206524
loc_206566:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206578
	btst.l #$2,d1
	beq.s loc_206524
	neg.w d0
loc_206578:
	cmpi.b #$2,$28(a0)
	beq.s loc_206586
	bset.b #$1,$22(a1)
loc_206586:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206524
loc_206590:
	tst.w $10(a1)
	bmi.s loc_206524
	btst.l #$0,d1
	beq.w loc_206524
	move.w #$f600,d0
	bra.w loc_206516

sub_2065a6:
	tst.b ($ff1906).l
	bne.s loc_2065da
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2065da
	cmpi.w #$50,d0
	bcc.s loc_2065da
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2065da
	cmpi.w #$50,d0
	bcc.s loc_2065da
	moveq #$1,d0
	rts
loc_2065da:
	moveq #$0,d0
	rts

sub_2065de:
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_20663a
	move.w $10(a0),d0
	bpl.s loc_2065f2
	neg.w d0
loc_2065f2:
	cmpi.w #$a00,d0
	bcs.s loc_20663a
	move.w $c(a0),d2
	move.w $8(a0),d3
	addq.w #$8,d2
	jsr (sub_200fb8).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_206626
	add.b ($ff156a).l,d1
loc_206626:
	add.w d1,d1
	move.w dat_20663c(pc,d1.w),d1
	lea dat_20663c(pc,d1.w),a1
loc_206630:
	move.w (a1)+,d1
	bmi.s loc_20663a
	cmp.w d1,d0
	bne.s loc_206630
	bra.s loc_20667c
loc_20663a:
	rts
dat_20663c:
	.incbin 26172, 64
loc_20667c:
	jsr (sub_207982).l
	bne.s loc_2066ac
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $16(a0),d0
	ext.w d0
	add.w d0,$c(a1)
	tst.w $10(a0)
	bpl.s loc_2066ac
	bset.b #$0,$22(a1)
loc_2066ac:
	rts
	.incbin 26286, 216
loc_206786:
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
	bne.s loc_206840
	move.b ($ff1593).l,($ff195b).l
loc_206840:
	tst.b ($ff1522).l
	bpl.s loc_206856
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206856:
	rts

sub_206858:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206786
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
	bne.s loc_206912
	move.b ($ff1591).l,($ff195b).l
loc_206912:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206934
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206934:
	tst.b ($ff1522).l
	bpl.s loc_20694a
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20694a:
	rts

sub_20694c:
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
	bpl.s loc_206988
	move.b d1,d0
	bpl.s loc_206982
	subq.b #$1,d0
loc_206982:
	addi.b #$20,d0
	bra.s loc_206992
loc_206988:
	move.b d1,d0
	bpl.s loc_20698e
	addq.b #$1,d0
loc_20698e:
	addi.b #$1f,d0
loc_206992:
	andi.b #$c0,d0
	beq.w loc_206a62
	cmpi.b #$80,d0
	beq.w loc_206bfe
	andi.b #$38,d1
	bne.s loc_2069aa
	addq.w #$8,d2
loc_2069aa:
	cmpi.b #$40,d0
	beq.w loc_206cd4
	bra.w loc_206b36

sub_2069b6:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206c5c
	cmpi.b #$80,d0
	beq.w sub_206b86
	cmpi.b #$c0,d0
	beq.w loc_206ac6

sub_2069de:
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
	jsr (sub_2011a0).l
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
	jsr (sub_2011a0).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206a42:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206a50
	move.b ($f768).w,d3
	exg d0,d1
loc_206a50:
	btst.l #$0,d3
	beq.s loc_206a58
	move.b d2,d3
loc_206a58:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206a62:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011a0).l
	move.b #$0,d2
loc_206a7e:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a8a
	move.b d2,d3
loc_206a8a:
	rts

sub_206a8c:
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
	jsr (sub_2011a0).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ac4
	move.b #$0,d3
loc_206ac4:
	rts
loc_206ac6:
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
	jsr (sub_201310).l
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
	jsr (sub_201310).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206a42

sub_206b2e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b36:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201310).l
	move.b #$c0,d2
	bra.w loc_206a7e
	.incbin 27478, 32
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b84
	move.b #$c0,d3
loc_206b84:
	rts

sub_206b86:
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
	jsr (sub_2011a0).l
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
	jsr (sub_2011a0).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206a42

sub_206bf6:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206bfe:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2011a0).l
	move.b #$80,d2
	bra.w loc_206a7e
	.incbin 27682, 58
loc_206c5c:
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
	jsr (sub_201310).l
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
	jsr (sub_201310).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206a42

sub_206ccc:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cd4:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201310).l
	move.b #$40,d2
	bra.w loc_206a7e
	.incbin 27896, 48

sub_206d28:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206d4c
	addi.w #$c,d3
	moveq #$a,d5
loc_206d4c:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206d5a:
	tst.b $1(a1)
	bpl.s loc_206d66
	move.b $20(a1),d0
	bne.s loc_206d72
loc_206d66:
	lea $40(a1),a1
	dbf d6,loc_206d5a
	moveq #$0,d0
	rts
loc_206d72:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20710c).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206d9a
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206da0
	bra.w loc_206d66
loc_206d9a:
	cmp.w d4,d0
	bhi.w loc_206d66
loc_206da0:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206db8
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206dbe
	bra.w loc_206d66
loc_206db8:
	cmp.w d5,d0
	bhi.w loc_206d66
loc_206dbe:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206e32
	cmpi.b #$c0,d1
	beq.w loc_207012
	tst.b d1
	bmi.w sub_206efc
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206df6
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206df4
	addq.b #$2,$24(a1)
loc_206df4:
	rts
loc_206df6:
	tst.w $12(a0)
	bpl.s loc_206e20
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206e30
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206e30
	addq.b #$4,$25(a1)
	rts
loc_206e20:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e30
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206e30:
	rts

sub_206e32:
	tst.b ($ff1521).l
	bne.s loc_206e4c
	tst.b ($ff151f).l
	bne.s loc_206e4c
	cmpi.b #$2,$1c(a0)
	bne.w sub_206efc
loc_206e4c:
	tst.b $21(a1)
	beq.s loc_206e76
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206e74
	bset.b #$7,$22(a1)
loc_206e74:
	rts
loc_206e76:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206e8e
	moveq #$6,d0
loc_206e8e:
	move.w d0,$3e(a1)
	move.w dat_206eee(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206ea8
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206ea8:
	bsr.w sub_20a994
	move.w #$96,d0
	jsr (sub_202346).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206ede
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206ee6
	neg.w $12(a0)
	rts
loc_206ede:
	addi.w #$100,$12(a0)
	rts
loc_206ee6:
	subi.w #$100,$12(a0)
	rts
dat_206eee:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206efc:
	tst.b ($ff1521).l
	bne.s loc_206f0c
	tst.b ($ff151f).l
	beq.s loc_206f10
loc_206f0c:
	moveq #$ffffffff,d0
	rts
loc_206f10:
	nop
	tst.w $30(a0)
	bne.s loc_206f0c
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206f46
	tst.w ($ff1512).l
	beq.w loc_206fb0
	jsr (sub_207982).l
	bne.s loc_206f46
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206f46:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206f5c
	move.b #$0,($ff156f).l
loc_206f5c:
	move.b #$4,$24(a0)
	bsr.w sub_2051bc
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206f8c
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206f8c:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206f9a
	neg.w $10(a0)
loc_206f9a:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206fb0:
	tst.w ($ff1588).l
	bne.w loc_206f46

sub_206fba:
	tst.w ($ff1906).l
	bne.s loc_20700e
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2051bc
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202346).l
loc_20700e:
	moveq #$ffffffff,d0
	rts
loc_207012:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2070aa
	cmpi.b #$23,d1
	beq.w loc_2070aa
	cmpi.b #$2d,d1
	beq.w loc_207100
	cmpi.b #$31,d1
	beq.w loc_207100
	cmpi.b #$35,d1
	beq.w loc_2070f2
	cmpi.b #$3a,d1
	beq.w loc_2070f2
	cmpi.b #$3b,d1
	beq.w loc_2070f2
	tst.b ($f7aa).w
	beq.w loc_2070a8
	cmpi.b #$1,($f7aa).w
	beq.s loc_207072
	cmpi.b #$4,($f7aa).w
	beq.s loc_207094
	cmpi.b #$5,($f7aa).w
	beq.s loc_2070a2
loc_207072:
	cmpi.b #$3c,d1
	blt.s loc_2070a8
	cmpi.b #$3f,d1
	bgt.s loc_2070a8
	bsr.w sub_206e32
	tst.b $20(a1)
	bne.s loc_20708c
	addq.b #$3,$21(a1)
loc_20708c:
	clr.b $20(a1)
	bra.w loc_2070aa
loc_207094:
	cmpi.b #$3f,d1
	beq.s loc_2070b6
	cmpi.b #$3e,d1
	beq.s loc_2070b0
	bra.s loc_2070a8
loc_2070a2:
	cmpi.b #$3d,d1
	beq.s loc_2070b0
loc_2070a8:
	rts
loc_2070aa:
	addq.b #$1,$21(a1)
	rts
loc_2070b0:
	bsr.w sub_206efc
	bra.s loc_2070aa
loc_2070b6:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_2070f0
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_2070f0
	neg.w $10(a0)
loc_2070f0:
	rts
loc_2070f2:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2070fe
	addq.b #$1,$21(a1)
loc_2070fe:
	rts
loc_207100:
	btst.b #$2,$22(a0)
	beq.w sub_206e32
	bra.s loc_2070aa
dat_20710c:
	.incbin 28940, 126
loc_20718a:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2071a0
	move.l #$4000,(dat_20731a).l
	bra.s loc_2071c0
loc_2071a0:
	addi.l #$2000,(dat_20731a).l
	cmpi.l #$80000,(dat_20731a).l
	bls.s loc_2071c0
	move.l #$80000,(dat_20731a).l
loc_2071c0:
	move.l (dat_20731a).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2071d2
	sub.l d0,$c(a0)
loc_2071d2:
	btst.b #$1,($f604).w
	beq.s loc_2071de
	add.l d0,$c(a0)
loc_2071de:
	btst.b #$2,($f604).w
	beq.s loc_2071ea
	sub.l d0,$8(a0)
loc_2071ea:
	btst.b #$3,($f604).w
	beq.s loc_2071f6
	add.l d0,$8(a0)
loc_2071f6:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200fb8).l
	move.w (a1),($ff194e).l
	lea (dat_20731e).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207238
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207232
	move.b #$0,d1
loc_207232:
	move.b d1,($ff1904).l
loc_207238:
	btst.b #$7,($f605).w
	beq.s loc_207258
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207252
	add.b (a2),d1
loc_207252:
	move.b d1,($ff1904).l
loc_207258:
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
	beq.s loc_2072e4
	bsr.w sub_207982
	bne.s loc_2072e4
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
loc_2072e4:
	btst.b #$4,($f605).w
	beq.s loc_207314
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207314:
	jmp (sub_20395c).l
dat_20731a:
	dc.b $00,$00,$40,$00
dat_20731e:
	.incbin 29470, 1106

sub_207770:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20777e:
	clr.l (a2)+
	dbf d0,loc_20777e
	rts

sub_207786:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207794(pc,d0.w),d0
	jmp dat_207794(pc,d0.w)
dat_207794:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207a34).l,a0
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
	bcc.s loc_2077d2
	moveq #$0,d6
loc_2077d2:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2077da:
	cmp.w (a0),d6
	bls.s loc_2077ec
	tst.b $4(a0)
	bpl.s loc_2077e8
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077e8:
	addq.w #$8,a0
	bra.s loc_2077da
loc_2077ec:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20780c
loc_2077fa:
	cmp.w (a0),d6
	bls.s loc_20780c
	tst.b $4(a0)
	bpl.s loc_207808
	addq.b #$1,$1(a2)
loc_207808:
	addq.w #$8,a0
	bra.s loc_2077fa
loc_20780c:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2078f6
	bge.s loc_20789c
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207878
loc_207846:
	cmp.w -$8(a0),d6
	bge.s loc_207878
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20785c
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20785c:
	bsr.w sub_20791a
	bne.s loc_207866
	subq.w #$8,a0
	bra.s loc_207846
loc_207866:
	tst.b $4(a0)
	bpl.s loc_207876
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207876:
	addq.w #$8,a0
loc_207878:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207884:
	cmp.w -$8(a0),d6
	bgt.s loc_207896
	tst.b -$4(a0)
	bpl.s loc_207892
	subq.b #$1,(a2)
loc_207892:
	subq.w #$8,a0
	bra.s loc_207884
loc_207896:
	move.l a0,($f770).w
	rts
loc_20789c:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2078b0:
	cmp.w (a0),d6
	bls.s loc_2078d2
	tst.b $4(a0)
	bpl.s loc_2078be
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2078be:
	bsr.w sub_20791a
	beq.s loc_2078b0
	tst.b $4(a0)
	bpl.s loc_2078d2
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2078d2:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2078f2
loc_2078e0:
	cmp.w (a0),d6
	bls.s loc_2078f2
	tst.b $4(a0)
	bpl.s loc_2078ee
	addq.b #$1,$1(a2)
loc_2078ee:
	addq.w #$8,a0
	bra.s loc_2078e0
loc_2078f2:
	move.l a0,($f774).w
loc_2078f6:
	rts

sub_2078f8:
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

sub_20791a:
	bsr.s sub_2078f8
	beq.s loc_20792c
	tst.b $4(a0)
	bpl.s loc_207932
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207932
loc_20792c:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207932:
	bsr.w sub_207982
	bne.s loc_207980
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
	bpl.s loc_207962
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207962:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207974
	nop
	nop
	nop
	nop
loc_207974:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207980:
	rts

sub_207982:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20798a:
	tst.b (a1)
	beq.s loc_207996
	lea $40(a1),a1
	dbf d0,loc_20798a
loc_207996:
	rts

sub_207998:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2079b6
loc_2079aa:
	tst.b (a1)
	beq.s loc_2079b6
	lea $40(a1),a1
	dbf d0,loc_2079aa
loc_2079b6:
	rts
loc_2079b8:
	move.w $8(a0),d0

sub_2079bc:
	tst.b $1(a0)
	bmi.s loc_207a26
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207a26
loc_2079da:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207a1c
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207a14
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207a0c
	moveq #$0,d1
	bra.s loc_207a14
loc_207a0c:
	cmpi.w #$3,d1
	bcs.s loc_207a14
	moveq #$2,d1
loc_207a14:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207a1c:
	jsr (sub_203a08).l
	moveq #$1,d0
	rts
loc_207a26:
	btst.b #$7,($ff152e).l
	bne.s loc_2079da
	moveq #$0,d0
	rts
dat_207a34:
	.incbin 31284, 5146

sub_208e4e:
	btst.b #$3,$22(a0)
	beq.s loc_208ebe
	btst.b #$3,$22(a1)
	beq.s loc_208ebe
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208ebe
	tst.b $2a(a1)
	beq.s loc_208e80
	move.w #$ab,d0
	jsr (sub_202346).l
loc_208e80:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208eac
	cmpi.b #$17,$1c(a1)
	beq.s loc_208eac
	bclr.b #$0,$2c(a1)
loc_208eac:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208ebe
	bclr.b #$1,$22(a1)
loc_208ebe:
	rts

sub_208ec0:
	cmpi.b #$4,$24(a1)
	bne.s loc_208ed2
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208ed2:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208f32
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208ef4
	bclr.b #$3,$22(a0)
	bra.w sub_208e4e
loc_208ef4:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208f32
	tst.b ($ff195b).l
	beq.s loc_208f1c
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208f2c
loc_208f1c:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208f2c:
	move.b #$0,$1c(a1)
loc_208f32:
	bset.b #$3,$22(a1)
	beq.s loc_208f54
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208f8c
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208f54:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208f80
	cmpi.b #$2,$24(a0)
	beq.s loc_208f86
loc_208f80:
	move.w $10(a1),$14(a1)
loc_208f86:
	bclr.b #$1,$22(a1)
loc_208f8c:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_208f9c:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209250
	btst.b #$6,$2c(a1)
	bne.w loc_209250
	cmpi.b #$6,$24(a1)
	bcc.w loc_209250
	tst.b $0(a1)
	beq.w loc_209250
	tst.b $1(a0)
	bpl.w loc_209250
	tst.b ($ff1906).l
	bne.w loc_209250
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209250
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209250
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20900a
	btst.b #$3,$22(a0)
	bne.s loc_20901c
	bra.w loc_209250
loc_20900a:
	cmpi.b #$1,$25(a0)
	bne.s loc_20901c
	tst.w $12(a1)
	beq.s loc_20901c
	bmi.w loc_209250
loc_20901c:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209250
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209250
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_209052
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_209052:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_209060
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_209060:
	cmp.w d4,d5
	bcs.w loc_2090f4
	cmpi.b #$1,$25(a0)
	beq.w loc_209250
	cmpi.b #$a,$0(a0)
	bne.s loc_209082
	btst.b #$1,$22(a1)
	bne.w loc_209250
loc_209082:
	cmpi.b #$4,d5
	bls.w loc_209250
	bsr.w sub_2092a0
	move.l d0,-(a7)
	bsr.w sub_208e4e
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2090ac
	tst.w $10(a1)
	beq.s loc_2090dc
	bpl.s loc_2090b4
	bra.s loc_2090dc
loc_2090ac:
	tst.w $10(a1)
	beq.s loc_2090dc
	bpl.s loc_2090dc
loc_2090b4:
	bsr.w sub_209260
	btst.b #$1,$22(a1)
	bne.s loc_2090d2
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_2090d2:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_2090dc:
	bsr.w sub_209316
	bsr.w sub_209260
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_2090f4:
	cmpi.b #$19,$0(a0)
	bne.s loc_209106
	btst.b #$2,$22(a1)
	bne.w loc_209250
loc_209106:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20911c
	bmi.w loc_2091ec
loc_20911c:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20912e
	tst.w $12(a1)
	beq.s loc_20912e
	bmi.w loc_209250
loc_20912e:
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
	beq.s loc_20917a
	bpl.s loc_20915a
	neg.b d0
loc_20915a:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20694c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20917a
	tst.w $10(a0)
	bpl.s loc_209176
	neg.w d1
loc_209176:
	add.w d1,$8(a1)
loc_20917a:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_2091e4
	tst.w $12(a0)
	bmi.s loc_2091b8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2069de).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2091b8
	add.w d1,$c(a1)
	bra.w loc_209250
loc_2091b8:
	tst.w $12(a0)
	bpl.s loc_2091e4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206bf6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2091e4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fba).l
	movem.l (a7)+,a0-a1
	bra.s loc_209250
loc_2091e4:
	bsr.w sub_208ec0
	moveq #$1,d0
	rts
loc_2091ec:
	cmpi.b #$1,$25(a0)
	beq.s loc_209250
	cmpi.b #$9,$0(a0)
	beq.s loc_209250
	cmpi.b #$a,$0(a0)
	bne.s loc_209216
	cmpi.b #$2,$25(a0)
	beq.s loc_209236
	btst.b #$1,$1(a0)
	bne.s loc_209236
	bra.s loc_209250
loc_209216:
	btst.b #$1,$22(a1)
	bne.s loc_209236
	tst.w $12(a0)
	beq.s loc_209236
	bmi.s loc_209236
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fba).l
	movem.l (a7)+,a0-a1
loc_209236:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209316
	bsr.w sub_208e4e
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209250:
	bsr.w sub_209316
	bsr.w sub_208e4e
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209260:
	tst.w $10(a0)
	beq.s loc_20929e
	cmpi.b #$a,$0(a0)
	beq.s loc_20929e
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_20927a
	neg.b d0
loc_20927a:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20694c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20929e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fba).l
	movem.l (a7)+,a0-a1
loc_20929e:
	rts

sub_2092a0:
	cmpi.b #$a,$0(a0)
	bne.s loc_2092b0
	move.b #$0,$20(a1)
	rts
loc_2092b0:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209304
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209314
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_2092d2
	tst.w $10(a2)
	beq.s loc_209314
loc_2092d2:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_2092e4
	cmp.w $8(a2),d1
	bcs.s loc_209314
	bra.s loc_2092ea
loc_2092e4:
	cmp.w $8(a2),d1
	bcc.s loc_209314
loc_2092ea:
	cmpi.b #$15,$0(a0)
	beq.s loc_209314
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fba).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209304:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209314:
	rts

sub_209316:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209330
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209330
	move.b #$0,$20(a1)
loc_209330:
	rts
	.incbin 37682, 374
loc_2094a8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2094b6(pc,d0.w),d0
	jmp dat_2094b6(pc,d0.w)
dat_2094b6:
	.incbin 38070, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2094a8
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20950c
	tst.b $1(a0)
	bpl.s loc_209514
loc_20950c:
	move.w dat_209566(pc,d0.w),d1
	jsr dat_209566(pc,d1.w)
loc_209514:
	bsr.w sub_20395c
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209546
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209546:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203a08
	rts
dat_209566:
	.incbin 38246, 26
	addq.b #$2,$24(a0)
	move.l #$2098e8,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2095d6
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2098ee,$4(a0)
	bra.s loc_209618
loc_2095d6:
	btst.l #$3,d0
	beq.s loc_209604
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209938,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cede).l
	move.l (a7)+,d0
	bra.s loc_209618
loc_209604:
	btst.b #$1,$1(a0)
	beq.s loc_209618
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209618:
	btst.l #$1,d0
	beq.s loc_209624
	bset.b #$5,$2(a0)
loc_209624:
	andi.w #$2,d0
	move.w dat_209630(pc,d0.w),$30(a0)
	rts
dat_209630:
	dc.b $f0,$00,$f6,$00

sub_209634:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208f9c).l
	tst.b $1(a0)
	bpl.s loc_209650
	lea ($d000).w,a1
	bsr.s sub_209634
	bne.s loc_209652
loc_209650:
	rts
loc_209652:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202346).l
	.incbin 38532, 34

sub_2096a6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208f9c).l
	tst.b $1(a0)
	bpl.s loc_2096c8
	lea ($d000).w,a1
	bsr.s sub_2096a6
	btst.b #$5,$22(a0)
	bne.s loc_2096ca
loc_2096c8:
	rts
loc_2096ca:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_2096f8
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_2096f8:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209712
	move.b #$0,$1c(a1)
loc_209712:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_202346).l
	.incbin 38700, 666
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2099d4(pc,d0.w),d1
	jmp dat_2099d4(pc,d1.w)
dat_2099d4:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2099de:
	.incbin 39390, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209a36
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209a2e
	moveq #$0,d1
	bra.s loc_209a36
loc_209a2e:
	cmpi.w #$3,d1
	bcs.s loc_209a36
	moveq #$2,d1
loc_209a36:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209a52
	moveq #$6,d1
loc_209a52:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2099de).l,a1
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
	beq.s loc_209aa2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209a9a
	moveq #$0,d0
	bra.s loc_209aa2
loc_209a9a:
	cmpi.w #$3,d0
	bcs.s loc_209aa2
	moveq #$2,d0
loc_209aa2:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209b70
	dbf d0,loc_209aa2
	bclr.b #$7,(a2)
	bra.s loc_209af8
loc_209ab4:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209ae0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209ad8
	moveq #$0,d0
	bra.s loc_209ae0
loc_209ad8:
	cmpi.w #$3,d0
	bcs.s loc_209ae0
	moveq #$2,d0
loc_209ae0:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209b70
	dbf d0,loc_209ae0
	bclr.b #$7,(a2)
	bsr.w sub_207998
	bne.w loc_209b7c
loc_209af8:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209e42,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209b4e
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209b4e
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209b4e:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209b70:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209ab4
loc_209b7c:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209ba2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209b9a
	moveq #$0,d0
	bra.s loc_209ba2
loc_209b9a:
	cmpi.w #$3,d0
	bcs.s loc_209ba2
	moveq #$2,d0
loc_209ba2:
	lea $1(a2),a3
loc_209ba6:
	btst.b #$0,-(a3)
	bne.w sub_203a08
	dbf d0,loc_209ba6
	tst.b $1(a0)
	bmi.s loc_209bd6
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209c50
loc_209bd6:
	tst.w ($ff190e).l
	bne.s loc_209be6
	move.b ($ff1913).l,$1a(a0)
loc_209be6:
	bra.w sub_20395c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209c54
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209c36
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209c2e
	moveq #$0,d1
	bra.s loc_209c36
loc_209c2e:
	cmpi.w #$3,d1
	bcs.s loc_209c36
	moveq #$2,d1
loc_209c36:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209e3a).l,a1
	bsr.w sub_205b66
	bra.w sub_20395c
loc_209c50:
	bra.w sub_203a08

sub_209c54:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209ca4
	bset.b #$1,($ff150d).l
	beq.s loc_209c8e
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209ca4
	bset.b #$2,($ff150d).l
	bne.s loc_209ca4
loc_209c8e:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b26).l
loc_209ca4:
	jmp (sub_202346).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209cb8(pc,d0.w),d1
	jmp dat_209cb8(pc,d1.w)
dat_209cb8:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_209cd4
	move.w d0,d5
loc_209cd4:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_209ce4
loc_209cdc:
	bsr.w sub_207982
	bne.w loc_209d9a
loc_209ce4:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209e42,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209d42
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209d42
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209d42:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_209d8a
	move.w d4,d0
	jsr (sub_20084a).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_209d8a
	subi.w #$80,d4
	bcc.s loc_209d8a
	move.w #$288,d4
loc_209d8a:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209cdc
loc_209d9a:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202346).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203906
	addi.w #$18,$12(a0)
	bmi.s loc_209dfa
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209dfa
	jsr (sub_206a8c).l
	tst.w d1
	bpl.s loc_209dfa
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209dfa:
	tst.b ($ff1916).l
	beq.s loc_209e36
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209e36
	bra.w sub_20395c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209c54
	lea (dat_209e3a).l,a1
	bsr.w sub_205b66
	bra.w sub_20395c
loc_209e36:
	bra.w sub_203a08
dat_209e3a:
	.incbin 40506, 402
loc_209fcc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ffa(pc,d0.w),d0
	jsr dat_209ffa(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209ff8
	cmpi.w #$5a,($f786).w
	bcs.s loc_209ff2
	btst.b #$0,($ff1505).l
	bne.s loc_209ff8
loc_209ff2:
	jmp (sub_20395c).l
loc_209ff8:
	rts
dat_209ffa:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a5d4,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a02e
	move.b #$13,$1a(a0)
loc_20a02e:
	rts
loc_20a030:
	tst.b ($ff0f01).l
	beq.s loc_20a03e
	jmp (sub_203a08).l
loc_20a03e:
	cmpi.b #$a,$28(a0)
	beq.w loc_209fcc
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a062(pc,d0.w),d0
	jsr dat_20a062(pc,d0.w)
	jsr (sub_20395c).l
	jmp (loc_2079b8).l
dat_20a062:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a5d4,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a0b0
	tst.b $29(a0)
	bne.s loc_20a0b0
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a0b0:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a17c
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a0d8
	addq.b #$2,$1a(a0)
loc_20a0d8:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a0ec
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a0ec:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a152
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a11e
	tst.b $29(a0)
	beq.s loc_20a116
	tst.b ($ff1956).l
	beq.s loc_20a152
	bra.s loc_20a11e
loc_20a116:
	tst.b ($ff1956).l
	bne.s loc_20a152
loc_20a11e:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a17c
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a14c
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a14c:
	jsr (sub_205b26).l
loc_20a152:
	rts
	.incbin 41300, 40

sub_20a17c:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a1b4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a1ac
	moveq #$0,d1
	bra.s loc_20a1b4
loc_20a1ac:
	cmpi.w #$3,d1
	bcs.s loc_20a1b4
	moveq #$2,d1
loc_20a1b4:
	add.w d1,d0
	rts

sub_20a1b8:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a1da
	tst.b ($ff1956).l
	beq.s loc_20a1d2
	tst.b $29(a0)
	bne.s loc_20a1da
	rts
loc_20a1d2:
	tst.b $29(a0)
	beq.s loc_20a1da
	rts
loc_20a1da:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208f9c).l
	tst.b $28(a0)
	bne.s loc_20a1fc
	tst.b ($ff0f01).l
	beq.s loc_20a1fc
	jmp (loc_2079b8).l
loc_20a1fc:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a030
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a214(pc,d0.w),d1
	jmp dat_20a214(pc,d1.w)
dat_20a214:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a5d4,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a25e
	tst.b $29(a0)
	bne.s loc_20a25e
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a25e:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a17c
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a28a
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a28a:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a2e4
	move.b $25(a0),d0
	beq.s loc_20a2c4
	bsr.w sub_2038a4
	jsr (sub_206a8c).l
	tst.w d1
	bpl.w loc_20a2d2
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a2d2
loc_20a2c4:
	tst.b $1(a0)
	bpl.s loc_20a2d2
	lea ($d000).w,a1
	bsr.w sub_20a1b8
loc_20a2d2:
	tst.w ($ff190e).l
	bne.s loc_20a2e4
	lea (dat_20a54c).l,a1
	bsr.w sub_205b66
loc_20a2e4:
	bsr.w sub_20395c
	jmp (loc_2079b8).l
	.incbin 41710, 606
dat_20a54c:
	.incbin 42316, 586
loc_20a796:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a7aa(pc,d0.w),d0
	jsr dat_20a7aa(pc,d0.w)
	jmp (sub_20395c).l
dat_20a7aa:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a7ea,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a7e4
	jmp (sub_203a08).l
loc_20a7e4:
	subq.w #$2,$c(a0)
	rts
	.incbin 42986, 82
	tst.b $28(a0)
	bmi.w loc_20a796
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a852(pc,d0.w),d0
	jmp dat_20a852(pc,d0.w)
dat_20a852:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a8ec,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a882
	move.b #$3,$1a(a0)
	bra.s loc_20a8a2
loc_20a882:
	tst.w ($ff1588).l
	beq.s loc_20a890
	move.b #$2,$1a(a0)
loc_20a890:
	tst.b $28(a0)
	beq.s loc_20a8a2
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a8a2:
	tst.b $28(a0)
	bne.s loc_20a8e6
	tst.b $29(a0)
	beq.s loc_20a8d2
	tst.w ($ff1512).l
	beq.s loc_20a8be
	bclr.b #$5,$2(a0)
	bra.s loc_20a8e6
loc_20a8be:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a8e6
	eori.b #$20,$2(a0)
	bra.s loc_20a8e6
loc_20a8d2:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a8e6
	move.b #$2,$1a(a0)
loc_20a8e6:
	jmp (sub_20395c).l
	.incbin 43244, 168

sub_20a994:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a9b0
	move.l d1,(a3)
loc_20a9b0:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a9da
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b26).l
loc_20a9da:
	rts
loc_20a9dc:
	tst.w ($ff1588).l
	beq.s loc_20aa32
	bsr.w sub_20ac2e
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
	lea (dat_20ad8e).l,a2
	moveq #$2,d6
	bsr.w sub_20ade6
	bra.w loc_20aa8c
loc_20aa32:
	tst.b ($ff1511).l
	beq.s loc_20aa56
	bpl.s loc_20aa40
	bsr.w sub_20abd8
loc_20aa40:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20acc8
loc_20aa56:
	tst.b ($ff150f).l
	beq.s loc_20aa8c
	bpl.s loc_20aa64
	bsr.w sub_20abc4
loc_20aa64:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20aa88
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20aa88:
	bsr.w sub_20acbe
loc_20aa8c:
	tst.w ($ff1588).l
	bne.w loc_20ab38
	tst.b ($ff1510).l
	beq.w loc_20ab38
	tst.w ($f63a).w
	bne.w loc_20ab38
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20ab96
	tst.b ($f7cc).w
	bne.s loc_20aae2
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20aae2
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20aae2
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20aae2
	move.b #$9,(a1)
loc_20aae2:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20add4
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20adde
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20ab34
	move.w #$63,d1
loc_20ab34:
	bsr.w sub_20adde
loc_20ab38:
	tst.b ($ff150e).l
	beq.s loc_20ab4a
	clr.b ($ff150e).l
	bsr.w sub_20adb4
loc_20ab4a:
	tst.b ($f7d6).w
	beq.s loc_20ab94
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ab6a
	move.l #$6d400001,d0
loc_20ab6a:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20ac4c
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ab8a
	move.l #$6e800001,d0
loc_20ab8a:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20ac4c
loc_20ab94:
	rts
loc_20ab96:
	btst.b #$7,($ff152e).l
	bne.s loc_20abc2
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206fba
	move.b #$1,($ff150c).l
loc_20abc2:
	rts

sub_20abc4:
	move.l #$73600002,($c00004).l
	lea dat_20ac2a(pc),a2
	move.w #$2,d2
	bra.s loc_20abf4

sub_20abd8:
	lea ($c00000).l,a6
	bsr.w sub_20adb4
	move.l #$70600002,($c00004).l
	lea dat_20ac22(pc),a2
	move.w #$6,d2
loc_20abf4:
	lea (dat_2330bc).l,a1
loc_20abfa:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ac16
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ac0a:
	move.l (a3)+,(a6)
	dbf d1,loc_20ac0a
loc_20ac10:
	dbf d2,loc_20abfa
	rts
loc_20ac16:
	move.l #$0,(a6)
	dbf d1,loc_20ac16
	bra.s loc_20ac10
dat_20ac22:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ac2a:
	dc.b $ff,$ff,$00,$00

sub_20ac2e:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20adaa
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20adaa

sub_20ac4c:
	lea (dat_20ad86).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ac5c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ac60:
	sub.l d3,d1
	bcs.s loc_20ac68
	addq.w #$1,d2
	bra.s loc_20ac60
loc_20ac68:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ac72
	move.w #$1,d4
loc_20ac72:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20ac7e
	tst.w d6
	bne.s loc_20acb0
loc_20ac7e:
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
loc_20aca4:
	addi.l #$400000,d0
	dbf d6,loc_20ac5c
	rts
loc_20acb0:
	moveq #$f,d5
loc_20acb2:
	move.l #$0,(a6)
	dbf d5,loc_20acb2
	bra.s loc_20aca4

sub_20acbe:
	lea (dat_20ad8e).l,a2
	moveq #$2,d6
	bra.s loc_20acd0

sub_20acc8:
	lea (dat_20ad82).l,a2
	moveq #$5,d6
loc_20acd0:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20acd8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20acdc:
	sub.l d3,d1
	bcs.s loc_20ace4
	addq.w #$1,d2
	bra.s loc_20acdc
loc_20ace4:
	add.l d3,d1
	tst.w d2
	beq.s loc_20acee
	move.w #$1,d4
loc_20acee:
	tst.w d4
	beq.s loc_20ad1c
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
loc_20ad1c:
	addi.l #$400000,d0
	dbf d6,loc_20acd8
	rts
	.incbin 44328, 32
loc_20ad48:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ad4c:
	sub.l d3,d1
	bcs.s loc_20ad54
	addq.w #$1,d2
	bra.s loc_20ad4c
loc_20ad54:
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
	dbf d6,loc_20ad48
	rts
dat_20ad82:
	dc.b $00,$01,$86,$a0
dat_20ad86:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20ad8e:
	dc.b $00,$00,$00,$64
dat_20ad92:
	dc.b $00,$00,$00,$0a
dat_20ad96:
	dc.b $00,$00,$00,$01
dat_20ad9a:
	.incbin 44442, 16

sub_20adaa:
	moveq #$3,d6
	lea (dat_20ad9a).l,a2
	bra.s sub_20ade6

sub_20adb4:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20adca
	moveq #$9,d1
loc_20adca:
	lea (dat_20ad96).l,a2
	moveq #$0,d6
	bra.s sub_20ade6

sub_20add4:
	lea (dat_20ad96).l,a2
	moveq #$0,d6
	bra.s sub_20ade6

sub_20adde:
	lea (dat_20ad92).l,a2
	moveq #$1,d6

sub_20ade6:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20adee:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20adf2:
	sub.l d3,d1
	bcs.s loc_20adfa
	addq.w #$1,d2
	bra.s loc_20adf2
loc_20adfa:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ae04
	move.w #$1,d4
loc_20ae04:
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
	dbf d6,loc_20adee
	rts
	.incbin 44602, 2726
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b8fe(pc,d0.w),d0
	jsr dat_20b8fe(pc,d0.w)
	jsr (sub_20395c).l
	jmp (loc_2079b8).l
dat_20b8fe:
	dc.b $00,$08,$00,$4c,$00,$d4,$00,$e0
	tst.b $28(a0)
	beq.s loc_20b912
	bset.b #$1,$1(a0)
loc_20b912:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$34d,$2(a0)
	tst.b ($ff1956).l
	bne.s loc_20b930
	ori.b #$80,$2(a0)
loc_20b930:
	move.l #$20ba18,$4(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	tst.b $2a(a0)
	beq.s loc_20b956
	subq.b #$1,$2a(a0)
	bra.s loc_20b9a8
loc_20b956:
	move.b $17(a6),d0
	ext.w d0
	move.b $17(a0),d1
	ext.w d1
	add.w d0,d1
	move.w $8(a0),d0
	sub.w $8(a6),d0
	add.w d1,d0
	bmi.s loc_20b9aa
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20b9aa
	move.b $16(a6),d0
	ext.w d0
	move.b $16(a0),d1
	ext.w d1
	add.w d0,d1
	move.w $c(a0),d0
	sub.w $c(a6),d0
	add.w d1,d0
	bmi.s loc_20b9aa
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20b9aa
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	eori.b #$1,($ff1956).l
loc_20b9a8:
	rts
loc_20b9aa:
	btst.b #$7,$2(a0)
	beq.s loc_20b9bc
	tst.b ($ff1956).l
	bne.s loc_20b9c6
	rts
loc_20b9bc:
	tst.b ($ff1956).l
	beq.s loc_20b9c6
	rts
loc_20b9c6:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	rts
	.incbin 47570, 240
	cmpi.b #$4,$24(a0)
	bcs.s loc_20bad6
	tst.b $3e(a0)
	beq.s loc_20bad6
	jmp (sub_203a08).l
loc_20bad6:
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20bae6
	cmpi.b #$6,($d024).w
	bcc.s loc_20bafc
loc_20bae6:
	move.w dat_20bb44(pc,d0.w),d0
	jsr dat_20bb44(pc,d0.w)
	cmpi.b #$4,$24(a0)
	bne.s loc_20bafc
	tst.b $28(a0)
	bne.s loc_20bb02
loc_20bafc:
	jsr (sub_20395c).l
loc_20bb02:
	cmpi.b #$2,$24(a0)
	bne.s loc_20bb42
	move.l $2a(a0),-(a7)
	move.l $36(a0),-(a7)
	move.l $3a(a0),-(a7)
	move.w $34(a0),d0
	jsr (sub_2079bc).l
	bne.s loc_20bb2a
	move.l (a7)+,d0
	move.l (a7)+,d0
	move.l (a7)+,d0
	rts
loc_20bb2a:
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
loc_20bb42:
	rts
dat_20bb44:
	.incbin 47940, 16
	addq.b #$2,$24(a0)
	move.w $8(a0),$34(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20c4e0,$4(a0)
	move.b #$8,$17(a0)
	move.b #$8,$16(a0)
	move.b #$1,$1a(a0)
	move.b $28(a0),d0
	cmpi.b #$2,d0
	bcs.s loc_20bb9e
	subq.b #$1,d0
	move.b d0,$29(a0)
	move.b d0,$1b(a0)
	move.b #$0,$28(a0)
loc_20bb9e:
	moveq #$2,d6
	move.l a0,-(a7)
loc_20bba2:
	jsr (sub_207998).l
	beq.s loc_20bbb2
	movea.l (a7)+,a0
	jmp (sub_203a08).l
loc_20bbb2:
	movea.l a1,a0
	dbf d6,loc_20bba2
	movea.l (a7)+,a0
	moveq #$2,d6
	move.b #$4,d1
loc_20bbc0:
	jsr (sub_207998).l
	move.b #$1e,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a0),$8(a1)
	move.w $8(a0),$34(a1)
	move.w $c(a0),$c(a1)
	cmpi.b #$2,d6
	bne.s loc_20bc04
	move.w #$520,$2(a1)
	move.l #$2098ee,$4(a1)
	move.b #$5,$18(a1)
	move.l a1,$2a(a0)
	bra.s loc_20bc2e
loc_20bc04:
	move.w #$300,$2(a1)
	move.l #$20c4e0,$4(a1)
	move.b #$20,$17(a1)
	move.b #$20,$16(a1)
	cmpi.w #$1,d6
	bne.s loc_20bc2a
	move.l a1,$36(a0)
	bra.s loc_20bc2e
loc_20bc2a:
	move.l a1,$3a(a0)
loc_20bc2e:
	move.b $28(a0),$28(a1)
	move.l a0,$2a(a1)
	move.b d1,$24(a1)
	cmpi.w #$2,d6
	bne.s loc_20bc44
	addq.b #$4,d1
loc_20bc44:
	addq.b #$2,d1
	dbf d6,loc_20bbc0
	tst.b $29(a0)
	bne.s loc_20bc64
	movea.l $2a(a0),a1
	cmpi.b #$6,$24(a1)
	bcs.s loc_20bc66
	cmpi.b #$2,$29(a1)
	beq.s loc_20bc66
loc_20bc64:
	rts
loc_20bc66:
	lea (dat_20c4d4).l,a1
	jmp (sub_205b66).l
	tst.b $28(a0)
	bne.s loc_20bc80
	bsr.w sub_20bc82
	bra.w loc_20c04a
loc_20bc80:
	rts

sub_20bc82:
	lea (dat_20bd26).l,a2
	lea (dat_20bd44).l,a3
	tst.b $28(a0)
	beq.s loc_20bcb4
	lea (dat_20bd30).l,a2
	lea (dat_20bd68).l,a3
	cmpi.b #$1,$28(a0)
	beq.s loc_20bcb4
	lea (dat_20bd3a).l,a2
	lea (dat_20bd8c).l,a3
loc_20bcb4:
	move.w #$520,$2(a0)
	movea.l $2a(a0),a1
	moveq #$0,d0
	move.b $1b(a1),d0
	btst.l #$0,d0
	bne.s loc_20bcd0
	move.w #$4f2,$2(a0)
loc_20bcd0:
	move.w d0,d1
	move.b dat_20bd10(pc,d0.w),d0
	add.w d0,d0
	add.w d0,d0
	move.l dat_20bd1a(pc,d0.w),$4(a0)
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
dat_20bd10:
	dc.b $02,$00,$02,$01,$02,$00,$02,$01
	dc.b $02,$00
dat_20bd1a:
	dc.b $00,$20,$98,$ee,$00,$20,$98,$e8
	dc.b $00,$20,$99,$38
dat_20bd26:
	dc.b $00,$00,$00,$00,$01,$01,$01,$00
	dc.b $00,$00
dat_20bd30:
	dc.b $02,$00,$00,$00,$01,$01,$03,$02
	dc.b $02,$00
dat_20bd3a:
	dc.b $01,$01,$03,$02,$02,$00,$00,$00
	dc.b $01,$00
dat_20bd44:
	.incbin 48452, 36
dat_20bd68:
	.incbin 48488, 36
dat_20bd8c:
	.incbin 48524, 202

sub_20be56:
	lea (dat_20bf9c).l,a2
	lea (dat_20bfa6).l,a3
	lea (dat_20bfce).l,a4
	tst.b $28(a0)
	beq.s loc_20be86
	lea (dat_20bfba).l,a3
	lea (dat_20bfe2).l,a4
	tst.b $29(a0)
	beq.s loc_20be86
	lea (dat_20bff6).l,a4
loc_20be86:
	lea (dat_20c2fa).l,a5
	bra.s loc_20bec4

sub_20be8e:
	lea (dat_20bf9c).l,a2
	lea (dat_20bfb0).l,a3
	lea (dat_20bfd8).l,a4
	tst.b $28(a0)
	beq.s loc_20bebe
	lea (dat_20bfc4).l,a3
	lea (dat_20bfec).l,a4
	tst.b $29(a0)
	beq.s loc_20bebe
	lea (dat_20c000).l,a4
loc_20bebe:
	lea (dat_20c304).l,a5
loc_20bec4:
	movea.l $2a(a0),a1
	moveq #$0,d0
	move.b $1b(a1),d0
	move.b $0(a2,d0.w),$1a(a0)
	andi.b #$fc,$1(a0)
	move.b $0(a3,d0.w),d1
	or.b d1,$1(a0)
	move.b $0(a4,d0.w),d0
	lea (dat_20c00a).l,a4
	add.w d0,d0
	add.w d0,d0
	move.w $0(a4,d0.w),d1
	move.w $8(a1),$8(a0)
	add.w d1,$8(a0)
	move.w $2(a4,d0.w),d1
	move.w $c(a1),$c(a0)
	add.w d1,$c(a0)
	tst.b $28(a0)
	beq.s loc_20bf58
	movea.l $2a(a0),a2
	movea.l $2a(a2),a2
	tst.b $29(a2)
	beq.s loc_20bf40
	cmpi.b #$2,$29(a2)
	bne.s loc_20bf58
	tst.b $29(a0)
	bne.s loc_20bf58
	movea.l a5,a3
	move.l a0,-(a7)
	movea.l a2,a0
	movea.l $2e(a2),a2
	bsr.w sub_20c0c4
	movea.l (a7)+,a0
	rts
loc_20bf40:
	tst.b ($ff1906).l
	bne.s loc_20bf58
	lea ($d000).w,a2
	bsr.s sub_20bf5a
	bne.w loc_20c174
	move.b #$0,$29(a0)
loc_20bf58:
	rts

sub_20bf5a:
	move.w #$18,d2
	move.w #$18,d3
	bra.w loc_20c066
	.incbin 48998, 54
dat_20bf9c:
	dc.b $04,$02,$04,$03,$04,$02,$04,$03
	dc.b $04,$00
dat_20bfa6:
	dc.b $00,$00,$00,$00,$02,$02,$02,$00
	dc.b $00,$00
dat_20bfb0:
	dc.b $03,$02,$03,$01,$01,$00,$01,$01
	dc.b $03,$00
dat_20bfba:
	dc.b $01,$00,$00,$00,$02,$02,$03,$01
	dc.b $01,$00
dat_20bfc4:
	dc.b $02,$02,$03,$01,$01,$00,$00,$00
	dc.b $02,$00
dat_20bfce:
	dc.b $01,$00,$01,$02,$03,$04,$03,$02
	dc.b $01,$00
dat_20bfd8:
	dc.b $09,$08,$09,$0a,$0b,$0c,$0b,$0a
	dc.b $09,$00
dat_20bfe2:
	dc.b $07,$00,$01,$02,$03,$04,$05,$06
	dc.b $07,$00
dat_20bfec:
	dc.b $03,$04,$05,$06,$07,$00,$01,$02
	dc.b $03,$00
dat_20bff6:
	dc.b $0b,$0c,$0d,$0e,$0f,$08,$09,$0a
	dc.b $0b,$00
dat_20c000:
	dc.b $0f,$08,$09,$0a,$0b,$0c,$0d,$0e
	dc.b $0f,$00
dat_20c00a:
	.incbin 49162, 64
loc_20c04a:
	tst.b ($ff1906).l
	bne.s loc_20c05c
	lea ($d000).w,a2
	bsr.s sub_20c05e
	bne.w loc_20c218
loc_20c05c:
	rts

sub_20c05e:
	move.w #$20,d2
	move.w #$20,d3
loc_20c066:
	cmpi.b #$4,$24(a2)
	bne.s loc_20c078
	subq.b #$2,$24(a2)
	move.w #$78,$30(a2)
loc_20c078:
	cmpi.b #$2b,$1c(a2)
	beq.s loc_20c0c0
	cmpi.b #$6,$24(a2)
	bcc.s loc_20c0c0
	move.b $17(a2),d1
	ext.w d1
	add.w d2,d1
	move.w $8(a0),d0
	sub.w $8(a2),d0
	add.w d1,d0
	bmi.s loc_20c0c0
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c0c0
	move.b $16(a2),d1
	ext.w d1
	add.w d3,d1
	move.w $c(a0),d0
	sub.w $c(a2),d0
	add.w d1,d0
	bmi.s loc_20c0c0
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c0c0
	moveq #$1,d0
	rts
loc_20c0c0:
	moveq #$0,d0
	rts

sub_20c0c4:
	moveq #$0,d0
	move.b $1b(a1),d0
	move.w d0,d2
	move.b $0(a3,d0.w),d0
	lea (dat_20c30e).l,a1
	add.w d0,d0
	add.w d0,d0
	move.w $8(a0),$8(a2)
	move.w $0(a1,d0.w),d1
	add.w d1,$8(a2)
	move.w $c(a0),$c(a2)
	move.w $2(a1,d0.w),d1
	add.w d1,$c(a2)
	rts
loc_20c0f8:
	lea (dat_20c12c).l,a3
	moveq #$0,d0
	move.b $25(a4),d0
	subi.b #$a,d0
	beq.s loc_20c110
	lea (dat_20c150).l,a3
loc_20c110:
	move.b $1b(a1),d0
	add.w d0,d0
	add.w d0,d0
	move.w $0(a3,d0.w),$10(a4)
	move.w $2(a3,d0.w),$12(a4)
	move.b #$1a,$32(a4)
	rts
dat_20c12c:
	.incbin 49452, 36
dat_20c150:
	.incbin 49488, 36
loc_20c174:
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
	bsr.w sub_20c0c4
	movem.l (a7)+,a0-a1
	movea.l $2a(a0),a4
	cmpi.b #$a,$24(a0)
	bne.s loc_20c1ce
	adda.l #$4,a4
loc_20c1ce:
	movea.l $36(a4),a4
	move.b $24(a4),$25(a4)
	movem.l a0-a4,-(a7)
	movea.l $2a(a0),a1
	movea.l $2a(a1),a1
	movea.l a4,a0
	cmpi.b #$a,$24(a0)
	bne.s loc_20c1fa
	move.b #$2,$28(a1)
	bsr.w sub_20be56
	bra.s loc_20c204
loc_20c1fa:
	move.b #$1,$28(a1)
	bsr.w sub_20be8e
loc_20c204:
	movem.l (a7)+,a0-a4
	move.b #$e,$24(a4)
	move.b #$1,$29(a4)
	bra.w loc_20c0f8
loc_20c218:
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
	lea (dat_20c2e6).l,a3
	bsr.w sub_20c0c4
	btst.l #$0,d2
	bne.s loc_20c2ac
	move.w #$e0,d0
	jsr (sub_20084a).l
	mulu.w #$1000,d0
	mulu.w #$1000,d1
	lsr.l #$8,d0
	lsr.l #$8,d1
	move.w d0,$12(a2)
	move.w d1,$10(a2)
	btst.b #$1,$1(a0)
	beq.s loc_20c286
	neg.w $12(a2)
loc_20c286:
	bclr.b #$0,$22(a2)
	btst.b #$0,$1(a0)
	beq.s loc_20c29e
	bset.b #$0,$22(a2)
	neg.w $10(a2)
loc_20c29e:
	bset.b #$1,$22(a2)
	bclr.b #$3,$22(a2)
	rts
loc_20c2ac:
	btst.l #$1,d2
	bne.s loc_20c2cc
	move.w #$0,$12(a2)
	move.w #$1000,$10(a2)
	btst.b #$0,$1(a0)
	beq.s loc_20c29e
	neg.w $10(a2)
	bra.s loc_20c29e
loc_20c2cc:
	move.w #$0,$10(a2)
	move.w #$f000,$12(a2)
	btst.b #$1,$1(a0)
	beq.s loc_20c29e
	neg.w $12(a2)
	bra.s loc_20c29e
dat_20c2e6:
	.incbin 49894, 20
dat_20c2fa:
	dc.b $01,$00,$01,$02,$03,$04,$05,$06
	dc.b $07,$00
dat_20c304:
	dc.b $03,$04,$05,$06,$07,$00,$01,$02
	dc.b $03,$00
dat_20c30e:
	.incbin 49934, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c348(pc,d0.w),d0
	jsr dat_20c348(pc,d0.w)
	jsr (sub_20395c).l
	jmp (loc_2079b8).l
dat_20c348:
	dc.b $00,$08,$00,$4c,$00,$50,$00,$7e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20c4e0,$4(a0)
	move.b #$20,$19(a0)
	move.b #$c,$16(a0)
	move.b #$2,$1a(a0)
	tst.b $28(a0)
	beq.s loc_20c394
	move.b #$0,$1a(a0)
	move.w #$f800,$12(a0)
	move.b #$6,$24(a0)
	bra.s loc_20c3c6
loc_20c394:
	bra.w loc_20c3e8
	tst.b $2a(a0)
	beq.s loc_20c3b0
	jsr (sub_203906).l
	subq.b #$1,$2a(a0)
	bne.s loc_20c3ae
	neg.w $10(a0)
loc_20c3ae:
	rts
loc_20c3b0:
	jsr (sub_203906).l
	move.w $8(a0),d0
	cmp.w $2c(a0),d0
	bne.s loc_20c3ae
	subq.b #$2,$24(a0)
	rts
loc_20c3c6:
	addi.w #$40,$12(a0)
	jsr (sub_203906).l
	move.w ($f704).w,d0
	addi.w #$e8,d0
	cmp.w $c(a0),d0
	bcc.s loc_20c3e6
	jmp (sub_203a08).l
loc_20c3e6:
	rts
loc_20c3e8:
	tst.b ($ff1906).l
	bne.s loc_20c3fa
	lea ($d000).w,a2
	bsr.s sub_20c3fc
	bne.w loc_20c414
loc_20c3fa:
	rts

sub_20c3fc:
	btst.b #$1,$22(a2)
	beq.s loc_20c408
	moveq #$0,d0
	rts
loc_20c408:
	move.w #$20,d2
	move.w #$10,d3
	bra.w loc_20c066
loc_20c414:
	clr.b ($d02c).w
	jsr (sub_207982).l
	bne.s loc_20c458
	move.b #$8,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$28(a1)
	movea.l a1,a3
	jsr (sub_207982).l
	bne.s loc_20c458
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$6,$c(a1)
loc_20c458:
	move.w #$ce,d0
	jsr (sub_202346).l
	addq.b #$2,$24(a0)
	move.w $8(a0),$2c(a0)
	move.b #$6,$2a(a0)
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcc.s loc_20c4a8
	move.w #$f000,$10(a2)
	bset.b #$0,$22(a1)
	move.w #$200,$10(a3)
	addi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$800,$10(a0)
	bset.b #$0,$22(a2)
	rts
loc_20c4a8:
	move.w #$1000,$10(a2)
	bclr.b #$0,$22(a1)
	move.w #$fe00,$10(a3)
	subi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$f800,$10(a0)
	bclr.b #$0,$22(a2)
	rts
dat_20c4d4:
	.incbin 50388, 94
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c546(pc,d0.w),d0
	jsr dat_20c546(pc,d0.w)
	jmp (sub_20395c).l
dat_20c546:
	dc.b $00,$06,$00,$1e,$00,$2a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$8338,$2(a0)
	move.l #$20c57e,$4(a0)
	lea (dat_20c576).l,a1
	jmp (sub_205b66).l
	jmp (sub_203a08).l
dat_20c576:
	.incbin 50550, 30
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c5a2(pc,d0.w),d0
	jmp dat_20c5a2(pc,d0.w)
dat_20c5a2:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205b26).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20c678,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20c5fe
	tst.b ($ff1508).l
	beq.s loc_20c606
	move.l #$20c67c,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20c606
loc_20c5fe:
	tst.b ($ff1508).l
	bne.s loc_20c616
loc_20c606:
	bset.b #$7,($ff156b).l
	jsr (sub_207982).l
	beq.s loc_20c61c
loc_20c616:
	jmp (sub_203a08).l
loc_20c61c:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20c65e
	move.w #$6e,d0
	jmp (sub_205b26).l
loc_20c65e:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c672
	bge.s loc_20c66e
	neg.w d0
loc_20c66e:
	add.w d0,$8(a0)
loc_20c672:
	jmp (sub_20395c).l
	.incbin 50808, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c6be(pc,d0.w),d0
	jmp dat_20c6be(pc,d0.w)
dat_20c6be:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20cdbc,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20cd7c).l,a2
loc_20c70c:
	jsr (sub_207982).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20cdbc,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20c75e
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20c75e:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20c70c
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c786
	bge.s loc_20c77c
	neg.w d0
loc_20c77c:
	add.w d0,$a(a0)
	jmp (sub_20395c).l
loc_20c786:
	addq.b #$4,$24(a0)
	jmp (sub_20395c).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c7aa
	bge.s loc_20c7a0
	neg.w d0
loc_20c7a0:
	add.w d0,$8(a0)
	jmp (sub_20395c).l
loc_20c7aa:
	addq.b #$4,$24(a0)
	jmp (sub_20395c).l
	tst.b $1e(a0)
	beq.s loc_20c7c4
	subq.b #$1,$1e(a0)
	jmp (sub_20395c).l
loc_20c7c4:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c7de
	bge.s loc_20c7d4
	neg.w d0
loc_20c7d4:
	add.w d0,$a(a0)
	jmp (sub_20395c).l
loc_20c7de:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202510).l
	tst.b $1e(a0)
	beq.s loc_20c800
	subq.b #$1,$1e(a0)
	jmp (sub_20395c).l
loc_20c800:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c81a
	bge.s loc_20c810
	neg.w d0
loc_20c810:
	add.w d0,$8(a0)
	jmp (sub_20395c).l
loc_20c81a:
	jmp (sub_203a08).l
	tst.l ($f680).w
	bne.s loc_20c834
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203a08).l
loc_20c834:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c844(pc,d0.w),d0
	jmp dat_20c844(pc,d0.w)
dat_20c844:
	.incbin 51268, 1336
dat_20cd7c:
	.incbin 52604, 352

sub_20cedc:
	rts

sub_20cede:
	move.w #$4f2,$2(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cf04(pc,d0.w),d0
	jsr dat_20cf04(pc,d0.w)
	jsr (sub_20395c).l
	move.w $36(a0),d0
	jmp (sub_2079bc).l
dat_20cf04:
	dc.b $00,$96,$01,$52

sub_20cf08:
	lea ($d000).w,a1
	move.b #$8,$16(a0)
	jsr (sub_208f9c).l
	bne.s loc_20cf28
	move.b #$c,$16(a0)
	jsr (sub_208f9c).l
	beq.s loc_20cf52
loc_20cf28:
	move.b #$8,$16(a0)
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcs.s loc_20cf52
	move.w $c(a0),d0
	move.b $16(a0),d1
	ext.w d1
	sub.w d1,d0
	move.b $16(a1),d1
	ext.w d1
	sub.w d1,d0
	addq.w #$2,d0
	move.w d0,$c(a1)
loc_20cf52:
	move.b #$8,$16(a0)
	rts
dat_20cf5a:
	.incbin 53082, 64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20d0fc,$4(a0)
	move.w #$366,$2(a0)
	move.b #$20,$19(a0)
	move.b #$8,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20d032
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d1
	moveq #$0,d2
	move.b $28(a0),d1
	andi.w #$f,d1
	move.b d1,$2f(a0)
	move.b d1,d2
	subq.b #$1,d2
loc_20cfea:
	jsr (sub_207982).l
	bne.s loc_20d02c
	move.b #$20,$0(a1)
	move.w $36(a0),$36(a1)
	move.w $32(a0),$32(a1)
	move.b $28(a0),$28(a1)
	move.b $2f(a0),$2f(a1)
	move.b d1,$3c(a1)
	move.b #$2,$1a(a1)
	cmp.b $2f(a0),d1
	bne.s loc_20d02c
	move.b #$1,$1a(a1)
	move.b #$a9,$20(a1)
loc_20d02c:
	subq.b #$1,d1
	dbf d2,loc_20cfea
loc_20d032:
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$f0,d0
	lsr.b #$1,d0
	lea dat_20cf5a(pc),a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$3a(a0)
	move.w (a1)+,$3e(a0)
	move.w (a1)+,$34(a0)
	move.w (a1)+,$38(a0)
	move.l $8(a0),d0
	move.l $c(a0),d1
	movem.l d0-d1,-(a7)
	bsr.w sub_20d092
	movem.l (a7)+,d0-d1
	move.b $2f(a0),d4
	cmp.b $3c(a0),d4
	bne.s loc_20d090
	move.l $8(a0),d2
	move.l $c(a0),d3
	sub.l d0,d2
	sub.l d1,d3
	asr.l #$8,d2
	asr.l #$8,d3
	move.w d2,$10(a0)
	move.w d3,$12(a0)
	bsr.w sub_20cf08
loc_20d090:
	rts

sub_20d092:
	tst.b $3d(a0)
	bne.s loc_20d0b2
	move.w $30(a0),d0
	add.w $3e(a0),d0
	move.w d0,$30(a0)
	add.w d0,$3a(a0)
	cmp.w $34(a0),d0
	seq $3d(a0)
	bra.s loc_20d0cc
loc_20d0b2:
	move.w $30(a0),d0
	sub.w $3e(a0),d0
	move.w d0,$30(a0)
	add.w d0,$3a(a0)
	cmp.w $38(a0),d0
	bne.s loc_20d0cc
	clr.b $3d(a0)
loc_20d0cc:
	move.b $3a(a0),d0
	jsr (sub_20084a).l
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
	.incbin 53500, 30
	jsr (sub_20e774).l
	tst.b $24(a0)
	bne.w loc_20d19c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$23e9,$2(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$3a(a0)
	move.w $c(a0),$2e(a0)
	move.w #$8000,$30(a0)
	lea dat_20d2ac(pc),a1
	lea dat_20d224(pc),a2
	move.w #$fe00,d0
	move.l #$ffffc000,d1
	tst.b $28(a0)
	beq.s loc_20d18c
	lea dat_20d3a0(pc),a1
	lea dat_20d268(pc),a2
	move.w #$ff00,d0
	move.l #$ffffc000,d1
loc_20d18c:
	move.l a1,$4(a0)
	move.l a2,$36(a0)
	move.w d0,$34(a0)
	move.l d1,$3c(a0)
loc_20d19c:
	move.l $8(a0),d6
	add.l $3c(a0),d6
	move.l d6,d0
	swap d0
	sub.w $3a(a0),d0
	bpl.s loc_20d1b0
	neg.w d0
loc_20d1b0:
	cmpi.w #$40,d0
	ble.s loc_20d1d4
	neg.l $3c(a0)
	add.l $3c(a0),d6
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	clr.w $32(a0)
	move.w #$ff,$1c(a0)
loc_20d1d4:
	move.l d6,$8(a0)
	move.w $32(a0),d0
	add.w $34(a0),d0
	move.w d0,$32(a0)
	lsr.w #$8,d0
	jsr (sub_20084a).l
	swap d0
	asr.l #$2,d0
	add.l $2e(a0),d0
	move.l d0,$c(a0)
	movea.l $36(a0),a1
	jsr (sub_205b66).l
	lea dat_20d48a(pc),a1
	moveq #$0,d0
	move.b $1a(a0),d0
	lsr.b #$1,d0
	move.b $0(a1,d0.w),$20(a0)
	jsr (sub_20395c).l
	move.w $3a(a0),d0
	jmp (sub_2079bc).l
dat_20d224:
	.incbin 53796, 68
dat_20d268:
	.incbin 53864, 68
dat_20d2ac:
	.incbin 53932, 244
dat_20d3a0:
	.incbin 54176, 234
dat_20d48a:
	dc.b $2f,$30,$30,$00
	move.b $29(a0),d0
	bpl.s loc_20d4ae
	addq.b #$1,d0
	beq.s loc_20d49c
	bra.w loc_20d6dc
loc_20d49c:
	movea.w $3e(a0),a1
	cmpi.b #$22,$0(a1)
	beq.s loc_20d4b4
loc_20d4a8:
	jmp (sub_203a08).l
loc_20d4ae:
	jsr (sub_20e774).l
loc_20d4b4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d4d8(pc,d0.w),d0
	jsr dat_20d4d8(pc,d0.w)
	lea dat_20d74c(pc),a1
	jsr (sub_205b66).l
	jsr (sub_20395c).l
	jmp (loc_2079b8).l
dat_20d4d8:
	.incbin 54488, 516
loc_20d6dc:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	tst.b $21(a0)
	beq.s loc_20d71e
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203a08).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	move.b #$1,$25(a0)
	move.w #$9e,d0
	jmp (sub_202346).l
loc_20d71e:
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bpl.s loc_20d72e
	neg.w d0
loc_20d72e:
	cmpi.w #$e0,d0
	bgt.w loc_20d4a8
	lea dat_20d74c(pc),a1
	jsr (sub_205b66).l
	jsr (sub_20395c).l
	jmp (loc_2079b8).l
dat_20d74c:
	.incbin 55116, 3180
	tst.b $24(a0)
	bne.s loc_20e3fc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4376,$2(a0)
	move.l #$20e41e,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20e412(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20e3fc:
	lea ($d000).w,a1
	jsr (sub_208f9c).l
	jsr (sub_20395c).l
	jmp (loc_2079b8).l
dat_20e412:
	.incbin 58386, 106
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e49a(pc,d0.w),d0
	jsr dat_20e49a(pc,d0.w)
	jsr (sub_20395c).l
	move.w $2a(a0),d0
	jmp (sub_2079bc).l
dat_20e49a:
	dc.b $00,$06,$00,$8c,$00,$ba
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$b5,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$386,$2(a0)
	move.l #$20e566,$4(a0)
	move.w $8(a0),$2a(a0)
	lea dat_20e5a4(pc),a1
	moveq #$0,d0
	move.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2e(a0)
	lea dat_20e574(pc),a1
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
	bne.s loc_20e552
	addq.b #$2,$24(a0)
	move.w $2e(a0),$30(a0)
	neg.l $32(a0)
	neg.l $36(a0)
	tst.b $1(a0)
loc_20e552:
	rts
	subq.w #$1,$30(a0)
	bne.s loc_20e564
	subq.b #$2,$24(a0)
	move.w $2c(a0),$30(a0)
loc_20e564:
	rts
	dc.b $00,$02,$02,$f0,$0d,$00,$00,$f0
	dc.b $00,$0d,$10,$00,$f0,$00
dat_20e574:
	.incbin 58740, 48
dat_20e5a4:
	dc.b $00,$3c,$00,$28,$00,$14
	tst.b $29(a0)
	bne.w loc_20e632
	tst.b $24(a0)
	bne.s loc_20e5f4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$38e,$2(a0)
	move.l #$20e732,$4(a0)
	move.b $28(a0),$1a(a0)
	move.w #$96,$2a(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
loc_20e5f4:
	subq.w #$1,$2a(a0)
	bne.s loc_20e626
	move.w #$96,$2a(a0)
	jsr (sub_207982).l
	bne.s loc_20e626
	move.b $0(a0),$0(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20e626:
	jsr (sub_20395c).l
	jmp (loc_2079b8).l
loc_20e632:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e646(pc,d0.w),d0
	jsr dat_20e646(pc,d0.w)
	jmp (sub_20395c).l
dat_20e646:
	dc.b $00,$08,$00,$7c,$00,$98,$00,$c4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$b5,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$386,$2(a0)
	move.l #$20e766,$4(a0)
	move.w #$20,$2e(a0)
	move.l #$8000,d0
	btst.b #$0,$28(a0)
	seq $3f(a0)
	bne.s loc_20e69e
	neg.l d0
loc_20e69e:
	move.l d0,$30(a0)
	lea $8(a0),a1
	move.w $8(a0),d0
	cmpi.b #$2,$28(a0)
	bge.s loc_20e6ba
	lea $c(a0),a1
	move.w $c(a0),d0
loc_20e6ba:
	move.w a1,$2a(a0)
	move.w d0,$2c(a0)
	move.l $30(a0),d0
	movea.w $2a(a0),a1
	add.l d0,(a1)
	subq.w #$1,$2e(a0)
	bne.s loc_20e6dc
	addq.b #$2,$24(a0)
	move.w #$1e,$2e(a0)
loc_20e6dc:
	rts
	subq.w #$1,$2e(a0)
	bne.s loc_20e708
	addq.b #$2,$24(a0)
	move.l #$60000,d0
	move.l #$ffffc000,d1
	btst.b #$0,$28(a0)
	bne.s loc_20e700
	neg.l d0
	neg.l d1
loc_20e700:
	move.l d0,$30(a0)
	move.l d1,$34(a0)
loc_20e708:
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
	beq.s loc_20e730
	jmp (sub_203a08).l
loc_20e730:
	rts
	.incbin 59186, 66

sub_20e774:
	tst.b ($ff156a).l
	beq.s loc_20e7ba
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e78c
	tst.b $28(a0)
	beq.s loc_20e7ba
loc_20e78c:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203a08).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e7b8
	move.w #$9e,d0
	jsr (sub_202346).l
loc_20e7b8:
	addq.l #$4,a7
loc_20e7ba:
	rts

sub_20e7bc:
	tst.b $28(a0)
	bmi.s loc_20e7ec
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e7dc
	tst.b ($ff156d).l
	bne.s loc_20e7ec
	addq.l #$4,a7
	jmp (loc_2079b8).l
loc_20e7dc:
	tst.b ($ff156a).l
	bne.s loc_20e7ec
	addq.l #$4,a7
	jmp (sub_203a08).l
loc_20e7ec:
	rts
	jsr (sub_20e7bc).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20e904
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e80e(pc,d0.w),d0
	jmp dat_20e80e(pc,d0.w)
dat_20e80e:
	dc.b $00,$06,$00,$54,$00,$98
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20ea86,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20e9dc
	bsr.w sub_20e9ea
	tst.b $28(a0)
	bmi.s loc_20e850
	move.w #$101,$2e(a0)
	rts
loc_20e850:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20e8e4
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20e888
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20e9dc
loc_20e888:
	move.b d0,$2e(a0)
	lea dat_20ea08(pc),a1
	jsr (sub_205b66).l
	jsr (sub_20395c).l
	move.w $2a(a0),d0
	jmp (sub_2079bc).l
	.incbin 59558, 62

sub_20e8e4:
	move.b $2e(a0),d0
	jsr (sub_20084a).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20e904:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e912(pc,d0.w),d0
	jmp dat_20e912(pc,d0.w)
dat_20e912:
	dc.b $00,$0a,$00,$4a,$00,$4a,$00,$90
	dc.b $00,$9e
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$c080408,$16(a0)
	move.l #$20ea9a,$4(a0)
	bsr.w sub_20e9ea
	tst.b $28(a0)
	bmi.s loc_20e952
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
loc_20e952:
	move.b #$8,$24(a0)
	bra.w sub_20e9dc
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_206a8c).l
	tst.w d1
	bpl.s loc_20e996
	addq.b #$2,$24(a0)
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
loc_20e996:
	jsr (sub_20395c).l
	jmp (loc_2079b8).l
	move.b #$2,$24(a0)
	neg.l $2c(a0)
	bsr.s sub_20e9dc
	bra.s loc_20e996
	.incbin 59824, 44

sub_20e9dc:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20e9ea:
	lea dat_20eabe(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20ea08:
	.incbin 59912, 182
dat_20eabe:
	.incbin 60094, 2966
	tst.b $24(a0)
	bne.s loc_20f67e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$11,$16(a0)
	move.l #$20f6be,$4(a0)
loc_20f67e:
	move.b ($ff1588).l,$1a(a0)
	tst.b ($ff1956).l
	beq.s loc_20f69e
	lea ($d000).w,a1
	jsr (sub_208f9c).l
	sne $2a(a0)
	bra.s loc_20f6b2
loc_20f69e:
	tst.b $2a(a0)
	beq.s loc_20f6b2
	clr.b $2a(a0)
	lea ($d000).w,a1
	jsr (sub_208e4e).l
loc_20f6b2:
	jsr (sub_20395c).l
	jmp (loc_2079b8).l
	.incbin 63166, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f6e6(pc,d0.w),d0
	jsr dat_20f6e6(pc,d0.w)
	move.w $36(a0),d0
	jmp (sub_2079bc).l
dat_20f6e6:
	dc.b $00,$04,$00,$64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20f8da,$4(a0)
	move.b #$7f,$19(a0)
	move.b #$7f,$16(a0)
	move.w $8(a0),$36(a0)
	move.b $29(a0),d0
	andi.b #$3,d0
	move.b d0,$30(a0)
	move.b #$1,$18(a0)
	move.w #$a4af,$2(a0)
	btst.b #$3,$29(a0)
	beq.s loc_20f74a
	move.b #$3,$18(a0)
	move.w #$24af,$2(a0)
	cmpi.b #$1,($ff152e).l
	beq.s loc_20f74a
	addi.w #$2000,$2(a0)
loc_20f74a:
	move.w ($f704).w,d0
	addi.w #$70,d0
	move.w d0,$c(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20f798(pc,d0.w),d0
	jsr dat_20f798(pc,d0.w)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	btst.b #$2,$29(a0)
	beq.s loc_20f786
	cmp.b $30(a0),d0
	bne.s loc_20f784
	jsr (sub_20395c).l
loc_20f784:
	rts
loc_20f786:
	andi.b #$1,d0
	cmp.b $30(a0),d0
	bne.s loc_20f796
	jsr (sub_20395c).l
loc_20f796:
	rts
dat_20f798:
	.incbin 63384, 18
	lea dat_20f7b8(pc),a2
	move.b #$b,$3d(a0)
	bra.w loc_20f7e4
dat_20f7b8:
	.incbin 63416, 44
loc_20f7e4:
	tst.b $3a(a0)
	bne.s loc_20f82a
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
	beq.s loc_20f82a
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20f82a:
	subq.b #$1,$3a(a0)
	bne.s loc_20f842
	addq.b #$1,$3c(a0)
	move.b $3c(a0),d0
	cmp.b $3d(a0),d0
	bcs.s loc_20f842
	clr.b $3c(a0)
loc_20f842:
	rts
	lea dat_20f852(pc),a2
	move.b #$8,$3d(a0)
	bra.w loc_20f7e4
dat_20f852:
	.incbin 63570, 32
	lea dat_20f880(pc),a2
	move.b #$4,$3d(a0)
	bra.w loc_20f7e4
dat_20f880:
	.incbin 63616, 16
	lea dat_20f89e(pc),a2
	move.b #$4,$3d(a0)
	bra.w loc_20f7e4
dat_20f89e:
	.incbin 63646, 32
	move.b $28(a0),d0
	subq.b #$6,d0
	bcc.s loc_20f8c8
	moveq #$0,d0
loc_20f8c8:
	move.b d0,$1a(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	rts
	.incbin 63706, 154

sub_20f974:
	jmp (loc_2063da).l
dat_20f97a:
	.incbin 63866, 16
dat_20f98a:
	.incbin 63882, 1176
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
	.incbin 218276, 4896
dat_2367c4:
	.incbin 223172, 18864
dat_23b174:
	.incbin 242036, 20108
