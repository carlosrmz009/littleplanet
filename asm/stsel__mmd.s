; STSEL_.MMD
; disassembled from the disc; code only, data comes from data/STSEL_.MMD at build time
	.file "STSEL_.MMD", 12544
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	move.l #loc_ff27f8,($fd08).w
	lea ($8000).w,a0
	move.w #$1eff,d7
loc_ff2010:
	move.l #$0,(a0)+
	dbf d7,loc_ff2010
	lea dat_ff2870(pc),a0
	bsr.w sub_ff3a0a
	move.l #$74000003,($c00004).l
	move.l #$0,($c00000).l
	move.l #$40000000,($c00004).l
	lea dat_ff2904(pc),a0
	bsr.w sub_ff3a84
	lea dat_ff2ed8(pc),a1
	move.l #$60000003,d0
	moveq #$27,d1
	moveq #$1b,d2
	bsr.w sub_ff3798
	lea dat_ff2204(pc),a0
	move.w #$0,d0
	bsr.w sub_ff214a
	lea dat_ff2884(pc),a0
	lea ($f900).w,a1
	moveq #$1f,d7
loc_ff2070:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff2070
	bset.b #$1,($ff0f00).l
	bsr.w sub_ff3846
	bsr.w sub_ff3da4
	bsr.w sub_ff3864
loc_ff208a:
	addq.w #$1,(dat_ff2100).l
	lea dat_ff2102(pc),a1
	moveq #$0,d6
	moveq #$49,d7
	move.w (dat_ff2100).l,d0
	andi.w #$7,d0
	bne.s loc_ff20c0
	btst.b #$0,($a1201e).l
	beq.s loc_ff20b2
	bsr.w sub_ff39d2
loc_ff20b2:
	btst.b #$1,($a1201e).l
	beq.s loc_ff20c0
	bsr.w sub_ff39e0
loc_ff20c0:
	lea dat_ff21f6(pc),a0
	move.w #$0,d0
	bsr.w sub_ff214a
	move.w (a1),d0
	mulu.w #$e,d0
	lea dat_ff2212(pc),a0
	lea $0(a0,d0.w),a0
	move.w #$6000,d0
	bsr.w sub_ff214a
	bsr.w sub_ff3da4
	move.b ($a1201e).l,d0
	andi.b #$f0,d0
	beq.w loc_ff208a
	bsr.w sub_ff37e0
	move.w (dat_ff2102).l,d0
	rts
dat_ff2100:
	dc.b $00,$00
dat_ff2102:
	.incbin 514, 72

sub_ff214a:
	movem.l d0-d7/a0-a6,-(a7)
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.w (a0)+,d7
loc_ff215c:
	movea.l (a0)+,a1
	move.l (a0)+,d3
	move.l (a0)+,d4
loc_ff2162:
	moveq #$0,d1
	move.b (a1)+,d1
	cmpi.b #$ff,d1
	beq.s loc_ff2192
	move.l d3,(a2)
	moveq #$0,d2
	move.b dat_ff219c(pc,d1.w),d2
	add.w d0,d2
	move.w d2,(a3)
	move.l d4,(a2)
	moveq #$0,d2
	move.b dat_ff21c9(pc,d1.w),d2
	add.w d0,d2
	move.w d2,(a3)
	addi.l #$20000,d3
	addi.l #$20000,d4
	bra.s loc_ff2162
loc_ff2192:
	dbf d7,loc_ff215c
	movem.l (a7)+,d0-d7/a0-a6
	rts
dat_ff219c:
	.incbin 668, 45
dat_ff21c9:
	.incbin 713, 45
dat_ff21f6:
	dc.b $00,$00,$00,$ff,$27,$df,$46,$9c
	dc.b $00,$03,$47,$1c,$00,$03
dat_ff2204:
	dc.b $00,$00,$00,$ff,$27,$ea,$44,$9c
	dc.b $00,$03,$45,$1c,$00,$03
dat_ff2212:
	.incbin 786, 1510
loc_ff27f8:
	movem.l d0-d7/a0-a6,-(a7)
	move.b #$1,($a12000).l
	bclr.b #$0,($ff0f00).l
	beq.s loc_ff286a
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	bsr.w sub_ff3d42
	move.w ($c00004).l,d0
	bclr.b #$1,($ff0f00).l
	beq.s loc_ff2862
	lea ($c00004).l,a6
	move.l #$93409400,(a6)
	move.l #$958096fc,(a6)
	move.w #$977f,(a6)
	move.w #$c000,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$c0000000,(a6)
	move.w ($f900).w,($c00000).l
loc_ff2862:
	jsr sub_ff3d6c(pc)
	bsr.w sub_ff3d5e
loc_ff286a:
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_ff2870:
	.incbin 2416, 20
dat_ff2884:
	.incbin 2436, 128
dat_ff2904:
	.incbin 2564, 1492
dat_ff2ed8:
	.incbin 4056, 2240

sub_ff3798:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$800000,d4
loc_ff37aa:
	move.l d0,(a2)
	move.w d1,d3
loc_ff37ae:
	move.w (a1)+,(a3)
	dbf d3,loc_ff37ae
	add.l d4,d0
	dbf d2,loc_ff37aa
	rts
	.incbin 6332, 36

sub_ff37e0:
	move.b #$1,($fa00).w
	moveq #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff37ec:
	bsr.s sub_ff3812
	addq.w #$2,d0
	dbf d6,loc_ff37ec
	moveq #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff37fa:
	bsr.s sub_ff3812
	addq.w #$2,d0
	dbf d6,loc_ff37fa
	moveq #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff3808:
	bsr.s sub_ff3812
	addq.w #$2,d0
	dbf d6,loc_ff3808
	rts

sub_ff3812:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff3818:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	sub.w d0,d2
	bcc.s loc_ff382e
	moveq #$0,d2
loc_ff382e:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3818
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3da4

sub_ff3846:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$0,d1
	moveq #$1f,d7
loc_ff3852:
	move.l (a1),(a2)+
	move.l d1,(a1)+
	dbf d7,loc_ff3852
	bset.b #$1,($ff0f00).l
	rts

sub_ff3864:
	move.w #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff386c:
	bsr.w sub_ff38a2
	addq.w #$2,d0
	dbf d6,loc_ff386c
	move.w #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff387e:
	bsr.w sub_ff38a2
	addq.w #$2,d0
	dbf d6,loc_ff387e
	move.w #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff3890:
	bsr.w sub_ff38a2
	addq.w #$2,d0
	dbf d6,loc_ff3890
	move.b #$0,($fa00).w
	rts

sub_ff38a2:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$3f,d7
loc_ff38ac:
	move.w (a2)+,d2
	move.w (a1),d3
	rol.w #$1,d2
	rol.w #$1,d3
	ror.w d1,d2
	ror.w d1,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	cmp.w d0,d2
	bls.s loc_ff38c6
	move.w d0,d2
loc_ff38c6:
	or.w d3,d2
	rol.w d1,d2
	ror.w #$1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff38ac
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3da4
	.incbin 6622, 244

sub_ff39d2:
	move.w (a1),d0
	subq.w #$1,d0
	cmp.w d6,d0
	bge.s loc_ff39dc
	move.w d7,d0
loc_ff39dc:
	move.w d0,(a1)
	rts

sub_ff39e0:
	move.w (a1),d0
	addq.w #$1,d0
	cmp.w d7,d0
	bls.s loc_ff39ea
	move.w d6,d0
loc_ff39ea:
	move.w d0,(a1)
	rts
	.incbin 6894, 28

sub_ff3a0a:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff3a10:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff3a10
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff3d42
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ff3a56:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ff3a56
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff3d5e
	move.w #$8134,($ff0f16).l
	rts

sub_ff3a84:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff3b46).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff3aa0
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $3b,$5c
loc_ff3aa0:
	lea ($c000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff3aae
	adda.w #$a,a3
loc_ff3aae:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff3b72(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff3ace
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff3ace:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff3b1a
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3af6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3af6:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff3b04:
	lsr.w #$4,d0
loc_ff3b06:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff3b14
	jmp (a3)
loc_ff3b10:
	moveq #$0,d4
	moveq #$8,d3
loc_ff3b14:
	dbf d0,loc_ff3b06
	bra.s sub_ff3ace
loc_ff3b1a:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3b28
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3b28:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff3b04
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff3b04
dat_ff3b46:
	dc.b $28,$84,$53,$4d,$38,$0d,$66,$c2
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s loc_ff3b10
	rts
	.incbin 7260, 22

sub_ff3b72:
	move.b (a0)+,d0
loc_ff3b74:
	cmpi.b #$ff,d0
	bne.s loc_ff3b7c
	rts
loc_ff3b7c:
	move.w d0,d7
loc_ff3b7e:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff3b74
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
	bne.s loc_ff3bac
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff3b7e
loc_ff3bac:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff3bb8:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff3bb8
	bra.s loc_ff3b7e
	.incbin 7364, 382

sub_ff3d42:
	move.w sr,($fa46).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff3d52:
	btst.b #$0,($a11100).l
	bne.s loc_ff3d52
	rts

sub_ff3d5e:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts

sub_ff3d6c:
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

sub_ff3da4:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff3db0:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff3db0
	rts
	.incbin 7868, 4676
