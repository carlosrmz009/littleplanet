; R32B__.MMD
; disassembled from the disc; code only, data comes from data/R32B__.MMD at build time
	.file "R32B__.MMD", 262144

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
	lea (dat_23723a).l,a2
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
	lea (dat_23733a).l,a2
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
	lea (dat_23723a).l,a2
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
	lea (dat_23733a).l,a2
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
	lea (dat_23723a).l,a2
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
	lea (dat_23833a).l,a2
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
	lea (dat_23723a).l,a2
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
	lea (dat_23833a).l,a2
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
	bsr.w sub_207778
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
	lea (dat_20eedc).l,a2
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
	bsr.w sub_203436
	bsr.w sub_20333c
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
	jsr (sub_20eed6).l
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
	jsr (sub_205af4).l
	bsr.w sub_207778
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
	jsr (sub_20778e).l
	jsr (sub_20384a).l
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
	jsr (sub_2039f4).l
	tst.w ($ff190e).l
	bne.s loc_2017e0
	bsr.w sub_200184
loc_2017e0:
	jsr (sub_20bb66).l
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
	jmp (sub_205af4).l
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
	jmp (sub_205af4).l
loc_201a1a:
	tst.b ($ff151f).l
	bne.s loc_201a10
	tst.b ($ff1520).l
	bne.s loc_201a10
	move.w #$90,d0
	jmp (sub_205af4).l
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
	jmp (sub_205af4).l
loc_201a56:
	tst.b ($ff151f).l
	bne.s loc_201a4c
	tst.b ($ff1520).l
	bne.s loc_201a4c
	move.w #$91,d0
	jmp (sub_205af4).l
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
	bsr.w sub_205a16
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
	jsr (sub_20eed6).l
	jsr (sub_2020ec).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f34
	bsr.w sub_2023e0
	jmp (loc_20a5d6).l
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
	bsr.w sub_202f34
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
	bsr.w sub_205a16
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
	lea (dat_20eeec).l,a1
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
	lea (dat_20eeec).l,a1
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
	lea (dat_20eeec).l,a1
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
	dc.b $00,$04,$00,$00,$26,$97,$00,$00
	dc.b $05,$10,$00,$60
dat_20273e:
	.incbin 10046, 32
loc_20275e:
	tst.b ($ff1522).l
	beq.s loc_20277e
	jsr (sub_206b6c).l
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
	dc.b $00,$20,$01,$ac
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
	lea ($a800).w,a2
	moveq #$9,d2
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
	bsr.w sub_202baa
	bsr.w sub_202c4a
	bsr.w sub_2034de
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_202ed4
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202ea0
	lea ($a828).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e6c
	move.w #$218,d0
	move.w #$520,d1
	sub.w ($f704).w,d1
	bcs.s loc_2028d6
	lsr.w #$1,d1
	sub.w d1,d0
	bpl.s loc_2028d6
	moveq #$0,d0
loc_2028d6:
	bsr.w sub_202e3c
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
	addi.l #$2000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$8000,(a2)+
	moveq #$3f,d6
	moveq #$0,d1
loc_202944:
	move.w d1,d2
	mulu.w #$100,d2
	addi.l #$8000,d2
	add.l d2,(a2)+
	addq.b #$1,d1
	dbf d6,loc_202944
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$5,d2
	divs.w #$c,d2
	ext.l d2
	moveq #$b,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$2,d6
	lea ($a938).w,a1
loc_202982:
	move.w d3,d0
	neg.w d0
	lea (dat_202ac0).l,a3
	moveq #$0,d5
	move.b $0(a3,d6.w),d5
loc_202992:
	move.w d0,-(a1)
	dbf d5,loc_202992
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202982
	lea ($a938).w,a1
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_2029ae:
	move.w d0,(a1)+
	dbf d6,loc_2029ae
	move.w ($f718).w,d0
	neg.w d0
	moveq #$5,d6
loc_2029bc:
	move.w d0,(a1)+
	dbf d6,loc_2029bc
	lea ($a800).w,a2
	moveq #$9,d6
loc_2029c8:
	move.l (a2)+,d1
	swap d1
	add.w ($f708).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202ab6).l,a3
	move.b $0(a3,d6.w),d5
loc_2029de:
	move.w d1,(a1)+
	dbf d5,loc_2029de
	dbf d6,loc_2029c8
	move.w ($f708).w,d0
	neg.w d0
	moveq #$9,d6
loc_2029f0:
	move.w d0,(a1)+
	dbf d6,loc_2029f0
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_2029fe:
	move.w d0,(a1)+
	dbf d6,loc_2029fe
	move.w ($f710).w,d0
	neg.w d0
	moveq #$7,d6
loc_202a0c:
	move.w d0,(a1)+
	dbf d6,loc_202a0c
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a1a:
	move.w d0,(a1)+
	dbf d6,loc_202a1a
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$6,d2
	divs.w #$18,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	moveq #$5,d6
	move.w ($f708).w,d3
loc_202a3e:
	move.w d3,d0
	neg.w d0
	lea (dat_202ac4).l,a3
	moveq #$0,d5
	move.b $0(a3,d6.w),d5
loc_202a4e:
	move.w d0,(a1)+
	dbf d5,loc_202a4e
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202a3e
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202a66:
	move.w d0,(a1)+
	dbf d6,loc_202a66
	lea ($cc00).w,a1
	lea ($a928).w,a2
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
	bcs.s loc_202ab2
	cmpi.w #$1b,d1
	bcs.s loc_202a96
	moveq #$1c,d1
loc_202a96:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	lea (dat_202aca).l,a3
	lea (dat_23d634).l,a4
	addi.w #$40,($f7d8).w
	bsr.w sub_202b20
loc_202ab2:
	bra.w loc_202ad0
dat_202ab6:
	dc.b $01,$01,$01,$01,$01,$05,$01,$01
	dc.b $03,$01
dat_202ac0:
	dc.b $03,$01,$01,$00
dat_202ac4:
	dc.b $05,$01,$01,$03,$01,$01
dat_202aca:
	dc.b $00,$40,$02,$10,$7f,$ff
loc_202ad0:
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	bmi.s loc_202b1e
	lea ($a828).w,a2
	move.b ($f7d8).w,d5
	sub.w ($f70c).w,d4
loc_202ae4:
	move.l (a2)+,d2
	swap d2
	add.w ($f708).w,d2
	neg.w d2
	move.w d2,d0
	move.w #$5c0,d3
	sub.w ($f704).w,d3
	cmp.w d3,d4
	bcs.s loc_202b14
	andi.w #$ff,d5
	move.b $0(a4,d5.w),d3
	ext.w d3
	add.w d3,d3
	add.w ($f700).w,d3
	neg.w d3
	swap d0
	move.w d3,d0
	swap d0
loc_202b14:
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d5
	dbf d1,loc_202ae4
loc_202b1e:
	rts

sub_202b20:
	cmp.w (a3),d4
	bcc.s loc_202b56
loc_202b24:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b40(pc,d2.w)
loc_202b34:
	tst.w d1
	bmi.s loc_202b54
	cmp.w (a3),d4
	bcc.s loc_202b70
loc_202b3c:
	move.w (a2)+,d0
	addq.w #$8,d4
loc_202b40:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b34
loc_202b54:
	rts
loc_202b56:
	move.w (a3)+,d3
	addi.w #$20,d3
	sub.w d4,d3
	bgt.s loc_202b7a
	cmp.w (a3),d4
	bcs.s loc_202b24
	move.w (a3)+,d3
	addi.w #$20,d3
	sub.w d4,d3
	ble.s loc_202b24
	bra.s loc_202b7a
loc_202b70:
	move.w (a3)+,d3
	addi.w #$20,d3
	sub.w d4,d3
	ble.s loc_202b3c
loc_202b7a:
	subq.w #$1,d3
	move.w d3,d6
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202b84:
	andi.w #$ff,d2
	move.b $0(a4,d2.w),d0
	ext.w d0
	add.w ($f708).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d2
	dbf d3,loc_202b84
	lsr.w #$3,d6
loc_202ba0:
	move.w (a2)+,d0
	subq.w #$1,d1
	dbf d6,loc_202ba0
	bra.s loc_202b34

sub_202baa:
	move.w ($f700).w,d4
	bsr.s sub_202bde
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bdc
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202bd6
	bset.b #$2,($f754).w
	rts
loc_202bd6:
	bset.b #$3,($f754).w
loc_202bdc:
	rts

sub_202bde:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202bf0
	bcs.s loc_202c20
	bra.s loc_202bf6
loc_202bf0:
	clr.w ($f73a).w
	rts
loc_202bf6:
	cmpi.w #$10,d0
	blt.s loc_202c00
	move.w #$10,d0
loc_202c00:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202c0e
	move.w ($f72a).w,d0
loc_202c0e:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c20:
	cmpi.w #$fff0,d0
	bge.s loc_202c2a
	move.w #$fff0,d0
loc_202c2a:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202c0e
	move.w ($f728).w,d0
	bra.s loc_202c0e
	.incbin 11322, 16

sub_202c4a:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c5e
	subq.w #$5,d0
loc_202c5e:
	btst.b #$1,$22(a6)
	beq.s loc_202c7e
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202cca
	subi.w #$40,d0
	bcc.s loc_202cca
	tst.b ($f75c).w
	bne.s loc_202cdc
	bra.s loc_202c8a
loc_202c7e:
	sub.w ($f73e).w,d0
	bne.s loc_202c90
	tst.b ($f75c).w
	bne.s loc_202cdc
loc_202c8a:
	clr.w ($f73c).w
	rts
loc_202c90:
	cmpi.w #$60,($f73e).w
	bne.s loc_202cb8
	move.w $14(a6),d1
	bpl.s loc_202ca0
	neg.w d1
loc_202ca0:
	cmpi.w #$800,d1
	bcc.s loc_202cca
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d2a
	cmpi.w #$fffa,d0
	blt.s loc_202cf4
	bra.s loc_202ce2
loc_202cb8:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d2a
	cmpi.w #$fffe,d0
	blt.s loc_202cf4
	bra.s loc_202ce2
loc_202cca:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d2a
	cmpi.w #$fff0,d0
	blt.s loc_202cf4
	bra.s loc_202ce2
loc_202cdc:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202ce2:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d34
	bra.w loc_202d00
loc_202cf4:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d00:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d58
	cmpi.w #$ff00,d1
	bgt.s loc_202d24
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d58
loc_202d24:
	move.w ($f72c).w,d1
	bra.s loc_202d58
loc_202d2a:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d34:
	cmp.w ($f72e).w,d1
	blt.s loc_202d58
	subi.w #$800,d1
	bcs.s loc_202d54
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d58
loc_202d54:
	move.w ($f72e).w,d1
loc_202d58:
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
	bne.s loc_202d9a
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d94
	bset.b #$0,($f754).w
	rts
loc_202d94:
	bset.b #$1,($f754).w
loc_202d9a:
	rts
	.incbin 11676, 64
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e04
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202dfe
	bset.b #$0,($f756).w
	rts
loc_202dfe:
	bset.b #$1,($f756).w
loc_202e04:
	rts
	.incbin 11782, 54

sub_202e3c:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e6a
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e64
	bset.b #$0,($f756).w
	rts
loc_202e64:
	bset.b #$1,($f756).w
loc_202e6a:
	rts

sub_202e6c:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e9e
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e98
	bset.b d6,($f756).w
	bra.s loc_202e9e
loc_202e98:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e9e:
	rts

sub_202ea0:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202ed2
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202ecc
	bset.b d6,($f758).w
	bra.s loc_202ed2
loc_202ecc:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202ed2:
	rts

sub_202ed4:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202f06
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f00
	bset.b d6,($f75a).w
	bra.s loc_202f06
loc_202f00:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202f06:
	rts
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f756).w,a2
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202ff2
	lea ($f758).w,a2
	lea ($f710).w,a3
	bra.w sub_2030d6

sub_202f34:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202ff2
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030d6
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030d8
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202ff0
	bclr.b #$0,(a2)
	beq.s loc_202fa6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203304
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030da
loc_202fa6:
	bclr.b #$1,(a2)
	beq.s loc_202fc0
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203304
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030da
loc_202fc0:
	bclr.b #$2,(a2)
	beq.s loc_202fd6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203304
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203130
loc_202fd6:
	bclr.b #$3,(a2)
	beq.s loc_202ff0
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203304
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203130
loc_202ff0:
	rts

sub_202ff2:
	lea (dat_2033bc).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20300e
	bclr.b #$1,(a2)
	beq.s loc_203058
	move.w #$e0,d4
loc_20300e:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203088(pc,d0.w),a3
	beq.s loc_203040
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203304
	movem.l (a7)+,d4-d5
	bsr.w sub_2030da
	movea.l (a7)+,a0
	bra.s loc_203058
loc_203040:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203306
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203106
	movea.l (a7)+,a0
loc_203058:
	tst.b (a2)
	bne.s loc_20305e
	rts
loc_20305e:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203072
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203072:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203098
dat_203088:
	.incbin 12424, 16
loc_203098:
	moveq #$f,d6
	move.l #$800000,d7
loc_2030a0:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_2030ca
	add.w d0,d0
	movea.l dat_203088(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031dc
	movem.l (a7)+,d4-d5
	bsr.w sub_203304
	bsr.w sub_20315e
	movem.l (a7)+,d4-d5/a0
loc_2030ca:
	addi.w #$10,d4
	dbf d6,loc_2030a0
	clr.b (a2)
	rts

sub_2030d6:
	rts

sub_2030d8:
	rts

sub_2030da:
	moveq #$15,d6

sub_2030dc:
	move.l #$800000,d7
	move.l d0,d1
loc_2030e4:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031dc
	move.l d1,d0
	bsr.w sub_20315e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030e4
	rts

sub_203106:
	move.l #$800000,d7
	move.l d0,d1
loc_20310e:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031de
	move.l d1,d0
	bsr.w sub_20315e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20310e
	rts

sub_203130:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20313a:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031dc
	move.l d1,d0
	bsr.w sub_20315e
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20313a
	rts

sub_20315e:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20319a
	btst.b #$3,(a0)
	bne.s loc_20317a
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20317a:
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
loc_20319a:
	btst.b #$3,(a0)
	bne.s loc_2031bc
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
loc_2031bc:
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

sub_2031dc:
	add.w (a3),d5

sub_2031de:
	add.w $4(a3),d4

sub_2031e2:
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
	beq.s loc_20322c
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
loc_20322c:
	rts
	.incbin 12846, 56

sub_203266:
	move.l a0,-(a7)
	lea ($a000).w,a4
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_2031e2
	bne.s loc_203292
	movem.l (a7)+,d3-d5
	bra.s loc_2032bc
loc_203292:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_2032c0
	bne.s loc_2032bc
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_20330a
	bsr.w sub_20315e
	movem.l (a7)+,d3-d5
loc_2032bc:
	movea.l (a7)+,a0
	rts

sub_2032c0:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_203300
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_203300
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_203300
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_203300
	moveq #$0,d0
	rts
loc_203300:
	moveq #$1,d0
	rts

sub_203304:
	add.w (a3),d5

sub_203306:
	add.w $4(a3),d4

sub_20330a:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13088, 28

sub_20333c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203366
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_20338e

sub_203366:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20336a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203304
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030dc
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20336a
	rts
loc_20338e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203392:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033bc).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_2033fe
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203392
	rts
dat_2033bc:
	.incbin 13244, 50
dat_2033ee:
	.incbin 13294, 16

sub_2033fe:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033ee(pc,d0.w),a3
	beq.s loc_203420
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203304
	movem.l (a7)+,d4-d5
	bsr.w sub_2030da
	bra.s loc_203434
loc_203420:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203306
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203106
loc_203434:
	rts

sub_203436:
	moveq #$0,d0
	lea (dat_20eedc).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2021d4
	movea.l (a2)+,a0
	bsr.w sub_203490
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2003e2
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_20347a
	jmp (loc_20bb42).l
loc_20347a:
	btst.b #$1,($ff151c).l
	beq.s loc_20348e
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20348e
	bsr.w sub_202302
loc_20348e:
	rts

sub_203490:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20349a:
	move.l d0,(a3)+
	dbf d1,loc_20349a
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2034b0
	lea ($a040).w,a3
	moveq #$2,d1

sub_2034b0:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2395f6).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034ca:
	move.w d1,d0
	movea.l a3,a0
loc_2034ce:
	move.b (a1)+,(a0)+
	dbf d0,loc_2034ce
	lea $80(a3),a3
	dbf d2,loc_2034ca
	rts

sub_2034de:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203558(pc,d0.w),d0
	jsr dat_203558(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203504
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203504:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203532
	bcc.s loc_203534
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203528
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203528:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203532:
	rts
loc_203534:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20354c
	btst.b #$1,($d022).w
	beq.s loc_20354c
	add.w d1,d1
	add.w d1,d1
loc_20354c:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203558:
	.incbin 13656, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203612(pc,d0.w),d0
	jmp dat_203612(pc,d0.w)
dat_203612:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$510,($f726).w
	rts
	.incbin 13856, 498
	sub.w ($f72e).w,d1
	bpl.s loc_20381a
	neg.w d1
loc_20381a:
	cmpi.w #$4,d1
	bge.s loc_203826
	move.w ($f726).w,($f72e).w
loc_203826:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_203846
	cmp.w ($f72a).w,d0
	ble.s loc_20383e
	move.w ($f72a).w,d0
loc_20383e:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_203846:
	moveq #$1,d0
	rts

sub_20384a:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203852:
	move.b (a0),d0
	beq.s loc_203868
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c6c).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203868:
	lea $40(a0),a0
	dbf d7,loc_203852
	rts

sub_203872:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2038b0
	bpl.s loc_2038a2
	btst.b #$1,$2c(a0)
	beq.s loc_2038a2
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2038b0
loc_2038a2:
	btst.b #$2,$2c(a0)
	bne.s loc_2038b0
	addi.w #$38,$12(a0)
loc_2038b0:
	tst.w $12(a0)
	bmi.s loc_2038c4
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2038c4
	move.w #$1000,$12(a0)
loc_2038c4:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2038d4:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203910
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203910
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_20390e
	neg.w d1
loc_20390e:
	add.w d1,d0
loc_203910:
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

sub_20392a:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20399a
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039b6
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2039b6
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203974
	cmpi.w #$800,d3
	bcs.s loc_203986
	subi.w #$800,d3
	bra.s loc_203986
loc_203974:
	cmpi.w #$700,($f704).w
	bcs.s loc_203986
	cmpi.w #$100,d3
	bcc.s loc_203986
	addi.w #$800,d3
loc_203986:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039b6
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2039b6
loc_20399a:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2039b6
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2039b6:
	rts
	.incbin 14776, 30

sub_2039d6:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2039dc:
	move.l d1,(a1)+
	dbf d0,loc_2039dc
	rts
dat_2039e4:
	.incbin 14820, 16

sub_2039f4:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203a00:
	tst.w (a4)
	beq.w loc_203ac0
	moveq #$2,d6
loc_203a08:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203ab8
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a6e
	movea.l dat_2039e4(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a52
	cmpi.w #$800,d2
	bcs.s loc_203a64
	subi.w #$800,d2
	bra.s loc_203a64
loc_203a52:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a64
	cmpi.w #$100,d2
	bcc.s loc_203a64
	addi.w #$800,d2
loc_203a64:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a90
loc_203a6e:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a90
	.incbin 14968, 24
loc_203a90:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203aae
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203ab2
loc_203aae:
	bsr.w sub_203ae2
loc_203ab2:
	bset.b #$7,$1(a0)
loc_203ab8:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203a08
loc_203ac0:
	lea $80(a4),a4
	dbf d7,loc_203a00
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203ada
	move.l #$0,(a2)
	rts
loc_203ada:
	move.b #$0,-$5(a2)
	rts

sub_203ae2:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203b28
	btst.l #$1,d4
	bne.w loc_203b76
loc_203af4:
	cmpi.b #$50,d5
	beq.s loc_203b26
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
	bne.s loc_203b20
	addq.w #$1,d0
loc_203b20:
	move.w d0,(a2)+
	dbf d1,loc_203af4
loc_203b26:
	rts
loc_203b28:
	btst.l #$1,d4
	bne.w loc_203bbc
loc_203b30:
	cmpi.b #$50,d5
	beq.s loc_203b74
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
	bne.s loc_203b6e
	addq.w #$1,d0
loc_203b6e:
	move.w d0,(a2)+
	dbf d1,loc_203b30
loc_203b74:
	rts
loc_203b76:
	cmpi.b #$50,d5
	beq.s loc_203bba
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
	bne.s loc_203bb4
	addq.w #$1,d0
loc_203bb4:
	move.w d0,(a2)+
	dbf d1,loc_203b76
loc_203bba:
	rts
loc_203bbc:
	cmpi.b #$50,d5
	beq.s loc_203c0e
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
	bne.s loc_203c08
	addq.w #$1,d0
loc_203c08:
	move.w d0,(a2)+
	dbf d1,loc_203bbc
loc_203c0e:
	rts
	.incbin 15376, 92
dat_203c6c:
	.incbin 15468, 246

sub_203d62:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d74
	move.w #$0,(a1)
	rts
loc_203d74:
	tst.w (a1)
	bne.s loc_203d7e
	move.b #$1,$1(a1)
loc_203d7e:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203dc8
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203dba
	neg.w $10(a0)
loc_203dba:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205af4
loc_203dc8:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203de6
	cmpa.w #$d040,a0
	beq.s loc_203de6
	tst.b ($ff1906).l
	beq.s loc_203de6
	jmp (loc_207492).l
loc_203de6:
	move.b $2a(a0),d0
	beq.s loc_203e10
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203e02
	cmpi.b #$2d,d0
	bcs.s loc_203e0c
	move.b #$2d,d0
	bra.s loc_203e0c
loc_203e02:
	cmpi.b #$1e,d0
	bcs.s loc_203e0c
	move.b #$1e,d0
loc_203e0c:
	move.b d0,$2a(a0)
loc_203e10:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203e1e(pc,d0.w),d1
	jmp dat_203e1e(pc,d1.w)
dat_203e1e:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203e28:
	tst.b ($d300).w
	bne.s loc_203e66
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e66:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e8e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e8e:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203ec2:
	tst.b ($ff1506).l
	bne.s loc_203f28
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203f28
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f2c
	cmpi.b #$2f,d1
	bne.s loc_203f2a
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f28
	tst.b $2c(a0)
	beq.s loc_203f28
	jsr (sub_20798a).l
	bne.s loc_203f28
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203f20
	moveq #$0,d0
loc_203f20:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f28:
	rts
loc_203f2a:
	rts

sub_203f2c:
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

sub_203f52:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f5e
	neg.w d0
loc_203f5e:
	btst.b #$1,$2c(a0)
	beq.s loc_203f6e
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203f96
loc_203f6e:
	cmpi.w #$600,d0
	bcs.s loc_203f96
	tst.w $14(a0)
	bpl.s loc_203f88
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203fa4
	move.w #$e0,d1
	bra.s loc_203fa4
loc_203f88:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203fa4
	move.w #$60,d1
	bra.s loc_203fa4
loc_203f96:
	cmpi.w #$a0,d1
	beq.s loc_203fa4
	bcc.s loc_203fa2
	addq.w #$2,d1
	bra.s loc_203fa4
loc_203fa2:
	subq.w #$2,d1
loc_203fa4:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203f52
	bsr.w sub_203ec2
	tst.w ($ff1588).l
	beq.s loc_203fca
	btst.b #$4,($f605).w
	beq.s loc_203fca
	move.b #$1,($ff1906).l
	rts
loc_203fca:
	tst.b ($f7cc).w
	bne.s loc_203fd6
	move.w ($f604).w,($f602).w
loc_203fd6:
	btst.b #$0,$2c(a0)
	beq.s loc_203ffa
	cmpi.b #$6,($ff1506).l
	bne.s loc_203ff4
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204012
loc_203ff4:
	bsr.w sub_2042dc
	bra.s loc_204012
loc_203ffa:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204058(pc,d0.w),d1
	jsr dat_204058(pc,d1.w)
	jsr (sub_2065ac).l
loc_204012:
	bsr.s sub_204066
	bsr.w sub_204126
	bsr.w sub_204140
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_20403a
	tst.b $1c(a0)
	bne.s loc_20403a
	move.b $1d(a0),$1c(a0)
loc_20403a:
	bsr.w sub_2054e4
	tst.b $2c(a0)
	bmi.s loc_204052
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204052
	jsr (sub_20703c).l
loc_204052:
	bsr.w sub_20539a
	rts
dat_204058:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204066:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20408a
	move.w $30(a0),d0
	beq.s loc_20407c
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20408a
loc_20407c:
	btst.b #$6,$2c(a0)
	bne.s loc_20408a
	jsr (sub_20392a).l
loc_20408a:
	tst.b ($ff151f).l
	beq.s loc_2040ce
	tst.w $32(a0)
	beq.s loc_2040ce
	subq.w #$1,$32(a0)
	bne.s loc_2040ce
	tst.b ($ff1520).l
	bne.s loc_2040c6
	tst.b ($ff1958).l
	bne.s loc_2040c6
	tst.b ($ff152e).l
	bne.s loc_2040c0
	move.w #$e,d0
	jsr (sub_205af4).l
loc_2040c0:
	jsr (sub_20192c).l
loc_2040c6:
	move.b #$0,($ff151f).l
loc_2040ce:
	tst.b ($ff1520).l
	beq.s loc_204124
	tst.w $34(a0)
	beq.s loc_204124
	subq.w #$1,$34(a0)
	bne.s loc_204124
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20411c
	tst.b ($ff1958).l
	bne.s loc_20411c
	tst.b ($ff152e).l
	bne.s loc_204116
	move.w #$e,d0
	jsr (sub_205af4).l
loc_204116:
	jsr (sub_20192c).l
loc_20411c:
	move.b #$0,($ff1520).l
loc_204124:
	rts

sub_204126:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204140:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20414c
loc_20414a:
	rts
loc_20414c:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20415e
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20414a
loc_20415e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2041a2
	bset.b #$6,$22(a0)
	bne.s loc_20414a
	bsr.w sub_205df8
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20414a
	bra.s loc_2041da
loc_2041a2:
	tst.w $12(a0)
	beq.s loc_2041aa
	bpl.s loc_20414a
loc_2041aa:
	bclr.b #$6,$22(a0)
	beq.s loc_20414a
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20414a
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2041da
	move.w #$f000,$12(a0)
loc_2041da:
	jsr (sub_20798a).l
	bne.s loc_2041ee
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2041ee:
	rts

sub_2041f0:
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
	bcs.s loc_2042ca
	move.l #$50000,d0
loc_2042ca:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2042dc:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204302
	tst.b ($ff152e).l
	beq.s loc_2042f8
	cmpi.b #$2,($ff152e).l
	bne.s loc_204302
loc_2042f8:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2043b2
loc_204302:
	tst.b $2a(a0)
	bne.w loc_2043c0
	tst.b ($f784).w
	beq.w loc_2043c0
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204320
	neg.w d0
loc_204320:
	tst.w ($f786).w
	bne.s loc_20432c
	move.w #$1,($f786).w
loc_20432c:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204342
	move.b #$1,($ff1502).l
	bra.w loc_205af0
loc_204342:
	cmpi.w #$d2,d1
	bcs.s loc_204396
	cmpi.b #$2,($ff1522).l
	beq.s loc_204394
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20436c
	move.w #$82,d0
	jsr (sub_205af4).l
	moveq #$0,d0
loc_20436c:
	add.b ($f784).w,d0
	bpl.s loc_204376
	moveq #$0,d0
	bra.s loc_20437e
loc_204376:
	cmpi.b #$3,d0
	bcs.s loc_20437e
	moveq #$2,d0
loc_20437e:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2041f0
	move.b #$2,($ff1522).l
loc_204394:
	rts
loc_204396:
	cmpi.w #$5a,d1
	bcc.s loc_2043ae
	cmp.w d2,d0
	bcc.w loc_203e28
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2043ae:
	cmp.w d2,d0
	bcc.s loc_2043c0
loc_2043b2:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2043c0:
	rts
	bsr.w sub_203d62
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2043f2
	tst.b ($ff195b).l
	beq.s loc_2043e0
	cmpi.b #$79,$1a(a0)
	bne.s loc_20441c
	bra.s loc_2043e8
loc_2043e0:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20441c
loc_2043e8:
	bsr.w sub_204c84
	jmp (sub_203872).l
loc_2043f2:
	bsr.w sub_2044ca
	bsr.w sub_2042dc
	bsr.w sub_204d6e
	bsr.w sub_204e9a
	bsr.w sub_20453e
	bsr.w sub_204cf0
	bsr.w sub_204c84
	jsr (sub_2038d4).l
	bsr.w sub_200a3c
	bsr.w sub_204f18
loc_20441c:
	rts
	tst.b ($f7c7).w
	bne.s loc_204438
	cmpi.b #$15,$1c(a0)
	beq.s loc_204438
	tst.w $12(a0)
	bmi.s loc_204438
	move.b #$0,$1c(a0)
loc_204438:
	bsr.w sub_2044ca
	bsr.w sub_2042dc
	bsr.w sub_204e58
	bsr.w sub_204ba4
	bsr.w sub_204c84
	jsr (sub_203872).l
	btst.b #$6,$22(a0)
	beq.s loc_204460
	subi.w #$28,$12(a0)
loc_204460:
	bsr.w sub_204f62
	bsr.w sub_204f86
	rts
	bsr.w sub_2044ca
	bsr.w sub_2042dc
	bsr.w sub_204d6e
	bsr.w sub_204ed6
	bsr.w sub_2049de
	bsr.w sub_204c84
	tst.b $2a(a0)
	bne.s loc_20448e
	jsr (sub_2038d4).l
loc_20448e:
	bsr.w sub_200a3c
	bsr.w sub_204f18
	rts
	bsr.w sub_2044ca
	bsr.w sub_2042dc
	bsr.w sub_204e58
	bsr.w sub_204ba4
	bsr.w sub_204c84
	jsr (sub_203872).l
	btst.b #$6,$22(a0)
	beq.s loc_2044c0
	subi.w #$28,$12(a0)
loc_2044c0:
	bsr.w sub_204f62
	bsr.w sub_204f86
	rts

sub_2044ca:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204536
	tst.w ($ff1506).l
	bne.s loc_204536
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204538).l,a2
loc_2044fe:
	move.b (a2)+,d0
	bmi.s loc_20450e
	cmp.b d0,d1
	bne.s loc_2044fe
	bset.b #$1,$2c(a0)
	rts
loc_20450e:
	bclr.b #$1,$2c(a0)
	beq.s loc_204536
	tst.w $12(a0)
	bpl.s loc_204536
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204536
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204536
	neg.w $10(a0)
loc_204536:
	rts
dat_204538:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20453e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204868
	tst.w $3e(a0)
	bne.w loc_204818
	btst.b #$2,($f602).w
	beq.s loc_204566
	bsr.w sub_2048f8
loc_204566:
	btst.b #$3,($f602).w
	beq.s loc_204572
	bsr.w sub_20496e
loc_204572:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204818
	tst.w $14(a0)
	beq.s loc_204592
	tst.b $2a(a0)
	beq.w loc_204818
	bra.s loc_20459e
loc_204592:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20459e:
	btst.b #$3,$22(a0)
	beq.s loc_2045f0
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204648
	cmpi.b #$1e,$0(a1)
	bne.s loc_2045d0
	move.b #$0,$1c(a0)
	bra.w loc_204818
loc_2045d0:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20462c
	cmp.w d2,d1
	bge.s loc_20461a
	bra.s loc_204648
loc_2045f0:
	jsr (sub_206da0).l
	cmpi.w #$c,d1
	blt.s loc_204648
	move.w #$ab,d0
	jsr (sub_202138).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204624
loc_20461a:
	btst.b #$0,$22(a0)
	bne.s loc_204634
	bra.s loc_20463e
loc_204624:
	cmpi.b #$3,$37(a0)
	bne.s loc_204648
loc_20462c:
	btst.b #$0,$22(a0)
	bne.s loc_20463e
loc_204634:
	move.b #$32,$1c(a0)
	bra.w loc_204818
loc_20463e:
	move.b #$6,$1c(a0)
	bra.w loc_204818
loc_204648:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20465c
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20465c:
	btst.b #$7,($f788).w
	bne.w loc_204760
	btst.b #$6,($f788).w
	bne.w loc_204780
	btst.b #$1,($f602).w
	bne.w loc_204780
	andi.b #$f,($f788).w
	beq.s loc_204694
	btst.b #$0,($f603).w
	beq.s loc_2046a8
	bset.b #$7,($f788).w
	bra.w loc_20483c
loc_204694:
	btst.b #$0,($f603).w
	beq.w loc_2046a8
	move.b #$1,($f788).w
	bra.w loc_20483c
loc_2046a8:
	btst.b #$0,($f602).w
	beq.s loc_204724
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204706
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2046d8
	asr.w #$1,d2
	sub.w d2,d1
loc_2046d8:
	btst.b #$0,$22(a0)
	beq.s loc_2046e4
	neg.w d0
	neg.w d1
loc_2046e4:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2046fa
	cmp.w d0,d1
	ble.s loc_204700
	bra.s loc_2046fe
loc_2046fa:
	cmp.w d1,d0
	ble.s loc_204700
loc_2046fe:
	move.w d1,d0
loc_204700:
	move.w d0,$14(a0)
	rts
loc_204706:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204720
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202138).l
loc_204720:
	bra.w loc_20483c
loc_204724:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204744
	move.w #$ab,d0
	jsr (sub_202138).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204780
loc_204744:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202138).l
	bra.w loc_204818
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204760:
	btst.b #$0,($f602).w
	beq.s loc_204780
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20483c
	addq.w #$2,($f73e).w
	bra.w loc_20483c
loc_204780:
	btst.b #$6,($f788).w
	bne.w loc_2047fc
	andi.b #$f,($f788).w
	beq.s loc_2047a4
	btst.b #$1,($f603).w
	beq.s loc_2047b6
	bset.b #$6,($f788).w
	bra.w loc_20483c
loc_2047a4:
	btst.b #$1,($f603).w
	beq.s loc_2047b6
	move.b #$1,($f788).w
	bra.w loc_20483c
loc_2047b6:
	btst.b #$1,($f602).w
	beq.s loc_204818
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2047fa
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047fa
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2047ec
	neg.w $14(a0)
loc_2047ec:
	move.w #$9c,d0
	jsr (sub_202138).l
	bsr.w sub_204d18
loc_2047fa:
	bra.s loc_20483c
loc_2047fc:
	btst.b #$1,($f602).w
	beq.s loc_204818
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20483c
	subq.w #$2,($f73e).w
	bra.s loc_20483c
loc_204818:
	cmpi.w #$60,($f73e).w
	bne.s loc_204832
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20483c
	move.b #$0,($f788).w
	bra.s loc_20483c
loc_204832:
	bcc.s loc_204838
	addq.w #$4,($f73e).w
loc_204838:
	subq.w #$2,($f73e).w
loc_20483c:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204868
	move.w $14(a0),d0
	beq.s loc_204868
	bmi.s loc_20485c
	sub.w d5,d0
	bcc.s loc_204856
	move.w #$0,d0
loc_204856:
	move.w d0,$14(a0)
	bra.s loc_204868
loc_20485c:
	add.w d5,d0
	bcc.s loc_204864
	move.w #$0,d0
loc_204864:
	move.w d0,$14(a0)
loc_204868:
	move.b $26(a0),d0
	jsr (sub_20063c).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204886:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2048f6
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2048f6
	bmi.s loc_20489e
	neg.w d1
loc_20489e:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206c60
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2048f6
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2048f2
	cmpi.b #$40,d0
	beq.s loc_2048e0
	cmpi.b #$80,d0
	beq.s loc_2048da
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048da:
	sub.w d1,$12(a0)
	rts
loc_2048e0:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048f2:
	add.w d1,$12(a0)
loc_2048f6:
	rts

sub_2048f8:
	tst.b $2a(a0)
	bne.s loc_20496c
	move.w $14(a0),d0
	beq.s loc_204906
	bpl.s loc_204936
loc_204906:
	bset.b #$0,$22(a0)
	bne.s loc_20491a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20491a:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20492a
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20492a
	move.w d1,d0
loc_20492a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204936:
	sub.w d4,d0
	bcc.s loc_20493e
	move.w #$ff80,d0
loc_20493e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20496c
	cmpi.w #$400,d0
	blt.s loc_20496c
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202138).l
loc_20496c:
	rts

sub_20496e:
	tst.b $2a(a0)
	bne.s loc_2049dc
	move.w $14(a0),d0
	bmi.s loc_2049a6
	bclr.b #$0,$22(a0)
	beq.s loc_20498e
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20498e:
	cmp.w d6,d0
	bge.s loc_20499a
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_20499a
	move.w d6,d0
loc_20499a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2049a6:
	add.w d4,d0
	bcc.s loc_2049ae
	move.w #$80,d0
loc_2049ae:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2049dc
	cmpi.w #$fc00,d0
	bgt.s loc_2049dc
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202138).l
loc_2049dc:
	rts

sub_2049de:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204b28
	tst.w $3e(a0)
	bne.s loc_204a16
	btst.b #$2,($f602).w
	beq.s loc_204a0a
	bsr.w sub_204b5e
loc_204a0a:
	btst.b #$3,($f602).w
	beq.s loc_204a16
	bsr.w sub_204b82
loc_204a16:
	tst.b $2a(a0)
	beq.w loc_204ac0
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a36
	asr.w #$1,d2
	sub.w d2,d1
loc_204a36:
	btst.b #$0,$22(a0)
	beq.s loc_204a42
	neg.w d0
	neg.w d1
loc_204a42:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a58
	cmp.w d0,d1
	ble.s loc_204a5e
	bra.s loc_204a5c
loc_204a58:
	cmp.w d1,d0
	ble.s loc_204a5e
loc_204a5c:
	move.w d1,d0
loc_204a5e:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204a92
	rts
loc_204a6c:
	move.w #$ab,d0
	jsr (sub_202138).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204af2
loc_204a92:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204a6c
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202138).l
	btst.b #$0,$22(a0)
	bne.s loc_204ab8
	bsr.w sub_204b82
	bra.s loc_204ac0
loc_204ab8:
	bsr.w sub_204b5e
	bra.s loc_204ac0
	dc.b $4e,$75
loc_204ac0:
	move.w $14(a0),d0
	beq.s loc_204ae2
	bmi.s loc_204ad6
	sub.w d5,d0
	bcc.s loc_204ad0
	move.w #$0,d0
loc_204ad0:
	move.w d0,$14(a0)
	bra.s loc_204ae2
loc_204ad6:
	add.w d5,d0
	bcc.s loc_204ade
	move.w #$0,d0
loc_204ade:
	move.w d0,$14(a0)
loc_204ae2:
	tst.w $14(a0)
	bne.s loc_204b28
	move.w #$ab,d0
	jsr (sub_202138).l
loc_204af2:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204b12
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204b22
loc_204b12:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204b22:
	move.b #$5,$1c(a0)
loc_204b28:
	move.b $26(a0),d0
	jsr (sub_20063c).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204b4c
	move.w #$1000,d1
loc_204b4c:
	cmpi.w #$f000,d1
	bge.s loc_204b56
	move.w #$f000,d1
loc_204b56:
	move.w d1,$10(a0)
	bra.w loc_204886

sub_204b5e:
	move.w $14(a0),d0
	beq.s loc_204b66
	bpl.s loc_204b74
loc_204b66:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b74:
	sub.w d4,d0
	bcc.s loc_204b7c
	move.w #$ff80,d0
loc_204b7c:
	move.w d0,$14(a0)
	rts

sub_204b82:
	move.w $14(a0),d0
	bmi.s loc_204b96
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b96:
	add.w d4,d0
	bcc.s loc_204b9e
	move.w #$80,d0
loc_204b9e:
	move.w d0,$14(a0)
	rts

sub_204ba4:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204bde
	tst.w ($ff1506).l
	bne.s loc_204bde
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204bd6
	cmpi.w #$840,$8(a0)
	bcc.s loc_204bd6
	rts
loc_204bd6:
	btst.b #$1,$2c(a0)
	bne.s loc_204c0e
loc_204bde:
	btst.b #$2,($f602).w
	beq.s loc_204bf8
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204bf8
	move.w d1,d0
loc_204bf8:
	btst.b #$3,($f602).w
	beq.s loc_204c0e
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204c0e
	move.w d6,d0
loc_204c0e:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204c24
	bcc.s loc_204c20
	addq.w #$4,($f73e).w
loc_204c20:
	subq.w #$2,($f73e).w
loc_204c24:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204c52
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204c52
	bmi.s loc_204c46
	sub.w d1,d0
	bcc.s loc_204c40
	move.w #$0,d0
loc_204c40:
	move.w d0,$10(a0)
	rts
loc_204c46:
	sub.w d1,d0
	bcs.s loc_204c4e
	move.w #$0,d0
loc_204c4e:
	move.w d0,$10(a0)
loc_204c52:
	rts
	dc.b $10,$28,$00,$26
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204c82
	bsr.w sub_206e9a
	tst.w d1
	bpl.s loc_204c82
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
loc_204c82:
	rts

sub_204c84:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204cd8
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204cb2
	addi.w #$38,d0
loc_204cb2:
	cmp.w d1,d0
	bls.s loc_204cd8
loc_204cb6:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204cc6
	rts
loc_204cc6:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2072d6
	move.b #$6,$24(a0)
	rts
loc_204cd8:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204cb6

sub_204cf0:
	tst.b ($f7ca).w
	bne.s loc_204d16
	move.w $14(a0),d0
	bpl.s loc_204cfe
	neg.w d0
loc_204cfe:
	cmpi.w #$80,d0
	bcs.s loc_204d16
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204d16
	btst.b #$1,($f602).w
	bne.s sub_204d18
loc_204d16:
	rts

sub_204d18:
	btst.b #$2,$22(a0)
	beq.s loc_204d22
	bra.s loc_204d52
loc_204d22:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d42
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d52
loc_204d42:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d52:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d6c
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d6c
	move.w #$200,$14(a0)
loc_204d6c:
	rts

sub_204d6e:
	tst.b $2a(a0)
	beq.s loc_204d76
	rts
loc_204d76:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204d88
	tst.w $14(a0)
	beq.w loc_204e4e
loc_204d88:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204e4e
	btst.b #$3,$22(a0)
	beq.s loc_204da4
	jsr (sub_205a7a).l
	beq.s loc_204dd4
loc_204da4:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206cca
	cmpi.w #$6,d1
	blt.w loc_204e4e
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204dca
	move.w #$380,d2
loc_204dca:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204dd4:
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
	bne.s loc_204e50
	tst.b ($ff195b).l
	beq.s loc_204e32
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e42
loc_204e32:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e42:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204e4e:
	rts
loc_204e50:
	bset.b #$4,$22(a0)
	rts

sub_204e58:
	tst.b $3c(a0)
	beq.s loc_204e8a
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204e6e
	move.w #$fe00,d1
loc_204e6e:
	cmp.w $12(a0),d1
	ble.s loc_204e88
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204e88
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204e88:
	rts
loc_204e8a:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204e98
	move.w #$f040,$12(a0)
loc_204e98:
	rts

sub_204e9a:
	tst.b $2a(a0)
	bne.s loc_204ed4
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204ed4
	move.b $26(a0),d0
	jsr (sub_20063c).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204ed4
	bmi.s loc_204ed0
	tst.w d0
	beq.s loc_204ece
	add.w d0,$14(a0)
loc_204ece:
	rts
loc_204ed0:
	add.w d0,$14(a0)
loc_204ed4:
	rts

sub_204ed6:
	tst.b $2a(a0)
	bne.s loc_204f16
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204f16
	move.b $26(a0),d0
	jsr (sub_20063c).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204f0c
	tst.w d0
	bpl.s loc_204f06
	asr.l #$2,d0
loc_204f06:
	add.w d0,$14(a0)
	rts
loc_204f0c:
	tst.w d0
	bmi.s loc_204f12
	asr.l #$2,d0
loc_204f12:
	add.w d0,$14(a0)
loc_204f16:
	rts

sub_204f18:
	nop
	tst.b $38(a0)
	bne.s loc_204f5a
	tst.w $3e(a0)
	bne.s loc_204f5c
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204f5a
	move.w $14(a0),d0
	bpl.s loc_204f3c
	neg.w d0
loc_204f3c:
	cmpi.w #$280,d0
	bcc.s loc_204f5a
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204f5a:
	rts
loc_204f5c:
	subq.w #$1,$3e(a0)
	rts

sub_204f62:
	btst.b #$1,$2c(a0)
	bne.s loc_204f84
	move.b $26(a0),d0
	beq.s loc_204f84
	bpl.s loc_204f7a
	addq.b #$2,d0
	bcc.s loc_204f78
	moveq #$0,d0
loc_204f78:
	bra.s loc_204f80
loc_204f7a:
	subq.b #$2,d0
	bcc.s loc_204f80
	moveq #$0,d0
loc_204f80:
	move.b d0,$26(a0)
loc_204f84:
	rts

sub_204f86:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2008d4).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20506a
	cmpi.b #$80,d0
	beq.w loc_2050cc
	cmpi.b #$c0,d0
	beq.w loc_205128
	bsr.w sub_206fe0
	tst.w d1
	bpl.s loc_204fd8
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fd8:
	bsr.w sub_206e42
	tst.w d1
	bpl.s loc_204fea
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fea:
	bsr.w sub_206cf2
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205068
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205008
	cmp.b d2,d0
	blt.s loc_205068
loc_205008:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20518a
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205046
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205038
	asr.w $12(a0)
	bra.s loc_20505a
loc_205038:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205046:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_20505a
	move.w #$fc0,$12(a0)
loc_20505a:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205068
	neg.w $14(a0)
loc_205068:
	rts
loc_20506a:
	bsr.w sub_206fe0
	tst.w d1
	bpl.s loc_205084
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205084:
	bsr.w sub_206e9a
	tst.w d1
	bpl.s loc_20509e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20509c
	move.w #$0,$12(a0)
loc_20509c:
	rts
loc_20509e:
	tst.w $12(a0)
	bmi.s loc_2050ca
	bsr.w sub_206cf2
	tst.w d1
	bpl.s loc_2050ca
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20518a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050ca:
	rts
loc_2050cc:
	bsr.w sub_206fe0
	tst.w d1
	bpl.s loc_2050de
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050de:
	bsr.w sub_206e42
	tst.w d1
	bpl.s loc_2050f0
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050f0:
	bsr.w sub_206e9a
	tst.w d1
	bpl.s loc_205126
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205110
	move.w #$0,$12(a0)
	rts
loc_205110:
	move.b d3,$26(a0)
	bsr.w sub_2051fc
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205126
	neg.w $14(a0)
loc_205126:
	rts
loc_205128:
	bsr.w sub_206e42
	tst.w d1
	bpl.s loc_205142
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205142:
	bsr.w sub_206e9a
	tst.w d1
	bpl.s loc_20515c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20515a
	move.w #$0,$12(a0)
loc_20515a:
	rts
loc_20515c:
	tst.w $12(a0)
	bmi.s loc_205188
	bsr.w sub_206cf2
	tst.w d1
	bpl.s loc_205188
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20518a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205188:
	rts

sub_20518a:
	btst.b #$4,$22(a0)
	beq.s loc_205194
	nop
loc_205194:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2051ee
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2051ce
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2051de
loc_2051ce:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2051de:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202138).l
loc_2051ee:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2051fc:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2038d4).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205236
	subi.w #$20,$12(a0)
loc_205236:
	jsr (sub_2065ac).l
	bsr.w sub_205252
	bsr.w sub_204c84
	bsr.w sub_204126
	bsr.w sub_2054e4
	jmp (sub_20392a).l

sub_205252:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_2072d6
	bsr.w sub_204f86
	btst.b #$1,$22(a0)
	bne.s loc_20528c
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_20528c:
	rts
	.incbin 21134, 268

sub_20539a:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2053c2
	cmpi.b #$5,($ff1506).l
	beq.s loc_2053c2
	cmpi.b #$2,($ff1506).l
	beq.s loc_2053c2
	tst.b ($ff1506).l
	bne.w loc_205484
loc_2053c2:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205400
	tst.b ($ff1506).l
	bne.w loc_205486
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205486
	bra.s loc_205408
loc_205400:
	cmp.b ($f7af).w,d1
	beq.w loc_205486
loc_205408:
	cmp.b ($f7ac).w,d1
	beq.s loc_205438
	cmp.b ($f7ad).w,d1
	beq.s loc_20541c
	bclr.b #$6,$1(a0)
	rts
loc_20541c:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20549e
	btst.b #$1,$22(a0)
	beq.s loc_205438
	bclr.b #$6,$1(a0)
	rts
loc_205438:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20544a
	bclr.b #$6,$1(a0)
	rts
loc_20544a:
	cmpi.b #$e0,d2
	bcs.s loc_205458
	bset.b #$6,$1(a0)
	rts
loc_205458:
	btst.b #$6,$1(a0)
	bne.s loc_205474
	move.b $26(a0),d1
	beq.s loc_205484
	cmpi.b #$80,d1
	bhi.s loc_205484
	bset.b #$6,$1(a0)
	rts
loc_205474:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205484
	bclr.b #$6,$1(a0)
loc_205484:
	rts
loc_205486:
	btst.b #$2,$22(a0)
	bne.s loc_205498
	move.w #$9c,d0
	jsr (sub_202138).l
loc_205498:
	jmp (sub_204d18).l
loc_20549e:
	tst.w $12(a0)
	bmi.s loc_2054e2
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2054d6
	cmpi.w #$38,d1
	bcs.s loc_2054ce
	cmpi.w #$80,d1
	bcs.s loc_2054e2
loc_2054c6:
	bclr.b #$6,$1(a0)
	rts
loc_2054ce:
	bset.b #$6,$1(a0)
	rts
loc_2054d6:
	cmpi.w #$38,d1
	bcs.s loc_2054c6
	cmpi.w #$80,d1
	bcc.s loc_2054ce
loc_2054e2:
	rts

sub_2054e4:
	lea (dat_2057d4).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205506
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205506:
	bsr.w sub_205776
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20557e
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20554c
	move.b d0,$1e(a0)

sub_205530:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205544
	bpl.s loc_205544
	cmpi.b #$fd,d0
	bge.s loc_20554e
loc_205544:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20554c:
	rts
loc_20554e:
	addq.b #$1,d0
	bne.s loc_20555e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205544
loc_20555e:
	addq.b #$1,d0
	bne.s loc_205572
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205544
loc_205572:
	addq.b #$1,d0
	bne.s loc_20557c
	move.b $2(a1,d1.w),$1c(a0)
loc_20557c:
	rts
loc_20557e:
	subq.b #$1,$1e(a0)
	bpl.s loc_20554c
	addq.b #$1,d0
	bne.w loc_205638
	tst.b ($ff195b).l
	bne.w loc_205700
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2055a6
	not.b d0
loc_2055a6:
	btst.b #$1,$2c(a0)
	bne.s loc_2055b4
	addi.b #$10,d0
	bra.s loc_2055b6
loc_2055b4:
	addq.b #$8,d0
loc_2055b6:
	bpl.s loc_2055ba
	moveq #$3,d1
loc_2055ba:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2056ac
	move.w $14(a0),d2
	bpl.s loc_2055d8
	neg.w d2
loc_2055d8:
	btst.b #$1,$2c(a0)
	beq.s loc_2055f0
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2059d6).l,a1
	bra.s loc_20561a
loc_2055f0:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2059b0).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20561a
	lea (dat_205854).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20561a
	lea (dat_20584c).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20561a:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205628
	moveq #$0,d2
loc_205628:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205530
	add.b d3,$1a(a0)
	rts
loc_205638:
	addq.b #$1,d0
	bne.s loc_2056a8
	move.w $14(a0),d2
	bpl.s loc_205644
	neg.w d2
loc_205644:
	lea (dat_205932).l,a1
	tst.b ($ff195b).l
	bne.s loc_205682
	lea (dat_205864).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205676
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205682
	lea (dat_2059de).l,a1
	bra.s loc_205682
loc_205676:
	cmpi.w #$600,d2
	bcc.s loc_205682
	lea (dat_20585c).l,a1
loc_205682:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20568c
	moveq #$0,d2
loc_20568c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205530
loc_2056a8:
	addq.b #$1,d0
	bne.s loc_2056ec
loc_2056ac:
	move.w $14(a0),d2
	bmi.s loc_2056b4
	neg.w d2
loc_2056b4:
	addi.w #$800,d2
	bpl.s loc_2056bc
	moveq #$0,d2
loc_2056bc:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205944).l,a1
	tst.b ($ff195b).l
	bne.s loc_2056d6
	lea (dat_20586c).l,a1
loc_2056d6:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205530
loc_2056ec:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205700:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205712
	not.b d0
loc_205712:
	addi.b #$10,d0
	bpl.s loc_20571a
	moveq #$0,d1
loc_20571a:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205748
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205638
loc_205748:
	move.w $14(a0),d2
	bpl.s loc_205750
	neg.w d2
loc_205750:
	lea (dat_20592c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205762
	lea (dat_205926).l,a1
loc_205762:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20576c
	moveq #$0,d2
loc_20576c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205530

sub_205776:
	tst.b ($ff195b).l
	beq.s loc_205782
	move.b dat_205784(pc,d0.w),d0
loc_205782:
	rts
dat_205784:
	.incbin 22404, 80
dat_2057d4:
	.incbin 22484, 120
dat_20584c:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205854:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20585c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205864:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20586c:
	.incbin 22636, 186
dat_205926:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20592c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205932:
	.incbin 22834, 18
dat_205944:
	.incbin 22852, 108
dat_2059b0:
	.incbin 22960, 38
dat_2059d6:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2059de:
	.incbin 23006, 56

sub_205a16:
	tst.b (a0)
	beq.w loc_205a78
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205a78
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205a78
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205a4a:
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
loc_205a64:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a64
	dbf d1,loc_205a4a
loc_205a78:
	rts

sub_205a7a:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205aee
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
	bne.s loc_205adc
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205adc:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205aee:
	rts
loc_205af0:
	move.w #$e,d0

sub_205af4:
	cmpi.w #$67,d0
	bne.s loc_205b02
	move.b #$1,($ff1958).l
loc_205b02:
	move.w d0,($a12010).l
loc_205b08:
	move.w ($a12020).l,d0
	beq.s loc_205b08
	cmp.w ($a12020).l,d0
	bne.s loc_205b08
	move.w #$0,($a12010).l
loc_205b20:
	move.w ($a12020).l,d0
	bne.s loc_205b20
	move.w ($a12020).l,d0
	bne.s loc_205b20
	rts
	dc.b $00,$00

sub_205b34:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205b50
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205b50:
	subq.b #$1,$1e(a0)
	bpl.s loc_205b90
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205b92
loc_205b6c:
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
loc_205b90:
	rts
loc_205b92:
	addq.b #$1,d0
	bne.s loc_205ba2
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b6c
loc_205ba2:
	addq.b #$1,d0
	bne.s loc_205bb6
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b6c
loc_205bb6:
	addq.b #$1,d0
	bne.s loc_205bc0
	move.b $2(a1,d1.w),$1c(a0)
loc_205bc0:
	addq.b #$1,d0
	bne.s loc_205bc8
	addq.b #$2,$24(a0)
loc_205bc8:
	addq.b #$1,d0
	bne.s loc_205bd6
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205bd6:
	addq.b #$1,d0
	bne.s loc_205bde
	addq.b #$2,$25(a0)
loc_205bde:
	rts
	.incbin 23520, 536

sub_205df8:
	rts
	.incbin 24058, 116

sub_205e6e:
	tst.b $25(a0)
	bne.s loc_205e9e
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1

sub_205e7c:
	ori.b #$80,d1
	jsr (sub_20798a).l
	bne.s loc_205e9e
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205e9e:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205eae(pc,d0.w),d0
	jmp dat_205eae(pc,d0.w)
dat_205eae:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205ed6
	andi.b #$7f,$2(a0)
loc_205ed6:
	move.l #$23d5a2,$4(a0)
	bsr.s sub_205e6e
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205f04
	move.w #$100,$1c(a0)
loc_205f04:
	lea (dat_23d58e).l,a1
	bsr.w sub_205b34
	jmp (sub_20392a).l
	tst.b $25(a0)
	beq.s loc_205f20
	jmp (sub_2039d6).l
loc_205f20:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f42(pc,d0.w),d0
	jsr dat_205f42(pc,d0.w)
	jmp (sub_20392a).l
dat_205f42:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205f70
	andi.b #$7f,$2(a0)
loc_205f70:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_205f96
	bsr.w sub_206002
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205ff8
loc_205f96:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206da0).l
	tst.w d1
	bpl.s loc_205ff4
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205fde
	bsr.w sub_206002
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_206028
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205fde:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205ff8
loc_205ff4:
	addq.w #$2,$c(a0)
loc_205ff8:
	lea (dat_2336bc).l,a1
	bra.w sub_205b34

sub_206002:
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

sub_206028:
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
	bra.s loc_205ff8
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205ff8
	.incbin 24676, 356
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2061d8(pc,d0.w),d0
	jmp dat_2061d8(pc,d0.w)
dat_2061d8:
	.incbin 25048, 188
dat_206294:
	.incbin 25236, 276
loc_2063a8:
	bclr.b #$7,($ff156b).l
	beq.s loc_2063f6
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2063f8(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2063cc:
	move.l (a1)+,(a2)+
	dbf d0,loc_2063cc
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2063f6:
	rts
dat_2063f8:
	.incbin 25592, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20642e(pc,d0.w),d0
	jsr dat_20642e(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_206428
	jsr (sub_20392a).l
loc_206428:
	jmp (loc_2079c0).l
dat_20642e:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23d3b6,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206510
	cmpi.b #$6,$24(a1)
	bcc.w loc_206510
	bsr.w sub_206574
	beq.w loc_206510
	tst.b $28(a0)
	bne.s loc_2064c2
	move.w $10(a1),d0
	bpl.s loc_206482
	neg.w d0
loc_206482:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206494
	move.w #$d00,d1
loc_206494:
	cmp.w d1,d0
	bcc.s loc_20649a
	move.w d1,d0
loc_20649a:
	tst.w $10(a1)
	bpl.s loc_2064a2
	neg.w d0
loc_2064a2:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2064f2
	neg.w $14(a1)
	bra.s loc_2064f2
loc_2064c2:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206512
	move.w $12(a1),d0
	bpl.s loc_2064d2
	neg.w d0
loc_2064d2:
	cmpi.w #$d00,d0
	bcc.s loc_2064dc
	move.w #$d00,d0
loc_2064dc:
	tst.w $12(a1)
	bpl.s loc_2064e4
	neg.w d0
loc_2064e4:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
loc_2064ec:
	bset.b #$1,$22(a1)
loc_2064f2:
	bset.b #$2,$22(a1)
	bne.s loc_206510
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206510:
	rts
loc_206512:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_20655e
	cmpi.b #$2,$28(a0)
	bne.s loc_20652e
	tst.w $12(a1)
	bpl.s loc_2064f2
	bra.s loc_206534
loc_20652e:
	tst.w $12(a1)
	bmi.s loc_2064f2
loc_206534:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206546
	btst.l #$2,d1
	beq.s loc_2064f2
	neg.w d0
loc_206546:
	cmpi.b #$2,$28(a0)
	beq.s loc_206554
	bset.b #$1,$22(a1)
loc_206554:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2064f2
loc_20655e:
	tst.w $10(a1)
	bmi.s loc_2064f2
	btst.l #$0,d1
	beq.w loc_2064f2
	move.w #$f600,d0
	bra.w loc_2064e4

sub_206574:
	tst.b ($ff1906).l
	bne.s loc_2065a8
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2065a8
	cmpi.w #$50,d0
	bcc.s loc_2065a8
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2065a8
	cmpi.w #$50,d0
	bcc.s loc_2065a8
	moveq #$1,d0
	rts
loc_2065a8:
	moveq #$0,d0
	rts

sub_2065ac:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2065b6
	bsr.s sub_2065b8
loc_2065b6:
	rts

sub_2065b8:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2008d4).l
	subi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_20669c
	cmpi.b #$80,d0
	beq.w loc_206622
	cmpi.b #$c0,d0
	beq.w loc_20665e
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_2066da
	bne.s loc_206620
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_2066da
loc_206620:
	rts
loc_206622:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_2066da
	bne.s loc_20665c
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_2066da
loc_20665c:
	rts
loc_20665e:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_2066da
	bne.s loc_20669a
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_2066da
loc_20669a:
	rts
loc_20669c:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_2066da
	bne.s loc_2066d8
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_2066da
loc_2066d8:
	rts

sub_2066da:
	jsr (sub_200daa).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20671e
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_206702
	add.b ($ff156a).l,d1
loc_206702:
	add.w d1,d1
	move.w dat_206722(pc,d1.w),d1
	lea dat_206722(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_206712:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_206796
	addq.w #$2,d1
	dbf d6,loc_206712
loc_20671e:
	moveq #$0,d0
	rts
dat_206722:
	.incbin 26402, 116
loc_206796:
	cmpi.b #$4,$24(a0)
	bne.s loc_2067a8
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2067a8:
	move.b #$0,($ff1950).l
	move.l d1,-(a7)
	move.w dat_2067ec(pc,d1.w),d0
	jsr dat_2067ec(pc,d0.w)
	move.l (a7)+,d1
	cmpi.w #$3,d1
	bcs.s loc_2067dc
	move.w #$be,d0
	cmpi.b #$4,d1
	beq.s loc_2067d6
	cmpi.b #$6,d1
	beq.s loc_2067d6
	move.w #$b5,d0
loc_2067d6:
	jsr (sub_202138).l
loc_2067dc:
	tst.b ($ff1950).l
	beq.s loc_2067e8
	moveq #$0,d0
	rts
loc_2067e8:
	moveq #$1,d0
	rts
dat_2067ec:
	.incbin 26604, 32
	andi.w #$fff0,d2
	tst.b d1
	bne.s loc_206818
	addi.w #$10,d2
loc_206818:
	andi.w #$fff0,d3
	btst.l #$b,d4
	bne.s loc_206826
	addi.w #$10,d3
loc_206826:
	move.w d3,d1
	movem.l d1-d2,-(a7)
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_2008d4).l
	jsr (sub_20063c).l
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
	jsr (sub_20798a).l
	bne.s loc_206888
	move.b #$29,$0(a1)
	move.w d5,$8(a1)
	move.w d4,$c(a1)
loc_206888:
	move.w #$0,d3
	jsr (sub_203266).l
	subi.w #$10,d5
	jsr (sub_203266).l
	subi.w #$10,d4
	jsr (sub_203266).l
	addi.w #$10,d5
	jsr (sub_203266).l
	move.w #$92,d0
	jsr (sub_205af4).l
	rts
	.incbin 26812, 478
loc_206a9a:
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
	bne.s loc_206b54
	move.b ($ff1593).l,($ff195b).l
loc_206b54:
	tst.b ($ff1522).l
	bpl.s loc_206b6a
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b6a:
	rts

sub_206b6c:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206a9a
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
	bne.s loc_206c26
	move.b ($ff1591).l,($ff195b).l
loc_206c26:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c48
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c48:
	tst.b ($ff1522).l
	bpl.s loc_206c5e
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c5e:
	rts

sub_206c60:
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
	bpl.s loc_206c9c
	move.b d1,d0
	bpl.s loc_206c96
	subq.b #$1,d0
loc_206c96:
	addi.b #$20,d0
	bra.s loc_206ca6
loc_206c9c:
	move.b d1,d0
	bpl.s loc_206ca2
	addq.b #$1,d0
loc_206ca2:
	addi.b #$1f,d0
loc_206ca6:
	andi.b #$c0,d0
	beq.w loc_206d76
	cmpi.b #$80,d0
	beq.w loc_206f12
	andi.b #$38,d1
	bne.s loc_206cbe
	addq.w #$8,d2
loc_206cbe:
	cmpi.b #$40,d0
	beq.w loc_206fe8
	bra.w loc_206e4a

sub_206cca:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206f70
	cmpi.b #$80,d0
	beq.w sub_206e9a
	cmpi.b #$c0,d0
	beq.w loc_206dda

sub_206cf2:
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
loc_206d56:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206d64
	move.b ($f768).w,d3
	exg d0,d1
loc_206d64:
	btst.l #$0,d3
	beq.s loc_206d6c
	move.b d2,d3
loc_206d6c:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206d76:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_200f92).l
	move.b #$0,d2
loc_206d92:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206d9e
	move.b d2,d3
loc_206d9e:
	rts

sub_206da0:
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
	beq.s loc_206dd8
	move.b #$0,d3
loc_206dd8:
	rts
loc_206dda:
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
	bra.w loc_206d56

sub_206e42:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e4a:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201102).l
	move.b #$c0,d2
	bra.w loc_206d92
loc_206e6a:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201102).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e98
	move.b #$c0,d3
loc_206e98:
	rts

sub_206e9a:
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
	bra.w loc_206d56

sub_206f0a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f12:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_200f92).l
	move.b #$80,d2
	bra.w loc_206d92
	.incbin 28470, 58
loc_206f70:
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
	bra.w loc_206d56

sub_206fe0:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206fe8:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201102).l
	move.b #$40,d2
	bra.w loc_206d92
dat_20700c:
	.incbin 28684, 48

sub_20703c:
	btst.b #$6,$2c(a0)
	bne.s loc_20708a
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_207068
	addi.w #$c,d3
	moveq #$a,d5
loc_207068:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_207076:
	tst.b $1(a1)
	bpl.s loc_207082
	move.b $20(a1),d0
	bne.s loc_20708e
loc_207082:
	lea $40(a1),a1
	dbf d6,loc_207076
loc_20708a:
	moveq #$0,d0
	rts
loc_20708e:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207414).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070b6
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070bc
	bra.w loc_207082
loc_2070b6:
	cmp.w d4,d0
	bhi.w loc_207082
loc_2070bc:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2070d4
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2070da
	bra.w loc_207082
loc_2070d4:
	cmp.w d5,d0
	bhi.w loc_207082
loc_2070da:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_20714e
	cmpi.b #$c0,d1
	beq.w loc_20732e
	tst.b d1
	bmi.w sub_207218
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207112
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207110
	addq.b #$2,$24(a1)
loc_207110:
	rts
loc_207112:
	tst.w $12(a0)
	bpl.s loc_20713c
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_20714c
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_20714c
	addq.b #$4,$25(a1)
	rts
loc_20713c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20714c
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_20714c:
	rts

sub_20714e:
	tst.b ($ff1521).l
	bne.s loc_207168
	tst.b ($ff151f).l
	bne.s loc_207168
	cmpi.b #$2,$1c(a0)
	bne.w sub_207218
loc_207168:
	tst.b $21(a1)
	beq.s loc_207192
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_207190
	bset.b #$7,$22(a1)
loc_207190:
	rts
loc_207192:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071aa
	moveq #$6,d0
loc_2071aa:
	move.w d0,$3e(a1)
	move.w dat_20720a(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2071c4
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2071c4:
	bsr.w sub_20a58e
	move.w #$96,d0
	jsr (sub_202138).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_2071fa
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207202
	neg.w $12(a0)
	rts
loc_2071fa:
	addi.w #$100,$12(a0)
	rts
loc_207202:
	subi.w #$100,$12(a0)
	rts
dat_20720a:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207218:
	tst.b ($ff1521).l
	bne.s loc_207228
	tst.b ($ff151f).l
	beq.s loc_20722c
loc_207228:
	moveq #$ffffffff,d0
	rts
loc_20722c:
	nop
	tst.w $30(a0)
	bne.s loc_207228
	movea.l a1,a2

sub_207236:
	tst.b ($ff151e).l
	bne.s loc_207262
	tst.w ($ff1512).l
	beq.w loc_2072cc
	jsr (sub_20798a).l
	bne.s loc_207262
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207262:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_207278
	move.b #$0,($ff156f).l
loc_207278:
	move.b #$4,$24(a0)
	bsr.w sub_20518a
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072a8
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072a8:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072b6
	neg.w $10(a0)
loc_2072b6:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2072cc:
	tst.w ($ff1588).l
	bne.w loc_207262

sub_2072d6:
	tst.w ($ff1906).l
	bne.s loc_20732a
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20518a
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
loc_20732a:
	moveq #$ffffffff,d0
	rts
loc_20732e:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$17,d1
	beq.w loc_2073be
	cmpi.b #$1f,d1
	beq.w loc_2073be
	cmpi.b #$23,d1
	beq.w loc_2073be
	cmpi.b #$27,d1
	beq.w loc_2073be
	cmpi.b #$3a,d1
	beq.w loc_207406
	cmpi.b #$3b,d1
	beq.w loc_207406
	tst.b ($f7aa).w
	beq.w loc_2073bc
	cmpi.b #$1,($f7aa).w
	beq.s loc_207386
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073a8
	cmpi.b #$5,($f7aa).w
	beq.s loc_2073b6
loc_207386:
	cmpi.b #$3c,d1
	blt.s loc_2073bc
	cmpi.b #$3f,d1
	bgt.s loc_2073bc
	bsr.w sub_20714e
	tst.b $20(a1)
	bne.s loc_2073a0
	addq.b #$3,$21(a1)
loc_2073a0:
	clr.b $20(a1)
	bra.w loc_2073be
loc_2073a8:
	cmpi.b #$3f,d1
	beq.s loc_2073ca
	cmpi.b #$3e,d1
	beq.s loc_2073c4
	bra.s loc_2073bc
loc_2073b6:
	cmpi.b #$3d,d1
	beq.s loc_2073c4
loc_2073bc:
	rts
loc_2073be:
	addq.b #$1,$21(a1)
	rts
loc_2073c4:
	bsr.w sub_207218
	bra.s loc_2073be
loc_2073ca:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207404
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207404
	neg.w $10(a0)
loc_207404:
	rts
loc_207406:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207412
	addq.b #$1,$21(a1)
loc_207412:
	rts
dat_207414:
	.incbin 29716, 126
loc_207492:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2074a8
	move.l #$4000,(dat_207622).l
	bra.s loc_2074c8
loc_2074a8:
	addi.l #$2000,(dat_207622).l
	cmpi.l #$80000,(dat_207622).l
	bls.s loc_2074c8
	move.l #$80000,(dat_207622).l
loc_2074c8:
	move.l (dat_207622).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2074da
	sub.l d0,$c(a0)
loc_2074da:
	btst.b #$1,($f604).w
	beq.s loc_2074e6
	add.l d0,$c(a0)
loc_2074e6:
	btst.b #$2,($f604).w
	beq.s loc_2074f2
	sub.l d0,$8(a0)
loc_2074f2:
	btst.b #$3,($f604).w
	beq.s loc_2074fe
	add.l d0,$8(a0)
loc_2074fe:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200daa).l
	move.w (a1),($ff194e).l
	lea (dat_207626).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207540
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20753a
	move.b #$0,d1
loc_20753a:
	move.b d1,($ff1904).l
loc_207540:
	btst.b #$7,($f605).w
	beq.s loc_207560
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20755a
	add.b (a2),d1
loc_20755a:
	move.b d1,($ff1904).l
loc_207560:
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
	beq.s loc_2075ec
	bsr.w sub_20798a
	bne.s loc_2075ec
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
loc_2075ec:
	btst.b #$4,($f605).w
	beq.s loc_20761c
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20761c:
	jmp (sub_20392a).l
dat_207622:
	dc.b $00,$00,$40,$00
dat_207626:
	.incbin 30246, 338

sub_207778:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207786:
	clr.l (a2)+
	dbf d0,loc_207786
	rts

sub_20778e:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20779c(pc,d0.w),d0
	jmp dat_20779c(pc,d0.w)
dat_20779c:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207a3c).l,a0
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
	bcc.s loc_2077da
	moveq #$0,d6
loc_2077da:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2077e2:
	cmp.w (a0),d6
	bls.s loc_2077f4
	tst.b $4(a0)
	bpl.s loc_2077f0
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077f0:
	addq.w #$8,a0
	bra.s loc_2077e2
loc_2077f4:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207814
loc_207802:
	cmp.w (a0),d6
	bls.s loc_207814
	tst.b $4(a0)
	bpl.s loc_207810
	addq.b #$1,$1(a2)
loc_207810:
	addq.w #$8,a0
	bra.s loc_207802
loc_207814:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2078fe
	bge.s loc_2078a4
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207880
loc_20784e:
	cmp.w -$8(a0),d6
	bge.s loc_207880
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207864
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207864:
	bsr.w sub_207922
	bne.s loc_20786e
	subq.w #$8,a0
	bra.s loc_20784e
loc_20786e:
	tst.b $4(a0)
	bpl.s loc_20787e
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20787e:
	addq.w #$8,a0
loc_207880:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20788c:
	cmp.w -$8(a0),d6
	bgt.s loc_20789e
	tst.b -$4(a0)
	bpl.s loc_20789a
	subq.b #$1,(a2)
loc_20789a:
	subq.w #$8,a0
	bra.s loc_20788c
loc_20789e:
	move.l a0,($f770).w
	rts
loc_2078a4:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2078b8:
	cmp.w (a0),d6
	bls.s loc_2078da
	tst.b $4(a0)
	bpl.s loc_2078c6
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2078c6:
	bsr.w sub_207922
	beq.s loc_2078b8
	tst.b $4(a0)
	bpl.s loc_2078da
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2078da:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2078fa
loc_2078e8:
	cmp.w (a0),d6
	bls.s loc_2078fa
	tst.b $4(a0)
	bpl.s loc_2078f6
	addq.b #$1,$1(a2)
loc_2078f6:
	addq.w #$8,a0
	bra.s loc_2078e8
loc_2078fa:
	move.l a0,($f774).w
loc_2078fe:
	rts

sub_207900:
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

sub_207922:
	bsr.s sub_207900
	beq.s loc_207934
	tst.b $4(a0)
	bpl.s loc_20793a
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_20793a
loc_207934:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_20793a:
	bsr.w sub_20798a
	bne.s loc_207988
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
	bpl.s loc_20796a
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20796a:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20797c
	nop
	nop
	nop
	nop
loc_20797c:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207988:
	rts

sub_20798a:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207992:
	tst.b (a1)
	beq.s loc_20799e
	lea $40(a1),a1
	dbf d0,loc_207992
loc_20799e:
	rts

sub_2079a0:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2079be
loc_2079b2:
	tst.b (a1)
	beq.s loc_2079be
	lea $40(a1),a1
	dbf d0,loc_2079b2
loc_2079be:
	rts
loc_2079c0:
	move.w $8(a0),d0
loc_2079c4:
	tst.b $1(a0)
	bmi.s loc_207a2e
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207a2e
loc_2079e2:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207a24
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207a1c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207a14
	moveq #$0,d1
	bra.s loc_207a1c
loc_207a14:
	cmpi.w #$3,d1
	bcs.s loc_207a1c
	moveq #$2,d1
loc_207a1c:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207a24:
	jsr (sub_2039d6).l
	moveq #$1,d0
	rts
loc_207a2e:
	btst.b #$7,($ff152e).l
	bne.s loc_2079e2
	moveq #$0,d0
	rts
dat_207a3c:
	.incbin 31292, 3658

sub_208886:
	btst.b #$3,$22(a0)
	beq.s loc_2088f6
	btst.b #$3,$22(a1)
	beq.s loc_2088f6
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2088f6
	tst.b $2a(a1)
	beq.s loc_2088b8
	move.w #$ab,d0
	jsr (sub_202138).l
loc_2088b8:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2088e4
	cmpi.b #$17,$1c(a1)
	beq.s loc_2088e4
	bclr.b #$0,$2c(a1)
loc_2088e4:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2088f6
	bclr.b #$1,$22(a1)
loc_2088f6:
	rts

sub_2088f8:
	cmpi.b #$4,$24(a1)
	bne.s loc_20890a
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_20890a:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_20896a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20892c
	bclr.b #$3,$22(a0)
	bra.w sub_208886
loc_20892c:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_20896a
	tst.b ($ff195b).l
	beq.s loc_208954
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208964
loc_208954:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208964:
	move.b #$0,$1c(a1)
loc_20896a:
	bset.b #$3,$22(a1)
	beq.s loc_20898c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2089c4
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_20898c:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2089b8
	cmpi.b #$2,$24(a0)
	beq.s loc_2089be
loc_2089b8:
	move.w $10(a1),$14(a1)
loc_2089be:
	bclr.b #$1,$22(a1)
loc_2089c4:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_2089ce:
	move.b #$1,$25(a0)

sub_2089d4:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208c88
	btst.b #$6,$2c(a1)
	bne.w loc_208c88
	cmpi.b #$6,$24(a1)
	bcc.w loc_208c88
	tst.b $0(a1)
	beq.w loc_208c88
	tst.b $1(a0)
	bpl.w loc_208c88
	tst.b ($ff1906).l
	bne.w loc_208c88
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208c88
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208c88
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208a42
	btst.b #$3,$22(a0)
	bne.s loc_208a54
	bra.w loc_208c88
loc_208a42:
	cmpi.b #$1,$25(a0)
	bne.s loc_208a54
	tst.w $12(a1)
	beq.s loc_208a54
	bmi.w loc_208c88
loc_208a54:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208c88
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208c88
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208a8a
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208a8a:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208a98
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208a98:
	cmp.w d4,d5
	bcs.w loc_208b2c
	cmpi.b #$1,$25(a0)
	beq.w loc_208c88
	cmpi.b #$a,$0(a0)
	bne.s loc_208aba
	btst.b #$1,$22(a1)
	bne.w loc_208c88
loc_208aba:
	cmpi.b #$4,d5
	bls.w loc_208c88
	bsr.w sub_208cd8
	move.l d0,-(a7)
	bsr.w sub_208886
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208ae4
	tst.w $10(a1)
	beq.s loc_208b14
	bpl.s loc_208aec
	bra.s loc_208b14
loc_208ae4:
	tst.w $10(a1)
	beq.s loc_208b14
	bpl.s loc_208b14
loc_208aec:
	bsr.w sub_208c98
	btst.b #$1,$22(a1)
	bne.s loc_208b0a
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208b0a:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208b14:
	bsr.w sub_208d4e
	bsr.w sub_208c98
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208b2c:
	cmpi.b #$19,$0(a0)
	bne.s loc_208b3e
	btst.b #$2,$22(a1)
	bne.w loc_208c88
loc_208b3e:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208b54
	bmi.w loc_208c24
loc_208b54:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208b66
	tst.w $12(a1)
	beq.s loc_208b66
	bmi.w loc_208c88
loc_208b66:
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
	beq.s loc_208bb2
	bpl.s loc_208b92
	neg.b d0
loc_208b92:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c60).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208bb2
	tst.w $10(a0)
	bpl.s loc_208bae
	neg.w d1
loc_208bae:
	add.w d1,$8(a1)
loc_208bb2:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208c1c
	tst.w $12(a0)
	bmi.s loc_208bf0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206cf2).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208bf0
	add.w d1,$c(a1)
	bra.w loc_208c88
loc_208bf0:
	tst.w $12(a0)
	bpl.s loc_208c1c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f0a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208c1c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d6).l
	movem.l (a7)+,a0-a1
	bra.s loc_208c88
loc_208c1c:
	bsr.w sub_2088f8
	moveq #$1,d0
	rts
loc_208c24:
	cmpi.b #$1,$25(a0)
	beq.s loc_208c88
	cmpi.b #$9,$0(a0)
	beq.s loc_208c88
	cmpi.b #$a,$0(a0)
	bne.s loc_208c4e
	cmpi.b #$2,$25(a0)
	beq.s loc_208c6e
	btst.b #$1,$1(a0)
	bne.s loc_208c6e
	bra.s loc_208c88
loc_208c4e:
	btst.b #$1,$22(a1)
	bne.s loc_208c6e
	tst.w $12(a0)
	beq.s loc_208c6e
	bmi.s loc_208c6e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d6).l
	movem.l (a7)+,a0-a1
loc_208c6e:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208d4e
	bsr.w sub_208886
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208c88:
	bsr.w sub_208d4e
	bsr.w sub_208886
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208c98:
	tst.w $10(a0)
	beq.s loc_208cd6
	cmpi.b #$a,$0(a0)
	beq.s loc_208cd6
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208cb2
	neg.b d0
loc_208cb2:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c60).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208cd6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d6).l
	movem.l (a7)+,a0-a1
loc_208cd6:
	rts

sub_208cd8:
	cmpi.b #$a,$0(a0)
	bne.s loc_208ce8
	move.b #$0,$20(a1)
	rts
loc_208ce8:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208d3c
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208d4c
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208d0a
	tst.w $10(a2)
	beq.s loc_208d4c
loc_208d0a:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208d1c
	cmp.w $8(a2),d1
	bcs.s loc_208d4c
	bra.s loc_208d22
loc_208d1c:
	cmp.w $8(a2),d1
	bcc.s loc_208d4c
loc_208d22:
	cmpi.b #$15,$0(a0)
	beq.s loc_208d4c
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d6).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208d3c:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208d4c:
	rts

sub_208d4e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208d68
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208d68
	move.b #$0,$20(a1)
loc_208d68:
	rts
	.incbin 36202, 374
loc_208ee0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208eee(pc,d0.w),d0
	jmp dat_208eee(pc,d0.w)
dat_208eee:
	.incbin 36590, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208ee0
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208f44
	tst.b $1(a0)
	bpl.s loc_208f4c
loc_208f44:
	move.w dat_208f9e(pc,d0.w),d1
	jsr dat_208f9e(pc,d1.w)
loc_208f4c:
	bsr.w sub_20392a
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208f7e
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208f7e:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2039d6
	rts
dat_208f9e:
	.incbin 36766, 26
	addq.b #$2,$24(a0)
	move.l #$209320,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20900e
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209326,$4(a0)
	bra.s loc_209050
loc_20900e:
	btst.l #$3,d0
	beq.s loc_20903c
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209370,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bba6).l
	move.l (a7)+,d0
	bra.s loc_209050
loc_20903c:
	btst.b #$1,$1(a0)
	beq.s loc_209050
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209050:
	btst.l #$1,d0
	beq.s loc_20905c
	bset.b #$5,$2(a0)
loc_20905c:
	andi.w #$2,d0
	move.w dat_209068(pc,d0.w),$30(a0)
	rts
dat_209068:
	dc.b $f0,$00,$f6,$00

sub_20906c:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2089d4).l
	tst.b $1(a0)
	bpl.s loc_209088
	lea ($d000).w,a1
	bsr.s sub_20906c
	bne.s loc_20908a
loc_209088:
	rts
loc_20908a:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202138).l
	lea (dat_209312).l,a1
	bra.w sub_205b34
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_2090de:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2089d4).l
	tst.b $1(a0)
	bpl.s loc_209100
	lea ($d000).w,a1
	bsr.s sub_2090de
	btst.b #$5,$22(a0)
	bne.s loc_209102
loc_209100:
	rts
loc_209102:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209130
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209130:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_20914a
	move.b #$0,$1c(a1)
loc_20914a:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_202138).l
	.incbin 37220, 430
dat_209312:
	.incbin 37650, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20940c(pc,d0.w),d1
	jmp dat_20940c(pc,d1.w)
dat_20940c:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209416:
	.incbin 37910, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20946e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209466
	moveq #$0,d1
	bra.s loc_20946e
loc_209466:
	cmpi.w #$3,d1
	bcs.s loc_20946e
	moveq #$2,d1
loc_20946e:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20948a
	moveq #$6,d1
loc_20948a:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209416).l,a1
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
	beq.s loc_2094da
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2094d2
	moveq #$0,d0
	bra.s loc_2094da
loc_2094d2:
	cmpi.w #$3,d0
	bcs.s loc_2094da
	moveq #$2,d0
loc_2094da:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2095a8
	dbf d0,loc_2094da
	bclr.b #$7,(a2)
	bra.s loc_209530
loc_2094ec:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209518
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209510
	moveq #$0,d0
	bra.s loc_209518
loc_209510:
	cmpi.w #$3,d0
	bcs.s loc_209518
	moveq #$2,d0
loc_209518:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2095a8
	dbf d0,loc_209518
	bclr.b #$7,(a2)
	bsr.w sub_2079a0
	bne.w loc_2095b4
loc_209530:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20987a,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209586
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209586
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209586:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2095a8:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2094ec
loc_2095b4:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2095da
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2095d2
	moveq #$0,d0
	bra.s loc_2095da
loc_2095d2:
	cmpi.w #$3,d0
	bcs.s loc_2095da
	moveq #$2,d0
loc_2095da:
	lea $1(a2),a3
loc_2095de:
	btst.b #$0,-(a3)
	bne.w sub_2039d6
	dbf d0,loc_2095de
	tst.b $1(a0)
	bmi.s loc_20960e
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209688
loc_20960e:
	tst.w ($ff190e).l
	bne.s loc_20961e
	move.b ($ff1913).l,$1a(a0)
loc_20961e:
	bra.w sub_20392a
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20968c
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20966e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209666
	moveq #$0,d1
	bra.s loc_20966e
loc_209666:
	cmpi.w #$3,d1
	bcs.s loc_20966e
	moveq #$2,d1
loc_20966e:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209872).l,a1
	bsr.w sub_205b34
	bra.w sub_20392a
loc_209688:
	bra.w sub_2039d6

sub_20968c:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2096dc
	bset.b #$1,($ff150d).l
	beq.s loc_2096c6
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2096dc
	bset.b #$2,($ff150d).l
	bne.s loc_2096dc
loc_2096c6:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205af4).l
loc_2096dc:
	jmp (sub_202138).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2096f0(pc,d0.w),d1
	jmp dat_2096f0(pc,d1.w)
dat_2096f0:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_20970c
	move.w d0,d5
loc_20970c:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_20971c
loc_209714:
	bsr.w sub_20798a
	bne.w loc_2097d2
loc_20971c:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20987a,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20977a
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20977a
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20977a:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_2097c2
	move.w d4,d0
	jsr (sub_20063c).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_2097c2
	subi.w #$80,d4
	bcc.s loc_2097c2
	move.w #$288,d4
loc_2097c2:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209714
loc_2097d2:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202138).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2038d4
	addi.w #$18,$12(a0)
	bmi.s loc_209832
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209832
	jsr (sub_206da0).l
	tst.w d1
	bpl.s loc_209832
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209832:
	tst.b ($ff1916).l
	beq.s loc_20986e
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20986e
	bra.w sub_20392a
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20968c
	lea (dat_209872).l,a1
	bsr.w sub_205b34
	bra.w sub_20392a
loc_20986e:
	bra.w sub_2039d6
dat_209872:
	.incbin 39026, 852
loc_209bc6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209bf4(pc,d0.w),d0
	jsr dat_209bf4(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209bf2
	cmpi.w #$5a,($f786).w
	bcs.s loc_209bec
	btst.b #$0,($ff1505).l
	bne.s loc_209bf2
loc_209bec:
	jmp (sub_20392a).l
loc_209bf2:
	rts
dat_209bf4:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a1ce,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209c28
	move.b #$13,$1a(a0)
loc_209c28:
	rts
loc_209c2a:
	tst.b ($ff0f01).l
	beq.s loc_209c38
	jmp (sub_2039d6).l
loc_209c38:
	cmpi.b #$a,$28(a0)
	beq.w loc_209bc6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209c5c(pc,d0.w),d0
	jsr dat_209c5c(pc,d0.w)
	jsr (sub_20392a).l
	jmp (loc_2079c0).l
dat_209c5c:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a1ce,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209caa
	tst.b $29(a0)
	bne.s loc_209caa
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209caa:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_209d76
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209cd2
	addq.b #$2,$1a(a0)
loc_209cd2:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209ce6
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209ce6:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_209d4c
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209d18
	tst.b $29(a0)
	beq.s loc_209d10
	tst.b ($ff1956).l
	beq.s loc_209d4c
	bra.s loc_209d18
loc_209d10:
	tst.b ($ff1956).l
	bne.s loc_209d4c
loc_209d18:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_209d76
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209d46
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209d46:
	jsr (sub_205af4).l
loc_209d4c:
	rts
	.incbin 40270, 40

sub_209d76:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209dae
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209da6
	moveq #$0,d1
	bra.s loc_209dae
loc_209da6:
	cmpi.w #$3,d1
	bcs.s loc_209dae
	moveq #$2,d1
loc_209dae:
	add.w d1,d0
	rts

sub_209db2:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209dd4
	tst.b ($ff1956).l
	beq.s loc_209dcc
	tst.b $29(a0)
	bne.s loc_209dd4
	rts
loc_209dcc:
	tst.b $29(a0)
	beq.s loc_209dd4
	rts
loc_209dd4:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2089d4).l
	tst.b $28(a0)
	bne.s loc_209df6
	tst.b ($ff0f01).l
	beq.s loc_209df6
	jmp (loc_2079c0).l
loc_209df6:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209c2a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209e0e(pc,d0.w),d1
	jmp dat_209e0e(pc,d1.w)
dat_209e0e:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a1ce,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209e58
	tst.b $29(a0)
	bne.s loc_209e58
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209e58:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209d76
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209e84
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209e84:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209ede
	move.b $25(a0),d0
	beq.s loc_209ebe
	bsr.w sub_203872
	jsr (sub_206da0).l
	tst.w d1
	bpl.w loc_209ecc
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209ecc
loc_209ebe:
	tst.b $1(a0)
	bpl.s loc_209ecc
	lea ($d000).w,a1
	bsr.w sub_209db2
loc_209ecc:
	tst.w ($ff190e).l
	bne.s loc_209ede
	lea (dat_20a146).l,a1
	bsr.w sub_205b34
loc_209ede:
	bsr.w sub_20392a
	jmp (loc_2079c0).l
	.incbin 40680, 606
dat_20a146:
	.incbin 41286, 586
loc_20a390:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a3a4(pc,d0.w),d0
	jsr dat_20a3a4(pc,d0.w)
	jmp (sub_20392a).l
dat_20a3a4:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a3e4,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a3de
	jmp (sub_2039d6).l
loc_20a3de:
	subq.w #$2,$c(a0)
	rts
	.incbin 41956, 82
	tst.b $28(a0)
	bmi.w loc_20a390
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a44c(pc,d0.w),d0
	jmp dat_20a44c(pc,d0.w)
dat_20a44c:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a4e6,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a47c
	move.b #$3,$1a(a0)
	bra.s loc_20a49c
loc_20a47c:
	tst.w ($ff1588).l
	beq.s loc_20a48a
	move.b #$2,$1a(a0)
loc_20a48a:
	tst.b $28(a0)
	beq.s loc_20a49c
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a49c:
	tst.b $28(a0)
	bne.s loc_20a4e0
	tst.b $29(a0)
	beq.s loc_20a4cc
	tst.w ($ff1512).l
	beq.s loc_20a4b8
	bclr.b #$5,$2(a0)
	bra.s loc_20a4e0
loc_20a4b8:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a4e0
	eori.b #$20,$2(a0)
	bra.s loc_20a4e0
loc_20a4cc:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a4e0
	move.b #$2,$1a(a0)
loc_20a4e0:
	jmp (sub_20392a).l
	.incbin 42214, 168

sub_20a58e:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a5aa
	move.l d1,(a3)
loc_20a5aa:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a5d4
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205af4).l
loc_20a5d4:
	rts
loc_20a5d6:
	tst.w ($ff1588).l
	beq.s loc_20a62c
	bsr.w sub_20a828
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
	lea (dat_20a988).l,a2
	moveq #$2,d6
	bsr.w sub_20a9e0
	bra.w loc_20a686
loc_20a62c:
	tst.b ($ff1511).l
	beq.s loc_20a650
	bpl.s loc_20a63a
	bsr.w sub_20a7d2
loc_20a63a:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a8c2
loc_20a650:
	tst.b ($ff150f).l
	beq.s loc_20a686
	bpl.s loc_20a65e
	bsr.w sub_20a7be
loc_20a65e:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a682
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a682:
	bsr.w sub_20a8b8
loc_20a686:
	tst.w ($ff1588).l
	bne.w loc_20a732
	tst.b ($ff1510).l
	beq.w loc_20a732
	tst.w ($f63a).w
	bne.w loc_20a732
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a790
	tst.b ($f7cc).w
	bne.s loc_20a6dc
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a6dc
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a6dc
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a6dc
	move.b #$9,(a1)
loc_20a6dc:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a9ce
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a9d8
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a72e
	move.w #$63,d1
loc_20a72e:
	bsr.w sub_20a9d8
loc_20a732:
	tst.b ($ff150e).l
	beq.s loc_20a744
	clr.b ($ff150e).l
	bsr.w sub_20a9ae
loc_20a744:
	tst.b ($f7d6).w
	beq.s loc_20a78e
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a764
	move.l #$6d400001,d0
loc_20a764:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a846
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a784
	move.l #$6e800001,d0
loc_20a784:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a846
loc_20a78e:
	rts
loc_20a790:
	btst.b #$7,($ff152e).l
	bne.s loc_20a7bc
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2072d6
	move.b #$1,($ff150c).l
loc_20a7bc:
	rts

sub_20a7be:
	move.l #$73600002,($c00004).l
	lea dat_20a824(pc),a2
	move.w #$2,d2
	bra.s loc_20a7ee

sub_20a7d2:
	lea ($c00000).l,a6
	bsr.w sub_20a9ae
	move.l #$70600002,($c00004).l
	lea dat_20a81c(pc),a2
	move.w #$6,d2
loc_20a7ee:
	lea (dat_2330bc).l,a1
loc_20a7f4:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a810
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a804:
	move.l (a3)+,(a6)
	dbf d1,loc_20a804
loc_20a80a:
	dbf d2,loc_20a7f4
	rts
loc_20a810:
	move.l #$0,(a6)
	dbf d1,loc_20a810
	bra.s loc_20a80a
dat_20a81c:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a824:
	dc.b $ff,$ff,$00,$00

sub_20a828:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a9a4
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a9a4

sub_20a846:
	lea (dat_20a980).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20a856:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a85a:
	sub.l d3,d1
	bcs.s loc_20a862
	addq.w #$1,d2
	bra.s loc_20a85a
loc_20a862:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a86c
	move.w #$1,d4
loc_20a86c:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a878
	tst.w d6
	bne.s loc_20a8aa
loc_20a878:
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
loc_20a89e:
	addi.l #$400000,d0
	dbf d6,loc_20a856
	rts
loc_20a8aa:
	moveq #$f,d5
loc_20a8ac:
	move.l #$0,(a6)
	dbf d5,loc_20a8ac
	bra.s loc_20a89e

sub_20a8b8:
	lea (dat_20a988).l,a2
	moveq #$2,d6
	bra.s loc_20a8ca

sub_20a8c2:
	lea (dat_20a97c).l,a2
	moveq #$5,d6
loc_20a8ca:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20a8d2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a8d6:
	sub.l d3,d1
	bcs.s loc_20a8de
	addq.w #$1,d2
	bra.s loc_20a8d6
loc_20a8de:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a8e8
	move.w #$1,d4
loc_20a8e8:
	tst.w d4
	beq.s loc_20a916
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
loc_20a916:
	addi.l #$400000,d0
	dbf d6,loc_20a8d2
	rts
	.incbin 43298, 90
dat_20a97c:
	dc.b $00,$01,$86,$a0
dat_20a980:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a988:
	dc.b $00,$00,$00,$64
dat_20a98c:
	dc.b $00,$00,$00,$0a
dat_20a990:
	dc.b $00,$00,$00,$01
dat_20a994:
	.incbin 43412, 16

sub_20a9a4:
	moveq #$3,d6
	lea (dat_20a994).l,a2
	bra.s sub_20a9e0

sub_20a9ae:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a9c4
	moveq #$9,d1
loc_20a9c4:
	lea (dat_20a990).l,a2
	moveq #$0,d6
	bra.s sub_20a9e0

sub_20a9ce:
	lea (dat_20a990).l,a2
	moveq #$0,d6
	bra.s sub_20a9e0

sub_20a9d8:
	lea (dat_20a98c).l,a2
	moveq #$1,d6

sub_20a9e0:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20a9e8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a9ec:
	sub.l d3,d1
	bcs.s loc_20a9f4
	addq.w #$1,d2
	bra.s loc_20a9ec
loc_20a9f4:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a9fe
	move.w #$1,d4
loc_20a9fe:
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
	dbf d6,loc_20a9e8
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa42(pc,d0.w),d1
	jmp dat_20aa42(pc,d1.w)
dat_20aa42:
	dc.b $00,$04,$00,$7e
	addq.b #$2,$24(a0)
	move.l #$20ad40,$4(a0)
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
	beq.s loc_20aa98
	addi.w #$40,d0
loc_20aa98:
	btst.l #$0,d6
	beq.s loc_20aaa2
	addi.w #$20,d0
loc_20aaa2:
	move.w d0,$30(a0)
	lsr.w #$1,d0
	move.w d0,$2e(a0)
	beq.s loc_20aac0
	move.l #$10000,$2a(a0)
	btst.l #$6,d6
	bne.s loc_20aac0
	neg.l $2a(a0)
loc_20aac0:
	move.l $2a(a0),d0
	beq.s loc_20aae8
	lea $8(a0),a1
	tst.w $28(a0)
	bmi.s loc_20aad4
	lea $c(a0),a1
loc_20aad4:
	add.l d0,(a1)
	addi.w #$ffff,$2e(a0)
	bne.s loc_20aae8
	move.w $30(a0),$2e(a0)
	neg.l $2a(a0)
loc_20aae8:
	tst.b $21(a0)
	beq.w loc_20ab84
	tst.w $34(a0)
	beq.s loc_20ab06
	subq.w #$1,$34(a0)
	moveq #$a,d0
	bsr.w sub_20a58e
	moveq #$0,d1
	bsr.w sub_205e7c
loc_20ab06:
	tst.b $1(a0)
	bpl.s loc_20ab16
	move.w #$7f,d0
	jsr (sub_205af4).l
loc_20ab16:
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
	beq.s loc_20ab84
	cmpi.b #$8a,$2(a2,d0.w)
	bcc.s loc_20ab84
	addq.b #$1,$2(a2,d0.w)
loc_20ab84:
	lea (dat_20ad30).l,a1
	bsr.w sub_205b34
	jsr (sub_20392a).l
	move.w $32(a0),d0
	jmp (loc_2079c4).l
	.incbin 43934, 402
dat_20ad30:
	.incbin 44336, 142
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20addc(pc,d0.w),d0
	jsr dat_20addc(pc,d0.w)
	jsr (sub_20392a).l
	move.w $3e(a0),d0
	jmp (loc_2079c4).l
dat_20addc:
	dc.b $00,$04,$00,$6e
	move.w $8(a0),$3e(a0)
	addq.b #$2,$24(a0)
	move.l #$20af02,$4(a0)
	move.w #$435e,$2(a0)
	move.b #$4,$1(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	move.b #$1,$18(a0)
	move.b #$e7,$20(a0)
	move.w #$c0,$30(a0)
	move.w #$60,$2e(a0)
	btst.b #$7,$28(a0)
	bne.s loc_20ae36
	move.w #$a0,$30(a0)
	move.w #$50,$2e(a0)
loc_20ae36:
	move.l #$10000,$2a(a0)
	btst.b #$6,$28(a0)
	bne.s loc_20ae4a
	neg.l $2a(a0)
loc_20ae4a:
	tst.b $21(a0)
	beq.w loc_20aeda
	tst.b $1(a0)
	bpl.s loc_20ae62
	move.w #$b5,d0
	jsr (sub_202138).l
loc_20ae62:
	lea ($d000).w,a1
	clr.b $21(a0)
	move.w $8(a1),d5
	move.w $c(a1),d6
	sub.w $8(a0),d5
	sub.w $c(a0),d6
	move.w d6,d0
	subi.w #$fff8,d0
	subi.w #$10,d0
	bcc.s loc_20ae90
	move.w #$0,$10(a1)
	bra.w loc_20aeda
loc_20ae90:
	move.w d5,d0
	subi.w #$ffe8,d0
	subi.w #$30,d0
	bcc.s loc_20aeac
	move.w #$700,$12(a1)
	tst.w d6
	bpl.s loc_20aeaa
	neg.w $12(a1)
loc_20aeaa:
	bra.s loc_20aec8
loc_20aeac:
	move.w #$4f3,$10(a1)
	tst.w d5
	bpl.s loc_20aeba
	neg.w $10(a1)
loc_20aeba:
	move.w #$4f3,$12(a1)
	tst.w d6
	bpl.s loc_20aec8
	neg.w $12(a1)
loc_20aec8:
	bset.b #$1,$22(a1)
	bclr.b #$4,$22(a1)
	bclr.b #$5,$22(a1)
loc_20aeda:
	lea $8(a0),a1
	tst.w $28(a0)
	bmi.s loc_20aee8
	lea $c(a0),a1
loc_20aee8:
	move.l $2a(a0),d0
	add.l d0,(a1)
	addi.w #$ffff,$2e(a0)
	bne.s loc_20af00
	move.w $30(a0),$2e(a0)
	neg.l $2a(a0)
loc_20af00:
	rts
	.incbin 44802, 34
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20af38(pc,d0.w),d0
	jsr dat_20af38(pc,d0.w)
	jmp (sub_20392a).l
dat_20af38:
	dc.b $00,$06,$00,$52,$00,$5c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$638b,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20af72
	move.w #$642a,d0
loc_20af72:
	move.w d0,$2(a0)
	move.l #$20afa4,$4(a0)
	moveq #$a,d0
	bsr.w sub_20a58e
	moveq #$0,d1
	bsr.w sub_205e7c
	lea dat_20af9a(pc),a1
	jmp (sub_205b34).l
	jmp (sub_2039d6).l
dat_20af9a:
	.incbin 44954, 36
	move.b $28(a0),d0
	subq.b #$1,d0
	bmi.s loc_20afca
	bra.w loc_20b1e6
loc_20afca:
	jsr (sub_20e520).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20afea(pc,d0.w),d0
	jsr dat_20afea(pc,d0.w)
	jsr (sub_20392a).l
	jmp (loc_2079c0).l
dat_20afea:
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
	lea dat_20b146(pc),a1
	tst.b $28(a0)
	bmi.s loc_20b034
	lea dat_20b188(pc),a1
	st $3f(a0)
loc_20b034:
	move.l a1,$4(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b04a
	addq.b #$2,$24(a0)
	move.w #$3d,$2a(a0)
loc_20b04a:
	rts
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b068
	move.b #$25,$20(a0)
	addq.b #$2,$24(a0)
	addq.b #$1,$1c(a0)
	move.w #$33,$2a(a0)
loc_20b068:
	lea (dat_20b132).l,a1
	jsr (sub_205b34).l
	jmp (sub_20392a).l
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b0d8
	move.b #$26,$20(a0)
	addq.b #$2,$24(a0)
	addq.b #$1,$1c(a0)
	move.l #$8000,$30(a0)
	move.w #$20,$2a(a0)
	move.l #$ffff8000,$2c(a0)
	tst.b $28(a0)
	bpl.s loc_20b0ba
	move.w #$30,$2a(a0)
	move.l #$ffffc000,$2c(a0)
loc_20b0ba:
	move.w $8(a0),d0
	lea ($d000).w,a1
	sub.w $8(a1),d0
	bpl.s loc_20b0d8
	neg.l $2c(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20b0d8:
	bra.s loc_20b068
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b12e
	move.w #$41,$2a(a0)
	tst.b $28(a0)
	bpl.s loc_20b104
	move.w #$61,$2a(a0)
loc_20b104:
	neg.l $30(a0)
	tst.b $3f(a0)
	beq.s loc_20b12e
	jsr (sub_20798a).l
	bne.s loc_20b12e
	move.b $0(a0),$0(a1)
	move.l $8(a0),$8(a1)
	move.l $c(a0),$c(a1)
	move.b #$1,$28(a1)
loc_20b12e:
	bra.w loc_20b068
dat_20b132:
	.incbin 45362, 20
dat_20b146:
	.incbin 45382, 66
dat_20b188:
	.incbin 45448, 94
loc_20b1e6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b1fa(pc,d0.w),d0
	jsr dat_20b1fa(pc,d0.w)
	jmp (sub_20392a).l
dat_20b1fa:
	dc.b $00,$06,$00,$3c,$00,$56
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$6,$17(a0)
	move.b #$6,$19(a0)
	move.b #$6,$16(a0)
	move.w #$a7ae,$2(a0)
	move.l #$20987a,$4(a0)
	move.w #$b4,$2a(a0)
	addi.w #$ffff,$2a(a0)
	beq.s loc_20b250
	addi.l #$10000,$c(a0)
	lea dat_20b256(pc),a1
	jmp (sub_205b34).l
loc_20b250:
	jmp (sub_2039d6).l
dat_20b256:
	.incbin 45654, 746
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b54e(pc,d0.w),d0
	jmp dat_20b54e(pc,d0.w)
dat_20b54e:
	.incbin 46414, 112
	move.b $28(a0),d0
	addi.b #$ff,d0
	bmi.s loc_20b5cc
	bra.w loc_20b8ca
loc_20b5cc:
	jsr (sub_20e520).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b5f6(pc,d0.w),d0
	jsr dat_20b5f6(pc,d0.w)
	lea dat_20b7de(pc),a1
	jsr (sub_205b34).l
	jsr (sub_20392a).l
	jmp (loc_2079c0).l
dat_20b5f6:
	dc.b $00,$0c,$00,$4a,$00,$84,$00,$d4
	dc.b $01,$68,$01,$72
	addq.b #$2,$24(a0)
	ori.b #$84,$1(a0)
	move.b #$1,$18(a0)
	move.b #$6,$20(a0)
	move.b #$e,$19(a0)
	move.b #$e,$16(a0)
	move.w #$a46a,$2(a0)
	lea dat_20b7e6(pc),a1
	tst.b $28(a0)
	bmi.s loc_20b63c
	lea dat_20b858(pc),a1
	st $3f(a0)
loc_20b63c:
	move.l a1,$4(a0)
	addi.l #$10000,$c(a0)
	jsr (sub_206da0).l
	subq.w #$8,d1
	bgt.s loc_20b678
	sub.w d1,$c(a0)
	move.l $c(a0),$32(a0)
	move.l #$3000,$2e(a0)
	move.w #$8,$36(a0)
	addq.b #$2,$24(a0)
	tst.l $2a(a0)
	beq.s loc_20b678
	addq.b #$2,$24(a0)
loc_20b678:
	rts
	bsr.w sub_20b79a
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20b6c8
	move.w $8(a0),d0
	sub.w $8(a1),d0
	move.w d0,d1
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20b6c8
	addq.b #$2,$24(a0)
	move.l #$ffff4000,$2a(a0)
	tst.w d1
	bmi.s loc_20b6c8
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $2a(a0)
loc_20b6c8:
	rts
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $32(a0),$c(a0)
	moveq #$0,d3
	move.b $17(a0),d3
	lea (dat_20700c).l,a1
	tst.l $2a(a0)
	bmi.s loc_20b6f0
	lea (loc_206e6a).l,a1
loc_20b6f0:
	jsr (a1)
	tst.w d1
	bmi.s loc_20b748
	jsr (sub_206da0).l
	cmpi.w #$10,d1
	bge.s loc_20b74e
	subq.w #$8,d1
	add.w d1,$c(a0)
	move.l $c(a0),$32(a0)
	bsr.w sub_20b79a
	tst.b $3f(a0)
	beq.s loc_20b746
	andi.w #$7f,$36(a0)
	bne.s loc_20b746
	jsr (sub_20798a).l
	bne.s loc_20b746
	move.b $0(a0),$0(a1)
	move.l $8(a0),$8(a1)
	move.l $c(a0),$c(a1)
	addi.w #$10,$c(a1)
	move.b #$1,$28(a1)
loc_20b746:
	rts
loc_20b748:
	addq.b #$2,$24(a0)
	rts
loc_20b74e:
	addq.b #$4,$24(a0)
	bsr.w sub_20b79a
	move.l $c(a0),$32(a0)
	rts
	.incbin 46942, 60

sub_20b79a:
	addq.w #$1,$36(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	move.w $36(a0),d0
	andi.w #$f,d0
	bne.s loc_20b7b4
	neg.l $2e(a0)
loc_20b7b4:
	rts
	.incbin 47030, 40
dat_20b7de:
	dc.b $00,$02,$03,$00,$01,$02,$ff,$00
dat_20b7e6:
	.incbin 47078, 114
dat_20b858:
	.incbin 47192, 114
loc_20b8ca:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b8de(pc,d0.w),d0
	jsr dat_20b8de(pc,d0.w)
	jmp (sub_20392a).l
dat_20b8de:
	dc.b $00,$0a,$00,$40,$00,$68,$00,$82
	dc.b $00,$9e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$2,$18(a0)
	move.b #$8b,$20(a0)
	move.b #$6,$17(a0)
	move.b #$6,$19(a0)
	move.b #$6,$16(a0)
	move.w #$495,$2(a0)
	move.l #$20b9a6,$4(a0)
	tst.b $21(a0)
	bne.s loc_20b97c
	addi.l #$10000,$c(a0)
	jsr (sub_206da0).l
	tst.w d1
	bpl.s loc_20b944
	add.w d1,$c(a0)
	move.w #$78,$2a(a0)
	addq.b #$2,$24(a0)
loc_20b944:
	rts
	tst.b $21(a0)
	bne.s loc_20b97c
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b95e
	move.w #$78,$2a(a0)
	addq.b #$2,$24(a0)
loc_20b95e:
	rts
	tst.b $21(a0)
	bne.s loc_20b97c
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b972
	addq.b #$2,$24(a0)
loc_20b972:
	lea dat_20b9a0(pc),a1
	jmp (sub_205b34).l
loc_20b97c:
	move.b #$18,$0(a0)
	move.b #$0,$24(a0)
	move.b #$1,$25(a0)
	tst.b $1(a0)
	bpl.s loc_20b99e
	move.w #$9e,d0
	jsr (sub_202138).l
loc_20b99e:
	rts
dat_20b9a0:
	.incbin 47520, 418
loc_20bb42:
	lea dat_20bb94(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bb4e:
	cmp.w (a1)+,d0
	bcs.s loc_20bb56
	addq.b #$2,d1
	bra.s loc_20bb4e
loc_20bb56:
	move.b d1,($ff1574).l
	move.w dat_20bba0(pc,d1.w),d0
	jmp (sub_202302).l

sub_20bb66:
	lea dat_20bb94(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bb72:
	cmp.w (a1)+,d0
	bcs.s loc_20bb7a
	addq.b #$2,d1
	bra.s loc_20bb72
loc_20bb7a:
	cmp.b ($ff1574).l,d1
	bne.s loc_20bb84
	rts
loc_20bb84:
	move.b d1,($ff1574).l
	move.w dat_20bb9a(pc,d1.w),d0
	jmp (loc_202334).l
dat_20bb94:
	dc.b $10,$00,$17,$00,$ff,$ff
dat_20bb9a:
	dc.b $00,$08,$00,$09,$00,$0a
dat_20bba0:
	dc.b $00,$02,$00,$06,$00,$07

sub_20bba6:
	cmpi.b #$f,d0
	bne.s loc_20bbb2
	move.w #$4f2,$2(a0)
loc_20bbb2:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bc14(pc,d0.w),d0
	jsr dat_20bc14(pc,d0.w)
	jsr (sub_20392a).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20bbf2
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20bbf2:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20bc10
	rts
loc_20bc10:
	bra.w loc_20cc1c
dat_20bc14:
	dc.b $00,$10,$00,$6e
dat_20bc18:
	dc.b $10,$08,$00,$12,$0c,$83,$0c,$10
	dc.b $82,$0c,$10,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$31e,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20bc40
	move.w #$3fc,d0
loc_20bc40:
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20bdc2,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20bc18(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20bcec(pc)
	tst.b $1a(a0)
	beq.s loc_20bc96
	lea ($d000).w,a1
	jmp (sub_2089d4).l
loc_20bc96:
	lea ($d000).w,a1
	jsr (sub_2089d4).l
	beq.s loc_20bcea
	btst.b #$3,$22(a0)
	beq.s loc_20bcea
	tst.b ($ff1521).l
	bne.s loc_20bcea
	tst.b ($ff151f).l
	bne.s loc_20bcea
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20bce8
	tst.w $30(a0)
	bne.s loc_20bce8
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_207236).l
loc_20bce8:
	movea.l (a7)+,a0
loc_20bcea:
	rts

sub_20bcec:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20bd06
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20bd08(pc,d0.w),d0
	jmp dat_20bd08(pc,d0.w)
loc_20bd06:
	rts
dat_20bd08:
	.incbin 48392, 50
	jsr sub_20bd64(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	rts
	jsr sub_20bd64(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	rts

sub_20bd64:
	tst.b $3a(a0)
	beq.s loc_20bd82
	subq.b #$1,$3a(a0)
	bne.s loc_20bdc0
	btst.b #$7,$1(a0)
	beq.s loc_20bd82
	move.w #$b7,d0
	jsr (sub_202138).l
loc_20bd82:
	tst.b $3c(a0)
	beq.s loc_20bda2
	subq.b #$8,$3b(a0)
	bcc.s loc_20bdc0
	move.b #$0,$3b(a0)
	move.b #$0,$3c(a0)
	move.b #$3c,$3a(a0)
	bra.s loc_20bdc0
loc_20bda2:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20bdc0
	move.b #$20,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20bdc0:
	rts
	.incbin 48578, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be18(pc,d0.w),d0
	jsr dat_20be18(pc,d0.w)
	jsr (sub_20392a).l
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20be14
	rts
loc_20be14:
	bra.w loc_20cc1c
dat_20be18:
	dc.b $00,$04,$00,$7a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$433e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20bf18,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	cmpi.b #$2,$28(a0)
	bcs.s loc_20be92
	jsr (sub_2079a0).l
	beq.s loc_20be68
	jmp (sub_2039d6).l
loc_20be68:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$ea,$39(a1)
	move.w a0,$34(a1)
	move.b $28(a0),d0
	andi.b #$1,d0
	add.b d0,d0
	move.b d0,$28(a1)
loc_20be92:
	bsr.s sub_20bef6
	tst.b ($ff152e).l
	beq.s loc_20bec8
loc_20be9c:
	cmpi.b #$1,$28(a0)
	beq.s loc_20bec8
	tst.b $3a(a0)
	bne.s loc_20beca
	moveq #$0,d0
	move.b $3b(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea dat_20bf08(pc,d0.w),a1
	move.b (a1)+,$3a(a0)
	move.b (a1)+,d0
	ext.w d0
	move.w d0,$38(a0)
	move.w (a1)+,$36(a0)
loc_20bec8:
	rts
loc_20beca:
	move.w $38(a0),d0
	add.w d0,$36(a0)
	move.w $36(a0),d0
	move.w d0,$10(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	subq.b #$1,$3a(a0)
	beq.s loc_20beea
	rts
loc_20beea:
	addq.b #$1,$3b(a0)
	andi.b #$3,$3b(a0)
	bra.s loc_20be9c

sub_20bef6:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2089d4).l
dat_20bf08:
	.incbin 48904, 24
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bf56(pc,d0.w),d0
	jsr dat_20bf56(pc,d0.w)
	jsr (sub_20392a).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20bf52
	rts
loc_20bf52:
	bra.w loc_20cc1c
dat_20bf56:
	dc.b $00,$04,$00,$a0
	ori.b #$4,$1(a0)
	move.w #$39f,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c080,$4(a0)
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
	beq.s loc_20bff6
	moveq #$20,d1
	cmpi.b #$1,d0
	beq.s loc_20bfb0
	moveq #$a,d1
loc_20bfb0:
	jsr (sub_2079a0).l
	bne.s loc_20bff6
	move.b d1,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w a0,$34(a1)
	move.b #$20,$38(a1)
	move.b #$2,$28(a1)
	cmpi.b #$20,d1
	beq.s loc_20bff6
	move.b #$18,$38(a1)
	move.b $28(a0),d0
	andi.b #$1,d0
	add.b d0,d0
	ori.b #$4,d0
	move.b d0,$28(a1)
loc_20bff6:
	jsr sub_20c00c(pc)
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2089d4).l

sub_20c00c:
	btst.b #$2,$28(a0)
	bne.s loc_20c028
	jsr sub_20c03e(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
loc_20c028:
	jsr sub_20c03e(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts

sub_20c03e:
	lea ($d000).w,a1
	move.w $8(a0),d0
	move.b $19(a0),d1
	ext.w d1
	sub.w d1,d0
	move.w $8(a1),d1
	sub.w d0,d1
	bcs.s loc_20c06c
	cmpi.w #$50,d1
	bcc.s loc_20c05e
	rts
loc_20c05e:
	subq.b #$8,$3b(a0)
	bcc.s loc_20c07e
	move.b #$0,$3b(a0)
	rts
loc_20c06c:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20c07e
	move.b #$20,$3b(a0)
loc_20c07e:
	rts
	.incbin 49280, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c0a4(pc,d0.w),d0
	jsr dat_20c0a4(pc,d0.w)
	jmp (sub_20392a).l
dat_20c0a4:
	dc.b $00,$04,$00,$3a
	ori.b #$4,$1(a0)
	move.w #$34e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c3ee,$4(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20c11e(pc,d0.w),d0
	jsr dat_20c11e(pc,d0.w)
	jsr sub_20c12e(pc)
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c110
	rts
loc_20c110:
	bra.w loc_20cc1c

sub_20c114:
	lea ($d000).w,a1
	jmp (loc_2089ce).l
dat_20c11e:
	.incbin 49438, 16

sub_20c12e:
	tst.b $3f(a0)
	beq.s loc_20c16e
	btst.b #$3,$22(a0)
	bne.s loc_20c148
	tst.b $3e(a0)
	beq.s loc_20c16e
	subq.b #$8,$3e(a0)
	bra.s loc_20c154
loc_20c148:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20c16e
	addq.b #$8,$3e(a0)
loc_20c154:
	move.b $3e(a0),d0
	jsr (sub_20063c).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $30(a0),d0
	move.w d0,$c(a0)
loc_20c16e:
	rts
	dc.b $11,$7c,$00,$01,$00,$3f,$4e,$ba
	dc.b $ff,$9c,$4e,$75
loc_20c17c:
	tst.b $38(a0)
	bne.s loc_20c1c0
	move.b #$1,$3f(a0)
	lea (dat_20c1f2).l,a1
	cmpi.b #$1,$28(a0)
	beq.s loc_20c19c
	lea (dat_20c212).l,a1
loc_20c19c:
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
loc_20c1ba:
	jsr sub_20c114(pc)
	rts
loc_20c1c0:
	move.w $34(a0),d0
	move.w d0,$10(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	move.w $36(a0),d0
	add.w d0,$34(a0)
	subq.b #$1,$38(a0)
	bne.s loc_20c1ba
	addq.b #$1,$39(a0)
	cmpi.b #$8,$39(a0)
	bne.s loc_20c17c
	move.b #$2,$39(a0)
	bra.s loc_20c17c
dat_20c1f2:
	.incbin 49650, 32
dat_20c212:
	.incbin 49682, 548
dat_20c436:
	dc.b $00,$1e,$3c,$00
	ori.b #$4,$1(a0)
	move.w #$371,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c512,$4(a0)
	move.b #$1c,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b dat_20c436(pc,d0.w),$3a(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	bpl.s loc_20c498
	bsr.s sub_20c4bc
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	bra.s loc_20c4aa
loc_20c498:
	bsr.s sub_20c4bc
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
loc_20c4aa:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_2089ce).l

sub_20c4bc:
	bsr.w sub_20cb74
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20c4f6
	subi.b #$10,$3b(a0)
	bcc.s loc_20c510
	move.b #$0,$3b(a0)
	move.b $28(a0),d0
	andi.b #$f,d0
	bne.s loc_20c510
	move.b $3c(a0),d0
	bne.s loc_20c510
	move.b #$3c,$3a(a0)
	move.b #$ff,$3c(a0)
	rts
loc_20c4f6:
	addi.b #$10,$3b(a0)
	cmpi.b #$40,$3b(a0)
	bcs.s loc_20c510
	move.b #$40,$3b(a0)
	move.b #$8,$3a(a0)
loc_20c510:
	rts
	.incbin 50450, 1436
	lea ($d000).w,a1
	jsr (sub_208886).l
	bra.w loc_20cb00
	.incbin 51900, 68
loc_20cb00:
	moveq #$0,d0
	move.b $3b(a0),d0
	add.b d0,d0
	add.b $3b(a0),d0
	lea dat_20cb24(pc,d0.w),a2
	move.b (a2)+,$36(a0)
	move.b (a2)+,$16(a0)
	move.b (a2)+,$1a(a0)
	move.b #$4,$3a(a0)
	bra.s loc_20cb5a
dat_20cb24:
	.incbin 52004, 54
loc_20cb5a:
	moveq #$0,d0
	move.b $1a(a0),d0
	move.b dat_20cb68(pc,d0.w),$18(a0)
	rts
dat_20cb68:
	dc.b $05,$04,$03,$02,$02,$02,$03,$04
	dc.b $05,$06,$06,$06

sub_20cb74:
	lea ($d000).w,a1
	rts
	.incbin 52090, 162
loc_20cc1c:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20cc40
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20cc40:
	jmp (sub_2039d6).l
	jsr (sub_20e520).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cc60(pc,d0.w),d0
	jsr dat_20cc60(pc,d0.w)
	jmp (loc_2079c0).l
dat_20cc60:
	dc.b $00,$0e,$00,$60,$00,$82,$00,$ec
	dc.b $01,$06,$01,$14,$01,$7c
	move.l #$235846,d1
	move.b #$1,d0
	move.b $28(a0),$2e(a0)
	bpl.s loc_20cc8a
	move.l #$2359f6,d1
	move.b #$2,d0
loc_20cc8a:
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
	jsr sub_20cdfa(pc)
	jsr (sub_206da0).l
	tst.w d1
	bpl.s loc_20ccd2
	addq.b #$2,$24(a0)
loc_20ccd2:
	lea dat_20cea6(pc),a1
	jsr (sub_205b34).l
	jmp (sub_20392a).l
	btst.b #$7,$1(a0)
	beq.s loc_20cd30
	bclr.b #$0,$1(a0)
	bclr.b #$0,$22(a0)
	lea ($d000).w,a1
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcc.s loc_20cd12
	neg.w d0
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20cd12:
	tst.b $1(a0)
	bpl.s loc_20cd30
	move.w $c(a0),d1
	sub.w $c(a1),d1
	bcc.s loc_20cd24
	neg.w d1
loc_20cd24:
	cmpi.w #$20,d1
	bcc.s loc_20cd30
	cmpi.w #$60,d0
	bcs.s loc_20cd38
loc_20cd30:
	move.b #$1,$1c(a0)
	bra.s loc_20ccd2
loc_20cd38:
	move.b #$2,$1c(a0)
	jsr sub_20ce14(pc)
	move.w #$78,$2c(a0)
	addq.b #$2,$24(a0)
	subq.w #$1,$2c(a0)
	beq.s loc_20cd56
	bra.w loc_20ccd2
loc_20cd56:
	move.b #$3,$1c(a0)
	move.w #$3c,$2c(a0)
	addq.b #$2,$24(a0)
	subq.w #$1,$2c(a0)
	beq.s loc_20cd70
	bra.w loc_20ccd2
loc_20cd70:
	addq.b #$2,$24(a0)
	move.w #$100,d0
	tst.b $28(a0)
	bpl.s loc_20cd82
	move.w #$80,d0
loc_20cd82:
	move.b #$0,$1c(a0)
	btst.b #$0,$22(a0)
	bne.s loc_20cd92
	neg.w d0
loc_20cd92:
	move.w d0,$10(a0)
	jsr sub_20cdfa(pc)
	jsr (sub_206fe0).l
	tst.w d1
	bmi.s loc_20cdcc
	jsr (sub_206e42).l
	tst.w d1
	bmi.s loc_20cdcc
	jsr (sub_206da0).l
	tst.w d1
	beq.s loc_20cdc8
	cmpi.w #$7,d1
	bpl.s loc_20cdcc
	cmpi.w #$fff9,d1
	bmi.s loc_20cdcc
	add.w d1,$c(a0)
loc_20cdc8:
	bra.w loc_20ccd2
loc_20cdcc:
	move.w #$48,$2c(a0)
	move.w #$3,$1c(a0)
	addq.b #$2,$24(a0)
	subq.w #$1,$2c(a0)
	beq.s loc_20cde6
	bra.w loc_20ccd2
loc_20cde6:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	subq.b #$2,$24(a0)
	bra.w loc_20ccd2

sub_20cdfa:
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	rts

sub_20ce14:
	tst.b $28(a0)
	bpl.s loc_20ce1c
	rts
loc_20ce1c:
	jsr (sub_20798a).l
	bne.s loc_20ce60
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
	bne.s loc_20ce5a
	neg.w d1
loc_20ce5a:
	add.w d1,d0
	move.w d0,$8(a1)
loc_20ce60:
	jsr (sub_20798a).l
	bne.s loc_20cea4
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
	bne.s loc_20ce9e
	neg.w d1
loc_20ce9e:
	add.w d1,d0
	move.w d0,$8(a1)
loc_20cea4:
	rts
dat_20cea6:
	.incbin 52902, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cee4(pc,d0.w),d0
	jsr dat_20cee4(pc,d0.w)
	jsr (sub_20392a).l
	move.w $32(a0),d0
	jmp (loc_2079c4).l
dat_20cee4:
	dc.b $00,$06,$00,$56,$00,$8a
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$4,$17(a0)
	move.b #$4,$16(a0)
	move.w #$23f2,$2(a0)
	move.l #$20d02a,$4(a0)
	move.w $8(a0),$32(a0)
	move.w #$300,d1
	btst.b #$0,$2e(a0)
	bne.s loc_20cf30
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	neg.w d1
loc_20cf30:
	move.w d1,$10(a0)
	addq.b #$2,$24(a0)
	rts
	subq.w #$1,$2c(a0)
	bne.s loc_20cf50
	addq.b #$2,$24(a0)
	move.b #$87,$20(a0)
	move.b #$3c,$34(a0)
loc_20cf50:
	move.w $30(a0),d0
	movea.w d0,a1
	cmpi.b #$24,$0(a1)
	beq.s loc_20cf64
	jmp (sub_2039d6).l
loc_20cf64:
	lea dat_20d016(pc),a1
	jmp (sub_205b34).l
	jsr sub_20cdfa(pc)
	move.w $2a(a0),d0
	add.w d0,$12(a0)
	cmpi.b #$0,$1a(a0)
	bne.s loc_20cf94
	btst.b #$7,$1(a0)
	beq.s loc_20cf94
	move.w #$b9,d0
	jsr (sub_202138).l
loc_20cf94:
	lea ($d000).w,a1
	bsr.s sub_20cfb6
	beq.s loc_20cf9e
	bsr.s sub_20cff6
loc_20cf9e:
	subq.b #$1,$34(a0)
	bne.s loc_20cfac
	addq.b #$1,$34(a0)
	clr.b $20(a0)
loc_20cfac:
	lea dat_20d016(pc),a1
	jmp (sub_205b34).l

sub_20cfb6:
	tst.b ($ff151f).l
	bne.s loc_20cfc6
	btst.b #$2,$22(a1)
	beq.s loc_20cff2
loc_20cfc6:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	moveq #$1c,d1
	add.w d1,d0
	bmi.s loc_20cff2
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20cff2
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$1c,d1
	add.w d1,d0
	bmi.s loc_20cff2
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20cff2
	moveq #$1,d0
	rts
loc_20cff2:
	moveq #$0,d0
	rts

sub_20cff6:
	clr.b $20(a0)
	move.b #$1,$1c(a0)
	move.w $10(a1),d0
	add.w d0,$10(a0)
	move.w #$f800,$12(a0)
	move.w #$40,$2a(a0)
	rts
dat_20d016:
	.incbin 53270, 2694
	jsr (sub_20e568).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20dbbe
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dabc(pc,d0.w),d0
	jmp dat_20dabc(pc,d0.w)
dat_20dabc:
	.incbin 55996, 258
loc_20dbbe:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dbcc(pc,d0.w),d0
	jmp dat_20dbcc(pc,d0.w)
dat_20dbcc:
	.incbin 56268, 450
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ddb2(pc,d0.w),d0
	jsr dat_20ddb2(pc,d0.w)
	jsr (sub_20392a).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20ddb0
	jmp (loc_2079c0).l
loc_20ddb0:
	rts
dat_20ddb2:
	dc.b $00,$08,$00,$9e,$01,$08,$01,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$22,$17(a0)
	move.b #$22,$19(a0)
	move.b #$20,$16(a0)
	lea dat_20e1e0(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	move.l #$20df62,$4(a0)
	move.l #$20e1a0,$2c(a0)
	move.w $c(a0),$30(a0)
	move.w #$4,$2a(a0)
	move.w #$1,$32(a0)
	moveq #$0,d0
	tst.b ($ff156a).l
	bne.s loc_20de26
	addq.b #$2,d0
loc_20de26:
	tst.b ($ff152e).l
	bne.s loc_20de30
	addq.b #$1,d0
loc_20de30:
	move.b d0,$1a(a0)
	tst.b ($ff156a).l
	bne.s loc_20de50
	tst.b ($ff152e).l
	bne.s loc_20de50
	move.b #$fa,$20(a0)
	subi.w #$10,$c(a0)
loc_20de50:
	tst.b ($ff156a).l
	bne.s loc_20deb8
	tst.b ($ff152e).l
	bne.s loc_20deb8
	bsr.w sub_20df34
	tst.b $21(a0)
	beq.s loc_20dea4
	clr.w $20(a0)
	clr.w $2a(a0)
	move.b #$7,$1a(a0)
	addq.b #$2,$24(a0)
	move.b #$1,($ff156a).l
	move.l #$96,d0
	jsr (sub_20a58e).l
	lea ($d000).w,a1
	jsr (sub_2089d4).l
	beq.s loc_20dea2
	jsr (sub_208886).l
loc_20dea2:
	rts
loc_20dea4:
	lea ($d000).w,a1
	jsr (sub_2089d4).l
	lea dat_20df5a(pc),a1
	jmp (sub_205b34).l
loc_20deb8:
	rts
	.incbin 57018, 122

sub_20df34:
	addq.w #$1,$2a(a0)
	move.w $2a(a0),d0
	andi.w #$7,d0
	bne.s loc_20df4a
	move.w $32(a0),d0
	add.w d0,$c(a0)
loc_20df4a:
	move.w $2a(a0),d0
	andi.w #$1f,d0
	bne.s loc_20df58
	neg.w $32(a0)
loc_20df58:
	rts
dat_20df5a:
	.incbin 57178, 646
dat_20e1e0:
	.incbin 57824, 832

sub_20e520:
	tst.b ($ff156a).l
	beq.s loc_20e566
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e538
	tst.b $28(a0)
	beq.s loc_20e566
loc_20e538:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2039d6).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e564
	move.w #$9e,d0
	jsr (sub_202138).l
loc_20e564:
	addq.l #$4,a7
loc_20e566:
	rts

sub_20e568:
	tst.b $28(a0)
	bmi.s loc_20e598
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e588
	tst.b ($ff156d).l
	bne.s loc_20e598
	addq.l #$4,a7
	jmp (loc_2079c0).l
loc_20e588:
	tst.b ($ff156a).l
	bne.s loc_20e598
	addq.l #$4,a7
	jmp (sub_2039d6).l
loc_20e598:
	rts
	.incbin 58778, 284
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e6c4(pc,d0.w),d0
	jmp dat_20e6c4(pc,d0.w)
dat_20e6c4:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20edc2,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20ed82).l,a2
loc_20e712:
	jsr (sub_20798a).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20edc2,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20e764
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20e764:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20e712
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20e78c
	bge.s loc_20e782
	neg.w d0
loc_20e782:
	add.w d0,$a(a0)
	jmp (sub_20392a).l
loc_20e78c:
	addq.b #$4,$24(a0)
	jmp (sub_20392a).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20e7b0
	bge.s loc_20e7a6
	neg.w d0
loc_20e7a6:
	add.w d0,$8(a0)
	jmp (sub_20392a).l
loc_20e7b0:
	addq.b #$4,$24(a0)
	jmp (sub_20392a).l
	tst.b $1e(a0)
	beq.s loc_20e7ca
	subq.b #$1,$1e(a0)
	jmp (sub_20392a).l
loc_20e7ca:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20e7e4
	bge.s loc_20e7da
	neg.w d0
loc_20e7da:
	add.w d0,$a(a0)
	jmp (sub_20392a).l
loc_20e7e4:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202302).l
	tst.b $1e(a0)
	beq.s loc_20e806
	subq.b #$1,$1e(a0)
	jmp (sub_20392a).l
loc_20e806:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20e820
	bge.s loc_20e816
	neg.w d0
loc_20e816:
	add.w d0,$8(a0)
	jmp (sub_20392a).l
loc_20e820:
	jmp (sub_2039d6).l
	tst.l ($f680).w
	bne.s loc_20e83a
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2039d6).l
loc_20e83a:
	rts
	.incbin 59452, 1350
dat_20ed82:
	.incbin 60802, 340

sub_20eed6:
	jmp (loc_2063a8).l
dat_20eedc:
	.incbin 61148, 16
dat_20eeec:
	.incbin 61164, 488
	jsr ($2064de).l
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
	.incbin 61804, 408
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
	jmp ($202448).l
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
	jmp ($203b1a).l
	tst.l ($f680).w
	bne.s loc_20f42c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp ($203b1a).l
loc_20f42c:
	rts
	.incbin 62510, 1690
	jmp (loc_2064ec).l
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
	.incbin 209084, 1536
dat_2336bc:
	.incbin 210620, 15230
dat_23723a:
	.incbin 225850, 256
dat_23733a:
	.incbin 226106, 4096
dat_23833a:
	.incbin 230202, 4796
dat_2395f6:
	.incbin 234998, 16280
dat_23d58e:
	.incbin 251278, 166
dat_23d634:
	.incbin 251444, 10700
