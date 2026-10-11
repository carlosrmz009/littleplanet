; R41A__.MMD
; disassembled from the disc; code only, data comes from data/R41A__.MMD at build time
	.file "R41A__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18
	jmp (loc_20235e).l
	jmp (loc_201e78).l
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
	bsr.w sub_20249a
	bsr.w sub_202442
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_20143a

sub_200184:
	tst.b ($ff1507).l
	bne.s loc_2001aa
	cmpi.w #$280,($f700).w
	bcc.s loc_2001aa
	cmpi.w #$160,($f704).w
	bcs.s loc_2001f2
	bset.b #$7,($f7bb).w
	bne.s loc_2001aa
	moveq #$4,d0
	bsr.w sub_2005d4
loc_2001aa:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_20032c).l,a1
	lea (dat_200354).l,a2
	bsr.w sub_200256
	lea (dat_200336).l,a1
	lea (dat_200354).l,a2
	bsr.w sub_200256
	lea (dat_200340).l,a1
	lea (dat_200354).l,a2
	bsr.w sub_200256
	lea (dat_20034a).l,a1
	lea (dat_200354).l,a2
	bra.w sub_200256
loc_2001f2:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200294).l,a1
	lea (dat_2002a6).l,a2
	bsr.w sub_200256
	lea (dat_2002ae).l,a1
	lea (dat_2002c0).l,a2
	bsr.w sub_200256
	lea (dat_2002ca).l,a1
	lea (dat_2002dc).l,a2
	bsr.w sub_200256
	lea (dat_2002e4).l,a1
	lea (dat_2002f6).l,a2
	bsr.w sub_200256
	lea (dat_200300).l,a1
	lea (dat_200312).l,a2
	bsr.w sub_200256
	lea (dat_200316).l,a1
	lea (dat_200328).l,a2

sub_200256:
	subq.b #$1,(a5)
	bpl.s loc_20028a
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
	bcs.s loc_200276
	moveq #$0,d0
loc_200276:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_20028a:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200294:
	.incbin 660, 18
dat_2002a6:
	dc.b $00,$02,$00,$4a,$00,$28,$00,$04
dat_2002ae:
	.incbin 686, 18
dat_2002c0:
	dc.b $0a,$80,$0a,$4e,$0e,$8c,$0a,$48
	dc.b $0a,$60
dat_2002ca:
	.incbin 714, 18
dat_2002dc:
	dc.b $06,$20,$04,$08,$0a,$48,$06,$24
dat_2002e4:
	.incbin 740, 18
dat_2002f6:
	dc.b $0a,$60,$08,$2c,$0c,$6a,$08,$26
	dc.b $08,$42
dat_200300:
	.incbin 768, 18
dat_200312:
	dc.b $06,$4c,$06,$6c
dat_200316:
	.incbin 790, 18
dat_200328:
	dc.b $04,$08,$04,$2a
dat_20032c:
	dc.b $31,$04,$02,$00,$02,$01,$02,$02
	dc.b $02,$03
dat_200336:
	dc.b $32,$04,$02,$01,$02,$02,$02,$03
	dc.b $02,$00
dat_200340:
	dc.b $33,$04,$02,$02,$02,$03,$02,$00
	dc.b $02,$01
dat_20034a:
	dc.b $34,$04,$02,$03,$02,$00,$02,$01
	dc.b $02,$02
dat_200354:
	dc.b $0e,$ee,$0e,$ca,$0e,$a8,$0e,$86

sub_20035c:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20036e:
	move.w d1,(a0)+
	dbf d0,loc_20036e
	move.w #$15,d4
loc_200378:
	move.b #$12,($f62a).w
	bsr.w sub_200786
	bsr.s sub_20038e
	bsr.w sub_202860
	dbf d4,loc_200378
	rts

sub_20038e:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003a4:
	bsr.s sub_2003d2
	dbf d0,loc_2003a4
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003d0
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003ca:
	bsr.s sub_2003d2
	dbf d0,loc_2003ca
loc_2003d0:
	rts

sub_2003d2:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003fa
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2003e8
	move.w d1,(a0)+
	rts
loc_2003e8:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2003f6
	move.w d1,(a0)+
	rts
loc_2003f6:
	addq.w #$2,(a0)+
	rts
loc_2003fa:
	addq.w #$2,a0
	rts

sub_2003fe:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200408:
	move.b #$12,($f62a).w
	bsr.w sub_200786
	bsr.s sub_20041e
	bsr.w sub_202860
	dbf d4,loc_200408
	rts

sub_20041e:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20042e:
	bsr.s sub_20044c
	dbf d0,loc_20042e
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200444:
	bsr.s sub_20044c
	dbf d0,loc_200444
	rts

sub_20044c:
	move.w (a0),d2
	beq.s loc_200478
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_20045c
	subq.w #$2,(a0)+
	rts
loc_20045c:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_20046a
	subi.w #$20,(a0)+
	rts
loc_20046a:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200478
	subi.w #$200,(a0)+
	rts
loc_200478:
	addq.w #$2,a0
	rts

sub_20047c:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200496:
	move.w d1,(a0)+
	dbf d0,loc_200496
	move.w #$15,d4
loc_2004a0:
	move.b #$12,($f62a).w
	bsr.w sub_200786
	bsr.s sub_2004b6
	bsr.w sub_202860
	dbf d4,loc_2004a0
	rts

sub_2004b6:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2004cc:
	bsr.s sub_2004fa
	dbf d0,loc_2004cc
	cmpi.b #$1,($ff1506).l
	bne.s loc_2004f8
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2004f2:
	bsr.s sub_2004fa
	dbf d0,loc_2004f2
loc_2004f8:
	rts

sub_2004fa:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200526
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200512
	cmp.w d2,d1
	bcs.s loc_200512
	move.w d1,(a0)+
	rts
loc_200512:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200522
	cmp.w d2,d1
	bcs.s loc_200522
	move.w d1,(a0)+
	rts
loc_200522:
	subq.w #$2,(a0)+
	rts
loc_200526:
	addq.w #$2,a0
	rts

sub_20052a:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200534:
	move.b #$12,($f62a).w
	bsr.w sub_200786
	bsr.s sub_20054a
	bsr.w sub_202860
	dbf d4,loc_200534
	rts

sub_20054a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20055a:
	bsr.s sub_200578
	dbf d0,loc_20055a
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200570:
	bsr.s sub_200578
	dbf d0,loc_200570
	rts

sub_200578:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2005b4
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200590
	addq.w #$2,(a0)+
	rts
loc_200590:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2005a2
	addi.w #$20,(a0)+
	rts
loc_2005a2:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2005b4
	addi.w #$200,(a0)+
	rts
loc_2005b4:
	addq.w #$2,a0
	rts

sub_2005b8:
	lea (dat_200624).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_2005cc:
	move.l (a2)+,(a3)+
	dbf d7,loc_2005cc
	rts

sub_2005d4:
	lea (dat_200624).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2005e4:
	move.l (a2)+,(a3)+
	dbf d7,loc_2005e4
	rts

sub_2005ec:
	lea (dat_200624).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$80,a3
	move.w (a1)+,d7
loc_200600:
	move.l (a2)+,(a3)+
	dbf d7,loc_200600
	rts
	dc.b $43,$f9,$00,$20,$06,$24
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$100,a3
	move.w (a1)+,d7
loc_20061c:
	move.l (a2)+,(a3)+
	dbf d7,loc_20061c
	rts
dat_200624:
	.incbin 1572, 354

sub_200786:
	move.w #$2300,sr
loc_20078a:
	tst.b ($f62a).w
	bne.s loc_20078a
	rts

sub_200792:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_2007aa(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_2007aa(pc,d0.w),d0
	rts
dat_2007aa:
	.incbin 1962, 640

sub_200a2a:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a86
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a44
	neg.w d3
loc_200a44:
	tst.w d4
	bpl.w loc_200a4c
	neg.w d4
loc_200a4c:
	cmp.w d3,d4
	bcc.w loc_200a5e
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a90(pc,d4.w),d0
	bra.s loc_200a68
loc_200a5e:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a90(pc,d3.w),d0
loc_200a68:
	tst.w d1
	bpl.w loc_200a74
	neg.w d0
	addi.w #$80,d0
loc_200a74:
	tst.w d2
	bpl.w loc_200a80
	neg.w d0
	addi.w #$100,d0
loc_200a80:
	movem.l (a7)+,d3-d4
	rts
loc_200a86:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a90:
	.incbin 2704, 258

sub_200b92:
	btst.b #$3,$22(a0)
	beq.s loc_200ba6
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200ba6:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200bc8
	move.b $26(a0),d0
	bpl.s loc_200bc2
	subq.b #$1,d0
loc_200bc2:
	addi.b #$20,d0
	bra.s loc_200bd4
loc_200bc8:
	move.b $26(a0),d0
	bpl.s loc_200bd0
	addq.b #$1,d0
loc_200bd0:
	addi.b #$1f,d0
loc_200bd4:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e5e
	cmpi.b #$80,d0
	beq.w loc_200dbc
	cmpi.b #$c0,d0
	beq.w loc_200d20
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
	bsr.w sub_2010e8
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
	bsr.w sub_2010e8
	move.w (a7)+,d0
	bsr.w sub_200cf4
	tst.w d1
	beq.s loc_200c62
	bpl.s loc_200c64
	cmpi.w #$fff2,d1
	blt.s loc_200c8a
	add.w d1,$c(a0)
loc_200c62:
	rts
loc_200c64:
	cmpi.w #$e,d1
	bgt.s loc_200c70
loc_200c6a:
	add.w d1,$c(a0)
	rts
loc_200c70:
	tst.b $38(a0)
	bne.s loc_200c6a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c8a:
	rts
	.incbin 3212, 34
loc_200cae:
	rts
	.incbin 3248, 68

sub_200cf4:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d02
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d02:
	btst.l #$0,d2
	bne.s loc_200d0e
	move.b d2,$26(a0)
	rts
loc_200d0e:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d20:
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
	bsr.w sub_201258
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
	bsr.w sub_201258
	move.w (a7)+,d0
	bsr.w sub_200cf4
	tst.w d1
	beq.s loc_200d94
	bpl.s loc_200d96
	cmpi.w #$fff2,d1
	blt.w loc_200cae
	add.w d1,$8(a0)
loc_200d94:
	rts
loc_200d96:
	cmpi.w #$e,d1
	bgt.s loc_200da2
loc_200d9c:
	add.w d1,$8(a0)
	rts
loc_200da2:
	tst.b $38(a0)
	bne.s loc_200d9c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200dbc:
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
	bsr.w sub_2010e8
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
	bsr.w sub_2010e8
	move.w (a7)+,d0
	bsr.w sub_200cf4
	tst.w d1
	beq.s loc_200e36
	bpl.s loc_200e38
	cmpi.w #$fff2,d1
	blt.w loc_200c8a
	sub.w d1,$c(a0)
loc_200e36:
	rts
loc_200e38:
	cmpi.w #$e,d1
	bgt.s loc_200e44
loc_200e3e:
	sub.w d1,$c(a0)
	rts
loc_200e44:
	tst.b $38(a0)
	bne.s loc_200e3e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e5e:
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
	bsr.w sub_201258
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
	bsr.w sub_201258
	move.w (a7)+,d0
	bsr.w sub_200cf4
	tst.w d1
	beq.s loc_200ed8
	bpl.s loc_200eda
	cmpi.w #$fff2,d1
	blt.w loc_200cae
	sub.w d1,$8(a0)
loc_200ed8:
	rts
loc_200eda:
	cmpi.w #$e,d1
	bgt.s loc_200ee6
loc_200ee0:
	sub.w d1,$8(a0)
	rts
loc_200ee6:
	tst.b $38(a0)
	bne.s loc_200ee0
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f00:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f16
	andi.w #$380,d0
loc_200f16:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f76
	bmi.s loc_200f7a
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f46
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f4c
loc_200f46:
	andi.w #$7fff,$2(a0)
loc_200f4c:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f5c
	bclr.b #$6,$1(a0)
loc_200f5c:
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
loc_200f76:
	movea.l d1,a1
	rts
loc_200f7a:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fe2
	btst.b #$6,$1(a0)
	bne.s loc_200fa8
	cmpi.b #$14,d1
	bne.w loc_2010cc
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_2010cc
loc_200fa8:
	cmpi.b #$15,d1
	bne.s loc_200fb6
	move.w #$60,d1
	bra.w loc_2010cc
loc_200fb6:
	cmpi.b #$1e,d1
	bne.s loc_200fc4
	move.w #$61,d1
	bra.w loc_2010cc
loc_200fc4:
	cmpi.b #$1f,d1
	bne.s loc_200fd2
	move.w #$62,d1
	bra.w loc_2010cc
loc_200fd2:
	cmpi.b #$32,d1
	bne.w loc_2010cc
	move.w #$63,d1
	bra.w loc_2010cc
loc_200fe2:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201048
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201032
	cmpi.b #$6,d1
	beq.s loc_201032
	tst.b ($ff1956).l
	beq.w loc_2010cc
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201042
	cmpi.b #$3c,d1
	beq.s loc_201042
	cmpi.b #$37,d1
	beq.s loc_201042
	cmpi.b #$2f,d1
	beq.s loc_201042
	cmpi.b #$16,d1
	beq.s loc_201042
	bra.w loc_2010cc
loc_201032:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_2010cc
loc_201042:
	addq.b #$1,d1
	bra.w loc_2010cc
loc_201048:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010b8
	cmpi.b #$3,$0(a0)
	bcc.w loc_2010cc
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2010cc
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_20107c
	move.w #$6a,d1
	bra.s loc_2010cc
loc_20107c:
	cmpi.b #$48,d1
	bne.s loc_201088
	move.w #$6b,d1
	bra.s loc_2010cc
loc_201088:
	cmpi.b #$4a,d1
	bne.s loc_201094
	move.w #$6c,d1
	bra.s loc_2010cc
loc_201094:
	cmpi.b #$10,d1
	bne.s loc_2010a0
	move.w #$6d,d1
	bra.s loc_2010cc
loc_2010a0:
	cmpi.b #$63,d1
	bne.s loc_2010ac
	move.w #$6e,d1
	bra.s loc_2010cc
loc_2010ac:
	cmpi.b #$43,d1
	bne.s loc_2010cc
	move.w #$6f,d1
	bra.s loc_2010cc
loc_2010b8:
	btst.b #$6,$1(a0)
	beq.s loc_2010cc
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_2010cc
	move.w #$51,d1
loc_2010cc:
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

sub_2010e8:
	bsr.w sub_200f00
	cmpi.l #$210000,d1
	beq.s loc_201102
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201102
	btst.l d5,d4
	bne.s loc_201110
loc_201102:
	add.w a3,d2
	bsr.w sub_2011a8
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201110:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201102
	lea (dat_239a42).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201136
	not.w d1
	neg.b (a4)
loc_201136:
	btst.l #$c,d4
	beq.s loc_201146
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201146:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239b42).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201162
	neg.w d0
loc_201162:
	tst.w d0
	beq.s loc_201102
	bmi.s loc_20117e
	cmpi.b #$10,d0
	beq.s loc_20119a
loc_20116e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20117e:
	cmpa.w #$10,a3
	bne.s loc_20118e
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20116e
loc_20118e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201102
loc_20119a:
	sub.w a3,d2
	bsr.w sub_2011a8
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_2011a8:
	bsr.w sub_200f00
	cmpi.l #$210000,d1
	beq.s loc_2011c2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011c2
	btst.l d5,d4
	bne.s loc_2011d0
loc_2011c2:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2011d0:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011c2
	lea (dat_239a42).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011f6
	not.w d1
	neg.b (a4)
loc_2011f6:
	btst.l #$c,d4
	beq.s loc_201206
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201206:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239b42).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201222
	neg.w d0
loc_201222:
	tst.w d0
	beq.s loc_2011c2
	bmi.s loc_201238
loc_201228:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201238:
	cmpa.w #$10,a3
	bne.s loc_201248
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201228
loc_201248:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011c2
	not.w d1
	rts

sub_201258:
	bsr.w sub_200f00
	cmpi.l #$210000,d1
	beq.s loc_201272
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201272
	btst.l d5,d4
	bne.s loc_201280
loc_201272:
	add.w a3,d3
	bsr.w sub_201308
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201280:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201272
	lea (dat_239a42).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012ae
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012ae:
	btst.l #$b,d4
	beq.s loc_2012b6
	neg.b (a4)
loc_2012b6:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23ab42).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012d2
	neg.w d0
loc_2012d2:
	tst.w d0
	beq.s loc_201272
	bmi.s loc_2012ee
	cmpi.b #$10,d0
	beq.s loc_2012fa
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012ee:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201272
loc_2012fa:
	sub.w a3,d3
	bsr.w sub_201308
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201308:
	bsr.w sub_200f00
	cmpi.l #$210000,d1
	beq.s loc_201322
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201322
	btst.l d5,d4
	bne.s loc_201330
loc_201322:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201330:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201322
	lea (dat_239a42).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20135e
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20135e:
	btst.l #$b,d4
	beq.s loc_201366
	neg.b (a4)
loc_201366:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23ab42).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201382
	neg.w d0
loc_201382:
	tst.w d0
	beq.s loc_201322
	bmi.s loc_201398
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201398:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201322
	not.w d1
	rts

sub_2013a8:
	rts
	.incbin 5034, 144
loc_20143a:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20145a
	tst.b ($ff0f01).l
	bne.s loc_20145a
	move.b #$1,($ff156a).l
loc_20145a:
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_2014c2
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207748
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_2014c2
	move.b #$1,($ff1508).l
loc_2014c2:
	bset.b #$7,($f600).w
	bsr.w sub_202852
	tst.b ($ff156e).l
	bne.s loc_2014e8
	btst.b #$7,($ff152e).l
	beq.s loc_20150c
	bset.b #$0,($ff151d).l
	beq.s loc_2014f4
loc_2014e8:
	bsr.w sub_20052a
	bclr.b #$0,($ff151d).l
loc_2014f4:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_20157c
	move.w #$0,($ff1502).l
	rts
loc_20150c:
	bset.b #$0,($ff151d).l
	beq.s loc_20151a
	bsr.w sub_2003fe
loc_20151a:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201536
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_20155e
loc_201536:
	tst.b ($ff1508).l
	bne.s loc_20157c
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_20155e:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201566:
	move.l #$0,(a1)+
	dbf d6,loc_201566
	move.b #$c,($f62a).w
	bsr.w sub_200786
	rts
loc_20157c:
	cmpi.w #$800,($f78e).w
	bne.s loc_20159a
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20159a:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2015b0
	btst.b #$7,($ff152e).l
	beq.s loc_2015b6
loc_2015b0:
	move.l #$eee0eee,d0
loc_2015b6:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015be:
	move.l d0,(a1)+
	dbf d6,loc_2015be
loc_2015c4:
	move.b #$c,($f62a).w
	bsr.w sub_200786
	bsr.w sub_202860
	bne.s loc_2015c4
	tst.l ($f680).w
	bne.s loc_2015c4
	bsr.w sub_201a4c
	moveq #$0,d0
	lea (dat_20fe78).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015f0
	bsr.w sub_202966
loc_2015f0:
	moveq #$1,d0
	bsr.w sub_202966
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20160c:
	move.l d0,(a1)+
	dbf d1,loc_20160c
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_20161e:
	move.l d0,(a1)+
	dbf d1,loc_20161e
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_20162e:
	move.l d0,(a1)+
	dbf d1,loc_20162e
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20163e:
	move.l d0,(a1)+
	dbf d1,loc_20163e
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_20164e:
	move.l d0,(a1)+
	dbf d1,loc_20164e
	move.w #$2700,sr
	move.l #$213600,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20253c
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
	cmpi.b #$2,($ff1506).l
	bne.s loc_2016e2
	move.w #$8014,(a6)
	moveq #$0,d0
	move.b ($ff1507).l,d0
	lsl.w #$3,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	add.w d1,d1
	add.w d1,d0
	lea (dat_201b62).l,a1
	move.w $0(a1,d0.w),d0
	move.w d0,($f646).w
	move.w d0,($f648).w
	move.w d0,($f64a).w
	clr.b ($f64d).w
	clr.b ($f64e).w
	move.b #$1,($f64c).w
loc_2016e2:
	move.w #$1e,($ff150a).l
	move.w #$2300,sr
	moveq #$3,d0
	bsr.w sub_2005d4
	moveq #$3,d0
	bsr.w sub_2005b8
	bsr.w sub_202bb6
	bsr.w sub_202d08
	bset.b #$2,($f754).w
	bsr.w sub_2038e2
	bsr.w sub_20376e
	jsr (sub_2013a8).l
	bsr.w sub_2019ae
loc_20171a:
	move.b #$c,($f62a).w
	bsr.w sub_200786
	bsr.w sub_202860
	bne.s loc_20171a
	tst.l ($f680).w
	bne.s loc_20171a
	bsr.w sub_201992
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201a9c
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_20177e
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_20177e:
	move.b #$4,($d800).w
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_2017be
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_2017be:
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
	jsr (sub_20fc68).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_20184e
loc_201848:
	bsr.w sub_20047c
	bra.s loc_20185c
loc_20184e:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201848
	bsr.w sub_20035c
loc_20185c:
	cmpi.b #$2,($ff1506).l
	bne.s loc_20186c
	moveq #$0,d0
	bsr.w sub_2005ec
loc_20186c:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_20187a:
	move.b #$8,($f62a).w
	bsr.w sub_200786
	tst.b ($f7cc).w
	bne.s loc_201898
	btst.b #$7,($f605).w
	beq.s loc_201898
	eori.b #$1,($f63a).w
loc_201898:
	btst.b #$0,($f63a).w
	beq.w loc_20191e
	bsr.w sub_201df6
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2018fc
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_20187a
	subq.b #$1,($ff1508).l
	bpl.s loc_2018ca
	clr.b ($ff1508).l
loc_2018ca:
	move.w #$e,d0
	jsr (sub_205da0).l
	bsr.w sub_207748
	clr.b ($ff1522).l
	jsr (sub_2025c2).l
	move.b #$1,($a01c3e).l
	jsr (sub_2025de).l
	move.w #$1,($ff1502).l
	bra.s loc_20190a
loc_2018fc:
	andi.b #$70,d0
	beq.w loc_20187a
	clr.b ($ff1508).l
loc_20190a:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_20143a
loc_20191e:
	bsr.w sub_201e3c
	addq.w #$1,($ff1504).l
	jsr (sub_20775e).l
	jsr (sub_203a9e).l
	cmpi.w #$800,($f78e).w
	beq.w loc_20143a
	tst.w ($ff1502).l
	bne.w loc_20143a
	tst.w ($ff1906).l
	bne.s loc_201966
	cmpi.b #$6,($d024).w
	bcs.s loc_201966
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_20196a
loc_201966:
	bsr.w sub_202d08
loc_20196a:
	bsr.w sub_201cd2
	jsr (sub_203c48).l
	tst.w ($ff190e).l
	bne.s loc_201980
	bsr.w sub_200184
loc_201980:
	jsr (sub_20c016).l
	bsr.w sub_202860
	bsr.w sub_2019b8
	bra.w loc_20187a

sub_201992:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2019aa
	move.w #$78,$30(a1)
loc_2019aa:
	rts
	dc.b $4e,$75

sub_2019ae:
	move.l #$23bb42,($f796).w
	rts

sub_2019b8:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019d6
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019d6:
	subq.b #$1,($ff1912).l
	bpl.s loc_2019f4
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_2019f4:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a1c
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a1c
	move.b #$0,($ff1915).l
loc_201a1c:
	tst.b ($ff1916).l
	beq.s loc_201a4a
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a4a:
	rts

sub_201a4c:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a6e
	cmpi.b #$2,d0
	bne.s loc_201a6e
	add.b ($ff156a).l,d0
loc_201a6e:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a86(pc,d1.w),d0
	jmp (sub_205da0).l
dat_201a86:
	.incbin 6790, 22

sub_201a9c:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_2382c2).l,a1
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

sub_201b00:
	tst.b ($f63a).w
	bne.s loc_201b60
	cmpi.b #$6,($d024).w
	bcc.s loc_201b12
	bsr.w sub_201b7a
loc_201b12:
	move.b #$0,($f64e).w
	moveq #$0,d0
	addq.b #$2,($ff1955).l
	move.b ($ff1955).l,d0
	jsr (sub_200792).l
	lsr.w #$6,d0
	ext.w d0
	add.w ($f648).w,d0
	move.w d0,($f646).w
	move.w ($f646).w,d0
	sub.w ($f704).w,d0
	bcc.s loc_201b52
	tst.w d0
	bpl.s loc_201b52
	move.b #$df,($f625).w
	move.b #$1,($f64e).w
loc_201b52:
	cmpi.w #$df,d0
	bcs.s loc_201b5c
	move.w #$df,d0
loc_201b5c:
	move.b d0,($f625).w
loc_201b60:
	rts
dat_201b62:
	.incbin 7010, 24

sub_201b7a:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_201ba6(pc,d0.w),d0
	jsr dat_201ba6(pc,d0.w)
	moveq #$0,d1
	move.b ($f64c).w,d1
	move.w ($f64a).w,d0
	sub.w ($f648).w,d0
	beq.s loc_201ba4
	bcc.s loc_201ba0
	neg.w d1
loc_201ba0:
	add.w d1,($f648).w
loc_201ba4:
	rts
dat_201ba6:
	dc.b $00,$06,$00,$56,$00,$fa
	move.w ($d008).w,d2
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201bc2
	rts
loc_201bc2:
	cmpi.b #$1,d0
	bne.s loc_201bd8
	move.w #$280,d1
	cmpi.w #$5e0,d2
	bcs.s loc_201bf6
	move.w #$260,d1
	bra.s loc_201bf6
loc_201bd8:
	move.w #$1d0,d1
	cmpi.w #$920,d2
	bcs.s loc_201bf6
	move.w #$110,d1
	cmpi.w #$1980,d2
	bcs.s loc_201bf6
	move.w #$240,d1
	move.b #$3,($f64c).w
loc_201bf6:
	move.w d1,($f64a).w
	rts
	move.w ($d008).w,d2
	move.w ($f704).w,d1
	addi.w #$e8,d1
	cmpi.w #$200,d2
	bcs.s loc_201c24
	cmpi.w #$600,($d00c).w
	bcs.s loc_201c2a
	cmpi.w #$6c0,($d00c).w
	bcc.s loc_201c2a
	cmpi.w #$2a0,d2
	bcc.s loc_201c2a
loc_201c24:
	move.w d1,($f648).w
	bra.s loc_201c9a
loc_201c2a:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201c40
	move.w #$5b0,d1
	bra.s loc_201c24
loc_201c40:
	cmpi.b #$1,d0
	bne.s loc_201c78
	move.w #$530,d1
	cmpi.w #$c00,d2
	bcs.s loc_201c9a
	move.w #$780,d1
	cmpi.w #$dc0,d2
	bcs.s loc_201c9a
	move.w #$500,d1
	cmpi.w #$1380,d2
	bcc.s loc_201c9a
	cmpi.w #$400,($d00c).w
	bcc.s loc_201c76
	move.w #$3c0,d1
	cmpi.w #$1100,d2
	bcc.s loc_201c9a
loc_201c76:
	rts
loc_201c78:
	move.w #$510,d1
	cmpi.w #$400,d2
	bcs.s loc_201c9a
	move.w #$390,d1
	cmpi.w #$1600,d2
	bcs.s loc_201c9a
	move.w #$410,d1
	cmpi.w #$1900,d2
	bcs.s loc_201c9a
	move.w #$500,d1
loc_201c9a:
	move.w d1,($f64a).w
	rts
	.incbin 7328, 50

sub_201cd2:
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_201df2
	btst.b #$0,$2c(a1)
	bne.w loc_201df2
	tst.b (a1)
	beq.w loc_201df2
	tst.w ($ff1906).l
	bne.w loc_201df2
	moveq #$0,d0
	move.b ($ff1507).l,d0
	cmpi.b #$2,d0
	bcc.w loc_201df2
	lea (dat_20bbf2).l,a2
loc_201d10:
	move.w $8(a1),d0
	cmp.w (a2),d0
	bcs.w loc_201dd8
	cmp.w $4(a2),d0
	bcc.w loc_201dd8
	move.w $c(a1),d2
	cmp.w $2(a2),d2
	bcs.w loc_201dd8
	cmp.w $6(a2),d2
	bcc.w loc_201dd8
	move.b ($ff190d).l,d0
	andi.b #$3f,d0
	bne.s loc_201d46
	move.w #$d0,d0
loc_201d46:
	lea ($f7e0).w,a3
	moveq #$0,d0
	move.b $d(a2),d0
	cmpi.b #$1,$c(a2)
	bne.s loc_201d62
	btst.b #$6,$0(a3,d0.w)
	beq.w loc_201df2
loc_201d62:
	cmpi.b #$4,$24(a1)
	bcc.w loc_201dee
	move.b #$1,($f7c7).w
	clr.b $3c(a1)
	move.w $8(a2),$10(a1)
	move.w $a(a2),$12(a1)
	move.b #$f,$1c(a1)
	bset.b #$1,$22(a1)
	cmpi.b #$2,$c(a2)
	bne.s loc_201da6
	btst.b #$5,$0(a3,d0.w)
	beq.s loc_201da6
	neg.w $10(a1)
	neg.w $12(a1)
loc_201da6:
	btst.b #$0,($f602).w
	beq.s loc_201db2
	subq.w #$1,$c(a1)
loc_201db2:
	btst.b #$1,($f602).w
	beq.s loc_201dbe
	addq.w #$1,$c(a1)
loc_201dbe:
	btst.b #$2,($f602).w
	beq.s loc_201dca
	subq.w #$1,$8(a1)
loc_201dca:
	btst.b #$3,($f602).w
	beq.s loc_201dd6
	addq.w #$1,$8(a1)
loc_201dd6:
	rts
loc_201dd8:
	adda.w #$e,a2
	tst.b (a2)
	bpl.w loc_201d10
	tst.b ($f7c7).w
	beq.s loc_201df2
	move.b #$0,$1c(a1)
loc_201dee:
	clr.b ($f7c7).w
loc_201df2:
	rts
	dc.b $4e,$75

sub_201df6:
	move.w #$ab,d0
	jsr (sub_20262a).l
	bset.b #$7,($f63a).w
	bne.s loc_201e3a
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201e20
loc_201e16:
	move.w #$d5,d0
	jmp (sub_205da0).l
loc_201e20:
	tst.b ($ff151f).l
	bne.s loc_201e16
	tst.b ($ff1520).l
	bne.s loc_201e16
	move.w #$90,d0
	jmp (sub_205da0).l
loc_201e3a:
	rts

sub_201e3c:
	bclr.b #$7,($f63a).w
	beq.s loc_201e76
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201e5c
loc_201e52:
	move.w #$d6,d0
	jmp (sub_205da0).l
loc_201e5c:
	tst.b ($ff151f).l
	bne.s loc_201e52
	tst.b ($ff1520).l
	bne.s loc_201e52
	move.w #$91,d0
	jmp (sub_205da0).l
loc_201e76:
	rts
loc_201e78:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201efe
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201eb4
	move.w #$700,d0
loc_201eb0:
	dbf d0,loc_201eb0
loc_201eb4:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201ee4(pc,d0.w),d0
	jsr dat_201ee4(pc,d0.w)
loc_201eca:
	tst.b ($f63a).w
	bne.s loc_201ed8
	bsr.w sub_202402
	bsr.w sub_2023f0
loc_201ed8:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201ee4:
	.incbin 7908, 26
loc_201efe:
	tst.b ($ff1957).l
	beq.s loc_201eca
	cmpi.b #$2,($ff1506).l
	bne.w loc_201eca
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201f2a
	move.w #$700,d0
loc_201f26:
	dbf d0,loc_201f26
loc_201f2a:
	move.w #$1,($f6fc).w
	jsr (sub_2025c2).l
	jsr (sub_201b00).l
	tst.b ($f64e).w
	bne.s loc_201f68
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201f8c
loc_201f68:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201f8c:
	move.w ($f624).w,(a5)
	jsr (sub_2025de).l
	bra.w loc_201eca
	.incbin 8090, 60
	jsr (sub_20264e).l
	jsr (sub_2025c2).l
	bsr.w sub_20245e
	jsr (sub_201b00).l
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
	move.w ($f624).w,(a5)
	move.w #$1,($f6fc).w
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
	bsr.w sub_205cc2
	tst.b ($f767).w
	beq.s loc_2020c6
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_2020c6:
	tst.w ($ff190e).l
	bne.s loc_2020d4
	jsr (sub_20fc68).l
loc_2020d4:
	jsr (sub_2025de).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	cmpi.b #$60,($f625).w
	bcc.s sub_20210a
	move.b #$1,($f64f).w
	addq.l #$4,a7
	bra.w loc_201eca

sub_20210a:
	bsr.w sub_203366
	bsr.w sub_2028d2
	jmp (loc_20a0f4).l
	dc.b $4e,$75
	jsr (sub_2025c2).l
	bsr.w sub_20245e
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
	jsr (sub_2025de).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203366
	bra.w loc_2028b6
	.incbin 8634, 16
	bsr.w sub_2022b6
	cmpi.b #$1,($ff1903).l
	bne.s loc_2021ec
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_2021ec:
	move.w ($f624).w,(a5)
	bra.w loc_2028b6
	.incbin 8692, 82
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jsr (sub_2025de).l
	lea ($d000).w,a0
	bsr.w sub_205cc2
	tst.b ($f767).w
	beq.s loc_2022a8
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_2022a8:
	tst.w ($f614).w
	beq.w loc_2022b4
	subq.w #$1,($f614).w
loc_2022b4:
	rts

sub_2022b6:
	jsr (sub_2025c2).l
	bsr.w sub_20245e
	tst.b ($f64e).w
	bne.s loc_2022ec
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202310
loc_2022ec:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202310:
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
	jmp (sub_2025de).l
loc_20235e:
	move.w #$2700,sr
	tst.w ($f6fc).w
	beq.s loc_2023dc
	move.w #$0,($f6fc).w
	cmpi.b #$df,($f625).w
	beq.s loc_2023dc
	movem.l a0-a1,-(a7)
	lea ($c00000).l,a1
	lea ($fa80).w,a0
	move.l #$c0000000,$4(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.w #$8adf,$4(a1)
	movem.l (a7)+,a0-a1
	tst.b ($f64f).w
	bne.s loc_2023de
loc_2023dc:
	rte
loc_2023de:
	clr.b ($f64f).w
	movem.l d0-d7/a0-a6,-(a7)
	bsr.w sub_20210a
	movem.l (a7)+,d0-d7/a0-a6
	rte

sub_2023f0:
	tst.b ($d02a).w
	bne.s loc_202400
	tst.w ($f786).w
	beq.s loc_202400
	addq.w #$1,($f786).w
loc_202400:
	rts

sub_202402:
	tst.w ($f780).w
	beq.s loc_20240c
	addq.w #$1,($f780).w
loc_20240c:
	tst.w ($f782).w
	beq.s loc_202416
	addq.w #$1,($f782).w
loc_202416:
	rts

sub_202418:
	move.l d1,-(a7)
	move.l ($f636).w,d1
	bne.s loc_202426
	move.l #$2a6d365a,d1
loc_202426:
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

sub_202442:
	bsr.w sub_2025c2
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2025de

sub_20245e:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20246c
	addq.w #$2,a1

sub_20246c:
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

sub_20249a:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202516).l,a2
	moveq #$12,d7
loc_2024ae:
	move.w (a2)+,(a0)
	dbf d7,loc_2024ae
	move.w (dat_202518).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2024d4:
	move.w d0,(a1)
	dbf d7,loc_2024d4
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202506:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202506
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202516:
	dc.b $80,$04
dat_202518:
	.incbin 9496, 36

sub_20253c:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20255e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20255e
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20258c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20258c
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2025aa:
	move.l d0,(a1)+
	dbf d1,loc_2025aa
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2025ba:
	move.l d0,(a1)+
	dbf d1,loc_2025ba
	rts

sub_2025c2:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2025d2:
	btst.b #$0,($a11100).l
	bne.s loc_2025d2
	rts

sub_2025de:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9708, 60

sub_202628:
	rts

sub_20262a:
	tst.b ($f00a).w
	bne.s loc_202636
	move.b d0,($f00a).w
	rts
loc_202636:
	tst.b ($f00b).w
	bne.s loc_202642
	move.b d0,($f00b).w
	rts
loc_202642:
	tst.b ($f00c).w
	bne.s loc_20264c
	move.b d0,($f00c).w
loc_20264c:
	rts

sub_20264e:
	jsr (sub_2025c2).l
	tst.b ($f00a).w
	beq.s loc_202668
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202668:
	tst.b ($f00b).w
	beq.s loc_20267c
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20267c:
	tst.b ($f00c).w
	beq.s loc_202690
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202690:
	bra.w sub_2025de
	.incbin 9876, 32

sub_2026b4:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202776).l,a3
	lea ($c00000).l,a4
	bra.s loc_2026d0

sub_2026c6:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20278c).l,a3
loc_2026d0:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2026de
	adda.w #$a,a3
loc_2026de:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2027a2
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2026fe
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2026fe:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20274a
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202726
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202726:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202734:
	lsr.w #$4,d0
loc_202736:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202744
	jmp (a3)

sub_202740:
	moveq #$0,d4
	moveq #$8,d3
loc_202744:
	dbf d0,loc_202736
	bra.s sub_2026fe
loc_20274a:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202758
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202758:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202734
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202734
loc_202776:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202740
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202740
	rts
dat_20278c:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202740
	rts

sub_2027a2:
	move.b (a0)+,d0
loc_2027a4:
	cmpi.b #$ff,d0
	bne.s loc_2027ac
	rts
loc_2027ac:
	move.w d0,d7
loc_2027ae:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2027a4
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
	bne.s loc_2027dc
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2027ae
loc_2027dc:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2027e8:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2027e8
	bra.s loc_2027ae

sub_2027f4:
	movem.l a1-a2,-(a7)
	lea (dat_20fe88).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20280c:
	tst.l (a2)
	beq.s loc_202814
	addq.w #$6,a2
	bra.s loc_20280c
loc_202814:
	move.w (a1)+,d0
	bmi.s loc_202820
loc_202818:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202818
loc_202820:
	movem.l (a7)+,a1-a2
	rts
loc_202826:
	movem.l a1-a2,-(a7)
	lea (dat_20fe88).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202852
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20284c
loc_202844:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202844
loc_20284c:
	movem.l (a7)+,a1-a2
	rts

sub_202852:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202858:
	clr.l (a2)+
	dbf d0,loc_202858
	rts

sub_202860:
	tst.l ($f680).w
	beq.s loc_2028b4
	tst.w ($f6f8).w
	bne.s loc_2028b4
	movea.l ($f680).w,a0
	lea (loc_202776).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202882
	adda.w #$a,a3
loc_202882:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2027a2
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
loc_2028b4:
	rts
loc_2028b6:
	tst.w ($f6f8).w
	beq.w loc_202954
loc_2028be:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2028f0

sub_2028d2:
	tst.w ($f6f8).w
	beq.s loc_202954
	tst.b ($f744).w
	bne.s loc_2028be
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2028f0:
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
loc_202924:
	movea.w #$8,a5
	bsr.w sub_202740
	subq.w #$1,($f6f8).w
	beq.s loc_202956
	subq.w #$1,($f6fa).w
	bne.s loc_202924
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202954:
	rts
loc_202956:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20295c:
	move.l $6(a0),(a0)+
	dbf d0,loc_20295c
	rts

sub_202966:
	lea (dat_20fe88).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202978:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2026b4
	dbf d1,loc_202978
	rts
	.incbin 10648, 542

sub_202bb6:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202c12).l,a0
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
	bra.w loc_202c1e
dat_202c12:
	dc.b $00,$04,$00,$00,$1c,$97,$00,$00
	dc.b $05,$10,$00,$60
loc_202c1e:
	tst.b ($ff1522).l
	beq.s loc_202c3a
	jsr (sub_206c68).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bra.s loc_202c50
loc_202c3a:
	lea (dat_202c8c).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202c50:
	subi.w #$a0,d1
	bcc.s loc_202c58
	moveq #$0,d1
loc_202c58:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202c62
	move.w d2,d1
loc_202c62:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202c6e
	moveq #$0,d0
loc_202c6e:
	cmp.w ($f72e).w,d0
	blt.s loc_202c78
	move.w ($f72e).w,d0
loc_202c78:
	move.w d0,($f704).w
	bsr.w sub_202c94
	lea (dat_202c90).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202c8c:
	dc.b $00,$50,$00,$40
dat_202c90:
	dc.b $7f,$7f,$7f,$7f

sub_202c94:
	moveq #$0,d0
	move.w ($f704).w,d0
	cmpi.w #$200,d0
	bcc.s loc_202cae
	cmpi.w #$280,($f700).w
	bcs.s loc_202cca
	move.w #$200,d0
	bra.s loc_202cca
loc_202cae:
	subi.w #$200,d0
	swap d0
	lsr.l #$2,d0
	move.l d0,d2
	add.l d2,d2
	add.l d2,d0
	addi.l #$2000000,d0
	move.l d0,($f70c).w
	swap d0
	bra.s loc_202cd4
loc_202cca:
	move.w d0,($f70c).w
	move.w #$0,($f70e).w
loc_202cd4:
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
loc_202d00:
	clr.l (a2)+
	dbf d2,loc_202d00
	rts

sub_202d08:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202d14
	rts
loc_202d14:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202fdc
	bsr.w sub_20307c
	bsr.w sub_20398a
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_203306
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_2032d2
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_20329e
	moveq #$0,d0
	move.w ($f704).w,d0
	cmpi.w #$200,d0
	bcc.s loc_202d90
	cmpi.w #$280,($f700).w
	bcs.s loc_202da6
	move.w #$200,d0
	bra.s loc_202da6
loc_202d90:
	subi.w #$200,d0
	swap d0
	lsr.l #$2,d0
	move.l d0,d2
	add.l d2,d2
	add.l d2,d0
	addi.l #$2000000,d0
	swap d0
loc_202da6:
	bsr.w sub_20326e
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a2
	move.w ($f708).w,d0
	neg.w d0
	moveq #$f,d6
loc_202ddc:
	move.w d0,(a1)+
	dbf d6,loc_202ddc
	bsr.w sub_202e22
	move.w ($f710).w,d0
	neg.w d0
	move.w #$8f,d6
loc_202df0:
	move.w d0,(a1)+
	dbf d6,loc_202df0
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f700).w,d0
	neg.w d0
	move.w d0,d5
	swap d0
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$7f8,d0
	lsr.w #$2,d0
	lea $0(a2,d0.w),a2
	bra.w loc_202e5e
dat_202e1c:
	dc.b $0d,$09,$03,$01,$01,$00

sub_202e22:
	move.w ($f718).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$5,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f718).w,d3
	moveq #$4,d6
loc_202e42:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202e1c(pc,d6.w),d5
loc_202e4c:
	move.w d0,(a1)+
	dbf d5,loc_202e4c
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202e42
	rts
loc_202e5e:
	lea (dat_202edc).l,a3
	lea (dat_21d7a6).l,a4
	move.b ($f7d8).w,d3
	move.b d3,d4
	addi.w #$80,($f7d8).w
	add.w ($f70c).w,d3
	andi.w #$ff,d3
	add.w ($f704).w,d4
	andi.w #$ff,d4
	move.w #$e7,d6
	andi.w #$7,d2
	move.w (a2)+,d0
	move.w ($f704).w,d1
loc_202e94:
	cmp.w ($f646).w,d1
	bge.s loc_202eb4
	move.l d0,(a1)+
	addq.w #$1,d1
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202eae
	moveq #$0,d2
	move.w (a2)+,d0
loc_202eae:
	dbf d6,loc_202e94
	rts
loc_202eb4:
	move.w #$0,d1
	add.w d5,d1
	move.w d1,(a1)+
	move.b $0(a4,d3.w),d1
	ext.w d1
	add.w d0,d1
	move.w d1,(a1)+
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202ed6
	moveq #$0,d2
	move.w (a2)+,d0
loc_202ed6:
	dbf d6,loc_202eb4
	rts
dat_202edc:
	.incbin 11996, 256

sub_202fdc:
	move.w ($f700).w,d4
	bsr.s sub_203010
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_20300e
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_203008
	bset.b #$2,($f754).w
	rts
loc_203008:
	bset.b #$3,($f754).w
loc_20300e:
	rts

sub_203010:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_203022
	bcs.s loc_203052
	bra.s loc_203028
loc_203022:
	clr.w ($f73a).w
	rts
loc_203028:
	cmpi.w #$10,d0
	blt.s loc_203032
	move.w #$10,d0
loc_203032:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_203040
	move.w ($f72a).w,d0
loc_203040:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_203052:
	cmpi.w #$fff0,d0
	bge.s loc_20305c
	move.w #$fff0,d0
loc_20305c:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_203040
	move.w ($f728).w,d0
	bra.s loc_203040
	.incbin 12396, 16

sub_20307c:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_203090
	subq.w #$5,d0
loc_203090:
	btst.b #$1,$22(a6)
	beq.s loc_2030b0
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_2030fc
	subi.w #$40,d0
	bcc.s loc_2030fc
	tst.b ($f75c).w
	bne.s loc_20310e
	bra.s loc_2030bc
loc_2030b0:
	sub.w ($f73e).w,d0
	bne.s loc_2030c2
	tst.b ($f75c).w
	bne.s loc_20310e
loc_2030bc:
	clr.w ($f73c).w
	rts
loc_2030c2:
	cmpi.w #$60,($f73e).w
	bne.s loc_2030ea
	move.w $14(a6),d1
	bpl.s loc_2030d2
	neg.w d1
loc_2030d2:
	cmpi.w #$800,d1
	bcc.s loc_2030fc
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_20315c
	cmpi.w #$fffa,d0
	blt.s loc_203126
	bra.s loc_203114
loc_2030ea:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_20315c
	cmpi.w #$fffe,d0
	blt.s loc_203126
	bra.s loc_203114
loc_2030fc:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_20315c
	cmpi.w #$fff0,d0
	blt.s loc_203126
	bra.s loc_203114
loc_20310e:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_203114:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_203166
	bra.w loc_203132
loc_203126:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_203132:
	cmp.w ($f72c).w,d1
	bgt.s loc_20318a
	cmpi.w #$ff00,d1
	bgt.s loc_203156
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_20318a
loc_203156:
	move.w ($f72c).w,d1
	bra.s loc_20318a
loc_20315c:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_203166:
	cmp.w ($f72e).w,d1
	blt.s loc_20318a
	subi.w #$800,d1
	bcs.s loc_203186
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_20318a
loc_203186:
	move.w ($f72e).w,d1
loc_20318a:
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
	bne.s loc_2031cc
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_2031c6
	bset.b #$0,($f754).w
	rts
loc_2031c6:
	bset.b #$1,($f754).w
loc_2031cc:
	rts
	.incbin 12750, 160

sub_20326e:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_20329c
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_203296
	bset.b #$0,($f756).w
	rts
loc_203296:
	bset.b #$1,($f756).w
loc_20329c:
	rts

sub_20329e:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2032d0
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2032ca
	bset.b d6,($f756).w
	bra.s loc_2032d0
loc_2032ca:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_2032d0:
	rts

sub_2032d2:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_203304
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_2032fe
	bset.b d6,($f758).w
	bra.s loc_203304
loc_2032fe:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_203304:
	rts

sub_203306:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203338
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_203332
	bset.b d6,($f75a).w
	bra.s loc_203338
loc_203332:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203338:
	rts
	.incbin 13114, 44

sub_203366:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203424
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203508
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20350a
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203422
	bclr.b #$0,(a2)
	beq.s loc_2033d8
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203736
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20350c
loc_2033d8:
	bclr.b #$1,(a2)
	beq.s loc_2033f2
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203736
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20350c
loc_2033f2:
	bclr.b #$2,(a2)
	beq.s loc_203408
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203736
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203562
loc_203408:
	bclr.b #$3,(a2)
	beq.s loc_203422
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203736
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203562
loc_203422:
	rts

sub_203424:
	lea (dat_203818).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203440
	bclr.b #$1,(a2)
	beq.s loc_20348a
	move.w #$e0,d4
loc_203440:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2034ba(pc,d0.w),a3
	beq.s loc_203472
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203736
	movem.l (a7)+,d4-d5
	bsr.w sub_20350c
	movea.l (a7)+,a0
	bra.s loc_20348a
loc_203472:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203738
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203538
	movea.l (a7)+,a0
loc_20348a:
	tst.b (a2)
	bne.s loc_203490
	rts
loc_203490:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2034a4
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2034a4:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2034ca
dat_2034ba:
	.incbin 13498, 16
loc_2034ca:
	moveq #$f,d6
	move.l #$800000,d7
loc_2034d2:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_2034fc
	add.w d0,d0
	movea.l dat_2034ba(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20360e
	movem.l (a7)+,d4-d5
	bsr.w sub_203736
	bsr.w sub_203590
	movem.l (a7)+,d4-d5/a0
loc_2034fc:
	addi.w #$10,d4
	dbf d6,loc_2034d2
	clr.b (a2)
	rts

sub_203508:
	rts

sub_20350a:
	rts

sub_20350c:
	moveq #$15,d6

sub_20350e:
	move.l #$800000,d7
	move.l d0,d1
loc_203516:
	movem.l d4-d5,-(a7)
	bsr.w sub_20360e
	move.l d1,d0
	bsr.w sub_203590
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203516
	rts

sub_203538:
	move.l #$800000,d7
	move.l d0,d1
loc_203540:
	movem.l d4-d5,-(a7)
	bsr.w sub_203610
	move.l d1,d0
	bsr.w sub_203590
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203540
	rts

sub_203562:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20356c:
	movem.l d4-d5,-(a7)
	bsr.w sub_20360e
	move.l d1,d0
	bsr.w sub_203590
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20356c
	rts

sub_203590:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2035cc
	btst.b #$3,(a0)
	bne.s loc_2035ac
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2035ac:
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
loc_2035cc:
	btst.b #$3,(a0)
	bne.s loc_2035ee
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
loc_2035ee:
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

sub_20360e:
	add.w (a3),d5

sub_203610:
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
	beq.s loc_20365e
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
loc_20365e:
	rts
	.incbin 13920, 214

sub_203736:
	add.w (a3),d5

sub_203738:
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
	.incbin 14162, 28

sub_20376e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203798
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2037c0

sub_203798:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20379c:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203736
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20350e
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20379c
	rts
loc_2037c0:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2037c4:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203818).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	cmpi.w #$200,d0
	bcc.s loc_2037ea
	cmpi.w #$280,($f700).w
	bcs.s loc_203800
	move.w #$200,d0
	bra.s loc_203800
loc_2037ea:
	subi.w #$200,d0
	swap d0
	lsr.l #$2,d0
	move.l d0,d3
	add.l d3,d3
	add.l d3,d0
	addi.l #$2000000,d0
	swap d0
loc_203800:
	add.w d4,d0
	andi.w #$7f0,d0
	bsr.w sub_2038aa
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2037c4
	rts
dat_203818:
	.incbin 14360, 130
dat_20389a:
	.incbin 14490, 16

sub_2038aa:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20389a(pc,d0.w),a3
	beq.s loc_2038cc
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203736
	movem.l (a7)+,d4-d5
	bsr.w sub_20350c
	bra.s loc_2038e0
loc_2038cc:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203738
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203538
loc_2038e0:
	rts

sub_2038e2:
	moveq #$0,d0
	lea (dat_20fe78).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2026c6
	movea.l (a2)+,a0
	bsr.w sub_20393c
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2005b8
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203926
	jmp (loc_20bff2).l
loc_203926:
	btst.b #$1,($ff151c).l
	beq.s loc_20393a
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20393a
	bsr.w sub_2027f4
loc_20393a:
	rts

sub_20393c:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203946:
	move.l d0,(a3)+
	dbf d1,loc_203946
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20395c
	lea ($a040).w,a3
	moveq #$2,d1

sub_20395c:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23be62).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203976:
	move.w d1,d0
	movea.l a3,a0
loc_20397a:
	move.b (a1)+,(a0)+
	dbf d0,loc_20397a
	lea $80(a3),a3
	dbf d2,loc_203976
	rts

sub_20398a:
	bsr.w sub_2039e2
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2039bc
	bcc.s loc_2039be
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2039b2
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2039b2:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2039bc:
	rts
loc_2039be:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2039d6
	btst.b #$1,($d022).w
	beq.s loc_2039d6
	add.w d1,d1
	add.w d1,d1
loc_2039d6:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts

sub_2039e2:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2039f4(pc,d0.w),d0
	jmp dat_2039f4(pc,d0.w)
dat_2039f4:
	dc.b $00,$06,$00,$0e,$00,$40
	move.w #$510,($f726).w
	rts
	.incbin 14850, 156

sub_203a9e:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203aa6:
	move.b (a0),d0
	beq.s loc_203abc
	add.w d0,d0
	add.w d0,d0
	lea (dat_203ec0).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203abc:
	lea $40(a0),a0
	dbf d7,loc_203aa6
	rts

sub_203ac6:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203b04
	bpl.s loc_203af6
	btst.b #$1,$2c(a0)
	beq.s loc_203af6
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203b04
loc_203af6:
	btst.b #$2,$2c(a0)
	bne.s loc_203b04
	addi.w #$38,$12(a0)
loc_203b04:
	tst.w $12(a0)
	bmi.s loc_203b18
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203b18
	move.w #$1000,$12(a0)
loc_203b18:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203b28:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203b64
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203b64
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203b62
	neg.w d1
loc_203b62:
	add.w d1,d0
loc_203b64:
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

sub_203b7e:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203bee
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203c0a
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203c0a
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203bc8
	cmpi.w #$800,d3
	bcs.s loc_203bda
	subi.w #$800,d3
	bra.s loc_203bda
loc_203bc8:
	cmpi.w #$700,($f704).w
	bcs.s loc_203bda
	cmpi.w #$100,d3
	bcc.s loc_203bda
	addi.w #$800,d3
loc_203bda:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203c0a
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203c0a
loc_203bee:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203c0a
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203c0a:
	rts
	.incbin 15372, 30

sub_203c2a:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203c30:
	move.l d1,(a1)+
	dbf d0,loc_203c30
	rts
dat_203c38:
	.incbin 15416, 16

sub_203c48:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203c54:
	tst.w (a4)
	beq.w loc_203d14
	moveq #$2,d6
loc_203c5c:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203d0c
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203cc2
	movea.l dat_203c38(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203ca6
	cmpi.w #$800,d2
	bcs.s loc_203cb8
	subi.w #$800,d2
	bra.s loc_203cb8
loc_203ca6:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203cb8
	cmpi.w #$100,d2
	bcc.s loc_203cb8
	addi.w #$800,d2
loc_203cb8:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203ce4
loc_203cc2:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203ce4
	.incbin 15564, 24
loc_203ce4:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203d02
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203d06
loc_203d02:
	bsr.w sub_203d36
loc_203d06:
	bset.b #$7,$1(a0)
loc_203d0c:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203c5c
loc_203d14:
	lea $80(a4),a4
	dbf d7,loc_203c54
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203d2e
	move.l #$0,(a2)
	rts
loc_203d2e:
	move.b #$0,-$5(a2)
	rts

sub_203d36:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203d7c
	btst.l #$1,d4
	bne.w loc_203dca
loc_203d48:
	cmpi.b #$50,d5
	beq.s loc_203d7a
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
	bne.s loc_203d74
	addq.w #$1,d0
loc_203d74:
	move.w d0,(a2)+
	dbf d1,loc_203d48
loc_203d7a:
	rts
loc_203d7c:
	btst.l #$1,d4
	bne.w loc_203e10
loc_203d84:
	cmpi.b #$50,d5
	beq.s loc_203dc8
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
	bne.s loc_203dc2
	addq.w #$1,d0
loc_203dc2:
	move.w d0,(a2)+
	dbf d1,loc_203d84
loc_203dc8:
	rts
loc_203dca:
	cmpi.b #$50,d5
	beq.s loc_203e0e
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
	bne.s loc_203e08
	addq.w #$1,d0
loc_203e08:
	move.w d0,(a2)+
	dbf d1,loc_203dca
loc_203e0e:
	rts
loc_203e10:
	cmpi.b #$50,d5
	beq.s loc_203e62
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
	bne.s loc_203e5c
	addq.w #$1,d0
loc_203e5c:
	move.w d0,(a2)+
	dbf d1,loc_203e10
loc_203e62:
	rts
	.incbin 15972, 92
dat_203ec0:
	.incbin 16064, 334

sub_20400e:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_204020
	move.w #$0,(a1)
	rts
loc_204020:
	tst.w (a1)
	bne.s loc_20402a
	move.b #$1,$1(a1)
loc_20402a:
	cmpi.w #$2a30,(a1)
	bcs.s loc_204074
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204066
	neg.w $10(a0)
loc_204066:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205da0
loc_204074:
	rts
	tst.b ($ff0f01).l
	bne.s loc_204092
	cmpa.w #$d040,a0
	beq.s loc_204092
	tst.b ($ff1906).l
	beq.s loc_204092
	jmp (loc_20758e).l
loc_204092:
	move.b $2a(a0),d0
	beq.s loc_2040bc
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_2040ae
	cmpi.b #$2d,d0
	bcs.s loc_2040b8
	move.b #$2d,d0
	bra.s loc_2040b8
loc_2040ae:
	cmpi.b #$1e,d0
	bcs.s loc_2040b8
	move.b #$1e,d0
loc_2040b8:
	move.b d0,$2a(a0)
loc_2040bc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2040ca(pc,d0.w),d1
	jmp dat_2040ca(pc,d1.w)
dat_2040ca:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_2040d4:
	tst.b ($d300).w
	bne.s loc_204112
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_204112:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_20413a
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_20413a:
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_20416e:
	tst.b ($ff1506).l
	bne.s loc_2041d4
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_2041d4
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_2041d8
	cmpi.b #$2f,d1
	bne.s loc_2041d6
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_2041d4
	tst.b $2c(a0)
	beq.s loc_2041d4
	jsr (sub_20795a).l
	bne.s loc_2041d4
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_2041cc
	moveq #$0,d0
loc_2041cc:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2041d4:
	rts
loc_2041d6:
	rts

sub_2041d8:
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

sub_2041fe:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_20420a
	neg.w d0
loc_20420a:
	btst.b #$1,$2c(a0)
	beq.s loc_20421a
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204242
loc_20421a:
	cmpi.w #$600,d0
	bcs.s loc_204242
	tst.w $14(a0)
	bpl.s loc_204234
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204250
	move.w #$e0,d1
	bra.s loc_204250
loc_204234:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204250
	move.w #$60,d1
	bra.s loc_204250
loc_204242:
	cmpi.w #$a0,d1
	beq.s loc_204250
	bcc.s loc_20424e
	addq.w #$2,d1
	bra.s loc_204250
loc_20424e:
	subq.w #$2,d1
loc_204250:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_2041fe
	bsr.w sub_20416e
	tst.w ($ff1588).l
	beq.s loc_204276
	btst.b #$4,($f605).w
	beq.s loc_204276
	move.b #$1,($ff1906).l
	rts
loc_204276:
	tst.b ($f7cc).w
	bne.s loc_204282
	move.w ($f604).w,($f602).w
loc_204282:
	btst.b #$0,$2c(a0)
	beq.s loc_2042a6
	cmpi.b #$6,($ff1506).l
	bne.s loc_2042a0
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2042be
loc_2042a0:
	bsr.w sub_204588
	bra.s loc_2042be
loc_2042a6:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204304(pc,d0.w),d1
	jsr dat_204304(pc,d1.w)
	jsr (sub_206b94).l
loc_2042be:
	bsr.s sub_204312
	bsr.w sub_2043d2
	bsr.w sub_2043ec
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2042e6
	tst.b $1c(a0)
	bne.s loc_2042e6
	move.b $1d(a0),$1c(a0)
loc_2042e6:
	bsr.w sub_205790
	tst.b $2c(a0)
	bmi.s loc_2042fe
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2042fe
	jsr (sub_207138).l
loc_2042fe:
	bsr.w sub_205646
	rts
dat_204304:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204312:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204336
	move.w $30(a0),d0
	beq.s loc_204328
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204336
loc_204328:
	btst.b #$6,$2c(a0)
	bne.s loc_204336
	jsr (sub_203b7e).l
loc_204336:
	tst.b ($ff151f).l
	beq.s loc_20437a
	tst.w $32(a0)
	beq.s loc_20437a
	subq.w #$1,$32(a0)
	bne.s loc_20437a
	tst.b ($ff1520).l
	bne.s loc_204372
	tst.b ($ff1958).l
	bne.s loc_204372
	tst.b ($ff152e).l
	bne.s loc_20436c
	move.w #$e,d0
	jsr (sub_205da0).l
loc_20436c:
	jsr (sub_201a4c).l
loc_204372:
	move.b #$0,($ff151f).l
loc_20437a:
	tst.b ($ff1520).l
	beq.s loc_2043d0
	tst.w $34(a0)
	beq.s loc_2043d0
	subq.w #$1,$34(a0)
	bne.s loc_2043d0
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2043c8
	tst.b ($ff1958).l
	bne.s loc_2043c8
	tst.b ($ff152e).l
	bne.s loc_2043c2
	move.w #$e,d0
	jsr (sub_205da0).l
loc_2043c2:
	jsr (sub_201a4c).l
loc_2043c8:
	move.b #$0,($ff1520).l
loc_2043d0:
	rts

sub_2043d2:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2043ec:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2043f8
loc_2043f6:
	rts
loc_2043f8:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20440a
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2043f6
loc_20440a:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20444e
	bset.b #$6,$22(a0)
	bne.s loc_2043f6
	bsr.w sub_206220
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2043f6
	bra.s loc_204486
loc_20444e:
	tst.w $12(a0)
	beq.s loc_204456
	bpl.s loc_2043f6
loc_204456:
	bclr.b #$6,$22(a0)
	beq.s loc_2043f6
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2043f6
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204486
	move.w #$f000,$12(a0)
loc_204486:
	jsr (sub_20795a).l
	bne.s loc_20449a
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_20449a:
	rts

sub_20449c:
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
	bcs.s loc_204576
	move.l #$50000,d0
loc_204576:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204588:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2045ae
	tst.b ($ff152e).l
	beq.s loc_2045a4
	cmpi.b #$2,($ff152e).l
	bne.s loc_2045ae
loc_2045a4:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20465e
loc_2045ae:
	tst.b $2a(a0)
	bne.w loc_20466c
	tst.b ($f784).w
	beq.w loc_20466c
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2045cc
	neg.w d0
loc_2045cc:
	tst.w ($f786).w
	bne.s loc_2045d8
	move.w #$1,($f786).w
loc_2045d8:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2045ee
	move.b #$1,($ff1502).l
	bra.w loc_205d9c
loc_2045ee:
	cmpi.w #$d2,d1
	bcs.s loc_204642
	cmpi.b #$2,($ff1522).l
	beq.s loc_204640
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204618
	move.w #$82,d0
	jsr (sub_205da0).l
	moveq #$0,d0
loc_204618:
	add.b ($f784).w,d0
	bpl.s loc_204622
	moveq #$0,d0
	bra.s loc_20462a
loc_204622:
	cmpi.b #$3,d0
	bcs.s loc_20462a
	moveq #$2,d0
loc_20462a:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20449c
	move.b #$2,($ff1522).l
loc_204640:
	rts
loc_204642:
	cmpi.w #$5a,d1
	bcc.s loc_20465a
	cmp.w d2,d0
	bcc.w loc_2040d4
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20465a:
	cmp.w d2,d0
	bcc.s loc_20466c
loc_20465e:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20466c:
	rts
	bsr.w sub_20400e
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20469e
	tst.b ($ff195b).l
	beq.s loc_20468c
	cmpi.b #$79,$1a(a0)
	bne.s loc_2046c8
	bra.s loc_204694
loc_20468c:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2046c8
loc_204694:
	bsr.w sub_204f30
	jmp (sub_203ac6).l
loc_20469e:
	bsr.w sub_204776
	bsr.w sub_204588
	bsr.w sub_20501a
	bsr.w sub_205146
	bsr.w sub_2047ea
	bsr.w sub_204f9c
	bsr.w sub_204f30
	jsr (sub_203b28).l
	bsr.w sub_200b92
	bsr.w sub_2051c4
loc_2046c8:
	rts
	tst.b ($f7c7).w
	bne.s loc_2046e4
	cmpi.b #$15,$1c(a0)
	beq.s loc_2046e4
	tst.w $12(a0)
	bmi.s loc_2046e4
	move.b #$0,$1c(a0)
loc_2046e4:
	bsr.w sub_204776
	bsr.w sub_204588
	bsr.w sub_205104
	bsr.w sub_204e50
	bsr.w sub_204f30
	jsr (sub_203ac6).l
	btst.b #$6,$22(a0)
	beq.s loc_20470c
	subi.w #$28,$12(a0)
loc_20470c:
	bsr.w sub_20520e
	bsr.w sub_205232
	rts
	bsr.w sub_204776
	bsr.w sub_204588
	bsr.w sub_20501a
	bsr.w sub_205182
	bsr.w sub_204c8a
	bsr.w sub_204f30
	tst.b $2a(a0)
	bne.s loc_20473a
	jsr (sub_203b28).l
loc_20473a:
	bsr.w sub_200b92
	bsr.w sub_2051c4
	rts
	bsr.w sub_204776
	bsr.w sub_204588
	bsr.w sub_205104
	bsr.w sub_204e50
	bsr.w sub_204f30
	jsr (sub_203ac6).l
	btst.b #$6,$22(a0)
	beq.s loc_20476c
	subi.w #$28,$12(a0)
loc_20476c:
	bsr.w sub_20520e
	bsr.w sub_205232
	rts

sub_204776:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2047e2
	tst.w ($ff1506).l
	bne.s loc_2047e2
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2047e4).l,a2
loc_2047aa:
	move.b (a2)+,d0
	bmi.s loc_2047ba
	cmp.b d0,d1
	bne.s loc_2047aa
	bset.b #$1,$2c(a0)
	rts
loc_2047ba:
	bclr.b #$1,$2c(a0)
	beq.s loc_2047e2
	tst.w $12(a0)
	bpl.s loc_2047e2
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2047e2
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2047e2
	neg.w $10(a0)
loc_2047e2:
	rts
dat_2047e4:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2047ea:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204b14
	tst.w $3e(a0)
	bne.w loc_204ac4
	btst.b #$2,($f602).w
	beq.s loc_204812
	bsr.w sub_204ba4
loc_204812:
	btst.b #$3,($f602).w
	beq.s loc_20481e
	bsr.w sub_204c1a
loc_20481e:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204ac4
	tst.w $14(a0)
	beq.s loc_20483e
	tst.b $2a(a0)
	beq.w loc_204ac4
	bra.s loc_20484a
loc_20483e:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20484a:
	btst.b #$3,$22(a0)
	beq.s loc_20489c
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2048f4
	cmpi.b #$1e,$0(a1)
	bne.s loc_20487c
	move.b #$0,$1c(a0)
	bra.w loc_204ac4
loc_20487c:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2048d8
	cmp.w d2,d1
	bge.s loc_2048c6
	bra.s loc_2048f4
loc_20489c:
	jsr (sub_206e9c).l
	cmpi.w #$c,d1
	blt.s loc_2048f4
	move.w #$ab,d0
	jsr (sub_20262a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2048d0
loc_2048c6:
	btst.b #$0,$22(a0)
	bne.s loc_2048e0
	bra.s loc_2048ea
loc_2048d0:
	cmpi.b #$3,$37(a0)
	bne.s loc_2048f4
loc_2048d8:
	btst.b #$0,$22(a0)
	bne.s loc_2048ea
loc_2048e0:
	move.b #$32,$1c(a0)
	bra.w loc_204ac4
loc_2048ea:
	move.b #$6,$1c(a0)
	bra.w loc_204ac4
loc_2048f4:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204908
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204908:
	btst.b #$7,($f788).w
	bne.w loc_204a0c
	btst.b #$6,($f788).w
	bne.w loc_204a2c
	btst.b #$1,($f602).w
	bne.w loc_204a2c
	andi.b #$f,($f788).w
	beq.s loc_204940
	btst.b #$0,($f603).w
	beq.s loc_204954
	bset.b #$7,($f788).w
	bra.w loc_204ae8
loc_204940:
	btst.b #$0,($f603).w
	beq.w loc_204954
	move.b #$1,($f788).w
	bra.w loc_204ae8
loc_204954:
	btst.b #$0,($f602).w
	beq.s loc_2049d0
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2049b2
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204984
	asr.w #$1,d2
	sub.w d2,d1
loc_204984:
	btst.b #$0,$22(a0)
	beq.s loc_204990
	neg.w d0
	neg.w d1
loc_204990:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2049a6
	cmp.w d0,d1
	ble.s loc_2049ac
	bra.s loc_2049aa
loc_2049a6:
	cmp.w d1,d0
	ble.s loc_2049ac
loc_2049aa:
	move.w d1,d0
loc_2049ac:
	move.w d0,$14(a0)
	rts
loc_2049b2:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049cc
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20262a).l
loc_2049cc:
	bra.w loc_204ae8
loc_2049d0:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2049f0
	move.w #$ab,d0
	jsr (sub_20262a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204a2c
loc_2049f0:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20262a).l
	bra.w loc_204ac4
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204a0c:
	btst.b #$0,($f602).w
	beq.s loc_204a2c
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204ae8
	addq.w #$2,($f73e).w
	bra.w loc_204ae8
loc_204a2c:
	btst.b #$6,($f788).w
	bne.w loc_204aa8
	andi.b #$f,($f788).w
	beq.s loc_204a50
	btst.b #$1,($f603).w
	beq.s loc_204a62
	bset.b #$6,($f788).w
	bra.w loc_204ae8
loc_204a50:
	btst.b #$1,($f603).w
	beq.s loc_204a62
	move.b #$1,($f788).w
	bra.w loc_204ae8
loc_204a62:
	btst.b #$1,($f602).w
	beq.s loc_204ac4
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204aa6
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204aa6
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204a98
	neg.w $14(a0)
loc_204a98:
	move.w #$9c,d0
	jsr (sub_20262a).l
	bsr.w sub_204fc4
loc_204aa6:
	bra.s loc_204ae8
loc_204aa8:
	btst.b #$1,($f602).w
	beq.s loc_204ac4
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204ae8
	subq.w #$2,($f73e).w
	bra.s loc_204ae8
loc_204ac4:
	cmpi.w #$60,($f73e).w
	bne.s loc_204ade
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204ae8
	move.b #$0,($f788).w
	bra.s loc_204ae8
loc_204ade:
	bcc.s loc_204ae4
	addq.w #$4,($f73e).w
loc_204ae4:
	subq.w #$2,($f73e).w
loc_204ae8:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204b14
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
	move.b $26(a0),d0
	jsr (sub_200792).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204b32:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204ba2
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204ba2
	bmi.s loc_204b4a
	neg.w d1
loc_204b4a:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206d5c
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204ba2
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204b9e
	cmpi.b #$40,d0
	beq.s loc_204b8c
	cmpi.b #$80,d0
	beq.s loc_204b86
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204b86:
	sub.w d1,$12(a0)
	rts
loc_204b8c:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204b9e:
	add.w d1,$12(a0)
loc_204ba2:
	rts

sub_204ba4:
	tst.b $2a(a0)
	bne.s loc_204c18
	move.w $14(a0),d0
	beq.s loc_204bb2
	bpl.s loc_204be2
loc_204bb2:
	bset.b #$0,$22(a0)
	bne.s loc_204bc6
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204bc6:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204bd6
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204bd6
	move.w d1,d0
loc_204bd6:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204be2:
	sub.w d4,d0
	bcc.s loc_204bea
	move.w #$ff80,d0
loc_204bea:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204c18
	cmpi.w #$400,d0
	blt.s loc_204c18
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20262a).l
loc_204c18:
	rts

sub_204c1a:
	tst.b $2a(a0)
	bne.s loc_204c88
	move.w $14(a0),d0
	bmi.s loc_204c52
	bclr.b #$0,$22(a0)
	beq.s loc_204c3a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204c3a:
	cmp.w d6,d0
	bge.s loc_204c46
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204c46
	move.w d6,d0
loc_204c46:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204c52:
	add.w d4,d0
	bcc.s loc_204c5a
	move.w #$80,d0
loc_204c5a:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204c88
	cmpi.w #$fc00,d0
	bgt.s loc_204c88
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20262a).l
loc_204c88:
	rts

sub_204c8a:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204dd4
	tst.w $3e(a0)
	bne.s loc_204cc2
	btst.b #$2,($f602).w
	beq.s loc_204cb6
	bsr.w sub_204e0a
loc_204cb6:
	btst.b #$3,($f602).w
	beq.s loc_204cc2
	bsr.w sub_204e2e
loc_204cc2:
	tst.b $2a(a0)
	beq.w loc_204d6c
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204ce2
	asr.w #$1,d2
	sub.w d2,d1
loc_204ce2:
	btst.b #$0,$22(a0)
	beq.s loc_204cee
	neg.w d0
	neg.w d1
loc_204cee:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204d04
	cmp.w d0,d1
	ble.s loc_204d0a
	bra.s loc_204d08
loc_204d04:
	cmp.w d1,d0
	ble.s loc_204d0a
loc_204d08:
	move.w d1,d0
loc_204d0a:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204d3e
	rts
loc_204d18:
	move.w #$ab,d0
	jsr (sub_20262a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204d9e
loc_204d3e:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204d18
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20262a).l
	btst.b #$0,$22(a0)
	bne.s loc_204d64
	bsr.w sub_204e2e
	bra.s loc_204d6c
loc_204d64:
	bsr.w sub_204e0a
	bra.s loc_204d6c
	dc.b $4e,$75
loc_204d6c:
	move.w $14(a0),d0
	beq.s loc_204d8e
	bmi.s loc_204d82
	sub.w d5,d0
	bcc.s loc_204d7c
	move.w #$0,d0
loc_204d7c:
	move.w d0,$14(a0)
	bra.s loc_204d8e
loc_204d82:
	add.w d5,d0
	bcc.s loc_204d8a
	move.w #$0,d0
loc_204d8a:
	move.w d0,$14(a0)
loc_204d8e:
	tst.w $14(a0)
	bne.s loc_204dd4
	move.w #$ab,d0
	jsr (sub_20262a).l
loc_204d9e:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204dbe
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204dce
loc_204dbe:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204dce:
	move.b #$5,$1c(a0)
loc_204dd4:
	move.b $26(a0),d0
	jsr (sub_200792).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204df8
	move.w #$1000,d1
loc_204df8:
	cmpi.w #$f000,d1
	bge.s loc_204e02
	move.w #$f000,d1
loc_204e02:
	move.w d1,$10(a0)
	bra.w loc_204b32

sub_204e0a:
	move.w $14(a0),d0
	beq.s loc_204e12
	bpl.s loc_204e20
loc_204e12:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204e20:
	sub.w d4,d0
	bcc.s loc_204e28
	move.w #$ff80,d0
loc_204e28:
	move.w d0,$14(a0)
	rts

sub_204e2e:
	move.w $14(a0),d0
	bmi.s loc_204e42
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204e42:
	add.w d4,d0
	bcc.s loc_204e4a
	move.w #$80,d0
loc_204e4a:
	move.w d0,$14(a0)
	rts

sub_204e50:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204e8a
	tst.w ($ff1506).l
	bne.s loc_204e8a
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204e82
	cmpi.w #$840,$8(a0)
	bcc.s loc_204e82
	rts
loc_204e82:
	btst.b #$1,$2c(a0)
	bne.s loc_204eba
loc_204e8a:
	btst.b #$2,($f602).w
	beq.s loc_204ea4
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204ea4
	move.w d1,d0
loc_204ea4:
	btst.b #$3,($f602).w
	beq.s loc_204eba
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204eba
	move.w d6,d0
loc_204eba:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204ed0
	bcc.s loc_204ecc
	addq.w #$4,($f73e).w
loc_204ecc:
	subq.w #$2,($f73e).w
loc_204ed0:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204efe
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204efe
	bmi.s loc_204ef2
	sub.w d1,d0
	bcc.s loc_204eec
	move.w #$0,d0
loc_204eec:
	move.w d0,$10(a0)
	rts
loc_204ef2:
	sub.w d1,d0
	bcs.s loc_204efa
	move.w #$0,d0
loc_204efa:
	move.w d0,$10(a0)
loc_204efe:
	rts
	.incbin 20224, 48

sub_204f30:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204f84
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204f5e
	addi.w #$38,d0
loc_204f5e:
	cmp.w d1,d0
	bls.s loc_204f84
loc_204f62:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204f72
	rts
loc_204f72:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2073ca
	move.b #$6,$24(a0)
	rts
loc_204f84:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204f62

sub_204f9c:
	tst.b ($f7ca).w
	bne.s loc_204fc2
	move.w $14(a0),d0
	bpl.s loc_204faa
	neg.w d0
loc_204faa:
	cmpi.w #$80,d0
	bcs.s loc_204fc2
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204fc2
	btst.b #$1,($f602).w
	bne.s sub_204fc4
loc_204fc2:
	rts

sub_204fc4:
	btst.b #$2,$22(a0)
	beq.s loc_204fce
	bra.s loc_204ffe
loc_204fce:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204fee
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204ffe
loc_204fee:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204ffe:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_205018
	cmpi.w #$200,$14(a0)
	bcc.s loc_205018
	move.w #$200,$14(a0)
loc_205018:
	rts

sub_20501a:
	tst.b $2a(a0)
	beq.s loc_205022
	rts
loc_205022:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_205034
	tst.w $14(a0)
	beq.w loc_2050fa
loc_205034:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_2050fa
	btst.b #$3,$22(a0)
	beq.s loc_205050
	jsr (sub_205d26).l
	beq.s loc_205080
loc_205050:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206dc6
	cmpi.w #$6,d1
	blt.w loc_2050fa
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_205076
	move.w #$380,d2
loc_205076:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_205080:
	jsr (sub_200792).l
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
	jsr (sub_20262a).l
	btst.b #$2,$22(a0)
	bne.s loc_2050fc
	tst.b ($ff195b).l
	beq.s loc_2050de
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_2050ee
loc_2050de:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_2050ee:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_2050fa:
	rts
loc_2050fc:
	bset.b #$4,$22(a0)
	rts

sub_205104:
	tst.b $3c(a0)
	beq.s loc_205136
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_20511a
	move.w #$fe00,d1
loc_20511a:
	cmp.w $12(a0),d1
	ble.s loc_205134
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205134
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205134:
	rts
loc_205136:
	cmpi.w #$f040,$12(a0)
	bge.s loc_205144
	move.w #$f040,$12(a0)
loc_205144:
	rts

sub_205146:
	tst.b $2a(a0)
	bne.s loc_205180
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205180
	move.b $26(a0),d0
	jsr (sub_200792).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_205180
	bmi.s loc_20517c
	tst.w d0
	beq.s loc_20517a
	add.w d0,$14(a0)
loc_20517a:
	rts
loc_20517c:
	add.w d0,$14(a0)
loc_205180:
	rts

sub_205182:
	tst.b $2a(a0)
	bne.s loc_2051c2
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2051c2
	move.b $26(a0),d0
	jsr (sub_200792).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2051b8
	tst.w d0
	bpl.s loc_2051b2
	asr.l #$2,d0
loc_2051b2:
	add.w d0,$14(a0)
	rts
loc_2051b8:
	tst.w d0
	bmi.s loc_2051be
	asr.l #$2,d0
loc_2051be:
	add.w d0,$14(a0)
loc_2051c2:
	rts

sub_2051c4:
	nop
	tst.b $38(a0)
	bne.s loc_205206
	tst.w $3e(a0)
	bne.s loc_205208
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205206
	move.w $14(a0),d0
	bpl.s loc_2051e8
	neg.w d0
loc_2051e8:
	cmpi.w #$280,d0
	bcc.s loc_205206
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205206:
	rts
loc_205208:
	subq.w #$1,$3e(a0)
	rts

sub_20520e:
	btst.b #$1,$2c(a0)
	bne.s loc_205230
	move.b $26(a0),d0
	beq.s loc_205230
	bpl.s loc_205226
	addq.b #$2,d0
	bcc.s loc_205224
	moveq #$0,d0
loc_205224:
	bra.s loc_20522c
loc_205226:
	subq.b #$2,d0
	bcc.s loc_20522c
	moveq #$0,d0
loc_20522c:
	move.b d0,$26(a0)
loc_205230:
	rts

sub_205232:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a2a).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205316
	cmpi.b #$80,d0
	beq.w loc_205378
	cmpi.b #$c0,d0
	beq.w loc_2053d4
	bsr.w sub_2070dc
	tst.w d1
	bpl.s loc_205284
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205284:
	bsr.w sub_206f3e
	tst.w d1
	bpl.s loc_205296
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205296:
	bsr.w sub_206dee
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205314
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2052b4
	cmp.b d2,d0
	blt.s loc_205314
loc_2052b4:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205436
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052f2
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2052e4
	asr.w $12(a0)
	bra.s loc_205306
loc_2052e4:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2052f2:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205306
	move.w #$fc0,$12(a0)
loc_205306:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205314
	neg.w $14(a0)
loc_205314:
	rts
loc_205316:
	bsr.w sub_2070dc
	tst.w d1
	bpl.s loc_205330
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205330:
	bsr.w sub_206f96
	tst.w d1
	bpl.s loc_20534a
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205348
	move.w #$0,$12(a0)
loc_205348:
	rts
loc_20534a:
	tst.w $12(a0)
	bmi.s loc_205376
	bsr.w sub_206dee
	tst.w d1
	bpl.s loc_205376
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205436
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205376:
	rts
loc_205378:
	bsr.w sub_2070dc
	tst.w d1
	bpl.s loc_20538a
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20538a:
	bsr.w sub_206f3e
	tst.w d1
	bpl.s loc_20539c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20539c:
	bsr.w sub_206f96
	tst.w d1
	bpl.s loc_2053d2
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2053bc
	move.w #$0,$12(a0)
	rts
loc_2053bc:
	move.b d3,$26(a0)
	bsr.w sub_2054a8
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2053d2
	neg.w $14(a0)
loc_2053d2:
	rts
loc_2053d4:
	bsr.w sub_206f3e
	tst.w d1
	bpl.s loc_2053ee
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2053ee:
	bsr.w sub_206f96
	tst.w d1
	bpl.s loc_205408
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205406
	move.w #$0,$12(a0)
loc_205406:
	rts
loc_205408:
	tst.w $12(a0)
	bmi.s loc_205434
	bsr.w sub_206dee
	tst.w d1
	bpl.s loc_205434
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205436
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205434:
	rts

sub_205436:
	btst.b #$4,$22(a0)
	beq.s loc_205440
	nop
loc_205440:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_20549a
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20547a
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_20548a
loc_20547a:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20548a:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20262a).l
loc_20549a:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2054a8:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21704, 114
	bsr.w sub_205552
	jsr (sub_203ac6).l
	bsr.w sub_2043d2
	bsr.w sub_205790
	jmp (sub_203b7e).l

sub_205552:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_2055c0
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_205586
	clr.b ($ff1508).l
loc_205586:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2055a0
	tst.b ($ff0f01).l
	beq.s loc_2055a0
	move.b #$0,($ff1508).l
	bra.s loc_2055ba
loc_2055a0:
	jsr (sub_20795a).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_2055c0
loc_2055ba:
	move.w #$3c,$3a(a0)
loc_2055c0:
	rts
	tst.w $3a(a0)
	beq.w loc_205644
	subq.w #$1,$3a(a0)
	bne.w loc_205644
	move.w #$1,($ff1502).l
	jsr (sub_2025c2).l
	move.b #$1,($a01c3e).l
	jsr (sub_2025de).l
	bsr.w sub_207748
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_205612
	cmpi.b #$1,($ff152e).l
	bne.s loc_205612
	bclr.b #$1,($ff151c).l
loc_205612:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_205640
	cmpi.b #$1,($ff152e).l
	bne.s loc_20563a
	tst.b ($ff158e).l
	beq.s loc_205640
	move.b #$1,($ff1522).l
	bra.s loc_205640
loc_20563a:
	clr.b ($ff1522).l
loc_205640:
	bra.w sub_205da0
loc_205644:
	rts

sub_205646:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20566e
	cmpi.b #$5,($ff1506).l
	beq.s loc_20566e
	cmpi.b #$2,($ff1506).l
	beq.s loc_20566e
	tst.b ($ff1506).l
	bne.w loc_205730
loc_20566e:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2056ac
	tst.b ($ff1506).l
	bne.w loc_205732
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205732
	bra.s loc_2056b4
loc_2056ac:
	cmp.b ($f7af).w,d1
	beq.w loc_205732
loc_2056b4:
	cmp.b ($f7ac).w,d1
	beq.s loc_2056e4
	cmp.b ($f7ad).w,d1
	beq.s loc_2056c8
	bclr.b #$6,$1(a0)
	rts
loc_2056c8:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20574a
	btst.b #$1,$22(a0)
	beq.s loc_2056e4
	bclr.b #$6,$1(a0)
	rts
loc_2056e4:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2056f6
	bclr.b #$6,$1(a0)
	rts
loc_2056f6:
	cmpi.b #$e0,d2
	bcs.s loc_205704
	bset.b #$6,$1(a0)
	rts
loc_205704:
	btst.b #$6,$1(a0)
	bne.s loc_205720
	move.b $26(a0),d1
	beq.s loc_205730
	cmpi.b #$80,d1
	bhi.s loc_205730
	bset.b #$6,$1(a0)
	rts
loc_205720:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205730
	bclr.b #$6,$1(a0)
loc_205730:
	rts
loc_205732:
	btst.b #$2,$22(a0)
	bne.s loc_205744
	move.w #$9c,d0
	jsr (sub_20262a).l
loc_205744:
	jmp (sub_204fc4).l
loc_20574a:
	tst.w $12(a0)
	bmi.s loc_20578e
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205782
	cmpi.w #$38,d1
	bcs.s loc_20577a
	cmpi.w #$80,d1
	bcs.s loc_20578e
loc_205772:
	bclr.b #$6,$1(a0)
	rts
loc_20577a:
	bset.b #$6,$1(a0)
	rts
loc_205782:
	cmpi.w #$38,d1
	bcs.s loc_205772
	cmpi.w #$80,d1
	bcc.s loc_20577a
loc_20578e:
	rts

sub_205790:
	lea (dat_205a80).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2057b2
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2057b2:
	bsr.w sub_205a22
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20582a
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2057f8
	move.b d0,$1e(a0)

sub_2057dc:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2057f0
	bpl.s loc_2057f0
	cmpi.b #$fd,d0
	bge.s loc_2057fa
loc_2057f0:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2057f8:
	rts
loc_2057fa:
	addq.b #$1,d0
	bne.s loc_20580a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2057f0
loc_20580a:
	addq.b #$1,d0
	bne.s loc_20581e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2057f0
loc_20581e:
	addq.b #$1,d0
	bne.s loc_205828
	move.b $2(a1,d1.w),$1c(a0)
loc_205828:
	rts
loc_20582a:
	subq.b #$1,$1e(a0)
	bpl.s loc_2057f8
	addq.b #$1,d0
	bne.w loc_2058e4
	tst.b ($ff195b).l
	bne.w loc_2059ac
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205852
	not.b d0
loc_205852:
	btst.b #$1,$2c(a0)
	bne.s loc_205860
	addi.b #$10,d0
	bra.s loc_205862
loc_205860:
	addq.b #$8,d0
loc_205862:
	bpl.s loc_205866
	moveq #$3,d1
loc_205866:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205958
	move.w $14(a0),d2
	bpl.s loc_205884
	neg.w d2
loc_205884:
	btst.b #$1,$2c(a0)
	beq.s loc_20589c
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205c82).l,a1
	bra.s loc_2058c6
loc_20589c:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205c5c).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2058c6
	lea (dat_205b00).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2058c6
	lea (dat_205af8).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2058c6:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2058d4
	moveq #$0,d2
loc_2058d4:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2057dc
	add.b d3,$1a(a0)
	rts
loc_2058e4:
	addq.b #$1,d0
	bne.s loc_205954
	move.w $14(a0),d2
	bpl.s loc_2058f0
	neg.w d2
loc_2058f0:
	lea (dat_205bde).l,a1
	tst.b ($ff195b).l
	bne.s loc_20592e
	lea (dat_205b10).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205922
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20592e
	lea (dat_205c8a).l,a1
	bra.s loc_20592e
loc_205922:
	cmpi.w #$600,d2
	bcc.s loc_20592e
	lea (dat_205b08).l,a1
loc_20592e:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205938
	moveq #$0,d2
loc_205938:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057dc
loc_205954:
	addq.b #$1,d0
	bne.s loc_205998
loc_205958:
	move.w $14(a0),d2
	bmi.s loc_205960
	neg.w d2
loc_205960:
	addi.w #$800,d2
	bpl.s loc_205968
	moveq #$0,d2
loc_205968:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205bf0).l,a1
	tst.b ($ff195b).l
	bne.s loc_205982
	lea (dat_205b18).l,a1
loc_205982:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057dc
loc_205998:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2059ac:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2059be
	not.b d0
loc_2059be:
	addi.b #$10,d0
	bpl.s loc_2059c6
	moveq #$0,d1
loc_2059c6:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2059f4
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2058e4
loc_2059f4:
	move.w $14(a0),d2
	bpl.s loc_2059fc
	neg.w d2
loc_2059fc:
	lea (dat_205bd8).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205a0e
	lea (dat_205bd2).l,a1
loc_205a0e:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205a18
	moveq #$0,d2
loc_205a18:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2057dc

sub_205a22:
	tst.b ($ff195b).l
	beq.s loc_205a2e
	move.b dat_205a30(pc,d0.w),d0
loc_205a2e:
	rts
dat_205a30:
	.incbin 23088, 80
dat_205a80:
	.incbin 23168, 120
dat_205af8:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205b00:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205b08:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205b10:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205b18:
	.incbin 23320, 186
dat_205bd2:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205bd8:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205bde:
	.incbin 23518, 18
dat_205bf0:
	.incbin 23536, 108
dat_205c5c:
	.incbin 23644, 38
dat_205c82:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205c8a:
	.incbin 23690, 56

sub_205cc2:
	tst.b (a0)
	beq.w loc_205d24
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205d24
	move.b d0,(a2)
	lea (dat_233a26).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205d24
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205cf6:
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
loc_205d10:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205d10
	dbf d1,loc_205cf6
loc_205d24:
	rts

sub_205d26:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205d9a
	move.w #$98,d0
	jsr (sub_20262a).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a2a).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205d88
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205d88:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205d9a:
	rts
loc_205d9c:
	move.w #$e,d0

sub_205da0:
	cmpi.w #$67,d0
	bne.s loc_205dae
	move.b #$1,($ff1958).l
loc_205dae:
	move.w d0,($a12010).l
loc_205db4:
	move.w ($a12020).l,d0
	beq.s loc_205db4
	cmp.w ($a12020).l,d0
	bne.s loc_205db4
	move.w #$0,($a12010).l
loc_205dcc:
	move.w ($a12020).l,d0
	bne.s loc_205dcc
	move.w ($a12020).l,d0
	bne.s loc_205dcc
	rts
	dc.b $00,$00

sub_205de0:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205dfc
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205dfc:
	subq.b #$1,$1e(a0)
	bpl.s loc_205e3c
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205e3e
loc_205e18:
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
loc_205e3c:
	rts
loc_205e3e:
	addq.b #$1,d0
	bne.s loc_205e4e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205e18
loc_205e4e:
	addq.b #$1,d0
	bne.s loc_205e62
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205e18
loc_205e62:
	addq.b #$1,d0
	bne.s loc_205e6c
	move.b $2(a1,d1.w),$1c(a0)
loc_205e6c:
	addq.b #$1,d0
	bne.s loc_205e74
	addq.b #$2,$24(a0)
loc_205e74:
	addq.b #$1,d0
	bne.s loc_205e82
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205e82:
	addq.b #$1,d0
	bne.s loc_205e8a
	addq.b #$2,$25(a0)
loc_205e8a:
	rts
	.incbin 24204, 526
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2060a8(pc,d0.w),d1
	jmp dat_2060a8(pc,d1.w)
dat_2060a8:
	.incbin 24744, 18
	addq.b #$2,$24(a0)
	move.l #$21e9b4,$4(a0)
	ori.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_206102
	addq.b #$8,$24(a0)
	move.l #$21e9b4,$4(a0)
	ori.w #$48a,$2(a0)
	andi.w #$7f,d0
	move.b d0,$33(a0)
	bra.w loc_206266
loc_206102:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	lea (dat_206468).l,a1
	jsr (sub_205de0).l
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_20613c
	move.b #$6,$24(a0)
	addq.b #$7,$1c(a0)
	cmpi.b #$d,$1c(a0)
	beq.s loc_206180
	bra.s loc_206180
loc_20613c:
	tst.b ($f7c7).w
	beq.s loc_206146
	addq.w #$4,$30(a0)
loc_206146:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_21d7a6).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	bsr.s sub_2061d4
	jsr (sub_203b28).l
	tst.b $1(a0)
	bpl.s loc_20617a
	jmp (sub_203b7e).l
loc_20617a:
	jmp (sub_203c2a).l
loc_206180:
	bsr.s sub_2061d4
	lea (dat_206468).l,a1
	jsr (sub_205de0).l
	jmp (sub_203b7e).l
	jmp (sub_203c2a).l
	cmpi.w #$c,($ff150a).l
	bhi.s loc_2061ce
	subq.w #$1,$38(a0)
	bne.s loc_2061b6
	move.b #$e,$24(a0)
	addq.b #$7,$1c(a0)
	bra.s loc_206180
loc_2061b6:
	lea (dat_206468).l,a1
	jsr (sub_205de0).l
	tst.b $1(a0)
	bpl.s loc_2061ce
	jmp (sub_203b7e).l
loc_2061ce:
	jmp (sub_203c2a).l

sub_2061d4:
	tst.w $38(a0)
	beq.s loc_20621e
	subq.w #$1,$38(a0)
	bne.s loc_20621e
	cmpi.b #$7,$1c(a0)
	bcc.s loc_20621e
	move.w #$f,$38(a0)
	clr.w $12(a0)
	move.b #$80,$1(a0)
	move.w $8(a0),d0
	sub.w ($f700).w,d0
	addi.w #$80,d0
	move.w d0,$8(a0)
	move.w $c(a0),d0
	sub.w ($f704).w,d0
	addi.w #$80,d0
	move.w d0,$a(a0)
	move.b #$c,$24(a0)
loc_20621e:
	rts

sub_206220:
	cmpi.w #$c,($ff150a).l
	bhi.s loc_206258
	move.w #$82,d0
	cmpi.w #$103,($ff1506).l
	bne.s loc_20623c
	move.w #$86,d0
loc_20623c:
	tst.b ($ff151f).l
	beq.s loc_206248
	move.w #$87,d0
loc_206248:
	tst.b ($f7aa).w
	beq.s loc_206252
	move.w #$8c,d0
loc_206252:
	jsr (sub_202628).l
loc_206258:
	move.w #$1e,($ff150a).l
	clr.b ($d1f2).w
	rts
loc_206266:
	tst.w $2c(a0)
	bne.w loc_206356
	cmpi.b #$6,($d024).w
	bcc.w loc_206466
	btst.b #$6,($d022).w
	beq.w loc_206466
	subq.w #$1,$38(a0)
	bpl.w loc_20637c
	move.w #$3b,$38(a0)
	move.w #$1,$36(a0)
	jsr (sub_202418).l
	andi.w #$1,d0
	move.b d0,$34(a0)
	move.w ($ff150a).l,d0
	cmpi.w #$19,d0
	beq.s loc_2062e8
	cmpi.w #$14,d0
	beq.s loc_2062e8
	cmpi.w #$f,d0
	beq.s loc_2062e8
	cmpi.w #$c,d0
	bhi.s loc_2062e8
	btst.b #$5,($ff1505).l
	bne.s loc_2062d6
	move.w #$df,d0
	jsr (sub_20262a).l
loc_2062d6:
	subq.b #$1,$32(a0)
	bpl.s loc_2062e8
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_2062e8:
	subq.w #$1,($ff150a).l
	bcc.w loc_20637a
	bsr.w sub_206220
	move.b #$81,($d02c).w
	move.w #$b6,d0
	jsr (sub_20262a).l
	move.b #$a,$34(a0)
	move.w #$1,$36(a0)
	move.w #$78,$2c(a0)
	move.l a0,-(a7)
	lea ($d000).w,a0
	bsr.w sub_205436
	move.b #$17,$1c(a0)
	bset.b #$1,$22(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$0,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.b #$1,($f744).w
	movea.l (a7)+,a0
	rts
loc_206356:
	subq.w #$1,$2c(a0)
	bne.s loc_206364
	move.b #$6,($d024).w
	rts
loc_206364:
	move.l a0,-(a7)
	lea ($d000).w,a0
	jsr (sub_203b28).l
	addi.w #$10,$12(a0)
	movea.l (a7)+,a0
	bra.s loc_20637c
loc_20637a:
	bra.s loc_20638c
loc_20637c:
	tst.w $36(a0)
	beq.w loc_206466
	subq.w #$1,$3a(a0)
	bpl.w loc_206466
loc_20638c:
	jsr (sub_202418).l
	andi.w #$f,d0
	move.w d0,$3a(a0)
	jsr (sub_20795a).l
	bne.w loc_206466
	move.b #$21,$0(a1)
	move.w ($d008).w,$8(a1)
	moveq #$6,d0
	btst.b #$0,($d022).w
	beq.s loc_2063c2
	neg.w d0
	move.b #$40,$26(a1)
loc_2063c2:
	add.w d0,$8(a1)
	move.w ($d00c).w,$c(a1)
	move.b #$6,$28(a1)
	tst.w $2c(a0)
	beq.w loc_206410
	andi.w #$7,$3a(a0)
	addi.w #$0,$3a(a0)
	move.w ($d00c).w,d0
	subi.w #$c,d0
	move.w d0,$c(a1)
	jsr (sub_202418).l
	move.b d0,$26(a1)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	bne.s loc_20645c
	move.b #$e,$28(a1)
	bra.s loc_20645c
loc_206410:
	btst.b #$7,$36(a0)
	beq.s loc_20645c
	move.w #$2000,$2(a1)
	move.w ($ff150a).l,d2
	lsr.w #$1,d2
	jsr (sub_202418).l
	andi.w #$3,d0
	bne.s loc_206444
	bset.b #$6,$36(a0)
	bne.s loc_20645c
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_206444:
	tst.b $34(a0)
	bne.s loc_20645c
	bset.b #$6,$36(a0)
	bne.s loc_20645c
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_20645c:
	subq.b #$1,$34(a0)
	bpl.s loc_206466
	clr.w $36(a0)
loc_206466:
	rts
dat_206468:
	.incbin 25704, 632
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2066ee(pc,d0.w),d0
	jmp dat_2066ee(pc,d0.w)
dat_2066ee:
	dc.b $00,$06,$00,$42,$00,$5c
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$21d652,$4(a0)
	move.w #$298,$2(a0)
	move.b $28(a0),$1c(a0)
	moveq #$d,d0
	move.w #$a2,d0
	cmpi.b #$2,$28(a0)
	bcs.s loc_20672a
	move.w #$a1,d0
loc_20672a:
	jsr (sub_20262a).l
	move.w ($f646).w,$c(a0)
	addq.w #$4,$c(a0)
	lea (dat_21d63a).l,a1
	bsr.w sub_205de0
	jmp (sub_203b7e).l
	jmp (sub_203c2a).l
	.incbin 26448, 316

sub_20688c:
	bclr.b #$7,($ff156b).l
	beq.s loc_2068da
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2068dc(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2068b0:
	move.l (a1)+,(a2)+
	dbf d0,loc_2068b0
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2068da:
	rts
dat_2068dc:
	.incbin 26844, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206904(pc,d0.w),d0
	jsr dat_206904(pc,d0.w)
	jmp (sub_203b7e).l
dat_206904:
	dc.b $00,$04,$00,$1c
	ori.b #$4,$1(a0)
	move.w #$8280,$2(a0)
	move.l #$206994,$4(a0)
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$a0,d0
	moveq #$0,d1
	move.b $2a(a0),d1
	addq.b #$1,d1
	cmpi.b #$2,d1
	bcs.s loc_206938
	moveq #$0,d1
loc_206938:
	move.b d1,$2a(a0)
	move.b dat_20695e(pc,d1.w),d1
	ext.w d1
	add.w d1,d0
	move.w d0,$8(a0)
	move.w ($f646).w,$c(a0)
	addq.w #$2,$c(a0)
	lea (dat_206960).l,a1
	jmp (sub_205de0).l
dat_20695e:
	dc.b $a0,$60
dat_206960:
	.incbin 26976, 564

sub_206b94:
	rts
loc_206b96:
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
	bne.s loc_206c50
	move.b ($ff1593).l,($ff195b).l
loc_206c50:
	tst.b ($ff1522).l
	bpl.s loc_206c66
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c66:
	rts

sub_206c68:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206b96
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
	bne.s loc_206d22
	move.b ($ff1591).l,($ff195b).l
loc_206d22:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206d44
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206d44:
	tst.b ($ff1522).l
	bpl.s loc_206d5a
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206d5a:
	rts

sub_206d5c:
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
	bpl.s loc_206d98
	move.b d1,d0
	bpl.s loc_206d92
	subq.b #$1,d0
loc_206d92:
	addi.b #$20,d0
	bra.s loc_206da2
loc_206d98:
	move.b d1,d0
	bpl.s loc_206d9e
	addq.b #$1,d0
loc_206d9e:
	addi.b #$1f,d0
loc_206da2:
	andi.b #$c0,d0
	beq.w loc_206e72
	cmpi.b #$80,d0
	beq.w loc_20700e
	andi.b #$38,d1
	bne.s loc_206dba
	addq.w #$8,d2
loc_206dba:
	cmpi.b #$40,d0
	beq.w loc_2070e4
	bra.w loc_206f46

sub_206dc6:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_20706c
	cmpi.b #$80,d0
	beq.w sub_206f96
	cmpi.b #$c0,d0
	beq.w loc_206ed6

sub_206dee:
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
	jsr (sub_2010e8).l
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
	jsr (sub_2010e8).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206e52:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206e60
	move.b ($f768).w,d3
	exg d0,d1
loc_206e60:
	btst.l #$0,d3
	beq.s loc_206e68
	move.b d2,d3
loc_206e68:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206e72:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010e8).l
	move.b #$0,d2
loc_206e8e:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e9a
	move.b d2,d3
loc_206e9a:
	rts

sub_206e9c:
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
	jsr (sub_2010e8).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ed4
	move.b #$0,d3
loc_206ed4:
	rts
loc_206ed6:
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
	jsr (sub_201258).l
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
	jsr (sub_201258).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206e52

sub_206f3e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f46:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201258).l
	move.b #$c0,d2
	bra.w loc_206e8e
	.incbin 28518, 48

sub_206f96:
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
	jsr (sub_2010e8).l
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
	jsr (sub_2010e8).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206e52

sub_207006:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20700e:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010e8).l
	move.b #$80,d2
	bra.w loc_206e8e
	.incbin 28722, 42
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20706a
	move.b #$80,d3
loc_20706a:
	rts
loc_20706c:
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
	jsr (sub_201258).l
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
	jsr (sub_201258).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206e52

sub_2070dc:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2070e4:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201258).l
	move.b #$40,d2
	bra.w loc_206e8e
	.incbin 28936, 48

sub_207138:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_20715c
	addi.w #$c,d3
	moveq #$a,d5
loc_20715c:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_20716a:
	tst.b $1(a1)
	bpl.s loc_207176
	move.b $20(a1),d0
	bne.s loc_207182
loc_207176:
	lea $40(a1),a1
	dbf d6,loc_20716a
	moveq #$0,d0
	rts
loc_207182:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207510).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2071aa
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2071b0
	bra.w loc_207176
loc_2071aa:
	cmp.w d4,d0
	bhi.w loc_207176
loc_2071b0:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2071c8
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2071ce
	bra.w loc_207176
loc_2071c8:
	cmp.w d5,d0
	bhi.w loc_207176
loc_2071ce:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207242
	cmpi.b #$c0,d1
	beq.w loc_207422
	tst.b d1
	bmi.w sub_20730c
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207206
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207204
	addq.b #$2,$24(a1)
loc_207204:
	rts
loc_207206:
	tst.w $12(a0)
	bpl.s loc_207230
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207240
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207240
	addq.b #$4,$25(a1)
	rts
loc_207230:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207240
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207240:
	rts

sub_207242:
	tst.b ($ff1521).l
	bne.s loc_20725c
	tst.b ($ff151f).l
	bne.s loc_20725c
	cmpi.b #$2,$1c(a0)
	bne.w sub_20730c
loc_20725c:
	tst.b $21(a1)
	beq.s loc_207286
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_207284
	bset.b #$7,$22(a1)
loc_207284:
	rts
loc_207286:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_20729e
	moveq #$6,d0
loc_20729e:
	move.w d0,$3e(a1)
	move.w dat_2072fe(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2072b8
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2072b8:
	bsr.w sub_20a0ac
	move.w #$96,d0
	jsr (sub_20262a).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_2072ee
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_2072f6
	neg.w $12(a0)
	rts
loc_2072ee:
	addi.w #$100,$12(a0)
	rts
loc_2072f6:
	subi.w #$100,$12(a0)
	rts
dat_2072fe:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_20730c:
	tst.b ($ff1521).l
	bne.s loc_20731c
	tst.b ($ff151f).l
	beq.s loc_207320
loc_20731c:
	moveq #$ffffffff,d0
	rts
loc_207320:
	nop
	tst.w $30(a0)
	bne.s loc_20731c
	movea.l a1,a2

sub_20732a:
	tst.b ($ff151e).l
	bne.s loc_207356
	tst.w ($ff1512).l
	beq.w loc_2073c0
	jsr (sub_20795a).l
	bne.s loc_207356
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207356:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_20736c
	move.b #$0,($ff156f).l
loc_20736c:
	move.b #$4,$24(a0)
	bsr.w sub_205436
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20739c
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_20739c:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2073aa
	neg.w $10(a0)
loc_2073aa:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2073c0:
	tst.w ($ff1588).l
	bne.w loc_207356

sub_2073ca:
	tst.w ($ff1906).l
	bne.s loc_20741e
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205436
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20262a).l
loc_20741e:
	moveq #$ffffffff,d0
	rts
loc_207422:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2074aa
	cmpi.b #$23,d1
	beq.w loc_2074aa
	cmpi.b #$33,d1
	beq.w loc_207502
	cmpi.b #$3a,d1
	beq.w loc_207502
	cmpi.b #$3b,d1
	beq.w loc_207502
	tst.b ($f7aa).w
	beq.w loc_2074a8
	cmpi.b #$1,($f7aa).w
	beq.s loc_207472
	cmpi.b #$4,($f7aa).w
	beq.s loc_207494
	cmpi.b #$5,($f7aa).w
	beq.s loc_2074a2
loc_207472:
	cmpi.b #$3c,d1
	blt.s loc_2074a8
	cmpi.b #$3f,d1
	bgt.s loc_2074a8
	bsr.w sub_207242
	tst.b $20(a1)
	bne.s loc_20748c
	addq.b #$3,$21(a1)
loc_20748c:
	clr.b $20(a1)
	bra.w loc_2074aa
loc_207494:
	cmpi.b #$3f,d1
	beq.s loc_2074b6
	cmpi.b #$3e,d1
	beq.s loc_2074b0
	bra.s loc_2074a8
loc_2074a2:
	cmpi.b #$3d,d1
	beq.s loc_2074b0
loc_2074a8:
	rts
loc_2074aa:
	addq.b #$1,$21(a1)
	rts
loc_2074b0:
	bsr.w sub_20730c
	bra.s loc_2074aa
loc_2074b6:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207500
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$ad,d0
	jsr (sub_20262a).l
	jsr (sub_206220).l
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207500
	neg.w $10(a0)
loc_207500:
	rts
loc_207502:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20750e
	addq.b #$1,$21(a1)
loc_20750e:
	rts
dat_207510:
	.incbin 29968, 126
loc_20758e:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2075a4
	move.l #$4000,(dat_20771e).l
	bra.s loc_2075c4
loc_2075a4:
	addi.l #$2000,(dat_20771e).l
	cmpi.l #$80000,(dat_20771e).l
	bls.s loc_2075c4
	move.l #$80000,(dat_20771e).l
loc_2075c4:
	move.l (dat_20771e).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2075d6
	sub.l d0,$c(a0)
loc_2075d6:
	btst.b #$1,($f604).w
	beq.s loc_2075e2
	add.l d0,$c(a0)
loc_2075e2:
	btst.b #$2,($f604).w
	beq.s loc_2075ee
	sub.l d0,$8(a0)
loc_2075ee:
	btst.b #$3,($f604).w
	beq.s loc_2075fa
	add.l d0,$8(a0)
loc_2075fa:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f00).l
	move.w (a1),($ff194e).l
	lea (dat_207722).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20763c
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207636
	move.b #$0,d1
loc_207636:
	move.b d1,($ff1904).l
loc_20763c:
	btst.b #$7,($f605).w
	beq.s loc_20765c
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207656
	add.b (a2),d1
loc_207656:
	move.b d1,($ff1904).l
loc_20765c:
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
	beq.s loc_2076e8
	bsr.w sub_20795a
	bne.s loc_2076e8
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
loc_2076e8:
	btst.b #$4,($f605).w
	beq.s loc_207718
	move.b #$0,($ff1906).l
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207718:
	jmp (sub_203b7e).l
dat_20771e:
	dc.b $00,$00,$40,$00
dat_207722:
	.incbin 30498, 38

sub_207748:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207756:
	clr.l (a2)+
	dbf d0,loc_207756
	rts

sub_20775e:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20776c(pc,d0.w),d0
	jmp dat_20776c(pc,d0.w)
dat_20776c:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207a0c).l,a0
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
	bcc.s loc_2077aa
	moveq #$0,d6
loc_2077aa:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2077b2:
	cmp.w (a0),d6
	bls.s loc_2077c4
	tst.b $4(a0)
	bpl.s loc_2077c0
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077c0:
	addq.w #$8,a0
	bra.s loc_2077b2
loc_2077c4:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077e4
loc_2077d2:
	cmp.w (a0),d6
	bls.s loc_2077e4
	tst.b $4(a0)
	bpl.s loc_2077e0
	addq.b #$1,$1(a2)
loc_2077e0:
	addq.w #$8,a0
	bra.s loc_2077d2
loc_2077e4:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2078ce
	bge.s loc_207874
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207850
loc_20781e:
	cmp.w -$8(a0),d6
	bge.s loc_207850
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207834
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207834:
	bsr.w sub_2078f2
	bne.s loc_20783e
	subq.w #$8,a0
	bra.s loc_20781e
loc_20783e:
	tst.b $4(a0)
	bpl.s loc_20784e
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20784e:
	addq.w #$8,a0
loc_207850:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20785c:
	cmp.w -$8(a0),d6
	bgt.s loc_20786e
	tst.b -$4(a0)
	bpl.s loc_20786a
	subq.b #$1,(a2)
loc_20786a:
	subq.w #$8,a0
	bra.s loc_20785c
loc_20786e:
	move.l a0,($f770).w
	rts
loc_207874:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207888:
	cmp.w (a0),d6
	bls.s loc_2078aa
	tst.b $4(a0)
	bpl.s loc_207896
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207896:
	bsr.w sub_2078f2
	beq.s loc_207888
	tst.b $4(a0)
	bpl.s loc_2078aa
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2078aa:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2078ca
loc_2078b8:
	cmp.w (a0),d6
	bls.s loc_2078ca
	tst.b $4(a0)
	bpl.s loc_2078c6
	addq.b #$1,$1(a2)
loc_2078c6:
	addq.w #$8,a0
	bra.s loc_2078b8
loc_2078ca:
	move.l a0,($f774).w
loc_2078ce:
	rts

sub_2078d0:
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

sub_2078f2:
	bsr.s sub_2078d0
	beq.s loc_207904
	tst.b $4(a0)
	bpl.s loc_20790a
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_20790a
loc_207904:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_20790a:
	bsr.w sub_20795a
	bne.s loc_207958
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
	bpl.s loc_20793a
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20793a:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20794c
	nop
	nop
	nop
	nop
loc_20794c:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207958:
	rts

sub_20795a:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207962:
	tst.b (a1)
	beq.s loc_20796e
	lea $40(a1),a1
	dbf d0,loc_207962
loc_20796e:
	rts

sub_207970:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_20798e
loc_207982:
	tst.b (a1)
	beq.s loc_20798e
	lea $40(a1),a1
	dbf d0,loc_207982
loc_20798e:
	rts
loc_207990:
	move.w $8(a0),d0
loc_207994:
	tst.b $1(a0)
	bmi.s loc_2079fe
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2079fe
loc_2079b2:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2079f4
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2079ec
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2079e4
	moveq #$0,d1
	bra.s loc_2079ec
loc_2079e4:
	cmpi.w #$3,d1
	bcs.s loc_2079ec
	moveq #$2,d1
loc_2079ec:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2079f4:
	jsr (sub_203c2a).l
	moveq #$1,d0
	rts
loc_2079fe:
	btst.b #$7,($ff152e).l
	bne.s loc_2079b2
	moveq #$0,d0
	rts
dat_207a0c:
	.incbin 31244, 2906

sub_208566:
	btst.b #$3,$22(a0)
	beq.s loc_2085d6
	btst.b #$3,$22(a1)
	beq.s loc_2085d6
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2085d6
	tst.b $2a(a1)
	beq.s loc_208598
	move.w #$ab,d0
	jsr (sub_20262a).l
loc_208598:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2085c4
	cmpi.b #$17,$1c(a1)
	beq.s loc_2085c4
	bclr.b #$0,$2c(a1)
loc_2085c4:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2085d6
	bclr.b #$1,$22(a1)
loc_2085d6:
	rts

sub_2085d8:
	cmpi.b #$4,$24(a1)
	bne.s loc_2085ea
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_2085ea:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_20864a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20860c
	bclr.b #$3,$22(a0)
	bra.w sub_208566
loc_20860c:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_20864a
	tst.b ($ff195b).l
	beq.s loc_208634
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208644
loc_208634:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208644:
	move.b #$0,$1c(a1)
loc_20864a:
	bset.b #$3,$22(a1)
	beq.s loc_20866c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2086a4
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_20866c:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208698
	cmpi.b #$2,$24(a0)
	beq.s loc_20869e
loc_208698:
	move.w $10(a1),$14(a1)
loc_20869e:
	bclr.b #$1,$22(a1)
loc_2086a4:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_2086ae:
	move.b #$1,$25(a0)

sub_2086b4:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208968
	btst.b #$6,$2c(a1)
	bne.w loc_208968
	cmpi.b #$6,$24(a1)
	bcc.w loc_208968
	tst.b $0(a1)
	beq.w loc_208968
	tst.b $1(a0)
	bpl.w loc_208968
	tst.b ($ff1906).l
	bne.w loc_208968
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208968
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208968
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208722
	btst.b #$3,$22(a0)
	bne.s loc_208734
	bra.w loc_208968
loc_208722:
	cmpi.b #$1,$25(a0)
	bne.s loc_208734
	tst.w $12(a1)
	beq.s loc_208734
	bmi.w loc_208968
loc_208734:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208968
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208968
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_20876a
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_20876a:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208778
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208778:
	cmp.w d4,d5
	bcs.w loc_20880c
	cmpi.b #$1,$25(a0)
	beq.w loc_208968
	cmpi.b #$a,$0(a0)
	bne.s loc_20879a
	btst.b #$1,$22(a1)
	bne.w loc_208968
loc_20879a:
	cmpi.b #$4,d5
	bls.w loc_208968
	bsr.w sub_2089b8
	move.l d0,-(a7)
	bsr.w sub_208566
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2087c4
	tst.w $10(a1)
	beq.s loc_2087f4
	bpl.s loc_2087cc
	bra.s loc_2087f4
loc_2087c4:
	tst.w $10(a1)
	beq.s loc_2087f4
	bpl.s loc_2087f4
loc_2087cc:
	bsr.w sub_208978
	btst.b #$1,$22(a1)
	bne.s loc_2087ea
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_2087ea:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_2087f4:
	bsr.w sub_208a2e
	bsr.w sub_208978
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_20880c:
	cmpi.b #$19,$0(a0)
	bne.s loc_20881e
	btst.b #$2,$22(a1)
	bne.w loc_208968
loc_20881e:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208834
	bmi.w loc_208904
loc_208834:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208846
	tst.w $12(a1)
	beq.s loc_208846
	bmi.w loc_208968
loc_208846:
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
	beq.s loc_208892
	bpl.s loc_208872
	neg.b d0
loc_208872:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d5c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208892
	tst.w $10(a0)
	bpl.s loc_20888e
	neg.w d1
loc_20888e:
	add.w d1,$8(a1)
loc_208892:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_2088fc
	tst.w $12(a0)
	bmi.s loc_2088d0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dee).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2088d0
	add.w d1,$c(a1)
	bra.w loc_208968
loc_2088d0:
	tst.w $12(a0)
	bpl.s loc_2088fc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207006).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2088fc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073ca).l
	movem.l (a7)+,a0-a1
	bra.s loc_208968
loc_2088fc:
	bsr.w sub_2085d8
	moveq #$1,d0
	rts
loc_208904:
	cmpi.b #$1,$25(a0)
	beq.s loc_208968
	cmpi.b #$9,$0(a0)
	beq.s loc_208968
	cmpi.b #$a,$0(a0)
	bne.s loc_20892e
	cmpi.b #$2,$25(a0)
	beq.s loc_20894e
	btst.b #$1,$1(a0)
	bne.s loc_20894e
	bra.s loc_208968
loc_20892e:
	btst.b #$1,$22(a1)
	bne.s loc_20894e
	tst.w $12(a0)
	beq.s loc_20894e
	bmi.s loc_20894e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073ca).l
	movem.l (a7)+,a0-a1
loc_20894e:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208a2e
	bsr.w sub_208566
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208968:
	bsr.w sub_208a2e
	bsr.w sub_208566
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208978:
	tst.w $10(a0)
	beq.s loc_2089b6
	cmpi.b #$a,$0(a0)
	beq.s loc_2089b6
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208992
	neg.b d0
loc_208992:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d5c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2089b6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073ca).l
	movem.l (a7)+,a0-a1
loc_2089b6:
	rts

sub_2089b8:
	cmpi.b #$a,$0(a0)
	bne.s loc_2089c8
	move.b #$0,$20(a1)
	rts
loc_2089c8:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208a1c
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208a2c
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_2089ea
	tst.w $10(a2)
	beq.s loc_208a2c
loc_2089ea:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_2089fc
	cmp.w $8(a2),d1
	bcs.s loc_208a2c
	bra.s loc_208a02
loc_2089fc:
	cmp.w $8(a2),d1
	bcc.s loc_208a2c
loc_208a02:
	cmpi.b #$15,$0(a0)
	beq.s loc_208a2c
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073ca).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208a1c:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208a2c:
	rts

sub_208a2e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208a48
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208a48
	move.b #$0,$20(a1)
loc_208a48:
	rts
	.incbin 35402, 590
	addq.b #$2,$24(a0)
	move.l #$209000,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208cee
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209006,$4(a0)
	bra.s loc_208d30
loc_208cee:
	btst.l #$3,d0
	beq.s loc_208d1c
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209050,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c056).l
	move.l (a7)+,d0
	bra.s loc_208d30
loc_208d1c:
	btst.b #$1,$1(a0)
	beq.s loc_208d30
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208d30:
	btst.l #$1,d0
	beq.s loc_208d3c
	bset.b #$5,$2(a0)
loc_208d3c:
	andi.w #$2,d0
	move.w dat_208d48(pc,d0.w),$30(a0)
	rts
dat_208d48:
	.incbin 36168, 918
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2090ec(pc,d0.w),d1
	jmp dat_2090ec(pc,d1.w)
dat_2090ec:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2090f6:
	.incbin 37110, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20914e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209146
	moveq #$0,d1
	bra.s loc_20914e
loc_209146:
	cmpi.w #$3,d1
	bcs.s loc_20914e
	moveq #$2,d1
loc_20914e:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20916a
	moveq #$6,d1
loc_20916a:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2090f6).l,a1
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
	beq.s loc_2091ba
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2091b2
	moveq #$0,d0
	bra.s loc_2091ba
loc_2091b2:
	cmpi.w #$3,d0
	bcs.s loc_2091ba
	moveq #$2,d0
loc_2091ba:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209288
	dbf d0,loc_2091ba
	bclr.b #$7,(a2)
	bra.s loc_209210
loc_2091cc:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2091f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2091f0
	moveq #$0,d0
	bra.s loc_2091f8
loc_2091f0:
	cmpi.w #$3,d0
	bcs.s loc_2091f8
	moveq #$2,d0
loc_2091f8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209288
	dbf d0,loc_2091f8
	bclr.b #$7,(a2)
	bsr.w sub_207970
	bne.w loc_209294
loc_209210:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20955a,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209266
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209266
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209266:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209288:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2091cc
loc_209294:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2092ba
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2092b2
	moveq #$0,d0
	bra.s loc_2092ba
loc_2092b2:
	cmpi.w #$3,d0
	bcs.s loc_2092ba
	moveq #$2,d0
loc_2092ba:
	lea $1(a2),a3
loc_2092be:
	btst.b #$0,-(a3)
	bne.w sub_203c2a
	dbf d0,loc_2092be
	tst.b $1(a0)
	bmi.s loc_2092ee
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209368
loc_2092ee:
	tst.w ($ff190e).l
	bne.s loc_2092fe
	move.b ($ff1913).l,$1a(a0)
loc_2092fe:
	bra.w sub_203b7e
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20936c
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20934e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209346
	moveq #$0,d1
	bra.s loc_20934e
loc_209346:
	cmpi.w #$3,d1
	bcs.s loc_20934e
	moveq #$2,d1
loc_20934e:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209552).l,a1
	bsr.w sub_205de0
	bra.w sub_203b7e
loc_209368:
	bra.w sub_203c2a

sub_20936c:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2093bc
	bset.b #$1,($ff150d).l
	beq.s loc_2093a6
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2093bc
	bset.b #$2,($ff150d).l
	bne.s loc_2093bc
loc_2093a6:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205da0).l
loc_2093bc:
	jmp (sub_20262a).l
	.incbin 37826, 400
dat_209552:
	.incbin 38226, 402
loc_2096e4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209712(pc,d0.w),d0
	jsr dat_209712(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209710
	cmpi.w #$5a,($f786).w
	bcs.s loc_20970a
	btst.b #$0,($ff1505).l
	bne.s loc_209710
loc_20970a:
	jmp (sub_203b7e).l
loc_209710:
	rts
dat_209712:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$209cec,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209746
	move.b #$13,$1a(a0)
loc_209746:
	rts
loc_209748:
	tst.b ($ff0f01).l
	beq.s loc_209756
	jmp (sub_203c2a).l
loc_209756:
	cmpi.b #$a,$28(a0)
	beq.w loc_2096e4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20977a(pc,d0.w),d0
	jsr dat_20977a(pc,d0.w)
	jsr (sub_203b7e).l
	jmp (loc_207990).l
dat_20977a:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209cec,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2097c8
	tst.b $29(a0)
	bne.s loc_2097c8
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_2097c8:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_209894
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_2097f0
	addq.b #$2,$1a(a0)
loc_2097f0:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209804
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209804:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20986a
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209836
	tst.b $29(a0)
	beq.s loc_20982e
	tst.b ($ff1956).l
	beq.s loc_20986a
	bra.s loc_209836
loc_20982e:
	tst.b ($ff1956).l
	bne.s loc_20986a
loc_209836:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_209894
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209864
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209864:
	jsr (sub_205da0).l
loc_20986a:
	rts
	.incbin 39020, 40

sub_209894:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2098cc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2098c4
	moveq #$0,d1
	bra.s loc_2098cc
loc_2098c4:
	cmpi.w #$3,d1
	bcs.s loc_2098cc
	moveq #$2,d1
loc_2098cc:
	add.w d1,d0
	rts

sub_2098d0:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2098f2
	tst.b ($ff1956).l
	beq.s loc_2098ea
	tst.b $29(a0)
	bne.s loc_2098f2
	rts
loc_2098ea:
	tst.b $29(a0)
	beq.s loc_2098f2
	rts
loc_2098f2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2086b4).l
	tst.b $28(a0)
	bne.s loc_209914
	tst.b ($ff0f01).l
	beq.s loc_209914
	jmp (loc_207990).l
loc_209914:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209748
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20992c(pc,d0.w),d1
	jmp dat_20992c(pc,d1.w)
dat_20992c:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209cec,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209976
	tst.b $29(a0)
	bne.s loc_209976
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209976:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209894
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_2099a2
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_2099a2:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_2099fc
	move.b $25(a0),d0
	beq.s loc_2099dc
	bsr.w sub_203ac6
	jsr (sub_206e9c).l
	tst.w d1
	bpl.w loc_2099ea
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_2099ea
loc_2099dc:
	tst.b $1(a0)
	bpl.s loc_2099ea
	lea ($d000).w,a1
	bsr.w sub_2098d0
loc_2099ea:
	tst.w ($ff190e).l
	bne.s loc_2099fc
	lea (dat_209c64).l,a1
	bsr.w sub_205de0
loc_2099fc:
	bsr.w sub_203b7e
	jmp (loc_207990).l
	.incbin 39430, 606
dat_209c64:
	.incbin 40036, 586
loc_209eae:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ec2(pc,d0.w),d0
	jsr dat_209ec2(pc,d0.w)
	jmp (sub_203b7e).l
dat_209ec2:
	.incbin 40642, 146
	tst.b $28(a0)
	bmi.w loc_209eae
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f6a(pc,d0.w),d0
	jmp dat_209f6a(pc,d0.w)
dat_209f6a:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a004,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_209f9a
	move.b #$3,$1a(a0)
	bra.s loc_209fba
loc_209f9a:
	tst.w ($ff1588).l
	beq.s loc_209fa8
	move.b #$2,$1a(a0)
loc_209fa8:
	tst.b $28(a0)
	beq.s loc_209fba
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_209fba:
	tst.b $28(a0)
	bne.s loc_209ffe
	tst.b $29(a0)
	beq.s loc_209fea
	tst.w ($ff1512).l
	beq.s loc_209fd6
	bclr.b #$5,$2(a0)
	bra.s loc_209ffe
loc_209fd6:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_209ffe
	eori.b #$20,$2(a0)
	bra.s loc_209ffe
loc_209fea:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_209ffe
	move.b #$2,$1a(a0)
loc_209ffe:
	jmp (sub_203b7e).l
	.incbin 40964, 168

sub_20a0ac:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a0c8
	move.l d1,(a3)
loc_20a0c8:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a0f2
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205da0).l
loc_20a0f2:
	rts
loc_20a0f4:
	tst.w ($ff1588).l
	beq.s loc_20a14a
	bsr.w sub_20a346
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
	lea (dat_20a4a6).l,a2
	moveq #$2,d6
	bsr.w sub_20a4fe
	bra.w loc_20a1a4
loc_20a14a:
	tst.b ($ff1511).l
	beq.s loc_20a16e
	bpl.s loc_20a158
	bsr.w sub_20a2f0
loc_20a158:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a3e0
loc_20a16e:
	tst.b ($ff150f).l
	beq.s loc_20a1a4
	bpl.s loc_20a17c
	bsr.w sub_20a2dc
loc_20a17c:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a1a0
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a1a0:
	bsr.w sub_20a3d6
loc_20a1a4:
	tst.w ($ff1588).l
	bne.w loc_20a250
	tst.b ($ff1510).l
	beq.w loc_20a250
	tst.w ($f63a).w
	bne.w loc_20a250
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a2ae
	tst.b ($f7cc).w
	bne.s loc_20a1fa
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a1fa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a1fa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a1fa
	move.b #$9,(a1)
loc_20a1fa:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a4ec
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a4f6
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a24c
	move.w #$63,d1
loc_20a24c:
	bsr.w sub_20a4f6
loc_20a250:
	tst.b ($ff150e).l
	beq.s loc_20a262
	clr.b ($ff150e).l
	bsr.w sub_20a4cc
loc_20a262:
	tst.b ($f7d6).w
	beq.s loc_20a2ac
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a282
	move.l #$6d400001,d0
loc_20a282:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a364
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a2a2
	move.l #$6e800001,d0
loc_20a2a2:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a364
loc_20a2ac:
	rts
loc_20a2ae:
	btst.b #$7,($ff152e).l
	bne.s loc_20a2da
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2073ca
	move.b #$1,($ff150c).l
loc_20a2da:
	rts

sub_20a2dc:
	move.l #$73600002,($c00004).l
	lea dat_20a342(pc),a2
	move.w #$2,d2
	bra.s loc_20a30c

sub_20a2f0:
	lea ($c00000).l,a6
	bsr.w sub_20a4cc
	move.l #$70600002,($c00004).l
	lea dat_20a33a(pc),a2
	move.w #$6,d2
loc_20a30c:
	lea (dat_238442).l,a1
loc_20a312:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a32e
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a322:
	move.l (a3)+,(a6)
	dbf d1,loc_20a322
loc_20a328:
	dbf d2,loc_20a312
	rts
loc_20a32e:
	move.l #$0,(a6)
	dbf d1,loc_20a32e
	bra.s loc_20a328
dat_20a33a:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a342:
	dc.b $ff,$ff,$00,$00

sub_20a346:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a4c2
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a4c2

sub_20a364:
	lea (dat_20a49e).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a374:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a378:
	sub.l d3,d1
	bcs.s loc_20a380
	addq.w #$1,d2
	bra.s loc_20a378
loc_20a380:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a38a
	move.w #$1,d4
loc_20a38a:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a396
	tst.w d6
	bne.s loc_20a3c8
loc_20a396:
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
loc_20a3bc:
	addi.l #$400000,d0
	dbf d6,loc_20a374
	rts
loc_20a3c8:
	moveq #$f,d5
loc_20a3ca:
	move.l #$0,(a6)
	dbf d5,loc_20a3ca
	bra.s loc_20a3bc

sub_20a3d6:
	lea (dat_20a4a6).l,a2
	moveq #$2,d6
	bra.s loc_20a3e8

sub_20a3e0:
	lea (dat_20a49a).l,a2
	moveq #$5,d6
loc_20a3e8:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a3f0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a3f4:
	sub.l d3,d1
	bcs.s loc_20a3fc
	addq.w #$1,d2
	bra.s loc_20a3f4
loc_20a3fc:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a406
	move.w #$1,d4
loc_20a406:
	tst.w d4
	beq.s loc_20a434
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
loc_20a434:
	addi.l #$400000,d0
	dbf d6,loc_20a3f0
	rts
	.incbin 42048, 90
dat_20a49a:
	dc.b $00,$01,$86,$a0
dat_20a49e:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a4a6:
	dc.b $00,$00,$00,$64
dat_20a4aa:
	dc.b $00,$00,$00,$0a
dat_20a4ae:
	dc.b $00,$00,$00,$01
dat_20a4b2:
	.incbin 42162, 16

sub_20a4c2:
	moveq #$3,d6
	lea (dat_20a4b2).l,a2
	bra.s sub_20a4fe

sub_20a4cc:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a4e2
	moveq #$9,d1
loc_20a4e2:
	lea (dat_20a4ae).l,a2
	moveq #$0,d6
	bra.s sub_20a4fe

sub_20a4ec:
	lea (dat_20a4ae).l,a2
	moveq #$0,d6
	bra.s sub_20a4fe

sub_20a4f6:
	lea (dat_20a4aa).l,a2
	moveq #$1,d6

sub_20a4fe:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a506:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a50a:
	sub.l d3,d1
	bcs.s loc_20a512
	addq.w #$1,d2
	bra.s loc_20a50a
loc_20a512:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a51c
	move.w #$1,d4
loc_20a51c:
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
	dbf d6,loc_20a506
	rts
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a564(pc,d0.w),d1
	jmp dat_20a564(pc,d1.w)
dat_20a564:
	dc.b $00,$0c,$00,$6a,$00,$84,$01,$3a
	dc.b $01,$58,$01,$5c
	addq.b #$2,$24(a0)
	move.l #$21e9b4,$4(a0)
	move.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_20a5b4
	addq.b #$8,$24(a0)
	andi.w #$7f,d0
	move.b d0,$32(a0)
	move.b d0,$33(a0)
	move.b #$6,$1c(a0)
	bra.w loc_20a6c0
loc_20a5b4:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	jsr (sub_202418).l
	move.b d0,$26(a0)
	lea (dat_20a858).l,a1
	jsr (sub_205de0).l
	cmpi.b #$6,$1a(a0)
	bne.s loc_20a5e8
	move.b #$1,$2e(a0)
loc_20a5e8:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a600
loc_20a5f2:
	move.b #$6,$24(a0)
	addq.b #$3,$1c(a0)
	bra.w loc_20a69e
loc_20a600:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_21d7a6).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	tst.b $2e(a0)
	beq.s loc_20a688
	bsr.w sub_20a81e
	beq.s loc_20a688
	bsr.w sub_206220
	move.w #$ad,d0
	jsr (sub_20262a).l
	clr.w $10(a6)
	clr.w $12(a6)
	clr.w $14(a6)
	move.b #$15,$1c(a6)
	move.w #$23,$3e(a6)
	move.b #$0,$3c(a6)
	bclr.b #$5,$22(a6)
	bclr.b #$4,$22(a6)
	btst.b #$2,$22(a6)
	beq.w loc_20a5f2
	bclr.b #$2,$22(a6)
	move.b #$13,$16(a6)
	move.b #$9,$17(a6)
	subq.w #$5,$c(a6)
	bra.w loc_20a5f2
loc_20a688:
	bsr.w sub_203b28
	tst.b $1(a0)
	bpl.s loc_20a698
	jmp (sub_203b7e).l
loc_20a698:
	jmp (sub_203c2a).l
loc_20a69e:
	lea (dat_20a858).l,a1
	jsr (sub_205de0).l
	tst.b $1(a0)
	bpl.s loc_20a6b6
	jmp (sub_203b7e).l
loc_20a6b6:
	jmp (sub_203c2a).l
	dc.b $60,$00,$95,$6c
loc_20a6c0:
	tst.w $36(a0)
	bne.s loc_20a722
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcc.w loc_20a7d4
	tst.b $1(a0)
	bpl.w loc_20a7d4
	subq.w #$1,$38(a0)
	bpl.w loc_20a7c8
	move.w #$1,$36(a0)
loc_20a6e8:
	jsr (sub_202418).l
	move.w d0,d1
	andi.w #$7,d0
	cmpi.w #$6,d0
	bcc.s loc_20a6e8
	move.b d0,$34(a0)
	andi.w #$c,d1
	lea (dat_20a80c).l,a1
	adda.w d1,a1
	move.l a1,$3c(a0)
	subq.b #$1,$32(a0)
	bpl.s loc_20a720
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_20a720:
	bra.s loc_20a72a
loc_20a722:
	subq.w #$1,$38(a0)
	bpl.w loc_20a7c8
loc_20a72a:
	jsr (sub_202418).l
	andi.w #$1f,d0
	move.w d0,$38(a0)
	tst.b $1(a0)
	bpl.s loc_20a7ac
	bsr.w sub_20795a
	bne.s loc_20a7ac
	move.b #$20,$0(a1)
	move.w $8(a0),$8(a1)
	jsr (sub_202418).l
	andi.w #$f,d0
	subq.w #$8,d0
	add.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$0,d0
	move.b $34(a0),d0
	movea.l $3c(a0),a2
	move.b $0(a2,d0.w),$28(a1)
	btst.b #$7,$36(a0)
	beq.s loc_20a7ac
	jsr (sub_202418).l
	andi.w #$3,d0
	bne.s loc_20a798
	bset.b #$6,$36(a0)
	bne.s loc_20a7ac
	move.b #$2,$28(a1)
loc_20a798:
	tst.b $34(a0)
	bne.s loc_20a7ac
	bset.b #$6,$36(a0)
	bne.s loc_20a7ac
	move.b #$2,$28(a1)
loc_20a7ac:
	subq.b #$1,$34(a0)
	bpl.s loc_20a7c8
	jsr (sub_202418).l
	andi.w #$7f,d0
	addi.w #$80,d0
	add.w d0,$38(a0)
	clr.w $36(a0)
loc_20a7c8:
	lea (dat_20a858).l,a1
	jsr (sub_205de0).l
loc_20a7d4:
	tst.b $1(a0)
	bmi.s loc_20a7f8
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203c2a
loc_20a7f8:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.w sub_203b7e
	bclr.b #$7,$1(a0)
	rts
dat_20a80c:
	.incbin 43020, 18

sub_20a81e:
	tst.b $2c(a6)
	bmi.s loc_20a854
	move.w $8(a6),d0
	move.w $8(a0),d1
	subi.w #$10,d1
	cmp.w d0,d1
	bcc.s loc_20a854
	addi.w #$20,d1
	cmp.w d0,d1
	bcs.s loc_20a854
	move.w $c(a6),d0
	move.w $c(a0),d1
	cmp.w d0,d1
	bcc.s loc_20a854
	addi.w #$10,d1
	cmp.w d0,d1
	bcs.s loc_20a854
	moveq #$1,d0
	rts
loc_20a854:
	moveq #$0,d0
	rts
dat_20a858:
	.incbin 43096, 2674
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b2d8(pc,d0.w),d0
	jmp dat_20b2d8(pc,d0.w)
dat_20b2d8:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205da0).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20b3ae,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20b334
	tst.b ($ff1508).l
	beq.s loc_20b33c
	move.l #$20b3b2,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20b33c
loc_20b334:
	tst.b ($ff1508).l
	bne.s loc_20b34c
loc_20b33c:
	bset.b #$7,($ff156b).l
	jsr (sub_20795a).l
	beq.s loc_20b352
loc_20b34c:
	jmp (sub_203c2a).l
loc_20b352:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20b394
	move.w #$6e,d0
	jmp (sub_205da0).l
loc_20b394:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b3a8
	bge.s loc_20b3a4
	neg.w d0
loc_20b3a4:
	add.w d0,$8(a0)
loc_20b3a8:
	jmp (sub_203b7e).l
	.incbin 45998, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b3f4(pc,d0.w),d0
	jmp dat_20b3f4(pc,d0.w)
dat_20b3f4:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20baf2,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20bab2).l,a2
loc_20b442:
	jsr (sub_20795a).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20baf2,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b494
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b494:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b442
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b4bc
	bge.s loc_20b4b2
	neg.w d0
loc_20b4b2:
	add.w d0,$a(a0)
	jmp (sub_203b7e).l
loc_20b4bc:
	addq.b #$4,$24(a0)
	jmp (sub_203b7e).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b4e0
	bge.s loc_20b4d6
	neg.w d0
loc_20b4d6:
	add.w d0,$8(a0)
	jmp (sub_203b7e).l
loc_20b4e0:
	addq.b #$4,$24(a0)
	jmp (sub_203b7e).l
	tst.b $1e(a0)
	beq.s loc_20b4fa
	subq.b #$1,$1e(a0)
	jmp (sub_203b7e).l
loc_20b4fa:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b514
	bge.s loc_20b50a
	neg.w d0
loc_20b50a:
	add.w d0,$a(a0)
	jmp (sub_203b7e).l
loc_20b514:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2027f4).l
	tst.b $1e(a0)
	beq.s loc_20b536
	subq.b #$1,$1e(a0)
	jmp (sub_203b7e).l
loc_20b536:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b550
	bge.s loc_20b546
	neg.w d0
loc_20b546:
	add.w d0,$8(a0)
	jmp (sub_203b7e).l
loc_20b550:
	jmp (sub_203c2a).l
	tst.l ($f680).w
	bne.s loc_20b56a
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203c2a).l
loc_20b56a:
	rts
	.incbin 46444, 1350
dat_20bab2:
	.incbin 47794, 320
dat_20bbf2:
	.incbin 48114, 1024
loc_20bff2:
	lea dat_20c044(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bffe:
	cmp.w (a1)+,d0
	bcs.s loc_20c006
	addq.b #$2,d1
	bra.s loc_20bffe
loc_20c006:
	move.b d1,($ff1574).l
	move.w dat_20c050(pc,d1.w),d0
	jmp (sub_2027f4).l

sub_20c016:
	lea dat_20c044(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c022:
	cmp.w (a1)+,d0
	bcs.s loc_20c02a
	addq.b #$2,d1
	bra.s loc_20c022
loc_20c02a:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c034
	rts
loc_20c034:
	move.b d1,($ff1574).l
	move.w dat_20c04a(pc,d1.w),d0
	jmp (loc_202826).l
dat_20c044:
	dc.b $12,$80,$15,$00,$ff,$ff
dat_20c04a:
	dc.b $00,$05,$00,$06,$00,$05
dat_20c050:
	dc.b $00,$02,$00,$04,$00,$02

sub_20c056:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c0ac(pc,d0.w),d0
	jsr dat_20c0ac(pc,d0.w)
	jsr (sub_203b7e).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20c0a2
	movea.w d1,a1
	tst.b $0(a1)
	bne.s loc_20c082
	jmp (sub_203c2a).l
loc_20c082:
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20c0a2:
	move.w $36(a0),d0
	jmp (loc_207994).l
dat_20c0ac:
	dc.b $00,$6a,$00,$b8
loc_20c0b0:
	tst.b $1a(a0)
	beq.s loc_20c0c0
	lea ($d000).w,a1
	jmp (sub_2086b4).l
loc_20c0c0:
	lea ($d000).w,a1
	jsr (sub_2086b4).l
	beq.s loc_20c114
	btst.b #$3,$22(a0)
	beq.s loc_20c114
	tst.b ($ff1521).l
	bne.s loc_20c114
	tst.b ($ff151f).l
	bne.s loc_20c114
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20c112
	tst.w $30(a0)
	bne.s loc_20c112
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_20732a).l
loc_20c112:
	movea.l (a7)+,a0
loc_20c114:
	rts
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$3a0,$2(a0)
	move.b #$4,$18(a0)
	move.l #$20c1e0,$4(a0)
	tst.w $36(a0)
	bne.s loc_20c140
	move.w $8(a0),$36(a0)
loc_20c140:
	move.w $c(a0),$32(a0)
	move.b #$12,$19(a0)
	move.b #$c,$16(a0)
	tst.b $28(a0)
	beq.s loc_20c164
	move.b #$1,$1a(a0)
	move.b #$83,$20(a0)
loc_20c164:
	cmpi.b #$1,$28(a0)
	beq.s loc_20c17e
	jsr sub_20c182(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
loc_20c17e:
	bra.w loc_20c0b0

sub_20c182:
	tst.b $3a(a0)
	beq.s loc_20c1a0
	subq.b #$1,$3a(a0)
	bne.s loc_20c1de
	btst.b #$7,$1(a0)
	beq.s loc_20c1a0
	move.w #$b7,d0
	jsr (sub_20262a).l
loc_20c1a0:
	tst.b $3c(a0)
	beq.s loc_20c1c0
	subq.b #$8,$3b(a0)
	bcc.s loc_20c1de
	move.b #$0,$3b(a0)
	move.b #$0,$3c(a0)
	move.b #$3c,$3a(a0)
	bra.s loc_20c1de
loc_20c1c0:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20c1de
	move.b #$20,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20c1de:
	rts
	.incbin 49632, 68
loc_20c224:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c242
	rts
loc_20c242:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20c266
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20c266:
	jmp (sub_203c2a).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c284(pc,d0.w),d0
	jsr dat_20c284(pc,d0.w)
	jsr (sub_203b7e).l
	bra.w loc_20c224
dat_20c284:
	.incbin 49796, 874
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c606(pc,d0.w),d0
	jsr dat_20c606(pc,d0.w)
	jsr (sub_203b7e).l
	bra.w loc_20c224
dat_20c606:
	.incbin 50694, 1406
	tst.b $24(a0)
	bne.w loc_20cbce
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$50a,$2(a0)
	move.l #$20ccea,$4(a0)
	move.b #$a,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20cbce:
	move.w $34(a0),d0
	beq.s loc_20cbfe
	movea.w d0,a1
	move.w $8(a0),d1
	move.b $38(a0),d0
	ext.w d0
	add.w $8(a1),d0
	move.w d0,$8(a0)
	sub.w d1,d0
	asl.w #$8,d0
	move.w d0,$10(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w $c(a1),d0
	move.w d0,$c(a0)
loc_20cbfe:
	move.b $3f(a0),$3e(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_2086b4).l
	beq.s loc_20cc1c
	bsr.w sub_20ccce
loc_20cc1c:
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20cc2c
	bclr.b #$7,(a4)
	bra.s loc_20cc38
loc_20cc2c:
	bsr.w sub_20ccce
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20cc38:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20cc72
	tst.b $1(a0)
	bpl.s loc_20cc50
	move.w #$bf,d0
	jsr (sub_20262a).l
loc_20cc50:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20cc64
	addq.b #$4,$39(a0)
	bra.s loc_20cc68
loc_20cc64:
	addq.w #$4,$c(a0)
loc_20cc68:
	move.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20cc72:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20cc96
	subq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20cc8a
	subq.b #$4,$39(a0)
	bra.s loc_20cc8e
loc_20cc8a:
	subq.w #$4,$c(a0)
loc_20cc8e:
	clr.b $1a(a0)
	addq.b #$4,$16(a0)
loc_20cc96:
	jsr (sub_203b7e).l
	move.w $34(a0),d0
	bne.s loc_20cca8
	jmp (loc_207990).l
loc_20cca8:
	movea.w d0,a1
	move.w $36(a1),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20ccc8
	rts
loc_20ccc8:
	jmp (loc_2079b2).l

sub_20ccce:
	move.w $c(a0),d0
	move.b $16(a0),d1
	ext.w d1
	sub.w d1,d0
	move.b $16(a1),d1
	ext.w d1
	sub.w d1,d0
	addq.w #$1,d0
	move.w d0,$c(a1)
	rts
	.incbin 52458, 26
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cd1e(pc,d0.w),d0
	jsr dat_20cd1e(pc,d0.w)
	jsr (sub_203b7e).l
	jmp (loc_207990).l
dat_20cd1e:
	dc.b $00,$12,$00,$80,$00,$d6,$01,$80

sub_20cd26:
	lea ($d000).w,a1
	jmp (sub_2086b4).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$4440,$2(a0)
	move.b #$2,$18(a0)
	move.l #$20cf4c,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b $28(a0),d0
	move.b d0,d1
	andi.b #$f,d1
	move.b d1,$30(a0)
	asr.b #$4,d0
	andi.w #$f,d0
	move.b d0,$31(a0)
	asl.b #$2,d0
	lea dat_20cd8a(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$3b(a0)
	move.b (a1)+,$1a(a0)
	rts
dat_20cd8a:
	.incbin 52618, 20
	moveq #$0,d0
	move.b $30(a0),d0
	lea ($f7e0).w,a1
	btst.b #$7,$0(a1,d0.w)
	seq $3c(a0)
	cmpi.b #$4,$31(a0)
	beq.s loc_20cdc4
	tst.b $3a(a0)
	beq.s loc_20cdc4
	clr.b $3c(a0)
loc_20cdc4:
	lea ($d000).w,a1
	move.w $8(a1),$38(a0)
	move.w $c(a1),$3e(a0)
	jsr sub_20ceb6(pc)
	bsr.w sub_20cd26
	cmpi.b #$4,$31(a0)
	beq.s loc_20cdf2
	move.b $3a(a0),d0
	cmp.b $3b(a0),d0
	bne.s loc_20cdf2
	addq.b #$2,$24(a0)
loc_20cdf2:
	rts
	.incbin 52724, 194

sub_20ceb6:
	moveq #$0,d0
	move.b $31(a0),d0
	add.b d0,d0
	move.w dat_20cec6(pc,d0.w),d0
	jmp dat_20cec6(pc,d0.w)
dat_20cec6:
	dc.b $00,$0a,$00,$20,$00,$34,$00,$4a
	dc.b $00,$34
	jsr sub_20cf24(pc)
	moveq #$0,d0
	move.b $3a(a0),d0
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	rts
	.incbin 52966, 20
	jsr sub_20cf24(pc)
	moveq #$0,d0
	move.b $3a(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	.incbin 53008, 20

sub_20cf24:
	tst.b $3c(a0)
	beq.s loc_20cf36
	subq.b #$8,$3a(a0)
	bcc.s loc_20cf4a
	clr.b $3a(a0)
	bra.s loc_20cf4a
loc_20cf36:
	addq.b #$8,$3a(a0)
	move.b $3a(a0),d0
	cmp.b $3b(a0),d0
	bcs.s loc_20cf4a
	move.b $3b(a0),$3a(a0)
loc_20cf4a:
	rts
	.incbin 53068, 62
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cfc2(pc,d0.w),d0
	jsr dat_20cfc2(pc,d0.w)
	jsr (sub_203b7e).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20cfbc
	rts
loc_20cfbc:
	jmp (sub_203c2a).l
dat_20cfc2:
	dc.b $00,$34,$00,$f6

sub_20cfc6:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jsr (sub_2086ae).l
	beq.s loc_20cff4
	move.w $c(a0),d0
	move.b $16(a0),d1
	ext.w d1
	sub.w d1,d0
	move.b $16(a1),d1
	ext.w d1
	sub.w d1,d0
	addq.w #$2,d0
	move.w d0,$c(a1)
loc_20cff4:
	rts
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20d13c,$4(a0)
	move.w #$340,$2(a0)
	cmpi.b #$1,$1a(a0)
	bne.s loc_20d022
	addi.w #$4000,$2(a0)
loc_20d022:
	move.b #$20,$19(a0)
	move.b #$a,$16(a0)
	move.b #$c0,$3a(a0)
	cmpi.b #$6,$3c(a0)
	bne.s loc_20d066
	jsr (sub_207970).l
	bne.s loc_20d066
	move.b #$27,$0(a1)
	move.w a0,$34(a1)
	move.b #$f0,$39(a1)
	move.b #$10,$38(a1)
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b d0,$28(a1)
loc_20d066:
	tst.b $3c(a0)
	bne.s loc_20d0b8
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$6,d1
	moveq #$5,d2
loc_20d07c:
	jsr (sub_20795a).l
	bne.s loc_20d0b2
	move.b #$29,$0(a1)
	move.w $36(a0),$36(a1)
	move.w $32(a0),$32(a1)
	move.b $28(a0),$28(a1)
	move.b d1,$3c(a1)
	move.b #$2,$1a(a1)
	cmpi.b #$6,d1
	bne.s loc_20d0b2
	move.b #$1,$1a(a1)
loc_20d0b2:
	subq.b #$1,d1
	dbf d2,loc_20d07c
loc_20d0b8:
	move.l $8(a0),d0
	move.l $c(a0),d1
	movem.l d0-d1,-(a7)
	jsr sub_20d0f2(pc)
	movem.l (a7)+,d0-d1
	cmpi.b #$6,$3c(a0)
	bne.s loc_20d0f0
	move.l $8(a0),d2
	move.l $c(a0),d3
	sub.l d0,d2
	sub.l d1,d3
	asr.l #$8,d2
	asr.l #$8,d3
	move.w d2,$10(a0)
	move.w d3,$12(a0)
	bsr.w sub_20cfc6
loc_20d0f0:
	rts

sub_20d0f2:
	btst.b #$4,$28(a0)
	bne.s loc_20d102
	subi.w #$80,$3a(a0)
	bra.s loc_20d108
loc_20d102:
	addi.w #$100,$3a(a0)
loc_20d108:
	move.b $3a(a0),d0
	jsr (sub_200792).l
	moveq #$0,d2
	moveq #$0,d3
	moveq #$0,d4
	move.b $3c(a0),d2
	beq.s loc_20d126
loc_20d11e:
	add.w d0,d3
	add.w d1,d4
	subq.b #$1,d2
	bne.s loc_20d11e
loc_20d126:
	asr.w #$4,d3
	asr.w #$4,d4
	add.w $32(a0),d3
	add.w $36(a0),d4
	move.w d3,$c(a0)
	move.w d4,$8(a0)
	rts
	.incbin 53564, 928
	jsr (sub_20fbee).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d500(pc,d0.w),d0
	jsr dat_20d500(pc,d0.w)
	jsr (sub_203b7e).l
	move.w $3e(a0),d0
	jmp (loc_207994).l
dat_20d500:
	dc.b $00,$04,$00,$7e
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$2c,$20(a0)
	move.b #$1,$18(a0)
	move.b #$1c,$17(a0)
	move.b #$1c,$19(a0)
	move.b #$10,$16(a0)
	move.w #$2416,$2(a0)
	move.w $8(a0),$3e(a0)
	move.l $c(a0),$2a(a0)
	lea dat_20d5da(pc),a1
	move.l #$ffff0000,d0
	move.w #$4,d1
	move.w #$100,d2
	tst.b $28(a0)
	beq.s loc_20d568
	lea dat_20d698(pc),a1
	move.l #$ffff8000,d0
	move.w #$1,d1
	move.w #$200,d2
loc_20d568:
	move.l a1,$4(a0)
	move.l d0,$30(a0)
	move.w d1,$34(a0)
	move.w d2,$38(a0)
	lsr.w #$1,d2
	move.w d2,$36(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $2e(a0),d0
	jsr (sub_200792).l
	swap d0
	clr.w d0
	asr.l #$4,d0
	add.l $2a(a0),d0
	move.l d0,$c(a0)
	move.w $34(a0),d0
	add.w d0,$2e(a0)
	addi.w #$ffff,$36(a0)
	bne.s loc_20d5c4
	move.w $38(a0),$36(a0)
	neg.l $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20d5c4:
	lea dat_20d5ce(pc),a1
	jmp (sub_205de0).l
dat_20d5ce:
	dc.b $00,$04,$00,$08,$02,$00,$01,$ff
	dc.b $04,$00,$02,$ff
dat_20d5da:
	.incbin 54746, 190
dat_20d698:
	.incbin 54936, 1380
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	tst.b $28(a0)
	bne.s loc_20dc22
	movea.w $30(a0),a1
	add.l d0,$8(a1)
	movea.w $32(a0),a1
	add.l d0,$8(a1)
	movea.w $34(a0),a1
	add.l d0,$8(a1)
loc_20dc22:
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20dc98
	move.w $36(a0),$2a(a0)
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	tst.b $28(a0)
	bne.s loc_20dc98
	movea.w $30(a0),a1
	movea.w $32(a0),a2
	movea.w $34(a0),a3
	move.w $8(a0),$8(a1)
	move.w $8(a0),$8(a2)
	move.w $8(a0),$8(a3)
	move.w #$fffe,d1
	move.w #$3,d2
	move.w #$7,d3
	btst.b #$0,$1(a0)
	beq.s loc_20dc8c
	neg.w d1
	neg.w d2
	neg.w d3
	addi.w #$fffd,d1
	addi.w #$fffd,d2
	addi.w #$fffd,d3
loc_20dc8c:
	add.w d1,$8(a1)
	add.w d2,$8(a2)
	add.w d3,$8(a3)
loc_20dc98:
	lea dat_20ddd8(pc),a1
	jmp (sub_205de0).l
	.incbin 56482, 310
dat_20ddd8:
	.incbin 56792, 1454
	jsr (sub_20fc36).l
	tst.b $24(a0)
	bmi.w loc_20e45a
	bne.w loc_20e4ea
	ori.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$c,$16(a0)
	lea dat_20e5c4(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e3e0
	addi.w #$2000,$2(a0)
loc_20e3e0:
	lea dat_20e574(pc),a1
	btst.b #$0,$28(a0)
	beq.s loc_20e3f0
	lea dat_20e59c(pc),a1
loc_20e3f0:
	move.l a1,$4(a0)
	move.w $c(a0),$2e(a0)
	move.b $28(a0),d0
	bpl.s loc_20e43e
	subq.b #$2,$24(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	move.w $8(a0),$38(a0)
	move.l #$200,$34(a0)
	btst.l #$0,d0
	beq.s loc_20e43c
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $34(a0)
	move.l #$3000,$30(a0)
loc_20e43c:
	rts
loc_20e43e:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.l #$10000,$2a(a0)
	move.l #$100,$34(a0)
	rts
loc_20e45a:
	movea.w $3e(a0),a1
	cmpi.b #$52,$0(a1)
	bne.s loc_20e46c
	tst.b $3f(a1)
	beq.s loc_20e472
loc_20e46c:
	jmp (sub_203c2a).l
loc_20e472:
	move.b $32(a0),d0
	jsr (sub_200792).l
	swap d1
	swap d0
	asr.l #$3,d1
	asr.l #$4,d0
	addi.l #$8000,d1
	addi.l #$8000,d0
	swap d1
	swap d0
	add.w $38(a0),d1
	add.w $2e(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	move.l $34(a0),d0
	add.l d0,$30(a0)
	move.l $30(a0),d0
	andi.l #$7fff,d0
	bne.s loc_20e4da
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	cmpi.b #$5,$18(a0)
	beq.s loc_20e4d4
	move.b #$5,$18(a0)
	bra.s loc_20e4da
loc_20e4d4:
	move.b #$3,$18(a0)
loc_20e4da:
	lea dat_20e54e(pc),a1
	jsr (sub_205de0).l
	jmp (sub_203b7e).l
loc_20e4ea:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.b $32(a0),d0
	jsr (sub_200792).l
	swap d0
	asr.l #$3,d0
	addi.l #$8000,d0
	swap d0
	add.w $2e(a0),d0
	move.w d0,$c(a0)
	move.l $34(a0),d0
	add.l d0,$30(a0)
	bmi.s loc_20e524
	cmpi.l #$10000,$30(a0)
	blt.s loc_20e538
loc_20e524:
	neg.l $34(a0)
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20e538:
	lea dat_20e54e(pc),a1
	jsr (sub_205de0).l
	jsr (sub_203b7e).l
	jmp (loc_207990).l
dat_20e54e:
	.incbin 58702, 38
dat_20e574:
	.incbin 58740, 40
dat_20e59c:
	.incbin 58780, 40
dat_20e5c4:
	.incbin 58820, 874
	tst.b $28(a0)
	bpl.s loc_20e938
	bra.w loc_20eaf6
loc_20e938:
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20e946
	tst.b $1(a0)
	bpl.s loc_20e958
loc_20e946:
	move.w dat_20e964(pc,d0.w),d0
	jsr dat_20e964(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_2086b4).l
loc_20e958:
	jsr (sub_203b7e).l
	jmp (loc_207990).l
dat_20e964:
	dc.b $00,$0e,$00,$c0,$01,$00,$01,$2e
	dc.b $01,$3a,$01,$7c,$01,$90
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$40,$16(a0)
	move.w #$3a0,$2(a0)
	move.l #$20eb0e,$4(a0)
	move.l #$3000,d0
	move.w $c(a0),d1
	cmp.w ($f648).w,d1
	ble.s loc_20e9b8
	move.l #$1000,d0
loc_20e9b8:
	move.l d0,$34(a0)
	jsr (sub_207970).l
	bne.s loc_20ea22
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addi.w #$30,$c(a1)
	move.w a0,$3e(a1)
	move.w a1,$3c(a0)
	move.b #$b0,$20(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.b #$10,$17(a1)
	move.b #$10,$19(a1)
	move.b #$10,$16(a1)
	move.w #$3a0,$2(a1)
	move.l #$20eb0e,$4(a1)
	move.b #$1,$1a(a1)
loc_20ea22:
	rts
	.incbin 59940, 210
loc_20eaf6:
	movea.w $3e(a0),a1
	cmpi.b #$32,$0(a1)
	beq.s loc_20eb08
	jmp (sub_203c2a).l
loc_20eb08:
	jmp (sub_203b7e).l
	.incbin 60174, 602
	tst.b $24(a0)
	bne.s loc_20edac
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$446a,$2(a0)
	move.l #$20edd0,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20edc2(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20edac:
	lea ($d000).w,a1
	jsr (sub_2086b4).l
	jsr (sub_203b7e).l
	jmp (loc_207990).l
dat_20edc2:
	.incbin 60866, 1148
	tst.b $29(a0)
	bne.w loc_20f38a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f254(pc,d0.w),d0
	jmp dat_20f254(pc,d0.w)
dat_20f254:
	dc.b $00,$08,$00,$42,$00,$80,$00,$9a
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.w #$4364,$2(a0)
	move.l #$20f3f8,$4(a0)
	move.b #$3,$18(a0)
	move.b #$11,$16(a0)
	move.b $28(a0),d0
	move.b d0,d1
	subq.b #$1,d0
	move.b d0,$1a(a0)
	lsl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	lea ($d000).w,a1
	jsr (sub_2086ae).l
	beq.s loc_20f2c8
	addq.b #$2,$24(a0)
	clr.b $23(a0)
	move.w #$8,$2a(a0)
	moveq #$8,d0
	tst.w ($d010).w
	bpl.s loc_20f2ba
	neg.w d0
loc_20f2ba:
	move.w d0,$2c(a0)
	move.w #$a3,d0
	jsr (sub_20262a).l
loc_20f2c8:
	jsr (sub_203b7e).l
	jmp (loc_207990).l
	.incbin 62164, 182
loc_20f38a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f398(pc,d0.w),d0
	jmp dat_20f398(pc,d0.w)
dat_20f398:
	.incbin 62360, 2134

sub_20fbee:
	tst.b ($ff156a).l
	beq.s loc_20fc34
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fc06
	tst.b $28(a0)
	beq.s loc_20fc34
loc_20fc06:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203c2a).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fc32
	move.w #$9e,d0
	jsr (sub_20262a).l
loc_20fc32:
	addq.l #$4,a7
loc_20fc34:
	rts

sub_20fc36:
	tst.b $28(a0)
	bmi.s loc_20fc66
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fc56
	tst.b ($ff156d).l
	bne.s loc_20fc66
	addq.l #$4,a7
	jmp (loc_207990).l
loc_20fc56:
	tst.b ($ff156a).l
	bne.s loc_20fc66
	addq.l #$4,a7
	jmp (sub_203c2a).l
loc_20fc66:
	rts

sub_20fc68:
	tst.b ($f63a).w
	bne.w loc_20fd2e
	jsr (sub_20688c).l
	cmpi.w #$280,($f700).w
	bcc.w loc_20fd2e
	cmpi.w #$160,($f704).w
	bcc.w loc_20fd2e
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fd82).l,a1
	move.w #$7f,d6
	bsr.w sub_20fd30
	bne.s loc_20fcc6
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4500,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fcc6:
	lea (dat_20fdd4).l,a1
	move.w #$7f,d6
	bsr.w sub_20fd30
	bne.s loc_20fcfa
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4700,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fcfa:
	lea (dat_20fe26).l,a1
	move.w #$7f,d6
	bsr.w sub_20fd30
	bne.s loc_20fd2e
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4900,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd2e:
	rts

sub_20fd30:
	subq.b #$1,(a2)
	bpl.s loc_20fd76
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20fd40
	moveq #$0,d0
loc_20fd40:
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
loc_20fd64:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fd64
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fd76:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fd82:
	.incbin 64898, 82
dat_20fdd4:
	.incbin 64980, 82
dat_20fe26:
	.incbin 65062, 82
dat_20fe78:
	.incbin 65144, 16
dat_20fe88:
	.incbin 65160, 55218
dat_21d63a:
	.incbin 120378, 364
dat_21d7a6:
	.incbin 120742, 10330
dat_220000:
	.incbin 131072, 80422
dat_233a26:
	.incbin 211494, 18588
dat_2382c2:
	.incbin 230082, 384
dat_238442:
	.incbin 230466, 5632
dat_239a42:
	.incbin 236098, 256
dat_239b42:
	.incbin 236354, 4096
dat_23ab42:
	.incbin 240450, 4896
dat_23be62:
	.incbin 245346, 16798
