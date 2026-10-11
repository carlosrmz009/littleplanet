; PLANET_S.BIN
; disassembled from the disc; code only, data comes from data/PLANET_S.BIN at build time
	.file "PLANET_S.BIN", 39728

	.org 0, $010000		; sub CPU
	dc.b $21,$fc,$00,$01,$02,$10,$5f,$78
	move.b #$0,($8003).w
	moveq #$0,d0
	move.l d0,($8020).w
	move.l d0,($8024).w
	move.l d0,($8028).w
	move.l d0,($802c).w
	bclr.b #$3,($800f).w
	bclr.b #$4,($800f).w
	bclr.b #$5,($800f).w
	bclr.b #$6,($800f).w
	bset.b #$7,($800f).w
	bclr.b #$1,($8033).w
	bclr.b #$3,($8033).w
	move.b #$3,($8004).w
	bsr.w sub_010166
	bsr.w sub_0104c6
	bsr.w sub_0101c8
	bset.b #$1,($8033).w
	bclr.b #$7,($800f).w
loc_010068:
	move.w ($8012).w,d0
	beq.s loc_010068
	move.w ($8012).w,($8022).w
loc_010074:
	tst.w ($8012).w
	bne.s loc_010074
	move.w #$0,($8022).w
	bsr.w sub_0106a0
	btst.b #$4,($800f).w
	beq.s loc_01009e
	bsr.w sub_010292
	bsr.w sub_01091e
	bsr.w sub_0100ec
	bclr.b #$4,($800f).w
loc_01009e:
	bsr.w sub_010480
	bsr.w sub_01027a
	btst.b #$5,($800e).w
	beq.s loc_0100c8
	bset.b #$5,($800f).w
loc_0100b4:
	btst.b #$5,($800e).w
	bne.s loc_0100b4
	bclr.b #$5,($800f).w
	bset.b #$4,($800f).w
loc_0100c8:
	btst.b #$6,($800f).w
	beq.s loc_010068
loc_0100d0:
	btst.b #$6,($800e).w
	beq.s loc_0100d0
	bclr.b #$6,($800f).w
	move.b #$0,($800f).w
	nop
	nop
	nop
	rts

sub_0100ec:
	move.w ($801a).w,d0
	move.w ($801a).w,d0
	cmpi.w #$3,d0
	beq.s loc_010164
	lea dat_010aac(pc),a1
	move.w ($801a).w,d0
	add.w d0,d0
	add.w d0,d0
	move.w d0,d1
	add.w d0,d0
	add.w d1,d0
	lea $0(a1,d0.w),a0
	movea.l (a0),a0
	movem.l d0/a1,-(a7)
	lea ($80200).l,a1
	bsr.w sub_0103e0
	movem.l (a7)+,d0/a1
	lea $4(a1,d0.w),a0
	movea.l (a0),a0
	movem.l d0/a1,-(a7)
	lea ($86e00).l,a1
	bsr.w sub_0103e0
	movem.l (a7)+,d0/a1
	lea $8(a1,d0.w),a0
	movea.l (a0),a0
	lea ($a0000).l,a1
	movea.l a1,a2
	move.w #$6,d0
loc_01014e:
	move.w #$7,d1
	movea.l a2,a1
loc_010154:
	move.w (a0)+,(a1)+
	dbf d1,loc_010154
	adda.l #$100,a2
	dbf d0,loc_01014e
loc_010164:
	rts

sub_010166:
	lea ($1c000).l,a0
	move.w #$7ff,d7
loc_010170:
	move.l #$0,(a0)+
	dbf d7,loc_010170
	bsr.w sub_010292
	lea ($80000).l,a0
	move.w #$257f,d7
loc_010188:
	move.l #$0,(a0)+
	move.l #$0,(a0)+
	dbf d7,loc_010188
	lea ($99a00).l,a0
	move.w #$4cbf,d7
loc_0101a2:
	move.l #$0,(a0)+
	move.l #$0,(a0)+
	dbf d7,loc_0101a2
	lea ($b0000).l,a0
	move.w #$1fff,d7
loc_0101bc:
	move.l #$1080108,(a0)+
	dbf d7,loc_0101bc
	rts

sub_0101c8:
	lea dat_010ad0(pc),a0
	lea ($80200).l,a1
	bsr.w sub_0103e0
	lea (dat_018c60).l,a0
	lea ($86e00).l,a1
	bsr.w sub_0103e0
	lea (dat_018b10).l,a0
	lea ($a0000).l,a1
	movea.l a1,a2
	move.w #$6,d0
loc_0101f8:
	move.w #$7,d1
	movea.l a2,a1
loc_0101fe:
	move.w (a0)+,(a1)+
	dbf d1,loc_0101fe
	adda.l #$100,a2
	dbf d0,loc_0101f8
	rts
	.incbin 528, 76
loc_01025c:
	move.b #$1,($1c800).l
	move.w #$2000,sr
loc_010268:
	tst.b ($1c800).l
	bne.s loc_010268
	rts
	dc.b $4a,$78,$80,$12,$66,$fa,$4e,$75

sub_01027a:
	btst.b #$0,($8003).w
	bne.s loc_010290
	bset.b #$0,($8003).w
	btst.b #$0,($8003).w
	beq.s sub_01027a
loc_010290:
	rts

sub_010292:
	btst.b #$1,($8003).w
	beq.s sub_010292
	rts
	.incbin 668, 28

sub_0102b8:
	addi.w #$80,d3

sub_0102bc:
	andi.w #$1ff,d3
	move.w d3,d4
	btst.l #$7,d3
	beq.s loc_0102ca
	not.w d4
loc_0102ca:
	andi.w #$7f,d4
	add.w d4,d4
	move.w dat_0102e0(pc,d4.w),d4
	btst.l #$8,d3
	beq.s loc_0102dc
	neg.w d4
loc_0102dc:
	move.w d4,d3
	rts
dat_0102e0:
	.incbin 736, 256

sub_0103e0:
	subq.l #$2,a7
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_0103ec:
	lsr.w #$1,d5
	move.w sr,d6
	dbf d4,loc_0103fe
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_0103fe:
	move.w d6,ccr
	bcc.s loc_010406
	move.b (a0)+,(a1)+
	bra.s loc_0103ec
loc_010406:
	moveq #$0,d3
	lsr.w #$1,d5
	move.w sr,d6
	dbf d4,loc_01041a
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_01041a:
	move.w d6,ccr
	bcs.s loc_01044a
	lsr.w #$1,d5
	dbf d4,loc_01042e
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_01042e:
	roxl.w #$1,d3
	lsr.w #$1,d5
	dbf d4,loc_010440
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_010440:
	roxl.w #$1,d3
	addq.w #$1,d3
	moveq #$ffffffff,d2
	move.b (a0)+,d2
	bra.s loc_010460
loc_01044a:
	move.b (a0)+,d0
	move.b (a0)+,d1
	moveq #$ffffffff,d2
	move.b d1,d2
	lsl.w #$5,d2
	move.b d0,d2
	andi.w #$7,d1
	beq.s loc_01046c
	move.b d1,d3
	addq.w #$1,d3
loc_010460:
	move.b $0(a1,d2.w),d0
	move.b d0,(a1)+
	dbf d3,loc_010460
	bra.s loc_0103ec
loc_01046c:
	move.b (a0)+,d1
	beq.s loc_01047c
	cmpi.b #$1,d1
	beq.w loc_0103ec
	move.b d1,d3
	bra.s loc_010460
loc_01047c:
	addq.l #$2,a7
	rts

sub_010480:
	lea ($1cb00).l,a6
	move.w ($1ca10).l,$6(a6)
	move.w ($1ca14).l,$0(a6)
	move.w ($1ca18).l,$2(a6)
	move.w ($1ca1c).l,$4(a6)
	bsr.w sub_0104e6
	andi.b #$e7,($8003).w
	move.w #$8000,($805a).w
	move.w #$b0,($8064).w
	move.w #$6680,($8066).w
	bra.w loc_01025c

sub_0104c6:
	move.w #$6,($8058).w
	move.w #$15,($805c).w
	move.w #$6800,($805e).w
	move.w #$0,($8060).w
	move.w #$100,($8062).w
	rts

sub_0104e6:
	lea ($99a00).l,a1
	lea ($1c900).l,a2
	move.w #$80,$a(a2)
	move.w #$70,$c(a2)
	move.w #$80,$4(a2)
	move.w #$70,$6(a2)
	moveq #$0,d0
	move.w $4(a6),d0
	addi.w #$80,d0
	ext.l d0
	asl.l #$8,d0
	divs.w #$80,d0
	move.w d0,$8(a2)
	moveq #$0,d0
	move.w $4(a6),d0
	addi.w #$80,d0
	ext.l d0
	move.l #$8000,d1
	divs.w d0,d1
	move.w d0,$1e(a2)
	move.w $6(a6),d3
	bsr.w sub_0102b8
	move.w d3,$2(a2)
	move.w $6(a6),d3
	bsr.w sub_0102bc
	move.w d3,$0(a2)
	move.w $2(a2),d0
	move.w $8(a2),d1
	muls.w d1,d0
	asr.l #$5,d0
	move.w d0,$e(a2)
	move.w $0(a2),d0
	move.w $8(a2),d1
	muls.w d1,d0
	asr.l #$5,d0
	move.w d0,$10(a2)
	move.w $0(a6),d0
	sub.w $4(a2),d0
	move.w d0,$12(a2)
	move.w $2(a6),d0
	sub.w $6(a2),d0
	move.w d0,$14(a2)
	addi.w #$58,$14(a2)
	bsr.w sub_010610
	asr.l #$3,d0
	move.w d0,$16(a2)
	bsr.w sub_010658
	asr.l #$3,d0
	move.w d0,$1a(a2)
	move.w $2(a2),d0
	muls.w #$80,d0
	asr.l #$8,d0
	move.w $16(a2),d1
	add.w d1,d0
	move.w d0,$a(a2)
	move.w $0(a2),d0
	muls.w #$80,d0
	asr.l #$8,d0
	move.w $1a(a2),d1
	add.w d1,d0
	move.w d0,$c(a2)
	move.w $0(a6),d0
	sub.w $4(a2),d0
	move.w d0,$12(a2)
	move.w $2(a6),d0
	sub.w $6(a2),d0
	move.w d0,$14(a2)
	move.w #$af,d7
loc_0105e6:
	bsr.w sub_010610
	bsr.w sub_010636
	move.w d0,(a1)+
	bsr.w sub_010658
	bsr.w sub_01067e
	move.w d0,(a1)+
	move.w $e(a2),d0
	move.w d0,(a1)+
	move.w $10(a2),d0
	move.w d0,(a1)+
	addq.w #$1,$14(a2)
	dbf d7,loc_0105e6
	rts

sub_010610:
	move.w $12(a2),d0
	move.w $2(a2),d1
	muls.w d0,d1
	move.w $14(a2),d0
	move.w $0(a2),d2
	muls.w d0,d2
	sub.l d2,d1
	moveq #$0,d0
	move.w $4(a2),d0
	ext.l d0
	asl.l #$8,d0
	add.l d1,d0
	asr.l #$5,d0
	rts

sub_010636:
	move.w $8(a2),d2
	muls.w d2,d0
	asr.l #$8,d0
	move.w $a(a2),d1
	move.w $8(a2),d2
	muls.w d1,d2
	move.w $a(a2),d1
	ext.l d1
	asl.l #$8,d1
	sub.l d2,d1
	asr.l #$5,d1
	add.l d1,d0
	rts

sub_010658:
	move.w $12(a2),d0
	move.w $0(a2),d1
	muls.w d0,d1
	move.w $14(a2),d0
	move.w $2(a2),d2
	muls.w d0,d2
	add.l d1,d2
	moveq #$0,d0
	move.w $6(a2),d0
	ext.l d0
	asl.l #$8,d0
	add.l d2,d0
	asr.l #$5,d0
	rts

sub_01067e:
	move.w $8(a2),d2
	muls.w d2,d0
	asr.l #$8,d0
	move.w $c(a2),d1
	move.w $8(a2),d2
	muls.w d1,d2
	move.w $c(a2),d1
	ext.l d1
	asl.l #$8,d1
	sub.l d2,d1
	asr.l #$5,d1
	add.l d1,d0
	rts

sub_0106a0:
	lea ($1ca00).l,a0
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_0106b6(pc,d0.w),d0
	jmp dat_0106b6(pc,d0.w)
dat_0106b6:
	.incbin 1718, 616

sub_01091e:
	move.w ($8018).w,d0
	move.w ($8018).w,d0
	add.w d0,d0
	move.w dat_010932(pc,d0.w),d0
	jsr dat_010932(pc,d0.w)
	rts
dat_010932:
	.incbin 2354, 378
dat_010aac:
	.incbin 2732, 36
dat_010ad0:
	.incbin 2768, 32832
dat_018b10:
	.incbin 35600, 336
dat_018c60:
	.incbin 35936, 3792
