; SPSS__.BIN
; disassembled from the disc; code only, data comes from data/SPSS__.BIN at build time
	.file "SPSS__.BIN", 327680

	.org 0, $010000		; sub CPU
	move.l #loc_01022a,($5f78).w
	move.b #$0,($8003).w
	moveq #$0,d0
	move.l d0,($8026).w
	move.w d0,($8024).w
	move.b #$6,($802b).w
	bset.b #$7,($800f).w
	bclr.b #$1,($8033).w
	move.b #$3,($8004).w
	bsr.w sub_012be2
	lea (dat_03c000).l,a0
	move.w #$fff,d7
loc_01003e:
	move.l #$0,(a0)+
	dbf d7,loc_01003e
	bsr.w sub_012e84
	lea ($80000).l,a0
	move.w #$7fff,d7
loc_010056:
	move.l #$0,(a0)+
	move.l #$0,(a0)+
	dbf d7,loc_010056
	bsr.w sub_010234
	bsr.w sub_0114ce
	move.b #$1,(dat_03c000).l
	move.b #$6,(dat_03c080).l
	move.b #$a,(dat_03c180).l
	move.b #$b,(dat_03c200).l
	bsr.w sub_011ac0
	bsr.w sub_01080a
	move.b #$14,(dat_03e317).l
	move.w #$14,(dat_03e31a).l
	move.b #$1,(dat_03e318).l
	btst.b #$1,($801b).w
	bne.s loc_0100be
	move.l #$64,($8026).w
loc_0100be:
	bset.b #$1,($8033).w
	bclr.b #$7,($800f).w
loc_0100ca:
	btst.b #$5,($800e).w
	beq.s loc_010106
	move.w #$3,d0
	jsr ($5f22).w
loc_0100da:
	btst.b #$1,($801b).w
	beq.s loc_0100f6
	move.b ($801e).w,d0
	andi.b #$70,d0
	beq.s loc_0100f6
	bset.b #$5,($800f).w
	bra.w loc_0101bc
loc_0100f6:
	btst.b #$5,($800e).w
	bne.s loc_0100da
	move.w #$4,d0
	jsr ($5f22).w
loc_010106:
	btst.b #$0,($8012).w
	beq.s loc_0100ca
	bsr.w sub_012be2
	move.l #$0,($9c280).l
	bset.b #$0,($8022).w
loc_010122:
	btst.b #$0,($8012).w
	bne.s loc_010122
	bclr.b #$0,($8022).w
	bsr.w sub_010896
	bsr.w sub_012eb6
	bsr.w sub_012f0e
	move.b #$0,(dat_03e306).l
	move.l #$9c000,(dat_03e302).l
	bsr.w sub_012c66
	bsr.w sub_0103ea
	movea.l (dat_03e302).l,a0
	move.l #$0,(a0)
	bsr.w sub_012800
loc_010166:
	tst.b ($8065).w
	bne.s loc_010166
	bsr.w sub_012bca
	bsr.w sub_010202
	bne.s loc_010188
	move.b ($801b).w,d0
	andi.b #$3,d0
	beq.s loc_010188
	move.b #$1,(dat_03e314).l
loc_010188:
	btst.b #$0,($801b).w
	beq.s loc_010198
	btst.b #$7,($801e).w
	bne.s loc_0101bc
loc_010198:
	tst.b (dat_03e314).l
	bne.s loc_0101bc
	tst.b (dat_03e315).l
	bne.s loc_0101ac
	bra.w loc_0100ca
loc_0101ac:
	bset.b #$0,($800f).w
	moveq #$0,d0
	move.b ($8023).w,d0
	bset.b d0,($802a).w
loc_0101bc:
	bset.b #$0,($800f).w
	move.b ($8023).w,d0
loc_0101c6:
	addq.b #$1,d0
	cmpi.b #$7,d0
	bcs.s loc_0101d0
	moveq #$0,d0
loc_0101d0:
	cmpi.b #$7f,($802a).w
	beq.s loc_0101de
	btst.b d0,($802a).w
	bne.s loc_0101c6
loc_0101de:
	move.b d0,($8023).w
loc_0101e2:
	btst.b #$0,($800e).w
	beq.s loc_0101e2
	moveq #$0,d0
	move.b d0,($800f).w
	move.l d0,($8020).w
	move.l d0,($8024).w
	move.l d0,($8028).w
	move.l d0,($802c).w
	rts

sub_010202:
	lea (dat_03d000).l,a0
	tst.b (a0)
	bne.s loc_010228
	tst.b $80(a0)
	bne.s loc_010228
	tst.b $100(a0)
	bne.s loc_010228
	tst.b $180(a0)
	bne.s loc_010228
	tst.b $200(a0)
	bne.s loc_010228
	tst.b $280(a0)
loc_010228:
	rts
loc_01022a:
	move.b #$0,(dat_03e300).l
	rte

sub_010234:
	moveq #$0,d0
	move.b ($8023).w,d0
	add.w d0,d0
	move.w dat_010244(pc,d0.w),d0
	jmp dat_010244(pc,d0.w)
dat_010244:
	.incbin 580, 16
	lea (dat_040000).l,a0
	lea (dat_054a60).l,a1
	bra.s loc_0102d2
	.incbin 610, 112
loc_0102d2:
	move.l a1,-(a7)
	lea ($80200).l,a1
	bsr.w sub_0102ea
	movea.l (a7)+,a0
	lea ($a0000).l,a1
	bra.w sub_0102ea

sub_0102ea:
	subq.l #$2,a7
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_0102f6:
	lsr.w #$1,d5
	move.w sr,d6
	dbf d4,loc_010308
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_010308:
	move.w d6,ccr
	bcc.s loc_010310
	move.b (a0)+,(a1)+
	bra.s loc_0102f6
loc_010310:
	moveq #$0,d3
	lsr.w #$1,d5
	move.w sr,d6
	dbf d4,loc_010324
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_010324:
	move.w d6,ccr
	bcs.s loc_010354
	lsr.w #$1,d5
	dbf d4,loc_010338
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_010338:
	roxl.w #$1,d3
	lsr.w #$1,d5
	dbf d4,loc_01034a
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_01034a:
	roxl.w #$1,d3
	addq.w #$1,d3
	moveq #$ffffffff,d2
	move.b (a0)+,d2
	bra.s loc_01036a
loc_010354:
	move.b (a0)+,d0
	move.b (a0)+,d1
	moveq #$ffffffff,d2
	move.b d1,d2
	lsl.w #$5,d2
	move.b d0,d2
	andi.w #$7,d1
	beq.s loc_010376
	move.b d1,d3
	addq.w #$1,d3
loc_01036a:
	move.b $0(a1,d2.w),d0
	move.b d0,(a1)+
	dbf d3,loc_01036a
	bra.s loc_0102f6
loc_010376:
	move.b (a0)+,d1
	beq.s loc_010386
	cmpi.b #$1,d1
	beq.w loc_0102f6
	move.b d1,d3
	bra.s loc_01036a
loc_010386:
	addq.l #$2,a7
	rts
	.incbin 906, 96

sub_0103ea:
	bsr.w sub_010464
	lea (dat_03c100).l,a0
	moveq #$d,d7
loc_0103f6:
	bsr.s sub_01043a
	adda.w #$80,a0
	dbf d7,loc_0103f6
	lea (dat_03c000).l,a0
	bsr.s sub_01043a
	lea (dat_03c080).l,a0
	bsr.s sub_01043a
	lea (dat_03c800).l,a0
	moveq #$17,d7
loc_010418:
	bsr.s sub_01043a
	adda.w #$80,a0
	dbf d7,loc_010418
	bsr.w sub_0104b0
	lea (dat_03d400).l,a0
	moveq #$7,d7
loc_01042e:
	bsr.s sub_01043a
	adda.w #$80,a0
	dbf d7,loc_01042e
	rts

sub_01043a:
	moveq #$0,d0
	move.b (a0),d0
	beq.s loc_010462
	lea loc_0107c6(pc),a1
	add.w d0,d0
	add.w d0,d0
	movea.l $0(a1,d0.w),a1
	move.w d7,-(a7)
	jsr (a1)
	move.w (a7)+,d7
	btst.b #$0,$2(a0)
	beq.s loc_010462
	movea.l a0,a1
	moveq #$0,d1
	bra.w loc_012b6a
loc_010462:
	rts

sub_010464:
	lea (dat_03d800).l,a6
	moveq #$0,d5
	moveq #$10,d6
	moveq #$3f,d7
loc_010470:
	move.w d5,(a6)
	adda.w d6,a6
	dbf d7,loc_010470
	rts

sub_01047a:
	move.l d0,-(a7)
	cmpi.l #$1000,d0
	bcs.s loc_01048a
	move.l #$fff,d0
loc_01048a:
	lsr.w #$2,d0
	andi.w #$3f0,d0
	lea (dat_03d800).l,a6
	lea $0(a6,d0.w),a6
	moveq #$6,d7
loc_01049c:
	tst.w (a6)+
	beq.s loc_0104a4
	dbf d7,loc_01049c
loc_0104a4:
	move.w a0,-$2(a6)
	move.w #$0,(a6)
	move.l (a7)+,d0
	rts

sub_0104b0:
	move.l #dat_03d800,d4
	move.l #dat_030000,d5
	moveq #$10,d6
	moveq #$3f,d7
loc_0104c0:
	movea.l d4,a6
	bsr.s sub_0104cc
	add.l d6,d4
	dbf d7,loc_0104c0
	rts

sub_0104cc:
	bsr.s sub_0104de
	bsr.s sub_0104de
	bsr.s sub_0104de
	bsr.s sub_0104de
	bsr.s sub_0104de
	bsr.s sub_0104de
	bsr.s sub_0104de
	bsr.s sub_0104de
	rts

sub_0104de:
	move.w (a6)+,d5
	beq.s loc_0104f2
	movea.l d5,a0
	movem.l d4-d7,-(a7)
	bsr.w sub_01053e
	movem.l (a7)+,d4-d7
	rts
loc_0104f2:
	move.l (a7)+,d0
	rts

sub_0104f6:
	move.b d0,$a(a0)
	moveq #$0,d0
	move.b d0,$b(a0)
	movea.l $6(a0),a6
	move.b $a(a0),d0
	add.w d0,d0
	add.w d0,d0
	movea.l $0(a6,d0.w),a6
	move.b (a6)+,d0
	move.b (a6),$c(a0)
	move.b (a6)+,$d(a0)
	rts

sub_01051c:
	move.b d0,$a(a0)
	movea.l $6(a0),a6
	moveq #$0,d0
	move.b $a(a0),d0
	add.w d0,d0
	add.w d0,d0
	movea.l $0(a6,d0.w),a6
	move.b (a6)+,d0
	move.b (a6),$c(a0)
	move.b (a6)+,$d(a0)
	rts

sub_01053e:
	movea.l $6(a0),a2
	moveq #$0,d0
	move.b $a(a0),d0
	add.w d0,d0
	add.w d0,d0
	movea.l $0(a2,d0.w),a2
	move.b (a2)+,d1
	move.b (a2)+,d2
	btst.b #$1,$2(a0)
	bne.s loc_010576
	subq.b #$1,$c(a0)
	bpl.s loc_010576
	move.b d2,$c(a0)
	addq.b #$1,$b(a0)
	cmp.b $b(a0),d1
	bhi.s loc_010576
	move.b #$0,$b(a0)
loc_010576:
	btst.b #$2,$2(a0)
	bne.w loc_0107c8
	move.w $28(a0),d4
	move.w $2c(a0),d3
	moveq #$0,d0
	move.b $b(a0),d0
	add.w d0,d0
	add.w d0,d0
	movea.l $0(a2,d0.w),a3
	moveq #$0,d7
	move.b (a3)+,d7
	bmi.w loc_0107c8
	move.b (a3)+,$1(a0)
	tst.b (a3)+
	tst.b (a3)+
	tst.b (a3)+
	movea.l (dat_03e302).l,a4
	move.w $4(a0),d5
	tst.b $0(a2,d0.w)
	cmpi.b #$1,$0(a2,d0.w)
	beq.w loc_010640
	cmpi.b #$2,$0(a2,d0.w)
	beq.w loc_0106be
	cmpi.b #$3,$0(a2,d0.w)
	beq.w loc_01073c
loc_0105d4:
	cmpi.b #$50,(dat_03e306).l
	bcc.s loc_01062a
	move.b (a3)+,d0
	ext.w d0
	add.w d3,d0
	cmpi.w #$60,d0
	ble.s loc_010632
	cmpi.w #$180,d0
	bge.s loc_010632
	move.w d0,(a4)+
	move.b (a3)+,(a4)+
	addq.b #$1,(dat_03e306).l
	move.b (dat_03e306).l,(a4)+
	move.b (a3)+,d0
	lsl.w #$8,d0
	move.b (a3)+,d0
	add.w d5,d0
	move.w d0,(a4)+
	move.b (a3)+,d0
	ext.w d0
	add.w d4,d0
	cmpi.w #$60,d0
	ble.s loc_010636
	cmpi.w #$1c0,d0
	bge.s loc_010636
	andi.w #$1ff,d0
	bne.s loc_010624
	addq.w #$1,d0
loc_010624:
	move.w d0,(a4)+
loc_010626:
	dbf d7,loc_0105d4
loc_01062a:
	move.l a4,(dat_03e302).l
	rts
loc_010632:
	addq.w #$4,a3
	bra.s loc_010626
loc_010636:
	subq.w #$6,a4
	subq.b #$1,(dat_03e306).l
	bra.s loc_010626
loc_010640:
	cmpi.b #$50,(dat_03e306).l
	bcc.s loc_0106a8
	move.b (a3)+,d0
	ext.w d0
	add.w d3,d0
	cmpi.w #$60,d0
	ble.s loc_0106b0
	cmpi.w #$180,d0
	bge.s loc_0106b0
	move.w d0,(a4)+
	move.b (a3),d2
	move.b (a3)+,(a4)+
	addq.b #$1,(dat_03e306).l
	move.b (dat_03e306).l,(a4)+
	move.b (a3)+,d0
	eori.b #$8,d0
	lsl.w #$8,d0
	move.b (a3)+,d0
	add.w d5,d0
	move.w d0,(a4)+
	move.b (a3)+,d0
	add.b d2,d2
	addq.b #$8,d2
	andi.b #$f8,d2
	add.b d2,d0
	neg.b d0
	ext.w d0
	add.w d4,d0
	cmpi.w #$60,d0
	ble.s loc_0106b4
	cmpi.w #$1c0,d0
	bge.s loc_0106b4
	andi.w #$1ff,d0
	bne.s loc_0106a2
	addq.w #$1,d0
loc_0106a2:
	move.w d0,(a4)+
loc_0106a4:
	dbf d7,loc_010640
loc_0106a8:
	move.l a4,(dat_03e302).l
	rts
loc_0106b0:
	addq.w #$4,a3
	bra.s loc_0106a4
loc_0106b4:
	subq.w #$6,a4
	subq.b #$1,(dat_03e306).l
	bra.s loc_0106a4
loc_0106be:
	cmpi.b #$50,(dat_03e306).l
	bcc.s loc_010726
	move.b (a3)+,d0
	move.b (a3),d6
	ext.w d0
	neg.w d0
	lsl.b #$3,d6
	andi.w #$18,d6
	addq.w #$8,d6
	sub.w d6,d0
	add.w d3,d0
	cmpi.w #$60,d0
	ble.s loc_01072e
	cmpi.w #$180,d0
	bge.s loc_01072e
	move.w d0,(a4)+
	move.b (a3)+,(a4)+
	addq.b #$1,(dat_03e306).l
	move.b (dat_03e306).l,(a4)+
	move.b (a3)+,d0
	lsl.w #$8,d0
	move.b (a3)+,d0
	add.w d5,d0
	eori.w #$1000,d0
	move.w d0,(a4)+
	move.b (a3)+,d0
	ext.w d0
	add.w d4,d0
	cmpi.w #$60,d0
	ble.s loc_010732
	cmpi.w #$1c0,d0
	bge.s loc_010732
	andi.w #$1ff,d0
	bne.s loc_010720
	addq.w #$1,d0
loc_010720:
	move.w d0,(a4)+
loc_010722:
	dbf d7,loc_0106be
loc_010726:
	move.l a4,(dat_03e302).l
	rts
loc_01072e:
	addq.w #$4,a3
	bra.s loc_010722
loc_010732:
	subq.w #$6,a4
	subq.b #$1,(dat_03e306).l
	bra.s loc_010722
loc_01073c:
	cmpi.b #$50,(dat_03e306).l
	bcc.s loc_0107b2
	move.b (a3)+,d0
	move.b (a3),d6
	ext.w d0
	neg.w d0
	lsl.b #$3,d6
	andi.w #$18,d6
	addq.w #$8,d6
	sub.w d6,d0
	add.w d3,d0
	cmpi.w #$60,d0
	ble.s loc_0107ba
	cmpi.w #$180,d0
	bge.s loc_0107ba
	move.w d0,(a4)+
	move.b (a3)+,d6
	move.b d6,(a4)+
	addq.b #$1,(dat_03e306).l
	move.b (dat_03e306).l,(a4)+
	move.b (a3)+,d0
	lsl.w #$8,d0
	move.b (a3)+,d0
	add.w d5,d0
	eori.w #$1800,d0
	move.w d0,(a4)+
	move.b (a3)+,d0
	ext.w d0
	neg.w d0
	add.b d6,d6
	andi.w #$18,d6
	addq.w #$8,d6
	sub.w d6,d0
	add.w d4,d0
	cmpi.w #$60,d0
	ble.s loc_0107be
	cmpi.w #$1c0,d0
	bge.s loc_0107be
	andi.w #$1ff,d0
	bne.s loc_0107ac
	addq.w #$1,d0
loc_0107ac:
	move.w d0,(a4)+
loc_0107ae:
	dbf d7,loc_01073c
loc_0107b2:
	move.l a4,(dat_03e302).l
	rts
loc_0107ba:
	addq.w #$4,a3
	bra.s loc_0107ae
loc_0107be:
	subq.w #$6,a4
	subq.b #$1,(dat_03e306).l
loc_0107c6:
	bra.s loc_0107ae
loc_0107c8:
	rts
	.incbin 1994, 64

sub_01080a:
	moveq #$0,d0
	move.b ($8023).w,d0
	mulu.w #$c,d0
	move.l dat_010836(pc,d0.w),(dat_03e322).l
	move.w dat_01083a(pc,d0.w),(dat_03e326).l
	move.l dat_01083c(pc,d0.w),(dat_03e328).l
	move.w dat_010840(pc,d0.w),(dat_03e32c).l
	rts
dat_010836:
	dc.b $00,$01,$09,$26
dat_01083a:
	dc.b $00,$0b
dat_01083c:
	dc.b $00,$01,$09,$9e
dat_010840:
	.incbin 2112, 86

sub_010896:
	addq.w #$2,(dat_03e332).l
	cmpi.w #$6,(dat_03e332).l
	bcs.s loc_0108ae
	move.w #$0,(dat_03e332).l
loc_0108ae:
	addq.w #$1,(dat_03e32e).l
	move.w (dat_03e32e).l,d0
	andi.w #$1,d0
	bne.w loc_0108fa
	addq.w #$2,(dat_03e330).l
	andi.w #$7,(dat_03e330).l
	movea.l (dat_03e322).l,a0
	lea ($a0000).l,a1
	move.w (dat_03e330).l,d1
	move.w (dat_03e326).l,d7
loc_0108e8:
	move.w (a0),d0
	move.w $2(a0,d1.w),d2
	move.w d2,$0(a1,d0.w)
	adda.w #$a,a0
	dbf d7,loc_0108e8
loc_0108fa:
	movea.l (dat_03e328).l,a0
	lea ($a0000).l,a1
	move.w (dat_03e332).l,d1
	move.w (dat_03e32c).l,d7
loc_010912:
	move.w (a0),d0
	move.w $2(a0,d1.w),d2
	move.w d2,$0(a1,d0.w)
	adda.w #$8,a0
	dbf d7,loc_010912
	rts
	.incbin 2342, 1724

sub_010fe2:
	lea (dat_03c000).l,a1
	tst.b $0(a1)
	beq.w loc_01105c
	tst.b $4f(a1)
	bne.w loc_01105c
	move.w $1c(a0),d0
	subi.w #$10,d0
	move.w d0,d1
	addi.w #$20,d1
	move.w $1c(a1),d2
	subi.w #$10,d2
	move.w d2,d3
	cmp.w d1,d2
	bgt.s loc_01105c
	addi.w #$20,d3
	cmp.w d0,d3
	blt.s loc_01105c
	move.w $20(a0),d0
	subi.w #$c,d0
	move.w d0,d1
	addi.w #$18,d1
	move.w $20(a1),d2
	subi.w #$10,d2
	move.w d2,d3
	cmp.w d1,d2
	bgt.s loc_01105c
	addi.w #$20,d3
	cmp.w d0,d3
	blt.s loc_01105c
	cmpi.w #$210,$24(a1)
	bcs.s loc_01105c
	cmpi.w #$270,$24(a1)
	bcc.s loc_01105c
	move.b $0(a0),$4f(a1)
	move.b $0(a1),$4f(a0)
loc_01105c:
	rts

sub_01105e:
	lea (dat_03e400).l,a4
	movea.l (dat_03e30c).l,a5
	move.w $1c(a0),d0
	move.w $20(a0),d1
	bsr.w sub_0110fc
	move.b $0(a5,d2.w),$e(a0)
	rol.w #$4,d1
	andi.b #$f,d1
	move.b d1,$13(a0)
	move.w $1c(a0),d0
	subq.w #$8,d0
	move.w $20(a0),d1
	subq.w #$8,d1
	bsr.w sub_0110fc
	move.b $0(a5,d2.w),$f(a0)
	move.w $1c(a0),d0
	addq.w #$8,d0
	move.w $20(a0),d1
	subq.w #$8,d1
	bsr.w sub_0110fc
	move.b $0(a5,d2.w),$10(a0)
	move.w $1c(a0),d0
	addq.w #$8,d0
	move.w $20(a0),d1
	addq.w #$8,d1
	bsr.w sub_0110fc
	move.b $0(a5,d2.w),$11(a0)
	move.w $1c(a0),d0
	subq.w #$8,d0
	move.w $20(a0),d1
	addq.w #$8,d1
	bsr.w sub_0110fc
	move.b $0(a5,d2.w),$12(a0)
	rts
	.incbin 4320, 28

sub_0110fc:
	move.w d0,d2
	move.w d1,d3
	lsr.w #$5,d2
	add.w d2,d2
	lsr.w #$5,d3
	lsl.w #$8,d3
	add.w d3,d2
	lea ($a0000).l,a6
	move.w $0(a6,d2.w),d2
	move.w d2,d1
	andi.w #$7ff,d2
	lsr.w #$2,d2
	rts
	.incbin 4382, 944

sub_0114ce:
	moveq #$0,d0
	move.b ($8023).w,d0
	lsl.w #$2,d0
	move.l dat_0114e0(pc,d0.w),(dat_03e30c).l
	rts
dat_0114e0:
	.incbin 5344, 32
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_011514(pc,d0.w),d0
	jsr dat_011514(pc,d0.w)
	bra.w sub_01053e
dat_011514:
	dc.b $00,$04,$00,$68
	move.w #$e78f,$4(a0)
	move.l #$11620,$6(a0)
	moveq #$4,d0
	move.b d0,$52(a0)
	bsr.w sub_0104f6
	move.w (dat_03c028).l,$28(a0)
	move.w (dat_03c02c).l,$2c(a0)
	addq.b #$1,$3(a0)
	move.b #$2d,$50(a0)
	bsr.w sub_012c38
	move.w d0,d1
	andi.l #$3f000,d1
	bchg.b #$0,(dat_03e320).l
	beq.s loc_011562
	neg.l d1
loc_011562:
	move.l d1,$3c(a0)
	andi.w #$f,d0
	move.w #$fff6,$40(a0)
	sub.w d0,$40(a0)
	move.b #$94,d0
	bsr.w sub_012c08
	subq.b #$1,$50(a0)
	bne.s loc_011588
	bset.b #$0,$2(a0)
loc_011588:
	move.l $3c(a0),d0
	add.l d0,$28(a0)
	move.l $40(a0),d0
	add.l d0,$2c(a0)
	cmpi.w #$158,$2c(a0)
	bls.s loc_0115ac
	move.w #$158,$2c(a0)
	neg.l $40(a0)
	rts
loc_0115ac:
	addi.l #$20000,$40(a0)
	rts
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_0115ca(pc,d0.w),d0
	jsr dat_0115ca(pc,d0.w)
	bra.w sub_01053e
dat_0115ca:
	dc.b $00,$04,$00,$38
	move.w #$878f,$4(a0)
	move.l #$11620,$6(a0)
	moveq #$0,d0
	move.b $51(a0),d0
	move.b d0,$52(a0)
	bsr.w sub_0104f6
	addq.b #$1,$3(a0)
	move.b #$10,$50(a0)
	move.w #$fff0,$40(a0)
	move.b #$95,d0
	bsr.w sub_012c08
	subq.b #$1,$50(a0)
	bne.s loc_01160e
	bset.b #$0,$2(a0)
loc_01160e:
	move.l $40(a0),d0
	add.l d0,$2c(a0)
	addi.l #$20000,$40(a0)
	rts
	.incbin 5664, 476
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_01182c(pc,d0.w),d0
	jsr dat_01182c(pc,d0.w)
	move.w (dat_03c024).l,$24(a0)
	subi.w #$140,$24(a0)
	tst.b $64(a0)
	beq.s loc_01182a
	subq.b #$1,$64(a0)
	bset.b #$2,$2(a0)
loc_01182a:
	rts
dat_01182c:
	dc.b $00,$06,$00,$4a,$01,$12
	move.w #$e440,$4(a0)
	bsr.w sub_0119a0
	move.l #$3a686,$6(a0)
	cmpi.b #$0,$62(a0)
	beq.s loc_011854
	move.l #$3a7e0,$6(a0)
loc_011854:
	move.w (dat_03c024).l,$24(a0)
	subi.w #$140,$24(a0)
	moveq #$0,d0
	move.b d0,$52(a0)
	bsr.w sub_0104f6
	move.b #$2,$64(a0)
	addq.b #$1,$3(a0)
	move.l $30(a0),d0
	add.l d0,$1c(a0)
	move.l $34(a0),d0
	add.l d0,$20(a0)
	subq.w #$1,$60(a0)
	bne.s loc_011890
	bsr.w sub_0119a0
loc_011890:
	bsr.w sub_011a18
	bsr.w sub_012c8a
	bsr.w sub_010fe2
	tst.b $4f(a0)
	beq.w loc_01193c
	cmpi.b #$2,($802b).w
	bcc.s loc_0118b4
	move.b #$1,(dat_03e319).l
loc_0118b4:
	bsr.w sub_0127e2
	move.b #$2,$3(a0)
	movea.l $54(a0),a1
	bset.b #$0,$2(a1)
	move.w #$3c,$50(a0)
	bsr.w sub_012c38
	andi.b #$1,d0
	move.b d0,$53(a0)
	move.b #$0,d0
	bsr.w sub_0104f6
	lea (dat_03c800).l,a1
	move.b #$4,(a1)
	move.w $28(a0),$28(a1)
	move.w $2c(a0),$2c(a1)
	move.b $62(a0),$51(a1)
	moveq #$0,d0
	move.b $62(a0),d0
	add.w d0,d0
	move.w dat_01190e(pc,d0.w),d0
	jmp dat_01190e(pc,d0.w)
dat_01190e:
	dc.b $00,$08,$00,$1c,$00,$08,$00,$08
	move.w (dat_03e31a).l,d1
	move.w d1,d0
	add.w d1,d1
	move.w d1,(dat_03e31a).l
	bra.w loc_0127ec
	.incbin 6442, 18
loc_01193c:
	rts
	subq.w #$4,$28(a0)
	tst.b $53(a0)
	bne.s loc_01194c
	addq.w #$8,$28(a0)
loc_01194c:
	addq.w #$1,$2c(a0)
	bclr.b #$2,$2(a0)
	subq.w #$1,$50(a0)
	bne.s loc_011962
	bset.b #$0,$2(a0)
loc_011962:
	btst.b #$0,$51(a0)
	bne.s loc_01199e
	bsr.w sub_0126de
	bne.s loc_01199e
	move.b #$c,$0(a1)
	move.w $28(a0),$28(a1)
	subi.w #$10,$28(a1)
	move.w $2c(a0),$2c(a1)
	bsr.w sub_012c38
	move.w d0,d1
	andi.w #$1f,d0
	add.w d0,$28(a1)
	andi.w #$1f,d1
	sub.w d0,$2c(a1)
loc_01199e:
	rts

sub_0119a0:
	movea.l $5c(a0),a1
	move.w (a1)+,$60(a0)
	bpl.s loc_0119b2
	move.l $58(a0),$5c(a0)
	bra.s sub_0119a0
loc_0119b2:
	move.w (a1)+,d0
	move.w (a1)+,d1
	move.w d0,$1c(a0)
	move.w d1,$20(a0)
	move.w (a1)+,d2
	move.w (a1)+,d3
	sub.w d0,d2
	sub.w d1,d3
	ext.l d2
	ext.l d3
	asl.l #$4,d2
	asl.l #$4,d3
	divs.w $60(a0),d2
	divs.w $60(a0),d3
	ext.l d2
	ext.l d3
	asl.l #$4,d2
	asl.l #$4,d3
	asl.l #$8,d2
	asl.l #$8,d3
	move.l d2,$30(a0)
	move.l d3,$34(a0)
	move.l a1,$5c(a0)
	rts

sub_0119f0:
	bclr.b #$2,$2(a0)
	move.w $28(a0),d0
	cmpi.w #$200,d0
	bcc.s loc_011a10
	move.w $2c(a0),d0
	cmpi.w #$100,d0
	blt.s loc_011a10
	cmpi.w #$1c0,d0
	blt.s loc_011a16
loc_011a10:
	bset.b #$2,$2(a0)
loc_011a16:
	rts

sub_011a18:
	lea (dat_03c000).l,a6
	move.w $1c(a6),d4
	move.w $20(a6),d5
	move.w $1c(a0),d0
	move.w $20(a0),d1
	bsr.w sub_0128cc
	move.w $1c(a6),d5
	move.w $20(a6),d6
	move.w $1c(a0),d3
	move.w $20(a0),d4
	bsr.w sub_012970
	bsr.w sub_01047a
	cmpi.l #$500,d0
	bcs.s loc_011a58
	move.l #$500,d0
loc_011a58:
	lsr.w #$4,d0
	move.b dat_011a6e(pc,d0.w),d0
	cmp.b $52(a0),d0
	beq.s loc_011a6c
	move.b d0,$52(a0)
	bsr.w sub_01051c
loc_011a6c:
	rts
dat_011a6e:
	.incbin 6766, 82

sub_011ac0:
	moveq #$0,d0
	move.b ($8023).w,d0
	lsl.w #$2,d0
	movea.l dat_011ae6(pc,d0.w),a1
	lea (dat_03d000).l,a2
	move.w (a1)+,d7
	move.b d7,($802b).w
	subq.w #$1,d7
loc_011ada:
	bsr.s sub_011b06
	lea $80(a2),a2
	dbf d7,loc_011ada
	rts
dat_011ae6:
	.incbin 6886, 32

sub_011b06:
	movea.l (a1)+,a3
	lea $400(a2),a4
	move.b #$2,(a2)
	move.b (a3)+,$62(a2)
	move.b (a3)+,$63(a2)
	move.l a3,$58(a2)
	move.l a3,$5c(a2)
	move.l a4,$54(a2)
	move.b #$5,(a4)
	move.l a2,$54(a4)
	rts

sub_011b2e:
	cmpi.l #$14,($8026).w
	bcc.s loc_011b6a
	lea (dat_03d380).l,a2
	lea dat_011b6c(pc),a3
	tst.b (a2)
	bne.s loc_011b6a
	lea $400(a2),a4
	move.b #$3,(a2)
	move.b (a3)+,$62(a2)
	move.b (a3)+,$63(a2)
	move.l a3,$58(a2)
	move.l a3,$5c(a2)
	move.l a4,$54(a2)
	move.b #$5,(a4)
	move.l a2,$54(a4)
loc_011b6a:
	rts
dat_011b6c:
	.incbin 7020, 2164
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_0123f6(pc,d0.w),d0
	jsr dat_0123f6(pc,d0.w)
	bsr.w sub_01053e
	rts
dat_0123f6:
	dc.b $00,$04,$00,$20
	move.w #$e6dc,$4(a0)
	move.l #$3a592,$6(a0)
	moveq #$5,d0
	move.b d0,$52(a0)
	bsr.w sub_0104f6
	addq.b #$1,$3(a0)
	lea (dat_03c000).l,a1
	move.w $1c(a1),$1c(a0)
	move.w $20(a1),$20(a0)
	move.w (dat_03c024).l,$24(a0)
	bra.w sub_012c8a
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_01244e(pc,d0.w),d0
	jsr dat_01244e(pc,d0.w)
	bsr.w sub_0119f0
	bsr.w sub_01053e
	rts
dat_01244e:
	dc.b $00,$04,$00,$20
	move.w #$e6dc,$4(a0)
	move.l #$3a592,$6(a0)
	moveq #$0,d0
	move.b d0,$52(a0)
	bsr.w sub_0104f6
	addq.b #$1,$3(a0)
	movea.l $54(a0),a1
	move.w $1c(a1),$1c(a0)
	move.w $20(a1),$20(a0)
	bset.b #$2,$2(a1)
	btst.b #$2,$2(a0)
	bne.s loc_012492
	bclr.b #$2,$2(a1)
loc_012492:
	move.w (dat_03c024).l,$24(a0)
	bsr.w sub_011a18
	bsr.w sub_012c8a
	rts
	.incbin 9380, 118
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_012530(pc,d0.w),d0
	jsr dat_012530(pc,d0.w)
	bsr.w sub_01053e
	rts
dat_012530:
	dc.b $00,$08,$00,$2c,$00,$4c,$00,$58
	move.w #$8516,$4(a0)
	move.l #$1259e,$6(a0)
	move.w #$1c8,$28(a0)
	move.w #$f0,$2c(a0)
	moveq #$0,d0
	bsr.w sub_0104f6
	addq.b #$1,$3(a0)
	subi.w #$20,$28(a0)
	cmpi.w #$138,$28(a0)
	bhi.s loc_01257a
	move.w #$138,$28(a0)
	move.w #$50,$50(a0)
	addq.b #$1,$3(a0)
loc_01257a:
	rts
	subq.w #$1,$50(a0)
	bne.s loc_012586
	addq.b #$1,$3(a0)
loc_012586:
	rts
	addi.w #$20,$28(a0)
	cmpi.w #$1d0,$28(a0)
	bls.s loc_01259c
	bset.b #$0,$2(a0)
loc_01259c:
	rts
	.incbin 9630, 90
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_01260e(pc,d0.w),d0
	jsr dat_01260e(pc,d0.w)
	bsr.w sub_01053e
	rts
dat_01260e:
	dc.b $00,$0a,$00,$2e,$00,$4e,$00,$6a
	dc.b $00,$8c
	move.w #$8516,$4(a0)
	move.l #$126b0,$6(a0)
	move.w #$f4,$28(a0)
	move.w #$20,$2c(a0)
	moveq #$0,d0
	bsr.w sub_0104f6
	addq.b #$1,$3(a0)
	addi.w #$20,$2c(a0)
	cmpi.w #$f0,$2c(a0)
	bcs.s loc_01265a
	move.w #$f0,$2c(a0)
	move.w #$50,$50(a0)
	addq.b #$1,$3(a0)
loc_01265a:
	rts
	subq.w #$1,$50(a0)
	bne.s loc_012666
	addq.b #$1,$3(a0)
loc_012666:
	cmpi.w #$32,$50(a0)
	bne.s loc_012676
	move.b #$15,(dat_03c003).l
loc_012676:
	rts
	subi.w #$20,$2c(a0)
	bpl.s loc_012698
	move.w #$3,$50(a0)
	bset.b #$2,$2(a0)
	addq.b #$1,$3(a0)
	move.b #$1,(dat_03c003).l
loc_012698:
	rts
	subq.w #$1,$50(a0)
	bne.s loc_0126ae
	bset.b #$0,$2(a0)
	move.b #$0,(dat_03e318).l
loc_0126ae:
	rts
	.incbin 9904, 46

sub_0126de:
	lea (dat_03cc00).l,a1
	moveq #$7,d7
loc_0126e6:
	tst.w (a1)
	beq.s loc_0126f2
	adda.w #$80,a1
	dbf d7,loc_0126e6
loc_0126f2:
	rts
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_01270a(pc,d0.w),d0
	jsr dat_01270a(pc,d0.w)
	bsr.w sub_01053e
	rts
dat_01270a:
	dc.b $00,$04,$00,$2a
	move.w #$87ae,$4(a0)
	move.l #$12742,$6(a0)
	moveq #$0,d0
	bsr.w sub_0104f6
	move.w #$c,$50(a0)
	addq.b #$1,$3(a0)
	move.b #$a3,d0
	bsr.w sub_012c08
	subq.w #$1,$50(a0)
	bne.s loc_012740
	bset.b #$0,$2(a0)
loc_012740:
	rts
	.incbin 10050, 160

sub_0127e2:
	subq.b #$1,($802b).w
	bne.s loc_0127ea
	nop
loc_0127ea:
	rts
loc_0127ec:
	add.w d0,($8024).w
	cmpi.w #$3e7,($8024).w
	bls.s loc_0127fe
	move.w #$3e7,($8024).w
loc_0127fe:
	rts

sub_012800:
	btst.b #$1,($801b).w
	bne.w loc_012878
	subq.b #$1,(dat_03e317).l
	bne.s loc_01281e
	move.b #$14,(dat_03e317).l
	bsr.w sub_012832
loc_01281e:
	tst.b (dat_03e316).l
	beq.s loc_012830
	subq.b #$1,(dat_03e316).l
	bsr.w sub_012832
loc_012830:
	rts

sub_012832:
	tst.b (dat_03e319).l
	bne.s loc_012876
	tst.b (dat_03e318).l
	bne.s loc_012876
	subq.l #$1,($8026).w
	bpl.s loc_012860
	move.l #$0,($8026).w
	move.b #$0,(dat_03e316).l
	move.b #$1,(dat_03e314).l
loc_012860:
	bsr.w sub_011b2e
	cmpi.l #$f,($8026).w
	bcc.s loc_012876
	move.b #$df,($9c280).l
loc_012876:
	rts
loc_012878:
	tst.b (dat_03e319).l
	bne.s loc_0128ca
	tst.b (dat_03e318).l
	bne.s loc_0128ca
	lea ($8026).w,a1
	addq.b #$3,$3(a1)
	cmpi.b #$3c,$3(a1)
	bcs.s loc_0128ca
	subi.b #$3c,$3(a1)
	addq.b #$1,$2(a1)
	cmpi.b #$3c,$2(a1)
	bcs.s loc_0128ca
	subi.b #$3c,$2(a1)
	addq.b #$1,$1(a1)
	cmpi.b #$a,$1(a1)
	bcs.s loc_0128ca
	move.l #$93b3b,(a1)
	move.b #$1,(dat_03e314).l
loc_0128ca:
	rts

sub_0128cc:
	moveq #$0,d2
	move.w d0,d3
	eor.w d4,d3
	sub.w d4,d0
	bcc.s loc_0128e4
	andi.w #$8000,d3
	bne.s loc_0128ea
loc_0128dc:
	bset.l #$0,d2
	neg.w d0
	bra.s loc_0128ea
loc_0128e4:
	andi.w #$8000,d3
	bne.s loc_0128dc
loc_0128ea:
	sub.w d5,d1
	bpl.s loc_0128f8
	tst.w d5
	bmi.s loc_0128f8
	bset.l #$1,d2
	neg.w d1
loc_0128f8:
	cmp.w d0,d1
	bcs.s loc_012902
	bset.l #$2,d2
	exg d0,d1
loc_012902:
	ext.l d1
	lsl.l #$6,d1
	tst.w d0
	bne.s loc_01290e
	moveq #$0,d1
	bra.s loc_012910
loc_01290e:
	divu.w d0,d1
loc_012910:
	andi.w #$ff,d1
	cmpi.b #$40,d1
	bcs.s loc_01291e
	move.b #$3f,d1
loc_01291e:
	rts
	.incbin 10528, 80

sub_012970:
	lea dat_012aa6(pc),a1
	andi.w #$ff,d1
	add.w d1,d1
	adda.w d1,a1
	move.w #$0,d0
	move.w #$0,d1
	move.w (a1),d0
	btst.l #$2,d2
	beq.s loc_012992
	move.w d6,d1
	move.w d4,d2
	bra.s loc_012996
loc_012992:
	move.w d5,d1
	move.w d3,d2
loc_012996:
	sub.w d2,d1
	bpl.s loc_01299c
	neg.w d1
loc_01299c:
	mulu.w d1,d0
	lsr.l #$8,d0
	rts
	.incbin 10658, 260
dat_012aa6:
	.incbin 10918, 196
loc_012b6a:
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	rts
	.incbin 11180, 30

sub_012bca:
	btst.b #$0,($8003).w
	bne.s loc_012be0
	bset.b #$0,($8003).w
	btst.b #$0,($8003).w
	beq.s sub_012bca
loc_012be0:
	rts

sub_012be2:
	btst.b #$1,($8003).w
	beq.s sub_012be2
	rts
	.incbin 11244, 28

sub_012c08:
	tst.b ($9c280).l
	bne.s loc_012c18
	move.b d0,($9c280).l
	bra.s loc_012c36
loc_012c18:
	tst.b ($9c281).l
	bne.s loc_012c28
	move.b d0,($9c281).l
	bra.s loc_012c36
loc_012c28:
	tst.b ($9c282).l
	bne.s loc_012c36
	move.b d0,($9c282).l
loc_012c36:
	rts

sub_012c38:
	move.l d1,-(a7)
	move.l (dat_03e310).l,d1
	bne.s loc_012c48
	move.l #$2a6d365a,d1
loc_012c48:
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
	move.l d1,(dat_03e310).l
	move.l (a7)+,d1
	rts

sub_012c66:
	lea (dat_03e400).l,a6
	move.w $16(a6),d0
	muls.w $10(a6),d0
	asr.l #$8,d0
	move.w d0,$4c(a6)
	move.w $16(a6),d0
	muls.w $e(a6),d0
	asr.l #$8,d0
	move.w d0,$48(a6)
	rts

sub_012c8a:
	lea (dat_03c000).l,a5
	lea (dat_03e400).l,a6
	move.w $1c(a5),d0
	sub.w $1c(a0),d0
	move.w $20(a5),d1
	sub.w $20(a0),d1
	moveq #$8,d5
	moveq #$0,d2
	move.w $16(a6),d2
	add.w $18(a6),d2
	move.w $e(a6),d3
	muls.w d0,d3
	asr.l d5,d3
	sub.l d3,d2
	move.w $10(a6),d3
	muls.w d1,d3
	asr.l d5,d3
	add.l d3,d2
	bne.s loc_012cca
	moveq #$1,d2
loc_012cca:
	move.w $4c(a6),d3
	muls.w d0,d3
	move.w $48(a6),d4
	muls.w d1,d4
	add.l d4,d3
	divs.w d2,d3
	addi.w #$100,d3
	move.w d3,$28(a0)
	move.w $16(a6),d3
	muls.w $24(a0),d3
	asr.l #$3,d3
	divs.w d2,d3
	addi.w #$100,d3
	move.w d3,$2c(a0)
	rts

sub_012cf8:
	lea ($9c800).l,a5
	lea (dat_03e400).l,a6
	move.w $0(a6),d0
	lsl.w #$3,d0
	move.w $2(a6),d1
	lsl.w #$3,d1
	move.w #$fffd,d2
	moveq #$8,d6
	move.w $a(a6),d3
	muls.w $e(a6),d3
	asr.l #$5,d3
	move.w d3,$5c(a6)
	move.w $a(a6),d3
	muls.w $10(a6),d3
	asr.l #$5,d3
	move.w d3,$60(a6)
	move.w $16(a6),d4
	move.w d4,d3
	muls.w $8(a6),d3
	muls.w $e(a6),d3
	asr.l #$5,d3
	move.l d3,$30(a6)
	move.w d4,d3
	muls.w $8(a6),d3
	muls.w $10(a6),d3
	asr.l #$5,d3
	move.l d3,$34(a6)
	move.w d4,d3
	muls.w $a(a6),d3
	move.l d3,$40(a6)
	move.w #$ff80,d3
	muls.w $10(a6),d3
	lsl.l #$3,d3
	movea.l d3,a1
	move.w #$ff80,d3
	muls.w $e(a6),d3
	lsl.l #$3,d3
	movea.l d3,a2
	move.w #$7f,d3
	muls.w $10(a6),d3
	lsl.l #$3,d3
	movea.l d3,a3
	move.w #$7f,d3
	muls.w $e(a6),d3
	lsl.l #$3,d3
	movea.l d3,a4
	move.w $8(a6),d4
	muls.w $e(a6),d4
	asr.l #$5,d4
	move.w $16(a6),d3
	add.w $18(a6),d3
	muls.w d4,d3
	asr.l d6,d3
	move.w d3,$54(a6)
	move.w $8(a6),d4
	muls.w $10(a6),d4
	asr.l #$5,d4
	move.w $16(a6),d3
	add.w $18(a6),d3
	muls.w d4,d3
	asr.l d6,d3
	move.w d3,$58(a6)
	move.l #$fff8,(a5)+
	move.l #$0,(a5)+
	move.l #$fff8,(a5)+
	move.l #$0,(a5)+
	move.l #$fff8,(a5)+
	move.l #$0,(a5)+
	move.w #$5c,d7
loc_012dec:
	move.w d2,d3
	muls.w $8(a6),d3
	add.l $40(a6),d3
	asr.l #$5,d3
	bne.s loc_012dfc
	moveq #$1,d3
loc_012dfc:
	move.l a1,d4
	move.w $5c(a6),d5
	muls.w d2,d5
	sub.l d5,d4
	add.l $30(a6),d4
	asr.l d6,d4
	muls.w $4(a6),d4
	divs.w d3,d4
	add.w d0,d4
	sub.w $54(a6),d4
	move.w d4,(a5)+
	move.l a2,d4
	move.w $60(a6),d5
	muls.w d2,d5
	add.l d5,d4
	sub.l $34(a6),d4
	asr.l d6,d4
	muls.w $4(a6),d4
	divs.w d3,d4
	add.w d1,d4
	add.w $58(a6),d4
	move.w d4,(a5)+
	move.l a3,d4
	move.w $5c(a6),d5
	muls.w d2,d5
	sub.l d5,d4
	add.l $30(a6),d4
	asr.l d6,d4
	muls.w $4(a6),d4
	divs.w d3,d4
	add.w d0,d4
	sub.w $54(a6),d4
	sub.w -$4(a5),d4
	move.w d4,(a5)+
	move.l a4,d4
	move.w $60(a6),d5
	muls.w d2,d5
	add.l d5,d4
	sub.l $34(a6),d4
	asr.l d6,d4
	muls.w $4(a6),d4
	divs.w d3,d4
	add.w d1,d4
	add.w $58(a6),d4
	sub.w -$4(a5),d4
	move.w d4,(a5)+
	subq.w #$1,d2
	dbf d7,loc_012dec
	rts

sub_012e84:
	lea (dat_03e400).l,a1
	move.w #$6,($8058).w
	move.w #$b,($805c).w
	move.w #$7400,($805e).w
	move.w #$0,($8060).w
	move.w #$100,($8062).w
	move.w #$80,$16(a1)
	move.w #$ffc0,$18(a1)
	rts

sub_012eb6:
	lea (dat_03e400).l,a6
	move.w $6(a6),d3
	bsr.w sub_012f30
	move.w d3,$8(a6)
	move.w $6(a6),d3
	bsr.w sub_012f2c
	move.w d3,$a(a6)
	move.w $c(a6),d3
	bsr.w sub_012f30
	move.w d3,$e(a6)
	move.w $c(a6),d3
	bsr.w sub_012f2c
	move.w d3,$10(a6)
	move.w $c(a6),d3
	addi.w #$100,d3
	bsr.w sub_012f30
	move.w d3,$12(a6)
	move.w $c(a6),d3
	addi.w #$100,d3
	bsr.w sub_012f2c
	move.w d3,$14(a6)
	rts

sub_012f0e:
	bsr.w sub_012cf8
	andi.b #$e7,($8003).w
	move.w #$8000,($805a).w
	move.w #$60,($8064).w
	move.w #$7200,($8066).w
	rts

sub_012f2c:
	addi.w #$80,d3

sub_012f30:
	andi.w #$1ff,d3
	move.w d3,d4
	btst.l #$7,d3
	beq.s loc_012f3e
	not.w d4
loc_012f3e:
	andi.w #$7f,d4
	add.w d4,d4
	move.w dat_012f54(pc,d4.w),d4
	btst.l #$8,d3
	beq.s loc_012f50
	neg.w d4
loc_012f50:
	move.w d4,d3
	rts
dat_012f54:
	.incbin 12116, 256
dat_013054:
	.incbin 12372, 48
loc_013084:
	move.w ($801e).w,d0
	cmp.w ($801e).w,d0
	bne.s loc_013084
	move.w d0,(dat_03e31e).l
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_013054(pc,d0.w),d0
	bsr.w sub_013946
	bclr.b #$5,$2(a0)
	bclr.b #$2,$2(a0)
	move.w #$a00,$18(a0)
	jsr dat_013054(pc,d0.w)
	btst.b #$3,$2(a0)
	bne.s loc_0130fc
	btst.b #$7,$2(a0)
	bne.s loc_0130e2
	btst.b #$6,$2(a0)
	bne.s loc_0130e2
	tst.b (dat_03e318).l
	bne.s loc_0130e2
	bsr.w sub_01105e
	bsr.w sub_01356e
loc_0130e2:
	btst.b #$5,$2(a0)
	bne.s loc_0130ee
	bsr.w sub_0139a8
loc_0130ee:
	cmpi.w #$340,$1c(a0)
	bcc.s loc_0130fc
	move.w #$340,$1c(a0)
loc_0130fc:
	cmpi.w #$cc0,$1c(a0)
	bcs.s loc_01310a
	move.w #$cc0,$1c(a0)
loc_01310a:
	cmpi.w #$340,$20(a0)
	bcc.s loc_013118
	move.w #$340,$20(a0)
loc_013118:
	cmpi.w #$cc0,$20(a0)
	bcs.s loc_013126
	move.w #$cc0,$20(a0)
loc_013126:
	lea (dat_03e400).l,a1
	move.w $1c(a0),$0(a1)
	move.w $20(a0),$2(a1)
	move.w $24(a0),$4(a1)
	move.w $50(a0),$6(a1)
	move.w $54(a0),$c(a1)
	cmpi.b #$7,$3(a0)
	beq.s loc_013162
	cmpi.b #$13,$3(a0)
	beq.s loc_013162
	bsr.w sub_013a38
	bsr.w sub_013a9e
loc_013162:
	bsr.w sub_01053e
	bsr.w sub_013b36
	move.b #$0,$4f(a0)
	rts
	move.w #$85e0,$4(a0)
	move.l #$39958,$6(a0)
	move.w #$100,$28(a0)
	move.w #$158,$2c(a0)
	moveq #$9,d0
	bsr.w sub_0104f6
	move.b #$14,$3(a0)
	move.w #$0,$14(a0)
	bsr.w sub_0134f8
	move.w #$160,$24(a0)
	move.w #$80,$50(a0)
	rts
	moveq #$2c,d0
	bsr.w sub_0104f6
	move.b #$16,$3(a0)
	move.b #$5,$61(a0)
	rts
	subq.b #$1,$61(a0)
	bne.s loc_0131d6
	moveq #$a,d0
	bsr.w sub_0104f6
	move.b #$17,$3(a0)
loc_0131d6:
	rts
	rts
	bsr.w sub_0138b6
	bsr.w sub_013872
	bsr.w sub_013546
	rts
	move.l $2c(a0),d0
	add.l $40(a0),d0
	move.l d0,$2c(a0)
	addi.l #$a000,$40(a0)
	tst.w (dat_03e31c).l
	beq.s loc_013226
	addi.l #$a000,$40(a0)
	subq.w #$1,(dat_03e31c).l
	move.b (dat_03e31e).l,d0
	andi.b #$70,d0
	beq.s loc_013226
	subi.l #$a000,$40(a0)
loc_013226:
	cmpi.w #$158,$2c(a0)
	bcs.s loc_013250
	move.b #$1,$3(a0)
	move.l #$1580000,$2c(a0)
	move.l #$0,$40(a0)
	bclr.b #$7,$2(a0)
	move.w #$160,$24(a0)
loc_013250:
	bsr.w sub_0138b6
	move.w #$158,d0
	sub.w $2c(a0),d0
	lsl.w #$2,d0
	addi.w #$160,d0
	move.w d0,$24(a0)
	rts
	.incbin 12904, 168
	subq.b #$1,$61(a0)
	bne.s loc_013322
	move.b #$1,$3(a0)
	moveq #$0,d0
	bsr.w sub_0104f6
loc_013322:
	rts
	.incbin 13092, 468

sub_0134f8:
	moveq #$0,d0
	move.b ($8023).w,d0
	mulu.w #$6,d0
	move.w dat_013516(pc,d0.w),$1c(a0)
	move.w dat_013518(pc,d0.w),$20(a0)
	move.w dat_01351a(pc,d0.w),$54(a0)
	rts
dat_013516:
	dc.b $05,$40
dat_013518:
	dc.b $05,$20
dat_01351a:
	.incbin 13594, 44

sub_013546:
	tst.b ($802b).w
	bne.s loc_01356c
	move.b #$8,(dat_03c003).l
	lea (dat_03d380).l,a6
	bsr.s sub_013562
	lea (dat_03d780).l,a6

sub_013562:
	tst.b (a6)
	beq.s loc_01356c
	bset.b #$0,$2(a6)
loc_01356c:
	rts

sub_01356e:
	bsr.w sub_01377c
	tst.b ($802b).w
	beq.s loc_0135a4
	move.b $e(a0),d0
	cmpi.b #$a,d0
	bcs.s loc_013584
	moveq #$0,d0
loc_013584:
	ext.w d0
	add.w d0,d0
	move.w dat_013590(pc,d0.w),d0
	jmp dat_013590(pc,d0.w)
dat_013590:
	.incbin 13712, 20
loc_0135a4:
	rts
	.incbin 13734, 34
	tst.b (dat_03e319).l
	bne.s loc_0135e6
	move.b #$8,(dat_03c100).l
	btst.b #$1,($801b).w
	beq.s loc_0135e6
	move.w #$500,$18(a0)
loc_0135e6:
	rts
	.incbin 13800, 68
	cmpi.b #$4,$3(a0)
	beq.w loc_0136c0
	cmpi.b #$7,$3(a0)
	beq.w loc_0136c0
	move.b #$2e,$61(a0)
	move.b #$7,$3(a0)
	moveq #$d,d0
	bsr.w sub_0104f6
	move.w ($8024).w,d0
	move.w d0,d1
	lsr.w #$1,d0
	move.w d0,($8024).w
	sub.w d0,d1
	tst.w d1
	beq.s loc_0136c0
	cmpi.w #$1,d1
	beq.s loc_0136b8
	cmpi.w #$2,d1
	beq.s loc_0136b0
	cmpi.w #$3,d1
	beq.s loc_0136a8
	cmpi.w #$4,d1
	beq.s loc_0136a0
	cmpi.w #$5,d1
	beq.s loc_013698
	cmpi.w #$6,d1
	beq.s loc_013690
	move.b #$d,(dat_03c880).l
loc_013690:
	move.b #$d,(dat_03c900).l
loc_013698:
	move.b #$d,(dat_03c980).l
loc_0136a0:
	move.b #$d,(dat_03ca00).l
loc_0136a8:
	move.b #$d,(dat_03ca80).l
loc_0136b0:
	move.b #$d,(dat_03cb00).l
loc_0136b8:
	move.b #$d,(dat_03cb80).l
loc_0136c0:
	rts
	.incbin 14018, 186

sub_01377c:
	moveq #$0,d1
	move.w $14(a0),d1
	lsl.l #$8,d1
	addi.l #$20000,d1
	move.l d1,d2
	neg.l d2
	moveq #$0,d3
	moveq #$0,d0
	cmpi.b #$1,$f(a0)
	bne.s loc_01379e
	bset.l #$0,d0
loc_01379e:
	cmpi.b #$1,$10(a0)
	bne.s loc_0137aa
	bset.l #$1,d0
loc_0137aa:
	cmpi.b #$1,$11(a0)
	bne.s loc_0137b6
	bset.l #$2,d0
loc_0137b6:
	cmpi.b #$1,$12(a0)
	bne.s loc_0137c2
	bset.l #$3,d0
loc_0137c2:
	add.w d0,d0
	move.w dat_0137cc(pc,d0.w),d0
	jmp dat_0137cc(pc,d0.w)
dat_0137cc:
	.incbin 14284, 142
	rts
	.incbin 14428, 22

sub_013872:
	tst.b (dat_03e318).l
	bne.s loc_0138b4
	move.b (dat_03e31f).l,d0
	andi.b #$70,d0
	beq.s loc_0138b4
	move.b #$2,$3(a0)
	move.l #$fff80000,$40(a0)
	move.w #$14,(dat_03e31c).l
	bset.b #$7,$2(a0)
	move.w #$0,$16(a0)
	move.b #$92,d0
	bsr.w sub_012c08
	bsr.w sub_013c16
loc_0138b4:
	rts

sub_0138b6:
	tst.b (dat_03e318).l
	bne.s loc_013900
	move.l #$60000,d0
	btst.b #$3,(dat_03e31e).l
	beq.s loc_0138e2
	sub.l d0,$54(a0)
	andi.l #$1ffffff,$54(a0)
	bset.b #$3,($9c285).l
loc_0138e2:
	btst.b #$2,(dat_03e31e).l
	beq.s loc_013900
	add.l d0,$54(a0)
	andi.l #$1ffffff,$54(a0)
	bset.b #$2,($9c285).l
loc_013900:
	rts
	.incbin 14594, 68

sub_013946:
	tst.b (dat_03e318).l
	bne.s loc_0139a6
	move.b (dat_03e31e).l,d1
	andi.b #$f,d1
	cmpi.b #$2,d1
	beq.s loc_013992
	tst.w $62(a0)
	beq.s loc_01396e
	subq.w #$1,$62(a0)
	move.w #$e00,d7
	bra.s loc_013980
loc_01396e:
	cmpi.b #$7,$3(a0)
	bne.s loc_01397c
	move.w #$200,d7
	bra.s loc_013980
loc_01397c:
	move.w $18(a0),d7
loc_013980:
	addi.w #$20,$14(a0)
	cmp.w $14(a0),d7
	bcc.s loc_0139a6
	move.w d7,$14(a0)
	rts
loc_013992:
	subi.w #$40,$14(a0)
	cmpi.w #$200,$14(a0)
	bge.s loc_0139a6
	move.w #$200,$14(a0)
loc_0139a6:
	rts

sub_0139a8:
	move.w $54(a0),d0
	addi.w #$180,d0
	andi.w #$1ff,d0
	move.w d0,d3
	bsr.w sub_012f2c
	muls.w $14(a0),d3
	add.l d3,$1c(a0)
	andi.l #$fffffff,$1c(a0)
	move.w d0,d3
	bsr.w sub_012f30
	muls.w $14(a0),d3
	add.l d3,$20(a0)
	andi.l #$fffffff,$20(a0)
	rts
	.incbin 14818, 86

sub_013a38:
	btst.b #$2,(dat_03e31e).l
	beq.s loc_013a50
	subq.b #$1,$60(a0)
	bpl.s loc_013a4e
	move.b #$0,$60(a0)
loc_013a4e:
	rts
loc_013a50:
	btst.b #$3,(dat_03e31e).l
	beq.s loc_013a6e
	addq.b #$1,$60(a0)
	cmpi.b #$a,$60(a0)
	bcs.s loc_013a6c
	move.b #$9,$60(a0)
loc_013a6c:
	rts
loc_013a6e:
	cmpi.b #$5,$60(a0)
	bcs.s loc_013a8a
	subq.b #$1,$60(a0)
	cmpi.b #$5,$60(a0)
	bcc.s loc_013a8a
	move.b #$5,$60(a0)
	rts
loc_013a8a:
	addq.b #$1,$60(a0)
	cmpi.b #$5,$60(a0)
	bls.s loc_013a8a
	move.b #$5,$60(a0)
	rts

sub_013a9e:
	tst.b (dat_03e318).l
	bne.w loc_013b20
	moveq #$6,d0
	btst.b #$7,$2(a0)
	bne.s loc_013afc
	moveq #$b,d0
	btst.b #$6,$2(a0)
	bne.s loc_013afc
	moveq #$a,d0
	move.w $14(a0),d1
	beq.s loc_013afc
	move.b $60(a0),d2
	add.w d2,d2
	andi.w #$1c,d2
	move.b dat_013b25(pc,d2.w),d0
	cmpi.w #$300,d1
	bcs.s loc_013b0e
	move.b dat_013b24(pc,d2.w),d0
	cmpi.w #$540,d1
	bcs.s loc_013b0e
	move.b dat_013b23(pc,d2.w),d0
	cmpi.w #$780,d1
	bcs.s loc_013b0e
	move.b dat_013b22(pc,d2.w),d0
	cmpi.w #$b00,d1
	bcs.s loc_013b0e
	move.b #$1,d0
	bra.s loc_013b02
loc_013afc:
	bclr.b #$4,$2(a0)
loc_013b02:
	cmp.b $a(a0),d0
	beq.s loc_013b20
	bsr.w sub_0104f6
	rts
loc_013b0e:
	bset.b #$4,$2(a0)
	beq.s loc_013b02
	cmp.b $a(a0),d0
	beq.s loc_013b20
	bsr.w sub_01051c
loc_013b20:
	rts
dat_013b22:
	dc.b $04
dat_013b23:
	dc.b $19
dat_013b24:
	dc.b $1a
dat_013b25:
	.incbin 15141, 17

sub_013b36:
	moveq #$0,d0
	move.b $1(a0),d0
	lea (dat_030000).l,a1
	add.w d0,d0
	add.w d0,d0
	movea.l $0(a1,d0.w),a1
	lea ($9c300).l,a2
	move.w #$17,d7
loc_013b54:
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	dbf d7,loc_013b54
	rts
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_013b8e(pc,d0.w),d0
	jsr dat_013b8e(pc,d0.w)
	bsr.w sub_01053e
	tst.b (dat_03e319).l
	beq.s loc_013b8c
	bset.b #$0,$2(a0)
loc_013b8c:
	rts
dat_013b8e:
	dc.b $00,$06,$00,$48,$00,$66
	move.w #$8582,$4(a0)
	move.l #$3a4ec,$6(a0)
	move.w #$100,$28(a0)
	move.w #$158,$2c(a0)
	moveq #$0,d0
	bsr.w sub_0104f6
	move.w #$e,$50(a0)
	addq.b #$1,$3(a0)
	move.b #$a2,d0
	bsr.w sub_012c08
	btst.b #$1,($801b).w
	bne.s loc_013bd6
	move.b #$a,(dat_03e316).l
loc_013bd6:
	subq.w #$1,$50(a0)
	bne.s loc_013bf2
	cmpi.b #$3,(dat_03c00e).l
	bne.s loc_013c0e
	moveq #$1,d0
	bsr.w sub_0104f6
	move.b #$2,$3(a0)
loc_013bf2:
	rts
	.incbin 15348, 26
loc_013c0e:
	bset.b #$0,$2(a0)
	rts

sub_013c16:
	tst.b (dat_03c100).l
	beq.s loc_013c26
	bset.b #$0,(dat_03c102).l
loc_013c26:
	rts
	.incbin 15400, 115672
dat_030000:
	.incbin 131072, 49152
dat_03c000:
	dc.b $ff,$ff,$ff
dat_03c003:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	dc.b $ff,$ff,$ff
dat_03c00e:
	.incbin 180238, 22
dat_03c024:
	dc.b $ff,$ff,$ff,$ff
dat_03c028:
	dc.b $ff,$ff,$ff,$ff
dat_03c02c:
	.incbin 180268, 84
dat_03c080:
	.incbin 180352, 128
dat_03c100:
	dc.b $ff,$ff
dat_03c102:
	.incbin 180482, 126
dat_03c180:
	.incbin 180608, 128
dat_03c200:
	.incbin 180736, 1536
dat_03c800:
	.incbin 182272, 128
dat_03c880:
	.incbin 182400, 128
dat_03c900:
	.incbin 182528, 128
dat_03c980:
	.incbin 182656, 128
dat_03ca00:
	.incbin 182784, 128
dat_03ca80:
	.incbin 182912, 128
dat_03cb00:
	.incbin 183040, 128
dat_03cb80:
	.incbin 183168, 128
dat_03cc00:
	.incbin 183296, 1024
dat_03d000:
	.incbin 184320, 896
dat_03d380:
	.incbin 185216, 128
dat_03d400:
	.incbin 185344, 896
dat_03d780:
	.incbin 186240, 128
dat_03d800:
	.incbin 186368, 2816
dat_03e300:
	dc.b $ff,$ff
dat_03e302:
	dc.b $ff,$ff,$ff,$ff
dat_03e306:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff
dat_03e30c:
	dc.b $ff,$ff,$ff,$ff
dat_03e310:
	dc.b $ff,$ff,$ff,$ff
dat_03e314:
	dc.b $ff
dat_03e315:
	dc.b $ff
dat_03e316:
	dc.b $ff
dat_03e317:
	dc.b $ff
dat_03e318:
	dc.b $ff
dat_03e319:
	dc.b $ff
dat_03e31a:
	dc.b $ff,$ff
dat_03e31c:
	dc.b $ff,$ff
dat_03e31e:
	dc.b $ff
dat_03e31f:
	dc.b $ff
dat_03e320:
	dc.b $ff,$ff
dat_03e322:
	dc.b $ff,$ff,$ff,$ff
dat_03e326:
	dc.b $ff,$ff
dat_03e328:
	dc.b $ff,$ff,$ff,$ff
dat_03e32c:
	dc.b $ff,$ff
dat_03e32e:
	dc.b $ff,$ff
dat_03e330:
	dc.b $ff,$ff
dat_03e332:
	.incbin 189234, 206
dat_03e400:
	.incbin 189440, 7168
dat_040000:
	.incbin 196608, 84576
dat_054a60:
	.incbin 281184, 46496
