; TITLEM.MMD
; disassembled from the disc; code only, data comes from data/TITLEM.MMD at build time
	.file "TITLEM.MMD", 27266
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	move.w #$8134,($ff0f16).l
	move.w ($ff0f16).l,($c00004).l
	move.l #loc_ff228e,($fd08).w
	move.l #$ffffffff,($fb00).w
	moveq #$0,d0
	move.l d0,($a12010).l
	move.l d0,($a12014).l
	move.l d0,($a12018).l
	move.l d0,($a1201c).l
	move.b d0,($a1200e).l
	move.b d0,($fa26).w
	move.l d0,($fa20).w
	move.b d0,($fa24).w
	lea ($a000).w,a0
	move.w #$16bf,d7
loc_ff2056:
	clr.l (a0)+
	dbf d7,loc_ff2056
	bsr.w sub_ff2740
	bsr.w sub_ff2784
	bsr.w sub_ff2762
	bsr.w sub_ff27da
	bsr.w sub_ff2dfc
	bsr.w sub_ff2dcc
	bsr.w sub_ff39b2
	move.l #$58000003,($c00004).l
	lea dat_ff87f4(pc),a0
	bsr.w sub_ff2c08
	move.l #$5c000003,($c00004).l
	lea dat_ff88a2(pc),a0
	bsr.w sub_ff2c08
	move.l #$5e000003,($c00004).l
	lea dat_ff88d0(pc),a0
	bsr.w sub_ff2c08
	move.l #$5f200003,($c00004).l
	lea dat_ff8950(pc),a0
	bsr.w sub_ff2c08
	move.l #$70000003,($c00004).l
	lea dat_ff5266(pc),a0
	bsr.w sub_ff2c08
	move.l #$6d000001,($c00004).l
	lea dat_ff60d4(pc),a0
	bsr.w sub_ff2c08
	lea loc_ff2e9c(pc),a2
	bsr.w sub_ff2da6
	move.l #$7c200002,($c00004).l
	lea dat_ff8356(pc),a0
	bsr.w sub_ff2c08
	bsr.w sub_ff26b6
	bsr.w sub_ff2276
	move.b #$1,($fa26).w
	move.w #$4,($fa40).w
	bsr.w sub_ff2276
	move.l #$0,($fb00).w
	jsr sub_ff2d48(pc)
	move.w #$5,($fa40).w
	bsr.w sub_ff2276
	lea (dat_ff2978).l,a1
	lea ($f9e0).w,a2
	movem.l (a1)+,d0-d7
	movem.l d0-d7,(a2)
	move.w #$600f,($fa02).w
	bsr.w sub_ff2a86
loc_ff2148:
	move.b #$1,($fa04).w
	jsr sub_ff2dfc(pc)
	jsr sub_ff2d48(pc)
	btst.b #$7,($fa04).w
	bne.s loc_ff216c
	move.w #$5,($fa40).w
	bsr.w sub_ff2276
	bra.w loc_ff2148
loc_ff216c:
	bclr.b #$7,($fa04).w
	move.l #$6d800001,($c00004).l
	lea dat_ff46a8(pc),a0
	bsr.w sub_ff2c08
	lea (dat_ff2918).l,a1
	lea ($f980).w,a2
	bsr.w sub_ff29f6
	move.w #$2f,($fa02).w
	bsr.w sub_ff2b04
	lea loc_ff32dc(pc),a2
	bsr.w sub_ff2da6
	lea (loc_ff33a8).l,a2
	bsr.w sub_ff2da6
	lea loc_ff394c(pc),a2
	bsr.w sub_ff2da6
loc_ff21b6:
	move.b #$2,($fa04).w
	bsr.w sub_ff2700
	jsr sub_ff2dfc(pc)
	jsr sub_ff2d48(pc)
	bsr.w sub_ff2668
	bsr.w sub_ff25d4
	move.w #$0,($fa40).w
	bsr.w sub_ff2276
	jsr sub_ff2dfc(pc)
	jsr sub_ff2d48(pc)
	move.w #$1,($fa40).w
	bsr.w sub_ff2276
	bsr.w sub_ff27b8
	bsr.w sub_ff29c2
	bsr.w sub_ff2784
	tst.b ($fa0e).w
	bne.s loc_ff2244
	jsr sub_ff2dfc(pc)
	jsr sub_ff2d48(pc)
	bsr.w sub_ff2668
	bsr.w sub_ff2700
	bsr.w sub_ff2594
	move.w #$2,($fa40).w
	bsr.w sub_ff2276
	jsr sub_ff2dfc(pc)
	jsr sub_ff2d48(pc)
	move.w #$3,($fa40).w
	bsr.w sub_ff2276
	bsr.w sub_ff27b8
	bsr.w sub_ff29c2
	bsr.w sub_ff2784
	tst.b ($fa0e).w
	bne.s loc_ff2244
	bra.w loc_ff21b6
loc_ff2244:
	bset.b #$0,($a1200e).l
loc_ff224c:
	btst.b #$0,($a1200f).l
	beq.s loc_ff224c
	bclr.b #$0,($a1200e).l
	move.w #$5,($fa40).w
	bsr.w sub_ff2a22
	moveq #$0,d1
	move.b ($fa0e).w,d1
	bmi.s loc_ff2272
	rts
loc_ff2272:
	moveq #$0,d1
	rts

sub_ff2276:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff2282:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff2282
	rts
loc_ff228e:
	movem.l d0-d7/a0-a6,-(a7)
	move.b #$1,($a12000).l
	bclr.b #$0,($ff0f00).l
	beq.w loc_ff253a
	tst.b ($fa26).w
	beq.s loc_ff22c2
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	clr.b ($fa26).w
loc_ff22c2:
	lea ($c00004).l,a1
	lea ($c00000).l,a2
	move.w (a1),d0
	jsr sub_ff2998(pc)
	lea ($c00004).l,a6
	move.l #$93409400,(a6)
	move.l #$958096fc,(a6)
	move.w #$977f,(a6)
	move.w #$c000,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$c0000000,(a6)
	move.w ($f900).w,($c00000).l
	lea ($c00004).l,a6
	move.l #$93c09401,(a6)
	move.l #$950096e8,(a6)
	move.w #$977f,(a6)
	move.w #$5000,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$50000003,(a6)
	move.w ($d000).w,($c00000).l
	move.w ($fa40).w,d0
	add.w d0,d0
	move.w dat_ff233e(pc,d0.w),d0
	jmp dat_ff233e(pc,d0.w)
dat_ff233e:
	dc.b $00,$0c,$00,$70,$00,$d4,$01,$38
	dc.b $01,$9c,$01,$a0
	lea ($c00004).l,a6
	move.l #$93409401,(a6)
	move.l #$950096ea,(a6)
	move.w #$977f,(a6)
	move.w #$5400,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$54000003,(a6)
	move.w ($d400).w,($c00000).l
	lea ($c00004).l,a6
	move.l #$9300940c,(a6)
	move.l #$950096d0,(a6)
	move.w #$977f,(a6)
	move.w #$4020,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$40200000,(a6)
	move.w ($a000).w,($c00000).l
	jsr sub_ff2618(pc)
	bra.w loc_ff2510
	lea ($c00004).l,a6
	move.l #$93409401,(a6)
	move.l #$950096ea,(a6)
	move.w #$977f,(a6)
	move.w #$5400,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$54000003,(a6)
	move.w ($d400).w,($c00000).l
	lea ($c00004).l,a6
	move.l #$9300940c,(a6)
	move.l #$950096dc,(a6)
	move.w #$977f,(a6)
	move.w #$5820,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$58200000,(a6)
	move.w ($b800).w,($c00000).l
	jsr sub_ff2618(pc)
	bra.w loc_ff2510
	lea ($c00004).l,a6
	move.l #$93409401,(a6)
	move.l #$950096ea,(a6)
	move.w #$977f,(a6)
	move.w #$5400,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$54000003,(a6)
	move.w ($d400).w,($c00000).l
	lea ($c00004).l,a6
	move.l #$9300940c,(a6)
	move.l #$950096d0,(a6)
	move.w #$977f,(a6)
	move.w #$7020,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$70200000,(a6)
	move.w ($a000).w,($c00000).l
	jsr sub_ff2618(pc)
	bra.w loc_ff2510
	lea ($c00004).l,a6
	move.l #$93409401,(a6)
	move.l #$950096ea,(a6)
	move.w #$977f,(a6)
	move.w #$5400,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$54000003,(a6)
	move.w ($d400).w,($c00000).l
	lea ($c00004).l,a6
	move.l #$9300940c,(a6)
	move.l #$950096dc,(a6)
	move.w #$977f,(a6)
	move.w #$4820,(a6)
	move.w #$81,-(a7)
	move.w (a7)+,(a6)
	move.l #$48200001,(a6)
	move.w ($b800).w,($c00000).l
	jsr sub_ff2618(pc)
	bra.w loc_ff2510
	bra.w loc_ff2510
	lea ($c00004).l,a6
	move.l #$93409401,(a6)
	move.l #$950096ea,(a6)
	move.w #$977f,(a6)
	move.w #$5400,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$54000003,(a6)
	move.w ($d400).w,($c00000).l
	jsr sub_ff2618(pc)
loc_ff2510:
	tst.b ($fa1e).w
	beq.s loc_ff2522
	move.b ($fa1e).w,($a01c0a).l
	clr.b ($fa1e).w
loc_ff2522:
	bsr.w sub_ff29b4
	tst.w ($fa42).w
	beq.s loc_ff2530
	subq.w #$1,($fa42).w
loc_ff2530:
	addq.w #$1,($fa44).w
	movem.l (a7)+,d0-d7/a0-a6
	rte
loc_ff253a:
	cmpi.l #$ffffffff,($fb00).w
	beq.s loc_ff254e
	addq.l #$1,($fb00).w
	move.b ($fa41).w,($fb00).w
loc_ff254e:
	movem.l (a7)+,d0-d7/a0-a6
	rte
	.incbin 1620, 64

sub_ff2594:
	lea ($d000).w,a1
	moveq #$57,d1
loc_ff259a:
	clr.l (a1)+
	dbf d1,loc_ff259a
	lea ($d680).w,a2
	moveq #$3f,d2
	move.l #$1000,d1
	move.l #$4000,d0
loc_ff25b2:
	add.l d0,(a2)+
	add.l d1,d0
	dbf d2,loc_ff25b2
	lea ($d680).w,a2
	lea ($d280).w,a1
	moveq #$3f,d2
	moveq #$0,d0
loc_ff25c6:
	move.w (a2),d0
	move.l d0,(a1)+
	lea $4(a2),a2
	dbf d2,loc_ff25c6
	rts

sub_ff25d4:
	lea ($d000).w,a1
	moveq #$57,d1
loc_ff25da:
	move.l #$100,(a1)+
	dbf d1,loc_ff25da
	lea ($d680).w,a2
	moveq #$3f,d2
	move.l #$1000,d1
	move.l #$4000,d0
loc_ff25f6:
	add.l d0,(a2)+
	add.l d1,d0
	dbf d2,loc_ff25f6
	lea ($d680).w,a2
	lea ($d280).w,a1
	moveq #$3f,d2
	moveq #$0,d0
loc_ff260a:
	move.w (a2),d0
	move.l d0,(a1)+
	lea $4(a2),a2
	dbf d2,loc_ff260a
	rts

sub_ff2618:
	lea ($fa1a).w,a0
	lea ($a10003).l,a1
	bsr.s sub_ff263c
	lea ($fa18).w,a0
	lea ($a10005).l,a1
	tst.b ($fa1c).w
	beq.s sub_ff263c
	move.w ($fa18).w,($a1201e).l

sub_ff263c:
	move.b #$0,(a1)
	tst.w (a0)
	move.b (a1),d0
	lsl.b #$2,d0
	andi.b #$c0,d0
	move.b #$40,(a1)
	tst.w (a0)
	move.b (a1),d1
	andi.b #$3f,d1
	or.b d1,d0
	not.b d0
	move.b d0,d1
	move.b (a0),d2
	eor.b d2,d0
	move.b d1,(a0)+
	and.b d1,d0
	move.b d0,(a0)+
	rts

sub_ff2668:
	addi.b #$40,($fa0d).w
	bcs.s loc_ff2672
	rts
loc_ff2672:
	moveq #$0,d0
	move.b ($fa0c).w,d0
	addq.b #$1,d0
	cmpi.b #$3,d0
	bcs.s loc_ff2682
	clr.b d0
loc_ff2682:
	move.b d0,($fa0c).w
	lea dat_ff269e(pc),a1
	lea ($f90a).w,a2
	add.b d0,d0
	add.b d0,d0
	add.b d0,d0
	lea $0(a1,d0.w),a1
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	rts
dat_ff269e:
	.incbin 1950, 24

sub_ff26b6:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.w #$8001,d6
	move.l #$60000003,d0
	moveq #$1f,d1
	moveq #$b,d2
	bsr.s sub_ff26e0
	move.w #$8181,d6
	move.l #$60400003,d0
	moveq #$1f,d1
	moveq #$b,d2

sub_ff26e0:
	move.l #$800000,d4
loc_ff26e6:
	move.l d0,(a2)
	move.w d1,d3
	move.w d6,d5
loc_ff26ec:
	move.w d5,(a3)
	addi.w #$c,d5
	dbf d3,loc_ff26ec
	add.l d4,d0
	addq.w #$1,d6
	dbf d2,loc_ff26e6
	rts

sub_ff2700:
	cmpi.b #$4,($fa24).w
	bcc.s loc_ff273a
	move.b #$1,($a12012).l
loc_ff2710:
	cmpi.b #$1,($a12022).l
	beq.s loc_ff2720
	addq.w #$1,($fa20).w
	bcc.s loc_ff2710
loc_ff2720:
	clr.l ($fa20).w
	move.b #$0,($a12012).l
loc_ff272c:
	tst.b ($a12022).l
	beq.s loc_ff273a
	addq.w #$1,($fa20).w
	bcc.s loc_ff272c
loc_ff273a:
	clr.l ($fa20).w
	rts

sub_ff2740:
	cmpi.b #$4,($fa24).w
	bcc.s loc_ff275c
	btst.b #$7,($a1200f).l
	bne.s loc_ff275c
	addq.w #$1,($fa20).w
	bcc.s sub_ff2740
	addq.b #$1,($fa24).w
loc_ff275c:
	clr.l ($fa20).w
	rts

sub_ff2762:
	cmpi.b #$4,($fa24).w
	bcc.s loc_ff277e
	btst.b #$7,($a1200f).l
	beq.s loc_ff277e
	addq.w #$1,($fa20).w
	bcc.s sub_ff2762
	addq.b #$1,($fa24).w
loc_ff277e:
	clr.l ($fa20).w
	rts

sub_ff2784:
	cmpi.b #$4,($fa24).w
	bcc.s loc_ff27b2
	btst.b #$1,($a12003).l
	bne.s loc_ff27b6
	bset.b #$1,($a12003).l
loc_ff279e:
	btst.b #$1,($a12003).l
	bne.s loc_ff27b2
	addq.w #$1,($fa20).w
	bcc.s loc_ff279e
	addq.b #$1,($fa24).w
loc_ff27b2:
	clr.l ($fa20).w
loc_ff27b6:
	rts

sub_ff27b8:
	cmpi.b #$4,($fa24).w
	bcc.s loc_ff27d4
	btst.b #$0,($a12003).l
	bne.s loc_ff27d4
	addq.w #$1,($fa20).w
	bcc.s sub_ff27b8
	addq.b #$1,($fa24).w
loc_ff27d4:
	clr.l ($fa20).w
	rts

sub_ff27da:
	lea dat_ff2884(pc),a0
	move.w #$8000,d0
	moveq #$12,d7
loc_ff27e4:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff27e4
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	jsr sub_ff2998(pc)
	lea ($c00004).l,a6
	move.w #$8f01,(a6)
	move.l #$93ff94ff,(a6)
	move.w #$9780,(a6)
	move.l #$40000080,(a6)
	move.w #$0,($c00000).l
loc_ff2836:
	btst.b #$1,$1(a6)
	bne.s loc_ff2836
	move.l #$40000000,(a6)
	move.w #$0,($c00000).l
	move.w #$8f02,(a6)
	lea dat_ff2898(pc),a0
	lea ($f900).w,a1
	moveq #$1f,d7
loc_ff285a:
	move.l (a0)+,d0
	move.l d0,(a1)+
	dbf d7,loc_ff285a
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	jsr sub_ff29b4(pc)
	move.w #$8134,($ff0f16).l
	rts
dat_ff2884:
	.incbin 2436, 20
dat_ff2898:
	.incbin 2456, 128
dat_ff2918:
	.incbin 2584, 96
dat_ff2978:
	.incbin 2680, 32

sub_ff2998:
	move.w sr,($fa46).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff29a8:
	btst.b #$0,($a11100).l
	bne.s loc_ff29a8
	rts

sub_ff29b4:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts

sub_ff29c2:
	lea ($21d000).l,a1
	lea ($a000).w,a2
	move.w #$5,d7
loc_ff29d0:
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	bsr.s sub_ff29f6
	dbf d7,loc_ff29d0
	rts

sub_ff29f6:
	movem.l (a1)+,d0-d5/a3-a4
	movem.l d0-d5/a3-a4,(a2)
	movem.l (a1)+,d0-d5/a3-a4
	movem.l d0-d5/a3-a4,$20(a2)
	movem.l (a1)+,d0-d5/a3-a4
	movem.l d0-d5/a3-a4,$40(a2)
	movem.l (a1)+,d0-d5/a3-a4
	movem.l d0-d5/a3-a4,$60(a2)
	lea $80(a2),a2
	rts

sub_ff2a22:
	move.w #$3f,($fa02).w
	move.w #$15,d4
loc_ff2a2c:
	move.b #$1,($fa01).w
	bsr.w sub_ff2276
	bsr.s sub_ff2a3e
	dbf d4,loc_ff2a2c
	rts

sub_ff2a3e:
	moveq #$0,d0
	lea ($f900).w,a0
	move.b ($fa02).w,d0
	adda.w d0,a0
	move.b ($fa03).w,d0
loc_ff2a4e:
	bsr.s sub_ff2a56
	dbf d0,loc_ff2a4e
	rts

sub_ff2a56:
	move.w (a0),d2
	beq.s loc_ff2a82
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_ff2a66
	subq.w #$2,(a0)+
	rts
loc_ff2a66:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_ff2a74
	subi.w #$20,(a0)+
	rts
loc_ff2a74:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_ff2a82
	subi.w #$200,(a0)+
	rts
loc_ff2a82:
	addq.w #$2,a0
	rts

sub_ff2a86:
	moveq #$0,d0
	lea ($f900).w,a0
	move.b ($fa02).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($fa03).w,d0
loc_ff2a98:
	move.w d1,(a0)+
	dbf d0,loc_ff2a98
	move.w #$15,d4
loc_ff2aa2:
	move.b #$1,($fa01).w
	bsr.w sub_ff2276
	bsr.s sub_ff2ab4
	dbf d4,loc_ff2aa2
	rts

sub_ff2ab4:
	moveq #$0,d0
	lea ($f900).w,a0
	lea ($f980).w,a1
	move.b ($fa02).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($fa03).w,d0
loc_ff2aca:
	bsr.s sub_ff2ad2
	dbf d0,loc_ff2aca
	rts

sub_ff2ad2:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_ff2afa
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_ff2ae8
	move.w d1,(a0)+
	rts
loc_ff2ae8:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_ff2af6
	move.w d1,(a0)+
	rts
loc_ff2af6:
	addq.w #$2,(a0)+
	rts
loc_ff2afa:
	addq.w #$2,a0
	rts
	dc.b $31,$fc,$00,$3f,$fa,$02

sub_ff2b04:
	moveq #$0,d0
	lea ($f900).w,a0
	move.b ($fa02).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($fa03).w,d0
loc_ff2b18:
	move.w d1,(a0)+
	dbf d0,loc_ff2b18
	move.w #$0,($f95c).w
	move.w #$15,d4
loc_ff2b28:
	move.b #$1,($fa01).w
	bsr.w sub_ff2276
	move.l d4,-(a7)
	move.l (a7)+,d4
	bsr.s sub_ff2b42
	dbf d4,loc_ff2b28
	clr.b ($fa01).w
	rts

sub_ff2b42:
	moveq #$0,d0
	lea ($f900).w,a0
	lea ($f980).w,a1
	move.b ($fa02).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($fa03).w,d0
loc_ff2b58:
	bsr.s sub_ff2b60
	dbf d0,loc_ff2b58
	rts

sub_ff2b60:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_ff2b8c
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_ff2b78
	cmp.w d2,d1
	bcs.s loc_ff2b78
	move.w d1,(a0)+
	rts
loc_ff2b78:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_ff2b88
	cmp.w d2,d1
	bcs.s loc_ff2b88
	move.w d1,(a0)+
	rts
loc_ff2b88:
	subq.w #$2,(a0)+
	rts
loc_ff2b8c:
	addq.w #$2,a0
	rts
	.incbin 3216, 120

sub_ff2c08:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_ff2cca).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff2c24
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $2c,$e0
loc_ff2c24:
	lea ($f700).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff2c32
	adda.w #$a,a3
loc_ff2c32:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_ff2cf6
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff2c52
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff2c52:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff2c9e
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff2c7a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff2c7a:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff2c88:
	lsr.w #$4,d0
loc_ff2c8a:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff2c98
	jmp (a3)
loc_ff2c94:
	moveq #$0,d4
	moveq #$8,d3
loc_ff2c98:
	dbf d0,loc_ff2c8a
	bra.s sub_ff2c52
loc_ff2c9e:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff2cac
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff2cac:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff2c88
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff2c88
loc_ff2cca:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s loc_ff2c94
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s loc_ff2c94
	rts
	.incbin 3552, 22

sub_ff2cf6:
	move.b (a0)+,d0
loc_ff2cf8:
	cmpi.b #$ff,d0
	bne.s loc_ff2d00
	rts
loc_ff2d00:
	move.w d0,d7
loc_ff2d02:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff2cf8
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
	bne.s loc_ff2d30
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff2d02
loc_ff2d30:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff2d3c:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff2d3c
	bra.s loc_ff2d02

sub_ff2d48:
	lea ($e300).w,a0
	moveq #$7,d7
loc_ff2d4e:
	tst.b $2(a0)
	beq.s loc_ff2d72
	move.l d7,-(a7)
	jsr (sub_ff2d9c).l
	move.l (a7)+,d7
	btst.b #$1,$3(a0)
	beq.s loc_ff2d72
	moveq #$0,d0
	move.w ($fa0a).w,d0
	swap d0
	sub.l d0,$10(a0)
loc_ff2d72:
	lea $40(a0),a0
	dbf d7,loc_ff2d4e
	lea ($e4c0).w,a0
	moveq #$7,d7
loc_ff2d80:
	tst.b $2(a0)
	beq.s loc_ff2d92
	btst.b #$0,$3(a0)
	beq.s loc_ff2d92
	bsr.w sub_ff2e18
loc_ff2d92:
	lea -$40(a0),a0
	dbf d7,loc_ff2d80
	rts

sub_ff2d9c:
	moveq #$ffffffff,d0
	move.w $0(a0),d0
	movea.l d0,a1
	jmp (a1)

sub_ff2da6:
	moveq #$ffffffff,d0
	lea ($e300).w,a1
	moveq #$7,d2
loc_ff2dae:
	tst.b $2(a1)
	beq.s loc_ff2dc2
	lea $40(a1),a1
	dbf d2,loc_ff2dae
	ori.b #$1,ccr
	rts
loc_ff2dc2:
	move.b d0,$2(a1)
	move.w a2,$0(a1)
	rts

sub_ff2dcc:
	lea ($e300).w,a0
	moveq #$7f,d7
loc_ff2dd2:
	clr.l (a0)+
	dbf d7,loc_ff2dd2
	rts

sub_ff2dda:
	move.l (a7)+,d0
	move.w d0,$0(a0)
	rts
	.incbin 3810, 26

sub_ff2dfc:
	lea ($d400).w,a0
	moveq #$7f,d0
loc_ff2e02:
	clr.l (a0)+
	dbf d0,loc_ff2e02
	move.b #$1,($fa48).w
	lea ($d400).w,a0
	move.l a0,($fa4a).w
	rts

sub_ff2e18:
	move.l d7,-(a7)
	move.w $c(a0),d4
	move.w $10(a0),d3
	addi.w #$80,d4
	addi.w #$80,d3
	move.w $4(a0),d5
	movea.l $6(a0),a3
	moveq #$0,d0
	move.b $a(a0),d0
	add.w d0,d0
	move.w $0(a3,d0.w),d0
	lea $0(a3,d0.w),a4
	movea.l ($fa4a).w,a5
	move.b (a4)+,d7
	beq.s loc_ff2e94
	subq.b #$1,d7
loc_ff2e4c:
	cmpi.b #$40,($fa48).w
	bcc.s loc_ff2e94
	move.b (a4)+,d0
	ext.w d0
	add.w d3,d0
	move.w d0,(a5)+
	move.b (a4)+,(a5)+
	move.b ($fa48).w,(a5)+
	addq.b #$1,($fa48).w
	move.b (a4)+,d0
	lsl.w #$8,d0
	move.b (a4)+,d0
	add.w d5,d0
	move.w d0,d6
	andi.w #$7ff,d6
	cmpi.w #$5e1,d6
	bne.s loc_ff2e7e
	subi.w #$2000,d0
loc_ff2e7e:
	move.w d0,(a5)+
	move.b (a4)+,d0
	ext.w d0
	add.w d4,d0
	andi.w #$1ff,d0
	bne.s loc_ff2e8e
	addq.w #$1,d0
loc_ff2e8e:
	move.w d0,(a5)+
	dbf d7,loc_ff2e4c
loc_ff2e94:
	move.l a5,($fa4a).w
	move.l (a7)+,d7
	rts
loc_ff2e9c:
	move.l #$ff2f84,$6(a0)
	move.w #$e368,$4(a0)
	move.b #$3,$3(a0)
	move.w #$5b,$c(a0)
	move.w #$f,$10(a0)
	move.b #$2,$14(a0)
loc_ff2ec2:
	bsr.w sub_ff2dda
	subq.b #$1,$14(a0)
	bne.s loc_ff2ec2
	addq.b #$1,$a(a0)
	move.b #$3,$14(a0)
loc_ff2ed6:
	bsr.w sub_ff2dda
	subq.b #$1,$14(a0)
	bne.s loc_ff2ed6
	move.l a0,-(a7)
	move.l #$60000001,($c00004).l
	lea dat_ff413e(pc),a0
	bsr.w sub_ff2c08
	movea.l (a7)+,a0
	addq.b #$1,$a(a0)
	move.b #$2,$14(a0)
loc_ff2f00:
	bsr.w sub_ff2dda
	subq.b #$1,$14(a0)
	bne.s loc_ff2f00
	move.l a0,-(a7)
	move.l #$6b000001,($c00004).l
	lea dat_ff4040(pc),a0
	bsr.w sub_ff2c08
	movea.l (a7)+,a0
	addq.b #$1,$a(a0)
	move.b #$1,$14(a0)
loc_ff2f2a:
	bsr.w sub_ff2dda
	subq.b #$1,$14(a0)
	bne.s loc_ff2f2a
	bset.b #$7,($fa04).w
	lea loc_ff31fc(pc),a2
	bsr.w sub_ff2da6
	move.w a0,$1c(a1)
	lea (loc_ff3262).l,a2
	bsr.w sub_ff2da6
	addq.b #$1,$a(a0)
	move.b #$14,$14(a0)
loc_ff2f5a:
	bsr.w sub_ff2dda
	subq.b #$1,$14(a0)
	bne.s loc_ff2f5a
	addq.b #$1,$a(a0)
	move.b #$4,$14(a0)
loc_ff2f6e:
	bsr.w sub_ff2dda
	subq.b #$1,$14(a0)
	bne.s loc_ff2f6e
	move.b #$4,$a(a0)
loc_ff2f7e:
	bsr.w sub_ff2dda
	bra.s loc_ff2f7e
	.incbin 4228, 632
loc_ff31fc:
	move.l #$ff2f84,$6(a0)
	move.w #$e368,$4(a0)
	move.b #$3,$3(a0)
	move.w #$8c,$c(a0)
	move.w #$68,$10(a0)
	move.b #$9,$a(a0)
loc_ff3222:
	bsr.w sub_ff2dda
	addi.b #$12,$14(a0)
	bcc.s loc_ff3222
loc_ff322e:
	moveq #$0,d0
	move.b $18(a0),d0
	move.b dat_ff3252(pc,d0.w),$a(a0)
	addq.b #$1,d0
	cmpi.b #$10,d0
	bcc.s loc_ff324c
	move.b d0,$18(a0)
	bsr.w sub_ff2dda
	bra.s loc_ff322e
loc_ff324c:
	bsr.w sub_ff2dda
	bra.s loc_ff324c
dat_ff3252:
	.incbin 4946, 16
loc_ff3262:
	move.l #$ff3288,$6(a0)
	move.w #$a780,$4(a0)
	move.b #$3,$3(a0)
	move.w #$7f,$c(a0)
	move.w #$7f,$10(a0)
loc_ff3282:
	jsr sub_ff2dda(pc)
	bra.s loc_ff3282
	.incbin 5000, 84
loc_ff32dc:
	bsr.w sub_ff2dda
	move.l a0,-(a7)
	move.l #$40400002,($c00004).l
	lea dat_ff5898(pc),a0
	bsr.w sub_ff2c08
	movea.l (a7)+,a0
	move.l #$ff3368,$6(a0)
	move.w #$6402,$4(a0)
	move.b #$1,$3(a0)
	move.w #$e2,$c(a0)
	move.w #$18,$10(a0)
	move.w $10(a0),$1a(a0)
loc_ff331c:
	addi.b #$40,$15(a0)
	bcc.s loc_ff3342
	moveq #$0,d0
	move.b $14(a0),d0
	move.b dat_ff3348(pc,d0.w),d0
	ext.w d0
	add.w d0,$10(a0)
	move.b $14(a0),d0
	addq.b #$1,d0
	andi.b #$1f,d0
	move.b d0,$14(a0)
loc_ff3342:
	jsr sub_ff2dda(pc)
	bra.s loc_ff331c
dat_ff3348:
	.incbin 5192, 96
loc_ff33a8:
	move.l #$ff37b0,$6(a0)
	move.w #$a6c0,$4(a0)
	move.b #$1,$3(a0)
	move.w #$53,$c(a0)
	move.w #$b4,$10(a0)
	move.w #$1e0,($fa42).w
loc_ff33ce:
	addi.b #$10,$14(a0)
	bcc.s loc_ff33dc
	eori.b #$1,$a(a0)
loc_ff33dc:
	btst.b #$7,($fa1b).w
	bne.s loc_ff3418
	bsr.w sub_ff3648
	bsr.w sub_ff3696
	bsr.w sub_ff36aa
	tst.b d0
	bne.w loc_ff363e
	bsr.w sub_ff36ec
	tst.b d0
	bne.w loc_ff363e
	bsr.w sub_ff372e
	tst.b d0
	bne.w loc_ff363e
	tst.w ($fa42).w
	beq.w loc_ff3632
	bsr.w sub_ff2dda
	bra.s loc_ff33ce
loc_ff3418:
	clr.w ($fa1a).w
	move.b #$1,$a(a0)
	move.w #$1e0,($fa42).w
	lea ($fa10).w,a2
	move.b ($ff0f1d).l,d1
	move.w #$ff02,(a2)+
	moveq #$1,d0
	btst.l #$6,d1
	beq.s loc_ff3444
	moveq #$2,d0
	move.b #$3,(a2)+
loc_ff3444:
	move.b d0,($fa0f).w
	btst.l #$5,d1
	beq.s loc_ff3452
	move.b #$4,(a2)+
loc_ff3452:
	btst.l #$4,d1
	beq.s loc_ff345c
	move.b #$5,(a2)+
loc_ff345c:
	btst.l #$3,d1
	beq.s loc_ff3466
	move.b #$6,(a2)+
loc_ff3466:
	btst.l #$2,d1
	beq.s loc_ff3470
	move.b #$7,(a2)+
loc_ff3470:
	move.b #$ff,(a2)
	lea loc_ff3834(pc),a2
	bsr.w sub_ff2da6
	move.w a0,$1c(a1)
	lea loc_ff3834(pc),a2
	bsr.w sub_ff2da6
	move.w a0,$1c(a1)
	move.b #$1,$18(a1)
loc_ff3492:
	move.w #$c6c0,$4(a0)
	clr.b $19(a0)
	bsr.w sub_ff2dda
	addi.b #$80,$14(a0)
	bcc.s loc_ff3492
loc_ff34a8:
	move.w $c(a0),d0
	addi.w #$20,d0
	move.w d0,$c(a0)
	bsr.w sub_ff2dda
	cmpi.w #$100,$c(a0)
	bcs.s loc_ff34a8
	bsr.w sub_ff2dda
	lea ($fa10).w,a2
	moveq #$0,d0
	move.b ($fa0f).w,d0
	lea $0(a2,d0.w),a2
	move.b (a2),d0
	move.b d0,$18(a0)
	bsr.w sub_ff3778
	move.w #$ffd3,$c(a0)
	bsr.w sub_ff2dda
loc_ff34e6:
	move.w $c(a0),d0
	addi.w #$10,d0
	move.w d0,$c(a0)
	bsr.w sub_ff2dda
	tst.w $c(a0)
	bmi.s loc_ff34e6
	cmpi.w #$53,$c(a0)
	bcs.s loc_ff34e6
	move.w #$53,$c(a0)
	move.w #$a6c0,$4(a0)
	bra.w loc_ff3592
loc_ff3514:
	move.w #$c6c0,$4(a0)
	clr.b $19(a0)
	bsr.w sub_ff2dda
	addi.b #$80,$14(a0)
	bcc.s loc_ff3514
loc_ff352a:
	move.w $c(a0),d0
	subi.w #$20,d0
	move.w d0,$c(a0)
	bsr.w sub_ff2dda
	tst.w $c(a0)
	bpl.s loc_ff352a
	cmpi.w #$ffcb,$c(a0)
	bcc.s loc_ff352a
	bsr.w sub_ff2dda
	lea ($fa10).w,a2
	moveq #$0,d0
	move.b ($fa0f).w,d0
	lea $0(a2,d0.w),a2
	move.b (a2),d0
	move.b d0,$18(a0)
	bsr.w sub_ff3778
	move.w #$d3,$c(a0)
loc_ff356a:
	bsr.w sub_ff2dda
	move.w $c(a0),d0
	subi.w #$10,d0
	move.w d0,$c(a0)
	cmpi.w #$53,$c(a0)
	bcc.s loc_ff356a
	move.w #$53,$c(a0)
	move.w #$a6c0,$4(a0)
	bra.w loc_ff3592
loc_ff3592:
	move.b #$3,$19(a0)
	bsr.w sub_ff2dda
loc_ff359c:
	lea ($fa10).w,a2
	btst.b #$2,($fa1a).w
	bne.s loc_ff35cc
	btst.b #$3,($fa1a).w
	bne.w loc_ff35ee
	move.b ($fa1b).w,d0
	andi.b #$f0,d0
	bne.w loc_ff3610
	tst.w ($fa42).w
	beq.w loc_ff3632
	bsr.w sub_ff2dda
	bra.s loc_ff359c
loc_ff35cc:
	move.w #$1e0,($fa42).w
	moveq #$0,d0
	move.b ($fa0f).w,d0
	subq.b #$1,d0
	move.b $0(a2,d0.w),d1
	cmpi.b #$ff,d1
	beq.s loc_ff35ec
	move.b d0,($fa0f).w
	bra.w loc_ff3492
loc_ff35ec:
	rts
loc_ff35ee:
	move.w #$1e0,($fa42).w
	moveq #$0,d0
	move.b ($fa0f).w,d0
	addq.b #$1,d0
	move.b $0(a2,d0.w),d1
	cmpi.b #$ff,d1
	beq.s loc_ff360e
	move.b d0,($fa0f).w
	bra.w loc_ff3514
loc_ff360e:
	rts
loc_ff3610:
	lea ($fa10).w,a2
	moveq #$0,d0
	move.b ($fa0f).w,d0
	lea $0(a2,d0.w),a2
	move.b (a2),d0
	subq.b #$1,d0
	bcc.s loc_ff3628
	move.b #$1,d0
loc_ff3628:
	move.b d0,($fa0e).w
loc_ff362c:
	bsr.w sub_ff2dda
	bra.s loc_ff362c
loc_ff3632:
	move.b #$ff,($fa0e).w
loc_ff3638:
	bsr.w sub_ff2dda
	bra.s loc_ff3638
loc_ff363e:
	move.b d0,($fa0e).w
loc_ff3642:
	bsr.w sub_ff2dda
	bra.s loc_ff3642

sub_ff3648:
	moveq #$0,d0
	lea dat_ff368e(pc),a2
	move.b $30(a0),d0
	lea $0(a2,d0.w),a2
	btst.b #$6,($fa1a).w
	beq.s loc_ff3676
	move.b ($fa1b).w,d0
	move.b (a2),d1
	cmp.b d1,d0
	bne.s loc_ff3676
	addq.b #$1,$30(a0)
	cmpi.b #$6,$30(a0)
	beq.s loc_ff3682
	bra.s loc_ff367e
loc_ff3676:
	tst.b d0
	beq.s loc_ff367e
	clr.b $30(a0)
loc_ff367e:
	moveq #$0,d0
	rts
loc_ff3682:
	bsr.w sub_ff3770
	moveq #$ffffffff,d0
	move.b d0,($fa1c).w
	rts
dat_ff368e:
	dc.b $01,$02,$02,$02,$02,$01,$ff,$00

sub_ff3696:
	tst.b ($fa1c).w
	beq.s loc_ff36a8
	move.b ($fa18).w,d0
	beq.s loc_ff36a8
	move.w #$1e0,($fa42).w
loc_ff36a8:
	rts

sub_ff36aa:
	moveq #$0,d0
	lea dat_ff36e4(pc),a2
	move.b $34(a0),d0
	lea $0(a2,d0.w),a2
	move.b ($fa1b).w,d0
	move.b (a2),d1
	cmp.b d1,d0
	bne.s loc_ff36d0
	addq.b #$1,$34(a0)
	cmpi.b #$6,$34(a0)
	beq.s loc_ff36dc
	bra.s loc_ff36d8
loc_ff36d0:
	tst.b d0
	beq.s loc_ff36d8
	clr.b $34(a0)
loc_ff36d8:
	moveq #$0,d0
	rts
loc_ff36dc:
	bsr.w sub_ff3770
	moveq #$7,d0
	rts
dat_ff36e4:
	dc.b $02,$02,$02,$04,$08,$40,$ff,$00

sub_ff36ec:
	moveq #$0,d0
	lea dat_ff3726(pc),a2
	move.b $38(a0),d0
	lea $0(a2,d0.w),a2
	move.b ($fa1b).w,d0
	move.b (a2),d1
	cmp.b d1,d0
	bne.s loc_ff3712
	addq.b #$1,$38(a0)
	cmpi.b #$6,$38(a0)
	beq.s loc_ff371e
	bra.s loc_ff371a
loc_ff3712:
	tst.b d0
	beq.s loc_ff371a
	clr.b $38(a0)
loc_ff371a:
	moveq #$0,d0
	rts
loc_ff371e:
	bsr.w sub_ff3770
	moveq #$8,d0
	rts
dat_ff3726:
	dc.b $01,$02,$02,$04,$08,$10,$ff,$00

sub_ff372e:
	moveq #$0,d0
	lea dat_ff3768(pc),a2
	move.b $3c(a0),d0
	lea $0(a2,d0.w),a2
	move.b ($fa1b).w,d0
	move.b (a2),d1
	cmp.b d1,d0
	bne.s loc_ff3754
	addq.b #$1,$3c(a0)
	cmpi.b #$6,$3c(a0)
	beq.s loc_ff3760
	bra.s loc_ff375c
loc_ff3754:
	tst.b d0
	beq.s loc_ff375c
	clr.b $3c(a0)
loc_ff375c:
	moveq #$0,d0
	rts
loc_ff3760:
	bsr.w sub_ff3770
	moveq #$9,d0
	rts
dat_ff3768:
	dc.b $08,$08,$01,$01,$02,$20,$ff,$00

sub_ff3770:
	move.b #$95,($fa1e).w
	rts

sub_ff3778:
	moveq #$0,d0
	move.b $18(a0),d0
	move.b d0,$a(a0)
	move.l a0,-(a7)
	add.w d0,d0
	move.w dat_ff37a0(pc,d0.w),d0
	lea dat_ff37a0(pc,d0.w),a0
	move.l #$58000003,($c00004).l
	bsr.w sub_ff2c08
	movea.l (a7)+,a0
	rts
dat_ff37a0:
	.incbin 6304, 148
loc_ff3834:
	move.l #$ff3918,$6(a0)
	move.w #$a6e0,$4(a0)
	move.b #$1,$3(a0)
	move.w #$b5,$10(a0)
	move.w #$48,$c(a0)
	tst.b $18(a0)
	beq.s loc_ff38bc
	move.w #$a8,$c(a0)
loc_ff3860:
	movea.w $1c(a0),a1
	tst.b $19(a1)
	bne.s loc_ff3878
loc_ff386a:
	clr.b $a(a0)
	clr.w $14(a0)
	bsr.w sub_ff2dda
	bra.s loc_ff3860
loc_ff3878:
	lea ($fa10).w,a2
	moveq #$0,d0
	move.b ($fa0f).w,d0
	addq.b #$1,d0
	move.b $0(a2,d0.w),d0
	cmpi.b #$ff,d0
	beq.s loc_ff386a
	moveq #$0,d0
	move.b $15(a0),d0
	move.b dat_ff38b8(pc,d0.w),$a(a0)
	addi.b #$10,$14(a0)
	bcc.s loc_ff38b2
	addq.b #$1,$15(a0)
	cmpi.b #$3,$15(a0)
	bcs.s loc_ff38b2
	clr.b $15(a0)
loc_ff38b2:
	bsr.w sub_ff2dda
	bra.s loc_ff3860
dat_ff38b8:
	dc.b $04,$05,$06,$00
loc_ff38bc:
	movea.w $1c(a0),a1
	tst.b $19(a1)
	bne.s loc_ff38d4
loc_ff38c6:
	clr.b $a(a0)
	clr.w $14(a0)
	bsr.w sub_ff2dda
	bra.s loc_ff38bc
loc_ff38d4:
	lea ($fa10).w,a2
	moveq #$0,d0
	move.b ($fa0f).w,d0
	subq.b #$1,d0
	move.b $0(a2,d0.w),d0
	cmpi.b #$ff,d0
	beq.s loc_ff38c6
	moveq #$0,d0
	move.b $15(a0),d0
	move.b dat_ff3914(pc,d0.w),$a(a0)
	addi.b #$10,$14(a0)
	bcc.s loc_ff390e
	addq.b #$1,$15(a0)
	cmpi.b #$3,$15(a0)
	bcs.s loc_ff390e
	clr.b $15(a0)
loc_ff390e:
	bsr.w sub_ff2dda
	bra.s loc_ff38bc
dat_ff3914:
	.incbin 6676, 56
loc_ff394c:
	move.l #$ff3972,$6(a0)
	move.w #$e6f0,$4(a0)
	move.b #$1,$3(a0)
	move.w #$5b,$c(a0)
	move.w #$d0,$10(a0)
loc_ff396c:
	bsr.w sub_ff2dda
	bra.s loc_ff396c
	.incbin 6770, 64

sub_ff39b2:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	lea dat_ff3c64(pc),a0
	move.l #$42060003,d0
	moveq #$19,d1
	moveq #$12,d2
	bsr.s sub_ff3a20
	lea dat_ff3a44(pc),a0
	move.l #$6a000003,d0
	moveq #$1f,d1
	moveq #$7,d2
	bsr.s sub_ff39fc
	lea dat_ff3a44(pc),a0
	move.l #$6a400003,d0
	moveq #$1f,d1
	moveq #$7,d2
	bsr.s sub_ff39fc
	lea dat_ff3b44(pc),a0
	move.l #$65800003,d0
	moveq #$1f,d1
	moveq #$8,d2

sub_ff39fc:
	move.l #$800000,d4
loc_ff3a02:
	move.l d0,(a2)
	move.w d1,d3
loc_ff3a06:
	move.w #$300,d6
	move.b (a0)+,d6
	bne.s loc_ff3a12
	move.w #$0,d6
loc_ff3a12:
	move.w d6,(a3)
	dbf d3,loc_ff3a06
	add.l d4,d0
	dbf d2,loc_ff3a02
	rts

sub_ff3a20:
	move.l #$800000,d4
loc_ff3a26:
	move.l d0,(a2)
	move.w d1,d3
loc_ff3a2a:
	move.w (a0)+,d6
	beq.s loc_ff3a32
	addi.w #$c36c,d6
loc_ff3a32:
	addi.w #$0,d6
	move.w d6,(a3)
	dbf d3,loc_ff3a2a
	add.l d4,d0
	dbf d2,loc_ff3a26
	rts
dat_ff3a44:
	.incbin 6980, 256
dat_ff3b44:
	.incbin 7236, 288
dat_ff3c64:
	.incbin 7524, 988
dat_ff4040:
	.incbin 8512, 254
dat_ff413e:
	.incbin 8766, 1386
dat_ff46a8:
	.incbin 10152, 3006
dat_ff5266:
	.incbin 13158, 1586
dat_ff5898:
	.incbin 14744, 2108
dat_ff60d4:
	.incbin 16852, 8834
dat_ff8356:
	.incbin 25686, 1182
dat_ff87f4:
	.incbin 26868, 174
dat_ff88a2:
	.incbin 27042, 46
dat_ff88d0:
	.incbin 27088, 128
dat_ff8950:
	.incbin 27216, 50
