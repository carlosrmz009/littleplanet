; DUMMY0.MMD
; disassembled from the disc; code only, data comes from data/DUMMY0.MMD at build time
	.file "DUMMY0.MMD", 16640
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	dc.b $21,$fc,$00,$ff,$20,$98,$fd,$08
	dc.b $61,$00,$01,$06
	lea ($8000).w,a0
	move.w #$1eff,d7
loc_ff2014:
	move.l #$0,(a0)+
	dbf d7,loc_ff2014
	lea dat_ff212e(pc),a0
	bsr.w sub_ff48fc
	move.l #$74000003,($c00004).l
	move.l #$0,($c00000).l
	move.l #$40000000,($c00004).l
	lea dat_ff21c2(pc),a0
	bsr.w sub_ff4976
	lea dat_ff3dca(pc),a1
	move.l #$60000003,d0
	moveq #$27,d1
	moveq #$1b,d2
	bsr.w sub_ff468a
	lea dat_ff2142(pc),a0
	lea ($f900).w,a1
	moveq #$1f,d7
loc_ff2068:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff2068
	bset.b #$1,($ff0f00).l
	bsr.w sub_ff482e
	bsr.w sub_ff4c96
	bsr.w sub_ff4850
loc_ff2082:
	bsr.w sub_ff4c96
	btst.b #$7,($a1201e).l
	beq.w loc_ff2082
	bsr.w sub_ff46d2
	rts
	.incbin 408, 150
dat_ff212e:
	.incbin 558, 20
dat_ff2142:
	.incbin 578, 128
dat_ff21c2:
	.incbin 706, 7176
dat_ff3dca:
	.incbin 7882, 2240

sub_ff468a:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$800000,d4
loc_ff469c:
	move.l d0,(a2)
	move.w d1,d3
loc_ff46a0:
	move.w (a1)+,(a3)
	dbf d3,loc_ff46a0
	add.l d4,d0
	dbf d2,loc_ff469c
	rts
	.incbin 10158, 36

sub_ff46d2:
	move.b #$1,($fa00).w
	moveq #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff46de:
	bsr.s sub_ff4704
	addq.w #$2,d0
	dbf d6,loc_ff46de
	moveq #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff46ec:
	bsr.s sub_ff4704
	addq.w #$2,d0
	dbf d6,loc_ff46ec
	moveq #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff46fa:
	bsr.s sub_ff4704
	addq.w #$2,d0
	dbf d6,loc_ff46fa
	rts

sub_ff4704:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff470a:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	sub.w d0,d2
	bcc.s loc_ff4720
	moveq #$0,d2
loc_ff4720:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff470a
	bset.b #$1,($ff0f00).l
	bra.w sub_ff4c96
	.incbin 10296, 246

sub_ff482e:
	lea ($f900).w,a1
	lea ($f980).w,a2
	move.l #$eee0eee,d1
	moveq #$1f,d7
loc_ff483e:
	move.l (a1),(a2)+
	move.l d1,(a1)+
	dbf d7,loc_ff483e
	bset.b #$1,($ff0f00).l
	rts

sub_ff4850:
	moveq #$7,d6
	moveq #$e,d0
	moveq #$1,d1
loc_ff4856:
	bsr.w sub_ff4888
	subq.w #$2,d0
	dbf d6,loc_ff4856
	moveq #$7,d6
	moveq #$e,d0
	moveq #$5,d1
loc_ff4866:
	bsr.w sub_ff4888
	subq.w #$2,d0
	dbf d6,loc_ff4866
	moveq #$7,d6
	moveq #$e,d0
	moveq #$9,d1
loc_ff4876:
	bsr.w sub_ff4888
	subq.w #$2,d0
	dbf d6,loc_ff4876
	move.b #$0,($fa00).w
	rts

sub_ff4888:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$3f,d7
loc_ff4892:
	move.w (a2)+,d2
	move.w (a1),d3
	rol.w #$1,d2
	rol.w #$1,d3
	ror.w d1,d2
	ror.w d1,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	cmp.w d0,d2
	bcc.s loc_ff48ac
	move.w d0,d2
loc_ff48ac:
	or.w d3,d2
	rol.w d1,d2
	ror.w #$1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff4892
	bset.b #$1,($ff0f00).l
	bra.w sub_ff4c96
	.incbin 10692, 56

sub_ff48fc:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff4902:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff4902
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff4c34
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ff4948:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ff4948
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff4c50
	move.w #$8134,($ff0f16).l
	rts

sub_ff4976:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff4a38).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff4992
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $4a,$4e
loc_ff4992:
	lea ($c000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff49a0
	adda.w #$a,a3
loc_ff49a0:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff4a64(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff49c0
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff49c0:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff4a0c
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff49e8
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff49e8:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff49f6:
	lsr.w #$4,d0
loc_ff49f8:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff4a06
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff4a06:
	dbf d0,loc_ff49f8
	bra.s sub_ff49c0
loc_ff4a0c:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff4a1a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff4a1a:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff49f6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff49f6
dat_ff4a38:
	.incbin 11064, 44

sub_ff4a64:
	move.b (a0)+,d0
loc_ff4a66:
	cmpi.b #$ff,d0
	bne.s loc_ff4a6e
	rts
loc_ff4a6e:
	move.w d0,d7
loc_ff4a70:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff4a66
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
	bne.s loc_ff4a9e
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff4a70
loc_ff4a9e:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff4aaa:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff4aaa
	bra.s loc_ff4a70
	.incbin 11190, 382

sub_ff4c34:
	move.w sr,($fa46).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff4c44:
	btst.b #$0,($a11100).l
	bne.s loc_ff4c44
	rts

sub_ff4c50:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts
	.incbin 11614, 56

sub_ff4c96:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff4ca2:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff4ca2
	rts
	.incbin 11694, 4946
