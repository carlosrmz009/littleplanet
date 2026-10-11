; R73C__.MMD
; disassembled from the disc; code only, data comes from data/R73C__.MMD at build time
	.file "R73C__.MMD", 262144

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
	bsr.w sub_207604
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
	lea (dat_20f53c).l,a2
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
	bsr.w sub_2029e2
	bset.b #$2,($f754).w
	bsr.w sub_203466
	bsr.w sub_20335c
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
	jsr (sub_20f536).l
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
	jsr (sub_205b16).l
	bsr.w sub_207604
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
	jsr (sub_20761a).l
	jsr (sub_20386c).l
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
	bsr.w sub_2029e2
loc_2019dc:
	jsr (sub_203a16).l
	tst.w ($ff190e).l
	bne.s loc_2019ee
	bsr.w sub_200184
loc_2019ee:
	jsr (sub_20bbe0).l
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
	jmp (sub_205b16).l
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
	jmp (sub_205b16).l
loc_201c28:
	tst.b ($ff151f).l
	bne.s loc_201c1e
	tst.b ($ff1520).l
	bne.s loc_201c1e
	move.w #$90,d0
	jmp (sub_205b16).l
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
	jmp (sub_205b16).l
loc_201c64:
	tst.b ($ff151f).l
	bne.s loc_201c5a
	tst.b ($ff1520).l
	bne.s loc_201c5a
	move.w #$91,d0
	jmp (sub_205b16).l
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
	bsr.w sub_205a38
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
	jsr (sub_20f536).l
	jsr (sub_2022fa).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f52
	bsr.w sub_2025ee
	jmp (loc_2096e8).l
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
	bsr.w sub_202f52
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
	bsr.w sub_205a38
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

sub_202134:
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
	lea (dat_20f54c).l,a1
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
	lea (dat_20f54c).l,a1
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
	dc.b $00,$04,$00,$00,$3e,$97,$00,$00
	dc.b $05,$10,$00,$60
loc_20293a:
	tst.b ($ff1522).l
	beq.s loc_20295a
	jsr (sub_206848).l
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
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$1,d1
	move.l d1,d2
	lsr.l #$1,d2
	add.l d1,d2
	move.w d2,($f710).w
	move.w d1,($f718).w
	lsr.l #$3,d1
	move.l d1,d2
	add.l d2,d2
	add.l d2,d1
	move.w d1,($f708).w
	rts

sub_2029e2:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2029ee
	rts
loc_2029ee:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202bc8
	bsr.w sub_202c68
	bsr.w sub_203500
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$6,d6
	bsr.w sub_202ef2
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202ebe
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e8a
	move.w ($f704).w,d0
	bsr.w sub_202e5a
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
	bsr.w sub_202af4
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a96:
	move.w d0,(a1)+
	dbf d6,loc_202a96
	bsr.w sub_202b3a
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202aa8:
	move.w d0,(a1)+
	dbf d6,loc_202aa8
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b86
dat_202acc:
	.incbin 10956, 40

sub_202af4:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	add.w d2,d2
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
loc_202b1a:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202acc(pc,d6.w),d5
loc_202b24:
	move.w d0,-(a1)
	dbf d5,loc_202b24
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b1a
	adda.w #$5c,a1
	rts

sub_202b3a:
	move.w ($f708).w,d0
	move.w ($f710).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$4,d1
	asl.l d1,d2
	divu.w #$a,d2
	ext.l d2
	moveq #$c,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	swap d3
	add.l d2,d3
	swap d3
	moveq #$9,d6
loc_202b60:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b7c(pc,d6.w),d5
loc_202b6a:
	move.w d0,(a1)+
	dbf d5,loc_202b6a
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b60
	rts
dat_202b7c:
	dc.b $07,$03,$03,$05,$03,$03,$00,$00
	dc.b $00,$00
loc_202b86:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b94(pc,d2.w)
loc_202b92:
	move.w (a2)+,d0
loc_202b94:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b92
	rts
	.incbin 11178, 30

sub_202bc8:
	move.w ($f700).w,d4
	bsr.s sub_202bfc
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bfa
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202bf4
	bset.b #$2,($f754).w
	rts
loc_202bf4:
	bset.b #$3,($f754).w
loc_202bfa:
	rts

sub_202bfc:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202c0e
	bcs.s loc_202c3e
	bra.s loc_202c14
loc_202c0e:
	clr.w ($f73a).w
	rts
loc_202c14:
	cmpi.w #$10,d0
	blt.s loc_202c1e
	move.w #$10,d0
loc_202c1e:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202c2c
	move.w ($f72a).w,d0
loc_202c2c:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c3e:
	cmpi.w #$fff0,d0
	bge.s loc_202c48
	move.w #$fff0,d0
loc_202c48:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202c2c
	move.w ($f728).w,d0
	bra.s loc_202c2c
	.incbin 11352, 16

sub_202c68:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c7c
	subq.w #$5,d0
loc_202c7c:
	btst.b #$1,$22(a6)
	beq.s loc_202c9c
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202ce8
	subi.w #$40,d0
	bcc.s loc_202ce8
	tst.b ($f75c).w
	bne.s loc_202cfa
	bra.s loc_202ca8
loc_202c9c:
	sub.w ($f73e).w,d0
	bne.s loc_202cae
	tst.b ($f75c).w
	bne.s loc_202cfa
loc_202ca8:
	clr.w ($f73c).w
	rts
loc_202cae:
	cmpi.w #$60,($f73e).w
	bne.s loc_202cd6
	move.w $14(a6),d1
	bpl.s loc_202cbe
	neg.w d1
loc_202cbe:
	cmpi.w #$800,d1
	bcc.s loc_202ce8
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d48
	cmpi.w #$fffa,d0
	blt.s loc_202d12
	bra.s loc_202d00
loc_202cd6:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d48
	cmpi.w #$fffe,d0
	blt.s loc_202d12
	bra.s loc_202d00
loc_202ce8:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d48
	cmpi.w #$fff0,d0
	blt.s loc_202d12
	bra.s loc_202d00
loc_202cfa:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202d00:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d52
	bra.w loc_202d1e
loc_202d12:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d1e:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d76
	cmpi.w #$ff00,d1
	bgt.s loc_202d42
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d76
loc_202d42:
	move.w ($f72c).w,d1
	bra.s loc_202d76
loc_202d48:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d52:
	cmp.w ($f72e).w,d1
	blt.s loc_202d76
	subi.w #$800,d1
	bcs.s loc_202d72
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d76
loc_202d72:
	move.w ($f72e).w,d1
loc_202d76:
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
	bne.s loc_202db8
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202db2
	bset.b #$0,($f754).w
	rts
loc_202db2:
	bset.b #$1,($f754).w
loc_202db8:
	rts
	dc.b $24,$38,$f7,$08,$20,$02,$d0,$84
	dc.b $21,$c0,$f7,$08
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202dee
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202de8
	bset.b #$2,($f756).w
	bra.s loc_202dee
loc_202de8:
	bset.b #$3,($f756).w
loc_202dee:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e22
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e1c
	bset.b #$0,($f756).w
	rts
loc_202e1c:
	bset.b #$1,($f756).w
loc_202e22:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e58
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e52
	bset.b #$4,($f756).w
	rts
loc_202e52:
	bset.b #$5,($f756).w
loc_202e58:
	rts

sub_202e5a:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e88
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e82
	bset.b #$0,($f756).w
	rts
loc_202e82:
	bset.b #$1,($f756).w
loc_202e88:
	rts

sub_202e8a:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202ebc
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202eb6
	bset.b d6,($f756).w
	bra.s loc_202ebc
loc_202eb6:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202ebc:
	rts

sub_202ebe:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202ef0
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202eea
	bset.b d6,($f758).w
	bra.s loc_202ef0
loc_202eea:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202ef0:
	rts

sub_202ef2:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202f24
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f1e
	bset.b d6,($f75a).w
	bra.s loc_202f24
loc_202f1e:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202f24:
	rts
	.incbin 12070, 44

sub_202f52:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203010
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030f6
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030f8
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20300e
	bclr.b #$0,(a2)
	beq.s loc_202fc4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203324
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030fa
loc_202fc4:
	bclr.b #$1,(a2)
	beq.s loc_202fde
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203324
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030fa
loc_202fde:
	bclr.b #$2,(a2)
	beq.s loc_202ff4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203324
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203150
loc_202ff4:
	bclr.b #$3,(a2)
	beq.s loc_20300e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203324
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203150
loc_20300e:
	rts

sub_203010:
	lea (dat_2033dc).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20302c
	bclr.b #$1,(a2)
	beq.s loc_203076
	move.w #$e0,d4
loc_20302c:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2030a6(pc,d0.w),a3
	beq.s loc_20305e
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203324
	movem.l (a7)+,d4-d5
	bsr.w sub_2030fa
	movea.l (a7)+,a0
	bra.s loc_203076
loc_20305e:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203326
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203126
	movea.l (a7)+,a0
loc_203076:
	tst.b (a2)
	bne.s loc_20307c
	rts
loc_20307c:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203090
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203090:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2030b6
dat_2030a6:
	.incbin 12454, 16
loc_2030b6:
	moveq #$f,d6
	move.l #$800000,d7
loc_2030be:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2030ea
	btst.b d0,(a2)
	beq.s loc_2030ea
	add.w d0,d0
	movea.l dat_2030a6(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031fc
	movem.l (a7)+,d4-d5
	bsr.w sub_203324
	bsr.w sub_20317e
	movem.l (a7)+,d4-d5/a0
loc_2030ea:
	addi.w #$10,d4
	dbf d6,loc_2030be
	clr.b (a2)
	rts

sub_2030f6:
	rts

sub_2030f8:
	rts

sub_2030fa:
	moveq #$15,d6

sub_2030fc:
	move.l #$800000,d7
	move.l d0,d1
loc_203104:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031fc
	move.l d1,d0
	bsr.w sub_20317e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203104
	rts

sub_203126:
	move.l #$800000,d7
	move.l d0,d1
loc_20312e:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031fe
	move.l d1,d0
	bsr.w sub_20317e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20312e
	rts

sub_203150:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20315a:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031fc
	move.l d1,d0
	bsr.w sub_20317e
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20315a
	rts

sub_20317e:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2031ba
	btst.b #$3,(a0)
	bne.s loc_20319a
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20319a:
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
loc_2031ba:
	btst.b #$3,(a0)
	bne.s loc_2031dc
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
loc_2031dc:
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

sub_2031fc:
	add.w (a3),d5

sub_2031fe:
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
	beq.s loc_20324c
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
loc_20324c:
	rts
	.incbin 12878, 214

sub_203324:
	add.w (a3),d5

sub_203326:
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
	.incbin 13120, 28

sub_20335c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203386
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2033ae

sub_203386:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20338a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203324
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030fc
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20338a
	rts
loc_2033ae:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033b2:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033dc).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20342e
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2033b2
	rts
dat_2033dc:
	.incbin 13276, 66
dat_20341e:
	.incbin 13342, 16

sub_20342e:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20341e(pc,d0.w),a3
	beq.s loc_203450
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203324
	movem.l (a7)+,d4-d5
	bsr.w sub_2030fa
	bra.s loc_203464
loc_203450:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203326
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203126
loc_203464:
	rts

sub_203466:
	moveq #$0,d0
	lea (dat_20f53c).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023e2
	movea.l (a2)+,a0
	bsr.w sub_2034b2
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200574
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2034b0
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2034b0
	bsr.w sub_202510
loc_2034b0:
	rts

sub_2034b2:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2034bc:
	move.l d0,(a3)+
	dbf d1,loc_2034bc
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2034d2
	lea ($a040).w,a3
	moveq #$2,d1

sub_2034d2:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2367c4).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034ec:
	move.w d1,d0
	movea.l a3,a0
loc_2034f0:
	move.b (a1)+,(a0)+
	dbf d0,loc_2034f0
	lea $80(a3),a3
	dbf d2,loc_2034ec
	rts

sub_203500:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20357a(pc,d0.w),d0
	jsr dat_20357a(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203526
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203526:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203554
	bcc.s loc_203556
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20354a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20354a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203554:
	rts
loc_203556:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20356e
	btst.b #$1,($d022).w
	beq.s loc_20356e
	add.w d1,d1
	add.w d1,d1
loc_20356e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20357a:
	.incbin 13690, 166
	rts
	.incbin 13858, 410
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2037ce(pc,d0.w),d0
	jmp dat_2037ce(pc,d0.w)
dat_2037ce:
	.incbin 14286, 22
	lea ($d000).w,a1
	cmpi.w #$930,$8(a1)
	bge.s loc_2037f8
	move.w #$210,($f726).w
	rts
loc_2037f8:
	cmpi.w #$dc0,$8(a1)
	blt.s loc_203808
	move.w #$210,($f726).w
	rts
loc_203808:
	move.w #$120,d0
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_20381a
	neg.w d1
loc_20381a:
	cmpi.w #$4,d1
	bge.s loc_203824
	move.w d0,($f72e).w
loc_203824:
	rts
	.incbin 14374, 70

sub_20386c:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203874:
	move.b (a0),d0
	beq.s loc_20388a
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c8e).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20388a:
	lea $40(a0),a0
	dbf d7,loc_203874
	rts

sub_203894:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2038d2
	bpl.s loc_2038c4
	btst.b #$1,$2c(a0)
	beq.s loc_2038c4
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2038d2
loc_2038c4:
	btst.b #$2,$2c(a0)
	bne.s loc_2038d2

sub_2038cc:
	addi.w #$38,$12(a0)
loc_2038d2:
	tst.w $12(a0)
	bmi.s loc_2038e6
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2038e6
	move.w #$1000,$12(a0)
loc_2038e6:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2038f6:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203932
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203932
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203930
	neg.w d1
loc_203930:
	add.w d1,d0
loc_203932:
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

sub_20394c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2039bc
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039d8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2039d8
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203996
	cmpi.w #$800,d3
	bcs.s loc_2039a8
	subi.w #$800,d3
	bra.s loc_2039a8
loc_203996:
	cmpi.w #$700,($f704).w
	bcs.s loc_2039a8
	cmpi.w #$100,d3
	bcc.s loc_2039a8
	addi.w #$800,d3
loc_2039a8:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039d8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2039d8
loc_2039bc:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2039d8
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2039d8:
	rts
	.incbin 14810, 30

sub_2039f8:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2039fe:
	move.l d1,(a1)+
	dbf d0,loc_2039fe
	rts
dat_203a06:
	.incbin 14854, 16

sub_203a16:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203a22:
	tst.w (a4)
	beq.w loc_203ae2
	moveq #$2,d6
loc_203a2a:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203ada
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a90
	movea.l dat_203a06(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a74
	cmpi.w #$800,d2
	bcs.s loc_203a86
	subi.w #$800,d2
	bra.s loc_203a86
loc_203a74:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a86
	cmpi.w #$100,d2
	bcc.s loc_203a86
	addi.w #$800,d2
loc_203a86:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203ab2
loc_203a90:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203ab2
	.incbin 15002, 24
loc_203ab2:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203ad0
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203ad4
loc_203ad0:
	bsr.w sub_203b04
loc_203ad4:
	bset.b #$7,$1(a0)
loc_203ada:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203a2a
loc_203ae2:
	lea $80(a4),a4
	dbf d7,loc_203a22
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203afc
	move.l #$0,(a2)
	rts
loc_203afc:
	move.b #$0,-$5(a2)
	rts

sub_203b04:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203b4a
	btst.l #$1,d4
	bne.w loc_203b98
loc_203b16:
	cmpi.b #$50,d5
	beq.s loc_203b48
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
	bne.s loc_203b42
	addq.w #$1,d0
loc_203b42:
	move.w d0,(a2)+
	dbf d1,loc_203b16
loc_203b48:
	rts
loc_203b4a:
	btst.l #$1,d4
	bne.w loc_203bde
loc_203b52:
	cmpi.b #$50,d5
	beq.s loc_203b96
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
	bne.s loc_203b90
	addq.w #$1,d0
loc_203b90:
	move.w d0,(a2)+
	dbf d1,loc_203b52
loc_203b96:
	rts
loc_203b98:
	cmpi.b #$50,d5
	beq.s loc_203bdc
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
	bne.s loc_203bd6
	addq.w #$1,d0
loc_203bd6:
	move.w d0,(a2)+
	dbf d1,loc_203b98
loc_203bdc:
	rts
loc_203bde:
	cmpi.b #$50,d5
	beq.s loc_203c30
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
	bne.s loc_203c2a
	addq.w #$1,d0
loc_203c2a:
	move.w d0,(a2)+
	dbf d1,loc_203bde
loc_203c30:
	rts
	.incbin 15410, 92
dat_203c8e:
	.incbin 15502, 246

sub_203d84:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d96
	move.w #$0,(a1)
	rts
loc_203d96:
	tst.w (a1)
	bne.s loc_203da0
	move.b #$1,$1(a1)
loc_203da0:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203dea
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ddc
	neg.w $10(a0)
loc_203ddc:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205b16
loc_203dea:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203e08
	cmpa.w #$d040,a0
	beq.s loc_203e08
	tst.b ($ff1906).l
	beq.s loc_203e08
	jmp (loc_20717a).l
loc_203e08:
	move.b $2a(a0),d0
	beq.s loc_203e32
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203e24
	cmpi.b #$2d,d0
	bcs.s loc_203e2e
	move.b #$2d,d0
	bra.s loc_203e2e
loc_203e24:
	cmpi.b #$1e,d0
	bcs.s loc_203e2e
	move.b #$1e,d0
loc_203e2e:
	move.b d0,$2a(a0)
loc_203e32:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203e40(pc,d0.w),d1
	jmp dat_203e40(pc,d1.w)
dat_203e40:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203e4a:
	tst.b ($d300).w
	bne.s loc_203e88
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e88:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203eb0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203eb0:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203ee4:
	tst.b ($ff1506).l
	bne.s loc_203f4a
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203f4a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f4e
	cmpi.b #$2f,d1
	bne.s loc_203f4c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f4a
	tst.b $2c(a0)
	beq.s loc_203f4a
	jsr (sub_207816).l
	bne.s loc_203f4a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203f42
	moveq #$0,d0
loc_203f42:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f4a:
	rts
loc_203f4c:
	rts

sub_203f4e:
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

sub_203f74:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f80
	neg.w d0
loc_203f80:
	btst.b #$1,$2c(a0)
	beq.s loc_203f90
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203fb8
loc_203f90:
	cmpi.w #$600,d0
	bcs.s loc_203fb8
	tst.w $14(a0)
	bpl.s loc_203faa
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203fc6
	move.w #$e0,d1
	bra.s loc_203fc6
loc_203faa:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203fc6
	move.w #$60,d1
	bra.s loc_203fc6
loc_203fb8:
	cmpi.w #$a0,d1
	beq.s loc_203fc6
	bcc.s loc_203fc4
	addq.w #$2,d1
	bra.s loc_203fc6
loc_203fc4:
	subq.w #$2,d1
loc_203fc6:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203f74
	bsr.w sub_203ee4
	tst.w ($ff1588).l
	beq.s loc_203fec
	btst.b #$4,($f605).w
	beq.s loc_203fec
	move.b #$1,($ff1906).l
	rts
loc_203fec:
	tst.b ($f7cc).w
	bne.s loc_203ff8
	move.w ($f604).w,($f602).w
loc_203ff8:
	btst.b #$0,$2c(a0)
	beq.s loc_20401c
	cmpi.b #$6,($ff1506).l
	bne.s loc_204016
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204034
loc_204016:
	bsr.w sub_2042fe
	bra.s loc_204034
loc_20401c:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20407a(pc,d0.w),d1
	jsr dat_20407a(pc,d1.w)
	jsr (sub_2065ce).l
loc_204034:
	bsr.s sub_204088
	bsr.w sub_204148
	bsr.w sub_204162
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_20405c
	tst.b $1c(a0)
	bne.s loc_20405c
	move.b $1d(a0),$1c(a0)
loc_20405c:
	bsr.w sub_205506
	tst.b $2c(a0)
	bmi.s loc_204074
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204074
	jsr (sub_206d18).l
loc_204074:
	bsr.w sub_2053bc
	rts
dat_20407a:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204088:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2040ac
	move.w $30(a0),d0
	beq.s loc_20409e
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2040ac
loc_20409e:
	btst.b #$6,$2c(a0)
	bne.s loc_2040ac
	jsr (sub_20394c).l
loc_2040ac:
	tst.b ($ff151f).l
	beq.s loc_2040f0
	tst.w $32(a0)
	beq.s loc_2040f0
	subq.w #$1,$32(a0)
	bne.s loc_2040f0
	tst.b ($ff1520).l
	bne.s loc_2040e8
	tst.b ($ff1958).l
	bne.s loc_2040e8
	tst.b ($ff152e).l
	bne.s loc_2040e2
	move.w #$e,d0
	jsr (sub_205b16).l
loc_2040e2:
	jsr (sub_201b3a).l
loc_2040e8:
	move.b #$0,($ff151f).l
loc_2040f0:
	tst.b ($ff1520).l
	beq.s loc_204146
	tst.w $34(a0)
	beq.s loc_204146
	subq.w #$1,$34(a0)
	bne.s loc_204146
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20413e
	tst.b ($ff1958).l
	bne.s loc_20413e
	tst.b ($ff152e).l
	bne.s loc_204138
	move.w #$e,d0
	jsr (sub_205b16).l
loc_204138:
	jsr (sub_201b3a).l
loc_20413e:
	move.b #$0,($ff1520).l
loc_204146:
	rts

sub_204148:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204162:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20416e
loc_20416c:
	rts
loc_20416e:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204180
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20416c
loc_204180:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2041c4
	bset.b #$6,$22(a0)
	bne.s loc_20416c
	bsr.w sub_205e1a
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20416c
	bra.s loc_2041fc
loc_2041c4:
	tst.w $12(a0)
	beq.s loc_2041cc
	bpl.s loc_20416c
loc_2041cc:
	bclr.b #$6,$22(a0)
	beq.s loc_20416c
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20416c
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2041fc
	move.w #$f000,$12(a0)
loc_2041fc:
	jsr (sub_207816).l
	bne.s loc_204210
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204210:
	rts

sub_204212:
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
	bcs.s loc_2042ec
	move.l #$50000,d0
loc_2042ec:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2042fe:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204324
	tst.b ($ff152e).l
	beq.s loc_20431a
	cmpi.b #$2,($ff152e).l
	bne.s loc_204324
loc_20431a:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2043d4
loc_204324:
	tst.b $2a(a0)
	bne.w loc_2043e2
	tst.b ($f784).w
	beq.w loc_2043e2
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204342
	neg.w d0
loc_204342:
	tst.w ($f786).w
	bne.s loc_20434e
	move.w #$1,($f786).w
loc_20434e:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204364
	move.b #$1,($ff1502).l
	bra.w loc_205b12
loc_204364:
	cmpi.w #$d2,d1
	bcs.s loc_2043b8
	cmpi.b #$2,($ff1522).l
	beq.s loc_2043b6
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20438e
	move.w #$82,d0
	jsr (sub_205b16).l
	moveq #$0,d0
loc_20438e:
	add.b ($f784).w,d0
	bpl.s loc_204398
	moveq #$0,d0
	bra.s loc_2043a0
loc_204398:
	cmpi.b #$3,d0
	bcs.s loc_2043a0
	moveq #$2,d0
loc_2043a0:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204212
	move.b #$2,($ff1522).l
loc_2043b6:
	rts
loc_2043b8:
	cmpi.w #$5a,d1
	bcc.s loc_2043d0
	cmp.w d2,d0
	bcc.w loc_203e4a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2043d0:
	cmp.w d2,d0
	bcc.s loc_2043e2
loc_2043d4:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2043e2:
	rts
	bsr.w sub_203d84
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204414
	tst.b ($ff195b).l
	beq.s loc_204402
	cmpi.b #$79,$1a(a0)
	bne.s loc_20443e
	bra.s loc_20440a
loc_204402:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20443e
loc_20440a:
	bsr.w sub_204ca6
	jmp (sub_203894).l
loc_204414:
	bsr.w sub_2044ec
	bsr.w sub_2042fe
	bsr.w sub_204d90
	bsr.w sub_204ebc
	bsr.w sub_204560
	bsr.w sub_204d12
	bsr.w sub_204ca6
	jsr (sub_2038f6).l
	bsr.w sub_200c4a
	bsr.w sub_204f3a
loc_20443e:
	rts
	tst.b ($f7c7).w
	bne.s loc_20445a
	cmpi.b #$15,$1c(a0)
	beq.s loc_20445a
	tst.w $12(a0)
	bmi.s loc_20445a
	move.b #$0,$1c(a0)
loc_20445a:
	bsr.w sub_2044ec
	bsr.w sub_2042fe
	bsr.w sub_204e7a
	bsr.w sub_204bc6
	bsr.w sub_204ca6
	jsr (sub_203894).l
	btst.b #$6,$22(a0)
	beq.s loc_204482
	subi.w #$28,$12(a0)
loc_204482:
	bsr.w sub_204f84
	bsr.w sub_204fa8
	rts
	bsr.w sub_2044ec
	bsr.w sub_2042fe
	bsr.w sub_204d90
	bsr.w sub_204ef8
	bsr.w sub_204a00
	bsr.w sub_204ca6
	tst.b $2a(a0)
	bne.s loc_2044b0
	jsr (sub_2038f6).l
loc_2044b0:
	bsr.w sub_200c4a
	bsr.w sub_204f3a
	rts
	bsr.w sub_2044ec
	bsr.w sub_2042fe
	bsr.w sub_204e7a
	bsr.w sub_204bc6
	bsr.w sub_204ca6
	jsr (sub_203894).l
	btst.b #$6,$22(a0)
	beq.s loc_2044e2
	subi.w #$28,$12(a0)
loc_2044e2:
	bsr.w sub_204f84
	bsr.w sub_204fa8
	rts

sub_2044ec:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204558
	tst.w ($ff1506).l
	bne.s loc_204558
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20455a).l,a2
loc_204520:
	move.b (a2)+,d0
	bmi.s loc_204530
	cmp.b d0,d1
	bne.s loc_204520
	bset.b #$1,$2c(a0)
	rts
loc_204530:
	bclr.b #$1,$2c(a0)
	beq.s loc_204558
	tst.w $12(a0)
	bpl.s loc_204558
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204558
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204558
	neg.w $10(a0)
loc_204558:
	rts
dat_20455a:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204560:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_20488a
	tst.w $3e(a0)
	bne.w loc_20483a
	btst.b #$2,($f602).w
	beq.s loc_204588
	bsr.w sub_20491a
loc_204588:
	btst.b #$3,($f602).w
	beq.s loc_204594
	bsr.w sub_204990
loc_204594:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_20483a
	tst.w $14(a0)
	beq.s loc_2045b4
	tst.b $2a(a0)
	beq.w loc_20483a
	bra.s loc_2045c0
loc_2045b4:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2045c0:
	btst.b #$3,$22(a0)
	beq.s loc_204612
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20466a
	cmpi.b #$1e,$0(a1)
	bne.s loc_2045f2
	move.b #$0,$1c(a0)
	bra.w loc_20483a
loc_2045f2:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20464e
	cmp.w d2,d1
	bge.s loc_20463c
	bra.s loc_20466a
loc_204612:
	jsr (sub_206a7c).l
	cmpi.w #$c,d1
	blt.s loc_20466a
	move.w #$ab,d0
	jsr (sub_202346).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204646
loc_20463c:
	btst.b #$0,$22(a0)
	bne.s loc_204656
	bra.s loc_204660
loc_204646:
	cmpi.b #$3,$37(a0)
	bne.s loc_20466a
loc_20464e:
	btst.b #$0,$22(a0)
	bne.s loc_204660
loc_204656:
	move.b #$32,$1c(a0)
	bra.w loc_20483a
loc_204660:
	move.b #$6,$1c(a0)
	bra.w loc_20483a
loc_20466a:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20467e
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20467e:
	btst.b #$7,($f788).w
	bne.w loc_204782
	btst.b #$6,($f788).w
	bne.w loc_2047a2
	btst.b #$1,($f602).w
	bne.w loc_2047a2
	andi.b #$f,($f788).w
	beq.s loc_2046b6
	btst.b #$0,($f603).w
	beq.s loc_2046ca
	bset.b #$7,($f788).w
	bra.w loc_20485e
loc_2046b6:
	btst.b #$0,($f603).w
	beq.w loc_2046ca
	move.b #$1,($f788).w
	bra.w loc_20485e
loc_2046ca:
	btst.b #$0,($f602).w
	beq.s loc_204746
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204728
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2046fa
	asr.w #$1,d2
	sub.w d2,d1
loc_2046fa:
	btst.b #$0,$22(a0)
	beq.s loc_204706
	neg.w d0
	neg.w d1
loc_204706:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20471c
	cmp.w d0,d1
	ble.s loc_204722
	bra.s loc_204720
loc_20471c:
	cmp.w d1,d0
	ble.s loc_204722
loc_204720:
	move.w d1,d0
loc_204722:
	move.w d0,$14(a0)
	rts
loc_204728:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204742
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202346).l
loc_204742:
	bra.w loc_20485e
loc_204746:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204766
	move.w #$ab,d0
	jsr (sub_202346).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2047a2
loc_204766:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202346).l
	bra.w loc_20483a
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204782:
	btst.b #$0,($f602).w
	beq.s loc_2047a2
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20485e
	addq.w #$2,($f73e).w
	bra.w loc_20485e
loc_2047a2:
	btst.b #$6,($f788).w
	bne.w loc_20481e
	andi.b #$f,($f788).w
	beq.s loc_2047c6
	btst.b #$1,($f603).w
	beq.s loc_2047d8
	bset.b #$6,($f788).w
	bra.w loc_20485e
loc_2047c6:
	btst.b #$1,($f603).w
	beq.s loc_2047d8
	move.b #$1,($f788).w
	bra.w loc_20485e
loc_2047d8:
	btst.b #$1,($f602).w
	beq.s loc_20483a
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20481c
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20481c
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20480e
	neg.w $14(a0)
loc_20480e:
	move.w #$9c,d0
	jsr (sub_202346).l
	bsr.w sub_204d3a
loc_20481c:
	bra.s loc_20485e
loc_20481e:
	btst.b #$1,($f602).w
	beq.s loc_20483a
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20485e
	subq.w #$2,($f73e).w
	bra.s loc_20485e
loc_20483a:
	cmpi.w #$60,($f73e).w
	bne.s loc_204854
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20485e
	move.b #$0,($f788).w
	bra.s loc_20485e
loc_204854:
	bcc.s loc_20485a
	addq.w #$4,($f73e).w
loc_20485a:
	subq.w #$2,($f73e).w
loc_20485e:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20488a
	move.w $14(a0),d0
	beq.s loc_20488a
	bmi.s loc_20487e
	sub.w d5,d0
	bcc.s loc_204878
	move.w #$0,d0
loc_204878:
	move.w d0,$14(a0)
	bra.s loc_20488a
loc_20487e:
	add.w d5,d0
	bcc.s loc_204886
	move.w #$0,d0
loc_204886:
	move.w d0,$14(a0)
loc_20488a:
	move.b $26(a0),d0
	jsr (sub_20084a).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2048a8:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204918
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204918
	bmi.s loc_2048c0
	neg.w d1
loc_2048c0:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_20693c
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204918
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204914
	cmpi.b #$40,d0
	beq.s loc_204902
	cmpi.b #$80,d0
	beq.s loc_2048fc
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048fc:
	sub.w d1,$12(a0)
	rts
loc_204902:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204914:
	add.w d1,$12(a0)
loc_204918:
	rts

sub_20491a:
	tst.b $2a(a0)
	bne.s loc_20498e
	move.w $14(a0),d0
	beq.s loc_204928
	bpl.s loc_204958
loc_204928:
	bset.b #$0,$22(a0)
	bne.s loc_20493c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20493c:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20494c
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20494c
	move.w d1,d0
loc_20494c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204958:
	sub.w d4,d0
	bcc.s loc_204960
	move.w #$ff80,d0
loc_204960:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20498e
	cmpi.w #$400,d0
	blt.s loc_20498e
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202346).l
loc_20498e:
	rts

sub_204990:
	tst.b $2a(a0)
	bne.s loc_2049fe
	move.w $14(a0),d0
	bmi.s loc_2049c8
	bclr.b #$0,$22(a0)
	beq.s loc_2049b0
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2049b0:
	cmp.w d6,d0
	bge.s loc_2049bc
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2049bc
	move.w d6,d0
loc_2049bc:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2049c8:
	add.w d4,d0
	bcc.s loc_2049d0
	move.w #$80,d0
loc_2049d0:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2049fe
	cmpi.w #$fc00,d0
	bgt.s loc_2049fe
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202346).l
loc_2049fe:
	rts

sub_204a00:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204b4a
	tst.w $3e(a0)
	bne.s loc_204a38
	btst.b #$2,($f602).w
	beq.s loc_204a2c
	bsr.w sub_204b80
loc_204a2c:
	btst.b #$3,($f602).w
	beq.s loc_204a38
	bsr.w sub_204ba4
loc_204a38:
	tst.b $2a(a0)
	beq.w loc_204ae2
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a58
	asr.w #$1,d2
	sub.w d2,d1
loc_204a58:
	btst.b #$0,$22(a0)
	beq.s loc_204a64
	neg.w d0
	neg.w d1
loc_204a64:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a7a
	cmp.w d0,d1
	ble.s loc_204a80
	bra.s loc_204a7e
loc_204a7a:
	cmp.w d1,d0
	ble.s loc_204a80
loc_204a7e:
	move.w d1,d0
loc_204a80:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204ab4
	rts
loc_204a8e:
	move.w #$ab,d0
	jsr (sub_202346).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204b14
loc_204ab4:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204a8e
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202346).l
	btst.b #$0,$22(a0)
	bne.s loc_204ada
	bsr.w sub_204ba4
	bra.s loc_204ae2
loc_204ada:
	bsr.w sub_204b80
	bra.s loc_204ae2
	dc.b $4e,$75
loc_204ae2:
	move.w $14(a0),d0
	beq.s loc_204b04
	bmi.s loc_204af8
	sub.w d5,d0
	bcc.s loc_204af2
	move.w #$0,d0
loc_204af2:
	move.w d0,$14(a0)
	bra.s loc_204b04
loc_204af8:
	add.w d5,d0
	bcc.s loc_204b00
	move.w #$0,d0
loc_204b00:
	move.w d0,$14(a0)
loc_204b04:
	tst.w $14(a0)
	bne.s loc_204b4a
	move.w #$ab,d0
	jsr (sub_202346).l
loc_204b14:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204b34
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204b44
loc_204b34:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204b44:
	move.b #$5,$1c(a0)
loc_204b4a:
	move.b $26(a0),d0
	jsr (sub_20084a).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204b6e
	move.w #$1000,d1
loc_204b6e:
	cmpi.w #$f000,d1
	bge.s loc_204b78
	move.w #$f000,d1
loc_204b78:
	move.w d1,$10(a0)
	bra.w loc_2048a8

sub_204b80:
	move.w $14(a0),d0
	beq.s loc_204b88
	bpl.s loc_204b96
loc_204b88:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b96:
	sub.w d4,d0
	bcc.s loc_204b9e
	move.w #$ff80,d0
loc_204b9e:
	move.w d0,$14(a0)
	rts

sub_204ba4:
	move.w $14(a0),d0
	bmi.s loc_204bb8
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204bb8:
	add.w d4,d0
	bcc.s loc_204bc0
	move.w #$80,d0
loc_204bc0:
	move.w d0,$14(a0)
	rts

sub_204bc6:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204c00
	tst.w ($ff1506).l
	bne.s loc_204c00
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204bf8
	cmpi.w #$840,$8(a0)
	bcc.s loc_204bf8
	rts
loc_204bf8:
	btst.b #$1,$2c(a0)
	bne.s loc_204c30
loc_204c00:
	btst.b #$2,($f602).w
	beq.s loc_204c1a
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204c1a
	move.w d1,d0
loc_204c1a:
	btst.b #$3,($f602).w
	beq.s loc_204c30
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204c30
	move.w d6,d0
loc_204c30:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204c46
	bcc.s loc_204c42
	addq.w #$4,($f73e).w
loc_204c42:
	subq.w #$2,($f73e).w
loc_204c46:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204c74
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204c74
	bmi.s loc_204c68
	sub.w d1,d0
	bcc.s loc_204c62
	move.w #$0,d0
loc_204c62:
	move.w d0,$10(a0)
	rts
loc_204c68:
	sub.w d1,d0
	bcs.s loc_204c70
	move.w #$0,d0
loc_204c70:
	move.w d0,$10(a0)
loc_204c74:
	rts
	.incbin 19574, 48

sub_204ca6:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204cfa
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204cd4
	addi.w #$38,d0
loc_204cd4:
	cmp.w d1,d0
	bls.s loc_204cfa
loc_204cd8:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204ce8
	rts
loc_204ce8:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206faa
	move.b #$6,$24(a0)
	rts
loc_204cfa:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204cd8

sub_204d12:
	tst.b ($f7ca).w
	bne.s loc_204d38
	move.w $14(a0),d0
	bpl.s loc_204d20
	neg.w d0
loc_204d20:
	cmpi.w #$80,d0
	bcs.s loc_204d38
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204d38
	btst.b #$1,($f602).w
	bne.s sub_204d3a
loc_204d38:
	rts

sub_204d3a:
	btst.b #$2,$22(a0)
	beq.s loc_204d44
	bra.s loc_204d74
loc_204d44:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d64
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d74
loc_204d64:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d74:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d8e
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d8e
	move.w #$200,$14(a0)
loc_204d8e:
	rts

sub_204d90:
	tst.b $2a(a0)
	beq.s loc_204d98
	rts
loc_204d98:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204daa
	tst.w $14(a0)
	beq.w loc_204e70
loc_204daa:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204e70
	btst.b #$3,$22(a0)
	beq.s loc_204dc6
	jsr (sub_205a9c).l
	beq.s loc_204df6
loc_204dc6:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2069a6
	cmpi.w #$6,d1
	blt.w loc_204e70
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204dec
	move.w #$380,d2
loc_204dec:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204df6:
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
	bne.s loc_204e72
	tst.b ($ff195b).l
	beq.s loc_204e54
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e64
loc_204e54:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e64:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204e70:
	rts
loc_204e72:
	bset.b #$4,$22(a0)
	rts

sub_204e7a:
	tst.b $3c(a0)
	beq.s loc_204eac
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204e90
	move.w #$fe00,d1
loc_204e90:
	cmp.w $12(a0),d1
	ble.s loc_204eaa
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204eaa
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204eaa:
	rts
loc_204eac:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204eba
	move.w #$f040,$12(a0)
loc_204eba:
	rts

sub_204ebc:
	tst.b $2a(a0)
	bne.s loc_204ef6
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204ef6
	move.b $26(a0),d0
	jsr (sub_20084a).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204ef6
	bmi.s loc_204ef2
	tst.w d0
	beq.s loc_204ef0
	add.w d0,$14(a0)
loc_204ef0:
	rts
loc_204ef2:
	add.w d0,$14(a0)
loc_204ef6:
	rts

sub_204ef8:
	tst.b $2a(a0)
	bne.s loc_204f38
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204f38
	move.b $26(a0),d0
	jsr (sub_20084a).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204f2e
	tst.w d0
	bpl.s loc_204f28
	asr.l #$2,d0
loc_204f28:
	add.w d0,$14(a0)
	rts
loc_204f2e:
	tst.w d0
	bmi.s loc_204f34
	asr.l #$2,d0
loc_204f34:
	add.w d0,$14(a0)
loc_204f38:
	rts

sub_204f3a:
	nop
	tst.b $38(a0)
	bne.s loc_204f7c
	tst.w $3e(a0)
	bne.s loc_204f7e
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204f7c
	move.w $14(a0),d0
	bpl.s loc_204f5e
	neg.w d0
loc_204f5e:
	cmpi.w #$280,d0
	bcc.s loc_204f7c
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204f7c:
	rts
loc_204f7e:
	subq.w #$1,$3e(a0)
	rts

sub_204f84:
	btst.b #$1,$2c(a0)
	bne.s loc_204fa6
	move.b $26(a0),d0
	beq.s loc_204fa6
	bpl.s loc_204f9c
	addq.b #$2,d0
	bcc.s loc_204f9a
	moveq #$0,d0
loc_204f9a:
	bra.s loc_204fa2
loc_204f9c:
	subq.b #$2,d0
	bcc.s loc_204fa2
	moveq #$0,d0
loc_204fa2:
	move.b d0,$26(a0)
loc_204fa6:
	rts

sub_204fa8:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200ae2).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20508c
	cmpi.b #$80,d0
	beq.w loc_2050ee
	cmpi.b #$c0,d0
	beq.w loc_20514a
	bsr.w sub_206cbc
	tst.w d1
	bpl.s loc_204ffa
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204ffa:
	bsr.w sub_206b1e
	tst.w d1
	bpl.s loc_20500c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20500c:
	bsr.w sub_2069ce
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20508a
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_20502a
	cmp.b d2,d0
	blt.s loc_20508a
loc_20502a:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051ac
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205068
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20505a
	asr.w $12(a0)
	bra.s loc_20507c
loc_20505a:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205068:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_20507c
	move.w #$fc0,$12(a0)
loc_20507c:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20508a
	neg.w $14(a0)
loc_20508a:
	rts
loc_20508c:
	bsr.w sub_206cbc
	tst.w d1
	bpl.s loc_2050a6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2050a6:
	bsr.w sub_206b76
	tst.w d1
	bpl.s loc_2050c0
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2050be
	move.w #$0,$12(a0)
loc_2050be:
	rts
loc_2050c0:
	tst.w $12(a0)
	bmi.s loc_2050ec
	bsr.w sub_2069ce
	tst.w d1
	bpl.s loc_2050ec
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051ac
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050ec:
	rts
loc_2050ee:
	bsr.w sub_206cbc
	tst.w d1
	bpl.s loc_205100
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205100:
	bsr.w sub_206b1e
	tst.w d1
	bpl.s loc_205112
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205112:
	bsr.w sub_206b76
	tst.w d1
	bpl.s loc_205148
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205132
	move.w #$0,$12(a0)
	rts
loc_205132:
	move.b d3,$26(a0)
	bsr.w sub_20521e
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205148
	neg.w $14(a0)
loc_205148:
	rts
loc_20514a:
	bsr.w sub_206b1e
	tst.w d1
	bpl.s loc_205164
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205164:
	bsr.w sub_206b76
	tst.w d1
	bpl.s loc_20517e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20517c
	move.w #$0,$12(a0)
loc_20517c:
	rts
loc_20517e:
	tst.w $12(a0)
	bmi.s loc_2051aa
	bsr.w sub_2069ce
	tst.w d1
	bpl.s loc_2051aa
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051ac
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2051aa:
	rts

sub_2051ac:
	btst.b #$4,$22(a0)
	beq.s loc_2051b6
	nop
loc_2051b6:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205210
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2051f0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205200
loc_2051f0:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205200:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202346).l
loc_205210:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20521e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2038f6).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205258
	subi.w #$20,$12(a0)
loc_205258:
	jsr (sub_2065ce).l
	bsr.w sub_205274
	bsr.w sub_204ca6
	bsr.w sub_204148
	bsr.w sub_205506
	jmp (sub_20394c).l

sub_205274:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206faa
	bsr.w sub_204fa8
	btst.b #$1,$22(a0)
	bne.s loc_2052ae
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2052ae:
	rts
	bsr.w sub_2052c8
	jsr (sub_203894).l
	bsr.w sub_204148
	bsr.w sub_205506
	jmp (sub_20394c).l

sub_2052c8:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_205336
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_2052fc
	clr.b ($ff1508).l
loc_2052fc:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_205316
	tst.b ($ff0f01).l
	beq.s loc_205316
	move.b #$0,($ff1508).l
	bra.s loc_205330
loc_205316:
	jsr (sub_207816).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_205336
loc_205330:
	move.w #$3c,$3a(a0)
loc_205336:
	rts
	tst.w $3a(a0)
	beq.w loc_2053ba
	subq.w #$1,$3a(a0)
	bne.w loc_2053ba
	move.w #$1,($ff1502).l
	jsr (sub_2022de).l
	move.b #$1,($a01c3e).l
	jsr (sub_2022fa).l
	bsr.w sub_207604
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_205388
	cmpi.b #$1,($ff152e).l
	bne.s loc_205388
	bclr.b #$1,($ff151c).l
loc_205388:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_2053b6
	cmpi.b #$1,($ff152e).l
	bne.s loc_2053b0
	tst.b ($ff158e).l
	beq.s loc_2053b6
	move.b #$1,($ff1522).l
	bra.s loc_2053b6
loc_2053b0:
	clr.b ($ff1522).l
loc_2053b6:
	bra.w sub_205b16
loc_2053ba:
	rts

sub_2053bc:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2053e4
	cmpi.b #$5,($ff1506).l
	beq.s loc_2053e4
	cmpi.b #$2,($ff1506).l
	beq.s loc_2053e4
	tst.b ($ff1506).l
	bne.w loc_2054a6
loc_2053e4:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205422
	tst.b ($ff1506).l
	bne.w loc_2054a8
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2054a8
	bra.s loc_20542a
loc_205422:
	cmp.b ($f7af).w,d1
	beq.w loc_2054a8
loc_20542a:
	cmp.b ($f7ac).w,d1
	beq.s loc_20545a
	cmp.b ($f7ad).w,d1
	beq.s loc_20543e
	bclr.b #$6,$1(a0)
	rts
loc_20543e:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2054c0
	btst.b #$1,$22(a0)
	beq.s loc_20545a
	bclr.b #$6,$1(a0)
	rts
loc_20545a:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20546c
	bclr.b #$6,$1(a0)
	rts
loc_20546c:
	cmpi.b #$e0,d2
	bcs.s loc_20547a
	bset.b #$6,$1(a0)
	rts
loc_20547a:
	btst.b #$6,$1(a0)
	bne.s loc_205496
	move.b $26(a0),d1
	beq.s loc_2054a6
	cmpi.b #$80,d1
	bhi.s loc_2054a6
	bset.b #$6,$1(a0)
	rts
loc_205496:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2054a6
	bclr.b #$6,$1(a0)
loc_2054a6:
	rts
loc_2054a8:
	btst.b #$2,$22(a0)
	bne.s loc_2054ba
	move.w #$9c,d0
	jsr (sub_202346).l
loc_2054ba:
	jmp (sub_204d3a).l
loc_2054c0:
	tst.w $12(a0)
	bmi.s loc_205504
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2054f8
	cmpi.w #$38,d1
	bcs.s loc_2054f0
	cmpi.w #$80,d1
	bcs.s loc_205504
loc_2054e8:
	bclr.b #$6,$1(a0)
	rts
loc_2054f0:
	bset.b #$6,$1(a0)
	rts
loc_2054f8:
	cmpi.w #$38,d1
	bcs.s loc_2054e8
	cmpi.w #$80,d1
	bcc.s loc_2054f0
loc_205504:
	rts

sub_205506:
	lea (dat_2057f6).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205528
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205528:
	bsr.w sub_205798
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2055a0
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20556e
	move.b d0,$1e(a0)

sub_205552:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205566
	bpl.s loc_205566
	cmpi.b #$fd,d0
	bge.s loc_205570
loc_205566:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20556e:
	rts
loc_205570:
	addq.b #$1,d0
	bne.s loc_205580
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205566
loc_205580:
	addq.b #$1,d0
	bne.s loc_205594
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205566
loc_205594:
	addq.b #$1,d0
	bne.s loc_20559e
	move.b $2(a1,d1.w),$1c(a0)
loc_20559e:
	rts
loc_2055a0:
	subq.b #$1,$1e(a0)
	bpl.s loc_20556e
	addq.b #$1,d0
	bne.w loc_20565a
	tst.b ($ff195b).l
	bne.w loc_205722
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2055c8
	not.b d0
loc_2055c8:
	btst.b #$1,$2c(a0)
	bne.s loc_2055d6
	addi.b #$10,d0
	bra.s loc_2055d8
loc_2055d6:
	addq.b #$8,d0
loc_2055d8:
	bpl.s loc_2055dc
	moveq #$3,d1
loc_2055dc:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2056ce
	move.w $14(a0),d2
	bpl.s loc_2055fa
	neg.w d2
loc_2055fa:
	btst.b #$1,$2c(a0)
	beq.s loc_205612
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2059f8).l,a1
	bra.s loc_20563c
loc_205612:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2059d2).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20563c
	lea (dat_205876).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20563c
	lea (dat_20586e).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20563c:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20564a
	moveq #$0,d2
loc_20564a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205552
	add.b d3,$1a(a0)
	rts
loc_20565a:
	addq.b #$1,d0
	bne.s loc_2056ca
	move.w $14(a0),d2
	bpl.s loc_205666
	neg.w d2
loc_205666:
	lea (dat_205954).l,a1
	tst.b ($ff195b).l
	bne.s loc_2056a4
	lea (dat_205886).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205698
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2056a4
	lea (dat_205a00).l,a1
	bra.s loc_2056a4
loc_205698:
	cmpi.w #$600,d2
	bcc.s loc_2056a4
	lea (dat_20587e).l,a1
loc_2056a4:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2056ae
	moveq #$0,d2
loc_2056ae:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205552
loc_2056ca:
	addq.b #$1,d0
	bne.s loc_20570e
loc_2056ce:
	move.w $14(a0),d2
	bmi.s loc_2056d6
	neg.w d2
loc_2056d6:
	addi.w #$800,d2
	bpl.s loc_2056de
	moveq #$0,d2
loc_2056de:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205966).l,a1
	tst.b ($ff195b).l
	bne.s loc_2056f8
	lea (dat_20588e).l,a1
loc_2056f8:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205552
loc_20570e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205722:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205734
	not.b d0
loc_205734:
	addi.b #$10,d0
	bpl.s loc_20573c
	moveq #$0,d1
loc_20573c:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20576a
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20565a
loc_20576a:
	move.w $14(a0),d2
	bpl.s loc_205772
	neg.w d2
loc_205772:
	lea (dat_20594e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205784
	lea (dat_205948).l,a1
loc_205784:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20578e
	moveq #$0,d2
loc_20578e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205552

sub_205798:
	tst.b ($ff195b).l
	beq.s loc_2057a4
	move.b dat_2057a6(pc,d0.w),d0
loc_2057a4:
	rts
dat_2057a6:
	.incbin 22438, 80
dat_2057f6:
	.incbin 22518, 120
dat_20586e:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205876:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20587e:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205886:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20588e:
	.incbin 22670, 186
dat_205948:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20594e:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205954:
	.incbin 22868, 18
dat_205966:
	.incbin 22886, 108
dat_2059d2:
	.incbin 22994, 38
dat_2059f8:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205a00:
	.incbin 23040, 56

sub_205a38:
	tst.b (a0)
	beq.w loc_205a9a
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205a9a
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205a9a
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205a6c:
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
loc_205a86:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a86
	dbf d1,loc_205a6c
loc_205a9a:
	rts

sub_205a9c:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205b10
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
	bne.s loc_205afe
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205afe:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205b10:
	rts
loc_205b12:
	move.w #$e,d0

sub_205b16:
	cmpi.w #$67,d0
	bne.s loc_205b24
	move.b #$1,($ff1958).l
loc_205b24:
	move.w d0,($a12010).l
loc_205b2a:
	move.w ($a12020).l,d0
	beq.s loc_205b2a
	cmp.w ($a12020).l,d0
	bne.s loc_205b2a
	move.w #$0,($a12010).l
loc_205b42:
	move.w ($a12020).l,d0
	bne.s loc_205b42
	move.w ($a12020).l,d0
	bne.s loc_205b42
	rts
	dc.b $00,$00

sub_205b56:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205b72
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205b72:
	subq.b #$1,$1e(a0)
	bpl.s loc_205bb2
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205bb4
loc_205b8e:
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
loc_205bb2:
	rts
loc_205bb4:
	addq.b #$1,d0
	bne.s loc_205bc4
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b8e
loc_205bc4:
	addq.b #$1,d0
	bne.s loc_205bd8
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b8e
loc_205bd8:
	addq.b #$1,d0
	bne.s loc_205be2
	move.b $2(a1,d1.w),$1c(a0)
loc_205be2:
	addq.b #$1,d0
	bne.s loc_205bea
	addq.b #$2,$24(a0)
loc_205bea:
	addq.b #$1,d0
	bne.s loc_205bf8
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205bf8:
	addq.b #$1,d0
	bne.s loc_205c00
	addq.b #$2,$25(a0)
loc_205c00:
	rts
	.incbin 23554, 536

sub_205e1a:
	rts
	.incbin 24092, 116

sub_205e90:
	tst.b $25(a0)
	bne.s loc_205ec0
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207816).l
	bne.s loc_205ec0
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205ec0:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205ed0(pc,d0.w),d0
	jmp dat_205ed0(pc,d0.w)
dat_205ed0:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205ef8
	andi.b #$7f,$2(a0)
loc_205ef8:
	move.l #$21e514,$4(a0)
	bsr.s sub_205e90
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205f26
	move.w #$100,$1c(a0)
loc_205f26:
	lea (dat_21e500).l,a1
	bsr.w sub_205b56
	jmp (sub_20394c).l
	tst.b $25(a0)
	beq.s loc_205f42
	jmp (sub_2039f8).l
loc_205f42:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	.incbin 24400, 1018
dat_20634a:
	.incbin 25418, 128
loc_2063ca:
	bclr.b #$7,($ff156b).l
	beq.s loc_206418
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20641a(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2063ee:
	move.l (a1)+,(a2)+
	dbf d0,loc_2063ee
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206418:
	rts
dat_20641a:
	.incbin 25626, 58
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$21e328,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206532
	cmpi.b #$6,$24(a1)
	bcc.w loc_206532
	bsr.w sub_206596
	beq.w loc_206532
	tst.b $28(a0)
	bne.s loc_2064e4
	move.w $10(a1),d0
	bpl.s loc_2064a4
	neg.w d0
loc_2064a4:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2064b6
	move.w #$d00,d1
loc_2064b6:
	cmp.w d1,d0
	bcc.s loc_2064bc
	move.w d1,d0
loc_2064bc:
	tst.w $10(a1)
	bpl.s loc_2064c4
	neg.w d0
loc_2064c4:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_206514
	neg.w $14(a1)
	bra.s loc_206514
loc_2064e4:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206534
	move.w $12(a1),d0
	bpl.s loc_2064f4
	neg.w d0
loc_2064f4:
	cmpi.w #$d00,d0
	bcc.s loc_2064fe
	move.w #$d00,d0
loc_2064fe:
	tst.w $12(a1)
	bpl.s loc_206506
	neg.w d0
loc_206506:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206514:
	bset.b #$2,$22(a1)
	bne.s loc_206532
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206532:
	rts
loc_206534:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206580
	cmpi.b #$2,$28(a0)
	bne.s loc_206550
	tst.w $12(a1)
	bpl.s loc_206514
	bra.s loc_206556
loc_206550:
	tst.w $12(a1)
	bmi.s loc_206514
loc_206556:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206568
	btst.l #$2,d1
	beq.s loc_206514
	neg.w d0
loc_206568:
	cmpi.b #$2,$28(a0)
	beq.s loc_206576
	bset.b #$1,$22(a1)
loc_206576:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206514
loc_206580:
	tst.w $10(a1)
	bmi.s loc_206514
	btst.l #$0,d1
	beq.w loc_206514
	move.w #$f600,d0
	bra.w loc_206506

sub_206596:
	tst.b ($ff1906).l
	bne.s loc_2065ca
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2065ca
	cmpi.w #$50,d0
	bcc.s loc_2065ca
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2065ca
	cmpi.w #$50,d0
	bcc.s loc_2065ca
	moveq #$1,d0
	rts
loc_2065ca:
	moveq #$0,d0
	rts

sub_2065ce:
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_20662a
	move.w $10(a0),d0
	bpl.s loc_2065e2
	neg.w d0
loc_2065e2:
	cmpi.w #$a00,d0
	bcs.s loc_20662a
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
	bne.s loc_206616
	add.b ($ff156a).l,d1
loc_206616:
	add.w d1,d1
	move.w dat_20662c(pc,d1.w),d1
	lea dat_20662c(pc,d1.w),a1
loc_206620:
	move.w (a1)+,d1
	bmi.s loc_20662a
	cmp.w d1,d0
	bne.s loc_206620
	bra.s loc_20666c
loc_20662a:
	rts
dat_20662c:
	.incbin 26156, 64
loc_20666c:
	jsr (sub_207816).l
	bne.s loc_20669c
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $16(a0),d0
	ext.w d0
	add.w d0,$c(a1)
	tst.w $10(a0)
	bpl.s loc_20669c
	bset.b #$0,$22(a1)
loc_20669c:
	rts
	.incbin 26270, 216
loc_206776:
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
	bne.s loc_206830
	move.b ($ff1593).l,($ff195b).l
loc_206830:
	tst.b ($ff1522).l
	bpl.s loc_206846
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206846:
	rts

sub_206848:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206776
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
	bne.s loc_206902
	move.b ($ff1591).l,($ff195b).l
loc_206902:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206924
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206924:
	tst.b ($ff1522).l
	bpl.s loc_20693a
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20693a:
	rts

sub_20693c:
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
	bpl.s loc_206978
	move.b d1,d0
	bpl.s loc_206972
	subq.b #$1,d0
loc_206972:
	addi.b #$20,d0
	bra.s loc_206982
loc_206978:
	move.b d1,d0
	bpl.s loc_20697e
	addq.b #$1,d0
loc_20697e:
	addi.b #$1f,d0
loc_206982:
	andi.b #$c0,d0
	beq.w loc_206a52
	cmpi.b #$80,d0
	beq.w loc_206bee
	andi.b #$38,d1
	bne.s loc_20699a
	addq.w #$8,d2
loc_20699a:
	cmpi.b #$40,d0
	beq.w loc_206cc4
	bra.w loc_206b26

sub_2069a6:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206c4c
	cmpi.b #$80,d0
	beq.w sub_206b76
	cmpi.b #$c0,d0
	beq.w loc_206ab6

sub_2069ce:
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
loc_206a32:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206a40
	move.b ($f768).w,d3
	exg d0,d1
loc_206a40:
	btst.l #$0,d3
	beq.s loc_206a48
	move.b d2,d3
loc_206a48:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a52:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011a0).l
	move.b #$0,d2
loc_206a6e:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a7a
	move.b d2,d3
loc_206a7a:
	rts

sub_206a7c:
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
	beq.s loc_206ab4
	move.b #$0,d3
loc_206ab4:
	rts
loc_206ab6:
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
	bra.w loc_206a32

sub_206b1e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b26:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201310).l
	move.b #$c0,d2
	bra.w loc_206a6e
	.incbin 27462, 48

sub_206b76:
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
	bra.w loc_206a32

sub_206be6:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206bee:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2011a0).l
	move.b #$80,d2
	bra.w loc_206a6e
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
	jsr (sub_2011a0).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c4a
	move.b #$80,d3
loc_206c4a:
	rts
loc_206c4c:
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
	bra.w loc_206a32

sub_206cbc:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cc4:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201310).l
	move.b #$40,d2
	bra.w loc_206a6e
	.incbin 27880, 48

sub_206d18:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206d3c
	addi.w #$c,d3
	moveq #$a,d5
loc_206d3c:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206d4a:
	tst.b $1(a1)
	bpl.s loc_206d56
	move.b $20(a1),d0
	bne.s loc_206d62
loc_206d56:
	lea $40(a1),a1
	dbf d6,loc_206d4a
	moveq #$0,d0
	rts
loc_206d62:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2070fc).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206d8a
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206d90
	bra.w loc_206d56
loc_206d8a:
	cmp.w d4,d0
	bhi.w loc_206d56
loc_206d90:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206da8
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206dae
	bra.w loc_206d56
loc_206da8:
	cmp.w d5,d0
	bhi.w loc_206d56
loc_206dae:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206e22
	cmpi.b #$c0,d1
	beq.w loc_207002
	tst.b d1
	bmi.w sub_206eec
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206de6
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206de4
	addq.b #$2,$24(a1)
loc_206de4:
	rts
loc_206de6:
	tst.w $12(a0)
	bpl.s loc_206e10
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206e20
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206e20
	addq.b #$4,$25(a1)
	rts
loc_206e10:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e20
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206e20:
	rts

sub_206e22:
	tst.b ($ff1521).l
	bne.s loc_206e3c
	tst.b ($ff151f).l
	bne.s loc_206e3c
	cmpi.b #$2,$1c(a0)
	bne.w sub_206eec
loc_206e3c:
	tst.b $21(a1)
	beq.s loc_206e66
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206e64
	bset.b #$7,$22(a1)
loc_206e64:
	rts
loc_206e66:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206e7e
	moveq #$6,d0
loc_206e7e:
	move.w d0,$3e(a1)
	move.w dat_206ede(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206e98
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206e98:
	bsr.w sub_2096a0
	move.w #$96,d0
	jsr (sub_202346).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206ece
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206ed6
	neg.w $12(a0)
	rts
loc_206ece:
	addi.w #$100,$12(a0)
	rts
loc_206ed6:
	subi.w #$100,$12(a0)
	rts
dat_206ede:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206eec:
	tst.b ($ff1521).l
	bne.s loc_206efc
	tst.b ($ff151f).l
	beq.s loc_206f00
loc_206efc:
	moveq #$ffffffff,d0
	rts
loc_206f00:
	nop
	tst.w $30(a0)
	bne.s loc_206efc
	movea.l a1,a2

sub_206f0a:
	tst.b ($ff151e).l
	bne.s loc_206f36
	tst.w ($ff1512).l
	beq.w loc_206fa0
	jsr (sub_207816).l
	bne.s loc_206f36
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206f36:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206f4c
	move.b #$0,($ff156f).l
loc_206f4c:
	move.b #$4,$24(a0)
	bsr.w sub_2051ac
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206f7c
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206f7c:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206f8a
	neg.w $10(a0)
loc_206f8a:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206fa0:
	tst.w ($ff1588).l
	bne.w loc_206f36

sub_206faa:
	tst.w ($ff1906).l
	bne.s loc_206ffe
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2051ac
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
loc_206ffe:
	moveq #$ffffffff,d0
	rts
loc_207002:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_20709a
	cmpi.b #$23,d1
	beq.w loc_20709a
	cmpi.b #$2d,d1
	beq.w loc_2070f0
	cmpi.b #$31,d1
	beq.w loc_2070f0
	cmpi.b #$35,d1
	beq.w loc_2070e2
	cmpi.b #$3a,d1
	beq.w loc_2070e2
	cmpi.b #$3b,d1
	beq.w loc_2070e2
	tst.b ($f7aa).w
	beq.w loc_207098
	cmpi.b #$1,($f7aa).w
	beq.s loc_207062
	cmpi.b #$4,($f7aa).w
	beq.s loc_207084
	cmpi.b #$5,($f7aa).w
	beq.s loc_207092
loc_207062:
	cmpi.b #$3c,d1
	blt.s loc_207098
	cmpi.b #$3f,d1
	bgt.s loc_207098
	bsr.w sub_206e22
	tst.b $20(a1)
	bne.s loc_20707c
	addq.b #$3,$21(a1)
loc_20707c:
	clr.b $20(a1)
	bra.w loc_20709a
loc_207084:
	cmpi.b #$3f,d1
	beq.s loc_2070a6
	cmpi.b #$3e,d1
	beq.s loc_2070a0
	bra.s loc_207098
loc_207092:
	cmpi.b #$3d,d1
	beq.s loc_2070a0
loc_207098:
	rts
loc_20709a:
	addq.b #$1,$21(a1)
	rts
loc_2070a0:
	bsr.w sub_206eec
	bra.s loc_20709a
loc_2070a6:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_2070e0
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_2070e0
	neg.w $10(a0)
loc_2070e0:
	rts
loc_2070e2:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2070ee
	addq.b #$1,$21(a1)
loc_2070ee:
	rts
loc_2070f0:
	btst.b #$2,$22(a0)
	beq.w sub_206e22
	bra.s loc_20709a
dat_2070fc:
	.incbin 28924, 126
loc_20717a:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207190
	move.l #$4000,(dat_20730a).l
	bra.s loc_2071b0
loc_207190:
	addi.l #$2000,(dat_20730a).l
	cmpi.l #$80000,(dat_20730a).l
	bls.s loc_2071b0
	move.l #$80000,(dat_20730a).l
loc_2071b0:
	move.l (dat_20730a).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2071c2
	sub.l d0,$c(a0)
loc_2071c2:
	btst.b #$1,($f604).w
	beq.s loc_2071ce
	add.l d0,$c(a0)
loc_2071ce:
	btst.b #$2,($f604).w
	beq.s loc_2071da
	sub.l d0,$8(a0)
loc_2071da:
	btst.b #$3,($f604).w
	beq.s loc_2071e6
	add.l d0,$8(a0)
loc_2071e6:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200fb8).l
	move.w (a1),($ff194e).l
	lea (dat_20730e).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207228
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207222
	move.b #$0,d1
loc_207222:
	move.b d1,($ff1904).l
loc_207228:
	btst.b #$7,($f605).w
	beq.s loc_207248
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207242
	add.b (a2),d1
loc_207242:
	move.b d1,($ff1904).l
loc_207248:
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
	beq.s loc_2072d4
	bsr.w sub_207816
	bne.s loc_2072d4
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
loc_2072d4:
	btst.b #$4,($f605).w
	beq.s loc_207304
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207304:
	jmp (sub_20394c).l
dat_20730a:
	dc.b $00,$00,$40,$00
dat_20730e:
	.incbin 29454, 758

sub_207604:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207612:
	clr.l (a2)+
	dbf d0,loc_207612
	rts

sub_20761a:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207628(pc,d0.w),d0
	jmp dat_207628(pc,d0.w)
dat_207628:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2078c8).l,a0
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
	bcc.s loc_207666
	moveq #$0,d6
loc_207666:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_20766e:
	cmp.w (a0),d6
	bls.s loc_207680
	tst.b $4(a0)
	bpl.s loc_20767c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20767c:
	addq.w #$8,a0
	bra.s loc_20766e
loc_207680:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2076a0
loc_20768e:
	cmp.w (a0),d6
	bls.s loc_2076a0
	tst.b $4(a0)
	bpl.s loc_20769c
	addq.b #$1,$1(a2)
loc_20769c:
	addq.w #$8,a0
	bra.s loc_20768e
loc_2076a0:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20778a
	bge.s loc_207730
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20770c
loc_2076da:
	cmp.w -$8(a0),d6
	bge.s loc_20770c
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2076f0
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2076f0:
	bsr.w sub_2077ae
	bne.s loc_2076fa
	subq.w #$8,a0
	bra.s loc_2076da
loc_2076fa:
	tst.b $4(a0)
	bpl.s loc_20770a
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20770a:
	addq.w #$8,a0
loc_20770c:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207718:
	cmp.w -$8(a0),d6
	bgt.s loc_20772a
	tst.b -$4(a0)
	bpl.s loc_207726
	subq.b #$1,(a2)
loc_207726:
	subq.w #$8,a0
	bra.s loc_207718
loc_20772a:
	move.l a0,($f770).w
	rts
loc_207730:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207744:
	cmp.w (a0),d6
	bls.s loc_207766
	tst.b $4(a0)
	bpl.s loc_207752
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207752:
	bsr.w sub_2077ae
	beq.s loc_207744
	tst.b $4(a0)
	bpl.s loc_207766
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207766:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207786
loc_207774:
	cmp.w (a0),d6
	bls.s loc_207786
	tst.b $4(a0)
	bpl.s loc_207782
	addq.b #$1,$1(a2)
loc_207782:
	addq.w #$8,a0
	bra.s loc_207774
loc_207786:
	move.l a0,($f774).w
loc_20778a:
	rts

sub_20778c:
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

sub_2077ae:
	bsr.s sub_20778c
	beq.s loc_2077c0
	tst.b $4(a0)
	bpl.s loc_2077c6
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2077c6
loc_2077c0:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2077c6:
	bsr.w sub_207816
	bne.s loc_207814
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
	bpl.s loc_2077f6
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2077f6:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207808
	nop
	nop
	nop
	nop
loc_207808:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207814:
	rts

sub_207816:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20781e:
	tst.b (a1)
	beq.s loc_20782a
	lea $40(a1),a1
	dbf d0,loc_20781e
loc_20782a:
	rts

sub_20782c:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_20784a
loc_20783e:
	tst.b (a1)
	beq.s loc_20784a
	lea $40(a1),a1
	dbf d0,loc_20783e
loc_20784a:
	rts
loc_20784c:
	move.w $8(a0),d0
	tst.b $1(a0)
	bmi.s loc_2078ba
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2078ba
loc_20786e:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2078b0
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2078a8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2078a0
	moveq #$0,d1
	bra.s loc_2078a8
loc_2078a0:
	cmpi.w #$3,d1
	bcs.s loc_2078a8
	moveq #$2,d1
loc_2078a8:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2078b0:
	jsr (sub_2039f8).l
	moveq #$1,d0
	rts
loc_2078ba:
	btst.b #$7,($ff152e).l
	bne.s loc_20786e
	moveq #$0,d0
	rts
dat_2078c8:
	.incbin 30920, 96
loc_207928:
	move.l d1,-(a5)
	or.b d0,d0
dat_20792c:
	.incbin 31020, 558

sub_207b5a:
	btst.b #$3,$22(a0)
	beq.s loc_207bca
	btst.b #$3,$22(a1)
	beq.s loc_207bca
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207bca
	tst.b $2a(a1)
	beq.s loc_207b8c
	move.w #$ab,d0
	jsr (sub_202346).l
loc_207b8c:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207bb8
	cmpi.b #$17,$1c(a1)
	beq.s loc_207bb8
	bclr.b #$0,$2c(a1)
loc_207bb8:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207bca
	bclr.b #$1,$22(a1)
loc_207bca:
	rts

sub_207bcc:
	cmpi.b #$4,$24(a1)
	bne.s loc_207bde
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207bde:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207c3e
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207c00
	bclr.b #$3,$22(a0)
	bra.w sub_207b5a
loc_207c00:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207c3e
	tst.b ($ff195b).l
	beq.s loc_207c28
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207c38
loc_207c28:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207c38:
	move.b #$0,$1c(a1)
loc_207c3e:
	bset.b #$3,$22(a1)
	beq.s loc_207c60
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207c98
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207c60:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207c8c
	cmpi.b #$2,$24(a0)
	beq.s loc_207c92
loc_207c8c:
	move.w $10(a1),$14(a1)
loc_207c92:
	bclr.b #$1,$22(a1)
loc_207c98:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_207ca8:
	cmpi.b #$17,$1c(a1)
	beq.w loc_207f5c
	btst.b #$6,$2c(a1)
	bne.w loc_207f5c
	cmpi.b #$6,$24(a1)
	bcc.w loc_207f5c
	tst.b $0(a1)
	beq.w loc_207f5c
	tst.b $1(a0)
	bpl.w loc_207f5c
	tst.b ($ff1906).l
	bne.w loc_207f5c
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_207f5c
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_207f5c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207d16
	btst.b #$3,$22(a0)
	bne.s loc_207d28
	bra.w loc_207f5c
loc_207d16:
	cmpi.b #$1,$25(a0)
	bne.s loc_207d28
	tst.w $12(a1)
	beq.s loc_207d28
	bmi.w loc_207f5c
loc_207d28:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_207f5c
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_207f5c
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207d5e
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207d5e:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207d6c
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207d6c:
	cmp.w d4,d5
	bcs.w loc_207e00
	cmpi.b #$1,$25(a0)
	beq.w loc_207f5c
	cmpi.b #$a,$0(a0)
	bne.s loc_207d8e
	btst.b #$1,$22(a1)
	bne.w loc_207f5c
loc_207d8e:
	cmpi.b #$4,d5
	bls.w loc_207f5c
	bsr.w sub_207fac
	move.l d0,-(a7)
	bsr.w sub_207b5a
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207db8
	tst.w $10(a1)
	beq.s loc_207de8
	bpl.s loc_207dc0
	bra.s loc_207de8
loc_207db8:
	tst.w $10(a1)
	beq.s loc_207de8
	bpl.s loc_207de8
loc_207dc0:
	bsr.w sub_207f6c
	btst.b #$1,$22(a1)
	bne.s loc_207dde
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207dde:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207de8:
	bsr.w sub_208022
	bsr.w sub_207f6c
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207e00:
	cmpi.b #$19,$0(a0)
	bne.s loc_207e12
	btst.b #$2,$22(a1)
	bne.w loc_207f5c
loc_207e12:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207e28
	bmi.w loc_207ef8
loc_207e28:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207e3a
	tst.w $12(a1)
	beq.s loc_207e3a
	bmi.w loc_207f5c
loc_207e3a:
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
	beq.s loc_207e86
	bpl.s loc_207e66
	neg.b d0
loc_207e66:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20693c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207e86
	tst.w $10(a0)
	bpl.s loc_207e82
	neg.w d1
loc_207e82:
	add.w d1,$8(a1)
loc_207e86:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_207ef0
	tst.w $12(a0)
	bmi.s loc_207ec4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2069ce).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207ec4
	add.w d1,$c(a1)
	bra.w loc_207f5c
loc_207ec4:
	tst.w $12(a0)
	bpl.s loc_207ef0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206be6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207ef0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206faa).l
	movem.l (a7)+,a0-a1
	bra.s loc_207f5c
loc_207ef0:
	bsr.w sub_207bcc
	moveq #$1,d0
	rts
loc_207ef8:
	cmpi.b #$1,$25(a0)
	beq.s loc_207f5c
	cmpi.b #$9,$0(a0)
	beq.s loc_207f5c
	cmpi.b #$a,$0(a0)
	bne.s loc_207f22
	cmpi.b #$2,$25(a0)
	beq.s loc_207f42
	btst.b #$1,$1(a0)
	bne.s loc_207f42
	bra.s loc_207f5c
loc_207f22:
	btst.b #$1,$22(a1)
	bne.s loc_207f42
	tst.w $12(a0)
	beq.s loc_207f42
	bmi.s loc_207f42
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206faa).l
	movem.l (a7)+,a0-a1
loc_207f42:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208022
	bsr.w sub_207b5a
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_207f5c:
	bsr.w sub_208022
	bsr.w sub_207b5a
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_207f6c:
	tst.w $10(a0)
	beq.s loc_207faa
	cmpi.b #$a,$0(a0)
	beq.s loc_207faa
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_207f86
	neg.b d0
loc_207f86:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20693c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207faa
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206faa).l
	movem.l (a7)+,a0-a1
loc_207faa:
	rts

sub_207fac:
	cmpi.b #$a,$0(a0)
	bne.s loc_207fbc
	move.b #$0,$20(a1)
	rts
loc_207fbc:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208010
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208020
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_207fde
	tst.w $10(a2)
	beq.s loc_208020
loc_207fde:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_207ff0
	cmp.w $8(a2),d1
	bcs.s loc_208020
	bra.s loc_207ff6
loc_207ff0:
	cmp.w $8(a2),d1
	bcc.s loc_208020
loc_207ff6:
	cmpi.b #$15,$0(a0)
	beq.s loc_208020
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206faa).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208010:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208020:
	rts

sub_208022:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20803c
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_20803c
	move.b #$0,$20(a1)
loc_20803c:
	rts
	.incbin 32830, 1134
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 33982, 532
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2086e0(pc,d0.w),d1
	jmp dat_2086e0(pc,d1.w)
dat_2086e0:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2086ea:
	.incbin 34538, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208742
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20873a
	moveq #$0,d1
	bra.s loc_208742
loc_20873a:
	cmpi.w #$3,d1
	bcs.s loc_208742
	moveq #$2,d1
loc_208742:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20875e
	moveq #$6,d1
loc_20875e:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2086ea).l,a1
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
	beq.s loc_2087ae
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2087a6
	moveq #$0,d0
	bra.s loc_2087ae
loc_2087a6:
	cmpi.w #$3,d0
	bcs.s loc_2087ae
	moveq #$2,d0
loc_2087ae:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20887c
	dbf d0,loc_2087ae
	bclr.b #$7,(a2)
	bra.s loc_208804
loc_2087c0:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2087ec
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2087e4
	moveq #$0,d0
	bra.s loc_2087ec
loc_2087e4:
	cmpi.w #$3,d0
	bcs.s loc_2087ec
	moveq #$2,d0
loc_2087ec:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20887c
	dbf d0,loc_2087ec
	bclr.b #$7,(a2)
	bsr.w sub_20782c
	bne.w loc_208888
loc_208804:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208b4e,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20885a
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20885a
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20885a:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20887c:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2087c0
loc_208888:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2088ae
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2088a6
	moveq #$0,d0
	bra.s loc_2088ae
loc_2088a6:
	cmpi.w #$3,d0
	bcs.s loc_2088ae
	moveq #$2,d0
loc_2088ae:
	lea $1(a2),a3
loc_2088b2:
	btst.b #$0,-(a3)
	bne.w sub_2039f8
	dbf d0,loc_2088b2
	tst.b $1(a0)
	bmi.s loc_2088e2
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20895c
loc_2088e2:
	tst.w ($ff190e).l
	bne.s loc_2088f2
	move.b ($ff1913).l,$1a(a0)
loc_2088f2:
	bra.w sub_20394c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208960
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208942
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20893a
	moveq #$0,d1
	bra.s loc_208942
loc_20893a:
	cmpi.w #$3,d1
	bcs.s loc_208942
	moveq #$2,d1
loc_208942:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208b46).l,a1
	bsr.w sub_205b56
	bra.w sub_20394c
loc_20895c:
	bra.w sub_2039f8

sub_208960:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2089b0
	bset.b #$1,($ff150d).l
	beq.s loc_20899a
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2089b0
	bset.b #$2,($ff150d).l
	bne.s loc_2089b0
loc_20899a:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b16).l
loc_2089b0:
	jmp (sub_202346).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2089c4(pc,d0.w),d1
	jmp dat_2089c4(pc,d1.w)
dat_2089c4:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_2089e0
	move.w d0,d5
loc_2089e0:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_2089f0
loc_2089e8:
	bsr.w sub_207816
	bne.w loc_208aa6
loc_2089f0:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$208b4e,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208a4e
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_208a4e
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_208a4e:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_208a96
	move.w d4,d0
	jsr (sub_20084a).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_208a96
	subi.w #$80,d4
	bcc.s loc_208a96
	move.w #$288,d4
loc_208a96:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_2089e8
loc_208aa6:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202346).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2038f6
	addi.w #$18,$12(a0)
	bmi.s loc_208b06
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_208b06
	jsr (sub_206a7c).l
	tst.w d1
	bpl.s loc_208b06
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_208b06:
	tst.b ($ff1916).l
	beq.s loc_208b42
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_208b42
	bra.w sub_20394c
	.incbin 35616, 34
loc_208b42:
	bra.w sub_2039f8
dat_208b46:
	.incbin 35654, 402
loc_208cd8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d06(pc,d0.w),d0
	jsr dat_208d06(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208d04
	cmpi.w #$5a,($f786).w
	bcs.s loc_208cfe
	btst.b #$0,($ff1505).l
	bne.s loc_208d04
loc_208cfe:
	jmp (sub_20394c).l
loc_208d04:
	rts
dat_208d06:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$2092e0,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208d3a
	move.b #$13,$1a(a0)
loc_208d3a:
	rts
loc_208d3c:
	tst.b ($ff0f01).l
	beq.s loc_208d4a
	jmp (sub_2039f8).l
loc_208d4a:
	cmpi.b #$a,$28(a0)
	beq.w loc_208cd8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d6e(pc,d0.w),d0
	jsr dat_208d6e(pc,d0.w)
	jsr (sub_20394c).l
	jmp (loc_20784c).l
dat_208d6e:
	.incbin 36206, 282

sub_208e88:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208ec0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208eb8
	moveq #$0,d1
	bra.s loc_208ec0
loc_208eb8:
	cmpi.w #$3,d1
	bcs.s loc_208ec0
	moveq #$2,d1
loc_208ec0:
	add.w d1,d0
	rts

sub_208ec4:
	cmpi.b #$6,($ff1506).l
	bne.s loc_208ee6
	tst.b ($ff1956).l
	beq.s loc_208ede
	tst.b $29(a0)
	bne.s loc_208ee6
	rts
loc_208ede:
	tst.b $29(a0)
	beq.s loc_208ee6
	rts
loc_208ee6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207ca8).l
	tst.b $28(a0)
	bne.s loc_208f08
	tst.b ($ff0f01).l
	beq.s loc_208f08
	jmp (loc_20784c).l
loc_208f08:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208d3c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208f20(pc,d0.w),d1
	jmp dat_208f20(pc,d1.w)
dat_208f20:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$2092e0,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208f6a
	tst.b $29(a0)
	bne.s loc_208f6a
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_208f6a:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_208e88
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208f96
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_208f96:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_208ff0
	move.b $25(a0),d0
	beq.s loc_208fd0
	bsr.w sub_203894
	jsr (sub_206a7c).l
	tst.w d1
	bpl.w loc_208fde
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_208fde
loc_208fd0:
	tst.b $1(a0)
	bpl.s loc_208fde
	lea ($d000).w,a1
	bsr.w sub_208ec4
loc_208fde:
	tst.w ($ff190e).l
	bne.s loc_208ff0
	lea (dat_209258).l,a1
	bsr.w sub_205b56
loc_208ff0:
	bsr.w sub_20394c
	jmp (loc_20784c).l
	move.w #$96,d0
	jsr (sub_202346).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_207816
	bne.s loc_209032
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_209032:
	bsr.w sub_207816
	bne.s loc_20905c
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_20905c:
	bsr.w sub_208e88
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_20394c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209082(pc,d0.w),d1
	jsr dat_209082(pc,d1.w)
	bra.w sub_20394c
dat_209082:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20909e
	andi.b #$7f,$2(a0)
loc_20909e:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$2092e0,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_2090e6
	bsr.w sub_2038f6
	addi.w #$18,$12(a0)
	rts
loc_2090e6:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20910c
loc_2090f6:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b16).l
loc_20910c:
	cmpi.b #$1,d0
	bne.s loc_209158
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20914e
	bset.b #$1,($ff150d).l
	beq.w loc_2090f6
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20914e
	bset.b #$2,($ff150d).l
	beq.w loc_2090f6
loc_20914e:
	move.w #$95,d0
	jmp (sub_202346).l
loc_209158:
	cmpi.b #$2,d0
	bne.s loc_209176

sub_20915e:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_202346).l
loc_209176:
	cmpi.b #$3,d0
	bne.s loc_2091d8

sub_20917c:
	move.b #$1,($ff151f).l
	move.w #$4b0,($d032).w
	move.b #$3,($d200).w
	move.b #$1,($d21c).w
	move.b #$3,($d240).w
	move.b #$2,($d25c).w
	move.b #$3,($d280).w
	move.b #$3,($d29c).w
	move.b #$3,($d2c0).w
	move.b #$4,($d2dc).w
	tst.b ($ff152e).l
	bne.s loc_2091cc
	move.w #$82,d0
	jsr (sub_205b16).l
loc_2091cc:
	move.w #$6d,d0
	jmp (sub_205b16).l
	dc.b $4e,$75
loc_2091d8:
	cmpi.b #$4,d0
	bne.s loc_20921a
loc_2091de:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_209210
	move.w #$82,d0
	jsr (sub_205b16).l
loc_209210:
	move.w #$6c,d0
	jmp (sub_205b16).l
loc_20921a:
	cmpi.b #$5,d0
	bne.s loc_20922a
	move.w #$12c,($ff190e).l
	rts
loc_20922a:
	cmpi.b #$6,d0
	bne.s loc_209244
	move.w #$9d,d0
	jsr (sub_202346).l
	move.b #$1,($ff156f).l
	rts
loc_209244:
	bsr.w sub_20915e
	bsr.w sub_20917c
	bra.s loc_2091de
	subq.w #$1,$1e(a0)
	bmi.w sub_2039f8
	rts
dat_209258:
	.incbin 37464, 586
loc_2094a2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2094b6(pc,d0.w),d0
	jsr dat_2094b6(pc,d0.w)
	jmp (sub_20394c).l
dat_2094b6:
	dc.b $00,$04,$00,$2e,$54,$28

sub_2094bc:
	ori.b #$28,-(a4)
	ori.b #$1,d4
	move.w #$6c6,$2(a0)
	move.l #$2094f6,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_2094f0
	jmp (sub_2039f8).l
loc_2094f0:
	subq.w #$2,$c(a0)
	rts
	.incbin 38134, 82
	tst.b $28(a0)
	bmi.w loc_2094a2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20955e(pc,d0.w),d0
	jmp dat_20955e(pc,d0.w)
dat_20955e:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$2095f8,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20958e
	move.b #$3,$1a(a0)
	bra.s loc_2095ae
loc_20958e:
	tst.w ($ff1588).l
	beq.s loc_20959c
	move.b #$2,$1a(a0)
loc_20959c:
	tst.b $28(a0)
	beq.s loc_2095ae
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_2095ae:
	tst.b $28(a0)
	bne.s loc_2095f2
	tst.b $29(a0)
	beq.s loc_2095de
	tst.w ($ff1512).l
	beq.s loc_2095ca
	bclr.b #$5,$2(a0)
	bra.s loc_2095f2
loc_2095ca:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_2095f2
	eori.b #$20,$2(a0)
	bra.s loc_2095f2
loc_2095de:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_2095f2
	move.b #$2,$1a(a0)
loc_2095f2:
	jmp (sub_20394c).l
	.incbin 38392, 168

sub_2096a0:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_2096bc
	move.l d1,(a3)
loc_2096bc:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_2096e6
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b16).l
loc_2096e6:
	rts
loc_2096e8:
	tst.w ($ff1588).l
	beq.s loc_20973e
	bsr.w sub_20993a
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
	lea (dat_209a9a).l,a2
	moveq #$2,d6
	bsr.w sub_209af2
	bra.w loc_209798
loc_20973e:
	tst.b ($ff1511).l
	beq.s loc_209762
	bpl.s loc_20974c
	bsr.w sub_2098e4
loc_20974c:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_2099d4
loc_209762:
	tst.b ($ff150f).l
	beq.s loc_209798
	bpl.s loc_209770
	bsr.w sub_2098d0
loc_209770:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_209794
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_209794:
	bsr.w sub_2099ca
loc_209798:
	tst.w ($ff1588).l
	bne.w loc_209844
	tst.b ($ff1510).l
	beq.w loc_209844
	tst.w ($f63a).w
	bne.w loc_209844
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_2098a2
	tst.b ($f7cc).w
	bne.s loc_2097ee
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2097ee
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2097ee
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_2097ee
	move.b #$9,(a1)
loc_2097ee:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209ae0
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209aea
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_209840
	move.w #$63,d1
loc_209840:
	bsr.w sub_209aea
loc_209844:
	tst.b ($ff150e).l
	beq.s loc_209856
	clr.b ($ff150e).l
	bsr.w sub_209ac0
loc_209856:
	tst.b ($f7d6).w
	beq.s loc_2098a0
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209876
	move.l #$6d400001,d0
loc_209876:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209958
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209896
	move.l #$6e800001,d0
loc_209896:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209958
loc_2098a0:
	rts
loc_2098a2:
	btst.b #$7,($ff152e).l
	bne.s loc_2098ce
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206faa
	move.b #$1,($ff150c).l
loc_2098ce:
	rts

sub_2098d0:
	move.l #$73600002,($c00004).l
	lea dat_209936(pc),a2
	move.w #$2,d2
	bra.s loc_209900

sub_2098e4:
	lea ($c00000).l,a6
	bsr.w sub_209ac0
	move.l #$70600002,($c00004).l
	lea dat_20992e(pc),a2
	move.w #$6,d2
loc_209900:
	lea (dat_2330bc).l,a1
loc_209906:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209922
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209916:
	move.l (a3)+,(a6)
	dbf d1,loc_209916
loc_20991c:
	dbf d2,loc_209906
	rts
loc_209922:
	move.l #$0,(a6)
	dbf d1,loc_209922
	bra.s loc_20991c
dat_20992e:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209936:
	dc.b $ff,$ff,$00,$00

sub_20993a:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209ab6
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209ab6

sub_209958:
	lea (dat_209a92).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209968:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20996c:
	sub.l d3,d1
	bcs.s loc_209974
	addq.w #$1,d2
	bra.s loc_20996c
loc_209974:
	add.l d3,d1
	tst.w d2
	beq.s loc_20997e
	move.w #$1,d4
loc_20997e:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20998a
	tst.w d6
	bne.s loc_2099bc
loc_20998a:
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
loc_2099b0:
	addi.l #$400000,d0
	dbf d6,loc_209968
	rts
loc_2099bc:
	moveq #$f,d5
loc_2099be:
	move.l #$0,(a6)
	dbf d5,loc_2099be
	bra.s loc_2099b0

sub_2099ca:
	lea (dat_209a9a).l,a2
	moveq #$2,d6
	bra.s loc_2099dc

sub_2099d4:
	lea (dat_209a8e).l,a2
	moveq #$5,d6
loc_2099dc:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_2099e4:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2099e8:
	sub.l d3,d1
	bcs.s loc_2099f0
	addq.w #$1,d2
	bra.s loc_2099e8
loc_2099f0:
	add.l d3,d1
	tst.w d2
	beq.s loc_2099fa
	move.w #$1,d4
loc_2099fa:
	tst.w d4
	beq.s loc_209a28
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
loc_209a28:
	addi.l #$400000,d0
	dbf d6,loc_2099e4
	rts
	.incbin 39476, 32
loc_209a54:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209a58:
	sub.l d3,d1
	bcs.s loc_209a60
	addq.w #$1,d2
	bra.s loc_209a58
loc_209a60:
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
	dbf d6,loc_209a54
	rts
dat_209a8e:
	dc.b $00,$01,$86,$a0
dat_209a92:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209a9a:
	dc.b $00,$00,$00,$64
dat_209a9e:
	dc.b $00,$00,$00,$0a
dat_209aa2:
	dc.b $00,$00,$00,$01
dat_209aa6:
	.incbin 39590, 16

sub_209ab6:
	moveq #$3,d6
	lea (dat_209aa6).l,a2
	bra.s sub_209af2

sub_209ac0:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209ad6
	moveq #$9,d1
loc_209ad6:
	lea (dat_209aa2).l,a2
	moveq #$0,d6
	bra.s sub_209af2

sub_209ae0:
	lea (dat_209aa2).l,a2
	moveq #$0,d6
	bra.s sub_209af2

sub_209aea:
	lea (dat_209a9e).l,a2
	moveq #$1,d6

sub_209af2:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209afa:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209afe:
	sub.l d3,d1
	bcs.s loc_209b06
	addq.w #$1,d2
	bra.s loc_209afe
loc_209b06:
	add.l d3,d1
	tst.w d2
	beq.s loc_209b10
	move.w #$1,d4
loc_209b10:
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
	dbf d6,loc_209afa
	rts
	.incbin 39750, 570
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d94(pc,d0.w),d0
	jsr dat_209d94(pc,d0.w)
	jmp (sub_20394c).l
dat_209d94:
	.incbin 40340, 748
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a094(pc,d0.w),d0
	jsr dat_20a094(pc,d0.w)
	jmp (sub_20394c).l
dat_20a094:
	.incbin 41108, 3294
loc_20ad72:
	cmpi.b #$4,$24(a2)
	bne.s loc_20ad84
	subq.b #$2,$24(a2)
	move.w #$78,$30(a2)
loc_20ad84:
	cmpi.b #$2b,$1c(a2)
	beq.s loc_20adcc
	cmpi.b #$6,$24(a2)
	bcc.s loc_20adcc
	move.b $17(a2),d1
	ext.w d1
	add.w d2,d1
	move.w $8(a0),d0
	sub.w $8(a2),d0
	add.w d1,d0
	bmi.s loc_20adcc
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20adcc
	move.b $16(a2),d1
	ext.w d1
	add.w d3,d1
	move.w $c(a0),d0
	sub.w $c(a2),d0
	add.w d1,d0
	bmi.s loc_20adcc
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20adcc
	moveq #$1,d0
	rts
loc_20adcc:
	moveq #$0,d0
	rts
	.incbin 44496, 652
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20b1ec,$4(a0)
	move.b #$20,$19(a0)
	move.b #$c,$16(a0)
	move.b #$2,$1a(a0)
	tst.b $28(a0)
	beq.s loc_20b0a0
	move.b #$0,$1a(a0)
	move.w #$f800,$12(a0)
	move.b #$6,$24(a0)
	bra.s loc_20b0d2
loc_20b0a0:
	bra.w loc_20b0f4
	.incbin 45220, 46
loc_20b0d2:
	addi.w #$40,$12(a0)
	jsr (sub_2038f6).l
	move.w ($f704).w,d0
	addi.w #$e8,d0
	cmp.w $c(a0),d0
	bcc.s loc_20b0f2
	jmp (sub_2039f8).l
loc_20b0f2:
	rts
loc_20b0f4:
	tst.b ($ff1906).l
	bne.s loc_20b106
	lea ($d000).w,a2
	bsr.s sub_20b108
	bne.w loc_20b120
loc_20b106:
	rts

sub_20b108:
	btst.b #$1,$22(a2)
	beq.s loc_20b114
	moveq #$0,d0
	rts
loc_20b114:
	move.w #$20,d2
	move.w #$10,d3
	bra.w loc_20ad72
loc_20b120:
	clr.b ($d02c).w
	jsr (sub_207816).l
	bne.s loc_20b164
	move.b #$8,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$28(a1)
	movea.l a1,a3
	jsr (sub_207816).l
	bne.s loc_20b164
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$6,$c(a1)
loc_20b164:
	move.w #$ce,d0
	jsr (sub_202346).l
	addq.b #$2,$24(a0)
	move.w $8(a0),$2c(a0)
	move.b #$6,$2a(a0)
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcc.s loc_20b1b4
	move.w #$f000,$10(a2)
	bset.b #$0,$22(a1)
	move.w #$200,$10(a3)
	addi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$800,$10(a0)
	bset.b #$0,$22(a2)
	rts
loc_20b1b4:
	move.w #$1000,$10(a2)
	bclr.b #$0,$22(a1)
	move.w #$fe00,$10(a3)
	subi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$f800,$10(a0)
	bclr.b #$0,$22(a2)
	rts
	.incbin 45536, 192
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b2ae(pc,d0.w),d0
	jmp dat_20b2ae(pc,d0.w)
dat_20b2ae:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205b16).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20b384,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20b30a
	tst.b ($ff1508).l
	beq.s loc_20b312
	move.l #$20b388,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20b312
loc_20b30a:
	tst.b ($ff1508).l
	bne.s loc_20b322
loc_20b312:
	bset.b #$7,($ff156b).l
	jsr (sub_207816).l
	beq.s loc_20b328
loc_20b322:
	jmp (sub_2039f8).l
loc_20b328:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20b36a
	move.w #$6e,d0
	jmp (sub_205b16).l
loc_20b36a:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b37e
	bge.s loc_20b37a
	neg.w d0
loc_20b37a:
	add.w d0,$8(a0)
loc_20b37e:
	jmp (sub_20394c).l
	.incbin 45956, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b3ca(pc,d0.w),d0
	jmp dat_20b3ca(pc,d0.w)
dat_20b3ca:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20bac8,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20ba88).l,a2
loc_20b418:
	jsr (sub_207816).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20bac8,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b46a
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b46a:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b418
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b492
	bge.s loc_20b488
	neg.w d0
loc_20b488:
	add.w d0,$a(a0)
	jmp (sub_20394c).l
loc_20b492:
	addq.b #$4,$24(a0)
	jmp (sub_20394c).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b4b6
	bge.s loc_20b4ac
	neg.w d0
loc_20b4ac:
	add.w d0,$8(a0)
	jmp (sub_20394c).l
loc_20b4b6:
	addq.b #$4,$24(a0)
	jmp (sub_20394c).l
	tst.b $1e(a0)
	beq.s loc_20b4d0
	subq.b #$1,$1e(a0)
	jmp (sub_20394c).l
loc_20b4d0:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b4ea
	bge.s loc_20b4e0
	neg.w d0
loc_20b4e0:
	add.w d0,$a(a0)
	jmp (sub_20394c).l
loc_20b4ea:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202510).l
	tst.b $1e(a0)
	beq.s loc_20b50c
	subq.b #$1,$1e(a0)
	jmp (sub_20394c).l
loc_20b50c:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b526
	bge.s loc_20b51c
	neg.w d0
loc_20b51c:
	add.w d0,$8(a0)
	jmp (sub_20394c).l
loc_20b526:
	jmp (sub_2039f8).l
	tst.l ($f680).w
	bne.s loc_20b540
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2039f8).l
loc_20b540:
	rts
	.incbin 46402, 1350
dat_20ba88:
	.incbin 47752, 344

sub_20bbe0:
	rts
	.incbin 48098, 566
	lea ($d000).w,a1
	movea.w $2e(a0),a2
	bsr.w sub_20bfac
	bsr.w sub_20bf54
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be48(pc,d0.w),d0
	jsr dat_20be48(pc,d0.w)
	lea (dat_20d19c).l,a1
	jsr (sub_205b56).l
	jmp (sub_20394c).l
dat_20be48:
	.incbin 48712, 20
	move.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$14,$19(a0)
	move.b #$18,$16(a0)
	move.w #$37c,$2(a0)
	move.l #$20d1fa,$4(a0)
	addq.b #$2,$24(a0)
	cmpi.b #$1,$1c(a0)
	bne.s loc_20be9c
	cmpi.b #$7,$1b(a0)
	bne.s loc_20bec4
	move.b #$0,$1c(a0)
loc_20be9c:
	btst.b #$1,$22(a1)
	beq.s loc_20bec0
	btst.b #$2,$22(a1)
	beq.s loc_20bec0
	tst.b $2d(a0)
	bne.s loc_20bec4
	move.b #$1,$2d(a0)
	move.b #$1,$1c(a0)
	bra.s loc_20bec4
loc_20bec0:
	clr.b $2d(a0)
loc_20bec4:
	rts
	moveq #$0,d0
	move.b $2d(a0),d0
	add.b d0,d0
	move.w dat_20bed6(pc,d0.w),d0
	jmp dat_20bed6(pc,d0.w)
dat_20bed6:
	.incbin 48854, 16
	move.b #$2,$1c(a0)
	addq.b #$1,$2d(a0)
	clr.b $1a(a0)
	cmpi.b #$6,$1a(a0)
	bne.s loc_20bf0c
	move.b #$3,$1c(a0)
	addq.b #$1,$2d(a0)
	move.w #$78,$2a(a0)
loc_20bf0c:
	rts
	addq.b #$1,$2d(a0)
	move.b #$4,$1c(a0)
	move.w #$96,$2a(a0)
	rts
	move.b #$82,$38(a2)
	bset.b #$7,($f7a7).w
	addq.b #$1,$2d(a0)
	move.w #$3c,$2a(a0)
	move.w #$20,d0
	movem.l a0-a2,-(a7)
	jsr (sub_205b16).l
	movem.l (a7)+,a0-a2
	rts
	bset.b #$5,$2c(a0)
	bra.w loc_20c1c8

sub_20bf54:
	btst.b #$5,$2c(a0)
	beq.w loc_20bfaa
	move.w $8(a0),d0
	sub.w $8(a2),d0
	cmpi.w #$58,d0
	bgt.w loc_20bfaa
	cmpi.w #$3500,$8(a0)
	blt.s loc_20bf8a
	move.w $10(a2),$10(a0)
	move.w #$8,$30(a0)
	move.w #$600,$34(a0)
	bra.s loc_20bfaa
loc_20bf8a:
	move.w $10(a0),d0
	cmp.w $10(a2),d0
	bge.s loc_20bfa6
	move.w $10(a2),$10(a0)
	move.w #$8,$30(a0)
	move.w #$600,$34(a0)
loc_20bfa6:
	bra.w loc_20c212
loc_20bfaa:
	rts

sub_20bfac:
	tst.b $39(a2)
	bmi.s loc_20bfca
	bne.s loc_20bfcc
	move.w #$3e90,d0
	cmp.w $8(a0),d0
	ble.w loc_20c032
	lea ($d000).w,a3
	cmp.w $8(a3),d0
	ble.s loc_20bfcc
loc_20bfca:
	rts
loc_20bfcc:
	tst.b $39(a2)
	bne.s loc_20c002
	move.b #$1,$39(a2)
	bset.b #$7,($f7a7).w
	move.w #$bb,d0
	movem.l a0-a2,-(a7)
	jsr (sub_202346).l
	movem.l (a7)+,a0-a2
	movea.l a0,a3
	bsr.w sub_20c072
	move.w #$800,$34(a0)
	move.w #$10,$30(a0)
loc_20c002:
	cmpi.w #$3e48,$8(a0)
	blt.s loc_20c030
	bset.b #$7,$39(a2)
	bclr.b #$5,$2c(a0)
	move.b #$12,$24(a0)
	movem.l a1-a2,-(a7)
	bsr.w sub_20cf14
	movem.l (a7)+,a1-a2
	clr.w $2a(a0)
	clr.b $2d(a0)
loc_20c030:
	rts
loc_20c032:
	move.w d0,$8(a0)
	move.b #$82,$39(a2)
	bset.b #$7,($f7a7).w
	move.w #$bb,d0
	movem.l a0-a2,-(a7)
	jsr (sub_202346).l
	movem.l (a7)+,a0-a2
	lea ($d000).w,a3
	bsr.w sub_20c072
	bclr.b #$5,$2c(a0)
	move.b #$10,$24(a0)
	clr.w $2a(a0)
	clr.b $2d(a0)
	rts

sub_20c072:
	tst.b (a3)
	beq.s loc_20c084
	move.w #$3e48,d1
	cmp.w $8(a3),d1
	bge.s loc_20c084
	move.w d1,$8(a3)
loc_20c084:
	rts
	bsr.w sub_20ce68
	bsr.w sub_20ca0e
	tst.b $39(a2)
	beq.s loc_20c096
	rts
loc_20c096:
	addq.w #$1,$38(a0)
	tst.b $36(a0)
	bne.w loc_20c13c
	move.w $8(a1),d5
	sub.w $8(a0),d5
	move.w d5,d4
	bmi.s loc_20c0b6
	bset.b #$6,$2c(a0)
	bra.s loc_20c0be
loc_20c0b6:
	bclr.b #$6,$2c(a0)
	neg.w d4
loc_20c0be:
	cmpi.w #$a0,d4
	bge.s loc_20c0e4
	tst.w $3a(a0)
	bge.s loc_20c0ce
	clr.w $3a(a0)
loc_20c0ce:
	addq.w #$1,$3a(a0)
	cmpi.w #$10,d4
	bge.s loc_20c0de
	clr.w $3c(a0)
	bra.s loc_20c0f2
loc_20c0de:
	addq.w #$1,$3c(a0)
	bra.s loc_20c0f2
loc_20c0e4:
	tst.w $3a(a0)
	bmi.s loc_20c0ee
	clr.w $3a(a0)
loc_20c0ee:
	subq.w #$1,$3a(a0)
loc_20c0f2:
	cmpi.w #$32,$3c(a0)
	bge.s loc_20c0fe
	bra.w loc_20c14a
loc_20c0fe:
	cmpi.w #$3500,$8(a0)
	bge.s loc_20c10a
	bra.w loc_20c208
loc_20c10a:
	btst.b #$6,$2c(a0)
	bne.w loc_20c128
	bsr.w sub_20c226
	move.b #$2,$36(a0)
	move.w #$f0,$3e(a0)
	bra.w loc_20c14a
loc_20c128:
	bsr.w sub_20c226
	move.b #$1,$36(a0)
	move.w #$f0,$3e(a0)
	bra.w loc_20c14a
loc_20c13c:
	subq.w #$1,$3e(a0)
	bgt.s loc_20c14a
	clr.b $36(a0)
	clr.w $3e(a0)
loc_20c14a:
	tst.w $3e(a0)
	bne.s loc_20c160
	cmpi.w #$ff88,$3a(a0)
	bgt.s loc_20c160
	tst.w d5
	bmi.s loc_20c17c
	bra.w loc_20c0fe
loc_20c160:
	move.w $38(a0),d0
	divu.w #$3c,d0
	swap d0
	cmpi.w #$1e,d0
	bge.s loc_20c17c
	cmpi.b #$8,$24(a0)
	bne.w loc_20c188
	rts
loc_20c17c:
	cmpi.b #$6,$24(a0)
	bne.w loc_20c1c8
	rts
loc_20c188:
	cmpi.b #$1,$36(a0)
	beq.s loc_20c19e
	cmpi.b #$2,$36(a0)
	beq.s loc_20c1a4
	move.w #$400,d0
	bra.s loc_20c1a8
loc_20c19e:
	move.w #$800,d0
	bra.s loc_20c1a8
loc_20c1a4:
	move.w #$2aa,d0
loc_20c1a8:
	move.w d0,$34(a0)
	cmp.w $10(a0),d0
	blt.s loc_20c1b4
	neg.w d0
loc_20c1b4:
	move.w d0,$30(a0)
	move.b #$8,$24(a0)
	move.b #$6,$1c(a0)
	bra.w loc_20c22a
loc_20c1c8:
	cmpi.b #$1,$36(a0)
	beq.s loc_20c1de
	cmpi.b #$2,$36(a0)
	beq.s loc_20c1e4
	move.w #$280,d0
	bra.s loc_20c1e8
loc_20c1de:
	move.w #$500,d0
	bra.s loc_20c1e8
loc_20c1e4:
	move.w #$1aa,d0
loc_20c1e8:
	move.w d0,$34(a0)
	cmp.w $10(a0),d0
	blt.s loc_20c1f4
	neg.w d0
loc_20c1f4:
	move.w d0,$30(a0)
	move.b #$6,$24(a0)
	move.b #$5,$1c(a0)
	bra.w loc_20c22a
loc_20c208:
	move.b #$a,$24(a0)
	bra.w sub_20c226
loc_20c212:
	move.b #$c,$24(a0)
	bra.w sub_20c226
loc_20c21c:
	move.b #$e,$24(a0)
	bra.w sub_20c226

sub_20c226:
	clr.w $3c(a0)
loc_20c22a:
	clr.b $2d(a0)
	clr.w $2a(a0)
	rts
	bsr.w sub_20ce68
	bsr.w sub_20ca0e
	lea (dat_20c246).l,a3
	bra.w loc_20cee0
dat_20c246:
	dc.b $00,$00,$00,$08,$00,$3c,$00,$22
	move.b #$4,$1c(a0)
	move.w #$c9,d0
	movem.l a0-a2,-(a7)
	jsr (sub_202346).l
	movem.l (a7)+,a0-a2
	rts
	move.w $8(a1),d5
	sub.w $8(a0),d5
	bmi.s loc_20c27a
	bset.b #$6,$2c(a0)
	bra.s loc_20c212
loc_20c27a:
	bclr.b #$6,$2c(a0)
	bra.s loc_20c21c
	bsr.w sub_20ce68
	bsr.w sub_20ca0e
	lea (dat_20c294).l,a3
	bra.w loc_20cee0
dat_20c294:
	.incbin 49812, 16
	move.w #$ca,d0
	movem.l a0-a2,-(a7)
	jsr (sub_202346).l
	movem.l (a7)+,a0-a2
	move.w #$8,$30(a0)
	move.w #$600,$34(a0)
	move.b #$8,$1c(a0)
	rts
	move.b #$9,$1c(a0)
	rts
	move.b #$bc,$20(a0)
	move.b #$2,$21(a0)
	rts
	clr.b $20(a0)
	clr.b $21(a0)
	move.w $8(a1),d0
	cmp.w $8(a0),d0
	bgt.s loc_20c2f6
	bra.w loc_20c188
loc_20c2f6:
	bra.w loc_20c1c8
	.incbin 49914, 394
	lea ($d000).w,a1
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c4b0(pc,d0.w),d0
	jsr dat_20c4b0(pc,d0.w)
	bsr.w sub_20c97c
	bsr.w sub_20c940
	lea (dat_20d0d8).l,a1
	jsr (sub_205b56).l
	jmp (sub_20394c).l
dat_20c4b0:
	dc.b $00,$0a,$00,$66,$01,$86,$02,$60
	dc.b $02,$8e
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$24,$19(a0)
	move.b #$24,$16(a0)
	move.w #$300,$2(a0)
	move.l #$20d0de,$4(a0)
	addq.b #$7,($f7a7).w
	move.b #$7,($f7aa).w
	movem.l d7/a0-a7,-(a7)
	move.w #$6,d0
	jsr (sub_200590).l
	movem.l (a7)+,d7/a0-a7
	move.b #$2,$24(a0)
	bsr.w sub_20cfbc
	bset.b #$3,$2c(a0)
	bsr.w sub_20cf98
	bsr.w sub_20cffa
	rts
	bsr.w sub_20c9fc
	moveq #$0,d0
	move.b $2d(a0),d0
	add.b d0,d0
	move.w dat_20c52a(pc,d0.w),d0
	jmp dat_20c52a(pc,d0.w)
dat_20c52a:
	dc.b $00,$0c,$00,$78,$09,$a0,$00,$aa
	dc.b $09,$a0,$00,$dc
	andi.b #$f0,$38(a0)
	addq.b #$1,$38(a0)
	cmpi.w #$be0,$8(a1)
	blt.w loc_20c580
	move.w #$fa00,$10(a0)
	move.w #$0,$30(a0)
	addq.b #$1,$2d(a0)
	bset.b #$0,$22(a0)
	move.w #$b40,d0
	move.w d0,($f728).w
	move.w d0,($f720).w
	move.w #$67,d0
	movem.l a0-a2,-(a7)
	jsr (sub_205b16).l
	movem.l (a7)+,a0-a2
	rts
loc_20c580:
	move.w $8(a1),d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.w loc_20c634
	cmpi.w #$b40,d0
	bgt.w loc_20c634
	move.w d0,($f728).w
	move.w d0,($f720).w
	rts
	bsr.w sub_20cea0
	move.w #$b18,d0
	cmp.w $8(a0),d0
	blt.w loc_20c634
	move.w d0,$8(a0)
	move.w #$600,$10(a0)
	move.w #$0,$30(a0)
	addq.b #$1,$2d(a0)
	bclr.b #$0,$22(a0)
	move.w #$78,$2a(a0)
	rts
	bsr.w sub_20cea0
	move.w #$ca8,d0
	cmp.w $8(a0),d0
	bgt.w loc_20c634
	move.w d0,$8(a0)
	move.w #$fa00,$10(a0)
	move.w #$0,$30(a0)
	bset.b #$0,$22(a0)
	addq.b #$1,$2d(a0)
	move.w #$78,$2a(a0)
	rts
	bsr.w sub_20cea0
	move.w #$c20,d0
	cmp.w $8(a0),d0
	blt.s loc_20c634
	move.w d0,$8(a0)
	clr.w $10(a0)
	clr.w $30(a0)
	clr.b $2d(a0)
	clr.w $2a(a0)
	bclr.b #$3,$2c(a0)
	move.b #$4,$24(a0)
loc_20c634:
	rts
	bsr.w sub_20cea0
	move.w #$b00,d0
	cmp.w $8(a0),d0
	blt.w loc_20c64a
	move.w d0,$8(a0)
loc_20c64a:
	bsr.w sub_20c9fc
	lea (dat_20c658).l,a3
	bra.w loc_20cee0
dat_20c658:
	.incbin 50776, 48
	movea.w $2e(a0),a2
	move.b #$4,$24(a2)
	clr.w $2a(a2)
	clr.b $2d(a2)
	rts
	bset.b #$6,$2c(a0)
	bset.b #$5,$2c(a0)
	rts

sub_20c6aa:
	bset.b #$6,$2c(a0)
	bclr.b #$5,$2c(a0)
	rts
	bclr.b #$6,$2c(a0)
	bclr.b #$5,$2c(a0)
	rts
	bset.b #$3,$2c(a0)
	move.w #$fe00,$10(a0)
	clr.w $30(a0)
	rts
	bsr.s sub_20c6aa
	move.b #$6,$24(a0)
	bset.b #$4,$2c(a0)
	move.w #$200,$10(a0)
	move.w #$200,$34(a0)
	move.w #$2,$30(a0)
	clr.w $12(a0)
	clr.w $32(a0)
	bclr.b #$0,$22(a0)
	clr.b $2d(a0)
	clr.w $2a(a0)
	rts
	move.w #$3e50,d0
	cmp.w $8(a0),d0
	ble.s loc_20c726
	bsr.w sub_20ce68
	bsr.w sub_20c8a6
	bra.w sub_20c9fc
loc_20c726:
	move.w d0,$8(a0)
	move.b #$8,$24(a0)
	clr.b $2d(a0)
	clr.w $10(a0)
	clr.w $12(a0)
	rts
	.incbin 51006, 360

sub_20c8a6:
	move.b $19(a0),d0
	move.w $8(a0),d1
	sub.w ($f700).w,d1
	add.w d0,d1
	bge.s loc_20c8d2
	addq.w #$1,$3c(a0)
	bsr.w sub_20c8fe
	tst.w $3a(a0)
	beq.s loc_20c8ca
	subq.w #$1,$3a(a0)
	rts
loc_20c8ca:
	bclr.b #$2,$2c(a0)
	rts
loc_20c8d2:
	clr.w $3c(a0)
	bsr.w sub_20c8fe
	bset.b #$2,$2c(a0)
	beq.s loc_20c8e4
	rts
loc_20c8e4:
	move.w #$f0,$3a(a0)
	move.w #$100,d1
	move.w $10(a1),d0
	cmp.w d1,d0
	bge.s loc_20c8f8
	move.w d1,d0
loc_20c8f8:
	move.w d0,$10(a0)
	rts

sub_20c8fe:
	cmpi.w #$ff60,d1
	ble.s loc_20c920
	cmpi.w #$3100,$8(a1)
	bge.s loc_20c91c
	cmpi.w #$dc0,$8(a1)
	bge.s loc_20c918
	moveq #$0,d0
	bra.s loc_20c922
loc_20c918:
	moveq #$4,d0
	bra.s loc_20c922
loc_20c91c:
	moveq #$8,d0
	bra.s loc_20c922
loc_20c920:
	moveq #$c,d0
loc_20c922:
	lea dat_20c930(pc,d0.w),a3
	move.w (a3)+,$34(a0)
	move.w (a3),$30(a0)
	rts
dat_20c930:
	.incbin 51504, 16

sub_20c940:
	btst.b #$4,$2c(a0)
	beq.s loc_20c97a
	lea ($d000).w,a3
	tst.b (a3)
	beq.s loc_20c97a
	cmpi.b #$6,$24(a3)
	bcc.s loc_20c97a
	move.w $8(a3),d0
	sub.w $8(a0),d0
	cmpi.w #$10,d0
	bgt.s loc_20c97a
	movem.l a0-a2,-(a7)
	movea.l a3,a0
	bset.b #$7,$22(a0)
	bsr.w sub_206faa
	movem.l (a7)+,a0-a2
loc_20c97a:
	rts

sub_20c97c:
	tst.b $38(a0)
	bge.s loc_20c9b4
	move.w $8(a0),d0
	subq.w #$8,d0
	cmpi.w #$3da0,d0
	ble.s loc_20c992
	move.w #$3da0,d0
loc_20c992:
	move.w d0,($f728).w
	move.w d0,($f720).w
	move.w $8(a1),d0
	sub.w ($f728).w,d0
	subi.w #$a0,d0
	bge.s loc_20c9b4
	addi.w #$a0,d0
	andi.w #$fffe,d0
	move.w d0,($f7a0).w
loc_20c9b4:
	move.b $38(a0),d0
	andi.w #$f,d0
	add.b d0,d0
	move.w dat_20c9c6(pc,d0.w),d0
	jmp dat_20c9c6(pc,d0.w)
dat_20c9c6:
	dc.b $00,$08,$00,$0a,$00,$18,$00,$26
	rts
	move.w #$b40,d0
	move.w d0,($f72a).w
	move.w d0,($f722).w
	rts
	move.w #$3da0,d0
	move.w d0,($f72a).w
	move.w d0,($f722).w
	rts
	.incbin 51692, 16

sub_20c9fc:
	addi.w #$80,$c(a0)
	bsr.w sub_20ca64
	subi.w #$80,$c(a0)
	rts

sub_20ca0e:
	addi.w #$0,$c(a0)
	bsr.w sub_20ca20
	subi.w #$0,$c(a0)
	rts

sub_20ca20:
	movem.l a1-a2,-(a7)
	jsr (sub_206a7c).l
	movem.l (a7)+,a1-a2
	cmpi.w #$8,d1
	ble.s loc_20ca4e
	bsr.w sub_20ca8e
	beq.s loc_20ca4e
	addi.w #$30,$28(a0)
	move.w $28(a0),d1
	ext.l d1
	lsl.l #$8,d1
	add.l d1,$c(a0)
	bra.s loc_20ca62
loc_20ca4e:
	clr.w $28(a0)
	bra.s loc_20ca5e
	dc.b $0c,$41,$ff,$f8,$6c,$04,$61,$00
	dc.b $00,$32
loc_20ca5e:
	add.w d1,$c(a0)
loc_20ca62:
	rts

sub_20ca64:
	movem.l a1-a2,-(a7)
	jsr (sub_206a7c).l
	movem.l (a7)+,a1-a2
	cmpi.w #$8,d1
	ble.s loc_20ca7e
	bsr.w sub_20ca8e
	bra.s loc_20ca88
loc_20ca7e:
	cmpi.w #$fff8,d1
	bge.s loc_20ca88
	bsr.w sub_20ca8e
loc_20ca88:
	add.w d1,$c(a0)
	rts

sub_20ca8e:
	lea (dat_20caba).l,a2
loc_20ca94:
	move.w (a2)+,d2
	bmi.w loc_20cab8
	move.w (a2)+,d3
	move.w (a2)+,d4
	sub.w $8(a0),d2
	bgt.s loc_20caa6
	neg.w d2
loc_20caa6:
	cmpi.w #$40,d2
	bgt.s loc_20ca94
	add.w d3,$8(a0)
	add.w d4,$c(a0)
	clr.w d1
	rts
loc_20cab8:
	rts
dat_20caba:
	.incbin 51898, 86
	movea.w $2e(a0),a2
	tst.b (a2)
	beq.s loc_20cb26
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cb2c(pc,d0.w),d0
	jmp dat_20cb2c(pc,d0.w)
loc_20cb26:
	jmp (sub_2039f8).l
dat_20cb2c:
	dc.b $00,$08,$00,$86,$01,$48,$01,$68
	tst.b $28(a0)
	bne.s loc_20cb68
	move.b #$4,$1(a0)
	move.b #$2,$18(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.w #$2300,$2(a0)
	move.l #$20d140,$4(a0)
	move.b #$2,$24(a0)
	rts
loc_20cb68:
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$680,$2(a0)
	move.l #$21e514,$4(a0)
	cmpi.b #$2,$28(a0)
	beq.s loc_20cba4
	move.b #$4,$24(a0)
	move.b #$f,$2a(a0)
	rts
loc_20cba4:
	move.b #$6,$24(a0)
	move.b #$1e,$2a(a0)
	rts
	clr.w $20(a0)
	btst.b #$5,$2c(a2)
	beq.s loc_20cbca
	move.b #$be,$20(a0)
	move.b #$2,$21(a0)
loc_20cbca:
	bsr.w sub_20cc0e
	beq.s loc_20cc08
	tst.b $29(a0)
	beq.s loc_20cbf6
	subq.b #$1,$2a(a0)
	bcc.s loc_20cbe6
	bsr.w sub_20d04a
	move.b #$a,$2a(a0)
loc_20cbe6:
	subq.b #$1,$2b(a0)
	bcc.s loc_20cbf6
	bsr.w sub_20d0a8
	move.b #$9,$2b(a0)
loc_20cbf6:
	lea (dat_20d13a).l,a1
	jsr (sub_205b56).l
	jmp (sub_20394c).l
loc_20cc08:
	clr.w $2a(a0)
	rts

sub_20cc0e:
	move.w $8(a2),$8(a0)
	move.w $c(a2),$c(a0)
	move.w $36(a0),d0
	move.w $38(a0),d1
	add.w d1,$c(a0)
	btst.b #$0,$22(a2)
	bne.s loc_20cc3a
	bclr.b #$0,$22(a0)
	add.w d0,$8(a0)
	bra.s loc_20cc44
loc_20cc3a:
	bset.b #$0,$22(a0)
	sub.w d0,$8(a0)
loc_20cc44:
	bclr.b #$5,$2c(a0)
	btst.b #$5,$2c(a2)
	beq.s loc_20cc58
	bset.b #$5,$2c(a0)
loc_20cc58:
	btst.b #$6,$2c(a2)
	beq.s loc_20cc6a
	bset.b #$6,$2c(a0)
	moveq #$ffffffff,d0
	rts
loc_20cc6a:
	bclr.b #$6,$2c(a0)
	moveq #$0,d0
	rts
	bsr.s sub_20cc0e
	bsr.w sub_20ced2
	tst.b $2d(a0)
	beq.s loc_20cc90
	clr.b $2d(a0)
	move.b #$6,$24(a0)
	move.b #$f,$2a(a0)
loc_20cc90:
	bra.w loc_20cca4
	bsr.w sub_20ced2
	tst.b $2d(a0)
	beq.s loc_20cca4
	jmp (sub_2039f8).l
loc_20cca4:
	lea (dat_20ccb6).l,a1
	jsr (sub_205b56).l
	jmp (sub_20394c).l
dat_20ccb6:
	dc.b $00,$02,$05,$00,$01,$02,$03,$04
	dc.b $ff,$00
	bset.b #$0,$24(a0)
	bne.w loc_20cd30
	move.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$4,$19(a0)
	move.b #$4,$16(a0)
	move.w #$451c,$2(a0)
	move.l #$20d3d6,$4(a0)
	jsr (sub_202134).l
	andi.l #$ffff,d0
	ext.l d0
	move.l d0,d1
	andi.l #$7fff,d0
	divs.w #$1c0,d1
	swap d1
	add.w d1,$10(a0)
	move.w #$fe80,$12(a0)
	move.w #$10,$32(a0)
	move.w d0,d1
	andi.w #$f,d1
	add.w d1,$32(a0)
	andi.b #$3,d0
	move.b d0,$1a(a0)
	rts
loc_20cd30:
	bsr.w sub_20cea0
	move.w $c(a0),d0
	move.w ($f704).w,d1
	addi.w #$e8,d1
	sub.w d1,d0
	bgt.s loc_20cd4a
	jmp (sub_20394c).l
loc_20cd4a:
	jmp (sub_2039f8).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cd5e(pc,d0.w),d0
	jmp dat_20cd5e(pc,d0.w)
dat_20cd5e:
	dc.b $00,$04,$00,$4e
	move.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$14,$19(a0)
	move.b #$8,$16(a0)
	move.w #$2300,$2(a0)
	move.l #$20d160,$4(a0)
	tst.b $28(a0)
	bne.s loc_20cd9c
	move.w #$ffcd,$36(a0)
	move.w #$1a,$38(a0)
	bra.s loc_20cda8
loc_20cd9c:
	move.w #$ffd0,$36(a0)
	move.w #$fff2,$38(a0)
loc_20cda8:
	addq.b #$2,$24(a0)
	movea.w $2e(a0),a2
	tst.b (a2)
	beq.w loc_20cdfe
	btst.b #$3,$2c(a2)
	beq.w loc_20ce04
	move.b $22(a2),$22(a0)
	move.w $8(a2),$8(a0)
	move.w $c(a2),$c(a0)
	move.w $36(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20cde0
	neg.w d0
loc_20cde0:
	add.w d0,$8(a0)
	move.w $38(a0),d0
	add.w d0,$c(a0)
	lea (dat_20d150).l,a1
	jsr (sub_205b56).l
	jmp (sub_20394c).l
loc_20cdfe:
	jmp (sub_2039f8).l
loc_20ce04:
	rts
	.incbin 52742, 98

sub_20ce68:
	move.w $32(a0),d0
	add.w d0,$12(a0)
	move.w $30(a0),d0
	add.w d0,$10(a0)
	tst.w $30(a0)
	beq.s loc_20ceb0
	bmi.s loc_20ce90
	move.w $34(a0),d0
	cmp.w $10(a0),d0
	bgt.s loc_20ceb0
	move.w d0,$10(a0)
	bra.s loc_20ceb0
loc_20ce90:
	move.w $34(a0),d0
	cmp.w $10(a0),d0
	blt.s loc_20ceb0
	move.w d0,$10(a0)
	bra.s loc_20ceb0

sub_20cea0:
	move.w $30(a0),d0
	add.w d0,$10(a0)
	move.w $32(a0),d0
	add.w d0,$12(a0)
loc_20ceb0:
	move.w $10(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$8(a0)
	move.w $12(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$c(a0)
	rts
	subq.w #$1,$2a(a0)
	beq.s loc_20ceda
	rts

sub_20ced2:
	subq.b #$1,$2a(a0)
	beq.s loc_20ceda
	rts
loc_20ceda:
	addq.b #$1,$2d(a0)
	rts
loc_20cee0:
	moveq #$0,d0
	move.b $2d(a0),d0
	add.b d0,d0
	add.b d0,d0
	move.w $0(a3,d0.w),d0
	cmp.w $2a(a0),d0
	beq.s loc_20cefa
	addq.w #$1,$2a(a0)
	rts
loc_20cefa:
	addq.w #$1,$2a(a0)
	moveq #$0,d0
	move.b $2d(a0),d0
	addq.b #$1,$2d(a0)
	add.b d0,d0
	add.b d0,d0
	move.w $2(a3,d0.w),d0
	adda.w d0,a3
	jmp (a3)

sub_20cf14:
	moveq #$9,d3
loc_20cf16:
	movem.l d3,-(a7)
	jsr (sub_20782c).l
	movem.l (a7)+,d3
	bne.s loc_20cf82
	move.l d3,d0
	divs.w #$5,d0
	swap d0
	move.b d0,$1a(a1)
	move.w a0,$2e(a1)
	move.b #$31,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	jsr (sub_202134).l
	andi.l #$ffff,d0
	ext.l d0
	move.l d0,d1
	ori.l #$ffff8000,d1
	divs.w #$280,d1
	swap d1
	move.w d1,$10(a1)
	move.w #$fe00,$12(a1)
	move.w #$c,$32(a1)
	move.w d0,d1
	andi.w #$f,d1
	add.w d1,$32(a1)
	dbf d3,loc_20cf16
loc_20cf82:
	rts
	.incbin 53124, 20

sub_20cf98:
	jsr (sub_20782c).l
	bne.s loc_20cfba
	move.w a0,$2e(a1)
	move.w a1,$2e(a0)
	move.b #$2f,$0(a1)
	move.w #$c30,$8(a1)
	move.w #$1cd,$c(a1)
loc_20cfba:
	rts

sub_20cfbc:
	jsr (sub_20782c).l
	bne.s loc_20cff8
	move.w a0,$2e(a1)
	move.b #$2d,$0(a1)
	move.b #$0,$28(a1)
	move.b #$0,$1c(a1)
	jsr (sub_20782c).l
	bne.s loc_20cff8
	move.w a0,$2e(a1)
	move.b #$2d,$0(a1)
	move.b #$1,$28(a1)
	move.b #$1,$1c(a1)
loc_20cff8:
	rts

sub_20cffa:
	moveq #$3,d2
	movea.l a0,a3
loc_20cffe:
	jsr (sub_20782c).l
	bne.w loc_20d048
	move.w a3,$2e(a1)
	move.w a0,$3a(a1)
	move.b #$2e,$0(a1)
	movea.l a1,a3
	cmpi.w #$3,d2
	beq.s loc_20d038
	tst.w d2
	beq.s loc_20d024
	bra.s loc_20d02a
loc_20d024:
	move.b #$1,$29(a1)
loc_20d02a:
	move.w #$2,$36(a1)
	move.w #$20,$38(a1)
	bra.s loc_20d044
loc_20d038:
	move.w #$0,$36(a1)
	move.w #$34,$38(a1)
loc_20d044:
	dbf d2,loc_20cffe
loc_20d048:
	rts

sub_20d04a:
	jsr (sub_20782c).l
	bne.s loc_20d06e
	move.w a0,$2e(a1)
	move.b #$2e,$0(a1)
	move.b #$1,$28(a1)
	move.w #$2,$36(a1)
	move.w #$10,$38(a1)
loc_20d06e:
	rts
	.incbin 53360, 56

sub_20d0a8:
	jsr (sub_20782c).l
	bne.s loc_20d0d6
	move.b #$37,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addq.w #$2,$8(a1)
	addi.w #$10,$c(a1)
	movea.w $3a(a0),a2
	move.w $10(a2),$10(a1)
loc_20d0d6:
	rts
dat_20d0d8:
	.incbin 53464, 98
dat_20d13a:
	.incbin 53562, 22
dat_20d150:
	.incbin 53584, 76
dat_20d19c:
	.incbin 53660, 602
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d40a(pc,d0.w),d0
	jsr dat_20d40a(pc,d0.w)
	jmp (sub_20394c).l
dat_20d40a:
	dc.b $00,$06,$00,$7a,$01,$2c
	move.b #$4,$1(a0)
	move.b #$0,$18(a0)
	move.w #$451c,$2(a0)
	move.l #$20d56e,$4(a0)
	addq.b #$2,$24(a0)
	tst.b $28(a0)
	bne.s loc_20d450
	jsr (sub_20782c).l
	bne.s loc_20d450
	move.b #$36,$0(a1)
	move.b #$1,$28(a1)
	move.w a1,$2e(a0)
	move.w a0,$2e(a1)
loc_20d450:
	tst.b $28(a0)
	bne.s loc_20d46a
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.b #$2,$24(a0)
	rts
loc_20d46a:
	move.b #$1,$1a(a0)
	move.b #$8,$19(a0)
	move.b #$70,$16(a0)
	move.b #$4,$24(a0)
	rts
	bsr.w sub_20d4fa
	move.w d0,$30(a0)
	move.w #$160,$32(a0)
	move.w ($f704).w,d0
	subi.w #$160,d0
	ext.l d0
	divs.w #$3,d0
	sub.w d0,$32(a0)
	move.w $32(a0),d0
	addi.w #$c,d0
	move.w ($f704).w,d1
	cmp.w d0,d1
	bge.s loc_20d4d4
	move.w $30(a0),$8(a0)
	move.w $32(a0),$c(a0)
	move.b #$0,$1a(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	rts
loc_20d4d4:
	move.w $30(a0),$8(a0)
	move.w $32(a0),$c(a0)
	addi.w #$15c,$c(a0)
	move.b #$1,$1a(a0)
	move.b #$8,$19(a0)
	move.b #$70,$16(a0)
	rts

sub_20d4fa:
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
	divu.w #$140,d0
	cmpi.w #$30,d0
	ble.s loc_20d510
	move.w #$0,d0
loc_20d510:
	move.l d0,d1
	addq.w #$1,d0
	andi.l #$ffff,d0
	mulu.w #$140,d0
	addi.w #$100,d0
	swap d1
	andi.l #$ffff,d1
	mulu.w #$100,d1
	divu.w #$140,d1
	sub.w d1,d0
	rts
	movea.w $2e(a0),a1
	move.w $30(a1),$8(a0)
	move.w $32(a1),$c(a0)
	addi.w #$7c,$c(a0)
	rts
	.incbin 54606, 4156
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	add.w d5,$8(a1)
	add.w d6,$c(a1)
	move.w #$9e,d0
	jsr (sub_202346).l
	rts
	.incbin 58794, 1440
	tst.b $24(a0)
	bne.s loc_20eb8e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$450c,$2(a0)
	move.l #$20eca4,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20ebb4(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20eb8e:
	tst.b $29(a0)
	beq.s loc_20eb98
	bsr.w sub_20ebc0
loc_20eb98:
	lea ($d000).w,a1
	jsr (sub_207ca8).l
	beq.s loc_20eba8
	clr.b $20(a1)
loc_20eba8:
	jsr (sub_20394c).l
	jmp (loc_20784c).l
dat_20ebb4:
	dc.b $0b,$10,$20,$10,$30,$10,$40,$10
	dc.b $0b,$20,$0b,$30

sub_20ebc0:
	btst.b #$7,($f7a7).w
	beq.s loc_20ec06
	tst.w $2a(a0)
	bne.s loc_20ebf0
	move.w #$20,d0
	move.w #$200,d1
	btst.b #$7,$29(a0)
	beq.s loc_20ebe2
	neg.w d0
	neg.w d1
loc_20ebe2:
	move.w d1,$12(a0)
	move.w $c(a0),$2a(a0)
	add.w d0,$2a(a0)
loc_20ebf0:
	move.w $12(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$c(a0)
	move.w $c(a0),d0
	cmp.w $2a(a0),d0
	beq.s loc_20ec08
loc_20ec06:
	rts
loc_20ec08:
	clr.w $2a(a0)
	move.b $29(a0),d0
	andi.b #$f,d0
	subq.b #$1,d0
	beq.w loc_20ec88
	andi.b #$f0,$29(a0)
	add.b d0,$29(a0)
	btst.b #$5,$29(a0)
	bne.s loc_20ec86
	btst.b #$4,$29(a0)
	beq.s loc_20ec4e
	addq.b #$1,$1a(a0)
	cmpi.b #$1,$1a(a0)
	bne.s loc_20ec46
	move.b #$4,$1a(a0)
loc_20ec46:
	subi.w #$10,$c(a0)
	bra.s loc_20ec66
loc_20ec4e:
	subq.b #$1,$1a(a0)
	cmpi.b #$3,$1a(a0)
	bne.s loc_20ec60
	move.b #$0,$1a(a0)
loc_20ec60:
	addi.w #$10,$c(a0)
loc_20ec66:
	moveq #$0,d0
	move.b $1a(a0),d0
	add.w d0,d0
	lea (dat_20ebb4).l,a1
	adda.w d0,a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20ec86:
	rts
loc_20ec88:
	bclr.b #$7,($f7a7).w
	btst.b #$6,$29(a0)
	beq.s loc_20ec9c
	clr.b $29(a0)
	rts
loc_20ec9c:
	addq.l #$4,a7
	jmp (sub_2039f8).l
	.incbin 60580, 94
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ed10(pc,d0.w),d0
	jmp dat_20ed10(pc,d0.w)
dat_20ed10:
	dc.b $00,$06,$00,$64,$01,$b2
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4fc,$2(a0)
	move.l #$20eef4,$4(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$c,$16(a0)
	move.b #$2f,d0
	bsr.w sub_20eeda
	bne.s loc_20ed6e
	move.w a1,$2a(a0)
	moveq #$0,d1
	move.w $8(a0),d0
	move.b $19(a0),d1
	sub.w d1,d0
	sub.w $8(a1),d0
	move.b $19(a1),d1
	sub.w d1,d0
	blt.s loc_20ed6e
	bra.s loc_20ed74
loc_20ed6e:
	jmp (sub_2039f8).l
loc_20ed74:
	tst.w $2a(a0)
	beq.s loc_20ed96
	movea.w $2a(a0),a1
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bge.s loc_20ed8a
	neg.w d0
loc_20ed8a:
	moveq #$0,d1
	move.b $19(a0),d1
	cmp.w d1,d0
	blt.w loc_20ee0a
loc_20ed96:
	lea ($d000).w,a1
	jsr (sub_207ca8).l
	beq.s loc_20edfe
	clr.b $20(a1)
	clr.b $35(a0)
	btst.b #$3,$22(a1)
	beq.s loc_20edfe
	move.b #$1,$35(a0)
	tst.b ($ff151f).l
	bne.s loc_20edfe
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	beq.s loc_20edfc
	tst.w $30(a0)
	bne.s loc_20edfc
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206f0a).l
	movea.l (a7)+,a0
	lea ($d000).w,a1
	jsr (sub_207b5a).l
	bra.s loc_20edfe
loc_20edfc:
	movea.l (a7)+,a0
loc_20edfe:
	jsr (sub_20394c).l
	jmp (loc_20784c).l
loc_20ee0a:
	move.w #$a3,d0
	movem.l a0-a2,-(a7)
	jsr (sub_202346).l
	movem.l (a7)+,a0-a2
	moveq #$fffffff4,d4
	moveq #$3,d3
	lea (dat_20eea2).l,a2
loc_20ee26:
	jsr (sub_207816).l
	bne.s loc_20ee8c
	move.b #$32,$0(a1)
	move.b #$4,$24(a1)
	move.b #$1,$1a(a1)
	move.b #$4,$1(a1)
	move.b #$5,$18(a1)
	move.b #$4,$19(a1)
	move.b #$10,$16(a1)
	move.w #$4fc,$2(a1)
	move.l #$20eef4,$4(a1)
	move.w $8(a0),$8(a1)
	add.w d4,$8(a1)
	move.w $c(a0),$c(a1)
	move.w (a2)+,$10(a1)
	move.w (a2)+,$12(a1)
	move.w (a2)+,$30(a1)
	move.w (a2)+,$32(a1)
	addq.w #$8,d4
	dbf d3,loc_20ee26
loc_20ee8c:
	tst.b $35(a0)
	beq.s loc_20ee9c
	lea ($d000).w,a1
	jsr (sub_207b5a).l
loc_20ee9c:
	jmp (sub_2039f8).l
dat_20eea2:
	.incbin 61090, 32
	bsr.w sub_20cea0
	eori.b #$1,$34(a0)
	beq.s loc_20eed4
	jsr (sub_20394c).l
loc_20eed4:
	jmp (loc_20784c).l

sub_20eeda:
	lea ($d080).w,a1
	moveq #$7d,d1
loc_20eee0:
	cmp.b $0(a1),d0
	bne.s loc_20eee8
	rts
loc_20eee8:
	adda.w #$40,a1
	dbf d1,loc_20eee0
	moveq #$ffffffff,d1
	rts
	.incbin 61172, 1602

sub_20f536:
	jmp (loc_2063ca).l
dat_20f53c:
	.incbin 62780, 16
dat_20f54c:
	.incbin 62796, 1576
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
	jsr (sub_2094bc).l
	sne $2a(a0)
	bra.s loc_20fbd2
loc_20fbbe:
	tst.b $2a(a0)
	beq.s loc_20fbd2
	clr.b $2a(a0)
	lea ($d000).w,a1
	jsr ($20936e).l
loc_20fbd2:
	jsr (sub_2038cc).l
	jmp (loc_207928).l
	.incbin 64478, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20fc06(pc,d0.w),d0
	jsr dat_20fc06(pc,d0.w)
	move.w $36(a0),d0
	jmp (dat_20792c).l
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
	jmp (dat_20634a).l
	.incbin 65178, 58982
dat_21e500:
	.incbin 124160, 6912
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 4840
dat_2343a4:
	.incbin 213924, 256
dat_2344a4:
	.incbin 214180, 4096
dat_2354a4:
	.incbin 218276, 4896
dat_2367c4:
	.incbin 223172, 38972
