; R31B__.MMD
; disassembled from the disc; code only, data comes from data/R31B__.MMD at build time
	.file "R31B__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$1e,$fc
	jmp (loc_201a72).l
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
	bsr.w sub_201fa8
	bsr.w sub_201f50
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2012ec

sub_200184:
	rts

sub_200186:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200198:
	move.w d1,(a0)+
	dbf d0,loc_200198
	move.w #$15,d4
loc_2001a2:
	move.b #$12,($f62a).w
	bsr.w sub_200630
	bsr.s sub_2001b8
	bsr.w sub_20236e
	dbf d4,loc_2001a2
	rts

sub_2001b8:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2001ce:
	bsr.s sub_2001fc
	dbf d0,loc_2001ce
	cmpi.b #$1,($ff1506).l
	bne.s loc_2001fa
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2001f4:
	bsr.s sub_2001fc
	dbf d0,loc_2001f4
loc_2001fa:
	rts

sub_2001fc:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200224
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_200212
	move.w d1,(a0)+
	rts
loc_200212:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_200220
	move.w d1,(a0)+
	rts
loc_200220:
	addq.w #$2,(a0)+
	rts
loc_200224:
	addq.w #$2,a0
	rts

sub_200228:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200232:
	move.b #$12,($f62a).w
	bsr.w sub_200630
	bsr.s sub_200248
	bsr.w sub_20236e
	dbf d4,loc_200232
	rts

sub_200248:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200258:
	bsr.s sub_200276
	dbf d0,loc_200258
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20026e:
	bsr.s sub_200276
	dbf d0,loc_20026e
	rts

sub_200276:
	move.w (a0),d2
	beq.s loc_2002a2
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200286
	subq.w #$2,(a0)+
	rts
loc_200286:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200294
	subi.w #$20,(a0)+
	rts
loc_200294:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_2002a2
	subi.w #$200,(a0)+
	rts
loc_2002a2:
	addq.w #$2,a0
	rts

sub_2002a6:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_2002c0:
	move.w d1,(a0)+
	dbf d0,loc_2002c0
	move.w #$15,d4
loc_2002ca:
	move.b #$12,($f62a).w
	bsr.w sub_200630
	bsr.s sub_2002e0
	bsr.w sub_20236e
	dbf d4,loc_2002ca
	rts

sub_2002e0:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002f6:
	bsr.s sub_200324
	dbf d0,loc_2002f6
	cmpi.b #$1,($ff1506).l
	bne.s loc_200322
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20031c:
	bsr.s sub_200324
	dbf d0,loc_20031c
loc_200322:
	rts

sub_200324:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200350
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_20033c
	cmp.w d2,d1
	bcs.s loc_20033c
	move.w d1,(a0)+
	rts
loc_20033c:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_20034c
	cmp.w d2,d1
	bcs.s loc_20034c
	move.w d1,(a0)+
	rts
loc_20034c:
	subq.w #$2,(a0)+
	rts
loc_200350:
	addq.w #$2,a0
	rts

sub_200354:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20035e:
	move.b #$12,($f62a).w
	bsr.w sub_200630
	bsr.s sub_200374
	bsr.w sub_20236e
	dbf d4,loc_20035e
	rts

sub_200374:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200384:
	bsr.s sub_2003a2
	dbf d0,loc_200384
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20039a:
	bsr.s sub_2003a2
	dbf d0,loc_20039a
	rts

sub_2003a2:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2003de
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_2003ba
	addq.w #$2,(a0)+
	rts
loc_2003ba:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2003cc
	addi.w #$20,(a0)+
	rts
loc_2003cc:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2003de
	addi.w #$200,(a0)+
	rts
loc_2003de:
	addq.w #$2,a0
	rts

sub_2003e2:
	lea (dat_20044e).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_2003f6:
	move.l (a2)+,(a3)+
	dbf d7,loc_2003f6
	rts

sub_2003fe:
	lea (dat_20044e).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_20040e:
	move.l (a2)+,(a3)+
	dbf d7,loc_20040e
	rts
	.incbin 1046, 56
dat_20044e:
	.incbin 1102, 482

sub_200630:
	move.w #$2300,sr
loc_200634:
	tst.b ($f62a).w
	bne.s loc_200634
	rts

sub_20063c:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200654(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200654(pc,d0.w),d0
	rts
dat_200654:
	.incbin 1620, 640

sub_2008d4:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200930
	move.w d2,d4
	tst.w d3
	bpl.w loc_2008ee
	neg.w d3
loc_2008ee:
	tst.w d4
	bpl.w loc_2008f6
	neg.w d4
loc_2008f6:
	cmp.w d3,d4
	bcc.w loc_200908
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_20093a(pc,d4.w),d0
	bra.s loc_200912
loc_200908:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_20093a(pc,d3.w),d0
loc_200912:
	tst.w d1
	bpl.w loc_20091e
	neg.w d0
	addi.w #$80,d0
loc_20091e:
	tst.w d2
	bpl.w loc_20092a
	neg.w d0
	addi.w #$100,d0
loc_20092a:
	movem.l (a7)+,d3-d4
	rts
loc_200930:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_20093a:
	.incbin 2362, 258

sub_200a3c:
	btst.b #$3,$22(a0)
	beq.s loc_200a50
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200a50:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200a72
	move.b $26(a0),d0
	bpl.s loc_200a6c
	subq.b #$1,d0
loc_200a6c:
	addi.b #$20,d0
	bra.s loc_200a7e
loc_200a72:
	move.b $26(a0),d0
	bpl.s loc_200a7a
	addq.b #$1,d0
loc_200a7a:
	addi.b #$1f,d0
loc_200a7e:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200d08
	cmpi.b #$80,d0
	beq.w loc_200c66
	cmpi.b #$c0,d0
	beq.w loc_200bca
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
	bsr.w sub_200f92
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
	bsr.w sub_200f92
	move.w (a7)+,d0
	bsr.w sub_200b9e
	tst.w d1
	beq.s loc_200b0c
	bpl.s loc_200b0e
	cmpi.w #$fff2,d1
	blt.s loc_200b34
	add.w d1,$c(a0)
loc_200b0c:
	rts
loc_200b0e:
	cmpi.w #$e,d1
	bgt.s loc_200b1a
loc_200b14:
	add.w d1,$c(a0)
	rts
loc_200b1a:
	tst.b $38(a0)
	bne.s loc_200b14
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200b34:
	rts
	.incbin 2870, 34
loc_200b58:
	rts
	.incbin 2906, 68

sub_200b9e:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200bac
	move.b ($f768).w,d2
	move.w d0,d1
loc_200bac:
	btst.l #$0,d2
	bne.s loc_200bb8
	move.b d2,$26(a0)
	rts
loc_200bb8:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200bca:
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
	bsr.w sub_201102
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
	bsr.w sub_201102
	move.w (a7)+,d0
	bsr.w sub_200b9e
	tst.w d1
	beq.s loc_200c3e
	bpl.s loc_200c40
	cmpi.w #$fff2,d1
	blt.w loc_200b58
	add.w d1,$8(a0)
loc_200c3e:
	rts
loc_200c40:
	cmpi.w #$e,d1
	bgt.s loc_200c4c
loc_200c46:
	add.w d1,$8(a0)
	rts
loc_200c4c:
	tst.b $38(a0)
	bne.s loc_200c46
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c66:
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
	bsr.w sub_200f92
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
	bsr.w sub_200f92
	move.w (a7)+,d0
	bsr.w sub_200b9e
	tst.w d1
	beq.s loc_200ce0
	bpl.s loc_200ce2
	cmpi.w #$fff2,d1
	blt.w loc_200b34
	sub.w d1,$c(a0)
loc_200ce0:
	rts
loc_200ce2:
	cmpi.w #$e,d1
	bgt.s loc_200cee
loc_200ce8:
	sub.w d1,$c(a0)
	rts
loc_200cee:
	tst.b $38(a0)
	bne.s loc_200ce8
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d08:
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
	bsr.w sub_201102
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
	bsr.w sub_201102
	move.w (a7)+,d0
	bsr.w sub_200b9e
	tst.w d1
	beq.s loc_200d82
	bpl.s loc_200d84
	cmpi.w #$fff2,d1
	blt.w loc_200b58
	sub.w d1,$8(a0)
loc_200d82:
	rts
loc_200d84:
	cmpi.w #$e,d1
	bgt.s loc_200d90
loc_200d8a:
	sub.w d1,$8(a0)
	rts
loc_200d90:
	tst.b $38(a0)
	bne.s loc_200d8a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200daa:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200dc0
	andi.w #$380,d0
loc_200dc0:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200e20
	bmi.s loc_200e24
	cmpi.b #$5,($ff1506).l
	beq.s loc_200df0
	cmpi.b #$6,($ff1506).l
	bne.s loc_200df6
loc_200df0:
	andi.w #$7fff,$2(a0)
loc_200df6:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200e06
	bclr.b #$6,$1(a0)
loc_200e06:
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
loc_200e20:
	movea.l d1,a1
	rts
loc_200e24:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200e8c
	btst.b #$6,$1(a0)
	bne.s loc_200e52
	cmpi.b #$14,d1
	bne.w loc_200f76
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_200f76
loc_200e52:
	cmpi.b #$15,d1
	bne.s loc_200e60
	move.w #$60,d1
	bra.w loc_200f76
loc_200e60:
	cmpi.b #$1e,d1
	bne.s loc_200e6e
	move.w #$61,d1
	bra.w loc_200f76
loc_200e6e:
	cmpi.b #$1f,d1
	bne.s loc_200e7c
	move.w #$62,d1
	bra.w loc_200f76
loc_200e7c:
	cmpi.b #$32,d1
	bne.w loc_200f76
	move.w #$63,d1
	bra.w loc_200f76
loc_200e8c:
	cmpi.b #$5,($ff1506).l
	bne.w loc_200ef2
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_200edc
	cmpi.b #$6,d1
	beq.s loc_200edc
	tst.b ($ff1956).l
	beq.w loc_200f76
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_200eec
	cmpi.b #$3c,d1
	beq.s loc_200eec
	cmpi.b #$37,d1
	beq.s loc_200eec
	cmpi.b #$2f,d1
	beq.s loc_200eec
	cmpi.b #$16,d1
	beq.s loc_200eec
	bra.w loc_200f76
loc_200edc:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_200f76
loc_200eec:
	addq.b #$1,d1
	bra.w loc_200f76
loc_200ef2:
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f62
	cmpi.b #$3,$0(a0)
	bcc.w loc_200f76
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_200f76
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_200f26
	move.w #$6a,d1
	bra.s loc_200f76
loc_200f26:
	cmpi.b #$48,d1
	bne.s loc_200f32
	move.w #$6b,d1
	bra.s loc_200f76
loc_200f32:
	cmpi.b #$4a,d1
	bne.s loc_200f3e
	move.w #$6c,d1
	bra.s loc_200f76
loc_200f3e:
	cmpi.b #$10,d1
	bne.s loc_200f4a
	move.w #$6d,d1
	bra.s loc_200f76
loc_200f4a:
	cmpi.b #$63,d1
	bne.s loc_200f56
	move.w #$6e,d1
	bra.s loc_200f76
loc_200f56:
	cmpi.b #$43,d1
	bne.s loc_200f76
	move.w #$6f,d1
	bra.s loc_200f76
loc_200f62:
	btst.b #$6,$1(a0)
	beq.s loc_200f76
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_200f76
	move.w #$51,d1
loc_200f76:
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

sub_200f92:
	bsr.w sub_200daa
	cmpi.l #$210000,d1
	beq.s loc_200fac
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_200fac
	btst.l d5,d4
	bne.s loc_200fba
loc_200fac:
	add.w a3,d2
	bsr.w sub_201052
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_200fba:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_200fac
	lea (dat_21d600).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_200fe0
	not.w d1
	neg.b (a4)
loc_200fe0:
	btst.l #$c,d4
	beq.s loc_200ff0
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_200ff0:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21d700).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20100c
	neg.w d0
loc_20100c:
	tst.w d0
	beq.s loc_200fac
	bmi.s loc_201028
	cmpi.b #$10,d0
	beq.s loc_201044
loc_201018:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201028:
	cmpa.w #$10,a3
	bne.s loc_201038
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201018
loc_201038:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_200fac
loc_201044:
	sub.w a3,d2
	bsr.w sub_201052
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201052:
	bsr.w sub_200daa
	cmpi.l #$210000,d1
	beq.s loc_20106c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20106c
	btst.l d5,d4
	bne.s loc_20107a
loc_20106c:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20107a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20106c
	lea (dat_21d600).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2010a0
	not.w d1
	neg.b (a4)
loc_2010a0:
	btst.l #$c,d4
	beq.s loc_2010b0
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2010b0:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21d700).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2010cc
	neg.w d0
loc_2010cc:
	tst.w d0
	beq.s loc_20106c
	bmi.s loc_2010e2
loc_2010d2:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2010e2:
	cmpa.w #$10,a3
	bne.s loc_2010f2
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2010d2
loc_2010f2:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20106c
	not.w d1
	rts

sub_201102:
	bsr.w sub_200daa
	cmpi.l #$210000,d1
	beq.s loc_20111c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20111c
	btst.l d5,d4
	bne.s loc_20112a
loc_20111c:
	add.w a3,d3
	bsr.w sub_2011b2
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_20112a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20111c
	lea (dat_21d600).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201158
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201158:
	btst.l #$b,d4
	beq.s loc_201160
	neg.b (a4)
loc_201160:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21e700).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20117c
	neg.w d0
loc_20117c:
	tst.w d0
	beq.s loc_20111c
	bmi.s loc_201198
	cmpi.b #$10,d0
	beq.s loc_2011a4
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201198:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20111c
loc_2011a4:
	sub.w a3,d3
	bsr.w sub_2011b2
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2011b2:
	bsr.w sub_200daa
	cmpi.l #$210000,d1
	beq.s loc_2011cc
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011cc
	btst.l d5,d4
	bne.s loc_2011da
loc_2011cc:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2011da:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011cc
	lea (dat_21d600).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201208
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201208:
	btst.l #$b,d4
	beq.s loc_201210
	neg.b (a4)
loc_201210:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_21e700).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20122c
	neg.w d0
loc_20122c:
	tst.w d0
	beq.s loc_2011cc
	bmi.s loc_201242
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201242:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011cc
	not.w d1
	rts

sub_201252:
	rts
	.incbin 4692, 152
loc_2012ec:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20130c
	tst.b ($ff0f01).l
	bne.s loc_20130c
	move.b #$1,($ff156a).l
loc_20130c:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201372
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20779e
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201372
	move.b #$1,($ff1508).l
loc_201372:
	bset.b #$7,($f600).w
	bsr.w sub_202360
	tst.b ($ff156e).l
	bne.s loc_201398
	btst.b #$7,($ff152e).l
	beq.s loc_2013ce
	bset.b #$0,($ff151d).l
	beq.s loc_2013a4
loc_201398:
	bsr.w sub_200354
	bclr.b #$0,($ff151d).l
loc_2013a4:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_20143e
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2013cc
	bclr.b #$7,($ff152e).l
loc_2013cc:
	rts
loc_2013ce:
	bset.b #$0,($ff151d).l
	beq.s loc_2013dc
	bsr.w sub_200228
loc_2013dc:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2013f8
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201420
loc_2013f8:
	tst.b ($ff1508).l
	bne.s loc_20143e
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201420:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201428:
	move.l #$0,(a1)+
	dbf d6,loc_201428
	move.b #$c,($f62a).w
	bsr.w sub_200630
	rts
loc_20143e:
	cmpi.w #$800,($f78e).w
	bne.s loc_20145c
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20145c:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201472
	btst.b #$7,($ff152e).l
	beq.s loc_201478
loc_201472:
	move.l #$eee0eee,d0
loc_201478:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201480:
	move.l d0,(a1)+
	dbf d6,loc_201480
loc_201486:
	move.b #$c,($f62a).w
	bsr.w sub_200630
	bsr.w sub_20236e
	bne.s loc_201486
	tst.l ($f680).w
	bsr.w sub_20192c
	moveq #$0,d0
	lea (dat_20f100).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2014b0
	bsr.w sub_202474
loc_2014b0:
	moveq #$1,d0
	bsr.w sub_202474
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2014cc:
	move.l d0,(a1)+
	dbf d1,loc_2014cc
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2014de:
	move.l d0,(a1)+
	dbf d1,loc_2014de
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2014ee:
	move.l d0,(a1)+
	dbf d1,loc_2014ee
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201500:
	move.l d0,(a1)+
	dbf d1,loc_201500
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201510:
	move.l d0,(a1)+
	dbf d1,loc_201510
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201520:
	move.l d0,(a1)+
	dbf d1,loc_201520
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20204a
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
	bsr.w sub_2003fe
	moveq #$3,d0
	bsr.w sub_2003e2
	bsr.w sub_2026d6
	bsr.w sub_202852
	bset.b #$2,($f754).w
	bsr.w sub_203450
	bsr.w sub_203356
	jsr (sub_201252).l
	bsr.w sub_201866
loc_2015a0:
	move.b #$c,($f62a).w
	bsr.w sub_200630
	bsr.w sub_20236e
	bne.s loc_2015a0
	tst.l ($f680).w
	bne.s loc_2015a0
	bsr.w sub_2017f2
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_20198c
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201604
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201604:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201646
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201646:
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
	jsr (sub_20f0fa).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2016d6
loc_2016d0:
	bsr.w sub_2002a6
	bra.s loc_2016e4
loc_2016d6:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2016d0
	bsr.w sub_200186
loc_2016e4:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2016f2:
	move.b #$8,($f62a).w
	bsr.w sub_200630
	tst.b ($f7cc).w
	bne.s loc_201710
	btst.b #$7,($f605).w
	beq.s loc_201710
	eori.b #$1,($f63a).w
loc_201710:
	btst.b #$0,($f63a).w
	beq.w loc_201782
	bsr.w sub_2019f0
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201760
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2016f2
	subq.b #$1,($ff1508).l
	bpl.s loc_201742
	clr.b ($ff1508).l
loc_201742:
	move.w #$e,d0
	jsr (sub_205b0e).l
	bsr.w sub_20779e
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_20176e
loc_201760:
	andi.b #$70,d0
	beq.w loc_2016f2
	clr.b ($ff1508).l
loc_20176e:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2012ec
loc_201782:
	bsr.w sub_201a36
	addq.w #$1,($ff1504).l
	jsr (sub_2077b4).l
	jsr (sub_203864).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2012ec
	tst.w ($ff1502).l
	bne.w loc_2012ec
	tst.w ($ff1906).l
	bne.s loc_2017ca
	cmpi.b #$6,($d024).w
	bcs.s loc_2017ca
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2017ce
loc_2017ca:
	bsr.w sub_202852
loc_2017ce:
	jsr (sub_203a0e).l
	tst.w ($ff190e).l
	bne.s loc_2017e0
	bsr.w sub_200184
loc_2017e0:
	jsr (sub_20bd84).l
	bsr.w sub_20236e
	bsr.w sub_201898
	bra.w loc_2016f2

sub_2017f2:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_20180a
	move.w #$78,$30(a1)
loc_20180a:
	rts
	.incbin 6156, 90

sub_201866:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201878(pc,d0.w),($f796).w
	rts
dat_201878:
	.incbin 6264, 32

sub_201898:
	subq.b #$1,($ff1910).l
	bpl.s loc_2018b6
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2018b6:
	subq.b #$1,($ff1912).l
	bpl.s loc_2018d4
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_2018d4:
	subq.b #$1,($ff1914).l
	bpl.s loc_2018fc
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_2018fc
	move.b #$0,($ff1915).l
loc_2018fc:
	tst.b ($ff1916).l
	beq.s loc_20192a
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_20192a:
	rts

sub_20192c:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_20194e
	cmpi.b #$2,d0
	bne.s loc_20194e
	add.b ($ff156a).l,d0
loc_20194e:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201966(pc,d1.w),d0
	jmp (sub_205b0e).l
dat_201966:
	.incbin 6502, 38

sub_20198c:
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

sub_2019f0:
	move.w #$ab,d0
	jsr (sub_202138).l
	bset.b #$7,($f63a).w
	bne.s loc_201a34
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201a1a
loc_201a10:
	move.w #$d5,d0
	jmp (sub_205b0e).l
loc_201a1a:
	tst.b ($ff151f).l
	bne.s loc_201a10
	tst.b ($ff1520).l
	bne.s loc_201a10
	move.w #$90,d0
	jmp (sub_205b0e).l
loc_201a34:
	rts

sub_201a36:
	bclr.b #$7,($f63a).w
	beq.s loc_201a70
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201a56
loc_201a4c:
	move.w #$d6,d0
	jmp (sub_205b0e).l
loc_201a56:
	tst.b ($ff151f).l
	bne.s loc_201a4c
	tst.b ($ff1520).l
	bne.s loc_201a4c
	move.w #$91,d0
	jmp (sub_205b0e).l
loc_201a70:
	rts
loc_201a72:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201afe
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201aae
	move.w #$700,d0
loc_201aaa:
	dbf d0,loc_201aaa
loc_201aae:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201ae4(pc,d0.w),d0
	jsr dat_201ae4(pc,d0.w)
loc_201ac4:
	jsr (sub_20215c).l
	tst.b ($f63a).w
	bne.s loc_201ad8
	bsr.w sub_201f10
	bsr.w sub_201efe
loc_201ad8:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201ae4:
	.incbin 6884, 26
loc_201afe:
	tst.b ($ff1957).l
	beq.w loc_201ac4
	cmpi.b #$2,($ff1506).l
	bne.w loc_201ac4
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201b2c
	move.w #$700,d0
loc_201b28:
	dbf d0,loc_201b28
loc_201b2c:
	move.w #$1,($f6fc).w
	jsr (sub_2020d0).l
	tst.b ($f64e).w
	bne.s loc_201b64
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201b88
loc_201b64:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201b88:
	move.w ($f624).w,(a5)
	jsr (sub_2020ec).l
	bra.w loc_201ac4
	.incbin 7062, 60
	jsr (sub_2020d0).l
	bsr.w sub_201f6c
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
	bsr.w sub_205a30
	tst.b ($f767).w
	beq.s loc_201c80
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201c80:
	jsr (sub_20f0fa).l
	jsr (sub_2020ec).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f4e
	bsr.w sub_2023e0
	jmp (loc_20a7f4).l
	dc.b $4e,$75
	jsr (sub_2020d0).l
	bsr.w sub_201f6c
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
	jsr (sub_2020ec).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f4e
	bra.w loc_2023c4
	.incbin 7512, 16
	bsr.w sub_201e54
	cmpi.b #$1,($ff1903).l
	bne.s loc_201d8a
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201d8a:
	move.w ($f624).w,(a5)
	bra.w loc_2023c4
	dc.b $4e,$b9,$00,$20,$20,$d0,$61,$00
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
	jsr (sub_2020ec).l
	lea ($d000).w,a0
	bsr.w sub_205a30
	tst.b ($f767).w
	beq.s loc_201e46
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e46:
	tst.w ($f614).w
	beq.w loc_201e52
	subq.w #$1,($f614).w
loc_201e52:
	rts

sub_201e54:
	jsr (sub_2020d0).l
	bsr.w sub_201f6c
	tst.b ($f64e).w
	bne.s loc_201e8a
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201eae
loc_201e8a:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201eae:
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
	jmp (sub_2020ec).l
	dc.b $4e,$73

sub_201efe:
	tst.b ($d02a).w
	bne.s loc_201f0e
	tst.w ($f786).w
	beq.s loc_201f0e
	addq.w #$1,($f786).w
loc_201f0e:
	rts

sub_201f10:
	tst.w ($f780).w
	beq.s loc_201f1a
	addq.w #$1,($f780).w
loc_201f1a:
	tst.w ($f782).w
	beq.s loc_201f24
	addq.w #$1,($f782).w
loc_201f24:
	rts
	.incbin 7974, 42

sub_201f50:
	bsr.w sub_2020d0
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2020ec

sub_201f6c:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_201f7a
	addq.w #$2,a1

sub_201f7a:
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

sub_201fa8:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202024).l,a2
	moveq #$12,d7
loc_201fbc:
	move.w (a2)+,(a0)
	dbf d7,loc_201fbc
	move.w (dat_202026).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_201fe2:
	move.w d0,(a1)
	dbf d7,loc_201fe2
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202014:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202014
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202024:
	dc.b $80,$04
dat_202026:
	.incbin 8230, 36

sub_20204a:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20206c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20206c
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20209a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20209a
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2020b8:
	move.l d0,(a1)+
	dbf d1,loc_2020b8
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2020c8:
	move.l d0,(a1)+
	dbf d1,loc_2020c8
	rts

sub_2020d0:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2020e0:
	btst.b #$0,($a11100).l
	bne.s loc_2020e0
	rts

sub_2020ec:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8442, 62

sub_202138:
	tst.b ($f00a).w
	bne.s loc_202144
	move.b d0,($f00a).w
	rts
loc_202144:
	tst.b ($f00b).w
	bne.s loc_202150
	move.b d0,($f00b).w
	rts
loc_202150:
	tst.b ($f00c).w
	bne.s loc_20215a
	move.b d0,($f00c).w
loc_20215a:
	rts

sub_20215c:
	jsr (sub_2020d0).l
	tst.b ($f00a).w
	beq.s loc_202176
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202176:
	tst.b ($f00b).w
	beq.s loc_20218a
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20218a:
	tst.b ($f00c).w
	beq.s loc_20219e
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_20219e:
	bra.w sub_2020ec
	.incbin 8610, 32

sub_2021c2:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202284).l,a3
	lea ($c00000).l,a4
	bra.s loc_2021de

sub_2021d4:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20229a).l,a3
loc_2021de:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2021ec
	adda.w #$a,a3
loc_2021ec:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2022b0
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_20220c
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_20220c:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202258
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202234
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202234:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202242:
	lsr.w #$4,d0
loc_202244:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202252
	jmp (a3)

sub_20224e:
	moveq #$0,d4
	moveq #$8,d3
loc_202252:
	dbf d0,loc_202244
	bra.s sub_20220c
loc_202258:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202266
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202266:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202242
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202242
loc_202284:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20224e
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20224e
	rts
dat_20229a:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20224e
	rts

sub_2022b0:
	move.b (a0)+,d0
loc_2022b2:
	cmpi.b #$ff,d0
	bne.s loc_2022ba
	rts
loc_2022ba:
	move.w d0,d7
loc_2022bc:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2022b2
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
	bne.s loc_2022ea
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2022bc
loc_2022ea:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2022f6:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2022f6
	bra.s loc_2022bc

sub_202302:
	movem.l a1-a2,-(a7)
	lea (dat_20f110).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20231a:
	tst.l (a2)
	beq.s loc_202322
	addq.w #$6,a2
	bra.s loc_20231a
loc_202322:
	move.w (a1)+,d0
	bmi.s loc_20232e
loc_202326:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202326
loc_20232e:
	movem.l (a7)+,a1-a2
	rts
loc_202334:
	movem.l a1-a2,-(a7)
	lea (dat_20f110).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202360
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20235a
loc_202352:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202352
loc_20235a:
	movem.l (a7)+,a1-a2
	rts

sub_202360:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202366:
	clr.l (a2)+
	dbf d0,loc_202366
	rts

sub_20236e:
	tst.l ($f680).w
	beq.s loc_2023c2
	tst.w ($f6f8).w
	bne.s loc_2023c2
	movea.l ($f680).w,a0
	lea (loc_202284).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202390
	adda.w #$a,a3
loc_202390:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2022b0
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
loc_2023c2:
	rts
loc_2023c4:
	tst.w ($f6f8).w
	beq.w loc_202462
loc_2023cc:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2023fe

sub_2023e0:
	tst.w ($f6f8).w
	beq.s loc_202462
	tst.b ($f744).w
	bne.s loc_2023cc
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2023fe:
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
loc_202432:
	movea.w #$8,a5
	bsr.w sub_20224e
	subq.w #$1,($f6f8).w
	beq.s loc_202464
	subq.w #$1,($f6fa).w
	bne.s loc_202432
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202462:
	rts
loc_202464:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20246a:
	move.l $6(a0),(a0)+
	dbf d0,loc_20246a
	rts

sub_202474:
	lea (dat_20f110).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202486:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2021c2
	dbf d1,loc_202486
	rts
	.incbin 9382, 560

sub_2026d6:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202732).l,a0
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
	bra.w loc_20275e
dat_202732:
	dc.b $00,$04,$00,$00,$2e,$97,$00,$00
	dc.b $05,$10,$00,$60
dat_20273e:
	.incbin 10046, 32
loc_20275e:
	tst.b ($ff1522).l
	beq.s loc_20277e
	jsr (sub_206b86).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_20277c
	moveq #$0,d0
loc_20277c:
	bra.s loc_2027ba
loc_20277e:
	lea (dat_2027f6).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2027a0
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_20273e).l,a1
	adda.w d0,a1
	bra.s loc_2027aa
loc_2027a0:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2027aa:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2027ba:
	subi.w #$a0,d1
	bcc.s loc_2027c2
	moveq #$0,d1
loc_2027c2:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2027cc
	move.w d2,d1
loc_2027cc:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2027d8
	moveq #$0,d0
loc_2027d8:
	cmp.w ($f72e).w,d0
	blt.s loc_2027e2
	move.w ($f72e).w,d0
loc_2027e2:
	move.w d0,($f704).w
	bsr.w sub_2027fe
	lea (dat_2027fa).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2027f6:
	dc.b $00,$60,$03,$ec
dat_2027fa:
	dc.b $7f,$7f,$7f,$7f

sub_2027fe:
	move.w #$218,d0
	move.w #$520,d2
	sub.w ($f704).w,d2
	bcs.s loc_202814
	lsr.w #$1,d2
	sub.w d2,d0
	bpl.s loc_202814
	moveq #$0,d0
loc_202814:
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
	moveq #$c,d2
	lea ($a800).w,a2
loc_20284a:
	clr.l (a2)+
	dbf d2,loc_20284a
	rts

sub_202852:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_20285e
	rts
loc_20285e:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202bc4
	bsr.w sub_202c64
	bsr.w sub_2034f8
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_202eee
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202eba
	lea ($a834).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e86
	move.w #$218,d0
	move.w #$520,d1
	sub.w ($f704).w,d1
	bcs.s loc_2028d6
	lsr.w #$1,d1
	sub.w d1,d0
	bpl.s loc_2028d6
	moveq #$0,d0
loc_2028d6:
	bsr.w sub_202e56
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a2
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
	moveq #$3f,d6
	moveq #$0,d1
loc_202956:
	move.w d1,d2
	mulu.w #$100,d2
	addi.l #$8000,d2
	add.l d2,(a2)+
	addq.b #$1,d1
	dbf d6,loc_202956
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$5,d1
	asl.l d1,d2
	divs.w #$c,d2
	ext.l d2
	moveq #$b,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$2,d6
	lea ($a944).w,a1
loc_202996:
	move.w d3,d0
	neg.w d0
	lea (dat_202ada).l,a3
	moveq #$0,d5
	move.b $0(a3,d6.w),d5
loc_2029a6:
	move.w d0,-(a1)
	dbf d5,loc_2029a6
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202996
	lea ($a944).w,a1
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_2029c2:
	move.w d0,(a1)+
	dbf d6,loc_2029c2
	move.w ($f718).w,d0
	neg.w d0
	moveq #$5,d6
loc_2029d0:
	move.w d0,(a1)+
	dbf d6,loc_2029d0
	lea ($a800).w,a2
	moveq #$c,d6
loc_2029dc:
	move.l (a2)+,d1
	swap d1
	add.w ($f708).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202acc).l,a3
	move.b $0(a3,d6.w),d5
loc_2029f2:
	move.w d1,(a1)+
	dbf d5,loc_2029f2
	dbf d6,loc_2029dc
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202a04:
	move.w d0,(a1)+
	dbf d6,loc_202a04
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a12:
	move.w d0,(a1)+
	dbf d6,loc_202a12
	move.w ($f710).w,d0
	neg.w d0
	moveq #$7,d6
loc_202a20:
	move.w d0,(a1)+
	dbf d6,loc_202a20
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a2e:
	move.w d0,(a1)+
	dbf d6,loc_202a2e
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divs.w #$18,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	moveq #$5,d6
	move.w ($f708).w,d3
loc_202a54:
	move.w d3,d0
	neg.w d0
	lea (dat_202ade).l,a3
	moveq #$0,d5
	move.b $0(a3,d6.w),d5
loc_202a64:
	move.w d0,(a1)+
	dbf d5,loc_202a64
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202a54
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202a7c:
	move.w d0,(a1)+
	dbf d6,loc_202a7c
	lea ($cc00).w,a1
	lea ($a934).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	move.w d0,d4
	andi.w #$3f8,d0
	lsr.w #$2,d0
	move.w d0,d3
	lsr.w #$1,d3
	moveq #$57,d1
	moveq #$1c,d5
	sub.w d3,d1
	bcs.s loc_202ac8
	cmpi.w #$1b,d1
	bcs.s loc_202aac
	moveq #$1c,d1
loc_202aac:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	lea (dat_202ae4).l,a3
	lea (dat_23aee0).l,a4
	addi.w #$40,($f7d8).w
	bsr.w sub_202b3a
loc_202ac8:
	bra.w loc_202aea
dat_202acc:
	dc.b $01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$03,$01,$00
dat_202ada:
	dc.b $03,$01,$01,$00
dat_202ade:
	dc.b $05,$01,$01,$03,$01,$01
dat_202ae4:
	dc.b $00,$40,$02,$10,$7f,$ff
loc_202aea:
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	bmi.s loc_202b38
	lea ($a834).w,a2
	move.b ($f7d8).w,d5
	sub.w ($f70c).w,d4
loc_202afe:
	move.l (a2)+,d2
	swap d2
	add.w ($f708).w,d2
	neg.w d2
	move.w d2,d0
	move.w #$5c0,d3
	sub.w ($f704).w,d3
	cmp.w d3,d4
	bcs.s loc_202b2e
	andi.w #$ff,d5
	move.b $0(a4,d5.w),d3
	ext.w d3
	add.w d3,d3
	add.w ($f700).w,d3
	neg.w d3
	swap d0
	move.w d3,d0
	swap d0
loc_202b2e:
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d5
	dbf d1,loc_202afe
loc_202b38:
	rts

sub_202b3a:
	cmp.w (a3),d4
	bcc.s loc_202b70
loc_202b3e:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b5a(pc,d2.w)
loc_202b4e:
	tst.w d1
	bmi.s loc_202b6e
	cmp.w (a3),d4
	bcc.s loc_202b8a
loc_202b56:
	move.w (a2)+,d0
	addq.w #$8,d4
loc_202b5a:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b4e
loc_202b6e:
	rts
loc_202b70:
	move.w (a3)+,d3
	addi.w #$20,d3
	sub.w d4,d3
	bgt.s loc_202b94
	cmp.w (a3),d4
	bcs.s loc_202b3e
	move.w (a3)+,d3
	addi.w #$20,d3
	sub.w d4,d3
	ble.s loc_202b3e
	bra.s loc_202b94
loc_202b8a:
	move.w (a3)+,d3
	addi.w #$20,d3
	sub.w d4,d3
	ble.s loc_202b56
loc_202b94:
	subq.w #$1,d3
	move.w d3,d6
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202b9e:
	andi.w #$ff,d2
	move.b $0(a4,d2.w),d0
	ext.w d0
	add.w ($f708).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d2
	dbf d3,loc_202b9e
	lsr.w #$3,d6
loc_202bba:
	move.w (a2)+,d0
	subq.w #$1,d1
	dbf d6,loc_202bba
	bra.s loc_202b4e

sub_202bc4:
	move.w ($f700).w,d4
	bsr.s sub_202bf8
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bf6
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202bf0
	bset.b #$2,($f754).w
	rts
loc_202bf0:
	bset.b #$3,($f754).w
loc_202bf6:
	rts

sub_202bf8:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202c0a
	bcs.s loc_202c3a
	bra.s loc_202c10
loc_202c0a:
	clr.w ($f73a).w
	rts
loc_202c10:
	cmpi.w #$10,d0
	blt.s loc_202c1a
	move.w #$10,d0
loc_202c1a:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202c28
	move.w ($f72a).w,d0
loc_202c28:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c3a:
	cmpi.w #$fff0,d0
	bge.s loc_202c44
	move.w #$fff0,d0
loc_202c44:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202c28
	move.w ($f728).w,d0
	bra.s loc_202c28
	.incbin 11348, 16

sub_202c64:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c78
	subq.w #$5,d0
loc_202c78:
	btst.b #$1,$22(a6)
	beq.s loc_202c98
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202ce4
	subi.w #$40,d0
	bcc.s loc_202ce4
	tst.b ($f75c).w
	bne.s loc_202cf6
	bra.s loc_202ca4
loc_202c98:
	sub.w ($f73e).w,d0
	bne.s loc_202caa
	tst.b ($f75c).w
	bne.s loc_202cf6
loc_202ca4:
	clr.w ($f73c).w
	rts
loc_202caa:
	cmpi.w #$60,($f73e).w
	bne.s loc_202cd2
	move.w $14(a6),d1
	bpl.s loc_202cba
	neg.w d1
loc_202cba:
	cmpi.w #$800,d1
	bcc.s loc_202ce4
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d44
	cmpi.w #$fffa,d0
	blt.s loc_202d0e
	bra.s loc_202cfc
loc_202cd2:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d44
	cmpi.w #$fffe,d0
	blt.s loc_202d0e
	bra.s loc_202cfc
loc_202ce4:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d44
	cmpi.w #$fff0,d0
	blt.s loc_202d0e
	bra.s loc_202cfc
loc_202cf6:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202cfc:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d4e
	bra.w loc_202d1a
loc_202d0e:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d1a:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d72
	cmpi.w #$ff00,d1
	bgt.s loc_202d3e
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d72
loc_202d3e:
	move.w ($f72c).w,d1
	bra.s loc_202d72
loc_202d44:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d4e:
	cmp.w ($f72e).w,d1
	blt.s loc_202d72
	subi.w #$800,d1
	bcs.s loc_202d6e
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d72
loc_202d6e:
	move.w ($f72e).w,d1
loc_202d72:
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
	bne.s loc_202db4
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202dae
	bset.b #$0,($f754).w
	rts
loc_202dae:
	bset.b #$1,($f754).w
loc_202db4:
	rts
	.incbin 11702, 160

sub_202e56:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e84
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e7e
	bset.b #$0,($f756).w
	rts
loc_202e7e:
	bset.b #$1,($f756).w
loc_202e84:
	rts

sub_202e86:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202eb8
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202eb2
	bset.b d6,($f756).w
	bra.s loc_202eb8
loc_202eb2:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202eb8:
	rts

sub_202eba:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202eec
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202ee6
	bset.b d6,($f758).w
	bra.s loc_202eec
loc_202ee6:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202eec:
	rts

sub_202eee:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202f20
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f1a
	bset.b d6,($f75a).w
	bra.s loc_202f20
loc_202f1a:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202f20:
	rts
	.incbin 12066, 20
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20300c
	lea ($f758).w,a2
	lea ($f710).w,a3
	bra.w sub_2030f0

sub_202f4e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20300c
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030f0
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030f2
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20300a
	bclr.b #$0,(a2)
	beq.s loc_202fc0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030f4
loc_202fc0:
	bclr.b #$1,(a2)
	beq.s loc_202fda
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030f4
loc_202fda:
	bclr.b #$2,(a2)
	beq.s loc_202ff0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20314a
loc_202ff0:
	bclr.b #$3,(a2)
	beq.s loc_20300a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20331e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20314a
loc_20300a:
	rts

sub_20300c:
	lea (dat_2033d6).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203028
	bclr.b #$1,(a2)
	beq.s loc_203072
	move.w #$e0,d4
loc_203028:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2030a2(pc,d0.w),a3
	beq.s loc_20305a
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20331e
	movem.l (a7)+,d4-d5
	bsr.w sub_2030f4
	movea.l (a7)+,a0
	bra.s loc_203072
loc_20305a:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203320
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203120
	movea.l (a7)+,a0
loc_203072:
	tst.b (a2)
	bne.s loc_203078
	rts
loc_203078:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_20308c
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_20308c:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2030b2
dat_2030a2:
	.incbin 12450, 16
loc_2030b2:
	moveq #$f,d6
	move.l #$800000,d7
loc_2030ba:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_2030e4
	add.w d0,d0
	movea.l dat_2030a2(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f6
	movem.l (a7)+,d4-d5
	bsr.w sub_20331e
	bsr.w sub_203178
	movem.l (a7)+,d4-d5/a0
loc_2030e4:
	addi.w #$10,d4
	dbf d6,loc_2030ba
	clr.b (a2)
	rts

sub_2030f0:
	rts

sub_2030f2:
	rts

sub_2030f4:
	moveq #$15,d6

sub_2030f6:
	move.l #$800000,d7
	move.l d0,d1
loc_2030fe:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f6
	move.l d1,d0
	bsr.w sub_203178
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030fe
	rts

sub_203120:
	move.l #$800000,d7
	move.l d0,d1
loc_203128:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f8
	move.l d1,d0
	bsr.w sub_203178
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203128
	rts

sub_20314a:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203154:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031f6
	move.l d1,d0
	bsr.w sub_203178
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203154
	rts

sub_203178:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2031b4
	btst.b #$3,(a0)
	bne.s loc_203194
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203194:
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
loc_2031b4:
	btst.b #$3,(a0)
	bne.s loc_2031d6
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
loc_2031d6:
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

sub_2031f6:
	add.w (a3),d5

sub_2031f8:
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
	beq.s loc_203246
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
loc_203246:
	rts
	.incbin 12872, 214

sub_20331e:
	add.w (a3),d5

sub_203320:
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
	.incbin 13114, 28

sub_203356:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203380
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2033a8

sub_203380:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203384:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20331e
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030f6
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203384
	rts
loc_2033a8:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033ac:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033d6).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_203418
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2033ac
	rts
dat_2033d6:
	.incbin 13270, 50
dat_203408:
	.incbin 13320, 16

sub_203418:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203408(pc,d0.w),a3
	beq.s loc_20343a
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20331e
	movem.l (a7)+,d4-d5
	bsr.w sub_2030f4
	bra.s loc_20344e
loc_20343a:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203320
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203120
loc_20344e:
	rts

sub_203450:
	moveq #$0,d0
	lea (dat_20f100).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2021d4
	movea.l (a2)+,a0
	bsr.w sub_2034aa
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2003e2
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203494
	jmp (loc_20bd60).l
loc_203494:
	btst.b #$1,($ff151c).l
	beq.s loc_2034a8
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2034a8
	bsr.w sub_202302
loc_2034a8:
	rts

sub_2034aa:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2034b4:
	move.l d0,(a3)+
	dbf d1,loc_2034b4
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2034ca
	lea ($a040).w,a3
	moveq #$2,d1

sub_2034ca:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_21fa20).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034e4:
	move.w d1,d0
	movea.l a3,a0
loc_2034e8:
	move.b (a1)+,(a0)+
	dbf d0,loc_2034e8
	lea $80(a3),a3
	dbf d2,loc_2034e4
	rts

sub_2034f8:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203572(pc,d0.w),d0
	jsr dat_203572(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20351e
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20351e:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20354c
	bcc.s loc_20354e
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203542
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203542:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20354c:
	rts
loc_20354e:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203566
	btst.b #$1,($d022).w
	beq.s loc_203566
	add.w d1,d1
	add.w d1,d1
loc_203566:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203572:
	.incbin 13682, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20362c(pc,d0.w),d0
	jmp dat_20362c(pc,d0.w)
dat_20362c:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$510,($f726).w
	rts
	.incbin 13882, 190
	rts
	.incbin 14074, 68
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203750(pc,d0.w),d0
	jmp dat_203750(pc,d0.w)
dat_203750:
	dc.b $00,$06,$00,$0e,$00,$40
	move.w #$510,($f726).w
	rts
	.incbin 14174, 262

sub_203864:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20386c:
	move.b (a0),d0
	beq.s loc_203882
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c86).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203882:
	lea $40(a0),a0
	dbf d7,loc_20386c
	rts

sub_20388c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2038ca
	bpl.s loc_2038bc
	btst.b #$1,$2c(a0)
	beq.s loc_2038bc
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2038ca
loc_2038bc:
	btst.b #$2,$2c(a0)
	bne.s loc_2038ca
	addi.w #$38,$12(a0)
loc_2038ca:
	tst.w $12(a0)
	bmi.s loc_2038de
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2038de
	move.w #$1000,$12(a0)
loc_2038de:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2038ee:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_20392a
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_20392a
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203928
	neg.w d1
loc_203928:
	add.w d1,d0
loc_20392a:
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

sub_203944:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2039b4
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039d0
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2039d0
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_20398e
	cmpi.w #$800,d3
	bcs.s loc_2039a0
	subi.w #$800,d3
	bra.s loc_2039a0
loc_20398e:
	cmpi.w #$700,($f704).w
	bcs.s loc_2039a0
	cmpi.w #$100,d3
	bcc.s loc_2039a0
	addi.w #$800,d3
loc_2039a0:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039d0
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2039d0
loc_2039b4:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2039d0
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2039d0:
	rts
	.incbin 14802, 30

sub_2039f0:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2039f6:
	move.l d1,(a1)+
	dbf d0,loc_2039f6
	rts
dat_2039fe:
	.incbin 14846, 16

sub_203a0e:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203a1a:
	tst.w (a4)
	beq.w loc_203ada
	moveq #$2,d6
loc_203a22:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203ad2
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a88
	movea.l dat_2039fe(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a6c
	cmpi.w #$800,d2
	bcs.s loc_203a7e
	subi.w #$800,d2
	bra.s loc_203a7e
loc_203a6c:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a7e
	cmpi.w #$100,d2
	bcc.s loc_203a7e
	addi.w #$800,d2
loc_203a7e:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203aaa
loc_203a88:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203aaa
	dc.b $34,$28,$00,$0c
	sub.w $4(a1),d2
	addi.w #$80,d2
	cmpi.w #$60,d2
	bcs.s loc_203ad2
	cmpi.w #$180,d2
	bcc.s loc_203ad2
loc_203aaa:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203ac8
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203acc
loc_203ac8:
	bsr.w sub_203afc
loc_203acc:
	bset.b #$7,$1(a0)
loc_203ad2:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203a22
loc_203ada:
	lea $80(a4),a4
	dbf d7,loc_203a1a
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203af4
	move.l #$0,(a2)
	rts
loc_203af4:
	move.b #$0,-$5(a2)
	rts

sub_203afc:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203b42
	btst.l #$1,d4
	bne.w loc_203b90
loc_203b0e:
	cmpi.b #$50,d5
	beq.s loc_203b40
	move.b (a1)+,d0
	ext.w d0
	add.w d2,d0
loc_203b1a:
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
	bne.s loc_203b3a
	addq.w #$1,d0
loc_203b3a:
	move.w d0,(a2)+
	dbf d1,loc_203b0e
loc_203b40:
	rts
loc_203b42:
	btst.l #$1,d4
	bne.w loc_203bd6
loc_203b4a:
	cmpi.b #$50,d5
	beq.s loc_203b8e
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
	bne.s loc_203b88
	addq.w #$1,d0
loc_203b88:
	move.w d0,(a2)+
	dbf d1,loc_203b4a
loc_203b8e:
	rts
loc_203b90:
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
	bne.s loc_203bce
	addq.w #$1,d0
loc_203bce:
	move.w d0,(a2)+
	dbf d1,loc_203b90
loc_203bd4:
	rts
loc_203bd6:
	cmpi.b #$50,d5
	beq.s loc_203c28
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
	bne.s loc_203c22
	addq.w #$1,d0
loc_203c22:
	move.w d0,(a2)+
	dbf d1,loc_203bd6
loc_203c28:
	rts
	.incbin 15402, 92
dat_203c86:
	.incbin 15494, 246

sub_203d7c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d8e
	move.w #$0,(a1)
	rts
loc_203d8e:
	tst.w (a1)
	bne.s loc_203d98
	move.b #$1,$1(a1)
loc_203d98:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203de2
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203dd4
	neg.w $10(a0)
loc_203dd4:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205b0e
loc_203de2:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203e00
	cmpa.w #$d040,a0
	beq.s loc_203e00
	tst.b ($ff1906).l
	beq.s loc_203e00
	jmp (loc_2074ac).l
loc_203e00:
	move.b $2a(a0),d0
	beq.s loc_203e2a
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203e1c
	cmpi.b #$2d,d0
	bcs.s loc_203e26
	move.b #$2d,d0
	bra.s loc_203e26
loc_203e1c:
	cmpi.b #$1e,d0
	bcs.s loc_203e26
	move.b #$1e,d0
loc_203e26:
	move.b d0,$2a(a0)
loc_203e2a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203e38(pc,d0.w),d1
	jmp dat_203e38(pc,d1.w)
dat_203e38:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203e42:
	tst.b ($d300).w
	bne.s loc_203e80
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e80:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203ea8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203ea8:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203edc:
	tst.b ($ff1506).l
	bne.s loc_203f42
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203f42
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f46
	cmpi.b #$2f,d1
	bne.s loc_203f44
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f42
	tst.b $2c(a0)
	beq.s loc_203f42
	jsr (sub_2079b0).l
	bne.s loc_203f42
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203f3a
	moveq #$0,d0
loc_203f3a:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f42:
	rts
loc_203f44:
	rts

sub_203f46:
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

sub_203f6c:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f78
	neg.w d0
loc_203f78:
	btst.b #$1,$2c(a0)
	beq.s loc_203f88
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203fb0
loc_203f88:
	cmpi.w #$600,d0
	bcs.s loc_203fb0
	tst.w $14(a0)
	bpl.s loc_203fa2
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203fbe
	move.w #$e0,d1
	bra.s loc_203fbe
loc_203fa2:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203fbe
	move.w #$60,d1
	bra.s loc_203fbe
loc_203fb0:
	cmpi.w #$a0,d1
	beq.s loc_203fbe
	bcc.s loc_203fbc
	addq.w #$2,d1
	bra.s loc_203fbe
loc_203fbc:
	subq.w #$2,d1
loc_203fbe:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203f6c
	bsr.w sub_203edc
	tst.w ($ff1588).l
	beq.s loc_203fe4
	btst.b #$4,($f605).w
	beq.s loc_203fe4
	move.b #$1,($ff1906).l
	rts
loc_203fe4:
	tst.b ($f7cc).w
	bne.s loc_203ff0
	move.w ($f604).w,($f602).w
loc_203ff0:
	btst.b #$0,$2c(a0)
	beq.s loc_204014
	cmpi.b #$6,($ff1506).l
	bne.s loc_20400e
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_20402c
loc_20400e:
	bsr.w sub_2042f6
	bra.s loc_20402c
loc_204014:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204072(pc,d0.w),d1
	jsr dat_204072(pc,d1.w)
	jsr (sub_2065c6).l
loc_20402c:
	bsr.s sub_204080
	bsr.w sub_204140
	bsr.w sub_20415a
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204054
	tst.b $1c(a0)
	bne.s loc_204054
	move.b $1d(a0),$1c(a0)
loc_204054:
	bsr.w sub_2054fe
	tst.b $2c(a0)
	bmi.s loc_20406c
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20406c
	jsr (sub_207056).l
loc_20406c:
	bsr.w sub_2053b4
	rts
dat_204072:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204080:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2040a4
	move.w $30(a0),d0
	beq.s loc_204096
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2040a4
loc_204096:
	btst.b #$6,$2c(a0)
	bne.s loc_2040a4
	jsr (sub_203944).l
loc_2040a4:
	tst.b ($ff151f).l
	beq.s loc_2040e8
	tst.w $32(a0)
	beq.s loc_2040e8
	subq.w #$1,$32(a0)
	bne.s loc_2040e8
	tst.b ($ff1520).l
	bne.s loc_2040e0
	tst.b ($ff1958).l
	bne.s loc_2040e0
	tst.b ($ff152e).l
	bne.s loc_2040da
	move.w #$e,d0
	jsr (sub_205b0e).l
loc_2040da:
	jsr (sub_20192c).l
loc_2040e0:
	move.b #$0,($ff151f).l
loc_2040e8:
	tst.b ($ff1520).l
	beq.s loc_20413e
	tst.w $34(a0)
	beq.s loc_20413e
	subq.w #$1,$34(a0)
	bne.s loc_20413e
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204136
	tst.b ($ff1958).l
	bne.s loc_204136
	tst.b ($ff152e).l
	bne.s loc_204130
	move.w #$e,d0
	jsr (sub_205b0e).l
loc_204130:
	jsr (sub_20192c).l
loc_204136:
	move.b #$0,($ff1520).l
loc_20413e:
	rts

sub_204140:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20415a:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204166
loc_204164:
	rts
loc_204166:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204178
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204164
loc_204178:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2041bc
	bset.b #$6,$22(a0)
	bne.s loc_204164
	bsr.w sub_205e12
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204164
	bra.s loc_2041f4
loc_2041bc:
	tst.w $12(a0)
	beq.s loc_2041c4
	bpl.s loc_204164
loc_2041c4:
	bclr.b #$6,$22(a0)
	beq.s loc_204164
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204164
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2041f4
	move.w #$f000,$12(a0)
loc_2041f4:
	jsr (sub_2079b0).l
	bne.s loc_204208
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204208:
	rts

sub_20420a:
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
	bcs.s loc_2042e4
	move.l #$50000,d0
loc_2042e4:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2042f6:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20431c
	tst.b ($ff152e).l
	beq.s loc_204312
	cmpi.b #$2,($ff152e).l
	bne.s loc_20431c
loc_204312:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2043cc
loc_20431c:
	tst.b $2a(a0)
	bne.w loc_2043da
	tst.b ($f784).w
	beq.w loc_2043da
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20433a
	neg.w d0
loc_20433a:
	tst.w ($f786).w
	bne.s loc_204346
	move.w #$1,($f786).w
loc_204346:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20435c
	move.b #$1,($ff1502).l
	bra.w loc_205b0a
loc_20435c:
	cmpi.w #$d2,d1
	bcs.s loc_2043b0
	cmpi.b #$2,($ff1522).l
	beq.s loc_2043ae
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204386
	move.w #$82,d0
	jsr (sub_205b0e).l
	moveq #$0,d0
loc_204386:
	add.b ($f784).w,d0
	bpl.s loc_204390
	moveq #$0,d0
	bra.s loc_204398
loc_204390:
	cmpi.b #$3,d0
	bcs.s loc_204398
	moveq #$2,d0
loc_204398:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20420a
	move.b #$2,($ff1522).l
loc_2043ae:
	rts
loc_2043b0:
	cmpi.w #$5a,d1
	bcc.s loc_2043c8
	cmp.w d2,d0
	bcc.w loc_203e42
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2043c8:
	cmp.w d2,d0
	bcc.s loc_2043da
loc_2043cc:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2043da:
	rts
	bsr.w sub_203d7c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20440c
	tst.b ($ff195b).l
	beq.s loc_2043fa
	cmpi.b #$79,$1a(a0)
	bne.s loc_204436
	bra.s loc_204402
loc_2043fa:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204436
loc_204402:
	bsr.w sub_204c9e
	jmp (sub_20388c).l
loc_20440c:
	bsr.w sub_2044e4
	bsr.w sub_2042f6
	bsr.w sub_204d88
	bsr.w sub_204eb4
	bsr.w sub_204558
	bsr.w sub_204d0a
	bsr.w sub_204c9e
	jsr (sub_2038ee).l
	bsr.w sub_200a3c
	bsr.w sub_204f32
loc_204436:
	rts
	tst.b ($f7c7).w
	bne.s loc_204452
	cmpi.b #$15,$1c(a0)
	beq.s loc_204452
	tst.w $12(a0)
	bmi.s loc_204452
	move.b #$0,$1c(a0)
loc_204452:
	bsr.w sub_2044e4
	bsr.w sub_2042f6
	bsr.w sub_204e72
	bsr.w sub_204bbe
	bsr.w sub_204c9e
	jsr (sub_20388c).l
	btst.b #$6,$22(a0)
	beq.s loc_20447a
	subi.w #$28,$12(a0)
loc_20447a:
	bsr.w sub_204f7c
	bsr.w sub_204fa0
	rts
	bsr.w sub_2044e4
	bsr.w sub_2042f6
	bsr.w sub_204d88
	bsr.w sub_204ef0
	bsr.w sub_2049f8
	bsr.w sub_204c9e
	tst.b $2a(a0)
	bne.s loc_2044a8
	jsr (sub_2038ee).l
loc_2044a8:
	bsr.w sub_200a3c
	bsr.w sub_204f32
	rts
	bsr.w sub_2044e4
	bsr.w sub_2042f6
	bsr.w sub_204e72
	bsr.w sub_204bbe
	bsr.w sub_204c9e
	jsr (sub_20388c).l
	btst.b #$6,$22(a0)
	beq.s loc_2044da
	subi.w #$28,$12(a0)
loc_2044da:
	bsr.w sub_204f7c
	bsr.w sub_204fa0
	rts

sub_2044e4:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204550
	tst.w ($ff1506).l
	bne.s loc_204550
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204552).l,a2
loc_204518:
	move.b (a2)+,d0
	bmi.s loc_204528
	cmp.b d0,d1
	bne.s loc_204518
	bset.b #$1,$2c(a0)
	rts
loc_204528:
	bclr.b #$1,$2c(a0)
	beq.s loc_204550
	tst.w $12(a0)
	bpl.s loc_204550
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204550
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204550
	neg.w $10(a0)
loc_204550:
	rts
dat_204552:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204558:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204882
	tst.w $3e(a0)
	bne.w loc_204832
	btst.b #$2,($f602).w
	beq.s loc_204580
	bsr.w sub_204912
loc_204580:
	btst.b #$3,($f602).w
	beq.s loc_20458c
	bsr.w sub_204988
loc_20458c:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204832
	tst.w $14(a0)
	beq.s loc_2045ac
	tst.b $2a(a0)
	beq.w loc_204832
	bra.s loc_2045b8
loc_2045ac:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2045b8:
	btst.b #$3,$22(a0)
	beq.s loc_20460a
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204662
	cmpi.b #$1e,$0(a1)
	bne.s loc_2045ea
	move.b #$0,$1c(a0)
	bra.w loc_204832
loc_2045ea:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204646
	cmp.w d2,d1
	bge.s loc_204634
	bra.s loc_204662
loc_20460a:
	jsr (sub_206dba).l
	cmpi.w #$c,d1
	blt.s loc_204662
	move.w #$ab,d0
	jsr (sub_202138).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20463e
loc_204634:
	btst.b #$0,$22(a0)
	bne.s loc_20464e
	bra.s loc_204658
loc_20463e:
	cmpi.b #$3,$37(a0)
	bne.s loc_204662
loc_204646:
	btst.b #$0,$22(a0)
	bne.s loc_204658
loc_20464e:
	move.b #$32,$1c(a0)
	bra.w loc_204832
loc_204658:
	move.b #$6,$1c(a0)
	bra.w loc_204832
loc_204662:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204676
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204676:
	btst.b #$7,($f788).w
	bne.w loc_20477a
	btst.b #$6,($f788).w
	bne.w loc_20479a
	btst.b #$1,($f602).w
	bne.w loc_20479a
	andi.b #$f,($f788).w
	beq.s loc_2046ae
	btst.b #$0,($f603).w
	beq.s loc_2046c2
	bset.b #$7,($f788).w
	bra.w loc_204856
loc_2046ae:
	btst.b #$0,($f603).w
	beq.w loc_2046c2
	move.b #$1,($f788).w
	bra.w loc_204856
loc_2046c2:
	btst.b #$0,($f602).w
	beq.s loc_20473e
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204720
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2046f2
	asr.w #$1,d2
	sub.w d2,d1
loc_2046f2:
	btst.b #$0,$22(a0)
	beq.s loc_2046fe
	neg.w d0
	neg.w d1
loc_2046fe:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204714
	cmp.w d0,d1
	ble.s loc_20471a
	bra.s loc_204718
loc_204714:
	cmp.w d1,d0
	ble.s loc_20471a
loc_204718:
	move.w d1,d0
loc_20471a:
	move.w d0,$14(a0)
	rts
loc_204720:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20473a
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202138).l
loc_20473a:
	bra.w loc_204856
loc_20473e:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20475e
	move.w #$ab,d0
	jsr (sub_202138).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_20479a
loc_20475e:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202138).l
	bra.w loc_204832
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20477a:
	btst.b #$0,($f602).w
	beq.s loc_20479a
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204856
	addq.w #$2,($f73e).w
	bra.w loc_204856
loc_20479a:
	btst.b #$6,($f788).w
	bne.w loc_204816
	andi.b #$f,($f788).w
	beq.s loc_2047be
	btst.b #$1,($f603).w
	beq.s loc_2047d0
	bset.b #$6,($f788).w
	bra.w loc_204856
loc_2047be:
	btst.b #$1,($f603).w
	beq.s loc_2047d0
	move.b #$1,($f788).w
	bra.w loc_204856
loc_2047d0:
	btst.b #$1,($f602).w
	beq.s loc_204832
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204814
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204814
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204806
	neg.w $14(a0)
loc_204806:
	move.w #$9c,d0
	jsr (sub_202138).l
	bsr.w sub_204d32
loc_204814:
	bra.s loc_204856
loc_204816:
	btst.b #$1,($f602).w
	beq.s loc_204832
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204856
	subq.w #$2,($f73e).w
	bra.s loc_204856
loc_204832:
	cmpi.w #$60,($f73e).w
	bne.s loc_20484c
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204856
	move.b #$0,($f788).w
	bra.s loc_204856
loc_20484c:
	bcc.s loc_204852
	addq.w #$4,($f73e).w
loc_204852:
	subq.w #$2,($f73e).w
loc_204856:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204882
	move.w $14(a0),d0
	beq.s loc_204882
	bmi.s loc_204876
	sub.w d5,d0
	bcc.s loc_204870
	move.w #$0,d0
loc_204870:
	move.w d0,$14(a0)
	bra.s loc_204882
loc_204876:
	add.w d5,d0
	bcc.s loc_20487e
	move.w #$0,d0
loc_20487e:
	move.w d0,$14(a0)
loc_204882:
	move.b $26(a0),d0
	jsr (sub_20063c).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2048a0:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204910
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204910
	bmi.s loc_2048b8
	neg.w d1
loc_2048b8:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206c7a
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204910
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20490c
	cmpi.b #$40,d0
	beq.s loc_2048fa
	cmpi.b #$80,d0
	beq.s loc_2048f4
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048f4:
	sub.w d1,$12(a0)
	rts
loc_2048fa:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20490c:
	add.w d1,$12(a0)
loc_204910:
	rts

sub_204912:
	tst.b $2a(a0)
	bne.s loc_204986
	move.w $14(a0),d0
	beq.s loc_204920
	bpl.s loc_204950
loc_204920:
	bset.b #$0,$22(a0)
	bne.s loc_204934
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204934:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204944
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204944
	move.w d1,d0
loc_204944:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204950:
	sub.w d4,d0
	bcc.s loc_204958
	move.w #$ff80,d0
loc_204958:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204986
	cmpi.w #$400,d0
	blt.s loc_204986
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202138).l
loc_204986:
	rts

sub_204988:
	tst.b $2a(a0)
	bne.s loc_2049f6
	move.w $14(a0),d0
	bmi.s loc_2049c0
	bclr.b #$0,$22(a0)
	beq.s loc_2049a8
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2049a8:
	cmp.w d6,d0
	bge.s loc_2049b4
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2049b4
	move.w d6,d0
loc_2049b4:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2049c0:
	add.w d4,d0
	bcc.s loc_2049c8
	move.w #$80,d0
loc_2049c8:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2049f6
	cmpi.w #$fc00,d0
	bgt.s loc_2049f6
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202138).l
loc_2049f6:
	rts

sub_2049f8:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204b42
	tst.w $3e(a0)
	bne.s loc_204a30
	btst.b #$2,($f602).w
	beq.s loc_204a24
	bsr.w sub_204b78
loc_204a24:
	btst.b #$3,($f602).w
	beq.s loc_204a30
	bsr.w sub_204b9c
loc_204a30:
	tst.b $2a(a0)
	beq.w loc_204ada
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a50
	asr.w #$1,d2
	sub.w d2,d1
loc_204a50:
	btst.b #$0,$22(a0)
	beq.s loc_204a5c
	neg.w d0
	neg.w d1
loc_204a5c:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a72
	cmp.w d0,d1
	ble.s loc_204a78
	bra.s loc_204a76
loc_204a72:
	cmp.w d1,d0
	ble.s loc_204a78
loc_204a76:
	move.w d1,d0
loc_204a78:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204aac
	rts
loc_204a86:
	move.w #$ab,d0
	jsr (sub_202138).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204b0c
loc_204aac:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204a86
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202138).l
	btst.b #$0,$22(a0)
	bne.s loc_204ad2
	bsr.w sub_204b9c
	bra.s loc_204ada
loc_204ad2:
	bsr.w sub_204b78
	bra.s loc_204ada
	dc.b $4e,$75
loc_204ada:
	move.w $14(a0),d0
	beq.s loc_204afc
	bmi.s loc_204af0
	sub.w d5,d0
	bcc.s loc_204aea
	move.w #$0,d0
loc_204aea:
	move.w d0,$14(a0)
	bra.s loc_204afc
loc_204af0:
	add.w d5,d0
	bcc.s loc_204af8
	move.w #$0,d0
loc_204af8:
	move.w d0,$14(a0)
loc_204afc:
	tst.w $14(a0)
	bne.s loc_204b42
	move.w #$ab,d0
	jsr (sub_202138).l
loc_204b0c:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204b2c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204b3c
loc_204b2c:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204b3c:
	move.b #$5,$1c(a0)
loc_204b42:
	move.b $26(a0),d0
	jsr (sub_20063c).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204b66
	move.w #$1000,d1
loc_204b66:
	cmpi.w #$f000,d1
	bge.s loc_204b70
	move.w #$f000,d1
loc_204b70:
	move.w d1,$10(a0)
	bra.w loc_2048a0

sub_204b78:
	move.w $14(a0),d0
	beq.s loc_204b80
	bpl.s loc_204b8e
loc_204b80:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b8e:
	sub.w d4,d0
	bcc.s loc_204b96
	move.w #$ff80,d0
loc_204b96:
	move.w d0,$14(a0)
	rts

sub_204b9c:
	move.w $14(a0),d0
	bmi.s loc_204bb0
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204bb0:
	add.w d4,d0
	bcc.s loc_204bb8
	move.w #$80,d0
loc_204bb8:
	move.w d0,$14(a0)
	rts

sub_204bbe:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204bf8
	tst.w ($ff1506).l
	bne.s loc_204bf8
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204bf0
	cmpi.w #$840,$8(a0)
	bcc.s loc_204bf0
	rts
loc_204bf0:
	btst.b #$1,$2c(a0)
	bne.s loc_204c28
loc_204bf8:
	btst.b #$2,($f602).w
	beq.s loc_204c12
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204c12
	move.w d1,d0
loc_204c12:
	btst.b #$3,($f602).w
	beq.s loc_204c28
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204c28
	move.w d6,d0
loc_204c28:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204c3e
	bcc.s loc_204c3a
	addq.w #$4,($f73e).w
loc_204c3a:
	subq.w #$2,($f73e).w
loc_204c3e:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204c6c
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204c6c
	bmi.s loc_204c60
	sub.w d1,d0
	bcc.s loc_204c5a
	move.w #$0,d0
loc_204c5a:
	move.w d0,$10(a0)
	rts
loc_204c60:
	sub.w d1,d0
	bcs.s loc_204c68
	move.w #$0,d0
loc_204c68:
	move.w d0,$10(a0)
loc_204c6c:
	rts
	.incbin 19566, 48

sub_204c9e:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204cf2
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204ccc
	addi.w #$38,d0
loc_204ccc:
	cmp.w d1,d0
	bls.s loc_204cf2
loc_204cd0:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204ce0
	rts
loc_204ce0:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2072f0
	move.b #$6,$24(a0)
	rts
loc_204cf2:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204cd0

sub_204d0a:
	tst.b ($f7ca).w
	bne.s loc_204d30
	move.w $14(a0),d0
	bpl.s loc_204d18
	neg.w d0
loc_204d18:
	cmpi.w #$80,d0
	bcs.s loc_204d30
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204d30
	btst.b #$1,($f602).w
	bne.s sub_204d32
loc_204d30:
	rts

sub_204d32:
	btst.b #$2,$22(a0)
	beq.s loc_204d3c
	bra.s loc_204d6c
loc_204d3c:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d5c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d6c
loc_204d5c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d6c:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d86
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d86
	move.w #$200,$14(a0)
loc_204d86:
	rts

sub_204d88:
	tst.b $2a(a0)
	beq.s loc_204d90
	rts
loc_204d90:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204da2
	tst.w $14(a0)
	beq.w loc_204e68
loc_204da2:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204e68
	btst.b #$3,$22(a0)
	beq.s loc_204dbe
	jsr (sub_205a94).l
	beq.s loc_204dee
loc_204dbe:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206ce4
	cmpi.w #$6,d1
	blt.w loc_204e68
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204de4
	move.w #$380,d2
loc_204de4:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204dee:
	jsr (sub_20063c).l
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
	jsr (sub_202138).l
	btst.b #$2,$22(a0)
	bne.s loc_204e6a
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
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204e68:
	rts
loc_204e6a:
	bset.b #$4,$22(a0)
	rts

sub_204e72:
	tst.b $3c(a0)
	beq.s loc_204ea4
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204e88
	move.w #$fe00,d1
loc_204e88:
	cmp.w $12(a0),d1
	ble.s loc_204ea2
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204ea2
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204ea2:
	rts
loc_204ea4:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204eb2
	move.w #$f040,$12(a0)
loc_204eb2:
	rts

sub_204eb4:
	tst.b $2a(a0)
	bne.s loc_204eee
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204eee
	move.b $26(a0),d0
	jsr (sub_20063c).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204eee
	bmi.s loc_204eea
	tst.w d0
	beq.s loc_204ee8
	add.w d0,$14(a0)
loc_204ee8:
	rts
loc_204eea:
	add.w d0,$14(a0)
loc_204eee:
	rts

sub_204ef0:
	tst.b $2a(a0)
	bne.s loc_204f30
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204f30
	move.b $26(a0),d0
	jsr (sub_20063c).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204f26
	tst.w d0
	bpl.s loc_204f20
	asr.l #$2,d0
loc_204f20:
	add.w d0,$14(a0)
	rts
loc_204f26:
	tst.w d0
	bmi.s loc_204f2c
	asr.l #$2,d0
loc_204f2c:
	add.w d0,$14(a0)
loc_204f30:
	rts

sub_204f32:
	nop
	tst.b $38(a0)
	bne.s loc_204f74
	tst.w $3e(a0)
	bne.s loc_204f76
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204f74
	move.w $14(a0),d0
	bpl.s loc_204f56
	neg.w d0
loc_204f56:
	cmpi.w #$280,d0
	bcc.s loc_204f74
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204f74:
	rts
loc_204f76:
	subq.w #$1,$3e(a0)
	rts

sub_204f7c:
	btst.b #$1,$2c(a0)
	bne.s loc_204f9e
	move.b $26(a0),d0
	beq.s loc_204f9e
	bpl.s loc_204f94
	addq.b #$2,d0
	bcc.s loc_204f92
	moveq #$0,d0
loc_204f92:
	bra.s loc_204f9a
loc_204f94:
	subq.b #$2,d0
	bcc.s loc_204f9a
	moveq #$0,d0
loc_204f9a:
	move.b d0,$26(a0)
loc_204f9e:
	rts

sub_204fa0:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2008d4).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205084
	cmpi.b #$80,d0
	beq.w loc_2050e6
	cmpi.b #$c0,d0
	beq.w loc_205142
	bsr.w sub_206ffa
	tst.w d1
	bpl.s loc_204ff2
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204ff2:
	bsr.w sub_206e5c
	tst.w d1
	bpl.s loc_205004
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205004:
	bsr.w sub_206d0c
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205082
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205022
	cmp.b d2,d0
	blt.s loc_205082
loc_205022:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051a4
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205060
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205052
	asr.w $12(a0)
	bra.s loc_205074
loc_205052:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205060:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205074
	move.w #$fc0,$12(a0)
loc_205074:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205082
	neg.w $14(a0)
loc_205082:
	rts
loc_205084:
	bsr.w sub_206ffa
	tst.w d1
	bpl.s loc_20509e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20509e:
	bsr.w sub_206eb4
	tst.w d1
	bpl.s loc_2050b8
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2050b6
	move.w #$0,$12(a0)
loc_2050b6:
	rts
loc_2050b8:
	tst.w $12(a0)
	bmi.s loc_2050e4
	bsr.w sub_206d0c
	tst.w d1
	bpl.s loc_2050e4
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051a4
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050e4:
	rts
loc_2050e6:
	bsr.w sub_206ffa
	tst.w d1
	bpl.s loc_2050f8
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050f8:
	bsr.w sub_206e5c
	tst.w d1
	bpl.s loc_20510a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20510a:
	bsr.w sub_206eb4
	tst.w d1
	bpl.s loc_205140
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20512a
	move.w #$0,$12(a0)
	rts
loc_20512a:
	move.b d3,$26(a0)
	bsr.w sub_205216
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205140
	neg.w $14(a0)
loc_205140:
	rts
loc_205142:
	bsr.w sub_206e5c
	tst.w d1
	bpl.s loc_20515c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20515c:
	bsr.w sub_206eb4
	tst.w d1
	bpl.s loc_205176
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205174
	move.w #$0,$12(a0)
loc_205174:
	rts
loc_205176:
	tst.w $12(a0)
	bmi.s loc_2051a2
	bsr.w sub_206d0c
	tst.w d1
	bpl.s loc_2051a2
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2051a4
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2051a2:
	rts

sub_2051a4:
	btst.b #$4,$22(a0)
	beq.s loc_2051ae
	nop
loc_2051ae:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205208
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2051e8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2051f8
loc_2051e8:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2051f8:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202138).l
loc_205208:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205216:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2038ee).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205250
	subi.w #$20,$12(a0)
loc_205250:
	jsr (sub_2065c6).l
	bsr.w sub_20526c
	bsr.w sub_204c9e
	bsr.w sub_204140
	bsr.w sub_2054fe
	jmp (sub_203944).l

sub_20526c:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_2072f0
	bsr.w sub_204fa0
	btst.b #$1,$22(a0)
	bne.s loc_2052a6
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2052a6:
	rts
	.incbin 21160, 268

sub_2053b4:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2053dc
	cmpi.b #$5,($ff1506).l
	beq.s loc_2053dc
	cmpi.b #$2,($ff1506).l
	beq.s loc_2053dc
	tst.b ($ff1506).l
	bne.w loc_20549e
loc_2053dc:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20541a
	tst.b ($ff1506).l
	bne.w loc_2054a0
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2054a0
	bra.s loc_205422
loc_20541a:
	cmp.b ($f7af).w,d1
	beq.w loc_2054a0
loc_205422:
	cmp.b ($f7ac).w,d1
	beq.s loc_205452
	cmp.b ($f7ad).w,d1
	beq.s loc_205436
	bclr.b #$6,$1(a0)
	rts
loc_205436:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2054b8
	btst.b #$1,$22(a0)
	beq.s loc_205452
	bclr.b #$6,$1(a0)
	rts
loc_205452:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205464
	bclr.b #$6,$1(a0)
	rts
loc_205464:
	cmpi.b #$e0,d2
	bcs.s loc_205472
	bset.b #$6,$1(a0)
	rts
loc_205472:
	btst.b #$6,$1(a0)
	bne.s loc_20548e
	move.b $26(a0),d1
	beq.s loc_20549e
	cmpi.b #$80,d1
	bhi.s loc_20549e
	bset.b #$6,$1(a0)
	rts
loc_20548e:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20549e
	bclr.b #$6,$1(a0)
loc_20549e:
	rts
loc_2054a0:
	btst.b #$2,$22(a0)
	bne.s loc_2054b2
	move.w #$9c,d0
	jsr (sub_202138).l
loc_2054b2:
	jmp (sub_204d32).l
loc_2054b8:
	tst.w $12(a0)
	bmi.s loc_2054fc
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2054f0
	cmpi.w #$38,d1
	bcs.s loc_2054e8
	cmpi.w #$80,d1
	bcs.s loc_2054fc
loc_2054e0:
	bclr.b #$6,$1(a0)
	rts
loc_2054e8:
	bset.b #$6,$1(a0)
	rts
loc_2054f0:
	cmpi.w #$38,d1
	bcs.s loc_2054e0
	cmpi.w #$80,d1
	bcc.s loc_2054e8
loc_2054fc:
	rts

sub_2054fe:
	lea (dat_2057ee).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205520
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205520:
	bsr.w sub_205790
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205598
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205566
	move.b d0,$1e(a0)

sub_20554a:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20555e
	bpl.s loc_20555e
	cmpi.b #$fd,d0
	bge.s loc_205568
loc_20555e:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205566:
	rts
loc_205568:
	addq.b #$1,d0
	bne.s loc_205578
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20555e
loc_205578:
	addq.b #$1,d0
	bne.s loc_20558c
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20555e
loc_20558c:
	addq.b #$1,d0
	bne.s loc_205596
	move.b $2(a1,d1.w),$1c(a0)
loc_205596:
	rts
loc_205598:
	subq.b #$1,$1e(a0)
	bpl.s loc_205566
	addq.b #$1,d0
	bne.w loc_205652
	tst.b ($ff195b).l
	bne.w loc_20571a
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2055c0
	not.b d0
loc_2055c0:
	btst.b #$1,$2c(a0)
	bne.s loc_2055ce
	addi.b #$10,d0
	bra.s loc_2055d0
loc_2055ce:
	addq.b #$8,d0
loc_2055d0:
	bpl.s loc_2055d4
	moveq #$3,d1
loc_2055d4:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2056c6
	move.w $14(a0),d2
	bpl.s loc_2055f2
	neg.w d2
loc_2055f2:
	btst.b #$1,$2c(a0)
	beq.s loc_20560a
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2059f0).l,a1
	bra.s loc_205634
loc_20560a:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2059ca).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205634
	lea (dat_20586e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205634
	lea (dat_205866).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205634:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205642
	moveq #$0,d2
loc_205642:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20554a
	add.b d3,$1a(a0)
	rts
loc_205652:
	addq.b #$1,d0
	bne.s loc_2056c2
	move.w $14(a0),d2
	bpl.s loc_20565e
	neg.w d2
loc_20565e:
	lea (dat_20594c).l,a1
	tst.b ($ff195b).l
	bne.s loc_20569c
	lea (dat_20587e).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205690
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20569c
	lea (dat_2059f8).l,a1
	bra.s loc_20569c
loc_205690:
	cmpi.w #$600,d2
	bcc.s loc_20569c
	lea (dat_205876).l,a1
loc_20569c:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2056a6
	moveq #$0,d2
loc_2056a6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20554a
loc_2056c2:
	addq.b #$1,d0
	bne.s loc_205706
loc_2056c6:
	move.w $14(a0),d2
	bmi.s loc_2056ce
	neg.w d2
loc_2056ce:
	addi.w #$800,d2
	bpl.s loc_2056d6
	moveq #$0,d2
loc_2056d6:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_20595e).l,a1
	tst.b ($ff195b).l
	bne.s loc_2056f0
	lea (dat_205886).l,a1
loc_2056f0:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20554a
loc_205706:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20571a:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20572c
	not.b d0
loc_20572c:
	addi.b #$10,d0
	bpl.s loc_205734
	moveq #$0,d1
loc_205734:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205762
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205652
loc_205762:
	move.w $14(a0),d2
	bpl.s loc_20576a
	neg.w d2
loc_20576a:
	lea (dat_205946).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20577c
	lea (dat_205940).l,a1
loc_20577c:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205786
	moveq #$0,d2
loc_205786:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20554a

sub_205790:
	tst.b ($ff195b).l
	beq.s loc_20579c
	move.b dat_20579e(pc,d0.w),d0
loc_20579c:
	rts
dat_20579e:
	.incbin 22430, 80
dat_2057ee:
	.incbin 22510, 120
dat_205866:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20586e:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205876:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20587e:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205886:
	.incbin 22662, 186
dat_205940:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205946:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_20594c:
	.incbin 22860, 18
dat_20595e:
	.incbin 22878, 108
dat_2059ca:
	.incbin 22986, 38
dat_2059f0:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2059f8:
	.incbin 23032, 56

sub_205a30:
	tst.b (a0)
	beq.w loc_205a92
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205a92
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205a92
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205a64:
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
loc_205a7e:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a7e
	dbf d1,loc_205a64
loc_205a92:
	rts

sub_205a94:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205b08
	move.w #$98,d0
	jsr (sub_202138).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_2008d4).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205af6
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205af6:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205b08:
	rts
loc_205b0a:
	move.w #$e,d0

sub_205b0e:
	cmpi.w #$67,d0
	bne.s loc_205b1c
	move.b #$1,($ff1958).l
loc_205b1c:
	move.w d0,($a12010).l
loc_205b22:
	move.w ($a12020).l,d0
	beq.s loc_205b22
	cmp.w ($a12020).l,d0
	bne.s loc_205b22
	move.w #$0,($a12010).l
loc_205b3a:
	move.w ($a12020).l,d0
	bne.s loc_205b3a
	move.w ($a12020).l,d0
	bne.s loc_205b3a
	rts
	dc.b $00,$00

sub_205b4e:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205b6a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205b6a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205baa
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205bac
loc_205b86:
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
loc_205baa:
	rts
loc_205bac:
	addq.b #$1,d0
	bne.s loc_205bbc
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b86
loc_205bbc:
	addq.b #$1,d0
	bne.s loc_205bd0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b86
loc_205bd0:
	addq.b #$1,d0
	bne.s loc_205bda
	move.b $2(a1,d1.w),$1c(a0)
loc_205bda:
	addq.b #$1,d0
	bne.s loc_205be2
	addq.b #$2,$24(a0)
loc_205be2:
	addq.b #$1,d0
	bne.s loc_205bf0
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205bf0:
	addq.b #$1,d0
	bne.s loc_205bf8
	addq.b #$2,$25(a0)
loc_205bf8:
	rts
	.incbin 23546, 536

sub_205e12:
	rts
	.incbin 24084, 116

sub_205e88:
	tst.b $25(a0)
	bne.s loc_205eb8
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1

sub_205e96:
	ori.b #$80,d1
	jsr (sub_2079b0).l
	bne.s loc_205eb8
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205eb8:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205ec8(pc,d0.w),d0
	jmp dat_205ec8(pc,d0.w)
dat_205ec8:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205ef0
	andi.b #$7f,$2(a0)
loc_205ef0:
	move.l #$23ae4e,$4(a0)
	bsr.s sub_205e88
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205f1e
	move.w #$100,$1c(a0)
loc_205f1e:
	lea (dat_23ae3a).l,a1
	bsr.w sub_205b4e
	jmp (sub_203944).l
	tst.b $25(a0)
	beq.s loc_205f3a
	jmp (sub_2039f0).l
loc_205f3a:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	.incbin 24392, 770
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206258(pc,d0.w),d1
	jmp dat_206258(pc,d1.w)
dat_206258:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23ac62,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_20629a
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
loc_206294:
	bcs.s loc_20629a
	addq.b #$2,$24(a0)
loc_20629a:
	rts
	tst.b ($ff151e).l
	beq.s loc_2062f6
	tst.b ($ff1521).l
	bne.s loc_2062f4
	tst.b ($ff151f).l
	bne.s loc_2062f4
	move.w ($d008).w,$8(a0)
	move.w ($d00c).w,$c(a0)
	move.b ($d022).w,$22(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2062e4
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2062e4
	andi.b #$7f,$2(a0)
loc_2062e4:
	lea (dat_23ab3a).l,a1
	jsr (sub_205b4e).l
	bra.w loc_206394
loc_2062f4:
	rts
loc_2062f6:
	jmp (sub_2039f0).l
	.incbin 25340, 24
	tst.b ($ff1521).l
	bne.s loc_206322
	jmp (sub_2039f0).l
loc_206322:
	cmpi.b #$6,($ff1506).l
	bne.s loc_206340
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_206340
	andi.b #$7f,$2(a0)
loc_206340:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_206352
	subq.b #$4,d1
loc_206352:
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
	bcs.s loc_20636e
	moveq #$0,d1
loc_20636e:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23ab3a).l,a1
	jsr (sub_205b4e).l
loc_206394:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2063a6
	rts
loc_2063a6:
	cmp.b $24(a0),d0
	beq.s loc_2063bc
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2063bc:
	jmp (sub_203944).l
loc_2063c2:
	bclr.b #$7,($ff156b).l
	beq.s loc_206410
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206412(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2063e6:
	move.l (a1)+,(a2)+
	dbf d0,loc_2063e6
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206410:
	rts
dat_206412:
	.incbin 25618, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206448(pc,d0.w),d0
	jsr dat_206448(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_206442
	jsr (sub_203944).l
loc_206442:
	jmp (loc_2079e6).l
dat_206448:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23ac62,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20652a
	cmpi.b #$6,$24(a1)
	bcc.w loc_20652a
	bsr.w sub_20658e
	beq.w loc_20652a
	tst.b $28(a0)
	bne.s loc_2064dc
	move.w $10(a1),d0
	bpl.s loc_20649c
	neg.w d0
loc_20649c:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2064ae
	move.w #$d00,d1
loc_2064ae:
	cmp.w d1,d0
	bcc.s loc_2064b4
	move.w d1,d0
loc_2064b4:
	tst.w $10(a1)
	bpl.s loc_2064bc
	neg.w d0
loc_2064bc:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_20650c
	neg.w $14(a1)
	bra.s loc_20650c
loc_2064dc:
	cmpi.b #$2,$28(a0)
	bcc.s loc_20652c
	move.w $12(a1),d0
	bpl.s loc_2064ec
	neg.w d0
loc_2064ec:
	cmpi.w #$d00,d0
	bcc.s loc_2064f6
	move.w #$d00,d0
loc_2064f6:
	tst.w $12(a1)
	bpl.s loc_2064fe
	neg.w d0
loc_2064fe:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_20650c:
	bset.b #$2,$22(a1)
	bne.s loc_20652a
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_20652a:
	rts
loc_20652c:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206578
	cmpi.b #$2,$28(a0)
	bne.s loc_206548
	tst.w $12(a1)
	bpl.s loc_20650c
	bra.s loc_20654e
loc_206548:
	tst.w $12(a1)
	bmi.s loc_20650c
loc_20654e:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206560
	btst.l #$2,d1
	beq.s loc_20650c
	neg.w d0
loc_206560:
	cmpi.b #$2,$28(a0)
	beq.s loc_20656e
	bset.b #$1,$22(a1)
loc_20656e:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_20650c
loc_206578:
	tst.w $10(a1)
	bmi.s loc_20650c
	btst.l #$0,d1
	beq.w loc_20650c
	move.w #$f600,d0
	bra.w loc_2064fe

sub_20658e:
	tst.b ($ff1906).l
	bne.s loc_2065c2
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2065c2
	cmpi.w #$50,d0
	bcc.s loc_2065c2
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2065c2
	cmpi.w #$50,d0
	bcc.s loc_2065c2
	moveq #$1,d0
	rts
loc_2065c2:
	moveq #$0,d0
	rts

sub_2065c6:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2065d0
	bsr.s sub_2065d2
loc_2065d0:
	rts

sub_2065d2:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2008d4).l
	subi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2066b6
	cmpi.b #$80,d0
	beq.w loc_20663c
	cmpi.b #$c0,d0
	beq.w loc_206678
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_2066f4
	bne.s loc_20663a
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_2066f4
loc_20663a:
	rts
loc_20663c:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_2066f4
	bne.s loc_206676
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_2066f4
loc_206676:
	rts
loc_206678:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_2066f4
	bne.s loc_2066b4
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_2066f4
loc_2066b4:
	rts
loc_2066b6:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_2066f4
	bne.s loc_2066f2
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_2066f4
loc_2066f2:
	rts

sub_2066f4:
	jsr (sub_200daa).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_206738
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_20671c
	add.b ($ff156a).l,d1
loc_20671c:
	add.w d1,d1
	move.w dat_20673c(pc,d1.w),d1
	lea dat_20673c(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_20672c:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2067b0
	addq.w #$2,d1
	dbf d6,loc_20672c
loc_206738:
	moveq #$0,d0
	rts
dat_20673c:
	.incbin 26428, 116
loc_2067b0:
	cmpi.b #$4,$24(a0)
	bne.s loc_2067c2
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2067c2:
	move.b #$0,($ff1950).l
	move.l d1,-(a7)
	move.w dat_206806(pc,d1.w),d0
	jsr dat_206806(pc,d0.w)
	move.l (a7)+,d1
	cmpi.w #$3,d1
	bcs.s loc_2067f6
	move.w #$be,d0
	cmpi.b #$4,d1
	beq.s loc_2067f0
	cmpi.b #$6,d1
	beq.s loc_2067f0
	move.w #$b5,d0
loc_2067f0:
	jsr (sub_202138).l
loc_2067f6:
	tst.b ($ff1950).l
	beq.s loc_206802
	moveq #$0,d0
	rts
loc_206802:
	moveq #$1,d0
	rts
dat_206806:
	.incbin 26630, 686
loc_206ab4:
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
	bne.s loc_206b6e
	move.b ($ff1593).l,($ff195b).l
loc_206b6e:
	tst.b ($ff1522).l
	bpl.s loc_206b84
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b84:
	rts

sub_206b86:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206ab4
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
	bne.s loc_206c40
	move.b ($ff1591).l,($ff195b).l
loc_206c40:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c62
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c62:
	tst.b ($ff1522).l
	bpl.s loc_206c78
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c78:
	rts

sub_206c7a:
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
	bpl.s loc_206cb6
	move.b d1,d0
	bpl.s loc_206cb0
	subq.b #$1,d0
loc_206cb0:
	addi.b #$20,d0
	bra.s loc_206cc0
loc_206cb6:
	move.b d1,d0
	bpl.s loc_206cbc
	addq.b #$1,d0
loc_206cbc:
	addi.b #$1f,d0
loc_206cc0:
	andi.b #$c0,d0
	beq.w loc_206d90
	cmpi.b #$80,d0
	beq.w loc_206f2c
	andi.b #$38,d1
	bne.s loc_206cd8
	addq.w #$8,d2
loc_206cd8:
	cmpi.b #$40,d0
	beq.w loc_207002
	bra.w loc_206e64

sub_206ce4:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206f8a
	cmpi.b #$80,d0
	beq.w sub_206eb4
	cmpi.b #$c0,d0
	beq.w loc_206df4

sub_206d0c:
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
	jsr (sub_200f92).l
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
	jsr (sub_200f92).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206d70:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206d7e
	move.b ($f768).w,d3
	exg d0,d1
loc_206d7e:
	btst.l #$0,d3
	beq.s loc_206d86
	move.b d2,d3
loc_206d86:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206d90:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_200f92).l
	move.b #$0,d2
loc_206dac:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206db8
	move.b d2,d3
loc_206db8:
	rts

sub_206dba:
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
	jsr (sub_200f92).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206df2
	move.b #$0,d3
loc_206df2:
	rts
loc_206df4:
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
	jsr (sub_201102).l
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
	jsr (sub_201102).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206d70

sub_206e5c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e64:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201102).l
	move.b #$c0,d2
	bra.w loc_206dac
	.incbin 28292, 16
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201102).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206eb2
	move.b #$c0,d3
loc_206eb2:
	rts

sub_206eb4:
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
	jsr (sub_200f92).l
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
	jsr (sub_200f92).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206d70

sub_206f24:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f2c:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_200f92).l
	move.b #$80,d2
	bra.w loc_206dac
	.incbin 28496, 58
loc_206f8a:
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
	jsr (sub_201102).l
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
	jsr (sub_201102).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206d70

sub_206ffa:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207002:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201102).l
	move.b #$40,d2
	bra.w loc_206dac
	.incbin 28710, 16
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201102).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_207054
	move.b #$40,d3
loc_207054:
	rts

sub_207056:
	btst.b #$6,$2c(a0)
	bne.s loc_2070a4
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_207082
	addi.w #$c,d3
	moveq #$a,d5
loc_207082:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_207090:
	tst.b $1(a1)
	bpl.s loc_20709c
	move.b $20(a1),d0
	bne.s loc_2070a8
loc_20709c:
	lea $40(a1),a1
	dbf d6,loc_207090
loc_2070a4:
	moveq #$0,d0
	rts
loc_2070a8:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20742e).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070d0
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070d6
	bra.w loc_20709c
loc_2070d0:
	cmp.w d4,d0
	bhi.w loc_20709c
loc_2070d6:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2070ee
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2070f4
	bra.w loc_20709c
loc_2070ee:
	cmp.w d5,d0
	bhi.w loc_20709c
loc_2070f4:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207168
	cmpi.b #$c0,d1
	beq.w loc_207348
	tst.b d1
	bmi.w sub_207232
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_20712c
	cmpi.w #$5a,$30(a0)
	bcc.w loc_20712a
	addq.b #$2,$24(a1)
loc_20712a:
	rts
loc_20712c:
	tst.w $12(a0)
	bpl.s loc_207156
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207166
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207166
	addq.b #$4,$25(a1)
	rts
loc_207156:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207166
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207166:
	rts

sub_207168:
	tst.b ($ff1521).l
	bne.s loc_207182
	tst.b ($ff151f).l
	bne.s loc_207182
	cmpi.b #$2,$1c(a0)
	bne.w sub_207232
loc_207182:
	tst.b $21(a1)
	beq.s loc_2071ac
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2071aa
	bset.b #$7,$22(a1)
loc_2071aa:
	rts
loc_2071ac:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071c4
	moveq #$6,d0
loc_2071c4:
	move.w d0,$3e(a1)
	move.w dat_207224(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2071de
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2071de:
	bsr.w sub_20a7ac
	move.w #$96,d0
	jsr (sub_202138).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207214
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20721c
	neg.w $12(a0)
	rts
loc_207214:
	addi.w #$100,$12(a0)
	rts
loc_20721c:
	subi.w #$100,$12(a0)
	rts
dat_207224:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207232:
	tst.b ($ff1521).l
	bne.s loc_207242
	tst.b ($ff151f).l
	beq.s loc_207246
loc_207242:
	moveq #$ffffffff,d0
	rts
loc_207246:
	nop
	tst.w $30(a0)
	bne.s loc_207242
	movea.l a1,a2

sub_207250:
	tst.b ($ff151e).l
	bne.s loc_20727c
	tst.w ($ff1512).l
	beq.w loc_2072e6
	jsr (sub_2079b0).l
	bne.s loc_20727c
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20727c:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_207292
	move.b #$0,($ff156f).l
loc_207292:
	move.b #$4,$24(a0)
	bsr.w sub_2051a4
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072c2
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072c2:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072d0
	neg.w $10(a0)
loc_2072d0:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2072e6:
	tst.w ($ff1588).l
	bne.w loc_20727c

sub_2072f0:
	tst.w ($ff1906).l
	bne.s loc_207344
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2051a4
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202138).l
loc_207344:
	moveq #$ffffffff,d0
	rts
loc_207348:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$17,d1
	beq.w loc_2073d8
	cmpi.b #$1f,d1
	beq.w loc_2073d8
	cmpi.b #$23,d1
	beq.w loc_2073d8
	cmpi.b #$27,d1
	beq.w loc_2073d8
	cmpi.b #$3a,d1
	beq.w loc_207420
	cmpi.b #$3b,d1
	beq.w loc_207420
	tst.b ($f7aa).w
	beq.w loc_2073d6
	cmpi.b #$1,($f7aa).w
	beq.s loc_2073a0
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073c2
	cmpi.b #$5,($f7aa).w
	beq.s loc_2073d0
loc_2073a0:
	cmpi.b #$3c,d1
	blt.s loc_2073d6
	cmpi.b #$3f,d1
	bgt.s loc_2073d6
	bsr.w sub_207168
	tst.b $20(a1)
	bne.s loc_2073ba
	addq.b #$3,$21(a1)
loc_2073ba:
	clr.b $20(a1)
	bra.w loc_2073d8
loc_2073c2:
	cmpi.b #$3f,d1
	beq.s loc_2073e4
	cmpi.b #$3e,d1
	beq.s loc_2073de
	bra.s loc_2073d6
loc_2073d0:
	cmpi.b #$3d,d1
	beq.s loc_2073de
loc_2073d6:
	rts
loc_2073d8:
	addq.b #$1,$21(a1)
	rts
loc_2073de:
	bsr.w sub_207232
	bra.s loc_2073d8
loc_2073e4:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20741e
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20741e
	neg.w $10(a0)
loc_20741e:
	rts
loc_207420:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20742c
	addq.b #$1,$21(a1)
loc_20742c:
	rts
dat_20742e:
	.incbin 29742, 126
loc_2074ac:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2074c2
	move.l #$4000,(dat_20763c).l
	bra.s loc_2074e2
loc_2074c2:
	addi.l #$2000,(dat_20763c).l
	cmpi.l #$80000,(dat_20763c).l
	bls.s loc_2074e2
	move.l #$80000,(dat_20763c).l
loc_2074e2:
	move.l (dat_20763c).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2074f4
	sub.l d0,$c(a0)
loc_2074f4:
	btst.b #$1,($f604).w
	beq.s loc_207500
	add.l d0,$c(a0)
loc_207500:
	btst.b #$2,($f604).w
	beq.s loc_20750c
	sub.l d0,$8(a0)
loc_20750c:
	btst.b #$3,($f604).w
	beq.s loc_207518
	add.l d0,$8(a0)
loc_207518:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200daa).l
	move.w (a1),($ff194e).l
	lea (dat_207640).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20755a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207554
	move.b #$0,d1
loc_207554:
	move.b d1,($ff1904).l
loc_20755a:
	btst.b #$7,($f605).w
	beq.s loc_20757a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207574
	add.b (a2),d1
loc_207574:
	move.b d1,($ff1904).l
loc_20757a:
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
	beq.s loc_207606
	bsr.w sub_2079b0
	bne.s loc_207606
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
loc_207606:
	btst.b #$4,($f605).w
	beq.s loc_207636
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207636:
	jmp (sub_203944).l
dat_20763c:
	dc.b $00,$00,$40,$00
dat_207640:
	.incbin 30272, 350

sub_20779e:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2077ac:
	clr.l (a2)+
	dbf d0,loc_2077ac
	rts

sub_2077b4:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2077c2(pc,d0.w),d0
	jmp dat_2077c2(pc,d0.w)
dat_2077c2:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207a62).l,a0
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
	bcc.s loc_207800
	moveq #$0,d6
loc_207800:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207808:
	cmp.w (a0),d6
	bls.s loc_20781a
	tst.b $4(a0)
	bpl.s loc_207816
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207816:
	addq.w #$8,a0
	bra.s loc_207808
loc_20781a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20783a
loc_207828:
	cmp.w (a0),d6
	bls.s loc_20783a
	tst.b $4(a0)
	bpl.s loc_207836
	addq.b #$1,$1(a2)
loc_207836:
	addq.w #$8,a0
	bra.s loc_207828
loc_20783a:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207924
	bge.s loc_2078ca
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2078a6
loc_207874:
	cmp.w -$8(a0),d6
	bge.s loc_2078a6
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20788a
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20788a:
	bsr.w sub_207948
	bne.s loc_207894
	subq.w #$8,a0
	bra.s loc_207874
loc_207894:
	tst.b $4(a0)
	bpl.s loc_2078a4
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2078a4:
	addq.w #$8,a0
loc_2078a6:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2078b2:
	cmp.w -$8(a0),d6
	bgt.s loc_2078c4
	tst.b -$4(a0)
	bpl.s loc_2078c0
	subq.b #$1,(a2)
loc_2078c0:
	subq.w #$8,a0
	bra.s loc_2078b2
loc_2078c4:
	move.l a0,($f770).w
	rts
loc_2078ca:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2078de:
	cmp.w (a0),d6
	bls.s loc_207900
	tst.b $4(a0)
	bpl.s loc_2078ec
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2078ec:
	bsr.w sub_207948
	beq.s loc_2078de
	tst.b $4(a0)
	bpl.s loc_207900
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207900:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207920
loc_20790e:
	cmp.w (a0),d6
	bls.s loc_207920
	tst.b $4(a0)
	bpl.s loc_20791c
	addq.b #$1,$1(a2)
loc_20791c:
	addq.w #$8,a0
	bra.s loc_20790e
loc_207920:
	move.l a0,($f774).w
loc_207924:
	rts

sub_207926:
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

sub_207948:
	bsr.s sub_207926
	beq.s loc_20795a
	tst.b $4(a0)
	bpl.s loc_207960
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207960
loc_20795a:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207960:
	bsr.w sub_2079b0
	bne.s loc_2079ae
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
	bpl.s loc_207990
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207990:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2079a2
	nop
	nop
	nop
	nop
loc_2079a2:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2079ae:
	rts

sub_2079b0:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2079b8:
	tst.b (a1)
	beq.s loc_2079c4
	lea $40(a1),a1
	dbf d0,loc_2079b8
loc_2079c4:
	rts

sub_2079c6:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2079e4
loc_2079d8:
	tst.b (a1)
	beq.s loc_2079e4
	lea $40(a1),a1
	dbf d0,loc_2079d8
loc_2079e4:
	rts
loc_2079e6:
	move.w $8(a0),d0
loc_2079ea:
	tst.b $1(a0)
	bmi.s loc_207a54
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207a54
loc_207a08:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207a4a
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207a42
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207a3a
	moveq #$0,d1
	bra.s loc_207a42
loc_207a3a:
	cmpi.w #$3,d1
	bcs.s loc_207a42
	moveq #$2,d1
loc_207a42:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207a4a:
	jsr (sub_2039f0).l
	moveq #$1,d0
	rts
loc_207a54:
	btst.b #$7,($ff152e).l
	bne.s loc_207a08
	moveq #$0,d0
	rts
dat_207a62:
	.incbin 31330, 4162

sub_208aa4:
	btst.b #$3,$22(a0)
	beq.s loc_208b14
	btst.b #$3,$22(a1)
	beq.s loc_208b14
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208b14
	tst.b $2a(a1)
	beq.s loc_208ad6
	move.w #$ab,d0
	jsr (sub_202138).l
loc_208ad6:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208b02
	cmpi.b #$17,$1c(a1)
	beq.s loc_208b02
	bclr.b #$0,$2c(a1)
loc_208b02:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208b14
	bclr.b #$1,$22(a1)
loc_208b14:
	rts

sub_208b16:
	cmpi.b #$4,$24(a1)
	bne.s loc_208b28
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208b28:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208b88
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208b4a
	bclr.b #$3,$22(a0)
	bra.w sub_208aa4
loc_208b4a:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208b88
	tst.b ($ff195b).l
	beq.s loc_208b72
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208b82
loc_208b72:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208b82:
	move.b #$0,$1c(a1)
loc_208b88:
	bset.b #$3,$22(a1)
	beq.s loc_208baa
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208be2
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208baa:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208bd6
	cmpi.b #$2,$24(a0)
	beq.s loc_208bdc
loc_208bd6:
	move.w $10(a1),$14(a1)
loc_208bdc:
	bclr.b #$1,$22(a1)
loc_208be2:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_208bec:
	move.b #$1,$25(a0)

sub_208bf2:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208ea6
	btst.b #$6,$2c(a1)
	bne.w loc_208ea6
	cmpi.b #$6,$24(a1)
	bcc.w loc_208ea6
	tst.b $0(a1)
	beq.w loc_208ea6
	tst.b $1(a0)
	bpl.w loc_208ea6
	tst.b ($ff1906).l
	bne.w loc_208ea6
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208ea6
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208ea6
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c60
	btst.b #$3,$22(a0)
	bne.s loc_208c72
	bra.w loc_208ea6
loc_208c60:
	cmpi.b #$1,$25(a0)
	bne.s loc_208c72
	tst.w $12(a1)
	beq.s loc_208c72
	bmi.w loc_208ea6
loc_208c72:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208ea6
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208ea6
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208ca8
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208ca8:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208cb6
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208cb6:
	cmp.w d4,d5
	bcs.w loc_208d4a
	cmpi.b #$1,$25(a0)
	beq.w loc_208ea6
	cmpi.b #$a,$0(a0)
	bne.s loc_208cd8
	btst.b #$1,$22(a1)
	bne.w loc_208ea6
loc_208cd8:
	cmpi.b #$4,d5
	bls.w loc_208ea6
	bsr.w sub_208ef6
	move.l d0,-(a7)
	bsr.w sub_208aa4
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208d02
	tst.w $10(a1)
	beq.s loc_208d32
	bpl.s loc_208d0a
	bra.s loc_208d32
loc_208d02:
	tst.w $10(a1)
	beq.s loc_208d32
	bpl.s loc_208d32
loc_208d0a:
	bsr.w sub_208eb6
	btst.b #$1,$22(a1)
	bne.s loc_208d28
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208d28:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208d32:
	bsr.w sub_208f6c
	bsr.w sub_208eb6
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208d4a:
	cmpi.b #$19,$0(a0)
	bne.s loc_208d5c
	btst.b #$2,$22(a1)
	bne.w loc_208ea6
loc_208d5c:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208d72
	bmi.w loc_208e42
loc_208d72:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208d84
	tst.w $12(a1)
	beq.s loc_208d84
	bmi.w loc_208ea6
loc_208d84:
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
	beq.s loc_208dd0
	bpl.s loc_208db0
	neg.b d0
loc_208db0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c7a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208dd0
	tst.w $10(a0)
	bpl.s loc_208dcc
	neg.w d1
loc_208dcc:
	add.w d1,$8(a1)
loc_208dd0:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208e3a
	tst.w $12(a0)
	bmi.s loc_208e0e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d0c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208e0e
	add.w d1,$c(a1)
	bra.w loc_208ea6
loc_208e0e:
	tst.w $12(a0)
	bpl.s loc_208e3a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f24).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208e3a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072f0).l
	movem.l (a7)+,a0-a1
	bra.s loc_208ea6
loc_208e3a:
	bsr.w sub_208b16
	moveq #$1,d0
	rts
loc_208e42:
	cmpi.b #$1,$25(a0)
	beq.s loc_208ea6
	cmpi.b #$9,$0(a0)
	beq.s loc_208ea6
	cmpi.b #$a,$0(a0)
	bne.s loc_208e6c
	cmpi.b #$2,$25(a0)
	beq.s loc_208e8c
	btst.b #$1,$1(a0)
	bne.s loc_208e8c
	bra.s loc_208ea6
loc_208e6c:
	btst.b #$1,$22(a1)
	bne.s loc_208e8c
	tst.w $12(a0)
	beq.s loc_208e8c
	bmi.s loc_208e8c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072f0).l
	movem.l (a7)+,a0-a1
loc_208e8c:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208f6c
	bsr.w sub_208aa4
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208ea6:
	bsr.w sub_208f6c
	bsr.w sub_208aa4
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208eb6:
	tst.w $10(a0)
	beq.s loc_208ef4
	cmpi.b #$a,$0(a0)
	beq.s loc_208ef4
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208ed0
	neg.b d0
loc_208ed0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c7a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208ef4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072f0).l
	movem.l (a7)+,a0-a1
loc_208ef4:
	rts

sub_208ef6:
	cmpi.b #$a,$0(a0)
	bne.s loc_208f06
	move.b #$0,$20(a1)
	rts
loc_208f06:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208f5a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208f6a
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208f28
	tst.w $10(a2)
	beq.s loc_208f6a
loc_208f28:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208f3a
	cmp.w $8(a2),d1
	bcs.s loc_208f6a
	bra.s loc_208f40
loc_208f3a:
	cmp.w $8(a2),d1
	bcc.s loc_208f6a
loc_208f40:
	cmpi.b #$15,$0(a0)
	beq.s loc_208f6a
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072f0).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208f5a:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208f6a:
	rts

sub_208f6c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208f86
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208f86
	move.b #$0,$20(a1)
loc_208f86:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208fa2(pc,d0.w),d0
	jsr dat_208fa2(pc,d0.w)
	jsr (sub_203944).l
	jmp (loc_2079e6).l
dat_208fa2:
	.incbin 36770, 348
loc_2090fe:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20910c(pc,d0.w),d0
	jmp dat_20910c(pc,d0.w)
dat_20910c:
	.incbin 37132, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2090fe
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209162
	tst.b $1(a0)
	bpl.s loc_20916a
loc_209162:
	move.w dat_2091bc(pc,d0.w),d1
	jsr dat_2091bc(pc,d1.w)
loc_20916a:
	bsr.w sub_203944
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20919c
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20919c:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2039f0
	rts
dat_2091bc:
	.incbin 37308, 26
	addq.b #$2,$24(a0)
	move.l #$20953e,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20922c
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209544,$4(a0)
	bra.s loc_20926e
loc_20922c:
	btst.l #$3,d0
	beq.s loc_20925a
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20958e,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bdca).l
	move.l (a7)+,d0
	bra.s loc_20926e
loc_20925a:
	btst.b #$1,$1(a0)
	beq.s loc_20926e
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20926e:
	btst.l #$1,d0
	beq.s loc_20927a
	bset.b #$5,$2(a0)
loc_20927a:
	andi.w #$2,d0
	move.w dat_209286(pc,d0.w),$30(a0)
	rts
dat_209286:
	dc.b $f0,$00,$f6,$00

sub_20928a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208bf2).l
	tst.b $1(a0)
	bpl.s loc_2092a6
	lea ($d000).w,a1
	bsr.s sub_20928a
	bne.s loc_2092a8
loc_2092a6:
	rts
loc_2092a8:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202138).l
	lea (dat_209530).l,a1
	bra.w sub_205b4e
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_2092fc:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208bf2).l
	tst.b $1(a0)
	bpl.s loc_20931e
	lea ($d000).w,a1
	bsr.s sub_2092fc
	btst.b #$5,$22(a0)
	bne.s loc_209320
loc_20931e:
	rts
loc_209320:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_20934e
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_20934e:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209368
	move.b #$0,$1c(a1)
loc_209368:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_202138).l
	lea (dat_209530).l,a1
	bra.w sub_205b4e
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 37790, 402
dat_209530:
	.incbin 38192, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20962a(pc,d0.w),d1
	jmp dat_20962a(pc,d1.w)
dat_20962a:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209634:
	.incbin 38452, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20968c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209684
	moveq #$0,d1
	bra.s loc_20968c
loc_209684:
	cmpi.w #$3,d1
	bcs.s loc_20968c
	moveq #$2,d1
loc_20968c:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2096a8
	moveq #$6,d1
loc_2096a8:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209634).l,a1
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
	beq.s loc_2096f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2096f0
	moveq #$0,d0
	bra.s loc_2096f8
loc_2096f0:
	cmpi.w #$3,d0
	bcs.s loc_2096f8
	moveq #$2,d0
loc_2096f8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2097c6
	dbf d0,loc_2096f8
	bclr.b #$7,(a2)
	bra.s loc_20974e
loc_20970a:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209736
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20972e
	moveq #$0,d0
	bra.s loc_209736
loc_20972e:
	cmpi.w #$3,d0
	bcs.s loc_209736
	moveq #$2,d0
loc_209736:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2097c6
	dbf d0,loc_209736
	bclr.b #$7,(a2)
	bsr.w sub_2079c6
	bne.w loc_2097d2
loc_20974e:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209a98,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2097a4
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_2097a4
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_2097a4:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2097c6:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20970a
loc_2097d2:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2097f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2097f0
	moveq #$0,d0
	bra.s loc_2097f8
loc_2097f0:
	cmpi.w #$3,d0
	bcs.s loc_2097f8
	moveq #$2,d0
loc_2097f8:
	lea $1(a2),a3
loc_2097fc:
	btst.b #$0,-(a3)
	bne.w sub_2039f0
	dbf d0,loc_2097fc
	tst.b $1(a0)
	bmi.s loc_20982c
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_2098a6
loc_20982c:
	tst.w ($ff190e).l
	bne.s loc_20983c
	move.b ($ff1913).l,$1a(a0)
loc_20983c:
	bra.w sub_203944
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_2098aa
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20988c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209884
	moveq #$0,d1
	bra.s loc_20988c
loc_209884:
	cmpi.w #$3,d1
	bcs.s loc_20988c
	moveq #$2,d1
loc_20988c:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209a90).l,a1
	bsr.w sub_205b4e
	bra.w sub_203944
loc_2098a6:
	bra.w sub_2039f0

sub_2098aa:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2098fa
	bset.b #$1,($ff150d).l
	beq.s loc_2098e4
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2098fa
	bset.b #$2,($ff150d).l
	bne.s loc_2098fa
loc_2098e4:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b0e).l
loc_2098fa:
	jmp (sub_202138).l
	.incbin 39168, 400
dat_209a90:
	.incbin 39568, 852
loc_209de4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209e12(pc,d0.w),d0
	jsr dat_209e12(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209e10
	cmpi.w #$5a,($f786).w
	bcs.s loc_209e0a
	btst.b #$0,($ff1505).l
	bne.s loc_209e10
loc_209e0a:
	jmp (sub_203944).l
loc_209e10:
	rts
dat_209e12:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a3ec,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209e46
	move.b #$13,$1a(a0)
loc_209e46:
	rts
loc_209e48:
	tst.b ($ff0f01).l
	beq.s loc_209e56
	jmp (sub_2039f0).l
loc_209e56:
	cmpi.b #$a,$28(a0)
	beq.w loc_209de4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209e7a(pc,d0.w),d0
	jsr dat_209e7a(pc,d0.w)
	jsr (sub_203944).l
	jmp (loc_2079e6).l
dat_209e7a:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a3ec,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209ec8
	tst.b $29(a0)
	bne.s loc_209ec8
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209ec8:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_209f94
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209ef0
	addq.b #$2,$1a(a0)
loc_209ef0:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209f04
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209f04:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_209f6a
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209f36
	tst.b $29(a0)
	beq.s loc_209f2e
	tst.b ($ff1956).l
	beq.s loc_209f6a
	bra.s loc_209f36
loc_209f2e:
	tst.b ($ff1956).l
	bne.s loc_209f6a
loc_209f36:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_209f94
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209f64
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209f64:
	jsr (sub_205b0e).l
loc_209f6a:
	rts
	subq.b #$1,$2a(a0)
	beq.s loc_209f7c
	lea (dat_20a364).l,a1
	bra.w sub_205b4e
loc_209f7c:
	addq.b #$2,$24(a0)
	move.b #$b,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209f92
	addq.b #$2,$1a(a0)
loc_209f92:
	rts

sub_209f94:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209fcc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209fc4
	moveq #$0,d1
	bra.s loc_209fcc
loc_209fc4:
	cmpi.w #$3,d1
	bcs.s loc_209fcc
	moveq #$2,d1
loc_209fcc:
	add.w d1,d0
	rts

sub_209fd0:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209ff2
	tst.b ($ff1956).l
	beq.s loc_209fea
	tst.b $29(a0)
	bne.s loc_209ff2
	rts
loc_209fea:
	tst.b $29(a0)
	beq.s loc_209ff2
	rts
loc_209ff2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208bf2).l
	tst.b $28(a0)
	bne.s loc_20a014
	tst.b ($ff0f01).l
	beq.s loc_20a014
	jmp (loc_2079e6).l
loc_20a014:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209e48
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a02c(pc,d0.w),d1
	jmp dat_20a02c(pc,d1.w)
dat_20a02c:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a3ec,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a076
	tst.b $29(a0)
	bne.s loc_20a076
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a076:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209f94
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a0a2
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a0a2:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a0fc
	move.b $25(a0),d0
	beq.s loc_20a0dc
	bsr.w sub_20388c
	jsr (sub_206dba).l
	tst.w d1
	bpl.w loc_20a0ea
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a0ea
loc_20a0dc:
	tst.b $1(a0)
	bpl.s loc_20a0ea
	lea ($d000).w,a1
	bsr.w sub_209fd0
loc_20a0ea:
	tst.w ($ff190e).l
	bne.s loc_20a0fc
	lea (dat_20a364).l,a1
	bsr.w sub_205b4e
loc_20a0fc:
	bsr.w sub_203944
	jmp (loc_2079e6).l
	move.w #$96,d0
	jsr (sub_202138).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_2079b0
	bne.s loc_20a13e
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_20a13e:
	bsr.w sub_2079b0
	bne.s loc_20a168
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_20a168:
	bsr.w sub_209f94
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203944
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a18e(pc,d0.w),d1
	jsr dat_20a18e(pc,d1.w)
	bra.w sub_203944
dat_20a18e:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20a1aa
	andi.b #$7f,$2(a0)
loc_20a1aa:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20a3ec,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20a1f2
	bsr.w sub_2038ee
	addi.w #$18,$12(a0)
	rts
loc_20a1f2:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20a218
loc_20a202:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b0e).l
loc_20a218:
	cmpi.b #$1,d0
	bne.s loc_20a264
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a25a
	bset.b #$1,($ff150d).l
	beq.w loc_20a202
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a25a
	bset.b #$2,($ff150d).l
	beq.w loc_20a202
loc_20a25a:
	move.w #$95,d0
	jmp (sub_202138).l
loc_20a264:
	cmpi.b #$2,d0
	bne.s loc_20a282

sub_20a26a:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_202138).l
loc_20a282:
	cmpi.b #$3,d0
	bne.s loc_20a2e4

sub_20a288:
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
	bne.s loc_20a2d8
	move.w #$82,d0
	jsr (sub_205b0e).l
loc_20a2d8:
	move.w #$6d,d0
	jmp (sub_205b0e).l
	dc.b $4e,$75
loc_20a2e4:
	cmpi.b #$4,d0
	bne.s loc_20a326
loc_20a2ea:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_20a31c
	move.w #$82,d0
	jsr (sub_205b0e).l
loc_20a31c:
	move.w #$6c,d0
	jmp (sub_205b0e).l
loc_20a326:
	cmpi.b #$5,d0
	bne.s loc_20a336
	move.w #$12c,($ff190e).l
	rts
loc_20a336:
	cmpi.b #$6,d0
	bne.s loc_20a350
	move.w #$9d,d0
	jsr (sub_202138).l
	move.b #$1,($ff156f).l
	rts
loc_20a350:
	bsr.w sub_20a26a
	bsr.w sub_20a288
	bra.s loc_20a2ea
	subq.w #$1,$1e(a0)
	bmi.w sub_2039f0
	rts
dat_20a364:
	.incbin 41828, 586
loc_20a5ae:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a5c2(pc,d0.w),d0
	jsr dat_20a5c2(pc,d0.w)
	jmp (sub_203944).l
dat_20a5c2:
	.incbin 42434, 146
	tst.b $28(a0)
	bmi.w loc_20a5ae
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a66a(pc,d0.w),d0
	jmp dat_20a66a(pc,d0.w)
dat_20a66a:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a704,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a69a
	move.b #$3,$1a(a0)
	bra.s loc_20a6ba
loc_20a69a:
	tst.w ($ff1588).l
	beq.s loc_20a6a8
	move.b #$2,$1a(a0)
loc_20a6a8:
	tst.b $28(a0)
	beq.s loc_20a6ba
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a6ba:
	tst.b $28(a0)
	bne.s loc_20a6fe
	tst.b $29(a0)
	beq.s loc_20a6ea
	tst.w ($ff1512).l
	beq.s loc_20a6d6
	bclr.b #$5,$2(a0)
	bra.s loc_20a6fe
loc_20a6d6:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a6fe
	eori.b #$20,$2(a0)
	bra.s loc_20a6fe
loc_20a6ea:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a6fe
	move.b #$2,$1a(a0)
loc_20a6fe:
	jmp (sub_203944).l
	.incbin 42756, 168

sub_20a7ac:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a7c8
	move.l d1,(a3)
loc_20a7c8:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a7f2
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b0e).l
loc_20a7f2:
	rts
loc_20a7f4:
	tst.w ($ff1588).l
	beq.s loc_20a84a
	bsr.w sub_20aa46
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
	lea (dat_20aba6).l,a2
	moveq #$2,d6
	bsr.w sub_20abfe
	bra.w loc_20a8a4
loc_20a84a:
	tst.b ($ff1511).l
	beq.s loc_20a86e
	bpl.s loc_20a858
	bsr.w sub_20a9f0
loc_20a858:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20aae0
loc_20a86e:
	tst.b ($ff150f).l
	beq.s loc_20a8a4
	bpl.s loc_20a87c
	bsr.w sub_20a9dc
loc_20a87c:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a8a0
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a8a0:
	bsr.w sub_20aad6
loc_20a8a4:
	tst.w ($ff1588).l
	bne.w loc_20a950
	tst.b ($ff1510).l
	beq.w loc_20a950
	tst.w ($f63a).w
	bne.w loc_20a950
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a9ae
	tst.b ($f7cc).w
	bne.s loc_20a8fa
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a8fa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a8fa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a8fa
	move.b #$9,(a1)
loc_20a8fa:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20abec
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20abf6
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a94c
	move.w #$63,d1
loc_20a94c:
	bsr.w sub_20abf6
loc_20a950:
	tst.b ($ff150e).l
	beq.s loc_20a962
	clr.b ($ff150e).l
	bsr.w sub_20abcc
loc_20a962:
	tst.b ($f7d6).w
	beq.s loc_20a9ac
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a982
	move.l #$6d400001,d0
loc_20a982:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20aa64
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a9a2
	move.l #$6e800001,d0
loc_20a9a2:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20aa64
loc_20a9ac:
	rts
loc_20a9ae:
	btst.b #$7,($ff152e).l
	bne.s loc_20a9da
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2072f0
	move.b #$1,($ff150c).l
loc_20a9da:
	rts

sub_20a9dc:
	move.l #$73600002,($c00004).l
	lea dat_20aa42(pc),a2
	move.w #$2,d2
	bra.s loc_20aa0c

sub_20a9f0:
	lea ($c00000).l,a6
	bsr.w sub_20abcc
	move.l #$70600002,($c00004).l
	lea dat_20aa3a(pc),a2
	move.w #$6,d2
loc_20aa0c:
	lea (dat_2330bc).l,a1
loc_20aa12:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20aa2e
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20aa22:
	move.l (a3)+,(a6)
	dbf d1,loc_20aa22
loc_20aa28:
	dbf d2,loc_20aa12
	rts
loc_20aa2e:
	move.l #$0,(a6)
	dbf d1,loc_20aa2e
	bra.s loc_20aa28
dat_20aa3a:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20aa42:
	dc.b $ff,$ff,$00,$00

sub_20aa46:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20abc2
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20abc2

sub_20aa64:
	lea (dat_20ab9e).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20aa74:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aa78:
	sub.l d3,d1
	bcs.s loc_20aa80
	addq.w #$1,d2
	bra.s loc_20aa78
loc_20aa80:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aa8a
	move.w #$1,d4
loc_20aa8a:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20aa96
	tst.w d6
	bne.s loc_20aac8
loc_20aa96:
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
loc_20aabc:
	addi.l #$400000,d0
	dbf d6,loc_20aa74
	rts
loc_20aac8:
	moveq #$f,d5
loc_20aaca:
	move.l #$0,(a6)
	dbf d5,loc_20aaca
	bra.s loc_20aabc

sub_20aad6:
	lea (dat_20aba6).l,a2
	moveq #$2,d6
	bra.s loc_20aae8

sub_20aae0:
	lea (dat_20ab9a).l,a2
	moveq #$5,d6
loc_20aae8:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20aaf0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aaf4:
	sub.l d3,d1
	bcs.s loc_20aafc
	addq.w #$1,d2
	bra.s loc_20aaf4
loc_20aafc:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ab06
	move.w #$1,d4
loc_20ab06:
	tst.w d4
	beq.s loc_20ab34
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
loc_20ab34:
	addi.l #$400000,d0
	dbf d6,loc_20aaf0
	rts
	.incbin 43840, 90
dat_20ab9a:
	dc.b $00,$01,$86,$a0
dat_20ab9e:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20aba6:
	dc.b $00,$00,$00,$64
dat_20abaa:
	dc.b $00,$00,$00,$0a
dat_20abae:
	dc.b $00,$00,$00,$01
dat_20abb2:
	.incbin 43954, 16

sub_20abc2:
	moveq #$3,d6
	lea (dat_20abb2).l,a2
	bra.s sub_20abfe

sub_20abcc:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20abe2
	moveq #$9,d1
loc_20abe2:
	lea (dat_20abae).l,a2
	moveq #$0,d6
	bra.s sub_20abfe

sub_20abec:
	lea (dat_20abae).l,a2
	moveq #$0,d6
	bra.s sub_20abfe

sub_20abf6:
	lea (dat_20abaa).l,a2
	moveq #$1,d6

sub_20abfe:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ac06:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ac0a:
	sub.l d3,d1
	bcs.s loc_20ac12
	addq.w #$1,d2
	bra.s loc_20ac0a
loc_20ac12:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ac1c
	move.w #$1,d4
loc_20ac1c:
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
	dbf d6,loc_20ac06
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac60(pc,d0.w),d1
	jmp dat_20ac60(pc,d1.w)
dat_20ac60:
	dc.b $00,$04,$00,$7e
	addq.b #$2,$24(a0)
	move.l #$20af5e,$4(a0)
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
	beq.s loc_20acb6
	addi.w #$40,d0
loc_20acb6:
	btst.l #$0,d6
	beq.s loc_20acc0
	addi.w #$20,d0
loc_20acc0:
	move.w d0,$30(a0)
	lsr.w #$1,d0
	move.w d0,$2e(a0)
	beq.s loc_20acde
	move.l #$10000,$2a(a0)
	btst.l #$6,d6
	bne.s loc_20acde
	neg.l $2a(a0)
loc_20acde:
	move.l $2a(a0),d0
	beq.s loc_20ad06
	lea $8(a0),a1
	tst.w $28(a0)
	bmi.s loc_20acf2
	lea $c(a0),a1
loc_20acf2:
	add.l d0,(a1)
	addi.w #$ffff,$2e(a0)
	bne.s loc_20ad06
	move.w $30(a0),$2e(a0)
	neg.l $2a(a0)
loc_20ad06:
	tst.b $21(a0)
	beq.w loc_20ada2
	tst.w $34(a0)
	beq.s loc_20ad24
	subq.w #$1,$34(a0)
	moveq #$a,d0
	bsr.w sub_20a7ac
	moveq #$0,d1
	bsr.w sub_205e96
loc_20ad24:
	tst.b $1(a0)
	bpl.s loc_20ad34
	move.w #$7f,d0
	jsr (sub_205b0e).l
loc_20ad34:
	lea ($d000).w,a1
	clr.b $21(a0)
	move.w $8(a0),d1
	move.w $c(a0),d2
	sub.w $8(a1),d1
	sub.w $c(a1),d2
	jsr (sub_2008d4).l
	jsr (sub_20063c).l
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
	beq.s loc_20ada2
	cmpi.b #$8a,$2(a2,d0.w)
	bcc.s loc_20ada2
	addq.b #$1,$2(a2,d0.w)
loc_20ada2:
	lea (dat_20af4e).l,a1
	bsr.w sub_205b4e
	jsr (sub_203944).l
	move.w $32(a0),d0
	jmp (loc_2079ea).l
	.incbin 44476, 402
dat_20af4e:
	.incbin 44878, 3602
loc_20bd60:
	lea dat_20bdb2(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bd6c:
	cmp.w (a1)+,d0
	bcs.s loc_20bd74
	addq.b #$2,d1
	bra.s loc_20bd6c
loc_20bd74:
	move.b d1,($ff1574).l
	move.w dat_20bdc2(pc,d1.w),d0
	jmp (sub_202302).l

sub_20bd84:
	lea dat_20bdb2(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bd90:
	cmp.w (a1)+,d0
	bcs.s loc_20bd98
	addq.b #$2,d1
	bra.s loc_20bd90
loc_20bd98:
	cmp.b ($ff1574).l,d1
	bne.s loc_20bda2
	rts
loc_20bda2:
	move.b d1,($ff1574).l
	move.w dat_20bdba(pc,d1.w),d0
	jmp (loc_202334).l
dat_20bdb2:
	dc.b $10,$00,$18,$00,$1e,$00,$ff,$ff
dat_20bdba:
	dc.b $00,$09,$00,$0a,$00,$0b,$00,$0c
dat_20bdc2:
	dc.b $00,$02,$00,$06,$00,$07,$00,$08

sub_20bdca:
	cmpi.b #$f,d0
	bne.s loc_20bdd6
	move.w #$4f2,$2(a0)
loc_20bdd6:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be38(pc,d0.w),d0
	jsr dat_20be38(pc,d0.w)
	jsr (sub_203944).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20be16
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20be16:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20be34
	rts
loc_20be34:
	bra.w loc_20ce40
dat_20be38:
	dc.b $00,$10,$00,$6e
dat_20be3c:
	dc.b $10,$08,$00,$12,$0c,$83,$0c,$10
	dc.b $82,$0c,$10,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$31e,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20be64
	move.w #$3fc,d0
loc_20be64:
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20bfe6,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20be3c(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20bf10(pc)
	tst.b $1a(a0)
	beq.s loc_20beba
	lea ($d000).w,a1
	jmp (sub_208bf2).l
loc_20beba:
	lea ($d000).w,a1
	jsr (sub_208bf2).l
	beq.s loc_20bf0e
	btst.b #$3,$22(a0)
	beq.s loc_20bf0e
	tst.b ($ff1521).l
	bne.s loc_20bf0e
	tst.b ($ff151f).l
	bne.s loc_20bf0e
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20bf0c
	tst.w $30(a0)
	bne.s loc_20bf0c
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_207250).l
loc_20bf0c:
	movea.l (a7)+,a0
loc_20bf0e:
	rts

sub_20bf10:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20bf2a
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20bf2c(pc,d0.w),d0
	jmp dat_20bf2c(pc,d0.w)
loc_20bf2a:
	rts
dat_20bf2c:
	.incbin 48940, 218
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c03c(pc,d0.w),d0
	jsr dat_20c03c(pc,d0.w)
	jsr (sub_203944).l
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c038
	rts
loc_20c038:
	bra.w loc_20ce40
dat_20c03c:
	dc.b $00,$04,$00,$7a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$433e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c13c,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	cmpi.b #$2,$28(a0)
	bcs.s loc_20c0b6
	jsr (sub_2079c6).l
	beq.s loc_20c08c
	jmp (sub_2039f0).l
loc_20c08c:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$ea,$39(a1)
	move.w a0,$34(a1)
	move.b $28(a0),d0
	andi.b #$1,d0
	add.b d0,d0
	move.b d0,$28(a1)
loc_20c0b6:
	bsr.s sub_20c11a
	tst.b ($ff152e).l
	beq.s loc_20c0ec
loc_20c0c0:
	cmpi.b #$1,$28(a0)
	beq.s loc_20c0ec
	tst.b $3a(a0)
	bne.s loc_20c0ee
	moveq #$0,d0
	move.b $3b(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea dat_20c12c(pc,d0.w),a1
	move.b (a1)+,$3a(a0)
	move.b (a1)+,d0
	ext.w d0
	move.w d0,$38(a0)
	move.w (a1)+,$36(a0)
loc_20c0ec:
	rts
loc_20c0ee:
	move.w $38(a0),d0
	add.w d0,$36(a0)
	move.w $36(a0),d0
	move.w d0,$10(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	subq.b #$1,$3a(a0)
	beq.s loc_20c10e
	rts
loc_20c10e:
	addq.b #$1,$3b(a0)
	andi.b #$3,$3b(a0)
	bra.s loc_20c0c0

sub_20c11a:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208bf2).l
dat_20c12c:
	.incbin 49452, 24
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c17a(pc,d0.w),d0
	jsr dat_20c17a(pc,d0.w)
	jsr (sub_203944).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c176
	rts
loc_20c176:
	bra.w loc_20ce40
dat_20c17a:
	.incbin 49530, 314
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c2c8(pc,d0.w),d0
	jsr dat_20c2c8(pc,d0.w)
	jmp (sub_203944).l
dat_20c2c8:
	dc.b $00,$04,$00,$3a
	ori.b #$4,$1(a0)
	move.w #$34e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c612,$4(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20c342(pc,d0.w),d0
	jsr dat_20c342(pc,d0.w)
	jsr sub_20c352(pc)
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c334
	rts
loc_20c334:
	bra.w loc_20ce40

sub_20c338:
	lea ($d000).w,a1
	jmp (loc_208bec).l
dat_20c342:
	.incbin 49986, 16

sub_20c352:
	tst.b $3f(a0)
	beq.s loc_20c392
	btst.b #$3,$22(a0)
	bne.s loc_20c36c
	tst.b $3e(a0)
	beq.s loc_20c392
	subq.b #$8,$3e(a0)
	bra.s loc_20c378
loc_20c36c:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20c392
	addq.b #$8,$3e(a0)
loc_20c378:
	move.b $3e(a0),d0
	jsr (sub_20063c).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $30(a0),d0
	move.w d0,$c(a0)
loc_20c392:
	rts
	move.b #$1,$3f(a0)
	jsr sub_20c338(pc)
	rts
	.incbin 50080, 640
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c656(pc,d0.w),d0
	jsr dat_20c656(pc,d0.w)
	jsr (sub_203944).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c652
	rts
loc_20c652:
	bra.w loc_20ce40
dat_20c656:
	.incbin 50774, 744
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208bf2).l
	.incbin 51532, 1268
loc_20ce40:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20ce64
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20ce64:
	jmp (sub_2039f0).l
	.incbin 52842, 3670
	jsr (sub_20e78c).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20dde2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dce0(pc,d0.w),d0
	jmp dat_20dce0(pc,d0.w)
dat_20dce0:
	.incbin 56544, 258
loc_20dde2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ddf0(pc,d0.w),d0
	jmp dat_20ddf0(pc,d0.w)
dat_20ddf0:
	.incbin 56816, 2460

sub_20e78c:
	tst.b $28(a0)
	bmi.s loc_20e7bc
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e7ac
	tst.b ($ff156d).l
	bne.s loc_20e7bc
	addq.l #$4,a7
	jmp (loc_2079e6).l
loc_20e7ac:
	tst.b ($ff156a).l
	bne.s loc_20e7bc
	addq.l #$4,a7
	jmp (sub_2039f0).l
loc_20e7bc:
	rts
	.incbin 59326, 284
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e8e8(pc,d0.w),d0
	jmp dat_20e8e8(pc,d0.w)
dat_20e8e8:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20efe6,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20efa6).l,a2
loc_20e936:
	jsr (sub_2079b0).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20efe6,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20e988
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20e988:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20e936
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20e9b0
	bge.s loc_20e9a6
	neg.w d0
loc_20e9a6:
	add.w d0,$a(a0)
	jmp (sub_203944).l
loc_20e9b0:
	addq.b #$4,$24(a0)
	jmp (sub_203944).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20e9d4
	bge.s loc_20e9ca
	neg.w d0
loc_20e9ca:
	add.w d0,$8(a0)
	jmp (sub_203944).l
loc_20e9d4:
	addq.b #$4,$24(a0)
	jmp (sub_203944).l
	tst.b $1e(a0)
	beq.s loc_20e9ee
	subq.b #$1,$1e(a0)
	jmp (sub_203944).l
loc_20e9ee:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20ea08
	bge.s loc_20e9fe
	neg.w d0
loc_20e9fe:
	add.w d0,$a(a0)
	jmp (sub_203944).l
loc_20ea08:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202302).l
	tst.b $1e(a0)
	beq.s loc_20ea2a
	subq.b #$1,$1e(a0)
	jmp (sub_203944).l
loc_20ea2a:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20ea44
	bge.s loc_20ea3a
	neg.w d0
loc_20ea3a:
	add.w d0,$8(a0)
	jmp (sub_203944).l
loc_20ea44:
	jmp (sub_2039f0).l
	tst.l ($f680).w
	bne.s loc_20ea5e
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2039f0).l
loc_20ea5e:
	rts
	.incbin 60000, 1350
dat_20efa6:
	.incbin 61350, 340

sub_20f0fa:
	jmp (loc_2063c2).l
dat_20f100:
	.incbin 61696, 16
dat_20f110:
	.incbin 61712, 412
loc_20f2ac:
	bcc.s dat_20f2d8
	.incbin 62126, 42
dat_20f2d8:
	dc.b $00,$23,$69,$2c,$67,$c0,$00,$23
	dc.b $66,$90,$6b,$c0
loc_20f2e4:
	ori.b #$23,d0
	bgt.s loc_20f324
	beq.s loc_20f2ac
	ori.b #$23,d2
	jsr $67c0(a4)
	.incbin 62196, 16
loc_20f304:
	bpl.s loc_20f2e4
	.incbin 62214, 30
loc_20f324:
	subx.b d0,d0
	dc.b $00,$20,$db,$40,$7d,$e0,$00,$0a
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
	jmp (loc_203b1a).l
	tst.l ($f680).w
	bne.s loc_20f42c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (loc_203b1a).l
loc_20f42c:
	rts
	.incbin 62510, 1690
	jmp (loc_2064ec).l
	.incbin 64206, 796
	jmp (loc_206294).l
	.incbin 65008, 55312
dat_21d600:
	.incbin 120320, 256
dat_21d700:
	.incbin 120576, 4096
dat_21e700:
	.incbin 124672, 4896
dat_21fa20:
	.incbin 129568, 1504
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 31358
dat_23ab3a:
	.incbin 240442, 768
dat_23ae3a:
	.incbin 241210, 166
dat_23aee0:
	.incbin 241376, 20768
