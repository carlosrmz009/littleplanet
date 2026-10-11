; SOSEL_.MMD
; disassembled from the disc; code only, data comes from data/SOSEL_.MMD at build time
	.file "SOSEL_.MMD", 12544
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	dc.b $21,$fc,$00,$ff,$26,$5a,$fd,$08
	dc.b $61,$00,$06,$c8
	lea ($8000).w,a0
	move.w #$1eff,d7
loc_ff2014:
	move.l #$0,(a0)+
	dbf d7,loc_ff2014
	lea dat_ff26f0(pc),a0
	bsr.w sub_ff388a
	move.l #$74000003,($c00004).l
	move.l #$0,($c00000).l
	move.l #$40000000,($c00004).l
	lea dat_ff2784(pc),a0
	bsr.w sub_ff3904
	lea dat_ff2d58(pc),a1
	move.l #$60000003,d0
	moveq #$27,d1
	moveq #$1b,d2
	bsr.w sub_ff3618
	lea dat_ff25aa(pc),a0
	move.w #$8000,d0
	bsr.w sub_ff24fe
	lea dat_ff2704(pc),a0
	lea ($f900).w,a1
	moveq #$1f,d7
loc_ff2074:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff2074
	bset.b #$1,($ff0f00).l
	bsr.w sub_ff36c6
	bsr.w sub_ff3c24
	bsr.w sub_ff36e4
loc_ff208e:
	addq.w #$1,(dat_ff23ae).l
	addq.w #$1,(dat_ff23b0).l
	addq.w #$1,(dat_ff23b2).l
	addq.w #$1,(dat_ff23b4).l
	lea dat_ff23b6(pc),a1
	moveq #$0,d6
	moveq #$2,d7
	move.w (dat_ff23ae).l,d0
	andi.w #$7,d0
	bne.s loc_ff20de
	btst.b #$2,($a1201e).l
	beq.s loc_ff20c8
	bsr.w sub_ff3852
loc_ff20c8:
	btst.b #$3,($a1201e).l
	beq.s loc_ff20de
	bsr.w sub_ff3860
	bra.s loc_ff20de
dat_ff20d8:
	dc.b $01,$9e,$02,$22,$02,$7a
loc_ff20de:
	bsr.w sub_ff2404
	bsr.w sub_ff2448
	bsr.w sub_ff2462
	bsr.w sub_ff247c
	move.w (dat_ff23b6).l,d0
	add.w d0,d0
	move.w dat_ff20d8(pc,d0.w),d0
	jsr dat_ff20d8(pc,d0.w)
	bsr.w sub_ff3c24
	btst.b #$7,($a1201e).l
	beq.w loc_ff208e
	move.w #$74,d0
	bsr.w sub_ff23be
	bsr.w sub_ff3c24
	move.w #$83,d0
	bsr.w sub_ff23be
	bsr.w sub_ff3c24
	bsr.w sub_ff220a
	add.w d0,d0
	move.w dat_ff2134(pc,d0.w),d0
	jmp dat_ff2134(pc,d0.w)
dat_ff2134:
	.incbin 564, 214

sub_ff220a:
	moveq #$1,d0
	move.w (dat_ff23b8).l,d5
	move.w (dat_ff23ba).l,d6
	move.w (dat_ff23bc).l,d7
loc_ff221e:
	move.w d0,d1
	mulu.w #$6,d1
	move.w dat_ff2246(pc,d1.w),d2
	bmi.s loc_ff2242
	cmp.w dat_ff2246(pc,d1.w),d5
	bne.s loc_ff223e
	cmp.w dat_ff2248(pc,d1.w),d6
	bne.s loc_ff223e
	cmp.w dat_ff224a(pc,d1.w),d7
	bne.s loc_ff223e
	rts
loc_ff223e:
	addq.w #$1,d0
	bra.s loc_ff221e
loc_ff2242:
	moveq #$0,d0
	rts
dat_ff2246:
	dc.b $00,$00
dat_ff2248:
	dc.b $00,$00
dat_ff224a:
	.incbin 842, 356
dat_ff23ae:
	dc.b $00,$00
dat_ff23b0:
	dc.b $00,$02
dat_ff23b2:
	dc.b $00,$04
dat_ff23b4:
	dc.b $00,$06
dat_ff23b6:
	dc.b $00,$00
dat_ff23b8:
	dc.b $00,$00
dat_ff23ba:
	dc.b $00,$00
dat_ff23bc:
	dc.b $00,$00

sub_ff23be:
	move.w d0,($a12010).l
loc_ff23c4:
	tst.w ($a12020).l
	beq.s loc_ff23c4
	move.w #$0,($a12010).l
loc_ff23d4:
	tst.w ($a12020).l
	bne.s loc_ff23d4
	rts
	.incbin 1246, 38

sub_ff2404:
	lea dat_ff25b8(pc),a0
	move.w #$6000,d0
	bsr.w sub_ff24fe
	cmpi.w #$0,(dat_ff23b6).l
	beq.s loc_ff2430
	cmpi.w #$1,(dat_ff23b6).l
	beq.s loc_ff243c
	lea dat_ff2608(pc),a0
	move.w #$2000,d0
	bra.w sub_ff24fe
loc_ff2430:
	lea dat_ff25ec(pc),a0
	move.w #$2000,d0
	bra.w sub_ff24fe
loc_ff243c:
	lea dat_ff25fa(pc),a0
	move.w #$2000,d0
	bra.w sub_ff24fe

sub_ff2448:
	lea dat_ff24d2(pc),a1
	move.l #$45960003,d4
	move.l #$46160003,d5
	move.w (dat_ff23b8).l,d0
	moveq #$1,d1
	bra.s loc_ff2494

sub_ff2462:
	lea dat_ff24d2(pc),a1
	move.l #$45ac0003,d4
	move.l #$462c0003,d5
	move.w (dat_ff23ba).l,d0
	moveq #$1,d1
	bra.s loc_ff2494

sub_ff247c:
	lea dat_ff24d2(pc),a1
	move.l #$45c00003,d4
	move.l #$46400003,d5
	move.w (dat_ff23bc).l,d0
	moveq #$1,d1
loc_ff2494:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
loc_ff24a0:
	move.l d4,(a2)
	moveq #$0,d2
	move.w (a1)+,d3
loc_ff24a6:
	sub.w d3,d0
	bcs.s loc_ff24ae
	addq.w #$1,d2
	bra.s loc_ff24a6
loc_ff24ae:
	add.w d3,d0
	add.w d2,d2
	move.w dat_ff24d6(pc,d2.w),(a3)
	move.l d5,(a2)
	move.w dat_ff24ea(pc,d2.w),(a3)
	addi.l #$20000,d4
	addi.l #$20000,d5
	dbf d1,loc_ff24a0
	rts
	dc.b $03,$e8,$00,$64
dat_ff24d2:
	dc.b $00,$0a,$00,$01
dat_ff24d6:
	.incbin 1494, 20
dat_ff24ea:
	.incbin 1514, 20

sub_ff24fe:
	movem.l d0-d7/a0-a6,-(a7)
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.w (a0)+,d7
loc_ff2510:
	movea.l (a0)+,a1
	move.l (a0)+,d3
	move.l (a0)+,d4
loc_ff2516:
	moveq #$0,d1
	move.b (a1)+,d1
	cmpi.b #$ff,d1
	beq.s loc_ff2546
	move.l d3,(a2)
	moveq #$0,d2
	move.b dat_ff2550(pc,d1.w),d2
	add.w d0,d2
	move.w d2,(a3)
	move.l d4,(a2)
	moveq #$0,d2
	move.b dat_ff257d(pc,d1.w),d2
	add.w d0,d2
	move.w d2,(a3)
	addi.l #$20000,d3
	addi.l #$20000,d4
	bra.s loc_ff2516
loc_ff2546:
	dbf d7,loc_ff2510
	movem.l (a7)+,d0-d7/a0-a6
	rts
dat_ff2550:
	.incbin 1616, 45
dat_ff257d:
	.incbin 1661, 45
dat_ff25aa:
	dc.b $00,$00,$00,$ff,$26,$16,$43,$9e
	dc.b $00,$03,$44,$1e,$00,$03
dat_ff25b8:
	.incbin 1720, 52
dat_ff25ec:
	dc.b $00,$00,$00,$ff,$26,$22,$45,$8a
	dc.b $00,$03,$46,$0a,$00,$03
dat_ff25fa:
	dc.b $00,$00,$00,$ff,$26,$2a,$45,$9e
	dc.b $00,$03,$46,$1e,$00,$03
dat_ff2608:
	.incbin 1800, 232
dat_ff26f0:
	.incbin 2032, 20
dat_ff2704:
	.incbin 2052, 128
dat_ff2784:
	.incbin 2180, 1492
dat_ff2d58:
	.incbin 3672, 2240

sub_ff3618:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$800000,d4
loc_ff362a:
	move.l d0,(a2)
	move.w d1,d3
loc_ff362e:
	move.w (a1)+,(a3)
	dbf d3,loc_ff362e
	add.l d4,d0
	dbf d2,loc_ff362a
	rts
	.incbin 5948, 138

sub_ff36c6:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$0,d1
	moveq #$1f,d7
loc_ff36d2:
	move.l (a1),(a2)+
	move.l d1,(a1)+
	dbf d7,loc_ff36d2
	bset.b #$1,($ff0f00).l
	rts

sub_ff36e4:
	move.w #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff36ec:
	bsr.w sub_ff3722
	addq.w #$2,d0
	dbf d6,loc_ff36ec
	move.w #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff36fe:
	bsr.w sub_ff3722
	addq.w #$2,d0
	dbf d6,loc_ff36fe
	move.w #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff3710:
	bsr.w sub_ff3722
	addq.w #$2,d0
	dbf d6,loc_ff3710
	move.b #$0,($fa00).w
	rts

sub_ff3722:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$3f,d7
loc_ff372c:
	move.w (a2)+,d2
	move.w (a1),d3
	rol.w #$1,d2
	rol.w #$1,d3
	ror.w d1,d2
	ror.w d1,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	cmp.w d0,d2
	bls.s loc_ff3746
	move.w d0,d2
loc_ff3746:
	or.w d3,d2
	rol.w d1,d2
	ror.w #$1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff372c
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3c24
	.incbin 6238, 244

sub_ff3852:
	move.w (a1),d0
	subq.w #$1,d0
	cmp.w d6,d0
	bge.s loc_ff385c
	move.w d7,d0
loc_ff385c:
	move.w d0,(a1)
	rts

sub_ff3860:
	move.w (a1),d0
	addq.w #$1,d0
	cmp.w d7,d0
	bls.s loc_ff386a
	move.w d6,d0
loc_ff386a:
	move.w d0,(a1)
	rts
	.incbin 6510, 28

sub_ff388a:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff3890:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff3890
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff3bc2
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ff38d6:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ff38d6
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff3bde
	move.w #$8134,($ff0f16).l
	rts

sub_ff3904:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff39c6).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff3920
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $39,$dc
loc_ff3920:
	lea ($c000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff392e
	adda.w #$a,a3
loc_ff392e:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff39f2(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff394e
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff394e:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff399a
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3976
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3976:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff3984:
	lsr.w #$4,d0
loc_ff3986:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff3994
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff3994:
	dbf d0,loc_ff3986
	bra.s sub_ff394e
loc_ff399a:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff39a8
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff39a8:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff3984
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff3984
dat_ff39c6:
	.incbin 6854, 44

sub_ff39f2:
	move.b (a0)+,d0
loc_ff39f4:
	cmpi.b #$ff,d0
	bne.s loc_ff39fc
	rts
loc_ff39fc:
	move.w d0,d7
loc_ff39fe:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff39f4
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
	bne.s loc_ff3a2c
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff39fe
loc_ff3a2c:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff3a38:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff3a38
	bra.s loc_ff39fe
	.incbin 6980, 382

sub_ff3bc2:
	move.w sr,($fa46).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff3bd2:
	btst.b #$0,($a11100).l
	bne.s loc_ff3bd2
	rts

sub_ff3bde:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts
	.incbin 7404, 56

sub_ff3c24:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff3c30:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff3c30
	rts
	.incbin 7484, 5060
