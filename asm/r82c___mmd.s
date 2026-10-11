; R82C__.MMD
; disassembled from the disc; code only, data comes from data/R82C__.MMD at build time
	.file "R82C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$21,$bc
	jmp (loc_201d32).l
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
	bsr.w sub_202268
	bsr.w sub_202210
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2015ac

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200212).l,a1
	lea (dat_20021a).l,a2
	bsr.w sub_2001d4
	lea (dat_200220).l,a1
	lea (dat_200228).l,a2
	bsr.w sub_2001d4
	lea (dat_20022e).l,a1
	lea (dat_200236).l,a2
	bsr.s sub_2001d4
	tst.b ($ff1507).l
	bne.s loc_2001d2
	lea (dat_20023c).l,a1
	lea (dat_20024a).l,a2
	bra.w sub_2001d4
loc_2001d2:
	rts

sub_2001d4:
	subq.b #$1,(a5)
	bpl.s loc_200208
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
	bcs.s loc_2001f4
	moveq #$0,d0
loc_2001f4:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_200208:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200212:
	dc.b $26,$03,$04,$02,$04,$01,$04,$00
dat_20021a:
	dc.b $0e,$e6,$0c,$a0,$0a,$60
dat_200220:
	dc.b $27,$03,$04,$02,$04,$01,$04,$00
dat_200228:
	dc.b $0c,$a0,$0a,$60,$0e,$e6
dat_20022e:
	dc.b $28,$03,$04,$02,$04,$01,$04,$00
dat_200236:
	dc.b $0a,$60,$0e,$e6,$0c,$a0
dat_20023c:
	dc.b $31,$06,$02,$00,$02,$01,$02,$16
	dc.b $00,$02,$01,$42,$02,$00
dat_20024a:
	.incbin 586, 132

sub_2002ce:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_2002e0:
	move.w d1,(a0)+
	dbf d0,loc_2002e0
	move.w #$15,d4
loc_2002ea:
	move.b #$12,($f62a).w
	bsr.w sub_2008f0
	bsr.s sub_200300
	bsr.w sub_20262e
	dbf d4,loc_2002ea
	rts

sub_200300:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200316:
	bsr.s sub_200344
	dbf d0,loc_200316
	cmpi.b #$1,($ff1506).l
	bne.s loc_200342
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20033c:
	bsr.s sub_200344
	dbf d0,loc_20033c
loc_200342:
	rts

sub_200344:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_20036c
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_20035a
	move.w d1,(a0)+
	rts
loc_20035a:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_200368
	move.w d1,(a0)+
	rts
loc_200368:
	addq.w #$2,(a0)+
	rts
loc_20036c:
	addq.w #$2,a0
	rts
	.incbin 880, 32

sub_200390:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20039a:
	move.b #$12,($f62a).w
	bsr.w sub_2008f0
	bsr.s sub_2003b0
	bsr.w sub_20262e
	dbf d4,loc_20039a
	rts

sub_2003b0:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003c0:
	bsr.s sub_2003de
	dbf d0,loc_2003c0
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003d6:
	bsr.s sub_2003de
	dbf d0,loc_2003d6
	rts

sub_2003de:
	move.w (a0),d2
	beq.s loc_20040a
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_2003ee
	subq.w #$2,(a0)+
	rts
loc_2003ee:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_2003fc
	subi.w #$20,(a0)+
	rts
loc_2003fc:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_20040a
	subi.w #$200,(a0)+
	rts
loc_20040a:
	addq.w #$2,a0
	rts

sub_20040e:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200428:
	move.w d1,(a0)+
	dbf d0,loc_200428
	move.w #$15,d4
loc_200432:
	move.b #$12,($f62a).w
	bsr.w sub_2008f0
	bsr.s sub_200448
	bsr.w sub_20262e
	dbf d4,loc_200432
	rts

sub_200448:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20045e:
	bsr.s sub_20048c
	dbf d0,loc_20045e
	cmpi.b #$1,($ff1506).l
	bne.s loc_20048a
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200484:
	bsr.s sub_20048c
	dbf d0,loc_200484
loc_20048a:
	rts

sub_20048c:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2004b8
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2004a4
	cmp.w d2,d1
	bcs.s loc_2004a4
	move.w d1,(a0)+
	rts
loc_2004a4:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2004b4
	cmp.w d2,d1
	bcs.s loc_2004b4
	move.w d1,(a0)+
	rts
loc_2004b4:
	subq.w #$2,(a0)+
	rts
loc_2004b8:
	addq.w #$2,a0
	rts

sub_2004bc:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2004c6:
	move.b #$12,($f62a).w
	bsr.w sub_2008f0
	bsr.s sub_2004dc
	bsr.w sub_20262e
	dbf d4,loc_2004c6
	rts

sub_2004dc:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004ec:
	bsr.s sub_20050a
	dbf d0,loc_2004ec
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200502:
	bsr.s sub_20050a
	dbf d0,loc_200502
	rts

sub_20050a:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_200546
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200522
	addq.w #$2,(a0)+
	rts
loc_200522:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_200534
	addi.w #$20,(a0)+
	rts
loc_200534:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_200546
	addi.w #$200,(a0)+
	rts
loc_200546:
	addq.w #$2,a0
	rts

sub_20054a:
	lea (dat_2005b6).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_20055e:
	move.l (a2)+,(a3)+
	dbf d7,loc_20055e
	rts

sub_200566:
	lea (dat_2005b6).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200576:
	move.l (a2)+,(a3)+
	dbf d7,loc_200576
	rts
	.incbin 1406, 56
dat_2005b6:
	.incbin 1462, 826

sub_2008f0:
	move.w #$2300,sr
loc_2008f4:
	tst.b ($f62a).w
	bne.s loc_2008f4
	rts

sub_2008fc:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200914(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200914(pc,d0.w),d0
	rts
dat_200914:
	.incbin 2324, 640

sub_200b94:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200bf0
	move.w d2,d4
	tst.w d3
	bpl.w loc_200bae
	neg.w d3
loc_200bae:
	tst.w d4
	bpl.w loc_200bb6
	neg.w d4
loc_200bb6:
	cmp.w d3,d4
	bcc.w loc_200bc8
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200bfa(pc,d4.w),d0
	bra.s loc_200bd2
loc_200bc8:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200bfa(pc,d3.w),d0
loc_200bd2:
	tst.w d1
	bpl.w loc_200bde
	neg.w d0
	addi.w #$80,d0
loc_200bde:
	tst.w d2
	bpl.w loc_200bea
	neg.w d0
	addi.w #$100,d0
loc_200bea:
	movem.l (a7)+,d3-d4
	rts
loc_200bf0:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200bfa:
	.incbin 3066, 258

sub_200cfc:
	btst.b #$3,$22(a0)
	beq.s loc_200d10
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200d10:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200d32
	move.b $26(a0),d0
	bpl.s loc_200d2c
	subq.b #$1,d0
loc_200d2c:
	addi.b #$20,d0
	bra.s loc_200d3e
loc_200d32:
	move.b $26(a0),d0
	bpl.s loc_200d3a
	addq.b #$1,d0
loc_200d3a:
	addi.b #$1f,d0
loc_200d3e:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200fc8
	cmpi.b #$80,d0
	beq.w loc_200f26
	cmpi.b #$c0,d0
	beq.w loc_200e8a
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
	bsr.w sub_201252
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
	bsr.w sub_201252
	move.w (a7)+,d0
	bsr.w sub_200e5e
	tst.w d1
	beq.s loc_200dcc
	bpl.s loc_200dce
	cmpi.w #$fff2,d1
	blt.s loc_200df4
	add.w d1,$c(a0)
loc_200dcc:
	rts
loc_200dce:
	cmpi.w #$e,d1
	bgt.s loc_200dda
loc_200dd4:
	add.w d1,$c(a0)
	rts
loc_200dda:
	tst.b $38(a0)
	bne.s loc_200dd4
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200df4:
	rts
	.incbin 3574, 34
loc_200e18:
	rts
	.incbin 3610, 68

sub_200e5e:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200e6c
	move.b ($f768).w,d2
	move.w d0,d1
loc_200e6c:
	btst.l #$0,d2
	bne.s loc_200e78
	move.b d2,$26(a0)
	rts
loc_200e78:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200e8a:
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
	bsr.w sub_2013c2
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
	bsr.w sub_2013c2
	move.w (a7)+,d0
	bsr.w sub_200e5e
	tst.w d1
	beq.s loc_200efe
	bpl.s loc_200f00
	cmpi.w #$fff2,d1
	blt.w loc_200e18
	add.w d1,$8(a0)
loc_200efe:
	rts
loc_200f00:
	cmpi.w #$e,d1
	bgt.s loc_200f0c
loc_200f06:
	add.w d1,$8(a0)
	rts
loc_200f0c:
	tst.b $38(a0)
	bne.s loc_200f06
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200f26:
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
	bsr.w sub_201252
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
	bsr.w sub_201252
	move.w (a7)+,d0
	bsr.w sub_200e5e
	tst.w d1
	beq.s loc_200fa0
	bpl.s loc_200fa2
	cmpi.w #$fff2,d1
	blt.w loc_200df4
	sub.w d1,$c(a0)
loc_200fa0:
	rts
loc_200fa2:
	cmpi.w #$e,d1
	bgt.s loc_200fae
loc_200fa8:
	sub.w d1,$c(a0)
	rts
loc_200fae:
	tst.b $38(a0)
	bne.s loc_200fa8
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200fc8:
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
	bsr.w sub_2013c2
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
	bsr.w sub_2013c2
	move.w (a7)+,d0
	bsr.w sub_200e5e
	tst.w d1
	beq.s loc_201042
	bpl.s loc_201044
	cmpi.w #$fff2,d1
	blt.w loc_200e18
	sub.w d1,$8(a0)
loc_201042:
	rts
loc_201044:
	cmpi.w #$e,d1
	bgt.s loc_201050
loc_20104a:
	sub.w d1,$8(a0)
	rts
loc_201050:
	tst.b $38(a0)
	bne.s loc_20104a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_20106a:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_201080
	andi.w #$380,d0
loc_201080:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_2010e0
	bmi.s loc_2010e4
	cmpi.b #$5,($ff1506).l
	beq.s loc_2010b0
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010b6
loc_2010b0:
	andi.w #$7fff,$2(a0)
loc_2010b6:
	cmpi.b #$4,($ff1506).l
	bne.s loc_2010c6
	bclr.b #$6,$1(a0)
loc_2010c6:
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
loc_2010e0:
	movea.l d1,a1
	rts
loc_2010e4:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_20114c
	btst.b #$6,$1(a0)
	bne.s loc_201112
	cmpi.b #$14,d1
	bne.w loc_201236
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201236
loc_201112:
	cmpi.b #$15,d1
	bne.s loc_201120
	move.w #$60,d1
	bra.w loc_201236
loc_201120:
	cmpi.b #$1e,d1
	bne.s loc_20112e
	move.w #$61,d1
	bra.w loc_201236
loc_20112e:
	cmpi.b #$1f,d1
	bne.s loc_20113c
	move.w #$62,d1
	bra.w loc_201236
loc_20113c:
	cmpi.b #$32,d1
	bne.w loc_201236
	move.w #$63,d1
	bra.w loc_201236
loc_20114c:
	cmpi.b #$5,($ff1506).l
	bne.w loc_2011b2
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_20119c
	cmpi.b #$6,d1
	beq.s loc_20119c
	tst.b ($ff1956).l
	beq.w loc_201236
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_2011ac
	cmpi.b #$3c,d1
	beq.s loc_2011ac
	cmpi.b #$37,d1
	beq.s loc_2011ac
	cmpi.b #$2f,d1
	beq.s loc_2011ac
	cmpi.b #$16,d1
	beq.s loc_2011ac
	bra.w loc_201236
loc_20119c:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201236
loc_2011ac:
	addq.b #$1,d1
	bra.w loc_201236
loc_2011b2:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201222
	cmpi.b #$3,$0(a0)
	bcc.w loc_201236
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201236
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2011e6
	move.w #$6a,d1
	bra.s loc_201236
loc_2011e6:
	cmpi.b #$48,d1
	bne.s loc_2011f2
	move.w #$6b,d1
	bra.s loc_201236
loc_2011f2:
	cmpi.b #$4a,d1
	bne.s loc_2011fe
	move.w #$6c,d1
	bra.s loc_201236
loc_2011fe:
	cmpi.b #$10,d1
	bne.s loc_20120a
	move.w #$6d,d1
	bra.s loc_201236
loc_20120a:
	cmpi.b #$63,d1
	bne.s loc_201216
	move.w #$6e,d1
	bra.s loc_201236
loc_201216:
	cmpi.b #$43,d1
	bne.s loc_201236
	move.w #$6f,d1
	bra.s loc_201236
loc_201222:
	btst.b #$6,$1(a0)
	beq.s loc_201236
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201236
	move.w #$51,d1
loc_201236:
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

sub_201252:
	bsr.w sub_20106a
	cmpi.l #$210000,d1
	beq.s loc_20126c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20126c
	btst.l d5,d4
	bne.s loc_20127a
loc_20126c:
	add.w a3,d2
	bsr.w sub_201312
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_20127a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20126c
	lea (dat_236c7e).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2012a0
	not.w d1
	neg.b (a4)
loc_2012a0:
	btst.l #$c,d4
	beq.s loc_2012b0
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012b0:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236d7e).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2012cc
	neg.w d0
loc_2012cc:
	tst.w d0
	beq.s loc_20126c
	bmi.s loc_2012e8
	cmpi.b #$10,d0
	beq.s loc_201304
loc_2012d8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012e8:
	cmpa.w #$10,a3
	bne.s loc_2012f8
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2012d8
loc_2012f8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20126c
loc_201304:
	sub.w a3,d2
	bsr.w sub_201312
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201312:
	bsr.w sub_20106a
	cmpi.l #$210000,d1
	beq.s loc_20132c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20132c
	btst.l d5,d4
	bne.s loc_20133a
loc_20132c:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20133a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20132c
	lea (dat_236c7e).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201360
	not.w d1
	neg.b (a4)
loc_201360:
	btst.l #$c,d4
	beq.s loc_201370
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201370:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236d7e).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20138c
	neg.w d0
loc_20138c:
	tst.w d0
	beq.s loc_20132c
	bmi.s loc_2013a2
loc_201392:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013a2:
	cmpa.w #$10,a3
	bne.s loc_2013b2
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201392
loc_2013b2:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20132c
	not.w d1
	rts

sub_2013c2:
	bsr.w sub_20106a
	cmpi.l #$210000,d1
	beq.s loc_2013dc
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2013dc
	btst.l d5,d4
	bne.s loc_2013ea
loc_2013dc:
	add.w a3,d3
	bsr.w sub_201472
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2013ea:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2013dc
	lea (dat_236c7e).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201418
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201418:
	btst.l #$b,d4
	beq.s loc_201420
	neg.b (a4)
loc_201420:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_237d7e).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20143c
	neg.w d0
loc_20143c:
	tst.w d0
	beq.s loc_2013dc
	bmi.s loc_201458
	cmpi.b #$10,d0
	beq.s loc_201464
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201458:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2013dc
loc_201464:
	sub.w a3,d3
	bsr.w sub_201472
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201472:
	bsr.w sub_20106a
	cmpi.l #$210000,d1
	beq.s loc_20148c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20148c
	btst.l d5,d4
	bne.s loc_20149a
loc_20148c:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20149a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20148c
	lea (dat_236c7e).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2014c8
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2014c8:
	btst.l #$b,d4
	beq.s loc_2014d0
	neg.b (a4)
loc_2014d0:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_237d7e).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2014ec
	neg.w d0
loc_2014ec:
	tst.w d0
	beq.s loc_20148c
	bmi.s loc_201502
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201502:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20148c
	not.w d1
	rts

sub_201512:
	rts
	.incbin 5396, 152
loc_2015ac:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2015cc
	tst.b ($ff0f01).l
	bne.s loc_2015cc
	move.b #$1,($ff156a).l
loc_2015cc:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201632
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20743c
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201632
	move.b #$1,($ff1508).l
loc_201632:
	bset.b #$7,($f600).w
	bsr.w sub_202620
	tst.b ($ff156e).l
	bne.s loc_201658
	btst.b #$7,($ff152e).l
	beq.s loc_20168e
	bset.b #$0,($ff151d).l
	beq.s loc_201664
loc_201658:
	bsr.w sub_2004bc
	bclr.b #$0,($ff151d).l
loc_201664:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2016fe
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_20168c
	bclr.b #$7,($ff152e).l
loc_20168c:
	rts
loc_20168e:
	bset.b #$0,($ff151d).l
	beq.s loc_20169c
	bsr.w sub_200390
loc_20169c:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2016b8
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2016e0
loc_2016b8:
	tst.b ($ff1508).l
	bne.s loc_2016fe
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2016e0:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2016e8:
	move.l #$0,(a1)+
	dbf d6,loc_2016e8
	move.b #$c,($f62a).w
	bsr.w sub_2008f0
	rts
loc_2016fe:
	cmpi.w #$800,($f78e).w
	bne.s loc_20171c
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20171c:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201732
	btst.b #$7,($ff152e).l
	beq.s loc_201738
loc_201732:
	move.l #$eee0eee,d0
loc_201738:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201740:
	move.l d0,(a1)+
	dbf d6,loc_201740
loc_201746:
	move.b #$c,($f62a).w
	bsr.w sub_2008f0
	bsr.w sub_20262e
	bne.s loc_201746
	tst.l ($f680).w
	bsr.w sub_201bec
	moveq #$0,d0
	lea (dat_20fd8a).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201770
	bsr.w sub_202734
loc_201770:
	moveq #$1,d0
	bsr.w sub_202734
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20178c:
	move.l d0,(a1)+
	dbf d1,loc_20178c
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_20179e:
	move.l d0,(a1)+
	dbf d1,loc_20179e
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2017ae:
	move.l d0,(a1)+
	dbf d1,loc_2017ae
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_2017c0:
	move.l d0,(a1)+
	dbf d1,loc_2017c0
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2017d0:
	move.l d0,(a1)+
	dbf d1,loc_2017d0
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2017e0:
	move.l d0,(a1)+
	dbf d1,loc_2017e0
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20230a
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
	bsr.w sub_200566
	moveq #$3,d0
	bsr.w sub_20054a
	bsr.w sub_202984
	bsr.w sub_202a92
	bset.b #$2,($f754).w
	bsr.w sub_2034c2
	bsr.w sub_2033d8
	jsr (sub_201512).l
	bsr.w sub_201b26
loc_201860:
	move.b #$c,($f62a).w
	bsr.w sub_2008f0
	bsr.w sub_20262e
	bne.s loc_201860
	tst.l ($f680).w
	bne.s loc_201860
	bsr.w sub_201ab2
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201c4c
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2018c4
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2018c4:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201906
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201906:
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
	jsr (sub_20fc16).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201996
loc_201990:
	bsr.w sub_20040e
	bra.s loc_2019a4
loc_201996:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201990
	bsr.w sub_2002ce
loc_2019a4:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2019b2:
	move.b #$8,($f62a).w
	bsr.w sub_2008f0
	tst.b ($f7cc).w
	bne.s loc_2019d0
	btst.b #$7,($f605).w
	beq.s loc_2019d0
	eori.b #$1,($f63a).w
loc_2019d0:
	btst.b #$0,($f63a).w
	beq.w loc_201a42
	bsr.w sub_201cb0
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201a20
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2019b2
	subq.b #$1,($ff1508).l
	bpl.s loc_201a02
	clr.b ($ff1508).l
loc_201a02:
	move.w #$e,d0
	jsr (sub_205b9c).l
	bsr.w sub_20743c
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201a2e
loc_201a20:
	andi.b #$70,d0
	beq.w loc_2019b2
	clr.b ($ff1508).l
loc_201a2e:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2015ac
loc_201a42:
	bsr.w sub_201cf6
	addq.w #$1,($ff1504).l
	jsr (sub_207452).l
	jsr (sub_2038d6).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2015ac
	tst.w ($ff1502).l
	bne.w loc_2015ac
	tst.w ($ff1906).l
	bne.s loc_201a8a
	cmpi.b #$6,($d024).w
	bcs.s loc_201a8a
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201a8e
loc_201a8a:
	bsr.w sub_202a92
loc_201a8e:
	jsr (sub_203a80).l
	tst.w ($ff190e).l
	bne.s loc_201aa0
	bsr.w sub_200184
loc_201aa0:
	jsr (sub_20cfa8).l
	bsr.w sub_20262e
	bsr.w sub_201b58
	bra.w loc_2019b2

sub_201ab2:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201aca
	move.w #$78,$30(a1)
loc_201aca:
	rts
	.incbin 6860, 90

sub_201b26:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201b38(pc,d0.w),($f796).w
	rts
dat_201b38:
	.incbin 6968, 32

sub_201b58:
	subq.b #$1,($ff1910).l
	bpl.s loc_201b76
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201b76:
	subq.b #$1,($ff1912).l
	bpl.s loc_201b94
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201b94:
	subq.b #$1,($ff1914).l
	bpl.s loc_201bbc
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201bbc
	move.b #$0,($ff1915).l
loc_201bbc:
	tst.b ($ff1916).l
	beq.s loc_201bea
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201bea:
	rts

sub_201bec:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201c0e
	cmpi.b #$2,d0
	bne.s loc_201c0e
	add.b ($ff156a).l,d0
loc_201c0e:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201c26(pc,d1.w),d0
	jmp (sub_205b9c).l
dat_201c26:
	.incbin 7206, 38

sub_201c4c:
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

sub_201cb0:
	move.w #$ab,d0
	jsr (sub_2023f8).l
	bset.b #$7,($f63a).w
	bne.s loc_201cf4
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201cda
loc_201cd0:
	move.w #$d5,d0
	jmp (sub_205b9c).l
loc_201cda:
	tst.b ($ff151f).l
	bne.s loc_201cd0
	tst.b ($ff1520).l
	bne.s loc_201cd0
	move.w #$90,d0
	jmp (sub_205b9c).l
loc_201cf4:
	rts

sub_201cf6:
	bclr.b #$7,($f63a).w
	beq.s loc_201d30
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201d16
loc_201d0c:
	move.w #$d6,d0
	jmp (sub_205b9c).l
loc_201d16:
	tst.b ($ff151f).l
	bne.s loc_201d0c
	tst.b ($ff1520).l
	bne.s loc_201d0c
	move.w #$91,d0
	jmp (sub_205b9c).l
loc_201d30:
	rts
loc_201d32:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201dbe
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201d6e
	move.w #$700,d0
loc_201d6a:
	dbf d0,loc_201d6a
loc_201d6e:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201da4(pc,d0.w),d0
	jsr dat_201da4(pc,d0.w)
loc_201d84:
	jsr (sub_20241c).l
	tst.b ($f63a).w
	bne.s loc_201d98
	bsr.w sub_2021d0
	bsr.w sub_2021be
loc_201d98:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201da4:
	.incbin 7588, 26
loc_201dbe:
	tst.b ($ff1957).l
	beq.w loc_201d84
	cmpi.b #$2,($ff1506).l
	bne.w loc_201d84
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201dec
	move.w #$700,d0
loc_201de8:
	dbf d0,loc_201de8
loc_201dec:
	move.w #$1,($f6fc).w
	jsr (sub_202390).l
	tst.b ($f64e).w
	bne.s loc_201e24
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201e48
loc_201e24:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201e48:
	move.w ($f624).w,(a5)
	jsr (sub_2023ac).l
	bra.w loc_201d84
	.incbin 7766, 60
	jsr (sub_202390).l
	bsr.w sub_20222c
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
	bsr.w sub_205abe
	tst.b ($f767).w
	beq.s loc_201f40
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f40:
	jsr (sub_20fc16).l
	jsr (sub_2023ac).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202fce
	bsr.w sub_2026a0
	jmp (loc_20a7d6).l
	dc.b $4e,$75
	jsr (sub_202390).l
	bsr.w sub_20222c
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
	jsr (sub_2023ac).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202fce
	bra.w loc_202684
	.incbin 8216, 16
	bsr.w sub_202114
	cmpi.b #$1,($ff1903).l
	bne.s loc_20204a
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_20204a:
	move.w ($f624).w,(a5)
	bra.w loc_202684
	.incbin 8274, 46
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
	jsr (sub_2023ac).l
	lea ($d000).w,a0
	bsr.w sub_205abe
	tst.b ($f767).w
	beq.s loc_202106
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202106:
	tst.w ($f614).w
	beq.w loc_202112
	subq.w #$1,($f614).w
loc_202112:
	rts

sub_202114:
	jsr (sub_202390).l
	bsr.w sub_20222c
	tst.b ($f64e).w
	bne.s loc_20214a
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_20216e
loc_20214a:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20216e:
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
	jmp (sub_2023ac).l
	dc.b $4e,$73

sub_2021be:
	tst.b ($d02a).w
	bne.s loc_2021ce
	tst.w ($f786).w
	beq.s loc_2021ce
	addq.w #$1,($f786).w
loc_2021ce:
	rts

sub_2021d0:
	tst.w ($f780).w
	beq.s loc_2021da
	addq.w #$1,($f780).w
loc_2021da:
	tst.w ($f782).w
	beq.s loc_2021e4
	addq.w #$1,($f782).w
loc_2021e4:
	rts
	.incbin 8678, 42

sub_202210:
	bsr.w sub_202390
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2023ac

sub_20222c:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20223a
	addq.w #$2,a1

sub_20223a:
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

sub_202268:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2022e4).l,a2
	moveq #$12,d7
loc_20227c:
	move.w (a2)+,(a0)
	dbf d7,loc_20227c
	move.w (dat_2022e6).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2022a2:
	move.w d0,(a1)
	dbf d7,loc_2022a2
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2022d4:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022d4
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2022e4:
	dc.b $80,$04
dat_2022e6:
	.incbin 8934, 36

sub_20230a:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20232c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20232c
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20235a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20235a
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202378:
	move.l d0,(a1)+
	dbf d1,loc_202378
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202388:
	move.l d0,(a1)+
	dbf d1,loc_202388
	rts

sub_202390:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2023a0:
	btst.b #$0,($a11100).l
	bne.s loc_2023a0
	rts

sub_2023ac:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9146, 62

sub_2023f8:
	tst.b ($f00a).w
	bne.s loc_202404
	move.b d0,($f00a).w
	rts
loc_202404:
	tst.b ($f00b).w
	bne.s loc_202410
	move.b d0,($f00b).w
	rts
loc_202410:
	tst.b ($f00c).w
	bne.s loc_20241a
	move.b d0,($f00c).w
loc_20241a:
	rts

sub_20241c:
	jsr (sub_202390).l
	tst.b ($f00a).w
	beq.s loc_202436
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202436:
	tst.b ($f00b).w
	beq.s loc_20244a
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20244a:
	tst.b ($f00c).w
	beq.s loc_20245e
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_20245e:
	bra.w sub_2023ac
	.incbin 9314, 32

sub_202482:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202544).l,a3
	lea ($c00000).l,a4
	bra.s loc_20249e

sub_202494:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20255a).l,a3
loc_20249e:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2024ac
	adda.w #$a,a3
loc_2024ac:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202570
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2024cc
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2024cc:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202518
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2024f4
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2024f4:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202502:
	lsr.w #$4,d0
loc_202504:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202512
	jmp (a3)

sub_20250e:
	moveq #$0,d4
	moveq #$8,d3
loc_202512:
	dbf d0,loc_202504
	bra.s sub_2024cc
loc_202518:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202526
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202526:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202502
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202502
loc_202544:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20250e
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20250e
	rts
dat_20255a:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20250e
	rts

sub_202570:
	move.b (a0)+,d0
loc_202572:
	cmpi.b #$ff,d0
	bne.s loc_20257a
	rts
loc_20257a:
	move.w d0,d7
loc_20257c:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202572
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
	bne.s loc_2025aa
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_20257c
loc_2025aa:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2025b6:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2025b6
	bra.s loc_20257c

sub_2025c2:
	movem.l a1-a2,-(a7)
	lea (dat_20fd9a).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2025da:
	tst.l (a2)
	beq.s loc_2025e2
	addq.w #$6,a2
	bra.s loc_2025da
loc_2025e2:
	move.w (a1)+,d0
	bmi.s loc_2025ee
loc_2025e6:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2025e6
loc_2025ee:
	movem.l (a7)+,a1-a2
	rts
loc_2025f4:
	movem.l a1-a2,-(a7)
	lea (dat_20fd9a).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202620
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20261a
loc_202612:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202612
loc_20261a:
	movem.l (a7)+,a1-a2
	rts

sub_202620:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202626:
	clr.l (a2)+
	dbf d0,loc_202626
	rts

sub_20262e:
	tst.l ($f680).w
	beq.s loc_202682
	tst.w ($f6f8).w
	bne.s loc_202682
	movea.l ($f680).w,a0
	lea (loc_202544).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202650
	adda.w #$a,a3
loc_202650:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202570
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
loc_202682:
	rts
loc_202684:
	tst.w ($f6f8).w
	beq.w loc_202722
loc_20268c:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2026be

sub_2026a0:
	tst.w ($f6f8).w
	beq.s loc_202722
	tst.b ($f744).w
	bne.s loc_20268c
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2026be:
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
loc_2026f2:
	movea.w #$8,a5
	bsr.w sub_20250e
	subq.w #$1,($f6f8).w
	beq.s loc_202724
	subq.w #$1,($f6fa).w
	bne.s loc_2026f2
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202722:
	rts
loc_202724:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20272a:
	move.l $6(a0),(a0)+
	dbf d0,loc_20272a
	rts

sub_202734:
	lea (dat_20fd9a).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202746:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202482
	dbf d1,loc_202746
	rts
	.incbin 10086, 542

sub_202984:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2029e0).l,a0
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
	bra.w loc_2029ec
dat_2029e0:
	dc.b $00,$04,$00,$00,$1e,$97,$00,$00
	dc.b $07,$10,$00,$60
loc_2029ec:
	tst.b ($ff1522).l
	beq.s loc_202a0c
	jsr (sub_20684c).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202a0a
	moveq #$0,d0
loc_202a0a:
	bra.s loc_202a22
loc_202a0c:
	lea (dat_202a5e).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202a22:
	subi.w #$a0,d1
	bcc.s loc_202a2a
	moveq #$0,d1
loc_202a2a:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202a34
	move.w d2,d1
loc_202a34:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202a40
	moveq #$0,d0
loc_202a40:
	cmp.w ($f72e).w,d0
	blt.s loc_202a4a
	move.w ($f72e).w,d0
loc_202a4a:
	move.w d0,($f704).w
	bsr.w sub_202a66
	lea (dat_202a62).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202a5e:
	dc.b $00,$2e,$04,$8c
dat_202a62:
	dc.b $7f,$7f,$7f,$7f

sub_202a66:
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

sub_202a92:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202a9e
	rts
loc_202a9e:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202c44
	bsr.w sub_202ce4
	bsr.w sub_20356a
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202f6e
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202f3a
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202f06
	move.l ($f704).w,d0
	lsr.l #$3,d0
	swap d0
	bsr.w sub_202ed6
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
	bsr.w sub_202bb8
	move.w ($f718).w,d0
	neg.w d0
	moveq #$d,d6
loc_202b44:
	move.w d0,(a1)+
	dbf d6,loc_202b44
	bsr.w sub_202b88
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202b56:
	move.w d0,(a1)+
	dbf d6,loc_202b56
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202c02
dat_202b7a:
	dc.b $09,$01,$01,$00,$00,$00,$00,$00
dat_202b82:
	dc.b $03,$03,$03,$03,$03,$00

sub_202b88:
	move.w ($f718).w,d0
	move.w ($f710).w,d2
	moveq #$7,d6
	bsr.w sub_202bf0
	move.w ($f718).w,d3
	moveq #$6,d6
loc_202b9c:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b7a(pc,d6.w),d5
loc_202ba6:
	move.w d0,(a1)+
	dbf d5,loc_202ba6
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b9c
	rts

sub_202bb8:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	moveq #$5,d6
	bsr.w sub_202bf0
	move.w ($f708).w,d3
	moveq #$4,d6
	adda.w #$28,a1
loc_202bd0:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b82(pc,d6.w),d5
loc_202bda:
	move.w d0,-(a1)
	dbf d5,loc_202bda
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202bd0
	adda.w #$28,a1
	rts

sub_202bf0:
	sub.w d0,d2
	ext.l d2
	moveq #$5,d1
	asl.l d1,d2
	divu.w d6,d2
	ext.l d2
	moveq #$b,d1
	asl.l d1,d2
	rts
loc_202c02:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c10(pc,d2.w)
loc_202c0e:
	move.w (a2)+,d0
loc_202c10:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c0e
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
	dbf d1,loc_202c0e
	rts

sub_202c44:
	move.w ($f700).w,d4
	bsr.s sub_202c78
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202c76
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202c70
	bset.b #$2,($f754).w
	rts
loc_202c70:
	bset.b #$3,($f754).w
loc_202c76:
	rts

sub_202c78:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202c8a
	bcs.s loc_202cba
	bra.s loc_202c90
loc_202c8a:
	clr.w ($f73a).w
	rts
loc_202c90:
	cmpi.w #$10,d0
	blt.s loc_202c9a
	move.w #$10,d0
loc_202c9a:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202ca8
	move.w ($f72a).w,d0
loc_202ca8:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202cba:
	cmpi.w #$fff0,d0
	bge.s loc_202cc4
	move.w #$fff0,d0
loc_202cc4:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202ca8
	move.w ($f728).w,d0
	bra.s loc_202ca8
	.incbin 11476, 16

sub_202ce4:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202cf8
	subq.w #$5,d0
loc_202cf8:
	btst.b #$1,$22(a6)
	beq.s loc_202d18
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202d64
	subi.w #$40,d0
	bcc.s loc_202d64
	tst.b ($f75c).w
	bne.s loc_202d76
	bra.s loc_202d24
loc_202d18:
	sub.w ($f73e).w,d0
	bne.s loc_202d2a
	tst.b ($f75c).w
	bne.s loc_202d76
loc_202d24:
	clr.w ($f73c).w
	rts
loc_202d2a:
	cmpi.w #$60,($f73e).w
	bne.s loc_202d52
	move.w $14(a6),d1
	bpl.s loc_202d3a
	neg.w d1
loc_202d3a:
	cmpi.w #$800,d1
	bcc.s loc_202d64
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202dc4
	cmpi.w #$fffa,d0
	blt.s loc_202d8e
	bra.s loc_202d7c
loc_202d52:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202dc4
	cmpi.w #$fffe,d0
	blt.s loc_202d8e
	bra.s loc_202d7c
loc_202d64:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202dc4
	cmpi.w #$fff0,d0
	blt.s loc_202d8e
	bra.s loc_202d7c
loc_202d76:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202d7c:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202dce
	bra.w loc_202d9a
loc_202d8e:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d9a:
	cmp.w ($f72c).w,d1
	bgt.s loc_202df2
	cmpi.w #$ff00,d1
	bgt.s loc_202dbe
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202df2
loc_202dbe:
	move.w ($f72c).w,d1
	bra.s loc_202df2
loc_202dc4:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202dce:
	cmp.w ($f72e).w,d1
	blt.s loc_202df2
	subi.w #$800,d1
	bcs.s loc_202dee
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202df2
loc_202dee:
	move.w ($f72e).w,d1
loc_202df2:
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
	bne.s loc_202e34
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202e2e
	bset.b #$0,($f754).w
	rts
loc_202e2e:
	bset.b #$1,($f754).w
loc_202e34:
	rts
	.incbin 11830, 118
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202ed4
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202ece
	bset.b #$4,($f756).w
	rts
loc_202ece:
	bset.b #$5,($f756).w
loc_202ed4:
	rts

sub_202ed6:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f04
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202efe
	bset.b #$0,($f756).w
	rts
loc_202efe:
	bset.b #$1,($f756).w
loc_202f04:
	rts

sub_202f06:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202f38
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202f32
	bset.b d6,($f756).w
	bra.s loc_202f38
loc_202f32:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202f38:
	rts

sub_202f3a:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202f6c
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202f66
	bset.b d6,($f758).w
	bra.s loc_202f6c
loc_202f66:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202f6c:
	rts

sub_202f6e:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202fa0
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f9a
	bset.b d6,($f75a).w
	bra.s loc_202fa0
loc_202f9a:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202fa0:
	rts
	.incbin 12194, 44

sub_202fce:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20308c
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203172
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203174
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20308a
	bclr.b #$0,(a2)
	beq.s loc_203040
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033a0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203176
loc_203040:
	bclr.b #$1,(a2)
	beq.s loc_20305a
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033a0
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203176
loc_20305a:
	bclr.b #$2,(a2)
	beq.s loc_203070
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033a0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031cc
loc_203070:
	bclr.b #$3,(a2)
	beq.s loc_20308a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2033a0
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2031cc
loc_20308a:
	rts

sub_20308c:
	lea (dat_203458).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_2030a8
	bclr.b #$1,(a2)
	beq.s loc_2030f2
	move.w #$e0,d4
loc_2030a8:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203122(pc,d0.w),a3
	beq.s loc_2030da
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033a0
	movem.l (a7)+,d4-d5
	bsr.w sub_203176
	movea.l (a7)+,a0
	bra.s loc_2030f2
loc_2030da:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033a2
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2031a2
	movea.l (a7)+,a0
loc_2030f2:
	tst.b (a2)
	bne.s loc_2030f8
	rts
loc_2030f8:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_20310c
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_20310c:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203132
dat_203122:
	.incbin 12578, 16
loc_203132:
	moveq #$f,d6
	move.l #$800000,d7
loc_20313a:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203166
	btst.b d0,(a2)
	beq.s loc_203166
	add.w d0,d0
	movea.l dat_203122(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203278
	movem.l (a7)+,d4-d5
	bsr.w sub_2033a0
	bsr.w sub_2031fa
	movem.l (a7)+,d4-d5/a0
loc_203166:
	addi.w #$10,d4
	dbf d6,loc_20313a
	clr.b (a2)
	rts

sub_203172:
	rts

sub_203174:
	rts

sub_203176:
	moveq #$15,d6

sub_203178:
	move.l #$800000,d7
	move.l d0,d1
loc_203180:
	movem.l d4-d5,-(a7)
	bsr.w sub_203278
	move.l d1,d0
	bsr.w sub_2031fa
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203180
	rts

sub_2031a2:
	move.l #$800000,d7
	move.l d0,d1
loc_2031aa:
	movem.l d4-d5,-(a7)
	bsr.w sub_20327a
	move.l d1,d0
	bsr.w sub_2031fa
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2031aa
	rts

sub_2031cc:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2031d6:
	movem.l d4-d5,-(a7)
	bsr.w sub_203278
	move.l d1,d0
	bsr.w sub_2031fa
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2031d6
	rts

sub_2031fa:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203236
	btst.b #$3,(a0)
	bne.s loc_203216
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203216:
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
loc_203236:
	btst.b #$3,(a0)
	bne.s loc_203258
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
loc_203258:
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

sub_203278:
	add.w (a3),d5

sub_20327a:
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
	beq.s loc_2032c8
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
loc_2032c8:
	rts
	.incbin 13002, 214

sub_2033a0:
	add.w (a3),d5

sub_2033a2:
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
	.incbin 13244, 28

sub_2033d8:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203402
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_20342a

sub_203402:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203406:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2033a0
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203178
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203406
	rts
loc_20342a:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20342e:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203458).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20348a
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_20342e
	rts
dat_203458:
	.incbin 13400, 34
dat_20347a:
	.incbin 13434, 16

sub_20348a:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20347a(pc,d0.w),a3
	beq.s loc_2034ac
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2033a0
	movem.l (a7)+,d4-d5
	bsr.w sub_203176
	bra.s loc_2034c0
loc_2034ac:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2033a2
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2031a2
loc_2034c0:
	rts

sub_2034c2:
	moveq #$0,d0
	lea (dat_20fd8a).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202494
	movea.l (a2)+,a0
	bsr.w sub_20351c
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20054a
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203506
	jmp (loc_20cf84).l
loc_203506:
	btst.b #$1,($ff151c).l
	beq.s loc_20351a
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20351a
	bsr.w sub_2025c2
loc_20351a:
	rts

sub_20351c:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203526:
	move.l d0,(a3)+
	dbf d1,loc_203526
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20353c
	lea ($a040).w,a3
	moveq #$2,d1

sub_20353c:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23903a).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203556:
	move.w d1,d0
	movea.l a3,a0
loc_20355a:
	move.b (a1)+,(a0)+
	dbf d0,loc_20355a
	lea $80(a3),a3
	dbf d2,loc_203556
	rts

sub_20356a:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2035e4(pc,d0.w),d0
	jsr dat_2035e4(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203590
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203590:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2035be
	bcc.s loc_2035c0
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2035b4
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2035b4:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2035be:
	rts
loc_2035c0:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2035d8
	btst.b #$1,($d022).w
	beq.s loc_2035d8
	add.w d1,d1
	add.w d1,d1
loc_2035d8:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2035e4:
	.incbin 13796, 392
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20377e(pc,d0.w),d0
	jmp dat_20377e(pc,d0.w)
dat_20377e:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$710,($f726).w
	rts
	.incbin 14220, 330

sub_2038d6:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2038de:
	move.b (a0),d0
	beq.s loc_2038f4
	add.w d0,d0
	add.w d0,d0
	lea (dat_203cf8).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2038f4:
	lea $40(a0),a0
	dbf d7,loc_2038de
	rts

sub_2038fe:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_20393c
	bpl.s loc_20392e
	btst.b #$1,$2c(a0)
	beq.s loc_20392e
	cmpi.w #$f800,$12(a0)
	bcs.s loc_20393c
loc_20392e:
	btst.b #$2,$2c(a0)
	bne.s loc_20393c
	addi.w #$38,$12(a0)
loc_20393c:
	tst.w $12(a0)
	bmi.s loc_203950
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203950
	move.w #$1000,$12(a0)
loc_203950:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203960:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_20399c
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_20399c
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_20399a
	neg.w d1
loc_20399a:
	add.w d1,d0
loc_20399c:
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

sub_2039b6:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203a26
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203a42
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203a42
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203a00
	cmpi.w #$800,d3
	bcs.s loc_203a12
	subi.w #$800,d3
	bra.s loc_203a12
loc_203a00:
	cmpi.w #$700,($f704).w
	bcs.s loc_203a12
	cmpi.w #$100,d3
	bcc.s loc_203a12
	addi.w #$800,d3
loc_203a12:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203a42
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203a42
loc_203a26:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203a42
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203a42:
	rts
	.incbin 14916, 30

sub_203a62:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203a68:
	move.l d1,(a1)+
	dbf d0,loc_203a68
	rts
dat_203a70:
	.incbin 14960, 16

sub_203a80:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203a8c:
	tst.w (a4)
	beq.w loc_203b4c
	moveq #$2,d6
loc_203a94:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203b44
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203afa
	movea.l dat_203a70(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203ade
	cmpi.w #$800,d2
	bcs.s loc_203af0
	subi.w #$800,d2
	bra.s loc_203af0
loc_203ade:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203af0
	cmpi.w #$100,d2
	bcc.s loc_203af0
	addi.w #$800,d2
loc_203af0:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203b1c
loc_203afa:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203b1c
	.incbin 15108, 24
loc_203b1c:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203b3a
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203b3e
loc_203b3a:
	bsr.w sub_203b6e
loc_203b3e:
	bset.b #$7,$1(a0)
loc_203b44:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203a94
loc_203b4c:
	lea $80(a4),a4
	dbf d7,loc_203a8c
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203b66
	move.l #$0,(a2)
	rts
loc_203b66:
	move.b #$0,-$5(a2)
	rts

sub_203b6e:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203bb4
	btst.l #$1,d4
	bne.w loc_203c02
loc_203b80:
	cmpi.b #$50,d5
	beq.s loc_203bb2
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
	bne.s loc_203bac
	addq.w #$1,d0
loc_203bac:
	move.w d0,(a2)+
	dbf d1,loc_203b80
loc_203bb2:
	rts
loc_203bb4:
	btst.l #$1,d4
	bne.w loc_203c48
loc_203bbc:
	cmpi.b #$50,d5
	beq.s loc_203c00
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
	bne.s loc_203bfa
	addq.w #$1,d0
loc_203bfa:
	move.w d0,(a2)+
	dbf d1,loc_203bbc
loc_203c00:
	rts
loc_203c02:
	cmpi.b #$50,d5
	beq.s loc_203c46
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
	bne.s loc_203c40
	addq.w #$1,d0
loc_203c40:
	move.w d0,(a2)+
	dbf d1,loc_203c02
loc_203c46:
	rts
loc_203c48:
	cmpi.b #$50,d5
	beq.s loc_203c9a
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
	bne.s loc_203c94
	addq.w #$1,d0
loc_203c94:
	move.w d0,(a2)+
	dbf d1,loc_203c48
loc_203c9a:
	rts
	.incbin 15516, 92
dat_203cf8:
	.incbin 15608, 274

sub_203e0a:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203e1c
	move.w #$0,(a1)
	rts
loc_203e1c:
	tst.w (a1)
	bne.s loc_203e26
	move.b #$1,$1(a1)
loc_203e26:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203e70
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203e62
	neg.w $10(a0)
loc_203e62:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205b9c
loc_203e70:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203e8e
	cmpa.w #$d040,a0
	beq.s loc_203e8e
	tst.b ($ff1906).l
	beq.s loc_203e8e
	jmp (loc_207216).l
loc_203e8e:
	move.b $2a(a0),d0
	beq.s loc_203eb8
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203eaa
	cmpi.b #$2d,d0
	bcs.s loc_203eb4
	move.b #$2d,d0
	bra.s loc_203eb4
loc_203eaa:
	cmpi.b #$1e,d0
	bcs.s loc_203eb4
	move.b #$1e,d0
loc_203eb4:
	move.b d0,$2a(a0)
loc_203eb8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203ec6(pc,d0.w),d1
	jmp dat_203ec6(pc,d1.w)
dat_203ec6:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203ed0:
	tst.b ($d300).w
	bne.s loc_203f0e
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203f0e:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203f36
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203f36:
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203f6a:
	tst.b ($ff1506).l
	bne.s loc_203fd0
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203fd0
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203fd4
	cmpi.b #$2f,d1
	bne.s loc_203fd2
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203fd0
	tst.b $2c(a0)
	beq.s loc_203fd0
	jsr (sub_20764e).l
	bne.s loc_203fd0
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203fc8
	moveq #$0,d0
loc_203fc8:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203fd0:
	rts
loc_203fd2:
	rts

sub_203fd4:
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

sub_203ffa:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204006
	neg.w d0
loc_204006:
	btst.b #$1,$2c(a0)
	beq.s loc_204016
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_20403e
loc_204016:
	cmpi.w #$600,d0
	bcs.s loc_20403e
	tst.w $14(a0)
	bpl.s loc_204030
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_20404c
	move.w #$e0,d1
	bra.s loc_20404c
loc_204030:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_20404c
	move.w #$60,d1
	bra.s loc_20404c
loc_20403e:
	cmpi.w #$a0,d1
	beq.s loc_20404c
	bcc.s loc_20404a
	addq.w #$2,d1
	bra.s loc_20404c
loc_20404a:
	subq.w #$2,d1
loc_20404c:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203ffa
	bsr.w sub_203f6a
	tst.w ($ff1588).l
	beq.s loc_204072
	btst.b #$4,($f605).w
	beq.s loc_204072
	move.b #$1,($ff1906).l
	rts
loc_204072:
	tst.b ($f7cc).w
	bne.s loc_20407e
	move.w ($f604).w,($f602).w
loc_20407e:
	btst.b #$0,$2c(a0)
	beq.s loc_2040a2
	cmpi.b #$6,($ff1506).l
	bne.s loc_20409c
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2040ba
loc_20409c:
	bsr.w sub_204384
	bra.s loc_2040ba
loc_2040a2:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204100(pc,d0.w),d1
	jsr dat_204100(pc,d1.w)
	jsr (sub_2066a4).l
loc_2040ba:
	bsr.s sub_20410e
	bsr.w sub_2041ce
	bsr.w sub_2041e8
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2040e2
	tst.b $1c(a0)
	bne.s loc_2040e2
	move.b $1d(a0),$1c(a0)
loc_2040e2:
	bsr.w sub_20558c
	tst.b $2c(a0)
	bmi.s loc_2040fa
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2040fa
	jsr (sub_206d1c).l
loc_2040fa:
	bsr.w sub_205442
	rts
dat_204100:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_20410e:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204132
	move.w $30(a0),d0
	beq.s loc_204124
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204132
loc_204124:
	btst.b #$6,$2c(a0)
	bne.s loc_204132
	jsr (sub_2039b6).l
loc_204132:
	tst.b ($ff151f).l
	beq.s loc_204176
	tst.w $32(a0)
	beq.s loc_204176
	subq.w #$1,$32(a0)
	bne.s loc_204176
	tst.b ($ff1520).l
	bne.s loc_20416e
	tst.b ($ff1958).l
	bne.s loc_20416e
	tst.b ($ff152e).l
	bne.s loc_204168
	move.w #$e,d0
	jsr (sub_205b9c).l
loc_204168:
	jsr (sub_201bec).l
loc_20416e:
	move.b #$0,($ff151f).l
loc_204176:
	tst.b ($ff1520).l
	beq.s loc_2041cc
	tst.w $34(a0)
	beq.s loc_2041cc
	subq.w #$1,$34(a0)
	bne.s loc_2041cc
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2041c4
	tst.b ($ff1958).l
	bne.s loc_2041c4
	tst.b ($ff152e).l
	bne.s loc_2041be
	move.w #$e,d0
	jsr (sub_205b9c).l
loc_2041be:
	jsr (sub_201bec).l
loc_2041c4:
	move.b #$0,($ff1520).l
loc_2041cc:
	rts

sub_2041ce:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2041e8:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2041f4
loc_2041f2:
	rts
loc_2041f4:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204206
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2041f2
loc_204206:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20424a
	bset.b #$6,$22(a0)
	bne.s loc_2041f2
	bsr.w sub_205ea0
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2041f2
	bra.s loc_204282
loc_20424a:
	tst.w $12(a0)
	beq.s loc_204252
	bpl.s loc_2041f2
loc_204252:
	bclr.b #$6,$22(a0)
	beq.s loc_2041f2
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2041f2
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204282
	move.w #$f000,$12(a0)
loc_204282:
	jsr (sub_20764e).l
	bne.s loc_204296
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204296:
	rts

sub_204298:
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
	bcs.s loc_204372
	move.l #$50000,d0
loc_204372:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204384:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2043aa
	tst.b ($ff152e).l
	beq.s loc_2043a0
	cmpi.b #$2,($ff152e).l
	bne.s loc_2043aa
loc_2043a0:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20445a
loc_2043aa:
	tst.b $2a(a0)
	bne.w loc_204468
	tst.b ($f784).w
	beq.w loc_204468
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2043c8
	neg.w d0
loc_2043c8:
	tst.w ($f786).w
	bne.s loc_2043d4
	move.w #$1,($f786).w
loc_2043d4:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2043ea
	move.b #$1,($ff1502).l
	bra.w loc_205b98
loc_2043ea:
	cmpi.w #$d2,d1
	bcs.s loc_20443e
	cmpi.b #$2,($ff1522).l
	beq.s loc_20443c
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204414
	move.w #$82,d0
	jsr (sub_205b9c).l
	moveq #$0,d0
loc_204414:
	add.b ($f784).w,d0
	bpl.s loc_20441e
	moveq #$0,d0
	bra.s loc_204426
loc_20441e:
	cmpi.b #$3,d0
	bcs.s loc_204426
	moveq #$2,d0
loc_204426:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204298
	move.b #$2,($ff1522).l
loc_20443c:
	rts
loc_20443e:
	cmpi.w #$5a,d1
	bcc.s loc_204456
	cmp.w d2,d0
	bcc.w loc_203ed0
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204456:
	cmp.w d2,d0
	bcc.s loc_204468
loc_20445a:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204468:
	rts
	bsr.w sub_203e0a
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20449a
	tst.b ($ff195b).l
	beq.s loc_204488
	cmpi.b #$79,$1a(a0)
	bne.s loc_2044c4
	bra.s loc_204490
loc_204488:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2044c4
loc_204490:
	bsr.w sub_204d2c
	jmp (sub_2038fe).l
loc_20449a:
	bsr.w sub_204572
	bsr.w sub_204384
	bsr.w sub_204e16
	bsr.w sub_204f42
	bsr.w sub_2045e6
	bsr.w sub_204d98
	bsr.w sub_204d2c
	jsr (sub_203960).l
	bsr.w sub_200cfc
	bsr.w sub_204fc0
loc_2044c4:
	rts
	tst.b ($f7c7).w
	bne.s loc_2044e0
	cmpi.b #$15,$1c(a0)
	beq.s loc_2044e0
	tst.w $12(a0)
	bmi.s loc_2044e0
	move.b #$0,$1c(a0)
loc_2044e0:
	bsr.w sub_204572
	bsr.w sub_204384
	bsr.w sub_204f00
	bsr.w sub_204c4c
	bsr.w sub_204d2c
	jsr (sub_2038fe).l
	btst.b #$6,$22(a0)
	beq.s loc_204508
	subi.w #$28,$12(a0)
loc_204508:
	bsr.w sub_20500a
	bsr.w sub_20502e
	rts
	bsr.w sub_204572
	bsr.w sub_204384
	bsr.w sub_204e16
	bsr.w sub_204f7e
	bsr.w sub_204a86
	bsr.w sub_204d2c
	tst.b $2a(a0)
	bne.s loc_204536
	jsr (sub_203960).l
loc_204536:
	bsr.w sub_200cfc
	bsr.w sub_204fc0
	rts
	bsr.w sub_204572
	bsr.w sub_204384
	bsr.w sub_204f00
	bsr.w sub_204c4c
	bsr.w sub_204d2c
	jsr (sub_2038fe).l
	btst.b #$6,$22(a0)
	beq.s loc_204568
	subi.w #$28,$12(a0)
loc_204568:
	bsr.w sub_20500a
	bsr.w sub_20502e
	rts

sub_204572:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2045de
	tst.w ($ff1506).l
	bne.s loc_2045de
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2045e0).l,a2
loc_2045a6:
	move.b (a2)+,d0
	bmi.s loc_2045b6
	cmp.b d0,d1
	bne.s loc_2045a6
	bset.b #$1,$2c(a0)
	rts
loc_2045b6:
	bclr.b #$1,$2c(a0)
	beq.s loc_2045de
	tst.w $12(a0)
	bpl.s loc_2045de
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2045de
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2045de
	neg.w $10(a0)
loc_2045de:
	rts
dat_2045e0:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2045e6:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204910
	tst.w $3e(a0)
	bne.w loc_2048c0
	btst.b #$2,($f602).w
	beq.s loc_20460e
	bsr.w sub_2049a0
loc_20460e:
	btst.b #$3,($f602).w
	beq.s loc_20461a
	bsr.w sub_204a16
loc_20461a:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2048c0
	tst.w $14(a0)
	beq.s loc_20463a
	tst.b $2a(a0)
	beq.w loc_2048c0
	bra.s loc_204646
loc_20463a:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204646:
	btst.b #$3,$22(a0)
	beq.s loc_204698
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2046f0
	cmpi.b #$1e,$0(a1)
	bne.s loc_204678
	move.b #$0,$1c(a0)
	bra.w loc_2048c0
loc_204678:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2046d4
	cmp.w d2,d1
	bge.s loc_2046c2
	bra.s loc_2046f0
loc_204698:
	jsr (sub_206a80).l
	cmpi.w #$c,d1
	blt.s loc_2046f0
	move.w #$ab,d0
	jsr (sub_2023f8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2046cc
loc_2046c2:
	btst.b #$0,$22(a0)
	bne.s loc_2046dc
	bra.s loc_2046e6
loc_2046cc:
	cmpi.b #$3,$37(a0)
	bne.s loc_2046f0
loc_2046d4:
	btst.b #$0,$22(a0)
	bne.s loc_2046e6
loc_2046dc:
	move.b #$32,$1c(a0)
	bra.w loc_2048c0
loc_2046e6:
	move.b #$6,$1c(a0)
	bra.w loc_2048c0
loc_2046f0:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204704
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204704:
	btst.b #$7,($f788).w
	bne.w loc_204808
	btst.b #$6,($f788).w
	bne.w loc_204828
	btst.b #$1,($f602).w
	bne.w loc_204828
	andi.b #$f,($f788).w
	beq.s loc_20473c
	btst.b #$0,($f603).w
	beq.s loc_204750
	bset.b #$7,($f788).w
	bra.w loc_2048e4
loc_20473c:
	btst.b #$0,($f603).w
	beq.w loc_204750
	move.b #$1,($f788).w
	bra.w loc_2048e4
loc_204750:
	btst.b #$0,($f602).w
	beq.s loc_2047cc
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2047ae
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204780
	asr.w #$1,d2
	sub.w d2,d1
loc_204780:
	btst.b #$0,$22(a0)
	beq.s loc_20478c
	neg.w d0
	neg.w d1
loc_20478c:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2047a2
	cmp.w d0,d1
	ble.s loc_2047a8
	bra.s loc_2047a6
loc_2047a2:
	cmp.w d1,d0
	ble.s loc_2047a8
loc_2047a6:
	move.w d1,d0
loc_2047a8:
	move.w d0,$14(a0)
	rts
loc_2047ae:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047c8
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2023f8).l
loc_2047c8:
	bra.w loc_2048e4
loc_2047cc:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2047ec
	move.w #$ab,d0
	jsr (sub_2023f8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204828
loc_2047ec:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2023f8).l
	bra.w loc_2048c0
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204808:
	btst.b #$0,($f602).w
	beq.s loc_204828
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2048e4
	addq.w #$2,($f73e).w
	bra.w loc_2048e4
loc_204828:
	btst.b #$6,($f788).w
	bne.w loc_2048a4
	andi.b #$f,($f788).w
	beq.s loc_20484c
	btst.b #$1,($f603).w
	beq.s loc_20485e
	bset.b #$6,($f788).w
	bra.w loc_2048e4
loc_20484c:
	btst.b #$1,($f603).w
	beq.s loc_20485e
	move.b #$1,($f788).w
	bra.w loc_2048e4
loc_20485e:
	btst.b #$1,($f602).w
	beq.s loc_2048c0
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2048a2
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048a2
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204894
	neg.w $14(a0)
loc_204894:
	move.w #$9c,d0
	jsr (sub_2023f8).l
	bsr.w sub_204dc0
loc_2048a2:
	bra.s loc_2048e4
loc_2048a4:
	btst.b #$1,($f602).w
	beq.s loc_2048c0
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2048e4
	subq.w #$2,($f73e).w
	bra.s loc_2048e4
loc_2048c0:
	cmpi.w #$60,($f73e).w
	bne.s loc_2048da
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2048e4
	move.b #$0,($f788).w
	bra.s loc_2048e4
loc_2048da:
	bcc.s loc_2048e0
	addq.w #$4,($f73e).w
loc_2048e0:
	subq.w #$2,($f73e).w
loc_2048e4:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204910
	move.w $14(a0),d0
	beq.s loc_204910
	bmi.s loc_204904
	sub.w d5,d0
	bcc.s loc_2048fe
	move.w #$0,d0
loc_2048fe:
	move.w d0,$14(a0)
	bra.s loc_204910
loc_204904:
	add.w d5,d0
	bcc.s loc_20490c
	move.w #$0,d0
loc_20490c:
	move.w d0,$14(a0)
loc_204910:
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_20492e:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_20499e
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_20499e
	bmi.s loc_204946
	neg.w d1
loc_204946:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206940
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_20499e
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20499a
	cmpi.b #$40,d0
	beq.s loc_204988
	cmpi.b #$80,d0
	beq.s loc_204982
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204982:
	sub.w d1,$12(a0)
	rts
loc_204988:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20499a:
	add.w d1,$12(a0)
loc_20499e:
	rts

sub_2049a0:
	tst.b $2a(a0)
	bne.s loc_204a14
	move.w $14(a0),d0
	beq.s loc_2049ae
	bpl.s loc_2049de
loc_2049ae:
	bset.b #$0,$22(a0)
	bne.s loc_2049c2
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2049c2:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_2049d2
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_2049d2
	move.w d1,d0
loc_2049d2:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2049de:
	sub.w d4,d0
	bcc.s loc_2049e6
	move.w #$ff80,d0
loc_2049e6:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a14
	cmpi.w #$400,d0
	blt.s loc_204a14
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023f8).l
loc_204a14:
	rts

sub_204a16:
	tst.b $2a(a0)
	bne.s loc_204a84
	move.w $14(a0),d0
	bmi.s loc_204a4e
	bclr.b #$0,$22(a0)
	beq.s loc_204a36
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a36:
	cmp.w d6,d0
	bge.s loc_204a42
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204a42
	move.w d6,d0
loc_204a42:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a4e:
	add.w d4,d0
	bcc.s loc_204a56
	move.w #$80,d0
loc_204a56:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a84
	cmpi.w #$fc00,d0
	bgt.s loc_204a84
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023f8).l
loc_204a84:
	rts

sub_204a86:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204bd0
	tst.w $3e(a0)
	bne.s loc_204abe
	btst.b #$2,($f602).w
	beq.s loc_204ab2
	bsr.w sub_204c06
loc_204ab2:
	btst.b #$3,($f602).w
	beq.s loc_204abe
	bsr.w sub_204c2a
loc_204abe:
	tst.b $2a(a0)
	beq.w loc_204b68
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204ade
	asr.w #$1,d2
	sub.w d2,d1
loc_204ade:
	btst.b #$0,$22(a0)
	beq.s loc_204aea
	neg.w d0
	neg.w d1
loc_204aea:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204b00
	cmp.w d0,d1
	ble.s loc_204b06
	bra.s loc_204b04
loc_204b00:
	cmp.w d1,d0
	ble.s loc_204b06
loc_204b04:
	move.w d1,d0
loc_204b06:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204b3a
	rts
loc_204b14:
	move.w #$ab,d0
	jsr (sub_2023f8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204b9a
loc_204b3a:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204b14
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2023f8).l
	btst.b #$0,$22(a0)
	bne.s loc_204b60
	bsr.w sub_204c2a
	bra.s loc_204b68
loc_204b60:
	bsr.w sub_204c06
	bra.s loc_204b68
	dc.b $4e,$75
loc_204b68:
	move.w $14(a0),d0
	beq.s loc_204b8a
	bmi.s loc_204b7e
	sub.w d5,d0
	bcc.s loc_204b78
	move.w #$0,d0
loc_204b78:
	move.w d0,$14(a0)
	bra.s loc_204b8a
loc_204b7e:
	add.w d5,d0
	bcc.s loc_204b86
	move.w #$0,d0
loc_204b86:
	move.w d0,$14(a0)
loc_204b8a:
	tst.w $14(a0)
	bne.s loc_204bd0
	move.w #$ab,d0
	jsr (sub_2023f8).l
loc_204b9a:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204bba
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204bca
loc_204bba:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204bca:
	move.b #$5,$1c(a0)
loc_204bd0:
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204bf4
	move.w #$1000,d1
loc_204bf4:
	cmpi.w #$f000,d1
	bge.s loc_204bfe
	move.w #$f000,d1
loc_204bfe:
	move.w d1,$10(a0)
	bra.w loc_20492e

sub_204c06:
	move.w $14(a0),d0
	beq.s loc_204c0e
	bpl.s loc_204c1c
loc_204c0e:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204c1c:
	sub.w d4,d0
	bcc.s loc_204c24
	move.w #$ff80,d0
loc_204c24:
	move.w d0,$14(a0)
	rts

sub_204c2a:
	move.w $14(a0),d0
	bmi.s loc_204c3e
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204c3e:
	add.w d4,d0
	bcc.s loc_204c46
	move.w #$80,d0
loc_204c46:
	move.w d0,$14(a0)
	rts

sub_204c4c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204c86
	tst.w ($ff1506).l
	bne.s loc_204c86
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204c7e
	cmpi.w #$840,$8(a0)
	bcc.s loc_204c7e
	rts
loc_204c7e:
	btst.b #$1,$2c(a0)
	bne.s loc_204cb6
loc_204c86:
	btst.b #$2,($f602).w
	beq.s loc_204ca0
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204ca0
	move.w d1,d0
loc_204ca0:
	btst.b #$3,($f602).w
	beq.s loc_204cb6
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204cb6
	move.w d6,d0
loc_204cb6:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204ccc
	bcc.s loc_204cc8
	addq.w #$4,($f73e).w
loc_204cc8:
	subq.w #$2,($f73e).w
loc_204ccc:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204cfa
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204cfa
	bmi.s loc_204cee
	sub.w d1,d0
	bcc.s loc_204ce8
	move.w #$0,d0
loc_204ce8:
	move.w d0,$10(a0)
	rts
loc_204cee:
	sub.w d1,d0
	bcs.s loc_204cf6
	move.w #$0,d0
loc_204cf6:
	move.w d0,$10(a0)
loc_204cfa:
	rts
	.incbin 19708, 48

sub_204d2c:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204d80
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204d5a
	addi.w #$38,d0
loc_204d5a:
	cmp.w d1,d0
	bls.s loc_204d80
loc_204d5e:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204d6e
	rts
loc_204d6e:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206ff4
	move.b #$6,$24(a0)
	rts
loc_204d80:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204d5e

sub_204d98:
	tst.b ($f7ca).w
	bne.s loc_204dbe
	move.w $14(a0),d0
	bpl.s loc_204da6
	neg.w d0
loc_204da6:
	cmpi.w #$80,d0
	bcs.s loc_204dbe
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204dbe
	btst.b #$1,($f602).w
	bne.s sub_204dc0
loc_204dbe:
	rts

sub_204dc0:
	btst.b #$2,$22(a0)
	beq.s loc_204dca
	bra.s loc_204dfa
loc_204dca:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204dea
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204dfa
loc_204dea:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204dfa:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204e14
	cmpi.w #$200,$14(a0)
	bcc.s loc_204e14
	move.w #$200,$14(a0)
loc_204e14:
	rts

sub_204e16:
	tst.b $2a(a0)
	beq.s loc_204e1e
	rts
loc_204e1e:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204e30
	tst.w $14(a0)
	beq.w loc_204ef6
loc_204e30:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204ef6
	btst.b #$3,$22(a0)
	beq.s loc_204e4c
	jsr (sub_205b22).l
	beq.s loc_204e7c
loc_204e4c:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2069aa
	cmpi.w #$6,d1
	blt.w loc_204ef6
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204e72
	move.w #$380,d2
loc_204e72:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204e7c:
	jsr (sub_2008fc).l
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
	jsr (sub_2023f8).l
	btst.b #$2,$22(a0)
	bne.s loc_204ef8
	tst.b ($ff195b).l
	beq.s loc_204eda
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204eea
loc_204eda:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204eea:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204ef6:
	rts
loc_204ef8:
	bset.b #$4,$22(a0)
	rts

sub_204f00:
	tst.b $3c(a0)
	beq.s loc_204f32
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204f16
	move.w #$fe00,d1
loc_204f16:
	cmp.w $12(a0),d1
	ble.s loc_204f30
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204f30
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204f30:
	rts
loc_204f32:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204f40
	move.w #$f040,$12(a0)
loc_204f40:
	rts

sub_204f42:
	tst.b $2a(a0)
	bne.s loc_204f7c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204f7c
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204f7c
	bmi.s loc_204f78
	tst.w d0
	beq.s loc_204f76
	add.w d0,$14(a0)
loc_204f76:
	rts
loc_204f78:
	add.w d0,$14(a0)
loc_204f7c:
	rts

sub_204f7e:
	tst.b $2a(a0)
	bne.s loc_204fbe
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204fbe
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204fb4
	tst.w d0
	bpl.s loc_204fae
	asr.l #$2,d0
loc_204fae:
	add.w d0,$14(a0)
	rts
loc_204fb4:
	tst.w d0
	bmi.s loc_204fba
	asr.l #$2,d0
loc_204fba:
	add.w d0,$14(a0)
loc_204fbe:
	rts

sub_204fc0:
	nop
	tst.b $38(a0)
	bne.s loc_205002
	tst.w $3e(a0)
	bne.s loc_205004
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205002
	move.w $14(a0),d0
	bpl.s loc_204fe4
	neg.w d0
loc_204fe4:
	cmpi.w #$280,d0
	bcc.s loc_205002
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205002:
	rts
loc_205004:
	subq.w #$1,$3e(a0)
	rts

sub_20500a:
	btst.b #$1,$2c(a0)
	bne.s loc_20502c
	move.b $26(a0),d0
	beq.s loc_20502c
	bpl.s loc_205022
	addq.b #$2,d0
	bcc.s loc_205020
	moveq #$0,d0
loc_205020:
	bra.s loc_205028
loc_205022:
	subq.b #$2,d0
	bcc.s loc_205028
	moveq #$0,d0
loc_205028:
	move.b d0,$26(a0)
loc_20502c:
	rts

sub_20502e:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200b94).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205112
	cmpi.b #$80,d0
	beq.w loc_205174
	cmpi.b #$c0,d0
	beq.w loc_2051d0
	bsr.w sub_206cc0
	tst.w d1
	bpl.s loc_205080
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205080:
	bsr.w sub_206b22
	tst.w d1
	bpl.s loc_205092
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205092:
	bsr.w sub_2069d2
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205110
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2050b0
	cmp.b d2,d0
	blt.s loc_205110
loc_2050b0:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205232
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2050ee
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2050e0
	asr.w $12(a0)
	bra.s loc_205102
loc_2050e0:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2050ee:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205102
	move.w #$fc0,$12(a0)
loc_205102:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205110
	neg.w $14(a0)
loc_205110:
	rts
loc_205112:
	bsr.w sub_206cc0
	tst.w d1
	bpl.s loc_20512c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20512c:
	bsr.w sub_206b7a
	tst.w d1
	bpl.s loc_205146
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205144
	move.w #$0,$12(a0)
loc_205144:
	rts
loc_205146:
	tst.w $12(a0)
	bmi.s loc_205172
	bsr.w sub_2069d2
	tst.w d1
	bpl.s loc_205172
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205232
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205172:
	rts
loc_205174:
	bsr.w sub_206cc0
	tst.w d1
	bpl.s loc_205186
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205186:
	bsr.w sub_206b22
	tst.w d1
	bpl.s loc_205198
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205198:
	bsr.w sub_206b7a
	tst.w d1
	bpl.s loc_2051ce
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2051b8
	move.w #$0,$12(a0)
	rts
loc_2051b8:
	move.b d3,$26(a0)
	bsr.w sub_2052a4
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2051ce
	neg.w $14(a0)
loc_2051ce:
	rts
loc_2051d0:
	bsr.w sub_206b22
	tst.w d1
	bpl.s loc_2051ea
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2051ea:
	bsr.w sub_206b7a
	tst.w d1
	bpl.s loc_205204
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205202
	move.w #$0,$12(a0)
loc_205202:
	rts
loc_205204:
	tst.w $12(a0)
	bmi.s loc_205230
	bsr.w sub_2069d2
	tst.w d1
	bpl.s loc_205230
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205232
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205230:
	rts

sub_205232:
	btst.b #$4,$22(a0)
	beq.s loc_20523c
	nop
loc_20523c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205296
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205276
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205286
loc_205276:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205286:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2023f8).l
loc_205296:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2052a4:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21188, 382

sub_205442:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20546a
	cmpi.b #$5,($ff1506).l
	beq.s loc_20546a
	cmpi.b #$2,($ff1506).l
	beq.s loc_20546a
	tst.b ($ff1506).l
	bne.w loc_20552c
loc_20546a:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2054a8
	tst.b ($ff1506).l
	bne.w loc_20552e
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_20552e
	bra.s loc_2054b0
loc_2054a8:
	cmp.b ($f7af).w,d1
	beq.w loc_20552e
loc_2054b0:
	cmp.b ($f7ac).w,d1
	beq.s loc_2054e0
	cmp.b ($f7ad).w,d1
	beq.s loc_2054c4
	bclr.b #$6,$1(a0)
	rts
loc_2054c4:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205546
	btst.b #$1,$22(a0)
	beq.s loc_2054e0
	bclr.b #$6,$1(a0)
	rts
loc_2054e0:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2054f2
	bclr.b #$6,$1(a0)
	rts
loc_2054f2:
	cmpi.b #$e0,d2
	bcs.s loc_205500
	bset.b #$6,$1(a0)
	rts
loc_205500:
	btst.b #$6,$1(a0)
	bne.s loc_20551c
	move.b $26(a0),d1
	beq.s loc_20552c
	cmpi.b #$80,d1
	bhi.s loc_20552c
	bset.b #$6,$1(a0)
	rts
loc_20551c:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20552c
	bclr.b #$6,$1(a0)
loc_20552c:
	rts
loc_20552e:
	btst.b #$2,$22(a0)
	bne.s loc_205540
	move.w #$9c,d0
	jsr (sub_2023f8).l
loc_205540:
	jmp (sub_204dc0).l
loc_205546:
	tst.w $12(a0)
	bmi.s loc_20558a
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_20557e
	cmpi.w #$38,d1
	bcs.s loc_205576
	cmpi.w #$80,d1
	bcs.s loc_20558a
loc_20556e:
	bclr.b #$6,$1(a0)
	rts
loc_205576:
	bset.b #$6,$1(a0)
	rts
loc_20557e:
	cmpi.w #$38,d1
	bcs.s loc_20556e
	cmpi.w #$80,d1
	bcc.s loc_205576
loc_20558a:
	rts

sub_20558c:
	lea (dat_20587c).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2055ae
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2055ae:
	bsr.w sub_20581e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205626
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2055f4
	move.b d0,$1e(a0)

sub_2055d8:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2055ec
	bpl.s loc_2055ec
	cmpi.b #$fd,d0
	bge.s loc_2055f6
loc_2055ec:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2055f4:
	rts
loc_2055f6:
	addq.b #$1,d0
	bne.s loc_205606
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2055ec
loc_205606:
	addq.b #$1,d0
	bne.s loc_20561a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2055ec
loc_20561a:
	addq.b #$1,d0
	bne.s loc_205624
	move.b $2(a1,d1.w),$1c(a0)
loc_205624:
	rts
loc_205626:
	subq.b #$1,$1e(a0)
	bpl.s loc_2055f4
	addq.b #$1,d0
	bne.w loc_2056e0
	tst.b ($ff195b).l
	bne.w loc_2057a8
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20564e
	not.b d0
loc_20564e:
	btst.b #$1,$2c(a0)
	bne.s loc_20565c
	addi.b #$10,d0
	bra.s loc_20565e
loc_20565c:
	addq.b #$8,d0
loc_20565e:
	bpl.s loc_205662
	moveq #$3,d1
loc_205662:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205754
	move.w $14(a0),d2
	bpl.s loc_205680
	neg.w d2
loc_205680:
	btst.b #$1,$2c(a0)
	beq.s loc_205698
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205a7e).l,a1
	bra.s loc_2056c2
loc_205698:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205a58).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2056c2
	lea (dat_2058fc).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2056c2
	lea (dat_2058f4).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2056c2:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2056d0
	moveq #$0,d2
loc_2056d0:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2055d8
	add.b d3,$1a(a0)
	rts
loc_2056e0:
	addq.b #$1,d0
	bne.s loc_205750
	move.w $14(a0),d2
	bpl.s loc_2056ec
	neg.w d2
loc_2056ec:
	lea (dat_2059da).l,a1
	tst.b ($ff195b).l
	bne.s loc_20572a
	lea (dat_20590c).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20571e
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20572a
	lea (dat_205a86).l,a1
	bra.s loc_20572a
loc_20571e:
	cmpi.w #$600,d2
	bcc.s loc_20572a
	lea (dat_205904).l,a1
loc_20572a:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205734
	moveq #$0,d2
loc_205734:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2055d8
loc_205750:
	addq.b #$1,d0
	bne.s loc_205794
loc_205754:
	move.w $14(a0),d2
	bmi.s loc_20575c
	neg.w d2
loc_20575c:
	addi.w #$800,d2
	bpl.s loc_205764
	moveq #$0,d2
loc_205764:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2059ec).l,a1
	tst.b ($ff195b).l
	bne.s loc_20577e
	lea (dat_205914).l,a1
loc_20577e:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2055d8
loc_205794:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2057a8:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2057ba
	not.b d0
loc_2057ba:
	addi.b #$10,d0
	bpl.s loc_2057c2
	moveq #$0,d1
loc_2057c2:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2057f0
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2056e0
loc_2057f0:
	move.w $14(a0),d2
	bpl.s loc_2057f8
	neg.w d2
loc_2057f8:
	lea (dat_2059d4).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20580a
	lea (dat_2059ce).l,a1
loc_20580a:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205814
	moveq #$0,d2
loc_205814:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2055d8

sub_20581e:
	tst.b ($ff195b).l
	beq.s loc_20582a
	move.b dat_20582c(pc,d0.w),d0
loc_20582a:
	rts
dat_20582c:
	.incbin 22572, 80
dat_20587c:
	.incbin 22652, 120
dat_2058f4:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2058fc:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205904:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20590c:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205914:
	.incbin 22804, 186
dat_2059ce:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_2059d4:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_2059da:
	.incbin 23002, 18
dat_2059ec:
	.incbin 23020, 108
dat_205a58:
	.incbin 23128, 38
dat_205a7e:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205a86:
	.incbin 23174, 56

sub_205abe:
	tst.b (a0)
	beq.w loc_205b20
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205b20
	move.b d0,(a2)
	lea (dat_22f1b0).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205b20
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205af2:
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
loc_205b0c:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205b0c
	dbf d1,loc_205af2
loc_205b20:
	rts

sub_205b22:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205b96
	move.w #$98,d0
	jsr (sub_2023f8).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200b94).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205b84
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205b84:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205b96:
	rts
loc_205b98:
	move.w #$e,d0

sub_205b9c:
	cmpi.w #$67,d0
	bne.s loc_205baa
	move.b #$1,($ff1958).l
loc_205baa:
	move.w d0,($a12010).l
loc_205bb0:
	move.w ($a12020).l,d0
	beq.s loc_205bb0
	cmp.w ($a12020).l,d0
	bne.s loc_205bb0
	move.w #$0,($a12010).l
loc_205bc8:
	move.w ($a12020).l,d0
	bne.s loc_205bc8
	move.w ($a12020).l,d0
	bne.s loc_205bc8
	rts
	dc.b $00,$00

sub_205bdc:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205bf8
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205bf8:
	subq.b #$1,$1e(a0)
	bpl.s loc_205c38
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205c3a
loc_205c14:
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
loc_205c38:
	rts
loc_205c3a:
	addq.b #$1,d0
	bne.s loc_205c4a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205c14
loc_205c4a:
	addq.b #$1,d0
	bne.s loc_205c5e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205c14
loc_205c5e:
	addq.b #$1,d0
	bne.s loc_205c68
	move.b $2(a1,d1.w),$1c(a0)
loc_205c68:
	addq.b #$1,d0
	bne.s loc_205c70
	addq.b #$2,$24(a0)
loc_205c70:
	addq.b #$1,d0
	bne.s loc_205c7e
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205c7e:
	addq.b #$1,d0
	bne.s loc_205c86
	addq.b #$2,$25(a0)
loc_205c86:
	rts
	.incbin 23688, 536

sub_205ea0:
	rts
	.incbin 24226, 306
	rts
	.incbin 24534, 1146

sub_206450:
	bclr.b #$7,($ff156b).l
	beq.s loc_20649e
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2064a0(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206474:
	move.l (a1)+,(a2)+
	dbf d0,loc_206474
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20649e:
	rts
dat_2064a0:
	.incbin 25760, 516

sub_2066a4:
	cmpi.b #$2,($ff1507).l
	bne.s loc_2066b0
	rts
loc_2066b0:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_20106a).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	bsr.s sub_206726
	bne.s loc_206708
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_20106a).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	bsr.s sub_206726
	beq.s loc_206724
loc_206708:
	move.w #$1,d0
	btst.l #$b,d4
	beq.s loc_206714
	neg.w d0
loc_206714:
	andi.w #$7ff,d4
	cmpi.w #$114,d4
	bne.s loc_206720
	neg.w d0
loc_206720:
	add.w d0,$8(a0)
loc_206724:
	rts

sub_206726:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_20673e
	add.b ($ff156a).l,d1
loc_20673e:
	add.w d1,d1
	move.w dat_206762(pc,d1.w),d1
	lea dat_206762(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_20674e:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_20675e
	addq.w #$2,d1
	dbf d6,loc_20674e
	moveq #$0,d0
	rts
loc_20675e:
	moveq #$1,d0
	rts
dat_206762:
	.incbin 26466, 24
loc_20677a:
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
	bne.s loc_206834
	move.b ($ff1593).l,($ff195b).l
loc_206834:
	tst.b ($ff1522).l
	bpl.s loc_20684a
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20684a:
	rts

sub_20684c:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20677a
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
	bne.s loc_206906
	move.b ($ff1591).l,($ff195b).l
loc_206906:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206928
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206928:
	tst.b ($ff1522).l
	bpl.s loc_20693e
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20693e:
	rts

sub_206940:
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
	bpl.s loc_20697c
	move.b d1,d0
	bpl.s loc_206976
	subq.b #$1,d0
loc_206976:
	addi.b #$20,d0
	bra.s loc_206986
loc_20697c:
	move.b d1,d0
	bpl.s loc_206982
	addq.b #$1,d0
loc_206982:
	addi.b #$1f,d0
loc_206986:
	andi.b #$c0,d0
	beq.w loc_206a56
	cmpi.b #$80,d0
	beq.w loc_206bf2
	andi.b #$38,d1
	bne.s loc_20699e
	addq.w #$8,d2
loc_20699e:
	cmpi.b #$40,d0
	beq.w loc_206cc8
	bra.w loc_206b2a

sub_2069aa:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206c50
	cmpi.b #$80,d0
	beq.w sub_206b7a
	cmpi.b #$c0,d0
	beq.w loc_206aba

sub_2069d2:
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
	jsr (sub_201252).l
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
	jsr (sub_201252).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206a36:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206a44
	move.b ($f768).w,d3
	exg d0,d1
loc_206a44:
	btst.l #$0,d3
	beq.s loc_206a4c
	move.b d2,d3
loc_206a4c:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206a56:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201252).l
	move.b #$0,d2
loc_206a72:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a7e
	move.b d2,d3
loc_206a7e:
	rts

sub_206a80:
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
	jsr (sub_201252).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ab8
	move.b #$0,d3
loc_206ab8:
	rts
loc_206aba:
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
	jsr (sub_2013c2).l
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
	jsr (sub_2013c2).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206a36

sub_206b22:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b2a:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2013c2).l
	move.b #$c0,d2
	bra.w loc_206a72
	.incbin 27466, 48

sub_206b7a:
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
	jsr (sub_201252).l
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
	jsr (sub_201252).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206a36

sub_206bea:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206bf2:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201252).l
	move.b #$80,d2
	bra.w loc_206a72
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201252).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c4e
	move.b #$80,d3
loc_206c4e:
	rts
loc_206c50:
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
	jsr (sub_2013c2).l
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
	jsr (sub_2013c2).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206a36

sub_206cc0:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cc8:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2013c2).l
	move.b #$40,d2
	bra.w loc_206a72
	.incbin 27884, 48

sub_206d1c:
	btst.b #$0,$2c(a0)
	beq.s loc_206d28
	moveq #$0,d0
	rts
loc_206d28:
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
	lea (dat_207198).l,a2
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
	beq.w sub_206e56
	cmpi.b #$c0,d1
	beq.w loc_20704c
	tst.b d1
	bmi.w loc_206dda
	bra.s loc_206de6
loc_206dda:
	tst.b ($ff151f).l
	bne.s loc_206d66
	bra.w sub_206f20
loc_206de6:
	tst.b ($ff1956).l
	beq.s loc_206df6
	tst.b $29(a1)
	bne.s loc_206dfe
	rts
loc_206df6:
	tst.b $29(a1)
	beq.s loc_206dfe
	rts
loc_206dfe:
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206e1a
	cmpi.w #$5a,$30(a0)
	bcc.s loc_206e18
	addq.b #$2,$24(a1)
loc_206e18:
	rts
loc_206e1a:
	tst.w $12(a0)
	bpl.s loc_206e44
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206e54
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206e54
	addq.b #$4,$25(a1)
	rts
loc_206e44:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e54
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206e54:
	rts

sub_206e56:
	tst.b ($ff1521).l
	bne.s loc_206e70
	tst.b ($ff151f).l
	bne.s loc_206e70
	cmpi.b #$2,$1c(a0)
	bne.w sub_206f20
loc_206e70:
	tst.b $21(a1)
	beq.s loc_206e9a
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206e98
	bset.b #$7,$22(a1)
loc_206e98:
	rts
loc_206e9a:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206eb2
	moveq #$6,d0
loc_206eb2:
	move.w d0,$3e(a1)
	move.w dat_206f12(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206ecc
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206ecc:
	bsr.w sub_20a78e
	move.w #$96,d0
	jsr (sub_2023f8).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206f02
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206f0a
	neg.w $12(a0)
	rts
loc_206f02:
	addi.w #$100,$12(a0)
	rts
loc_206f0a:
	subi.w #$100,$12(a0)
	rts
dat_206f12:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206f20:
	btst.b #$0,$2c(a0)
	bne.s loc_206f38
	tst.b ($ff1521).l
	bne.s loc_206f38
	tst.b ($ff151f).l
	beq.s loc_206f3c
loc_206f38:
	moveq #$ffffffff,d0
	rts
loc_206f3c:
	nop
	tst.w $30(a0)
	bne.s loc_206f38
	movea.l a1,a2

sub_206f46:
	tst.b ($ff151e).l
	bne.s loc_206f80
	tst.w ($ff1512).l
	beq.w loc_206fea
	jsr (sub_20764e).l
	bne.s loc_206f80
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b ($ff1956).l
	beq.s loc_206f80
	move.b #$1,$29(a1)
loc_206f80:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206f96
	move.b #$0,($ff156f).l
loc_206f96:
	move.b #$4,$24(a0)
	bsr.w sub_205232
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206fc6
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206fc6:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206fd4
	neg.w $10(a0)
loc_206fd4:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206fea:
	tst.w ($ff1588).l
	bne.w loc_206f80

sub_206ff4:
	tst.w ($ff1906).l
	bne.s loc_207048
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205232
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2023f8).l
loc_207048:
	moveq #$ffffffff,d0
	rts
loc_20704c:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$6,d1
	beq.w loc_20715c
	cmpi.b #$17,d1
	beq.w loc_2070e4
	cmpi.b #$1f,d1
	beq.w loc_2070e4
	cmpi.b #$22,d1
	beq.w loc_20712c
	cmpi.b #$23,d1
	beq.w loc_2070e4
	cmpi.b #$2d,d1
	beq.w loc_20713a
	cmpi.b #$30,d1
	beq.w loc_207146
	tst.b ($f7aa).w
	beq.w loc_2070e2
	cmpi.b #$1,($f7aa).w
	beq.s loc_2070ac
	cmpi.b #$4,($f7aa).w
	beq.s loc_2070ce
	cmpi.b #$5,($f7aa).w
	beq.s loc_2070dc
loc_2070ac:
	cmpi.b #$3c,d1
	blt.s loc_2070e2
	cmpi.b #$3f,d1
	bgt.s loc_2070e2
	bsr.w sub_206e56
	tst.b $20(a1)
	bne.s loc_2070c6
	addq.b #$3,$21(a1)
loc_2070c6:
	clr.b $20(a1)
	bra.w loc_2070e4
loc_2070ce:
	cmpi.b #$3f,d1
	beq.s loc_2070f0
	cmpi.b #$3e,d1
	beq.s loc_2070ea
	bra.s loc_2070e2
loc_2070dc:
	cmpi.b #$3d,d1
	beq.s loc_2070ea
loc_2070e2:
	rts
loc_2070e4:
	addq.b #$1,$21(a1)
	rts
loc_2070ea:
	bsr.w sub_206f20
	bra.s loc_2070e4
loc_2070f0:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20712a
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20712a
	neg.w $10(a0)
loc_20712a:
	rts
loc_20712c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207138
	addq.b #$1,$21(a1)
loc_207138:
	rts
loc_20713a:
	btst.b #$2,$22(a0)
	beq.w sub_206e56
	bra.s loc_2070e4
loc_207146:
	move.w $8(a0),d0
	sub.w $8(a1),d0
	smi d0
	move.b $29(a1),d1
	eor.b d0,d1
	beq.w sub_206e56
	bra.s loc_2070e4
loc_20715c:
	tst.w $12(a0)
	bpl.s loc_207186
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207196
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207196
	addq.b #$4,$25(a1)
	rts
loc_207186:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207196
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207196:
	rts
dat_207198:
	.incbin 29080, 126
loc_207216:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_20722c
	move.l #$4000,(dat_2073a6).l
	bra.s loc_20724c
loc_20722c:
	addi.l #$2000,(dat_2073a6).l
	cmpi.l #$80000,(dat_2073a6).l
	bls.s loc_20724c
	move.l #$80000,(dat_2073a6).l
loc_20724c:
	move.l (dat_2073a6).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20725e
	sub.l d0,$c(a0)
loc_20725e:
	btst.b #$1,($f604).w
	beq.s loc_20726a
	add.l d0,$c(a0)
loc_20726a:
	btst.b #$2,($f604).w
	beq.s loc_207276
	sub.l d0,$8(a0)
loc_207276:
	btst.b #$3,($f604).w
	beq.s loc_207282
	add.l d0,$8(a0)
loc_207282:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_20106a).l
	move.w (a1),($ff194e).l
	lea (dat_2073aa).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2072c4
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2072be
	move.b #$0,d1
loc_2072be:
	move.b d1,($ff1904).l
loc_2072c4:
	btst.b #$7,($f605).w
	beq.s loc_2072e4
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2072de
	add.b (a2),d1
loc_2072de:
	move.b d1,($ff1904).l
loc_2072e4:
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
	beq.s loc_207370
	bsr.w sub_20764e
	bne.s loc_207370
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
loc_207370:
	btst.b #$4,($f605).w
	beq.s loc_2073a0
	move.b #$0,($ff1906).l
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2073a0:
	jmp (sub_2039b6).l
dat_2073a6:
	dc.b $00,$00,$40,$00
dat_2073aa:
	.incbin 29610, 146

sub_20743c:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20744a:
	clr.l (a2)+
	dbf d0,loc_20744a
	rts

sub_207452:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207460(pc,d0.w),d0
	jmp dat_207460(pc,d0.w)
dat_207460:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207700).l,a0
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
	bcc.s loc_20749e
	moveq #$0,d6
loc_20749e:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2074a6:
	cmp.w (a0),d6
	bls.s loc_2074b8
	tst.b $4(a0)
	bpl.s loc_2074b4
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2074b4:
	addq.w #$8,a0
	bra.s loc_2074a6
loc_2074b8:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2074d8
loc_2074c6:
	cmp.w (a0),d6
	bls.s loc_2074d8
	tst.b $4(a0)
	bpl.s loc_2074d4
	addq.b #$1,$1(a2)
loc_2074d4:
	addq.w #$8,a0
	bra.s loc_2074c6
loc_2074d8:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2075c2
	bge.s loc_207568
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207544
loc_207512:
	cmp.w -$8(a0),d6
	bge.s loc_207544
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207528
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207528:
	bsr.w sub_2075e6
	bne.s loc_207532
	subq.w #$8,a0
	bra.s loc_207512
loc_207532:
	tst.b $4(a0)
	bpl.s loc_207542
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207542:
	addq.w #$8,a0
loc_207544:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207550:
	cmp.w -$8(a0),d6
	bgt.s loc_207562
	tst.b -$4(a0)
	bpl.s loc_20755e
	subq.b #$1,(a2)
loc_20755e:
	subq.w #$8,a0
	bra.s loc_207550
loc_207562:
	move.l a0,($f770).w
	rts
loc_207568:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_20757c:
	cmp.w (a0),d6
	bls.s loc_20759e
	tst.b $4(a0)
	bpl.s loc_20758a
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20758a:
	bsr.w sub_2075e6
	beq.s loc_20757c
	tst.b $4(a0)
	bpl.s loc_20759e
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20759e:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2075be
loc_2075ac:
	cmp.w (a0),d6
	bls.s loc_2075be
	tst.b $4(a0)
	bpl.s loc_2075ba
	addq.b #$1,$1(a2)
loc_2075ba:
	addq.w #$8,a0
	bra.s loc_2075ac
loc_2075be:
	move.l a0,($f774).w
loc_2075c2:
	rts

sub_2075c4:
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

sub_2075e6:
	bsr.s sub_2075c4
	beq.s loc_2075f8
	tst.b $4(a0)
	bpl.s loc_2075fe
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2075fe
loc_2075f8:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2075fe:
	bsr.w sub_20764e
	bne.s loc_20764c
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
	bpl.s loc_20762e
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20762e:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207640
	nop
	nop
	nop
	nop
loc_207640:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_20764c:
	rts

sub_20764e:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207656:
	tst.b (a1)
	beq.s loc_207662
	lea $40(a1),a1
	dbf d0,loc_207656
loc_207662:
	rts

sub_207664:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207682
loc_207676:
	tst.b (a1)
	beq.s loc_207682
	lea $40(a1),a1
	dbf d0,loc_207676
loc_207682:
	rts
loc_207684:
	move.w $8(a0),d0
loc_207688:
	tst.b $1(a0)
	bmi.s loc_2076f2
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2076f2
loc_2076a6:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2076e8
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2076e0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2076d8
	moveq #$0,d1
	bra.s loc_2076e0
loc_2076d8:
	cmpi.w #$3,d1
	bcs.s loc_2076e0
	moveq #$2,d1
loc_2076e0:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2076e8:
	jsr (sub_203a62).l
	moveq #$1,d0
	rts
loc_2076f2:
	btst.b #$7,($ff152e).l
	bne.s loc_2076a6
	moveq #$0,d0
	rts
dat_207700:
	.incbin 30464, 5448

sub_208c48:
	btst.b #$3,$22(a0)
	beq.s loc_208cb8
	btst.b #$3,$22(a1)
	beq.s loc_208cb8
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208cb8
	tst.b $2a(a1)
	beq.s loc_208c7a
	move.w #$ab,d0
	jsr (sub_2023f8).l
loc_208c7a:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208ca6
	cmpi.b #$17,$1c(a1)
	beq.s loc_208ca6
	bclr.b #$0,$2c(a1)
loc_208ca6:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208cb8
	bclr.b #$1,$22(a1)
loc_208cb8:
	rts

sub_208cba:
	cmpi.b #$4,$24(a1)
	bne.s loc_208ccc
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208ccc:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208d2c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208cee
	bclr.b #$3,$22(a0)
	bra.w sub_208c48
loc_208cee:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208d2c
	tst.b ($ff195b).l
	beq.s loc_208d16
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208d26
loc_208d16:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208d26:
	move.b #$0,$1c(a1)
loc_208d2c:
	bset.b #$3,$22(a1)
	beq.s loc_208d4e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208d86
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208d4e:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208d7a
	cmpi.b #$2,$24(a0)
	beq.s loc_208d80
loc_208d7a:
	move.w $10(a1),$14(a1)
loc_208d80:
	bclr.b #$1,$22(a1)
loc_208d86:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_208d90:
	move.b #$1,$25(a0)

sub_208d96:
	cmpi.b #$17,$1c(a1)
	beq.w loc_20904a
	btst.b #$6,$2c(a1)
	bne.w loc_20904a
	cmpi.b #$6,$24(a1)
	bcc.w loc_20904a
	tst.b $0(a1)
	beq.w loc_20904a
	tst.b $1(a0)
	bpl.w loc_20904a
	tst.b ($ff1906).l
	bne.w loc_20904a
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20904a
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_20904a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208e04
	btst.b #$3,$22(a0)
	bne.s loc_208e16
	bra.w loc_20904a
loc_208e04:
	cmpi.b #$1,$25(a0)
	bne.s loc_208e16
	tst.w $12(a1)
	beq.s loc_208e16
	bmi.w loc_20904a
loc_208e16:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_20904a
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_20904a
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208e4c
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208e4c:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208e5a
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208e5a:
	cmp.w d4,d5
	bcs.w loc_208eee
	cmpi.b #$1,$25(a0)
	beq.w loc_20904a
	cmpi.b #$a,$0(a0)
	bne.s loc_208e7c
	btst.b #$1,$22(a1)
	bne.w loc_20904a
loc_208e7c:
	cmpi.b #$4,d5
	bls.w loc_20904a
	bsr.w sub_20909a
	move.l d0,-(a7)
	bsr.w sub_208c48
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208ea6
	tst.w $10(a1)
	beq.s loc_208ed6
	bpl.s loc_208eae
	bra.s loc_208ed6
loc_208ea6:
	tst.w $10(a1)
	beq.s loc_208ed6
	bpl.s loc_208ed6
loc_208eae:
	bsr.w sub_20905a
	btst.b #$1,$22(a1)
	bne.s loc_208ecc
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208ecc:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208ed6:
	bsr.w sub_209110
	bsr.w sub_20905a
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208eee:
	cmpi.b #$19,$0(a0)
	bne.s loc_208f00
	btst.b #$2,$22(a1)
	bne.w loc_20904a
loc_208f00:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208f16
	bmi.w loc_208fe6
loc_208f16:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208f28
	tst.w $12(a1)
	beq.s loc_208f28
	bmi.w loc_20904a
loc_208f28:
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
	beq.s loc_208f74
	bpl.s loc_208f54
	neg.b d0
loc_208f54:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206940).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f74
	tst.w $10(a0)
	bpl.s loc_208f70
	neg.w d1
loc_208f70:
	add.w d1,$8(a1)
loc_208f74:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208fde
	tst.w $12(a0)
	bmi.s loc_208fb2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2069d2).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208fb2
	add.w d1,$c(a1)
	bra.w loc_20904a
loc_208fb2:
	tst.w $12(a0)
	bpl.s loc_208fde
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206bea).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208fde
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ff4).l
	movem.l (a7)+,a0-a1
	bra.s loc_20904a
loc_208fde:
	bsr.w sub_208cba
	moveq #$1,d0
	rts
loc_208fe6:
	cmpi.b #$1,$25(a0)
	beq.s loc_20904a
	cmpi.b #$9,$0(a0)
	beq.s loc_20904a
	cmpi.b #$a,$0(a0)
	bne.s loc_209010
	cmpi.b #$2,$25(a0)
	beq.s loc_209030
	btst.b #$1,$1(a0)
	bne.s loc_209030
	bra.s loc_20904a
loc_209010:
	btst.b #$1,$22(a1)
	bne.s loc_209030
	tst.w $12(a0)
	beq.s loc_209030
	bmi.s loc_209030
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ff4).l
	movem.l (a7)+,a0-a1
loc_209030:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209110
	bsr.w sub_208c48
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_20904a:
	bsr.w sub_209110
	bsr.w sub_208c48
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_20905a:
	tst.w $10(a0)
	beq.s loc_209098
	cmpi.b #$a,$0(a0)
	beq.s loc_209098
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209074
	neg.b d0
loc_209074:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206940).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209098
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ff4).l
	movem.l (a7)+,a0-a1
loc_209098:
	rts

sub_20909a:
	cmpi.b #$a,$0(a0)
	bne.s loc_2090aa
	move.b #$0,$20(a1)
	rts
loc_2090aa:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2090fe
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20910e
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_2090cc
	tst.w $10(a2)
	beq.s loc_20910e
loc_2090cc:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_2090de
	cmp.w $8(a2),d1
	bcs.s loc_20910e
	bra.s loc_2090e4
loc_2090de:
	cmp.w $8(a2),d1
	bcc.s loc_20910e
loc_2090e4:
	cmpi.b #$15,$0(a0)
	beq.s loc_20910e
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ff4).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2090fe:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20910e:
	rts

sub_209110:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20912a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_20912a
	move.b #$0,$20(a1)
loc_20912a:
	rts
	.incbin 37164, 374
loc_2092a2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2092b0(pc,d0.w),d0
	jmp dat_2092b0(pc,d0.w)
dat_2092b0:
	.incbin 37552, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2092a2
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209306
	tst.b $1(a0)
	bpl.s loc_20930e
loc_209306:
	move.w dat_209360(pc,d0.w),d1
	jsr dat_209360(pc,d1.w)
loc_20930e:
	bsr.w sub_2039b6
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209340
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209340:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203a62
	rts
dat_209360:
	.incbin 37728, 26
	addq.b #$2,$24(a0)
	move.l #$2096e2,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2093d0
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2096e8,$4(a0)
	bra.s loc_209412
loc_2093d0:
	btst.l #$3,d0
	beq.s loc_2093fe
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209732,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cfee).l
	move.l (a7)+,d0
	bra.s loc_209412
loc_2093fe:
	btst.b #$1,$1(a0)
	beq.s loc_209412
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209412:
	btst.l #$1,d0
	beq.s loc_20941e
	bset.b #$5,$2(a0)
loc_20941e:
	andi.w #$2,d0
	move.w dat_20942a(pc,d0.w),$30(a0)
	rts
dat_20942a:
	.incbin 37930, 918
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2097ce(pc,d0.w),d1
	jmp dat_2097ce(pc,d1.w)
dat_2097ce:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2097d8:
	.incbin 38872, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209830
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209828
	moveq #$0,d1
	bra.s loc_209830
loc_209828:
	cmpi.w #$3,d1
	bcs.s loc_209830
	moveq #$2,d1
loc_209830:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20984c
	moveq #$6,d1
loc_20984c:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2097d8).l,a1
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
	beq.s loc_20989c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209894
	moveq #$0,d0
	bra.s loc_20989c
loc_209894:
	cmpi.w #$3,d0
	bcs.s loc_20989c
	moveq #$2,d0
loc_20989c:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20996a
	dbf d0,loc_20989c
	bclr.b #$7,(a2)
	bra.s loc_2098f2
loc_2098ae:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2098da
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2098d2
	moveq #$0,d0
	bra.s loc_2098da
loc_2098d2:
	cmpi.w #$3,d0
	bcs.s loc_2098da
	moveq #$2,d0
loc_2098da:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20996a
	dbf d0,loc_2098da
	bclr.b #$7,(a2)
	bsr.w sub_207664
	bne.w loc_209976
loc_2098f2:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209c3c,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209948
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209948
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209948:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20996a:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2098ae
loc_209976:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20999c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209994
	moveq #$0,d0
	bra.s loc_20999c
loc_209994:
	cmpi.w #$3,d0
	bcs.s loc_20999c
	moveq #$2,d0
loc_20999c:
	lea $1(a2),a3
loc_2099a0:
	btst.b #$0,-(a3)
	bne.w sub_203a62
	dbf d0,loc_2099a0
	tst.b $1(a0)
	bmi.s loc_2099d0
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209a4a
loc_2099d0:
	tst.w ($ff190e).l
	bne.s loc_2099e0
	move.b ($ff1913).l,$1a(a0)
loc_2099e0:
	bra.w sub_2039b6
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209a4e
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209a30
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209a28
	moveq #$0,d1
	bra.s loc_209a30
loc_209a28:
	cmpi.w #$3,d1
	bcs.s loc_209a30
	moveq #$2,d1
loc_209a30:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209c34).l,a1
	bsr.w sub_205bdc
	bra.w sub_2039b6
loc_209a4a:
	bra.w sub_203a62

sub_209a4e:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209a9e
	bset.b #$1,($ff150d).l
	beq.s loc_209a88
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209a9e
	bset.b #$2,($ff150d).l
	bne.s loc_209a9e
loc_209a88:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b9c).l
loc_209a9e:
	jmp (sub_2023f8).l
	.incbin 39588, 400
dat_209c34:
	.incbin 39988, 402
loc_209dc6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209df4(pc,d0.w),d0
	jsr dat_209df4(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209df2
	cmpi.w #$5a,($f786).w
	bcs.s loc_209dec
	btst.b #$0,($ff1505).l
	bne.s loc_209df2
loc_209dec:
	jmp (sub_2039b6).l
loc_209df2:
	rts
dat_209df4:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a3ce,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209e28
	move.b #$13,$1a(a0)
loc_209e28:
	rts
loc_209e2a:
	tst.b ($ff0f01).l
	beq.s loc_209e38
	jmp (sub_203a62).l
loc_209e38:
	cmpi.b #$a,$28(a0)
	beq.w loc_209dc6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209e5c(pc,d0.w),d0
	jsr dat_209e5c(pc,d0.w)
	jsr (sub_2039b6).l
	jmp (loc_207684).l
dat_209e5c:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a3ce,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209eaa
	tst.b $29(a0)
	bne.s loc_209eaa
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209eaa:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_209f76
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209ed2
	addq.b #$2,$1a(a0)
loc_209ed2:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209ee6
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209ee6:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_209f4c
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209f18
	tst.b $29(a0)
	beq.s loc_209f10
	tst.b ($ff1956).l
	beq.s loc_209f4c
	bra.s loc_209f18
loc_209f10:
	tst.b ($ff1956).l
	bne.s loc_209f4c
loc_209f18:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_209f76
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209f46
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209f46:
	jsr (sub_205b9c).l
loc_209f4c:
	rts
	.incbin 40782, 40

sub_209f76:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209fae
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209fa6
	moveq #$0,d1
	bra.s loc_209fae
loc_209fa6:
	cmpi.w #$3,d1
	bcs.s loc_209fae
	moveq #$2,d1
loc_209fae:
	add.w d1,d0
	rts

sub_209fb2:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209fd4
	tst.b ($ff1956).l
	beq.s loc_209fcc
	tst.b $29(a0)
	bne.s loc_209fd4
	rts
loc_209fcc:
	tst.b $29(a0)
	beq.s loc_209fd4
	rts
loc_209fd4:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d96).l
	tst.b $28(a0)
	bne.s loc_209ff6
	tst.b ($ff0f01).l
	beq.s loc_209ff6
	jmp (loc_207684).l
loc_209ff6:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209e2a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a00e(pc,d0.w),d1
	jmp dat_20a00e(pc,d1.w)
dat_20a00e:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a3ce,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a058
	tst.b $29(a0)
	bne.s loc_20a058
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a058:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209f76
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a084
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a084:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a0de
	move.b $25(a0),d0
	beq.s loc_20a0be
	bsr.w sub_2038fe
	jsr (sub_206a80).l
	tst.w d1
	bpl.w loc_20a0cc
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a0cc
loc_20a0be:
	tst.b $1(a0)
	bpl.s loc_20a0cc
	lea ($d000).w,a1
	bsr.w sub_209fb2
loc_20a0cc:
	tst.w ($ff190e).l
	bne.s loc_20a0de
	lea (dat_20a346).l,a1
	bsr.w sub_205bdc
loc_20a0de:
	bsr.w sub_2039b6
	jmp (loc_207684).l
	.incbin 41192, 606
dat_20a346:
	.incbin 41798, 586
loc_20a590:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a5a4(pc,d0.w),d0
	jsr dat_20a5a4(pc,d0.w)
	jmp (sub_2039b6).l
dat_20a5a4:
	.incbin 42404, 146
	tst.b $28(a0)
	bmi.w loc_20a590
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a64c(pc,d0.w),d0
	jmp dat_20a64c(pc,d0.w)
dat_20a64c:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a6e6,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a67c
	move.b #$3,$1a(a0)
	bra.s loc_20a69c
loc_20a67c:
	tst.w ($ff1588).l
	beq.s loc_20a68a
	move.b #$2,$1a(a0)
loc_20a68a:
	tst.b $28(a0)
	beq.s loc_20a69c
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a69c:
	tst.b $28(a0)
	bne.s loc_20a6e0
	tst.b $29(a0)
	beq.s loc_20a6cc
	tst.w ($ff1512).l
	beq.s loc_20a6b8
	bclr.b #$5,$2(a0)
	bra.s loc_20a6e0
loc_20a6b8:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a6e0
	eori.b #$20,$2(a0)
	bra.s loc_20a6e0
loc_20a6cc:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a6e0
	move.b #$2,$1a(a0)
loc_20a6e0:
	jmp (sub_2039b6).l
	.incbin 42726, 168

sub_20a78e:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a7aa
	move.l d1,(a3)
loc_20a7aa:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a7d4
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b9c).l
loc_20a7d4:
	rts
loc_20a7d6:
	tst.w ($ff1588).l
	beq.s loc_20a82c
	bsr.w sub_20aa28
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
	lea (dat_20ab88).l,a2
	moveq #$2,d6
	bsr.w sub_20abe0
	bra.w loc_20a886
loc_20a82c:
	tst.b ($ff1511).l
	beq.s loc_20a850
	bpl.s loc_20a83a
	bsr.w sub_20a9d2
loc_20a83a:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20aac2
loc_20a850:
	tst.b ($ff150f).l
	beq.s loc_20a886
	bpl.s loc_20a85e
	bsr.w sub_20a9be
loc_20a85e:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a882
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a882:
	bsr.w sub_20aab8
loc_20a886:
	tst.w ($ff1588).l
	bne.w loc_20a932
	tst.b ($ff1510).l
	beq.w loc_20a932
	tst.w ($f63a).w
	bne.w loc_20a932
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a990
	tst.b ($f7cc).w
	bne.s loc_20a8dc
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a8dc
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a8dc
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a8dc
	move.b #$9,(a1)
loc_20a8dc:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20abce
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20abd8
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a92e
	move.w #$63,d1
loc_20a92e:
	bsr.w sub_20abd8
loc_20a932:
	tst.b ($ff150e).l
	beq.s loc_20a944
	clr.b ($ff150e).l
	bsr.w sub_20abae
loc_20a944:
	tst.b ($f7d6).w
	beq.s loc_20a98e
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a964
	move.l #$6d400001,d0
loc_20a964:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20aa46
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a984
	move.l #$6e800001,d0
loc_20a984:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20aa46
loc_20a98e:
	rts
loc_20a990:
	btst.b #$7,($ff152e).l
	bne.s loc_20a9bc
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206ff4
	move.b #$1,($ff150c).l
loc_20a9bc:
	rts

sub_20a9be:
	move.l #$73600002,($c00004).l
	lea dat_20aa24(pc),a2
	move.w #$2,d2
	bra.s loc_20a9ee

sub_20a9d2:
	lea ($c00000).l,a6
	bsr.w sub_20abae
	move.l #$70600002,($c00004).l
	lea dat_20aa1c(pc),a2
	move.w #$6,d2
loc_20a9ee:
	lea (dat_23338c).l,a1
loc_20a9f4:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20aa10
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20aa04:
	move.l (a3)+,(a6)
	dbf d1,loc_20aa04
loc_20aa0a:
	dbf d2,loc_20a9f4
	rts
loc_20aa10:
	move.l #$0,(a6)
	dbf d1,loc_20aa10
	bra.s loc_20aa0a
dat_20aa1c:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20aa24:
	dc.b $ff,$ff,$00,$00

sub_20aa28:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20aba4
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20aba4

sub_20aa46:
	lea (dat_20ab80).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20aa56:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aa5a:
	sub.l d3,d1
	bcs.s loc_20aa62
	addq.w #$1,d2
	bra.s loc_20aa5a
loc_20aa62:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aa6c
	move.w #$1,d4
loc_20aa6c:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20aa78
	tst.w d6
	bne.s loc_20aaaa
loc_20aa78:
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
loc_20aa9e:
	addi.l #$400000,d0
	dbf d6,loc_20aa56
	rts
loc_20aaaa:
	moveq #$f,d5
loc_20aaac:
	move.l #$0,(a6)
	dbf d5,loc_20aaac
	bra.s loc_20aa9e

sub_20aab8:
	lea (dat_20ab88).l,a2
	moveq #$2,d6
	bra.s loc_20aaca

sub_20aac2:
	lea (dat_20ab7c).l,a2
	moveq #$5,d6
loc_20aaca:
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20aad2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aad6:
	sub.l d3,d1
	bcs.s loc_20aade
	addq.w #$1,d2
	bra.s loc_20aad6
loc_20aade:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aae8
	move.w #$1,d4
loc_20aae8:
	tst.w d4
	beq.s loc_20ab16
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
loc_20ab16:
	addi.l #$400000,d0
	dbf d6,loc_20aad2
	rts
	.incbin 43810, 32
loc_20ab42:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ab46:
	sub.l d3,d1
	bcs.s loc_20ab4e
	addq.w #$1,d2
	bra.s loc_20ab46
loc_20ab4e:
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
	dbf d6,loc_20ab42
	rts
dat_20ab7c:
	dc.b $00,$01,$86,$a0
dat_20ab80:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20ab88:
	dc.b $00,$00,$00,$64
dat_20ab8c:
	dc.b $00,$00,$00,$0a
dat_20ab90:
	dc.b $00,$00,$00,$01
dat_20ab94:
	.incbin 43924, 16

sub_20aba4:
	moveq #$3,d6
	lea (dat_20ab94).l,a2
	bra.s sub_20abe0

sub_20abae:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20abc4
	moveq #$9,d1
loc_20abc4:
	lea (dat_20ab90).l,a2
	moveq #$0,d6
	bra.s sub_20abe0

sub_20abce:
	lea (dat_20ab90).l,a2
	moveq #$0,d6
	bra.s sub_20abe0

sub_20abd8:
	lea (dat_20ab8c).l,a2
	moveq #$1,d6

sub_20abe0:
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20abe8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20abec:
	sub.l d3,d1
	bcs.s loc_20abf4
	addq.w #$1,d2
	bra.s loc_20abec
loc_20abf4:
	add.l d3,d1
	tst.w d2
	beq.s loc_20abfe
	move.w #$1,d4
loc_20abfe:
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
	dbf d6,loc_20abe8
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac60(pc,d0.w),d0
	jsr dat_20ac60(pc,d0.w)
	tst.b $24(a0)
	beq.s loc_20ac5e
	cmpi.b #$a,$24(a0)
	beq.s loc_20ac58
	cmpi.b #$6,$24(a0)
	bcc.s loc_20ac5e
loc_20ac58:
	jmp (sub_2039b6).l
loc_20ac5e:
	rts
dat_20ac60:
	.incbin 44128, 2582
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b684(pc,d0.w),d1
	jmp dat_20b684(pc,d1.w)
dat_20b684:
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
	beq.s loc_20b6cc
	move.b #$10,$34(a0)
	move.b #$30,$38(a0)
loc_20b6cc:
	move.b $28(a0),d1
	andi.b #$f0,d1
	ext.w d1
	asl.w #$3,d1
	move.w d1,$36(a0)
	move.b $22(a0),d0
	ror.b #$2,d0
	andi.b #$c0,d0
	move.b d0,$26(a0)
	bsr.w sub_20b6f4
	jmp (loc_207684).l

sub_20b6f4:
	moveq #$0,d2
	move.b $38(a0),d2
	move.w d2,d3
	add.w d3,d3
	lea ($d000).w,a1
	move.w $8(a1),d0
	sub.w $32(a0),d0
	add.w d2,d0
	cmp.w d3,d0
	bcc.s loc_20b72c
	move.w $c(a1),d1
	sub.w $30(a0),d1
	add.w d2,d1
	cmp.w d3,d1
	bcc.s loc_20b72c
	btst.b #$1,$22(a1)
	beq.s loc_20b73c
	clr.b $3a(a0)
	rts
loc_20b72c:
	tst.b $3a(a0)
	beq.s loc_20b73a
	clr.b $38(a1)
	clr.b $3a(a0)
loc_20b73a:
	rts
loc_20b73c:
	tst.b $3a(a0)
	bne.s loc_20b766
	move.b #$1,$3a(a0)
	btst.b #$2,$22(a1)
	bne.s loc_20b754
	clr.b $1c(a1)
loc_20b754:
	bclr.b #$5,$22(a1)
	move.b #$1,$1d(a1)
	move.b #$1,$38(a1)
loc_20b766:
	move.w $14(a1),d0
	tst.w $36(a0)
	bpl.s loc_20b78c
	cmpi.w #$fc00,d0
	ble.s loc_20b77e
	move.w #$fc00,$14(a1)
	rts
loc_20b77e:
	cmpi.w #$f100,d0
	bge.s loc_20b78a
	move.w #$f100,$14(a1)
loc_20b78a:
	rts
loc_20b78c:
	cmpi.w #$400,d0
	bge.s loc_20b79a
	move.w #$400,$14(a1)
	rts
loc_20b79a:
	cmpi.w #$f00,d0
	ble.s loc_20b7a6
	move.w #$f00,$14(a1)
loc_20b7a6:
	rts
	.incbin 47016, 1968
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bf66(pc,d0.w),d0
	jmp dat_20bf66(pc,d0.w)
dat_20bf66:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c664,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c624).l,a2
loc_20bfb4:
	jsr (sub_20764e).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c664,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20c006
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20c006:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20bfb4
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c02e
	bge.s loc_20c024
	neg.w d0
loc_20c024:
	add.w d0,$a(a0)
	jmp (sub_2039b6).l
loc_20c02e:
	addq.b #$4,$24(a0)
	jmp (sub_2039b6).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c052
	bge.s loc_20c048
	neg.w d0
loc_20c048:
	add.w d0,$8(a0)
	jmp (sub_2039b6).l
loc_20c052:
	addq.b #$4,$24(a0)
	jmp (sub_2039b6).l
	tst.b $1e(a0)
	beq.s loc_20c06c
	subq.b #$1,$1e(a0)
	jmp (sub_2039b6).l
loc_20c06c:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c086
	bge.s loc_20c07c
	neg.w d0
loc_20c07c:
	add.w d0,$a(a0)
	jmp (sub_2039b6).l
loc_20c086:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2025c2).l
	tst.b $1e(a0)
	beq.s loc_20c0a8
	subq.b #$1,$1e(a0)
	jmp (sub_2039b6).l
loc_20c0a8:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c0c2
	bge.s loc_20c0b8
	neg.w d0
loc_20c0b8:
	add.w d0,$8(a0)
	jmp (sub_2039b6).l
loc_20c0c2:
	jmp (sub_203a62).l
	tst.l ($f680).w
	bne.s loc_20c0dc
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203a62).l
loc_20c0dc:
	rts
	.incbin 49374, 1350
dat_20c624:
	.incbin 50724, 1728
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ccfe(pc,d0.w),d0
	jsr dat_20ccfe(pc,d0.w)
	jsr (sub_2039b6).l
	jmp (loc_207684).l
dat_20ccfe:
	dc.b $00,$04,$01,$00
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20cf10,$4(a0)
	move.w #$498,$2(a0)
	move.b #$3,$18(a0)
	move.w $c(a0),$30(a0)
	clr.w $12(a0)
	clr.w $10(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,d1
	andi.w #$30,d1
	lsr.w #$3,d1
	move.w dat_20cd8a(pc,d1.w),d2
	move.w d2,$32(a0)
	move.b d0,d1
	andi.w #$40,d1
	lsr.w #$5,d1
	move.w dat_20cd92(pc,d1.w),d2
	move.w d2,$36(a0)
	move.w $32(a0),d2
	move.w d0,d3
	lsr.w #$2,d2
	move.w d2,d0
	jsr (sub_2008fc).l
	muls.w $36(a0),d0
	lsr.l #$8,d0
	add.w $30(a0),d0
	move.w d0,$c(a0)
	move.w d3,d0
	move.w d0,d1
	andi.w #$3,d1
	lsl.w #$1,d1
	move.w dat_20cd84(pc,d1.w),d1
	jmp dat_20cd84(pc,d1.w)
dat_20cd84:
	dc.b $00,$1a,$00,$3e,$00,$1a
dat_20cd8a:
	dc.b $00,$00,$01,$00,$02,$00,$03,$00
dat_20cd92:
	dc.b $00,$20,$00,$30
dat_20cd96:
	dc.b $00,$04,$00,$08,$00,$10,$00,$20
	move.b #$0,$1a(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
	move.b d0,d1
	andi.w #$c,d1
	lsr.w #$1,d1
	move.w dat_20cd96(pc,d1.w),d2
	move.w d2,$34(a0)
	rts
	.incbin 52674, 60
	tst.w $12(a0)
	bpl.s loc_20ce0e
	lea ($d000).w,a1
	jsr (sub_208d96).l
loc_20ce0e:
	move.l $c(a0),-(a7)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$3,d0
	cmpi.b #$1,d0
	bne.s loc_20ce64
	btst.b #$7,$3e(a0)
	beq.s loc_20ce40
	move.w $c(a0),d0
	subq.b #$1,$3a(a0)
	bcc.w loc_20ce88
	bclr.b #$7,$3e(a0)
	bra.s loc_20ce64
loc_20ce40:
	move.w $32(a0),d0
	cmpi.w #$100,d0
	beq.s loc_20ce52
	cmpi.w #$300,d0
	beq.s loc_20ce52
	bra.s loc_20ce64
loc_20ce52:
	bset.b #$7,$3e(a0)
	move.b $38(a0),$3a(a0)
	move.w $c(a0),d0
	bra.s loc_20ce88
loc_20ce64:
	move.w $32(a0),d1
	add.w $34(a0),d1
	andi.w #$3ff,d1
	move.w d1,$32(a0)
	lsr.w #$2,d1
	move.w d1,d0
	jsr (sub_2008fc).l
	muls.w $36(a0),d0
	lsr.l #$8,d0
	add.w $30(a0),d0
loc_20ce88:
	move.w d0,$c(a0)
	swap d0
	sub.l (a7)+,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	moveq #$0,d1
	move.b $28(a0),d1
	andi.b #$3,d1
	cmpi.b #$1,d1
	bne.s loc_20ceec
	move.w $32(a0),d0
	cmpi.w #$210,d0
	bne.s loc_20ceec
	lea ($d000).w,a1
	jsr (sub_208d96).l
	bne.s loc_20cebe
	rts
loc_20cebe:
	moveq #$0,d1
	move.b $28(a0),d1
	andi.w #$80,d1
	lsr.w #$6,d1
	move.w dat_20cefe(pc,d1.w),d0
	move.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	rts
loc_20ceec:
	tst.w $12(a0)
	bmi.s loc_20cefc
	lea ($d000).w,a1
	jsr (sub_208d96).l
loc_20cefc:
	rts
dat_20cefe:
	.incbin 52990, 134
loc_20cf84:
	lea dat_20cfd6(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cf90:
	cmp.w (a1)+,d0
	bcs.s loc_20cf98
	addq.b #$2,d1
	bra.s loc_20cf90
loc_20cf98:
	move.b d1,($ff1574).l
	move.w dat_20cfe6(pc,d1.w),d0
	jmp (sub_2025c2).l

sub_20cfa8:
	lea dat_20cfd6(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cfb4:
	cmp.w (a1)+,d0
	bcs.s loc_20cfbc
	addq.b #$2,d1
	bra.s loc_20cfb4
loc_20cfbc:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cfc6
	rts
loc_20cfc6:
	move.b d1,($ff1574).l
	move.w dat_20cfde(pc,d1.w),d0
	jmp (loc_2025f4).l
dat_20cfd6:
	dc.b $03,$00,$06,$00,$15,$00,$ff,$ff
dat_20cfde:
	dc.b $00,$07,$00,$08,$00,$09,$00,$0a
dat_20cfe6:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06

sub_20cfee:
	move.w #$4ea,d1
	cmpi.b #$e,d0
	beq.s loc_20cffc
	move.w #$4f2,d1
loc_20cffc:
	move.w d1,$2(a0)
	rts
	.incbin 53250, 1244
	cmpi.b #$f8,$28(a0)
	beq.w loc_20d75e
	tst.b $28(a0)
	bmi.w loc_20d5d8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d50e(pc,d0.w),d0
	jsr dat_20d50e(pc,d0.w)
	jsr (sub_2039b6).l
	move.w $36(a0),d0
	jmp (loc_207688).l
dat_20d50e:
	.incbin 54542, 202
loc_20d5d8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d62c(pc,d0.w),d0
	jsr dat_20d62c(pc,d0.w)
	jsr (sub_2039b6).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20d61c
	movea.w d1,a1
	tst.b $0(a1)
	beq.s loc_20d626
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20d61c:
	move.w $36(a0),d0
	jmp (loc_207688).l
loc_20d626:
	jmp (sub_203a62).l
dat_20d62c:
	dc.b $00,$04,$00,$5a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$488,$2(a0)
	move.b #$1,$18(a0)
	move.l #$20d74e,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	btst.b #$0,$28(a0)
	bne.s loc_20d686
	move.b #$1,$1a(a0)
	move.b #$12,$19(a0)
	move.b #$8,$16(a0)
	move.b #$83,$20(a0)
loc_20d686:
	moveq #$0,d5
	move.b $28(a0),d5
	neg.b d5
	cmpi.b #$5,d5
	bcc.s loc_20d6be
	cmpi.b #$3,d5
	bcc.s loc_20d69c
	bra.s loc_20d6d8
loc_20d69c:
	move.w #$8488,$2(a0)
	move.b #$83,$20(a0)
	tst.b ($ff1956).l
	beq.s loc_20d6d8
	clr.b $20(a0)
loc_20d6b4:
	lea ($d000).w,a1
	jmp (sub_208c48).l
loc_20d6be:
	move.b #$3,$18(a0)
	move.b #$83,$20(a0)
	tst.b ($ff1956).l
	bne.s loc_20d6d8
	clr.b $20(a0)
	bra.s loc_20d6b4
loc_20d6d8:
	tst.b $1a(a0)
	bne.w loc_20d73a
	clr.b $20(a0)
	lea ($d000).w,a1
	jsr (sub_208d96).l
	beq.s loc_20d738
	btst.b #$3,$22(a0)
	beq.s loc_20d738
	tst.b ($ff1521).l
	bne.s loc_20d738
	tst.b ($ff151f).l
	bne.s loc_20d738
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20d736
	tst.w $30(a0)
	bne.s loc_20d736
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206f46).l
loc_20d736:
	movea.l (a7)+,a0
loc_20d738:
	rts
loc_20d73a:
	btst.b #$7,$1(a0)
	beq.s loc_20d74c
	lea ($d000).w,a1
	jsr (sub_208d96).l
loc_20d74c:
	rts
	.incbin 55118, 16
loc_20d75e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d778(pc,d0.w),d0
	jsr dat_20d778(pc,d0.w)
	jsr (sub_2039b6).l
	jmp (loc_207684).l
dat_20d778:
	.incbin 55160, 2588
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e1a2(pc,d0.w),d0
	jmp dat_20e1a2(pc,d0.w)
dat_20e1a2:
	.incbin 57762, 2654
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ec26(pc,d0.w),d0
	jsr dat_20ec26(pc,d0.w)
	jsr (sub_2039b6).l
	tst.b $28(a0)
	bmi.s loc_20ec24
	move.w $2e(a0),d0
	jmp (loc_207688).l
loc_20ec24:
	rts
dat_20ec26:
	.incbin 60454, 630
	jsr (sub_20f87a).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ef5a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20eebc(pc,d0.w),d0
	jmp dat_20eebc(pc,d0.w)
dat_20eebc:
	dc.b $00,$04,$00,$3a
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20f01c,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20efea
	bsr.w sub_20eff8
	move.w #$101,$2e(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20ef3a
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20ef1c
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20efea
loc_20ef1c:
	move.b d0,$2e(a0)
	lea dat_20f016(pc),a1
	jsr (sub_205bdc).l
	jsr (sub_2039b6).l
	move.w $2a(a0),d0
	jmp (loc_207688).l

sub_20ef3a:
	move.b $2e(a0),d0
	jsr (sub_2008fc).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20ef5a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ef68(pc,d0.w),d0
	jmp dat_20ef68(pc,d0.w)
dat_20ef68:
	dc.b $00,$04,$00,$34
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$7080408,$16(a0)
	move.l #$20f02c,$4(a0)
	bsr.w sub_20eff8
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_206a80).l
	tst.w d1
	bpl.s loc_20efd8
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
	neg.l $2c(a0)
	bsr.s sub_20efea
loc_20efd8:
	jsr (sub_2039b6).l
	jmp (loc_207684).l
	dc.b $4e,$f9,$00,$20,$3a,$62

sub_20efea:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20eff8:
	lea dat_20f03c(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20f016:
	.incbin 61462, 38
dat_20f03c:
	.incbin 61500, 1014
	tst.b $29(a0)
	bmi.w loc_20f572
	tst.b $28(a0)
	bpl.s loc_20f44e
	movea.w $3e(a0),a1
	cmpi.b #$20,$0(a1)
	bne.w loc_20f6e2
loc_20f44e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f474(pc,d0.w),d0
	jsr dat_20f474(pc,d0.w)
	jsr (sub_2039b6).l
	tst.b $28(a0)
	bmi.s loc_20f472
	move.w $2a(a0),d0
	jmp (loc_207688).l
loc_20f472:
	rts
dat_20f474:
	dc.b $00,$08,$00,$20,$00,$42,$00,$ec
	move.w $8(a0),$2a(a0)
	movea.l a0,a6
	bsr.w sub_20f526
	move.b #$2,$24(a0)
	move.b #$5,$1a(a0)
	lea ($d000).w,a1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$fec0,d0
	subi.w #$280,d0
	bcc.s loc_20f4b4
	addq.b #$2,$24(a0)
	move.b #$0,$1a(a0)
loc_20f4b4:
	rts
	.incbin 62646, 112

sub_20f526:
	move.b #$6,$24(a6)
	ori.b #$4,$1(a6)
	move.b #$3,$18(a6)
	move.w #$33c,$2(a6)
	move.b #$8,$17(a6)
	move.b #$8,$19(a6)
	move.b #$4,$16(a6)
	move.l #$20f6fe,$4(a6)
	move.w $c(a0),$c(a6)
	rts
	.incbin 62816, 18
loc_20f572:
	movea.w $3e(a0),a1
	cmpi.b #$20,$0(a1)
	bne.w loc_20f6e2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f594(pc,d0.w),d0
	jsr dat_20f594(pc,d0.w)
	jmp (sub_2039b6).l
dat_20f594:
	dc.b $00,$0e,$00,$3e,$00,$58,$00,$a8
	dc.b $00,$bc,$00,$dc,$01,$08
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$33c,$2(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$4,$16(a0)
	move.l #$20f6fe,$4(a0)
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	bclr.b #$6,$0(a1,d0.w)
	lea ($d000).w,a1
	jsr (sub_208d90).l
	lea ($f7e0).w,a2
	moveq #$0,d0
	move.b $28(a0),d0
	tst.b $0(a2,d0.w)
	bpl.s loc_20f608
	bra.s loc_20f624
loc_20f608:
	move.w #$fff8,d0
	move.w #$10,d1
	move.w #$fffd,d2
	move.w #$7b,d3
	lea ($d000).w,a6
	bsr.w sub_20f6c0
	bcs.s loc_20f630
	rts
loc_20f624:
	addq.b #$2,$24(a0)
	move.w #$5,$2a(a0)
	rts
loc_20f630:
	addq.b #$6,$24(a0)
	move.w #$5,$1a(a0)
	rts
	.incbin 63036, 132

sub_20f6c0:
	tst.w $12(a6)
	bpl.s loc_20f6e0
	move.w $c(a6),d4
	sub.w $c(a0),d4
	sub.w d2,d4
	sub.w d3,d4
	bcc.s loc_20f6e0
	move.w $8(a6),d4
	sub.w $8(a0),d4
	sub.w d0,d4
	sub.w d1,d4
loc_20f6e0:
	rts
loc_20f6e2:
	jmp (sub_203a62).l
	.incbin 63208, 402

sub_20f87a:
	tst.b $28(a0)
	bmi.s loc_20f8aa
	cmpi.b #$2,($ff152e).l
	bge.s loc_20f89a
	tst.b ($ff156d).l
	bne.s loc_20f8aa
	addq.l #$4,a7
	jmp (loc_207684).l
loc_20f89a:
	tst.b ($ff156a).l
	bne.s loc_20f8aa
	addq.l #$4,a7
	jmp (sub_203a62).l
loc_20f8aa:
	rts
	.incbin 63660, 874

sub_20fc16:
	jsr (sub_206450).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fd3a).l,a1
	move.w #$3f,d6
	bsr.w sub_20fcf6
	bne.s loc_20fc58
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$43c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fc58:
	lea (dat_20fd4c).l,a1
	move.w #$3f,d6
	bsr.w sub_20fcf6
	bne.s loc_20fc8c
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$44c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fc8c:
	lea (dat_20fd5e).l,a1
	move.w #$7f,d6
	bsr.w sub_20fcf6
	bne.s loc_20fcc0
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$45c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fcc0:
	lea (dat_20fd70).l,a1
	move.w #$1f,d6
	bsr.w sub_20fcf6
	bne.s loc_20fcf4
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4840,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fcf4:
	rts

sub_20fcf6:
	subq.b #$1,(a2)
	bpl.w loc_20fd2e
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fd0c
	moveq #$0,d0
loc_20fd0c:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fd1c:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fd1c
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fd2e:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fd3a:
	.incbin 64826, 18
dat_20fd4c:
	.incbin 64844, 18
dat_20fd5e:
	.incbin 64862, 18
dat_20fd70:
	.incbin 64880, 26
dat_20fd8a:
	.incbin 64906, 16
dat_20fd9a:
	.incbin 64922, 66150
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
	.incbin 228734, 4796
dat_23903a:
	.incbin 233530, 28614
