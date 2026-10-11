; DUMMY1.MMD
; disassembled from the disc; code only, data comes from data/DUMMY1.MMD at build time
	.file "DUMMY1.MMD", 16640
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
	bsr.w sub_ff41a8
	move.l #$74000003,($c00004).l
	move.l #$0,($c00000).l
	move.l #$40000000,($c00004).l
	lea dat_ff21c2(pc),a0
	bsr.w sub_ff4222
	lea dat_ff3676(pc),a1
	move.l #$60000003,d0
	moveq #$27,d1
	moveq #$1b,d2
	bsr.w sub_ff3f36
	lea dat_ff2142(pc),a0
	lea ($f900).w,a1
	moveq #$1f,d7
loc_ff2068:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff2068
	bset.b #$1,($ff0f00).l
	bsr.w sub_ff40da
	bsr.w sub_ff4542
	bsr.w sub_ff40fc
loc_ff2082:
	bsr.w sub_ff4542
	btst.b #$7,($a1201e).l
	beq.w loc_ff2082
	bsr.w sub_ff3f7e
	rts
	.incbin 408, 150
dat_ff212e:
	.incbin 558, 20
dat_ff2142:
	.incbin 578, 128
dat_ff21c2:
	.incbin 706, 5300
dat_ff3676:
	.incbin 6006, 2240

sub_ff3f36:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$800000,d4
loc_ff3f48:
	move.l d0,(a2)
	move.w d1,d3
loc_ff3f4c:
	move.w (a1)+,(a3)
	dbf d3,loc_ff3f4c
	add.l d4,d0
	dbf d2,loc_ff3f48
	rts
	.incbin 8282, 36

sub_ff3f7e:
	move.b #$1,($fa00).w
	moveq #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff3f8a:
	bsr.s sub_ff3fb0
	addq.w #$2,d0
	dbf d6,loc_ff3f8a
	moveq #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff3f98:
	bsr.s sub_ff3fb0
	addq.w #$2,d0
	dbf d6,loc_ff3f98
	moveq #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff3fa6:
	bsr.s sub_ff3fb0
	addq.w #$2,d0
	dbf d6,loc_ff3fa6
	rts

sub_ff3fb0:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff3fb6:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	sub.w d0,d2
	bcc.s loc_ff3fcc
	moveq #$0,d2
loc_ff3fcc:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3fb6
	bset.b #$1,($ff0f00).l
	bra.w sub_ff4542
	.incbin 8420, 246

sub_ff40da:
	lea ($f900).w,a1
	lea ($f980).w,a2
	move.l #$eee0eee,d1
	moveq #$1f,d7
loc_ff40ea:
	move.l (a1),(a2)+
	move.l d1,(a1)+
	dbf d7,loc_ff40ea
	bset.b #$1,($ff0f00).l
	rts

sub_ff40fc:
	moveq #$7,d6
	moveq #$e,d0
	moveq #$1,d1
loc_ff4102:
	bsr.w sub_ff4134
	subq.w #$2,d0
	dbf d6,loc_ff4102
	moveq #$7,d6
	moveq #$e,d0
	moveq #$5,d1
loc_ff4112:
	bsr.w sub_ff4134
	subq.w #$2,d0
	dbf d6,loc_ff4112
	moveq #$7,d6
	moveq #$e,d0
	moveq #$9,d1
loc_ff4122:
	bsr.w sub_ff4134
	subq.w #$2,d0
	dbf d6,loc_ff4122
	move.b #$0,($fa00).w
	rts

sub_ff4134:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$3f,d7
loc_ff413e:
	move.w (a2)+,d2
	move.w (a1),d3
	rol.w #$1,d2
	rol.w #$1,d3
	ror.w d1,d2
	ror.w d1,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	cmp.w d0,d2
	bcc.s loc_ff4158
	move.w d0,d2
loc_ff4158:
	or.w d3,d2
	rol.w d1,d2
	ror.w #$1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff413e
	bset.b #$1,($ff0f00).l
	bra.w sub_ff4542
	.incbin 8816, 56

sub_ff41a8:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff41ae:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff41ae
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff44e0
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ff41f4:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ff41f4
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff44fc
	move.w #$8134,($ff0f16).l
	rts

sub_ff4222:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff42e4).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff423e
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $42,$fa
loc_ff423e:
	lea ($c000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff424c
	adda.w #$a,a3
loc_ff424c:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff4310(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff426c
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff426c:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff42b8
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff4294
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff4294:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff42a2:
	lsr.w #$4,d0
loc_ff42a4:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff42b2
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff42b2:
	dbf d0,loc_ff42a4
	bra.s sub_ff426c
loc_ff42b8:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff42c6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff42c6:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff42a2
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff42a2
dat_ff42e4:
	.incbin 9188, 44

sub_ff4310:
	move.b (a0)+,d0
loc_ff4312:
	cmpi.b #$ff,d0
	bne.s loc_ff431a
	rts
loc_ff431a:
	move.w d0,d7
loc_ff431c:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff4312
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
	bne.s loc_ff434a
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff431c
loc_ff434a:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff4356:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff4356
	bra.s loc_ff431c
	.incbin 9314, 382

sub_ff44e0:
	move.w sr,($fa46).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff44f0:
	btst.b #$0,($a11100).l
	bne.s loc_ff44f0
	rts

sub_ff44fc:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts
	.incbin 9738, 56

sub_ff4542:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff454e:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff454e
	rts
	.incbin 9818, 6822
