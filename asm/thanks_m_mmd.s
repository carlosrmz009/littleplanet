; THANKS_M.MMD
; disassembled from the disc; code only, data comes from data/THANKS_M.MMD at build time
	.file "THANKS_M.MMD", 20126
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	dc.b $21,$fc,$00,$ff,$3a,$3a,$fd,$08
	moveq #$0,d0
	move.l d0,($a12010).l
	move.l d0,($a12014).l
	move.l d0,($a12018).l
	move.l d0,($a1201c).l
	move.b d0,($a1200e).l
	move.w d0,($ba5c).w
	bsr.w sub_ff22f4
	bsr.w sub_ff22ca
	bsr.w sub_ff2300
	lea ($9000).w,a0
	moveq #$0,d0
	move.w #$1aff,d7
loc_ff2042:
	move.l d0,(a0)+
	dbf d7,loc_ff2042
	move.w #$f000,($a1201e).l
	bsr.w sub_ff37a4
	bsr.w sub_ff230c
	bsr.w sub_ff2362
	move.l #$4030201,d0
	jsr (sub_ff3f4c).l
	moveq #$5,d0
	jsr (sub_ff3f4c).l
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	lea (dat_ff6d5e).l,a0
	move.w (a0),($ba46).w
	move.w #$0,($ba44).w
	move.w #$14,($ba76).w
	move.w #$1,($ba74).w
	move.w #$600,($ba78).w
	move.w #$1,($ba7e).w
	lea dat_ff38c8(pc),a0
	lea ($b680).w,a1
	moveq #$1f,d7
loc_ff20b4:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff20b4
loc_ff20ba:
	moveq #$0,d0
	move.w ($ba5c).w,d0
	add.w d0,d0
	lea (dat_ff20e6).l,a0
	move.w $0(a0,d0.w),d0
	jsr $0(a0,d0.w)
	tst.b ($ba40).w
	beq.s loc_ff20ba
	bsr.w sub_ff3ed2
	bsr.w sub_ff2234
	nop
	nop
	nop
	rts
dat_ff20e6:
	.incbin 486, 334

sub_ff2234:
	bset.b #$6,($a1200e).l
	bsr.w sub_ff22ca
	nop
	nop
	nop
loc_ff2246:
	btst.b #$6,($a1200f).l
	beq.s loc_ff2246
	bclr.b #$6,($a1200e).l
	nop
	nop
	nop
	rts
	.incbin 864, 106

sub_ff22ca:
	btst.b #$1,($a12003).l
	bne.s loc_ff22e6
loc_ff22d4:
	bset.b #$1,($a12003).l
	btst.b #$1,($a12003).l
	beq.s loc_ff22d4
loc_ff22e6:
	rts
	dc.b $08,$39,$00,$00,$00,$a1,$20,$03
	dc.b $67,$f6,$4e,$75

sub_ff22f4:
	btst.b #$7,($a1200f).l
	beq.s sub_ff22f4
	rts

sub_ff2300:
	btst.b #$7,($a1200f).l
	bne.s sub_ff2300
	rts

sub_ff230c:
	move.l #$40200000,($c00004).l
	lea ($210452).l,a0
	bsr.w sub_ff3f9c
	moveq #$0,d0
	jsr sub_ff40e4(pc)
	rts
	.incbin 1064, 58

sub_ff2362:
	move.l #$53600000,($c00004).l
	lea ($210aaa).l,a0
	bsr.w sub_ff3f9c
	moveq #$1,d0
	jsr sub_ff40e4(pc)
	rts
	.incbin 1150, 5158

sub_ff37a4:
	lea dat_ff3948(pc),a0
	move.w #$8000,d0
	moveq #$12,d7
loc_ff37ae:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff37ae
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bra.s loc_ff3814
	.incbin 6364, 56
loc_ff3814:
	bsr.w sub_ff395c
	lea ($c00004).l,a6
	move.w #$8f01,(a6)
	move.l #$93ff94ff,(a6)
	move.w #$9780,(a6)
	move.l #$40000080,(a6)
	move.w #$0,($c00000).l
loc_ff383a:
	btst.b #$1,$1(a6)
	bne.s loc_ff383a
	move.l #$40000000,(a6)
	move.w #$0,($c00000).l
	move.w #$8f02,(a6)
	nop
	move.l #$40000003,($c00004).l
	move.w #$7ff,d7
loc_ff3864:
	move.w #$6ff,($c00000).l
	dbf d7,loc_ff3864
	move.l #$60000003,($c00004).l
	move.w #$7ff,d7
loc_ff387e:
	move.w #$6ff,($c00000).l
	dbf d7,loc_ff387e
	move.l #$c0000000,($c00004).l
	lea dat_ff38c8(pc),a0
	moveq #$0,d0
	moveq #$1f,d7
loc_ff389c:
	move.l d0,($c00000).l
	dbf d7,loc_ff389c
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff3974
	move.w #$8134,($ff0f16).l
	rts
dat_ff38c8:
	.incbin 6600, 128
dat_ff3948:
	.incbin 6728, 20

sub_ff395c:
	move.w sr,($ba50).w
	move.w #$100,($a11100).l
loc_ff3968:
	btst.b #$0,($a11100).l
	bne.s loc_ff3968
	rts

sub_ff3974:
	move.w #$0,($a11100).l
	move.w ($ba50).w,sr
	rts
	.incbin 6786, 838

sub_ff3cc8:
	move.b #$1,($ba42).w
	move.w #$2500,sr
loc_ff3cd2:
	tst.b ($ba42).w
	bne.s loc_ff3cd2
	rts
	.incbin 7642, 504

sub_ff3ed2:
	move.w #$3f,($ba5a).w
	move.w #$15,d4
loc_ff3edc:
	move.b #$a,($ba42).w
	bsr.w sub_ff3cc8
	bsr.s sub_ff3eee
	dbf d4,loc_ff3edc
	rts

sub_ff3eee:
	moveq #$0,d0
	lea ($b600).w,a0
	move.b ($ba5a).w,d0
	adda.w d0,a0
	move.b ($ba5b).w,d0
loc_ff3efe:
	bsr.s sub_ff3f1c
	dbf d0,loc_ff3efe
	moveq #$0,d0
	lea ($b700).w,a0
	move.b ($ba5a).w,d0
	adda.w d0,a0
	move.b ($ba5b).w,d0
loc_ff3f14:
	bsr.s sub_ff3f1c
	dbf d0,loc_ff3f14
	rts

sub_ff3f1c:
	move.w (a0),d2
	beq.s loc_ff3f48
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_ff3f2c
	subq.w #$2,(a0)+
	rts
loc_ff3f2c:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_ff3f3a
	subi.w #$20,(a0)+
	rts
loc_ff3f3a:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_ff3f48
	subi.w #$200,(a0)+
	rts
loc_ff3f48:
	addq.w #$2,a0
	rts

sub_ff3f4c:
	lea ($c00004).l,a5
	moveq #$3,d2
loc_ff3f54:
	moveq #$0,d1
	move.b d0,d1
	beq.s loc_ff3f6c
	lsl.w #$3,d1
	lea dat_ff3f74(pc),a0
	move.l -$8(a0,d1.w),(a5)
	movea.l -$4(a0,d1.w),a0
	jsr sub_ff3f9c(pc)
loc_ff3f6c:
	ror.l #$8,d0
	dbf d2,loc_ff3f54
	rts
dat_ff3f74:
	.incbin 8308, 40

sub_ff3f9c:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff4066).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff3fb8
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $40,$7c
loc_ff3fb8:
	lea ($a600).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff3fc6
	adda.w #$a,a3
loc_ff3fc6:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff4092(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff3fee
	nop
	nop
	nop
	nop
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff3fee:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff403a
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff4016
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff4016:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff4024:
	lsr.w #$4,d0
loc_ff4026:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff4034
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff4034:
	dbf d0,loc_ff4026
	bra.s sub_ff3fee
loc_ff403a:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff4048
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff4048:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff4024
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff4024
dat_ff4066:
	.incbin 8550, 44

sub_ff4092:
	move.b (a0)+,d0
loc_ff4094:
	cmpi.b #$ff,d0
	bne.s loc_ff409c
	rts
loc_ff409c:
	move.w d0,d7
loc_ff409e:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff4094
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
	bne.s loc_ff40cc
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff409e
loc_ff40cc:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff40d8:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff40d8
	bra.s loc_ff409e

sub_ff40e4:
	andi.l #$ffff,d0
	mulu.w #$e,d0
	lea (dat_ff4130).l,a1
	adda.w d0,a1
	movea.l (a1)+,a0
	move.w (a1)+,d0
	move.l a1,-(a7)
	lea ($a800).w,a1
	bsr.w sub_ff414c
	movea.l (a7)+,a1
	move.w (a1)+,d3
	move.w (a1)+,d2
	move.l (a1),d0
	lea ($a800).w,a0
	movea.l #$c00000,a1
loc_ff4116:
	move.l d0,($c00004).l
	move.w d3,d1
loc_ff411e:
	move.w (a0)+,(a1)
	dbf d1,loc_ff411e
	addi.l #$800000,d0
	dbf d2,loc_ff4116
	rts
dat_ff4130:
	.incbin 8752, 28

sub_ff414c:
	nop
	nop
	movem.l d0-d7/a1-a5,-(a7)
	movea.w d0,a3
	move.b (a0)+,d0
	ext.w d0
	movea.w d0,a5
	move.b (a0)+,d4
	lsl.b #$3,d4
	movea.w (a0)+,a2
	adda.w a3,a2
	movea.w (a0)+,a4
	adda.w a3,a4
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	moveq #$10,d6
	moveq #$7,d0
	move.w d6,d7
	sub.w d0,d7
	move.w d5,d1
	lsr.w d7,d1
	andi.w #$7f,d1
	move.w d1,d2
	cmpi.w #$40,d1
	bcc.s loc_ff418a
	moveq #$6,d0
	lsr.w #$1,d2
loc_ff418a:
	bsr.w sub_ff42be
	andi.w #$f,d2
	lsr.w #$4,d1
	add.w d1,d1
	jmp dat_ff41e6(pc,d1.w)
	.incbin 8858, 76
dat_ff41e6:
	.incbin 8934, 216

sub_ff42be:
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff42cc
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff42cc:
	rts
	.incbin 9166, 10896
dat_ff6d5e:
	.incbin 20062, 64
