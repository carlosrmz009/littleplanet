; R72C__.MMD
; disassembled from the disc; code only, data comes from data/R72C__.MMD at build time
	.file "R72C__.MMD", 262144

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
	bsr.w sub_2007be
	bsr.s sub_20034a
	bsr.w sub_2024fc
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
	bsr.w sub_2007be
	bsr.s sub_2003da
	bsr.w sub_2024fc
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
	bsr.w sub_2007be
	bsr.s sub_200472
	bsr.w sub_2024fc
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
	bsr.w sub_2007be
	bsr.s sub_200506
	bsr.w sub_2024fc
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
	.incbin 1504, 478

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
	lea (dat_2343a4).l,a2
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
	lea (dat_2344a4).l,a2
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
	lea (dat_2343a4).l,a2
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
	lea (dat_2344a4).l,a2
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
	lea (dat_2343a4).l,a2
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
	lea (dat_2354a4).l,a2
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
	lea (dat_2343a4).l,a2
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
	lea (dat_2354a4).l,a2
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
	bsr.w sub_2076f0
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
	bsr.w sub_2004e6
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
	bsr.w sub_2003ba
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
	lea (dat_20feaa).l,a2
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
	bsr.w sub_200590
	moveq #$3,d0
	bsr.w sub_200574
	bsr.w sub_202852
	bsr.w sub_20296c
	bset.b #$2,($f754).w
	bsr.w sub_2033f6
	bsr.w sub_2032ec
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
	jsr (sub_20fea4).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201864
loc_20185e:
	bsr.w sub_200438
	bra.s loc_201872
loc_201864:
	bclr.b #$0,($ff0f22).l
	bne.s loc_20185e
	bsr.w sub_200318
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
	jsr (sub_205aa6).l
	bsr.w sub_2076f0
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
	jsr (sub_207706).l
	jsr (sub_2037fc).l
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
	bsr.w sub_20296c
loc_20195c:
	jsr (sub_2039a6).l
	tst.w ($ff190e).l
	bne.s loc_20196e
	bsr.w sub_200184
loc_20196e:
	jsr (sub_20d40c).l
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
	jmp (sub_205aa6).l
dat_201af4:
	.incbin 6900, 38

sub_201b1a:
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
	jmp (sub_205aa6).l
loc_201ba8:
	tst.b ($ff151f).l
	bne.s loc_201b9e
	tst.b ($ff1520).l
	bne.s loc_201b9e
	move.w #$90,d0
	jmp (sub_205aa6).l
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
	jmp (sub_205aa6).l
loc_201be4:
	tst.b ($ff151f).l
	bne.s loc_201bda
	tst.b ($ff1520).l
	bne.s loc_201bda
	move.w #$91,d0
	jmp (sub_205aa6).l
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
	bsr.w sub_2059c8
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
	jsr (sub_20fea4).l
	jsr (sub_20227a).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202ee2
	bsr.w sub_20256e
	jmp (loc_20af0c).l
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
	bsr.w sub_202ee2
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
	bsr.w sub_2059c8
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
	lea (dat_20feba).l,a1
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
	.incbin 9410, 44

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
	lea (dat_20feba).l,a1
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
	.incbin 9780, 542

sub_202852:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2028ae).l,a0
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
	bra.w loc_2028ba
dat_2028ae:
	dc.b $00,$04,$00,$00,$2e,$97,$00,$00
	dc.b $05,$10,$00,$60
loc_2028ba:
	tst.b ($ff1522).l
	beq.s loc_2028da
	jsr (sub_2067d8).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_2028d8
	moveq #$0,d0
loc_2028d8:
	bra.s loc_2028f0
loc_2028da:
	lea (dat_20292c).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2028f0:
	subi.w #$a0,d1
	bcc.s loc_2028f8
	moveq #$0,d1
loc_2028f8:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202902
	move.w d2,d1
loc_202902:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20290e
	moveq #$0,d0
loc_20290e:
	cmp.w ($f72e).w,d0
	blt.s loc_202918
	move.w ($f72e).w,d0
loc_202918:
	move.w d0,($f704).w
	bsr.w sub_202934
	lea (dat_202930).l,a1
	move.l (a1),($f7ac).w
	rts
dat_20292c:
	dc.b $00,$40,$02,$8c
dat_202930:
	dc.b $84,$86,$7f,$7f

sub_202934:
	swap d0
	lsr.l #$2,d0
	move.l d0,d2
	lsr.w #$3,d2
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

sub_20296c:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202978
	rts
loc_202978:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b58
	bsr.w sub_202bf8
	bsr.w sub_203490
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	move.l d4,d3
	asr.l #$1,d3
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_202e82
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202e4e
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e1a
	move.w ($f704).w,d0
	lsr.w #$2,d0
	move.w d0,d1
	lsr.w #$3,d1
	add.w d1,d0
	bsr.w sub_202dea
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
	bsr.w sub_202a86
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a28:
	move.w d0,(a1)+
	dbf d6,loc_202a28
	bsr.w sub_202aca
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202a3a:
	move.w d0,(a1)+
	dbf d6,loc_202a3a
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b16
dat_202a5e:
	.incbin 10846, 40

sub_202a86:
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
loc_202aaa:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202a5e(pc,d6.w),d5
loc_202ab4:
	move.w d0,-(a1)
	dbf d5,loc_202ab4
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202aaa
	adda.w #$5c,a1
	rts

sub_202aca:
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
loc_202af0:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b0c(pc,d6.w),d5
loc_202afa:
	move.w d0,(a1)+
	dbf d5,loc_202afa
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202af0
	rts
dat_202b0c:
	dc.b $07,$03,$03,$05,$03,$03,$00,$00
	dc.b $00,$00
loc_202b16:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b24(pc,d2.w)
loc_202b22:
	move.w (a2)+,d0
loc_202b24:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b22
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
	dbf d1,loc_202b22
	rts

sub_202b58:
	move.w ($f700).w,d4
	bsr.s sub_202b8c
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b8a
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b84
	bset.b #$2,($f754).w
	rts
loc_202b84:
	bset.b #$3,($f754).w
loc_202b8a:
	rts

sub_202b8c:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b9e
	bcs.s loc_202bce
	bra.s loc_202ba4
loc_202b9e:
	clr.w ($f73a).w
	rts
loc_202ba4:
	cmpi.w #$10,d0
	blt.s loc_202bae
	move.w #$10,d0
loc_202bae:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202bbc
	move.w ($f72a).w,d0
loc_202bbc:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202bce:
	cmpi.w #$fff0,d0
	bge.s loc_202bd8
	move.w #$fff0,d0
loc_202bd8:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202bbc
	move.w ($f728).w,d0
	bra.s loc_202bbc
	.incbin 11240, 16

sub_202bf8:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c0c
	subq.w #$5,d0
loc_202c0c:
	btst.b #$1,$22(a6)
	beq.s loc_202c2c
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c78
	subi.w #$40,d0
	bcc.s loc_202c78
	tst.b ($f75c).w
	bne.s loc_202c8a
	bra.s loc_202c38
loc_202c2c:
	sub.w ($f73e).w,d0
	bne.s loc_202c3e
	tst.b ($f75c).w
	bne.s loc_202c8a
loc_202c38:
	clr.w ($f73c).w
	rts
loc_202c3e:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c66
	move.w $14(a6),d1
	bpl.s loc_202c4e
	neg.w d1
loc_202c4e:
	cmpi.w #$800,d1
	bcc.s loc_202c78
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202cd8
	cmpi.w #$fffa,d0
	blt.s loc_202ca2
	bra.s loc_202c90
loc_202c66:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202cd8
	cmpi.w #$fffe,d0
	blt.s loc_202ca2
	bra.s loc_202c90
loc_202c78:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202cd8
	cmpi.w #$fff0,d0
	blt.s loc_202ca2
	bra.s loc_202c90
loc_202c8a:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c90:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202ce2
	bra.w loc_202cae
loc_202ca2:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cae:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d06
	cmpi.w #$ff00,d1
	bgt.s loc_202cd2
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d06
loc_202cd2:
	move.w ($f72c).w,d1
	bra.s loc_202d06
loc_202cd8:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202ce2:
	cmp.w ($f72e).w,d1
	blt.s loc_202d06
	subi.w #$800,d1
	bcs.s loc_202d02
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d06
loc_202d02:
	move.w ($f72e).w,d1
loc_202d06:
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
	bne.s loc_202d48
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d42
	bset.b #$0,($f754).w
	rts
loc_202d42:
	bset.b #$1,($f754).w
loc_202d48:
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
	bne.s loc_202d7e
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202d78
	bset.b #$2,($f756).w
	bra.s loc_202d7e
loc_202d78:
	bset.b #$3,($f756).w
loc_202d7e:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202db2
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202dac
	bset.b #$0,($f756).w
	rts
loc_202dac:
	bset.b #$1,($f756).w
loc_202db2:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202de8
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202de2
	bset.b #$4,($f756).w
	rts
loc_202de2:
	bset.b #$5,($f756).w
loc_202de8:
	rts

sub_202dea:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e18
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e12
	bset.b #$0,($f756).w
	rts
loc_202e12:
	bset.b #$1,($f756).w
loc_202e18:
	rts

sub_202e1a:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e4c
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e46
	bset.b d6,($f756).w
	bra.s loc_202e4c
loc_202e46:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e4c:
	rts

sub_202e4e:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e80
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e7a
	bset.b d6,($f758).w
	bra.s loc_202e80
loc_202e7a:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e80:
	rts

sub_202e82:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202eb4
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202eae
	bset.b d6,($f75a).w
	bra.s loc_202eb4
loc_202eae:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202eb4:
	rts
	.incbin 11958, 44

sub_202ee2:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202fa0
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203086
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203088
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f9e
	bclr.b #$0,(a2)
	beq.s loc_202f54
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032b4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20308a
loc_202f54:
	bclr.b #$1,(a2)
	beq.s loc_202f6e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032b4
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20308a
loc_202f6e:
	bclr.b #$2,(a2)
	beq.s loc_202f84
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032b4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030e0
loc_202f84:
	bclr.b #$3,(a2)
	beq.s loc_202f9e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032b4
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2030e0
loc_202f9e:
	rts

sub_202fa0:
	lea (dat_20336c).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202fbc
	bclr.b #$1,(a2)
	beq.s loc_203006
	move.w #$e0,d4
loc_202fbc:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203036(pc,d0.w),a3
	beq.s loc_202fee
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032b4
	movem.l (a7)+,d4-d5
	bsr.w sub_20308a
	movea.l (a7)+,a0
	bra.s loc_203006
loc_202fee:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032b6
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030b6
	movea.l (a7)+,a0
loc_203006:
	tst.b (a2)
	bne.s loc_20300c
	rts
loc_20300c:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203020
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203020:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203046
dat_203036:
	.incbin 12342, 16
loc_203046:
	moveq #$f,d6
	move.l #$800000,d7
loc_20304e:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20307a
	btst.b d0,(a2)
	beq.s loc_20307a
	add.w d0,d0
	movea.l dat_203036(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20318c
	movem.l (a7)+,d4-d5
	bsr.w sub_2032b4
	bsr.w sub_20310e
	movem.l (a7)+,d4-d5/a0
loc_20307a:
	addi.w #$10,d4
	dbf d6,loc_20304e
	clr.b (a2)
	rts

sub_203086:
	rts

sub_203088:
	rts

sub_20308a:
	moveq #$15,d6

sub_20308c:
	move.l #$800000,d7
	move.l d0,d1
loc_203094:
	movem.l d4-d5,-(a7)
	bsr.w sub_20318c
	move.l d1,d0
	bsr.w sub_20310e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203094
	rts

sub_2030b6:
	move.l #$800000,d7
	move.l d0,d1
loc_2030be:
	movem.l d4-d5,-(a7)
	bsr.w sub_20318e
	move.l d1,d0
	bsr.w sub_20310e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030be
	rts

sub_2030e0:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2030ea:
	movem.l d4-d5,-(a7)
	bsr.w sub_20318c
	move.l d1,d0
	bsr.w sub_20310e
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2030ea
	rts

sub_20310e:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20314a
	btst.b #$3,(a0)
	bne.s loc_20312a
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20312a:
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
loc_20314a:
	btst.b #$3,(a0)
	bne.s loc_20316c
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
loc_20316c:
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

sub_20318c:
	add.w (a3),d5

sub_20318e:
	add.w $4(a3),d4

sub_203192:
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
	beq.s loc_2031dc
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
loc_2031dc:
	rts
	.incbin 12766, 62
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_203192
	bne.s loc_203242
	movem.l (a7)+,d3-d5
	bra.s loc_20326c
loc_203242:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_203270
	bne.s loc_20326c
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_2032ba
	bsr.w sub_20310e
	movem.l (a7)+,d3-d5
loc_20326c:
	movea.l (a7)+,a0
	rts

sub_203270:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_2032b0
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_2032b0
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_2032b0
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_2032b0
	moveq #$0,d0
	rts
loc_2032b0:
	moveq #$1,d0
	rts

sub_2032b4:
	add.w (a3),d5

sub_2032b6:
	add.w $4(a3),d4

sub_2032ba:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13008, 28

sub_2032ec:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203316
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_20333e

sub_203316:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20331a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032b4
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20308c
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20331a
	rts
loc_20333e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203342:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20336c).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2033be
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203342
	rts
dat_20336c:
	.incbin 13164, 66
dat_2033ae:
	.incbin 13230, 16

sub_2033be:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033ae(pc,d0.w),a3
	beq.s loc_2033e0
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032b4
	movem.l (a7)+,d4-d5
	bsr.w sub_20308a
	bra.s loc_2033f4
loc_2033e0:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032b6
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030b6
loc_2033f4:
	rts

sub_2033f6:
	moveq #$0,d0
	lea (dat_20feaa).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202362
	movea.l (a2)+,a0
	bsr.w sub_203442
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200574
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203440
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203440
	bsr.w sub_202490
loc_203440:
	rts

sub_203442:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20344c:
	move.l d0,(a3)+
	dbf d1,loc_20344c
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203462
	lea ($a040).w,a3
	moveq #$2,d1

sub_203462:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2367c4).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20347c:
	move.w d1,d0
	movea.l a3,a0
loc_203480:
	move.b (a1)+,(a0)+
	dbf d0,loc_203480
	lea $80(a3),a3
	dbf d2,loc_20347c
	rts

sub_203490:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20350a(pc,d0.w),d0
	jsr dat_20350a(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2034b6
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2034b6:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2034e4
	bcc.s loc_2034e6
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2034da
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2034da:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2034e4:
	rts
loc_2034e6:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2034fe
	btst.b #$1,($d022).w
	beq.s loc_2034fe
	add.w d1,d1
	add.w d1,d1
loc_2034fe:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20350a:
	.incbin 13578, 416
	move.w #$710,($f726).w
	rts
	.incbin 14002, 154
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20375e(pc,d0.w),d0
	jmp dat_20375e(pc,d0.w)
dat_20375e:
	dc.b $00,$06,$00,$0e,$00,$16,$31,$fc
	dc.b $05,$10,$f7,$26,$4e,$75
	move.w #$710,($f726).w
	rts
	.incbin 14196, 136

sub_2037fc:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203804:
	move.b (a0),d0
	beq.s loc_20381a
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c1e).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20381a:
	lea $40(a0),a0
	dbf d7,loc_203804
	rts

sub_203824:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203862
	bpl.s loc_203854
	btst.b #$1,$2c(a0)
	beq.s loc_203854
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203862
loc_203854:
	btst.b #$2,$2c(a0)
	bne.s loc_203862
	addi.w #$38,$12(a0)
loc_203862:
	tst.w $12(a0)
	bmi.s loc_203876
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203876
	move.w #$1000,$12(a0)
loc_203876:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203886:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2038c2
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2038c2
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2038c0
	neg.w d1
loc_2038c0:
	add.w d1,d0
loc_2038c2:
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

sub_2038dc:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20394c
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203968
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203968
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203926
	cmpi.w #$800,d3
	bcs.s loc_203938
	subi.w #$800,d3
	bra.s loc_203938
loc_203926:
	cmpi.w #$700,($f704).w
	bcs.s loc_203938
	cmpi.w #$100,d3
	bcc.s loc_203938
	addi.w #$800,d3
loc_203938:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203968
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203968
loc_20394c:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203968
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203968:
	rts
	.incbin 14698, 30

sub_203988:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_20398e:
	move.l d1,(a1)+
	dbf d0,loc_20398e
	rts
dat_203996:
	.incbin 14742, 16

sub_2039a6:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2039b2:
	tst.w (a4)
	beq.w loc_203a72
	moveq #$2,d6
loc_2039ba:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a6a
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a20
	movea.l dat_203996(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a04
	cmpi.w #$800,d2
	bcs.s loc_203a16
	subi.w #$800,d2
	bra.s loc_203a16
loc_203a04:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a16
	cmpi.w #$100,d2
	bcc.s loc_203a16
	addi.w #$800,d2
loc_203a16:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a42
loc_203a20:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a42
	.incbin 14890, 24
loc_203a42:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a60
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a64
loc_203a60:
	bsr.w sub_203a94
loc_203a64:
	bset.b #$7,$1(a0)
loc_203a6a:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2039ba
loc_203a72:
	lea $80(a4),a4
	dbf d7,loc_2039b2
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a8c
	move.l #$0,(a2)
	rts
loc_203a8c:
	move.b #$0,-$5(a2)
	rts

sub_203a94:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203ada
	btst.l #$1,d4
	bne.w loc_203b28
loc_203aa6:
	cmpi.b #$50,d5
	beq.s loc_203ad8
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
	bne.s loc_203ad2
	addq.w #$1,d0
loc_203ad2:
	move.w d0,(a2)+
	dbf d1,loc_203aa6
loc_203ad8:
	rts
loc_203ada:
	btst.l #$1,d4
	bne.w loc_203b6e
loc_203ae2:
	cmpi.b #$50,d5
	beq.s loc_203b26
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
	bne.s loc_203b20
	addq.w #$1,d0
loc_203b20:
	move.w d0,(a2)+
	dbf d1,loc_203ae2
loc_203b26:
	rts
loc_203b28:
	cmpi.b #$50,d5
	beq.s loc_203b6c
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
	bne.s loc_203b66
	addq.w #$1,d0
loc_203b66:
	move.w d0,(a2)+
	dbf d1,loc_203b28
loc_203b6c:
	rts
loc_203b6e:
	cmpi.b #$50,d5
	beq.s loc_203bc0
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
	bne.s loc_203bba
	addq.w #$1,d0
loc_203bba:
	move.w d0,(a2)+
	dbf d1,loc_203b6e
loc_203bc0:
	rts
	.incbin 15298, 92
dat_203c1e:
	.incbin 15390, 246

sub_203d14:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d26
	move.w #$0,(a1)
	rts
loc_203d26:
	tst.w (a1)
	bne.s loc_203d30
	move.b #$1,$1(a1)
loc_203d30:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d7a
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d6c
	neg.w $10(a0)
loc_203d6c:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205aa6
loc_203d7a:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d98
	cmpa.w #$d040,a0
	beq.s loc_203d98
	tst.b ($ff1906).l
	beq.s loc_203d98
	jmp (loc_20710a).l
loc_203d98:
	move.b $2a(a0),d0
	beq.s loc_203dc2
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203db4
	cmpi.b #$2d,d0
	bcs.s loc_203dbe
	move.b #$2d,d0
	bra.s loc_203dbe
loc_203db4:
	cmpi.b #$1e,d0
	bcs.s loc_203dbe
	move.b #$1e,d0
loc_203dbe:
	move.b d0,$2a(a0)
loc_203dc2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203dd0(pc,d0.w),d1
	jmp dat_203dd0(pc,d1.w)
dat_203dd0:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203dda:
	tst.b ($d300).w
	bne.s loc_203e18
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e18:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e40
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e40:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e74:
	tst.b ($ff1506).l
	bne.s loc_203eda
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203eda
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203ede
	cmpi.b #$2f,d1
	bne.s loc_203edc
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203eda
	tst.b $2c(a0)
	beq.s loc_203eda
	jsr (sub_207902).l
	bne.s loc_203eda
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203ed2
	moveq #$0,d0
loc_203ed2:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203eda:
	rts
loc_203edc:
	rts

sub_203ede:
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

sub_203f04:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f10
	neg.w d0
loc_203f10:
	btst.b #$1,$2c(a0)
	beq.s loc_203f20
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203f48
loc_203f20:
	cmpi.w #$600,d0
	bcs.s loc_203f48
	tst.w $14(a0)
	bpl.s loc_203f3a
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203f56
	move.w #$e0,d1
	bra.s loc_203f56
loc_203f3a:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203f56
	move.w #$60,d1
	bra.s loc_203f56
loc_203f48:
	cmpi.w #$a0,d1
	beq.s loc_203f56
	bcc.s loc_203f54
	addq.w #$2,d1
	bra.s loc_203f56
loc_203f54:
	subq.w #$2,d1
loc_203f56:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203f04
	bsr.w sub_203e74
	tst.w ($ff1588).l
	beq.s loc_203f7c
	btst.b #$4,($f605).w
	beq.s loc_203f7c
	move.b #$1,($ff1906).l
	rts
loc_203f7c:
	tst.b ($f7cc).w
	bne.s loc_203f88
	move.w ($f604).w,($f602).w
loc_203f88:
	btst.b #$0,$2c(a0)
	beq.s loc_203fac
	cmpi.b #$6,($ff1506).l
	bne.s loc_203fa6
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203fc4
loc_203fa6:
	bsr.w sub_20428e
	bra.s loc_203fc4
loc_203fac:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20400a(pc,d0.w),d1
	jsr dat_20400a(pc,d1.w)
	jsr (sub_20655e).l
loc_203fc4:
	bsr.s sub_204018
	bsr.w sub_2040d8
	bsr.w sub_2040f2
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203fec
	tst.b $1c(a0)
	bne.s loc_203fec
	move.b $1d(a0),$1c(a0)
loc_203fec:
	bsr.w sub_205496
	tst.b $2c(a0)
	bmi.s loc_204004
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204004
	jsr (sub_206ca8).l
loc_204004:
	bsr.w sub_20534c
	rts
dat_20400a:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204018:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20403c
	move.w $30(a0),d0
	beq.s loc_20402e
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20403c
loc_20402e:
	btst.b #$6,$2c(a0)
	bne.s loc_20403c
	jsr (sub_2038dc).l
loc_20403c:
	tst.b ($ff151f).l
	beq.s loc_204080
	tst.w $32(a0)
	beq.s loc_204080
	subq.w #$1,$32(a0)
	bne.s loc_204080
	tst.b ($ff1520).l
	bne.s loc_204078
	tst.b ($ff1958).l
	bne.s loc_204078
	tst.b ($ff152e).l
	bne.s loc_204072
	move.w #$e,d0
	jsr (sub_205aa6).l
loc_204072:
	jsr (sub_201aba).l
loc_204078:
	move.b #$0,($ff151f).l
loc_204080:
	tst.b ($ff1520).l
	beq.s loc_2040d6
	tst.w $34(a0)
	beq.s loc_2040d6
	subq.w #$1,$34(a0)
	bne.s loc_2040d6
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2040ce
	tst.b ($ff1958).l
	bne.s loc_2040ce
	tst.b ($ff152e).l
	bne.s loc_2040c8
	move.w #$e,d0
	jsr (sub_205aa6).l
loc_2040c8:
	jsr (sub_201aba).l
loc_2040ce:
	move.b #$0,($ff1520).l
loc_2040d6:
	rts

sub_2040d8:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2040f2:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2040fe
loc_2040fc:
	rts
loc_2040fe:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204110
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2040fc
loc_204110:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204154
	bset.b #$6,$22(a0)
	bne.s loc_2040fc
	bsr.w sub_205daa
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2040fc
	bra.s loc_20418c
loc_204154:
	tst.w $12(a0)
	beq.s loc_20415c
	bpl.s loc_2040fc
loc_20415c:
	bclr.b #$6,$22(a0)
	beq.s loc_2040fc
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2040fc
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20418c
	move.w #$f000,$12(a0)
loc_20418c:
	jsr (sub_207902).l
	bne.s loc_2041a0
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2041a0:
	rts

sub_2041a2:
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
	bcs.s loc_20427c
	move.l #$50000,d0
loc_20427c:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20428e:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2042b4
	tst.b ($ff152e).l
	beq.s loc_2042aa
	cmpi.b #$2,($ff152e).l
	bne.s loc_2042b4
loc_2042aa:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204364
loc_2042b4:
	tst.b $2a(a0)
	bne.w loc_204372
	tst.b ($f784).w
	beq.w loc_204372
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2042d2
	neg.w d0
loc_2042d2:
	tst.w ($f786).w
	bne.s loc_2042de
	move.w #$1,($f786).w
loc_2042de:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2042f4
	move.b #$1,($ff1502).l
	bra.w loc_205aa2
loc_2042f4:
	cmpi.w #$d2,d1
	bcs.s loc_204348
	cmpi.b #$2,($ff1522).l
	beq.s loc_204346
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20431e
	move.w #$82,d0
	jsr (sub_205aa6).l
	moveq #$0,d0
loc_20431e:
	add.b ($f784).w,d0
	bpl.s loc_204328
	moveq #$0,d0
	bra.s loc_204330
loc_204328:
	cmpi.b #$3,d0
	bcs.s loc_204330
	moveq #$2,d0
loc_204330:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2041a2
	move.b #$2,($ff1522).l
loc_204346:
	rts
loc_204348:
	cmpi.w #$5a,d1
	bcc.s loc_204360
	cmp.w d2,d0
	bcc.w loc_203dda
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204360:
	cmp.w d2,d0
	bcc.s loc_204372
loc_204364:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204372:
	rts
	bsr.w sub_203d14
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2043a4
	tst.b ($ff195b).l
	beq.s loc_204392
	cmpi.b #$79,$1a(a0)
	bne.s loc_2043ce
	bra.s loc_20439a
loc_204392:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2043ce
loc_20439a:
	bsr.w sub_204c36
	jmp (sub_203824).l
loc_2043a4:
	bsr.w sub_20447c
	bsr.w sub_20428e
	bsr.w sub_204d20
	bsr.w sub_204e4c
	bsr.w sub_2044f0
	bsr.w sub_204ca2
	bsr.w sub_204c36
	jsr (sub_203886).l
	bsr.w sub_200bca
	bsr.w sub_204eca
loc_2043ce:
	rts
	.incbin 17360, 172

sub_20447c:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2044e8
	tst.w ($ff1506).l
	bne.s loc_2044e8
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2044ea).l,a2
loc_2044b0:
	move.b (a2)+,d0
	bmi.s loc_2044c0
	cmp.b d0,d1
	bne.s loc_2044b0
	bset.b #$1,$2c(a0)
	rts
loc_2044c0:
	bclr.b #$1,$2c(a0)
	beq.s loc_2044e8
	tst.w $12(a0)
	bpl.s loc_2044e8
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2044e8
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2044e8
	neg.w $10(a0)
loc_2044e8:
	rts
dat_2044ea:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2044f0:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_20481a
	tst.w $3e(a0)
	bne.w loc_2047ca
	btst.b #$2,($f602).w
	beq.s loc_204518
	bsr.w sub_2048aa
loc_204518:
	btst.b #$3,($f602).w
	beq.s loc_204524
	bsr.w sub_204920
loc_204524:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2047ca
	tst.w $14(a0)
	beq.s loc_204544
	tst.b $2a(a0)
	beq.w loc_2047ca
	bra.s loc_204550
loc_204544:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204550:
	btst.b #$3,$22(a0)
	beq.s loc_2045a2
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2045fa
	cmpi.b #$1e,$0(a1)
	bne.s loc_204582
	move.b #$0,$1c(a0)
	bra.w loc_2047ca
loc_204582:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2045de
	cmp.w d2,d1
	bge.s loc_2045cc
	bra.s loc_2045fa
loc_2045a2:
	jsr (sub_206a0c).l
	cmpi.w #$c,d1
	blt.s loc_2045fa
	move.w #$ab,d0
	jsr (sub_2022c6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2045d6
loc_2045cc:
	btst.b #$0,$22(a0)
	bne.s loc_2045e6
	bra.s loc_2045f0
loc_2045d6:
	cmpi.b #$3,$37(a0)
	bne.s loc_2045fa
loc_2045de:
	btst.b #$0,$22(a0)
	bne.s loc_2045f0
loc_2045e6:
	move.b #$32,$1c(a0)
	bra.w loc_2047ca
loc_2045f0:
	move.b #$6,$1c(a0)
	bra.w loc_2047ca
loc_2045fa:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20460e
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20460e:
	btst.b #$7,($f788).w
	bne.w loc_204712
	btst.b #$6,($f788).w
	bne.w loc_204732
	btst.b #$1,($f602).w
	bne.w loc_204732
	andi.b #$f,($f788).w
	beq.s loc_204646
	btst.b #$0,($f603).w
	beq.s loc_20465a
	bset.b #$7,($f788).w
	bra.w loc_2047ee
loc_204646:
	btst.b #$0,($f603).w
	beq.w loc_20465a
	move.b #$1,($f788).w
	bra.w loc_2047ee
loc_20465a:
	btst.b #$0,($f602).w
	beq.s loc_2046d6
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2046b8
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20468a
	asr.w #$1,d2
	sub.w d2,d1
loc_20468a:
	btst.b #$0,$22(a0)
	beq.s loc_204696
	neg.w d0
	neg.w d1
loc_204696:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2046ac
	cmp.w d0,d1
	ble.s loc_2046b2
	bra.s loc_2046b0
loc_2046ac:
	cmp.w d1,d0
	ble.s loc_2046b2
loc_2046b0:
	move.w d1,d0
loc_2046b2:
	move.w d0,$14(a0)
	rts
loc_2046b8:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2046d2
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022c6).l
loc_2046d2:
	bra.w loc_2047ee
loc_2046d6:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2046f6
	move.w #$ab,d0
	jsr (sub_2022c6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204732
loc_2046f6:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022c6).l
	bra.w loc_2047ca
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204712:
	btst.b #$0,($f602).w
	beq.s loc_204732
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2047ee
	addq.w #$2,($f73e).w
	bra.w loc_2047ee
loc_204732:
	btst.b #$6,($f788).w
	bne.w loc_2047ae
	andi.b #$f,($f788).w
	beq.s loc_204756
	btst.b #$1,($f603).w
	beq.s loc_204768
	bset.b #$6,($f788).w
	bra.w loc_2047ee
loc_204756:
	btst.b #$1,($f603).w
	beq.s loc_204768
	move.b #$1,($f788).w
	bra.w loc_2047ee
loc_204768:
	btst.b #$1,($f602).w
	beq.s loc_2047ca
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2047ac
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047ac
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20479e
	neg.w $14(a0)
loc_20479e:
	move.w #$9c,d0
	jsr (sub_2022c6).l
	bsr.w sub_204cca
loc_2047ac:
	bra.s loc_2047ee
loc_2047ae:
	btst.b #$1,($f602).w
	beq.s loc_2047ca
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2047ee
	subq.w #$2,($f73e).w
	bra.s loc_2047ee
loc_2047ca:
	cmpi.w #$60,($f73e).w
	bne.s loc_2047e4
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2047ee
	move.b #$0,($f788).w
	bra.s loc_2047ee
loc_2047e4:
	bcc.s loc_2047ea
	addq.w #$4,($f73e).w
loc_2047ea:
	subq.w #$2,($f73e).w
loc_2047ee:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20481a
	move.w $14(a0),d0
	beq.s loc_20481a
	bmi.s loc_20480e
	sub.w d5,d0
	bcc.s loc_204808
	move.w #$0,d0
loc_204808:
	move.w d0,$14(a0)
	bra.s loc_20481a
loc_20480e:
	add.w d5,d0
	bcc.s loc_204816
	move.w #$0,d0
loc_204816:
	move.w d0,$14(a0)
loc_20481a:
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
	bmi.s loc_2048a8
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2048a8
	bmi.s loc_204850
	neg.w d1
loc_204850:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2068cc
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2048a8
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2048a4
	cmpi.b #$40,d0
	beq.s loc_204892
	cmpi.b #$80,d0
	beq.s loc_20488c
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20488c:
	sub.w d1,$12(a0)
	rts
loc_204892:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048a4:
	add.w d1,$12(a0)
loc_2048a8:
	rts

sub_2048aa:
	tst.b $2a(a0)
	bne.s loc_20491e
	move.w $14(a0),d0
	beq.s loc_2048b8
	bpl.s loc_2048e8
loc_2048b8:
	bset.b #$0,$22(a0)
	bne.s loc_2048cc
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048cc:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_2048dc
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_2048dc
	move.w d1,d0
loc_2048dc:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048e8:
	sub.w d4,d0
	bcc.s loc_2048f0
	move.w #$ff80,d0
loc_2048f0:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20491e
	cmpi.w #$400,d0
	blt.s loc_20491e
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022c6).l
loc_20491e:
	rts

sub_204920:
	tst.b $2a(a0)
	bne.s loc_20498e
	move.w $14(a0),d0
	bmi.s loc_204958
	bclr.b #$0,$22(a0)
	beq.s loc_204940
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204940:
	cmp.w d6,d0
	bge.s loc_20494c
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_20494c
	move.w d6,d0
loc_20494c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204958:
	add.w d4,d0
	bcc.s loc_204960
	move.w #$80,d0
loc_204960:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20498e
	cmpi.w #$fc00,d0
	bgt.s loc_20498e
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022c6).l
loc_20498e:
	rts
	.incbin 18832, 438
	rts
	.incbin 19272, 238

sub_204c36:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c8a
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204c64
	addi.w #$38,d0
loc_204c64:
	cmp.w d1,d0
	bls.s loc_204c8a
loc_204c68:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c78
	rts
loc_204c78:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206f3a
	move.b #$6,$24(a0)
	rts
loc_204c8a:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204c68

sub_204ca2:
	tst.b ($f7ca).w
	bne.s loc_204cc8
	move.w $14(a0),d0
	bpl.s loc_204cb0
	neg.w d0
loc_204cb0:
	cmpi.w #$80,d0
	bcs.s loc_204cc8
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204cc8
	btst.b #$1,($f602).w
	bne.s sub_204cca
loc_204cc8:
	rts

sub_204cca:
	btst.b #$2,$22(a0)
	beq.s loc_204cd4
	bra.s loc_204d04
loc_204cd4:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204cf4
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d04
loc_204cf4:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d04:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d1e
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d1e
	move.w #$200,$14(a0)
loc_204d1e:
	rts

sub_204d20:
	tst.b $2a(a0)
	beq.s loc_204d28
	rts
loc_204d28:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204d3a
	tst.w $14(a0)
	beq.w loc_204e00
loc_204d3a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204e00
	btst.b #$3,$22(a0)
	beq.s loc_204d56
	jsr (sub_205a2c).l
	beq.s loc_204d86
loc_204d56:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206936
	cmpi.w #$6,d1
	blt.w loc_204e00
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204d7c
	move.w #$380,d2
loc_204d7c:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d86:
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
	bne.s loc_204e02
	tst.b ($ff195b).l
	beq.s loc_204de4
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204df4
loc_204de4:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204df4:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204e00:
	rts
loc_204e02:
	bset.b #$4,$22(a0)
	rts
	.incbin 19978, 66

sub_204e4c:
	tst.b $2a(a0)
	bne.s loc_204e86
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e86
	move.b $26(a0),d0
	jsr (sub_2007ca).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e86
	bmi.s loc_204e82
	tst.w d0
	beq.s loc_204e80
	add.w d0,$14(a0)
loc_204e80:
	rts
loc_204e82:
	add.w d0,$14(a0)
loc_204e86:
	rts
	.incbin 20104, 66

sub_204eca:
	nop
	tst.b $38(a0)
	bne.s loc_204f0c
	tst.w $3e(a0)
	bne.s loc_204f0e
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204f0c
	move.w $14(a0),d0
	bpl.s loc_204eee
	neg.w d0
loc_204eee:
	cmpi.w #$280,d0
	bcc.s loc_204f0c
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204f0c:
	rts
loc_204f0e:
	subq.w #$1,$3e(a0)
	rts
	.incbin 20244, 214
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
	.incbin 20472, 324

sub_20513c:
	btst.b #$4,$22(a0)
	beq.s loc_205146
	nop
loc_205146:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2051a0
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205180
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205190
loc_205180:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205190:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2022c6).l
loc_2051a0:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20942, 382

sub_20534c:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205374
	cmpi.b #$5,($ff1506).l
	beq.s loc_205374
	cmpi.b #$2,($ff1506).l
	beq.s loc_205374
	tst.b ($ff1506).l
	bne.w loc_205436
loc_205374:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2053b2
	tst.b ($ff1506).l
	bne.w loc_205438
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205438
	bra.s loc_2053ba
loc_2053b2:
	cmp.b ($f7af).w,d1
	beq.w loc_205438
loc_2053ba:
	cmp.b ($f7ac).w,d1
	beq.s loc_2053ea
	cmp.b ($f7ad).w,d1
	beq.s loc_2053ce
	bclr.b #$6,$1(a0)
	rts
loc_2053ce:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205450
	btst.b #$1,$22(a0)
	beq.s loc_2053ea
	bclr.b #$6,$1(a0)
	rts
loc_2053ea:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2053fc
	bclr.b #$6,$1(a0)
	rts
loc_2053fc:
	cmpi.b #$e0,d2
	bcs.s loc_20540a
	bset.b #$6,$1(a0)
	rts
loc_20540a:
	btst.b #$6,$1(a0)
	bne.s loc_205426
	move.b $26(a0),d1
	beq.s loc_205436
	cmpi.b #$80,d1
	bhi.s loc_205436
	bset.b #$6,$1(a0)
	rts
loc_205426:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205436
	bclr.b #$6,$1(a0)
loc_205436:
	rts
loc_205438:
	btst.b #$2,$22(a0)
	bne.s loc_20544a
	move.w #$9c,d0
	jsr (sub_2022c6).l
loc_20544a:
	jmp (sub_204cca).l
loc_205450:
	tst.w $12(a0)
	bmi.s loc_205494
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205488
	cmpi.w #$38,d1
	bcs.s loc_205480
	cmpi.w #$80,d1
	bcs.s loc_205494
loc_205478:
	bclr.b #$6,$1(a0)
	rts
loc_205480:
	bset.b #$6,$1(a0)
	rts
loc_205488:
	cmpi.w #$38,d1
	bcs.s loc_205478
	cmpi.w #$80,d1
	bcc.s loc_205480
loc_205494:
	rts

sub_205496:
	lea (dat_205786).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2054b8
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2054b8:
	bsr.w sub_205728
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205530
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2054fe
	move.b d0,$1e(a0)

sub_2054e2:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2054f6
	bpl.s loc_2054f6
	cmpi.b #$fd,d0
	bge.s loc_205500
loc_2054f6:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2054fe:
	rts
loc_205500:
	addq.b #$1,d0
	bne.s loc_205510
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2054f6
loc_205510:
	addq.b #$1,d0
	bne.s loc_205524
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2054f6
loc_205524:
	addq.b #$1,d0
	bne.s loc_20552e
	move.b $2(a1,d1.w),$1c(a0)
loc_20552e:
	rts
loc_205530:
	subq.b #$1,$1e(a0)
	bpl.s loc_2054fe
	addq.b #$1,d0
	bne.w loc_2055ea
	tst.b ($ff195b).l
	bne.w loc_2056b2
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205558
	not.b d0
loc_205558:
	btst.b #$1,$2c(a0)
	bne.s loc_205566
	addi.b #$10,d0
	bra.s loc_205568
loc_205566:
	addq.b #$8,d0
loc_205568:
	bpl.s loc_20556c
	moveq #$3,d1
loc_20556c:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20565e
	move.w $14(a0),d2
	bpl.s loc_20558a
	neg.w d2
loc_20558a:
	btst.b #$1,$2c(a0)
	beq.s loc_2055a2
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205988).l,a1
	bra.s loc_2055cc
loc_2055a2:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205962).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2055cc
	lea (dat_205806).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2055cc
	lea (dat_2057fe).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2055cc:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2055da
	moveq #$0,d2
loc_2055da:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2054e2
	add.b d3,$1a(a0)
	rts
loc_2055ea:
	addq.b #$1,d0
	bne.s loc_20565a
	move.w $14(a0),d2
	bpl.s loc_2055f6
	neg.w d2
loc_2055f6:
	lea (dat_2058e4).l,a1
	tst.b ($ff195b).l
	bne.s loc_205634
	lea (dat_205816).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205628
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205634
	lea (dat_205990).l,a1
	bra.s loc_205634
loc_205628:
	cmpi.w #$600,d2
	bcc.s loc_205634
	lea (dat_20580e).l,a1
loc_205634:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20563e
	moveq #$0,d2
loc_20563e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054e2
loc_20565a:
	addq.b #$1,d0
	bne.s loc_20569e
loc_20565e:
	move.w $14(a0),d2
	bmi.s loc_205666
	neg.w d2
loc_205666:
	addi.w #$800,d2
	bpl.s loc_20566e
	moveq #$0,d2
loc_20566e:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2058f6).l,a1
	tst.b ($ff195b).l
	bne.s loc_205688
	lea (dat_20581e).l,a1
loc_205688:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054e2
loc_20569e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2056b2:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056c4
	not.b d0
loc_2056c4:
	addi.b #$10,d0
	bpl.s loc_2056cc
	moveq #$0,d1
loc_2056cc:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2056fa
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2055ea
loc_2056fa:
	move.w $14(a0),d2
	bpl.s loc_205702
	neg.w d2
loc_205702:
	lea (dat_2058de).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205714
	lea (dat_2058d8).l,a1
loc_205714:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20571e
	moveq #$0,d2
loc_20571e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2054e2

sub_205728:
	tst.b ($ff195b).l
	beq.s loc_205734
	move.b dat_205736(pc,d0.w),d0
loc_205734:
	rts
dat_205736:
	.incbin 22326, 80
dat_205786:
	.incbin 22406, 120
dat_2057fe:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205806:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20580e:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205816:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20581e:
	.incbin 22558, 186
dat_2058d8:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_2058de:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_2058e4:
	.incbin 22756, 18
dat_2058f6:
	.incbin 22774, 108
dat_205962:
	.incbin 22882, 38
dat_205988:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205990:
	.incbin 22928, 56

sub_2059c8:
	tst.b (a0)
	beq.w loc_205a2a
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205a2a
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205a2a
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_2059fc:
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
loc_205a16:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a16
	dbf d1,loc_2059fc
loc_205a2a:
	rts

sub_205a2c:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205aa0
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
	bne.s loc_205a8e
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a8e:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205aa0:
	rts
loc_205aa2:
	move.w #$e,d0

sub_205aa6:
	cmpi.w #$67,d0
	bne.s loc_205ab4
	move.b #$1,($ff1958).l
loc_205ab4:
	move.w d0,($a12010).l
loc_205aba:
	move.w ($a12020).l,d0
	beq.s loc_205aba
	cmp.w ($a12020).l,d0
	bne.s loc_205aba
	move.w #$0,($a12010).l
loc_205ad2:
	move.w ($a12020).l,d0
	bne.s loc_205ad2
	move.w ($a12020).l,d0
	bne.s loc_205ad2
	rts
	dc.b $00,$00

sub_205ae6:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205b02
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205b02:
	subq.b #$1,$1e(a0)
	bpl.s loc_205b42
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205b44
loc_205b1e:
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
loc_205b42:
	rts
loc_205b44:
	addq.b #$1,d0
	bne.s loc_205b54
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b1e
loc_205b54:
	addq.b #$1,d0
	bne.s loc_205b68
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b1e
loc_205b68:
	addq.b #$1,d0
	bne.s loc_205b72
	move.b $2(a1,d1.w),$1c(a0)
loc_205b72:
	addq.b #$1,d0
	bne.s loc_205b7a
	addq.b #$2,$24(a0)
loc_205b7a:
	addq.b #$1,d0
	bne.s loc_205b88
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b88:
	addq.b #$1,d0
	bne.s loc_205b90
	addq.b #$2,$25(a0)
loc_205b90:
	rts
	.incbin 23442, 536

sub_205daa:
	rts
	.incbin 23980, 116

sub_205e20:
	tst.b $25(a0)
	bne.s loc_205e50
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207902).l
	bne.s loc_205e50
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205e50:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e60(pc,d0.w),d0
	jmp dat_205e60(pc,d0.w)
dat_205e60:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e88
	andi.b #$7f,$2(a0)
loc_205e88:
	move.l #$23b202,$4(a0)
	bsr.s sub_205e20
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205eb6
	move.w #$100,$1c(a0)
loc_205eb6:
	lea (dat_23b1ee).l,a1
	bsr.w sub_205ae6
	jmp (sub_2038dc).l
	tst.b $25(a0)
	beq.s loc_205ed2
	jmp (sub_203988).l
loc_205ed2:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205ef4(pc,d0.w),d0
	jsr dat_205ef4(pc,d0.w)
	jmp (sub_2038dc).l
dat_205ef4:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205f22
	andi.b #$7f,$2(a0)
loc_205f22:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_205f48
	bsr.w sub_205fb4
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205faa
loc_205f48:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206a0c).l
	tst.w d1
	bpl.s loc_205fa6
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205f90
	bsr.w sub_205fb4
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205fda
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205f90:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205faa
loc_205fa6:
	addq.w #$2,$c(a0)
loc_205faa:
	lea (dat_2336bc).l,a1
	bra.w sub_205ae6

sub_205fb4:
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

sub_205fda:
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
	bra.s loc_205faa
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205faa
	.incbin 24598, 86
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206086(pc,d0.w),d0
	jsr dat_206086(pc,d0.w)
	jsr (sub_2038dc).l
	jmp (sub_207938).l
dat_206086:
	.incbin 24710, 270
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$23b140,$4(a0)
	move.b $28(a0),$1c(a0)
	moveq #$d,d0
	jsr (sub_20d40e).l
	move.w #$a2,d0
	cmpi.b #$2,$28(a0)
	bcs.s loc_2061c6
	move.w #$a1,d0
loc_2061c6:
	jsr (sub_2022c6).l
	lea (dat_23b128).l,a1
	bsr.w sub_205ae6
	jmp (sub_2038dc).l
	.incbin 25052, 382
loc_20635a:
	bclr.b #$7,($ff156b).l
	beq.s loc_2063a8
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2063aa(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20637e:
	move.l (a1)+,(a2)+
	dbf d0,loc_20637e
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2063a8:
	rts
dat_2063aa:
	.incbin 25514, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2063e0(pc,d0.w),d0
	jsr dat_2063e0(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_2063da
	jsr (sub_2038dc).l
loc_2063da:
	jmp (sub_207938).l
dat_2063e0:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23b016,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_2064c2
	cmpi.b #$6,$24(a1)
	bcc.w loc_2064c2
	bsr.w sub_206526
	beq.w loc_2064c2
	tst.b $28(a0)
	bne.s loc_206474
	move.w $10(a1),d0
	bpl.s loc_206434
	neg.w d0
loc_206434:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206446
	move.w #$d00,d1
loc_206446:
	cmp.w d1,d0
	bcc.s loc_20644c
	move.w d1,d0
loc_20644c:
	tst.w $10(a1)
	bpl.s loc_206454
	neg.w d0
loc_206454:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2064a4
	neg.w $14(a1)
	bra.s loc_2064a4
loc_206474:
	cmpi.b #$2,$28(a0)
	bcc.s loc_2064c4
	move.w $12(a1),d0
	bpl.s loc_206484
	neg.w d0
loc_206484:
	cmpi.w #$d00,d0
	bcc.s loc_20648e
	move.w #$d00,d0
loc_20648e:
	tst.w $12(a1)
	bpl.s loc_206496
	neg.w d0
loc_206496:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_2064a4:
	bset.b #$2,$22(a1)
	bne.s loc_2064c2
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_2064c2:
	rts
loc_2064c4:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206510
	cmpi.b #$2,$28(a0)
	bne.s loc_2064e0
	tst.w $12(a1)
	bpl.s loc_2064a4
	bra.s loc_2064e6
loc_2064e0:
	tst.w $12(a1)
	bmi.s loc_2064a4
loc_2064e6:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_2064f8
	btst.l #$2,d1
	beq.s loc_2064a4
	neg.w d0
loc_2064f8:
	cmpi.b #$2,$28(a0)
	beq.s loc_206506
	bset.b #$1,$22(a1)
loc_206506:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2064a4
loc_206510:
	tst.w $10(a1)
	bmi.s loc_2064a4
	btst.l #$0,d1
	beq.w loc_2064a4
	move.w #$f600,d0
	bra.w loc_206496

sub_206526:
	tst.b ($ff1906).l
	bne.s loc_20655a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_20655a
	cmpi.w #$50,d0
	bcc.s loc_20655a
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_20655a
	cmpi.w #$50,d0
	bcc.s loc_20655a
	moveq #$1,d0
	rts
loc_20655a:
	moveq #$0,d0
	rts

sub_20655e:
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_2065ba
	move.w $10(a0),d0
	bpl.s loc_206572
	neg.w d0
loc_206572:
	cmpi.w #$a00,d0
	bcs.s loc_2065ba
	move.w $c(a0),d2
	move.w $8(a0),d3
	addq.w #$8,d2
	jsr (sub_200f38).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_2065a6
	add.b ($ff156a).l,d1
loc_2065a6:
	add.w d1,d1
	move.w dat_2065bc(pc,d1.w),d1
	lea dat_2065bc(pc,d1.w),a1
loc_2065b0:
	move.w (a1)+,d1
	bmi.s loc_2065ba
	cmp.w d1,d0
	bne.s loc_2065b0
	bra.s loc_2065fc
loc_2065ba:
	rts
dat_2065bc:
	.incbin 26044, 64
loc_2065fc:
	jsr (sub_207902).l
	bne.s loc_20662c
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $16(a0),d0
	ext.w d0
	add.w d0,$c(a1)
	tst.w $10(a0)
	bpl.s loc_20662c
	bset.b #$0,$22(a1)
loc_20662c:
	rts
	.incbin 26158, 216
loc_206706:
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
	bne.s loc_2067c0
	move.b ($ff1593).l,($ff195b).l
loc_2067c0:
	tst.b ($ff1522).l
	bpl.s loc_2067d6
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2067d6:
	rts

sub_2067d8:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206706
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
	bne.s loc_206892
	move.b ($ff1591).l,($ff195b).l
loc_206892:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2068b4
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2068b4:
	tst.b ($ff1522).l
	bpl.s loc_2068ca
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2068ca:
	rts

sub_2068cc:
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
	bpl.s loc_206908
	move.b d1,d0
	bpl.s loc_206902
	subq.b #$1,d0
loc_206902:
	addi.b #$20,d0
	bra.s loc_206912
loc_206908:
	move.b d1,d0
	bpl.s loc_20690e
	addq.b #$1,d0
loc_20690e:
	addi.b #$1f,d0
loc_206912:
	andi.b #$c0,d0
	beq.w loc_2069e2
	cmpi.b #$80,d0
	beq.w loc_206b7e
	andi.b #$38,d1
	bne.s loc_20692a
	addq.w #$8,d2
loc_20692a:
	cmpi.b #$40,d0
	beq.w loc_206c54
	bra.w loc_206ab6

sub_206936:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206bdc
	cmpi.b #$80,d0
	beq.w loc_206b06
	cmpi.b #$c0,d0
	beq.w loc_206a46

sub_20695e:
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
loc_2069c2:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2069d0
	move.b ($f768).w,d3
	exg d0,d1
loc_2069d0:
	btst.l #$0,d3
	beq.s loc_2069d8
	move.b d2,d3
loc_2069d8:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2069e2:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201120).l
	move.b #$0,d2
loc_2069fe:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a0a
	move.b d2,d3
loc_206a0a:
	rts

sub_206a0c:
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
	beq.s loc_206a44
	move.b #$0,d3
loc_206a44:
	rts
loc_206a46:
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
	bra.w loc_2069c2
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206ab6:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201290).l
	move.b #$c0,d2
	bra.w loc_2069fe
	.incbin 27350, 48
loc_206b06:
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
	bra.w loc_2069c2

sub_206b76:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b7e:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201120).l
	move.b #$80,d2
	bra.w loc_2069fe
	.incbin 27554, 58
loc_206bdc:
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
	bra.w loc_2069c2
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c54:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201290).l
	move.b #$40,d2
	bra.w loc_2069fe
	.incbin 27768, 48

sub_206ca8:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206ccc
	addi.w #$c,d3
	moveq #$a,d5
loc_206ccc:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206cda:
	tst.b $1(a1)
	bpl.s loc_206ce6
	move.b $20(a1),d0
	bne.s loc_206cf2
loc_206ce6:
	lea $40(a1),a1
	dbf d6,loc_206cda
	moveq #$0,d0
	rts
loc_206cf2:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20708c).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206d1a
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206d20
	bra.w loc_206ce6
loc_206d1a:
	cmp.w d4,d0
	bhi.w loc_206ce6
loc_206d20:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206d38
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206d3e
	bra.w loc_206ce6
loc_206d38:
	cmp.w d5,d0
	bhi.w loc_206ce6
loc_206d3e:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206db2
	cmpi.b #$c0,d1
	beq.w loc_206f92
	tst.b d1
	bmi.w sub_206e7c
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206d76
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206d74
	addq.b #$2,$24(a1)
loc_206d74:
	rts
loc_206d76:
	tst.w $12(a0)
	bpl.s loc_206da0
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206db0
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206db0
	addq.b #$4,$25(a1)
	rts
loc_206da0:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206db0
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206db0:
	rts

sub_206db2:
	tst.b ($ff1521).l
	bne.s loc_206dcc
	tst.b ($ff151f).l
	bne.s loc_206dcc
	cmpi.b #$2,$1c(a0)
	bne.w sub_206e7c
loc_206dcc:
	tst.b $21(a1)
	beq.s loc_206df6
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206df4
	bset.b #$7,$22(a1)
loc_206df4:
	rts
loc_206df6:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206e0e
	moveq #$6,d0
loc_206e0e:
	move.w d0,$3e(a1)
	move.w dat_206e6e(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206e28
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206e28:
	bsr.w sub_20aec4
	move.w #$96,d0
	jsr (sub_2022c6).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206e5e
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206e66
	neg.w $12(a0)
	rts
loc_206e5e:
	addi.w #$100,$12(a0)
	rts
loc_206e66:
	subi.w #$100,$12(a0)
	rts
dat_206e6e:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206e7c:
	tst.b ($ff1521).l
	bne.s loc_206e8c
	tst.b ($ff151f).l
	beq.s loc_206e90
loc_206e8c:
	moveq #$ffffffff,d0
	rts
loc_206e90:
	nop
	tst.w $30(a0)
	bne.s loc_206e8c
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206ec6
	tst.w ($ff1512).l
	beq.w loc_206f30
	jsr (sub_207902).l
	bne.s loc_206ec6
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206ec6:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206edc
	move.b #$0,($ff156f).l
loc_206edc:
	move.b #$4,$24(a0)
	bsr.w sub_20513c
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206f0c
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206f0c:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206f1a
	neg.w $10(a0)
loc_206f1a:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206f30:
	tst.w ($ff1588).l
	bne.w loc_206ec6

sub_206f3a:
	tst.w ($ff1906).l
	bne.s loc_206f8e
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20513c
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
loc_206f8e:
	moveq #$ffffffff,d0
	rts
loc_206f92:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_20702a
	cmpi.b #$23,d1
	beq.w loc_20702a
	cmpi.b #$2d,d1
	beq.w loc_207080
	cmpi.b #$31,d1
	beq.w loc_207080
	cmpi.b #$35,d1
	beq.w loc_207072
	cmpi.b #$3a,d1
	beq.w loc_207072
	cmpi.b #$3b,d1
	beq.w loc_207072
	tst.b ($f7aa).w
	beq.w loc_207028
	cmpi.b #$1,($f7aa).w
	beq.s loc_206ff2
	cmpi.b #$4,($f7aa).w
	beq.s loc_207014
	cmpi.b #$5,($f7aa).w
	beq.s loc_207022
loc_206ff2:
	cmpi.b #$3c,d1
	blt.s loc_207028
	cmpi.b #$3f,d1
	bgt.s loc_207028
	bsr.w sub_206db2
	tst.b $20(a1)
	bne.s loc_20700c
	addq.b #$3,$21(a1)
loc_20700c:
	clr.b $20(a1)
	bra.w loc_20702a
loc_207014:
	cmpi.b #$3f,d1
	beq.s loc_207036
	cmpi.b #$3e,d1
	beq.s loc_207030
	bra.s loc_207028
loc_207022:
	cmpi.b #$3d,d1
	beq.s loc_207030
loc_207028:
	rts
loc_20702a:
	addq.b #$1,$21(a1)
	rts
loc_207030:
	bsr.w sub_206e7c
	bra.s loc_20702a
loc_207036:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207070
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207070
	neg.w $10(a0)
loc_207070:
	rts
loc_207072:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20707e
	addq.b #$1,$21(a1)
loc_20707e:
	rts
loc_207080:
	btst.b #$2,$22(a0)
	beq.w sub_206db2
	bra.s loc_20702a
dat_20708c:
	.incbin 28812, 126
loc_20710a:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207120
	move.l #$4000,(dat_20729a).l
	bra.s loc_207140
loc_207120:
	addi.l #$2000,(dat_20729a).l
	cmpi.l #$80000,(dat_20729a).l
	bls.s loc_207140
	move.l #$80000,(dat_20729a).l
loc_207140:
	move.l (dat_20729a).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207152
	sub.l d0,$c(a0)
loc_207152:
	btst.b #$1,($f604).w
	beq.s loc_20715e
	add.l d0,$c(a0)
loc_20715e:
	btst.b #$2,($f604).w
	beq.s loc_20716a
	sub.l d0,$8(a0)
loc_20716a:
	btst.b #$3,($f604).w
	beq.s loc_207176
	add.l d0,$8(a0)
loc_207176:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f38).l
	move.w (a1),($ff194e).l
	lea (dat_20729e).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2071b8
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2071b2
	move.b #$0,d1
loc_2071b2:
	move.b d1,($ff1904).l
loc_2071b8:
	btst.b #$7,($f605).w
	beq.s loc_2071d8
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2071d2
	add.b (a2),d1
loc_2071d2:
	move.b d1,($ff1904).l
loc_2071d8:
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
	beq.s loc_207264
	bsr.w sub_207902
	bne.s loc_207264
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
loc_207264:
	btst.b #$4,($f605).w
	beq.s loc_207294
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207294:
	jmp (sub_2038dc).l
dat_20729a:
	dc.b $00,$00,$40,$00
dat_20729e:
	.incbin 29342, 1106

sub_2076f0:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2076fe:
	clr.l (a2)+
	dbf d0,loc_2076fe
	rts

sub_207706:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207714(pc,d0.w),d0
	jmp dat_207714(pc,d0.w)
dat_207714:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2079b4).l,a0
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
	bcc.s loc_207752
	moveq #$0,d6
loc_207752:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_20775a:
	cmp.w (a0),d6
	bls.s loc_20776c
	tst.b $4(a0)
	bpl.s loc_207768
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207768:
	addq.w #$8,a0
	bra.s loc_20775a
loc_20776c:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20778c
loc_20777a:
	cmp.w (a0),d6
	bls.s loc_20778c
	tst.b $4(a0)
	bpl.s loc_207788
	addq.b #$1,$1(a2)
loc_207788:
	addq.w #$8,a0
	bra.s loc_20777a
loc_20778c:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207876
	bge.s loc_20781c
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077f8
loc_2077c6:
	cmp.w -$8(a0),d6
	bge.s loc_2077f8
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2077dc
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2077dc:
	bsr.w sub_20789a
	bne.s loc_2077e6
	subq.w #$8,a0
	bra.s loc_2077c6
loc_2077e6:
	tst.b $4(a0)
	bpl.s loc_2077f6
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077f6:
	addq.w #$8,a0
loc_2077f8:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207804:
	cmp.w -$8(a0),d6
	bgt.s loc_207816
	tst.b -$4(a0)
	bpl.s loc_207812
	subq.b #$1,(a2)
loc_207812:
	subq.w #$8,a0
	bra.s loc_207804
loc_207816:
	move.l a0,($f770).w
	rts
loc_20781c:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207830:
	cmp.w (a0),d6
	bls.s loc_207852
	tst.b $4(a0)
	bpl.s loc_20783e
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20783e:
	bsr.w sub_20789a
	beq.s loc_207830
	tst.b $4(a0)
	bpl.s loc_207852
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207852:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207872
loc_207860:
	cmp.w (a0),d6
	bls.s loc_207872
	tst.b $4(a0)
	bpl.s loc_20786e
	addq.b #$1,$1(a2)
loc_20786e:
	addq.w #$8,a0
	bra.s loc_207860
loc_207872:
	move.l a0,($f774).w
loc_207876:
	rts

sub_207878:
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

sub_20789a:
	bsr.s sub_207878
	beq.s loc_2078ac
	tst.b $4(a0)
	bpl.s loc_2078b2
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2078b2
loc_2078ac:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2078b2:
	bsr.w sub_207902
	bne.s loc_207900
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
	bpl.s loc_2078e2
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2078e2:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2078f4
	nop
	nop
	nop
	nop
loc_2078f4:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207900:
	rts

sub_207902:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20790a:
	tst.b (a1)
	beq.s loc_207916
	lea $40(a1),a1
	dbf d0,loc_20790a
loc_207916:
	rts

sub_207918:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207936
loc_20792a:
	tst.b (a1)
	beq.s loc_207936
	lea $40(a1),a1
	dbf d0,loc_20792a
loc_207936:
	rts

sub_207938:
	move.w $8(a0),d0

sub_20793c:
	tst.b $1(a0)
	bmi.s loc_2079a6
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2079a6
loc_20795a:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20799c
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207994
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20798c
	moveq #$0,d1
	bra.s loc_207994
loc_20798c:
	cmpi.w #$3,d1
	bcs.s loc_207994
	moveq #$2,d1
loc_207994:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20799c:
	jsr (sub_203988).l
	moveq #$1,d0
	rts
loc_2079a6:
	btst.b #$7,($ff152e).l
	bne.s loc_20795a
	moveq #$0,d0
	rts
dat_2079b4:
	.incbin 31156, 6602

sub_20937e:
	btst.b #$3,$22(a0)
	beq.s loc_2093ee
	btst.b #$3,$22(a1)
	beq.s loc_2093ee
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2093ee
	tst.b $2a(a1)
	beq.s loc_2093b0
	move.w #$ab,d0
	jsr (sub_2022c6).l
loc_2093b0:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2093dc
	cmpi.b #$17,$1c(a1)
	beq.s loc_2093dc
	bclr.b #$0,$2c(a1)
loc_2093dc:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2093ee
	bclr.b #$1,$22(a1)
loc_2093ee:
	rts

sub_2093f0:
	cmpi.b #$4,$24(a1)
	bne.s loc_209402
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_209402:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_209462
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209424
	bclr.b #$3,$22(a0)
	bra.w sub_20937e
loc_209424:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_209462
	tst.b ($ff195b).l
	beq.s loc_20944c
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_20945c
loc_20944c:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_20945c:
	move.b #$0,$1c(a1)
loc_209462:
	bset.b #$3,$22(a1)
	beq.s loc_209484
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2094bc
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_209484:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2094b0
	cmpi.b #$2,$24(a0)
	beq.s loc_2094b6
loc_2094b0:
	move.w $10(a1),$14(a1)
loc_2094b6:
	bclr.b #$1,$22(a1)
loc_2094bc:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_2094cc:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209780
	btst.b #$6,$2c(a1)
	bne.w loc_209780
	cmpi.b #$6,$24(a1)
	bcc.w loc_209780
	tst.b $0(a1)
	beq.w loc_209780
	tst.b $1(a0)
	bpl.w loc_209780
	tst.b ($ff1906).l
	bne.w loc_209780
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209780
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209780
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20953a
	btst.b #$3,$22(a0)
	bne.s loc_20954c
	bra.w loc_209780
loc_20953a:
	cmpi.b #$1,$25(a0)
	bne.s loc_20954c
	tst.w $12(a1)
	beq.s loc_20954c
	bmi.w loc_209780
loc_20954c:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209780
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209780
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_209582
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_209582:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_209590
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_209590:
	cmp.w d4,d5
	bcs.w loc_209624
	cmpi.b #$1,$25(a0)
	beq.w loc_209780
	cmpi.b #$a,$0(a0)
	bne.s loc_2095b2
	btst.b #$1,$22(a1)
	bne.w loc_209780
loc_2095b2:
	cmpi.b #$4,d5
	bls.w loc_209780
	bsr.w sub_2097d0
	move.l d0,-(a7)
	bsr.w sub_20937e
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2095dc
	tst.w $10(a1)
	beq.s loc_20960c
	bpl.s loc_2095e4
	bra.s loc_20960c
loc_2095dc:
	tst.w $10(a1)
	beq.s loc_20960c
	bpl.s loc_20960c
loc_2095e4:
	bsr.w sub_209790
	btst.b #$1,$22(a1)
	bne.s loc_209602
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209602:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20960c:
	bsr.w sub_209846
	bsr.w sub_209790
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209624:
	cmpi.b #$19,$0(a0)
	bne.s loc_209636
	btst.b #$2,$22(a1)
	bne.w loc_209780
loc_209636:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20964c
	bmi.w loc_20971c
loc_20964c:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20965e
	tst.w $12(a1)
	beq.s loc_20965e
	bmi.w loc_209780
loc_20965e:
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
	beq.s loc_2096aa
	bpl.s loc_20968a
	neg.b d0
loc_20968a:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2068cc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2096aa
	tst.w $10(a0)
	bpl.s loc_2096a6
	neg.w d1
loc_2096a6:
	add.w d1,$8(a1)
loc_2096aa:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209714
	tst.w $12(a0)
	bmi.s loc_2096e8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20695e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2096e8
	add.w d1,$c(a1)
	bra.w loc_209780
loc_2096e8:
	tst.w $12(a0)
	bpl.s loc_209714
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b76).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209714
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f3a).l
	movem.l (a7)+,a0-a1
	bra.s loc_209780
loc_209714:
	bsr.w sub_2093f0
	moveq #$1,d0
	rts
loc_20971c:
	cmpi.b #$1,$25(a0)
	beq.s loc_209780
	cmpi.b #$9,$0(a0)
	beq.s loc_209780
	cmpi.b #$a,$0(a0)
	bne.s loc_209746
	cmpi.b #$2,$25(a0)
	beq.s loc_209766
	btst.b #$1,$1(a0)
	bne.s loc_209766
	bra.s loc_209780
loc_209746:
	btst.b #$1,$22(a1)
	bne.s loc_209766
	tst.w $12(a0)
	beq.s loc_209766
	bmi.s loc_209766
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f3a).l
	movem.l (a7)+,a0-a1
loc_209766:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209846
	bsr.w sub_20937e
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209780:
	bsr.w sub_209846
	bsr.w sub_20937e
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209790:
	tst.w $10(a0)
	beq.s loc_2097ce
	cmpi.b #$a,$0(a0)
	beq.s loc_2097ce
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2097aa
	neg.b d0
loc_2097aa:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2068cc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2097ce
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f3a).l
	movem.l (a7)+,a0-a1
loc_2097ce:
	rts

sub_2097d0:
	cmpi.b #$a,$0(a0)
	bne.s loc_2097e0
	move.b #$0,$20(a1)
	rts
loc_2097e0:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209834
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209844
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209802
	tst.w $10(a2)
	beq.s loc_209844
loc_209802:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209814
	cmp.w $8(a2),d1
	bcs.s loc_209844
	bra.s loc_20981a
loc_209814:
	cmp.w $8(a2),d1
	bcc.s loc_209844
loc_20981a:
	cmpi.b #$15,$0(a0)
	beq.s loc_209844
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f3a).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209834:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209844:
	rts

sub_209846:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209860
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209860
	move.b #$0,$20(a1)
loc_209860:
	rts
	.incbin 39010, 374
loc_2099d8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2099e6(pc,d0.w),d0
	jmp dat_2099e6(pc,d0.w)
dat_2099e6:
	.incbin 39398, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2099d8
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209a3c
	tst.b $1(a0)
	bpl.s loc_209a44
loc_209a3c:
	move.w dat_209a96(pc,d0.w),d1
	jsr dat_209a96(pc,d1.w)
loc_209a44:
	bsr.w sub_2038dc
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209a76
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209a76:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203988
	rts
dat_209a96:
	.incbin 39574, 26
	addq.b #$2,$24(a0)
	move.l #$209e18,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209b06
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209e1e,$4(a0)
	bra.s loc_209b48
loc_209b06:
	btst.l #$3,d0
	beq.s loc_209b34
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209e68,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20d40e).l
	move.l (a7)+,d0
	bra.s loc_209b48
loc_209b34:
	btst.b #$1,$1(a0)
	beq.s loc_209b48
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209b48:
	btst.l #$1,d0
	beq.s loc_209b54
	bset.b #$5,$2(a0)
loc_209b54:
	andi.w #$2,d0
	move.w dat_209b60(pc,d0.w),$30(a0)
	rts
dat_209b60:
	dc.b $f0,$00,$f6,$00

sub_209b64:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2094cc).l
	tst.b $1(a0)
	bpl.s loc_209b80
	lea ($d000).w,a1
	bsr.s sub_209b64
	bne.s loc_209b82
loc_209b80:
	rts
loc_209b82:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2022c6).l
	.incbin 39860, 34

sub_209bd6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2094cc).l
	tst.b $1(a0)
	bpl.s loc_209bf8
	lea ($d000).w,a1
	bsr.s sub_209bd6
	btst.b #$5,$22(a0)
	bne.s loc_209bfa
loc_209bf8:
	rts
loc_209bfa:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209c28
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209c28:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209c42
	move.b #$0,$1c(a1)
loc_209c42:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_2022c6).l
	.incbin 40028, 666
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f04(pc,d0.w),d1
	jmp dat_209f04(pc,d1.w)
dat_209f04:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209f0e:
	.incbin 40718, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209f66
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209f5e
	moveq #$0,d1
	bra.s loc_209f66
loc_209f5e:
	cmpi.w #$3,d1
	bcs.s loc_209f66
	moveq #$2,d1
loc_209f66:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209f82
	moveq #$6,d1
loc_209f82:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209f0e).l,a1
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
	beq.s loc_209fd2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209fca
	moveq #$0,d0
	bra.s loc_209fd2
loc_209fca:
	cmpi.w #$3,d0
	bcs.s loc_209fd2
	moveq #$2,d0
loc_209fd2:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a0a0
	dbf d0,loc_209fd2
	bclr.b #$7,(a2)
	bra.s loc_20a028
loc_209fe4:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a010
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a008
	moveq #$0,d0
	bra.s loc_20a010
loc_20a008:
	cmpi.w #$3,d0
	bcs.s loc_20a010
	moveq #$2,d0
loc_20a010:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a0a0
	dbf d0,loc_20a010
	bclr.b #$7,(a2)
	bsr.w sub_207918
	bne.w loc_20a0ac
loc_20a028:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a372,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a07e
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20a07e
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20a07e:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20a0a0:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209fe4
loc_20a0ac:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a0d2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a0ca
	moveq #$0,d0
	bra.s loc_20a0d2
loc_20a0ca:
	cmpi.w #$3,d0
	bcs.s loc_20a0d2
	moveq #$2,d0
loc_20a0d2:
	lea $1(a2),a3
loc_20a0d6:
	btst.b #$0,-(a3)
	bne.w sub_203988
	dbf d0,loc_20a0d6
	tst.b $1(a0)
	bmi.s loc_20a106
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20a180
loc_20a106:
	tst.w ($ff190e).l
	bne.s loc_20a116
	move.b ($ff1913).l,$1a(a0)
loc_20a116:
	bra.w sub_2038dc
	.incbin 41242, 102
loc_20a180:
	bra.w sub_203988
	.incbin 41348, 888
loc_20a4fc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a52a(pc,d0.w),d0
	jsr dat_20a52a(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a528
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a522
	btst.b #$0,($ff1505).l
	bne.s loc_20a528
loc_20a522:
	jmp (sub_2038dc).l
loc_20a528:
	rts
dat_20a52a:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20ab04,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a55e
	move.b #$13,$1a(a0)
loc_20a55e:
	rts
loc_20a560:
	tst.b ($ff0f01).l
	beq.s loc_20a56e
	jmp (sub_203988).l
loc_20a56e:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a4fc
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a592(pc,d0.w),d0
	jsr dat_20a592(pc,d0.w)
	jsr (sub_2038dc).l
	jmp (sub_207938).l
dat_20a592:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20ab04,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a5e0
	tst.b $29(a0)
	bne.s loc_20a5e0
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a5e0:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a6ac
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a608
	addq.b #$2,$1a(a0)
loc_20a608:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a61c
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a61c:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a682
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a64e
	tst.b $29(a0)
	beq.s loc_20a646
	tst.b ($ff1956).l
	beq.s loc_20a682
	bra.s loc_20a64e
loc_20a646:
	tst.b ($ff1956).l
	bne.s loc_20a682
loc_20a64e:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a6ac
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a67c
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a67c:
	jsr (sub_205aa6).l
loc_20a682:
	rts
	.incbin 42628, 40

sub_20a6ac:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a6e4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a6dc
	moveq #$0,d1
	bra.s loc_20a6e4
loc_20a6dc:
	cmpi.w #$3,d1
	bcs.s loc_20a6e4
	moveq #$2,d1
loc_20a6e4:
	add.w d1,d0
	rts

sub_20a6e8:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a70a
	tst.b ($ff1956).l
	beq.s loc_20a702
	tst.b $29(a0)
	bne.s loc_20a70a
	rts
loc_20a702:
	tst.b $29(a0)
	beq.s loc_20a70a
	rts
loc_20a70a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2094cc).l
	tst.b $28(a0)
	bne.s loc_20a72c
	tst.b ($ff0f01).l
	beq.s loc_20a72c
	jmp (sub_207938).l
loc_20a72c:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a560
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a744(pc,d0.w),d1
	jmp dat_20a744(pc,d1.w)
dat_20a744:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20ab04,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a78e
	tst.b $29(a0)
	bne.s loc_20a78e
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a78e:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a6ac
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a7ba
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a7ba:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a814
	move.b $25(a0),d0
	beq.s loc_20a7f4
	bsr.w sub_203824
	jsr (sub_206a0c).l
	tst.w d1
	bpl.w loc_20a802
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a802
loc_20a7f4:
	tst.b $1(a0)
	bpl.s loc_20a802
	lea ($d000).w,a1
	bsr.w sub_20a6e8
loc_20a802:
	tst.w ($ff190e).l
	bne.s loc_20a814
	lea (dat_20aa7c).l,a1
	bsr.w sub_205ae6
loc_20a814:
	bsr.w sub_2038dc
	jmp (sub_207938).l
	.incbin 43038, 606
dat_20aa7c:
	.incbin 43644, 586
loc_20acc6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20acda(pc,d0.w),d0
	jsr dat_20acda(pc,d0.w)
	jmp (sub_2038dc).l
dat_20acda:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20ad1a,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20ad14
	jmp (sub_203988).l
loc_20ad14:
	subq.w #$2,$c(a0)
	rts
	.incbin 44314, 82
	tst.b $28(a0)
	bmi.w loc_20acc6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ad82(pc,d0.w),d0
	jmp dat_20ad82(pc,d0.w)
dat_20ad82:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20ae1c,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20adb2
	move.b #$3,$1a(a0)
	bra.s loc_20add2
loc_20adb2:
	tst.w ($ff1588).l
	beq.s loc_20adc0
	move.b #$2,$1a(a0)
loc_20adc0:
	tst.b $28(a0)
	beq.s loc_20add2
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20add2:
	tst.b $28(a0)
	bne.s loc_20ae16
	tst.b $29(a0)
	beq.s loc_20ae02
	tst.w ($ff1512).l
	beq.s loc_20adee
	bclr.b #$5,$2(a0)
	bra.s loc_20ae16
loc_20adee:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20ae16
	eori.b #$20,$2(a0)
	bra.s loc_20ae16
loc_20ae02:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20ae16
	move.b #$2,$1a(a0)
loc_20ae16:
	jmp (sub_2038dc).l
	.incbin 44572, 168

sub_20aec4:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20aee0
	move.l d1,(a3)
loc_20aee0:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20af0a
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205aa6).l
loc_20af0a:
	rts
loc_20af0c:
	tst.w ($ff1588).l
	beq.s loc_20af62
	bsr.w sub_20b15e
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
	lea (dat_20b2be).l,a2
	moveq #$2,d6
	bsr.w sub_20b316
	bra.w loc_20afbc
loc_20af62:
	tst.b ($ff1511).l
	beq.s loc_20af86
	bpl.s loc_20af70
	bsr.w sub_20b108
loc_20af70:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b1f8
loc_20af86:
	tst.b ($ff150f).l
	beq.s loc_20afbc
	bpl.s loc_20af94
	bsr.w sub_20b0f4
loc_20af94:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20afb8
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20afb8:
	bsr.w sub_20b1ee
loc_20afbc:
	tst.w ($ff1588).l
	bne.w loc_20b068
	tst.b ($ff1510).l
	beq.w loc_20b068
	tst.w ($f63a).w
	bne.w loc_20b068
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b0c6
	tst.b ($f7cc).w
	bne.s loc_20b012
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20b012
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20b012
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20b012
	move.b #$9,(a1)
loc_20b012:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b304
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b30e
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20b064
	move.w #$63,d1
loc_20b064:
	bsr.w sub_20b30e
loc_20b068:
	tst.b ($ff150e).l
	beq.s loc_20b07a
	clr.b ($ff150e).l
	bsr.w sub_20b2e4
loc_20b07a:
	tst.b ($f7d6).w
	beq.s loc_20b0c4
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b09a
	move.l #$6d400001,d0
loc_20b09a:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b17c
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b0ba
	move.l #$6e800001,d0
loc_20b0ba:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b17c
loc_20b0c4:
	rts
loc_20b0c6:
	btst.b #$7,($ff152e).l
	bne.s loc_20b0f2
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206f3a
	move.b #$1,($ff150c).l
loc_20b0f2:
	rts

sub_20b0f4:
	move.l #$73600002,($c00004).l
	lea dat_20b15a(pc),a2
	move.w #$2,d2
	bra.s loc_20b124

sub_20b108:
	lea ($c00000).l,a6
	bsr.w sub_20b2e4
	move.l #$70600002,($c00004).l
	lea dat_20b152(pc),a2
	move.w #$6,d2
loc_20b124:
	lea (dat_2330bc).l,a1
loc_20b12a:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b146
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b13a:
	move.l (a3)+,(a6)
	dbf d1,loc_20b13a
loc_20b140:
	dbf d2,loc_20b12a
	rts
loc_20b146:
	move.l #$0,(a6)
	dbf d1,loc_20b146
	bra.s loc_20b140
dat_20b152:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b15a:
	dc.b $ff,$ff,$00,$00

sub_20b15e:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b2da
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b2da

sub_20b17c:
	lea (dat_20b2b6).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b18c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b190:
	sub.l d3,d1
	bcs.s loc_20b198
	addq.w #$1,d2
	bra.s loc_20b190
loc_20b198:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b1a2
	move.w #$1,d4
loc_20b1a2:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b1ae
	tst.w d6
	bne.s loc_20b1e0
loc_20b1ae:
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
loc_20b1d4:
	addi.l #$400000,d0
	dbf d6,loc_20b18c
	rts
loc_20b1e0:
	moveq #$f,d5
loc_20b1e2:
	move.l #$0,(a6)
	dbf d5,loc_20b1e2
	bra.s loc_20b1d4

sub_20b1ee:
	lea (dat_20b2be).l,a2
	moveq #$2,d6
	bra.s loc_20b200

sub_20b1f8:
	lea (dat_20b2b2).l,a2
	moveq #$5,d6
loc_20b200:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b208:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b20c:
	sub.l d3,d1
	bcs.s loc_20b214
	addq.w #$1,d2
	bra.s loc_20b20c
loc_20b214:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b21e
	move.w #$1,d4
loc_20b21e:
	tst.w d4
	beq.s loc_20b24c
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
loc_20b24c:
	addi.l #$400000,d0
	dbf d6,loc_20b208
	rts
	.incbin 45656, 32
loc_20b278:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b27c:
	sub.l d3,d1
	bcs.s loc_20b284
	addq.w #$1,d2
	bra.s loc_20b27c
loc_20b284:
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
	dbf d6,loc_20b278
	rts
dat_20b2b2:
	dc.b $00,$01,$86,$a0
dat_20b2b6:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b2be:
	dc.b $00,$00,$00,$64
dat_20b2c2:
	dc.b $00,$00,$00,$0a
dat_20b2c6:
	dc.b $00,$00,$00,$01
dat_20b2ca:
	.incbin 45770, 16

sub_20b2da:
	moveq #$3,d6
	lea (dat_20b2ca).l,a2
	bra.s sub_20b316

sub_20b2e4:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b2fa
	moveq #$9,d1
loc_20b2fa:
	lea (dat_20b2c6).l,a2
	moveq #$0,d6
	bra.s sub_20b316

sub_20b304:
	lea (dat_20b2c6).l,a2
	moveq #$0,d6
	bra.s sub_20b316

sub_20b30e:
	lea (dat_20b2c2).l,a2
	moveq #$1,d6

sub_20b316:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b31e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b322:
	sub.l d3,d1
	bcs.s loc_20b32a
	addq.w #$1,d2
	bra.s loc_20b322
loc_20b32a:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b334
	move.w #$1,d4
loc_20b334:
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
	dbf d6,loc_20b31e
	rts
	.incbin 45930, 3208
	cmpi.b #$4,$24(a0)
	bcs.s loc_20c006
	tst.b $3e(a0)
	beq.s loc_20c006
	jmp (sub_203988).l
loc_20c006:
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20c016
	cmpi.b #$6,($d024).w
	bcc.s loc_20c02c
loc_20c016:
	move.w dat_20c074(pc,d0.w),d0
	jsr dat_20c074(pc,d0.w)
	cmpi.b #$4,$24(a0)
	bne.s loc_20c02c
	tst.b $28(a0)
	bne.s loc_20c032
loc_20c02c:
	jsr (sub_2038dc).l
loc_20c032:
	cmpi.b #$2,$24(a0)
	bne.s loc_20c072
	move.l $2a(a0),-(a7)
	move.l $36(a0),-(a7)
	move.l $3a(a0),-(a7)
	move.w $34(a0),d0
	jsr (sub_20793c).l
	bne.s loc_20c05a
	move.l (a7)+,d0
	move.l (a7)+,d0
	move.l (a7)+,d0
	rts
loc_20c05a:
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
loc_20c072:
	rts
dat_20c074:
	.incbin 49268, 16
	addq.b #$2,$24(a0)
	move.w $8(a0),$34(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20ca10,$4(a0)
	move.b #$8,$17(a0)
	move.b #$8,$16(a0)
	move.b #$1,$1a(a0)
	move.b $28(a0),d0
	cmpi.b #$2,d0
	bcs.s loc_20c0ce
	subq.b #$1,d0
	move.b d0,$29(a0)
	move.b d0,$1b(a0)
	move.b #$0,$28(a0)
loc_20c0ce:
	moveq #$2,d6
	move.l a0,-(a7)
loc_20c0d2:
	jsr (sub_207918).l
	beq.s loc_20c0e2
	movea.l (a7)+,a0
	jmp (sub_203988).l
loc_20c0e2:
	movea.l a1,a0
	dbf d6,loc_20c0d2
	movea.l (a7)+,a0
	moveq #$2,d6
	move.b #$4,d1
loc_20c0f0:
	jsr (sub_207918).l
	move.b #$1e,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a0),$8(a1)
	move.w $8(a0),$34(a1)
	move.w $c(a0),$c(a1)
	cmpi.b #$2,d6
	bne.s loc_20c134
	move.w #$520,$2(a1)
	move.l #$209e1e,$4(a1)
	move.b #$5,$18(a1)
	move.l a1,$2a(a0)
	bra.s loc_20c15e
loc_20c134:
	move.w #$300,$2(a1)
	move.l #$20ca10,$4(a1)
	move.b #$20,$17(a1)
	move.b #$20,$16(a1)
	cmpi.w #$1,d6
	bne.s loc_20c15a
	move.l a1,$36(a0)
	bra.s loc_20c15e
loc_20c15a:
	move.l a1,$3a(a0)
loc_20c15e:
	move.b $28(a0),$28(a1)
	move.l a0,$2a(a1)
	move.b d1,$24(a1)
	cmpi.w #$2,d6
	bne.s loc_20c174
	addq.b #$4,d1
loc_20c174:
	addq.b #$2,d1
	dbf d6,loc_20c0f0
	tst.b $29(a0)
	bne.s loc_20c194
	movea.l $2a(a0),a1
	cmpi.b #$6,$24(a1)
	bcs.s loc_20c196
	cmpi.b #$2,$29(a1)
	beq.s loc_20c196
loc_20c194:
	rts
loc_20c196:
	lea (dat_20ca04).l,a1
	jmp (sub_205ae6).l
	tst.b $28(a0)
	bne.s loc_20c1b0
	bsr.w sub_20c1b2
	bra.w loc_20c57a
loc_20c1b0:
	rts

sub_20c1b2:
	lea (dat_20c256).l,a2
	lea (dat_20c274).l,a3
	tst.b $28(a0)
	beq.s loc_20c1e4
	lea (dat_20c260).l,a2
	lea (dat_20c298).l,a3
	cmpi.b #$1,$28(a0)
	beq.s loc_20c1e4
	lea (dat_20c26a).l,a2
	lea (dat_20c2bc).l,a3
loc_20c1e4:
	move.w #$520,$2(a0)
	movea.l $2a(a0),a1
	moveq #$0,d0
	move.b $1b(a1),d0
	btst.l #$0,d0
	bne.s loc_20c200
	move.w #$4f2,$2(a0)
loc_20c200:
	move.w d0,d1
	move.b dat_20c240(pc,d0.w),d0
	add.w d0,d0
	add.w d0,d0
	move.l dat_20c24a(pc,d0.w),$4(a0)
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
dat_20c240:
	dc.b $02,$00,$02,$01,$02,$00,$02,$01
	dc.b $02,$00
dat_20c24a:
	dc.b $00,$20,$9e,$1e,$00,$20,$9e,$18
	dc.b $00,$20,$9e,$68
dat_20c256:
	dc.b $00,$00,$00,$00,$01,$01,$01,$00
	dc.b $00,$00
dat_20c260:
	dc.b $02,$00,$00,$00,$01,$01,$03,$02
	dc.b $02,$00
dat_20c26a:
	dc.b $01,$01,$03,$02,$02,$00,$00,$00
	dc.b $01,$00
dat_20c274:
	.incbin 49780, 36
dat_20c298:
	.incbin 49816, 36
dat_20c2bc:
	.incbin 49852, 202

sub_20c386:
	lea (dat_20c4cc).l,a2
	lea (dat_20c4d6).l,a3
	lea (dat_20c4fe).l,a4
	tst.b $28(a0)
	beq.s loc_20c3b6
	lea (dat_20c4ea).l,a3
	lea (dat_20c512).l,a4
	tst.b $29(a0)
	beq.s loc_20c3b6
	lea (dat_20c526).l,a4
loc_20c3b6:
	lea (dat_20c82a).l,a5
	bra.s loc_20c3f4

sub_20c3be:
	lea (dat_20c4cc).l,a2
	lea (dat_20c4e0).l,a3
	lea (dat_20c508).l,a4
	tst.b $28(a0)
	beq.s loc_20c3ee
	lea (dat_20c4f4).l,a3
	lea (dat_20c51c).l,a4
	tst.b $29(a0)
	beq.s loc_20c3ee
	lea (dat_20c530).l,a4
loc_20c3ee:
	lea (dat_20c834).l,a5
loc_20c3f4:
	movea.l $2a(a0),a1
	moveq #$0,d0
	move.b $1b(a1),d0
	move.b $0(a2,d0.w),$1a(a0)
	andi.b #$fc,$1(a0)
	move.b $0(a3,d0.w),d1
	or.b d1,$1(a0)
	move.b $0(a4,d0.w),d0
	lea (dat_20c53a).l,a4
	add.w d0,d0
	add.w d0,d0
	move.w $0(a4,d0.w),d1
	move.w $8(a1),$8(a0)
	add.w d1,$8(a0)
	move.w $2(a4,d0.w),d1
	move.w $c(a1),$c(a0)
	add.w d1,$c(a0)
	tst.b $28(a0)
	beq.s loc_20c488
	movea.l $2a(a0),a2
	movea.l $2a(a2),a2
	tst.b $29(a2)
	beq.s loc_20c470
	cmpi.b #$2,$29(a2)
	bne.s loc_20c488
	tst.b $29(a0)
	bne.s loc_20c488
	movea.l a5,a3
	move.l a0,-(a7)
	movea.l a2,a0
	movea.l $2e(a2),a2
	bsr.w sub_20c5f4
	movea.l (a7)+,a0
	rts
loc_20c470:
	tst.b ($ff1906).l
	bne.s loc_20c488
	lea ($d000).w,a2
	bsr.s sub_20c48a
	bne.w loc_20c6a4
	move.b #$0,$29(a0)
loc_20c488:
	rts

sub_20c48a:
	move.w #$18,d2
	move.w #$18,d3
	bra.w loc_20c596
	.incbin 50326, 54
dat_20c4cc:
	dc.b $04,$02,$04,$03,$04,$02,$04,$03
	dc.b $04,$00
dat_20c4d6:
	dc.b $00,$00,$00,$00,$02,$02,$02,$00
	dc.b $00,$00
dat_20c4e0:
	dc.b $03,$02,$03,$01,$01,$00,$01,$01
	dc.b $03,$00
dat_20c4ea:
	dc.b $01,$00,$00,$00,$02,$02,$03,$01
	dc.b $01,$00
dat_20c4f4:
	dc.b $02,$02,$03,$01,$01,$00,$00,$00
	dc.b $02,$00
dat_20c4fe:
	dc.b $01,$00,$01,$02,$03,$04,$03,$02
	dc.b $01,$00
dat_20c508:
	dc.b $09,$08,$09,$0a,$0b,$0c,$0b,$0a
	dc.b $09,$00
dat_20c512:
	dc.b $07,$00,$01,$02,$03,$04,$05,$06
	dc.b $07,$00
dat_20c51c:
	dc.b $03,$04,$05,$06,$07,$00,$01,$02
	dc.b $03,$00
dat_20c526:
	dc.b $0b,$0c,$0d,$0e,$0f,$08,$09,$0a
	dc.b $0b,$00
dat_20c530:
	dc.b $0f,$08,$09,$0a,$0b,$0c,$0d,$0e
	dc.b $0f,$00
dat_20c53a:
	.incbin 50490, 64
loc_20c57a:
	tst.b ($ff1906).l
	bne.s loc_20c58c
	lea ($d000).w,a2
	bsr.s sub_20c58e
	bne.w loc_20c748
loc_20c58c:
	rts

sub_20c58e:
	move.w #$20,d2
	move.w #$20,d3
loc_20c596:
	cmpi.b #$4,$24(a2)
	bne.s loc_20c5a8
	subq.b #$2,$24(a2)
	move.w #$78,$30(a2)
loc_20c5a8:
	cmpi.b #$2b,$1c(a2)
	beq.s loc_20c5f0
	cmpi.b #$6,$24(a2)
	bcc.s loc_20c5f0
	move.b $17(a2),d1
	ext.w d1
	add.w d2,d1
	move.w $8(a0),d0
	sub.w $8(a2),d0
	add.w d1,d0
	bmi.s loc_20c5f0
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c5f0
	move.b $16(a2),d1
	ext.w d1
	add.w d3,d1
	move.w $c(a0),d0
	sub.w $c(a2),d0
	add.w d1,d0
	bmi.s loc_20c5f0
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c5f0
	moveq #$1,d0
	rts
loc_20c5f0:
	moveq #$0,d0
	rts

sub_20c5f4:
	moveq #$0,d0
	move.b $1b(a1),d0
	move.w d0,d2
	move.b $0(a3,d0.w),d0
	lea (dat_20c83e).l,a1
	add.w d0,d0
	add.w d0,d0
	move.w $8(a0),$8(a2)
	move.w $0(a1,d0.w),d1
	add.w d1,$8(a2)
	move.w $c(a0),$c(a2)
	move.w $2(a1,d0.w),d1
	add.w d1,$c(a2)
	rts
loc_20c628:
	lea (dat_20c65c).l,a3
	moveq #$0,d0
	move.b $25(a4),d0
	subi.b #$a,d0
	beq.s loc_20c640
	lea (dat_20c680).l,a3
loc_20c640:
	move.b $1b(a1),d0
	add.w d0,d0
	add.w d0,d0
	move.w $0(a3,d0.w),$10(a4)
	move.w $2(a3,d0.w),$12(a4)
	move.b #$1a,$32(a4)
	rts
dat_20c65c:
	.incbin 50780, 36
dat_20c680:
	.incbin 50816, 36
loc_20c6a4:
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
	bsr.w sub_20c5f4
	movem.l (a7)+,a0-a1
	movea.l $2a(a0),a4
	cmpi.b #$a,$24(a0)
	bne.s loc_20c6fe
	adda.l #$4,a4
loc_20c6fe:
	movea.l $36(a4),a4
	move.b $24(a4),$25(a4)
	movem.l a0-a4,-(a7)
	movea.l $2a(a0),a1
	movea.l $2a(a1),a1
	movea.l a4,a0
	cmpi.b #$a,$24(a0)
	bne.s loc_20c72a
	move.b #$2,$28(a1)
	bsr.w sub_20c386
	bra.s loc_20c734
loc_20c72a:
	move.b #$1,$28(a1)
	bsr.w sub_20c3be
loc_20c734:
	movem.l (a7)+,a0-a4
	move.b #$e,$24(a4)
	move.b #$1,$29(a4)
	bra.w loc_20c628
loc_20c748:
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
	lea (dat_20c816).l,a3
	bsr.w sub_20c5f4
	btst.l #$0,d2
	bne.s loc_20c7dc
	move.w #$e0,d0
	jsr (sub_2007ca).l
	mulu.w #$1000,d0
	mulu.w #$1000,d1
	lsr.l #$8,d0
	lsr.l #$8,d1
	move.w d0,$12(a2)
	move.w d1,$10(a2)
	btst.b #$1,$1(a0)
	beq.s loc_20c7b6
	neg.w $12(a2)
loc_20c7b6:
	bclr.b #$0,$22(a2)
	btst.b #$0,$1(a0)
	beq.s loc_20c7ce
	bset.b #$0,$22(a2)
	neg.w $10(a2)
loc_20c7ce:
	bset.b #$1,$22(a2)
	bclr.b #$3,$22(a2)
	rts
loc_20c7dc:
	btst.l #$1,d2
	bne.s loc_20c7fc
	move.w #$0,$12(a2)
	move.w #$1000,$10(a2)
	btst.b #$0,$1(a0)
	beq.s loc_20c7ce
	neg.w $10(a2)
	bra.s loc_20c7ce
loc_20c7fc:
	move.w #$0,$10(a2)
	move.w #$f000,$12(a2)
	btst.b #$1,$1(a0)
	beq.s loc_20c7ce
	neg.w $12(a2)
	bra.s loc_20c7ce
dat_20c816:
	.incbin 51222, 20
dat_20c82a:
	dc.b $01,$00,$01,$02,$03,$04,$05,$06
	dc.b $07,$00
dat_20c834:
	dc.b $03,$04,$05,$06,$07,$00,$01,$02
	dc.b $03,$00
dat_20c83e:
	.incbin 51262, 454
dat_20ca04:
	.incbin 51716, 476
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cbee(pc,d0.w),d0
	jmp dat_20cbee(pc,d0.w)
dat_20cbee:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20d2ec,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20d2ac).l,a2
loc_20cc3c:
	jsr (sub_207902).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20d2ec,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20cc8e
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20cc8e:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20cc3c
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20ccb6
	bge.s loc_20ccac
	neg.w d0
loc_20ccac:
	add.w d0,$a(a0)
	jmp (sub_2038dc).l
loc_20ccb6:
	addq.b #$4,$24(a0)
	jmp (sub_2038dc).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20ccda
	bge.s loc_20ccd0
	neg.w d0
loc_20ccd0:
	add.w d0,$8(a0)
	jmp (sub_2038dc).l
loc_20ccda:
	addq.b #$4,$24(a0)
	jmp (sub_2038dc).l
	tst.b $1e(a0)
	beq.s loc_20ccf4
	subq.b #$1,$1e(a0)
	jmp (sub_2038dc).l
loc_20ccf4:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20cd0e
	bge.s loc_20cd04
	neg.w d0
loc_20cd04:
	add.w d0,$a(a0)
	jmp (sub_2038dc).l
loc_20cd0e:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202490).l
	tst.b $1e(a0)
	beq.s loc_20cd30
	subq.b #$1,$1e(a0)
	jmp (sub_2038dc).l
loc_20cd30:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20cd4a
	bge.s loc_20cd40
	neg.w d0
loc_20cd40:
	add.w d0,$8(a0)
	jmp (sub_2038dc).l
loc_20cd4a:
	jmp (sub_203988).l
	tst.l ($f680).w
	bne.s loc_20cd64
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203988).l
loc_20cd64:
	rts
	.incbin 52582, 1350
dat_20d2ac:
	.incbin 53932, 352

sub_20d40c:
	rts

sub_20d40e:
	move.w #$4f2,$2(a0)
	rts
	.incbin 54294, 1448
	move.b $29(a0),d0
	bpl.s loc_20d9de
	addq.b #$1,d0
	beq.s loc_20d9cc
	bra.w loc_20dc0c
loc_20d9cc:
	movea.w $3e(a0),a1
	cmpi.b #$22,$0(a1)
	beq.s loc_20d9e4
loc_20d9d8:
	jmp (sub_203988).l
loc_20d9de:
	jsr (sub_20eca4).l
loc_20d9e4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20da08(pc,d0.w),d0
	jsr dat_20da08(pc,d0.w)
	lea dat_20dc7c(pc),a1
	jsr (sub_205ae6).l
	jsr (sub_2038dc).l
	jmp (sub_207938).l
dat_20da08:
	.incbin 55816, 516
loc_20dc0c:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	tst.b $21(a0)
	beq.s loc_20dc4e
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203988).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	move.b #$1,$25(a0)
	move.w #$9e,d0
	jmp (sub_2022c6).l
loc_20dc4e:
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bpl.s loc_20dc5e
	neg.w d0
loc_20dc5e:
	cmpi.w #$e0,d0
	bgt.w loc_20d9d8
	lea dat_20dc7c(pc),a1
	jsr (sub_205ae6).l
	jsr (sub_2038dc).l
	jmp (sub_207938).l
dat_20dc7c:
	.incbin 56444, 1394
	cmpi.b #$ff,$29(a0)
	beq.w loc_20e376
	cmpi.b #$fe,$29(a0)
	beq.w loc_20e710
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e210(pc,d0.w),d0
	jmp dat_20e210(pc,d0.w)
dat_20e210:
	dc.b $00,$08,$00,$66,$00,$8a,$01,$10
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $23(a0),d0
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	lea $2(a1,d0.w),a1
	move.l a1,$2a(a0)
	lea (dat_20e8d8).l,a1
	move.b $28(a0),d0
	andi.w #$c,d0
	adda.w d0,a1
	move.l a1,$2e(a0)
	btst.b #$0,$28(a0)
	sne d0
	move.b d0,$28(a0)
	move.w #$845d,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20e272
	move.w #$8320,d0
loc_20e272:
	move.w d0,$2(a0)
	move.w #$ff10,d1
	move.w #$1e0,d2
	move.w #$ff10,d3
	move.w #$1e0,d4
	lea ($d000).w,a1
	bsr.w sub_20e7a0
	bcc.s loc_20e294
	addq.b #$2,$24(a0)
loc_20e294:
	jmp (sub_207938).l
	.incbin 58010, 220
loc_20e376:
	movea.w $2a(a0),a1
	cmpi.b #$23,$0(a1)
	bne.w loc_20e79a
	move.b $23(a1),d0
	cmp.b $36(a0),d0
	bne.w loc_20e79a
	jsr (sub_20eca4).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e3a4(pc,d0.w),d0
	jmp dat_20e3a4(pc,d0.w)
dat_20e3a4:
	.incbin 58276, 876
loc_20e710:
	movea.w $2a(a0),a1
	movea.w $2c(a0),a2
	cmpi.b #$23,$0(a1)
	bne.w loc_20e79a
	cmpi.b #$23,$0(a2)
	bne.w loc_20e79a
	cmpi.b #$10,$24(a1)
	bne.w loc_20e79a
	cmpi.b #$10,$24(a1)
	bne.w loc_20e79a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e74e(pc,d0.w),d0
	jmp dat_20e74e(pc,d0.w)
dat_20e74e:
	.incbin 59214, 76
loc_20e79a:
	jmp (sub_203988).l

sub_20e7a0:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_20e7ba
	move.w $8(a1),d0
	sub.w $8(a0),d0
	sub.w d3,d0
	sub.w d4,d0
loc_20e7ba:
	rts
	.incbin 59324, 284
dat_20e8d8:
	.incbin 59608, 16
	tst.b $24(a0)
	bne.s loc_20e92c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4376,$2(a0)
	move.l #$20e94e,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20e942(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20e92c:
	lea ($d000).w,a1
	jsr (sub_2094cc).l
	jsr (sub_2038dc).l
	jmp (sub_207938).l
dat_20e942:
	.incbin 59714, 106
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e9ca(pc,d0.w),d0
	jsr dat_20e9ca(pc,d0.w)
	jsr (sub_2038dc).l
	move.w $2a(a0),d0
	jmp (sub_20793c).l
dat_20e9ca:
	dc.b $00,$06,$00,$8c,$00,$ba
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$b5,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$386,$2(a0)
	move.l #$20ea96,$4(a0)
	move.w $8(a0),$2a(a0)
	lea dat_20ead4(pc),a1
	moveq #$0,d0
	move.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2e(a0)
	lea dat_20eaa4(pc),a1
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
	bne.s loc_20ea82
	addq.b #$2,$24(a0)
	move.w $2e(a0),$30(a0)
	neg.l $32(a0)
	neg.l $36(a0)
	tst.b $1(a0)
loc_20ea82:
	rts
	subq.w #$1,$30(a0)
	bne.s loc_20ea94
	subq.b #$2,$24(a0)
	move.w $2c(a0),$30(a0)
loc_20ea94:
	rts
	dc.b $00,$02,$02,$f0,$0d,$00,$00,$f0
	dc.b $00,$0d,$10,$00,$f0,$00
dat_20eaa4:
	.incbin 60068, 48
dat_20ead4:
	.incbin 60116, 464

sub_20eca4:
	tst.b ($ff156a).l
	beq.s loc_20ecea
	cmpi.b #$1,($ff152e).l
	bne.s loc_20ecbc
	tst.b $28(a0)
	beq.s loc_20ecea
loc_20ecbc:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203988).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20ece8
	move.w #$9e,d0
	jsr (sub_2022c6).l
loc_20ece8:
	addq.l #$4,a7
loc_20ecea:
	rts

sub_20ecec:
	tst.b $28(a0)
	bmi.s loc_20ed1c
	cmpi.b #$2,($ff152e).l
	bge.s loc_20ed0c
	tst.b ($ff156d).l
	bne.s loc_20ed1c
	addq.l #$4,a7
	jmp (sub_207938).l
loc_20ed0c:
	tst.b ($ff156a).l
	bne.s loc_20ed1c
	addq.l #$4,a7
	jmp (sub_203988).l
loc_20ed1c:
	rts
	jsr (sub_20ecec).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ee34
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ed3e(pc,d0.w),d0
	jmp dat_20ed3e(pc,d0.w)
dat_20ed3e:
	dc.b $00,$06,$00,$54,$00,$98
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20efb6,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20ef0c
	bsr.w sub_20ef1a
	tst.b $28(a0)
	bmi.s loc_20ed80
	move.w #$101,$2e(a0)
	rts
loc_20ed80:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20ee14
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20edb8
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20ef0c
loc_20edb8:
	move.b d0,$2e(a0)
	lea dat_20ef38(pc),a1
	jsr (sub_205ae6).l
	jsr (sub_2038dc).l
	move.w $2a(a0),d0
	jmp (sub_20793c).l
	.incbin 60886, 62

sub_20ee14:
	move.b $2e(a0),d0
	jsr (sub_2007ca).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20ee34:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ee42(pc,d0.w),d0
	jmp dat_20ee42(pc,d0.w)
dat_20ee42:
	dc.b $00,$0a,$00,$4a,$00,$4a,$00,$90
	dc.b $00,$9e
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$c080408,$16(a0)
	move.l #$20efca,$4(a0)
	bsr.w sub_20ef1a
	tst.b $28(a0)
	bmi.s loc_20ee82
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
loc_20ee82:
	move.b #$8,$24(a0)
	bra.w sub_20ef0c
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_206a0c).l
	tst.w d1
	bpl.s loc_20eec6
	addq.b #$2,$24(a0)
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
loc_20eec6:
	jsr (sub_2038dc).l
	jmp (sub_207938).l
	.incbin 61138, 58

sub_20ef0c:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20ef1a:
	lea dat_20efee(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20ef38:
	.incbin 61240, 182
dat_20efee:
	.incbin 61422, 30
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f03e(pc,d0.w),d0
	jsr dat_20f03e(pc,d0.w)
	jsr (sub_2038dc).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20f03c
	jsr (sub_207938).l
	tst.b (a0)
	bne.s loc_20f03c
	move.w #$4,d0
	jmp (sub_202490).l
loc_20f03c:
	rts
dat_20f03e:
	dc.b $00,$10,$01,$24,$01,$3c,$01,$66
	dc.b $01,$c4
loc_20f048:
	jmp (sub_203988).l
	.incbin 61518, 18
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$c,$17(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$fb,$20(a0)
	move.w #$4af,$2(a0)
	move.l #$20f2c4,$4(a0)
	move.l #$20f308,$2c(a0)
	jsr (sub_207902).l
	bne.w loc_20f048
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$15,$8(a1)
	subq.w #$7,$c(a1)
	move.b #$ff,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207902).l
	bne.w loc_20f048
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	subq.w #$4,$c(a1)
	move.b #$1,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207902).l
	bne.w loc_20f048
	move.b #$28,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	addi.w #$ffe8,$c(a1)
	move.b #$80,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207902).l
	bne.w loc_20f048
	move.b #$28,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$62,$8(a1)
	addi.w #$0,$c(a1)
	move.b #$81,$28(a1)
	move.w a0,$3e(a1)
	tst.b $21(a0)
	beq.s loc_20f170
	clr.w $20(a0)
	addq.b #$2,$24(a0)
loc_20f170:
	lea ($d000).w,a1
	jmp (sub_2094cc).l
	.incbin 61818, 2570
	tst.b $24(a0)
	bne.s loc_20fbae
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$11,$16(a0)
	move.l #$20fbee,$4(a0)
loc_20fbae:
	move.b ($ff1588).l,$1a(a0)
	tst.b ($ff1956).l
	beq.s loc_20fbce
	lea ($d000).w,a1
	jsr (sub_2094cc).l
	sne $2a(a0)
	bra.s loc_20fbe2
loc_20fbce:
	tst.b $2a(a0)
	beq.s loc_20fbe2
	clr.b $2a(a0)
	lea ($d000).w,a1
	jsr (sub_20937e).l
loc_20fbe2:
	jsr (sub_2038dc).l
	jmp (sub_207938).l
	.incbin 64494, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20fc16(pc,d0.w),d0
	jsr dat_20fc16(pc,d0.w)
	move.w $36(a0),d0
	jmp (sub_20793c).l
dat_20fc16:
	dc.b $00,$04,$00,$64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20fe0a,$4(a0)
	move.b #$7f,$19(a0)
	move.b #$7f,$16(a0)
	move.w $8(a0),$36(a0)
	move.b $29(a0),d0
	andi.b #$3,d0
	move.b d0,$30(a0)
	move.b #$1,$18(a0)
	move.w #$a4af,$2(a0)
	btst.b #$3,$29(a0)
	beq.s loc_20fc7a
	move.b #$3,$18(a0)
	move.w #$24af,$2(a0)
	cmpi.b #$1,($ff152e).l
	beq.s loc_20fc7a
	addi.w #$2000,$2(a0)
loc_20fc7a:
	move.w ($f704).w,d0
	addi.w #$70,d0
	move.w d0,$c(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20fcc8(pc,d0.w),d0
	jsr dat_20fcc8(pc,d0.w)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	btst.b #$2,$29(a0)
	beq.s loc_20fcb6
	cmp.b $30(a0),d0
	bne.s loc_20fcb4
	jsr (sub_2038dc).l
loc_20fcb4:
	rts
loc_20fcb6:
	andi.b #$1,d0
	cmp.b $30(a0),d0
	bne.s loc_20fcc6
	jsr (sub_2038dc).l
loc_20fcc6:
	rts
dat_20fcc8:
	.incbin 64712, 76
loc_20fd14:
	tst.b $3a(a0)
	bne.s loc_20fd5a
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
	beq.s loc_20fd5a
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20fd5a:
	subq.b #$1,$3a(a0)
	bne.s loc_20fd72
	addq.b #$1,$3c(a0)
	move.b $3c(a0),d0
	cmp.b $3d(a0),d0
	bcs.s loc_20fd72
	clr.b $3c(a0)
loc_20fd72:
	rts
	lea dat_20fd82(pc),a2
	move.b #$8,$3d(a0)
	bra.w loc_20fd14
dat_20fd82:
	.incbin 64898, 98
	bcc.s loc_20fde8
	moveq #$0,d0
loc_20fde8:
	move.b d0,$1a(a0)
	rts
	move.b $28(a0),d0
	subq.b #$6,d0
	bcc.s loc_20fdf8
	moveq #$0,d0
loc_20fdf8:
	move.b d0,$1a(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	rts
	.incbin 65034, 154

sub_20fea4:
	jmp (loc_20635a).l
dat_20feaa:
	.incbin 65194, 16
dat_20feba:
	.incbin 65210, 65862
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
	.incbin 223172, 18788
dat_23b128:
	.incbin 241960, 198
dat_23b1ee:
	.incbin 242158, 19986
