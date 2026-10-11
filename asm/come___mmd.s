; COME__.MMD
; disassembled from the disc; code only, data comes from data/COME__.MMD at build time
	.file "COME__.MMD", 8952
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	move.l #loc_ff20d4,($fd08).w
	bsr.w sub_ff217a
	lea ($8000).w,a0
	move.w #$1eff,d7
loc_ff2014:
	move.l #$0,(a0)+
	dbf d7,loc_ff2014
	lea dat_ff21a4(pc),a0
	bsr.w sub_ff3e16
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	move.l #$40000000,($c00004).l
	lea dat_ff21d8(pc),a0
	bsr.w sub_ff3e90
	lea dat_ff26dc(pc),a1
	move.l #$40000003,d0
	move.w #$1f,d1
	move.w #$1b,d2
	bsr.w sub_ff3c00
	lea dat_ff2ddc(pc),a1
	move.l #$40400003,d0
	move.w #$1f,d1
	move.w #$1b,d2
	bsr.w sub_ff3c00
	lea dat_ff34dc(pc),a1
	move.l #$40800003,d0
	move.w #$1f,d1
	move.w #$1b,d2
	bsr.w sub_ff3c00
	move.w #$3ff,($fa42).w
	lea dat_ff21b8(pc),a0
	lea ($f900).w,a1
	moveq #$7,d7
loc_ff209e:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff209e
	bset.b #$1,($ff0f00).l
	bsr.w sub_ff41b0
loc_ff20b0:
	bsr.w sub_ff41b0
	move.b ($a1201f).l,d0
	andi.w #$f0,d0
	bne.s loc_ff20c8
	tst.w ($fa42).w
	bne.w loc_ff20b0
loc_ff20c8:
	moveq #$e,d0
	bsr.w sub_ff41c8
	bsr.w sub_ff3c24
	rts
loc_ff20d4:
	movem.l d0-d7/a0-a6,-(a7)
	move.b #$1,($a12000).l
	bclr.b #$0,($ff0f00).l
	beq.w loc_ff2170
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	bsr.w sub_ff414e
	move.w ($c00004).l,d0
	bclr.b #$1,($ff0f00).l
	beq.s loc_ff2140
	lea ($c00004).l,a6
	move.l #$93409400,(a6)
	move.l #$958096fc,(a6)
	move.w #$977f,(a6)
	move.w #$c000,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$c0000000,(a6)
	move.w ($f900).w,($c00000).l
loc_ff2140:
	move.l #$64000002,($c00004).l
	move.w (dat_ff2176).l,($c00000).l
	jsr sub_ff4178(pc)
	bsr.w sub_ff416a
	tst.w ($fa42).w
	beq.s loc_ff216c
	subq.w #$1,(dat_ff2176).l
	subq.w #$1,($fa42).w
loc_ff216c:
	addq.w #$1,($fa44).w
loc_ff2170:
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_ff2176:
	dc.b $01,$40,$00,$00

sub_ff217a:
	btst.b #$1,($a12003).l
	bne.s loc_ff2196
	bset.b #$1,($a12003).l
loc_ff218c:
	btst.b #$1,($a12003).l
	beq.s loc_ff218c
loc_ff2196:
	rts
	dc.b $08,$39,$00,$00,$00,$a1,$20,$03
	dc.b $67,$f6,$4e,$75
dat_ff21a4:
	.incbin 676, 20
dat_ff21b8:
	.incbin 696, 32
dat_ff21d8:
	.incbin 728, 1284
dat_ff26dc:
	.incbin 2012, 1792
dat_ff2ddc:
	.incbin 3804, 1792
dat_ff34dc:
	.incbin 5596, 1828

sub_ff3c00:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$1000000,d4
loc_ff3c12:
	move.l d0,(a2)
	move.w d1,d3
loc_ff3c16:
	move.w (a1)+,(a3)
	dbf d3,loc_ff3c16
	add.l d4,d0
	dbf d2,loc_ff3c12
	rts

sub_ff3c24:
	move.b #$1,($fa00).w
	moveq #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff3c30:
	bsr.s sub_ff3c56
	addq.w #$2,d0
	dbf d6,loc_ff3c30
	moveq #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff3c3e:
	bsr.s sub_ff3c56
	addq.w #$2,d0
	dbf d6,loc_ff3c3e
	moveq #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff3c4c:
	bsr.s sub_ff3c56
	addq.w #$2,d0
	dbf d6,loc_ff3c4c
	rts

sub_ff3c56:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff3c5c:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	sub.w d0,d2
	bcc.s loc_ff3c72
	moveq #$0,d2
loc_ff3c72:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3c5c
	bset.b #$1,($ff0f00).l
	bra.w sub_ff41b0
	.incbin 7562, 396

sub_ff3e16:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff3e1c:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff3e1c
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff414e
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ff3e62:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ff3e62
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff416a
	move.w #$8134,($ff0f16).l
	rts

sub_ff3e90:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff3f52).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff3eac
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $3f,$68
loc_ff3eac:
	lea ($c000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff3eba
	adda.w #$a,a3
loc_ff3eba:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff3f7e(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff3eda
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff3eda:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff3f26
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3f02
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3f02:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff3f10:
	lsr.w #$4,d0
loc_ff3f12:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff3f20
	jmp (a3)
loc_ff3f1c:
	moveq #$0,d4
	moveq #$8,d3
loc_ff3f20:
	dbf d0,loc_ff3f12
	bra.s sub_ff3eda
loc_ff3f26:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3f34
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3f34:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff3f10
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff3f10
dat_ff3f52:
	dc.b $28,$84,$53,$4d,$38,$0d,$66,$c2
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s loc_ff3f1c
	rts
	.incbin 8296, 22

sub_ff3f7e:
	move.b (a0)+,d0
loc_ff3f80:
	cmpi.b #$ff,d0
	bne.s loc_ff3f88
	rts
loc_ff3f88:
	move.w d0,d7
loc_ff3f8a:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff3f80
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
	bne.s loc_ff3fb8
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff3f8a
loc_ff3fb8:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff3fc4:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff3fc4
	bra.s loc_ff3f8a
	.incbin 8400, 382

sub_ff414e:
	move.w sr,($fa46).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff415e:
	btst.b #$0,($a11100).l
	bne.s loc_ff415e
	rts

sub_ff416a:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts

sub_ff4178:
	lea ($a1201e).l,a5
	lea ($a10003).l,a6
	move.b #$0,(a6)
	tst.w (a5)
	move.b (a6),d0
	lsl.b #$2,d0
	andi.b #$c0,d0
	move.b #$40,(a6)
	tst.w (a5)
	move.b (a6),d1
	andi.b #$3f,d1
	or.b d1,d0
	not.b d0
	move.b d0,d1
	move.b (a5),d2
	eor.b d2,d0
	move.b d1,(a5)+
	and.b d1,d0
	move.b d0,(a5)+
	rts

sub_ff41b0:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff41bc:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff41bc
	rts

sub_ff41c8:
	move.w d0,($a12010).l
loc_ff41ce:
	move.w ($a12020).l,d0
	beq.s loc_ff41ce
	cmp.w ($a12020).l,d0
	bne.s loc_ff41ce
	move.w #$0,($a12010).l
loc_ff41e6:
	move.w ($a12020).l,d0
	bne.s loc_ff41e6
	move.w ($a12020).l,d0
	bne.s loc_ff41e6
	rts
