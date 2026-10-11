; PLANET_M.MMD
; disassembled from the disc; code only, data comes from data/PLANET_M.MMD at build time
	.file "PLANET_M.MMD", 22368
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	dc.b $21,$fc,$00,$ff,$2d,$1a,$fd,$08
	moveq #$0,d0
	move.l d0,($a12010).l
	move.l d0,($a12014).l
	move.l d0,($a12018).l
	move.l d0,($a1201c).l
	move.b d0,($a1200e).l
	move.w #$8000,($a1201e).l
	bsr.w sub_ff22c4
	bsr.w sub_ff25f2
	bsr.w sub_ff25c8
	bsr.w sub_ff25fe
	lea ($9000).w,a0
	moveq #$0,d0
	move.w #$1aff,d7
loc_ff204a:
	move.l d0,(a0)+
	dbf d7,loc_ff204a
	bsr.w sub_ff2b06
	bsr.w sub_ff23f8
	bsr.w sub_ff2442
	move.b #$1,($f3ba).w
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	bsr.w sub_ff21e6
	bne.w loc_ff210e
	lea dat_ff48ca(pc),a0
	lea ($ed80).w,a1
	moveq #$1f,d7
loc_ff2086:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff2086
	bsr.w sub_ff309e
	move.b #$0,($f3ba).w
loc_ff2096:
	move.w #$1,($f388).w
	move.w #$0,($f3a4).w
loc_ff20a2:
	tst.w ($f388).w
	blt.s loc_ff2096
	bsr.w sub_ff25a0
	jsr sub_ff4518(pc)
	jsr sub_ff26d6(pc)
	bsr.w sub_ff2998
	addq.w #$1,($f3a4).w
	jsr sub_ff4518(pc)
	jsr sub_ff26d6(pc)
	bsr.w sub_ff2998
	bsr.w sub_ff25e6
	move.w #$2700,sr
	bsr.w sub_ff466c
	bsr.w sub_ff2382
	bsr.w sub_ff2546
	move.w #$2500,sr
	bsr.w sub_ff25c8
	btst.b #$5,($a1200f).l
	beq.s loc_ff20f2
	bsr.w sub_ff211e
loc_ff20f2:
	btst.b #$6,($a1200f).l
	beq.s loc_ff2102
	bsr.w sub_ff2328
	bra.s loc_ff210e
loc_ff2102:
	subq.w #$1,($f388).w
	addq.w #$1,($f3a4).w
	bra.w loc_ff20a2
loc_ff210e:
	move.b #$0,($a1200e).l
	nop
	nop
	nop
	rts

sub_ff211e:
	bsr.w sub_ff2f72
	bsr.w sub_ff287e
	bsr.w sub_ff226e
	bclr.b #$5,($a1200e).l
loc_ff2132:
	bsr.w sub_ff25a0
	bsr.w sub_ff25e6
	bsr.w sub_ff2382
	bsr.w sub_ff25c8
	btst.b #$6,($a1200f).l
	bne.w loc_ff21e4
	btst.b #$4,($a1200f).l
	bne.s loc_ff2132
	move.w #$0,($f3a4).w
	bsr.w sub_ff25a0
	bsr.w sub_ff25e6
	bsr.w sub_ff2382
	bsr.w sub_ff25c8
	bsr.w sub_ff2998
	btst.b #$6,($a1200f).l
	bne.s loc_ff21e4
	move.w #$1,($f3a4).w
	bsr.w sub_ff2998
	btst.b #$6,($a1200f).l
	bne.s loc_ff21e4
	move.w #$2,($f3a4).w
	bsr.w sub_ff25a0
	bsr.w sub_ff25e6
	bsr.w sub_ff2382
	bsr.w sub_ff25c8
	bsr.w sub_ff2998
	btst.b #$6,($a1200f).l
	bne.s loc_ff21e4
	move.w #$3,($f3a4).w
	bsr.w sub_ff2998
	btst.b #$6,($a1200f).l
	bne.s loc_ff21e4
	bclr.b #$0,($f38e).w
	move.b #$0,($f39c).w
	bsr.w sub_ff2ffc
	move.w #$0,($f388).w
	move.w #$ffff,($f3a4).w
loc_ff21e4:
	rts

sub_ff21e6:
	bsr.w sub_ff25a0
	bsr.w sub_ff25e6
	bsr.w sub_ff2382
	bsr.w sub_ff2546
	bsr.w sub_ff25c8
	bsr.w sub_ff2998
	addq.w #$1,($f3a4).w
	bsr.w sub_ff2998
	btst.b #$6,($a1200f).l
	bne.s loc_ff2242
	bsr.w sub_ff25a0
	bsr.w sub_ff25e6
	bsr.w sub_ff2382
	bsr.w sub_ff2546
	bsr.w sub_ff25c8
	addq.w #$1,($f3a4).w
	bsr.w sub_ff2998
	addq.w #$1,($f3a4).w
	bsr.w sub_ff2998
	btst.b #$6,($a1200f).l
	bne.s loc_ff2242
	moveq #$0,d0
	rts
loc_ff2242:
	move.b #$1,($f3ba).w
	bsr.w sub_ff313a
	bset.b #$6,($a1200e).l
loc_ff2254:
	btst.b #$6,($a1200f).l
	beq.s loc_ff2254
	bclr.b #$6,($a1200e).l
	clr.b ($f3ba).w
	moveq #$1,d0
	rts

sub_ff226e:
	bsr.w sub_ff287e

sub_ff2272:
	lea dat_ff484e(pc),a0
	move.w ($f3b6).w,d0
	add.w d0,d0
	add.w d0,d0
	add.w d0,d0
	lea $0(a0,d0.w),a1
	movea.l (a1),a2
	move.w (a2),d1
	adda.w d1,a2
	lea $4(a0,d0.w),a1
	movea.l (a1),a1
	move.l (a1),d1
	adda.w d1,a1
	lea ($ed80).w,a0
	moveq #$7,d7
loc_ff229a:
	move.l (a1)+,(a0)+
	dbf d7,loc_ff229a
	moveq #$7,d7
loc_ff22a2:
	move.l (a2)+,(a0)+
	dbf d7,loc_ff22a2
	lea (dat_ff486a).l,a1
	moveq #$7,d7
loc_ff22b0:
	move.l (a1)+,(a0)+
	dbf d7,loc_ff22b0
	lea (dat_ff48aa).l,a1
	moveq #$7,d7
loc_ff22be:
	move.l (a1)+,(a0)+
	dbf d7,loc_ff22be

sub_ff22c4:
	move.w #$0,d0
	move.w d0,($f382).w
	add.w d0,d0
	lea (dat_ff552a).l,a0
	move.w $0(a0,d0.w),($f380).w
	move.w #$0,d0
	move.w d0,($f386).w
	add.w d0,d0
	lea (dat_ff637e).l,a0
	move.w $0(a0,d0.w),($f384).w
	lea (dat_ff630e).l,a0
	adda.w $0(a0,d0.w),a0
	movea.l #$22000c,a1
	move.w #$d8,d1
	moveq #$1,d7
loc_ff2306:
	move.w (a0)+,d0
	add.w d1,d0
	move.w d0,(a1)+
	move.w (a0)+,d0
	add.w d1,d0
	move.w d0,(a1)
	lea $fe(a1),a1
	dbf d7,loc_ff2306
	move.w #$5,($f38a).w
	move.w #$0,($f38c).w
	rts

sub_ff2328:
	move.b #$1,($f3ba).w
	bsr.w sub_ff313a
	bsr.w sub_ff2272
	bset.b #$6,($a1200e).l
loc_ff233e:
	btst.b #$6,($a1200f).l
	bne.s loc_ff233e
	bclr.b #$6,($a1200e).l
	clr.b ($f3ba).w
	rts
	.incbin 1110, 44

sub_ff2382:
	lea ($21a000).l,a1
	lea ($9000).w,a2
	move.w #$a,d7
loc_ff2390:
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	bsr.s sub_ff23b6
	dbf d7,loc_ff2390
	rts

sub_ff23b6:
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	rts

sub_ff23f8:
	move.w #$2000,d6
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$41800003,d0
	moveq #$1f,d1
	moveq #$15,d2
	bsr.s sub_ff2422
	move.w #$22c0,d6
	move.l #$41c00003,d0
	moveq #$1f,d1
	moveq #$15,d2

sub_ff2422:
	move.l #$800000,d4
loc_ff2428:
	move.l d0,(a2)
	move.w d1,d3
	move.w d6,d5
loc_ff242e:
	move.w d5,(a3)
	addi.w #$16,d5
	dbf d3,loc_ff242e
	add.l d4,d0
	addq.w #$1,d6
	dbf d2,loc_ff2428
	rts

sub_ff2442:
	lea (dat_ff66bc).l,a0
	lea ($9000).w,a1
	bsr.w sub_ff260a
	lea ($9000).w,a1
	lea ($c00004).l,a2
	move.w #$580,d6
	move.l #$60000003,d0
	move.w #$15,d1
loc_ff2468:
	move.l d0,(a2)
	move.w #$1f,d2
loc_ff246e:
	move.w (a1)+,d3
	add.w d6,d3
	move.w d3,($c00000).l
	dbf d2,loc_ff246e
	addi.l #$800000,d0
	dbf d1,loc_ff2468
	move.l #$70000002,($c00004).l
	lea (dat_ff6396).l,a0
	bsr.w sub_ff43d0
	move.l #$5fc00003,($c00004).l
	move.l #$dddddddd,($c00000).l
	move.l #$dddddddd,($c00000).l
	move.l #$dddddddd,($c00000).l
	move.l #$dddddddd,($c00000).l
	move.l #$dddddddd,($c00000).l
	move.l #$dddddddd,($c00000).l
	move.l #$dddddddd,($c00000).l
	move.l #$dddddddd,($c00000).l
	move.l #$ffffffff,($c00000).l
	move.l #$ffffffff,($c00000).l
	move.l #$ffffffff,($c00000).l
	move.l #$ffffffff,($c00000).l
	move.l #$ffffffff,($c00000).l
	move.l #$ffffffff,($c00000).l
	move.l #$ffffffff,($c00000).l
	move.l #$ffffffff,($c00000).l
	rts

sub_ff2546:
	nop
	tst.w ($f384).w
	bne.s loc_ff259e
	cmpi.w #$c,($f386).w
	blt.s loc_ff255c
	move.w #$0,($f386).w
loc_ff255c:
	lea (dat_ff637e).l,a0
	move.w ($f386).w,d0
	add.w d0,d0
	move.w $0(a0,d0.w),($f384).w
	addq.w #$1,($f386).w
	lea (dat_ff630e).l,a0
	adda.w $0(a0,d0.w),a0
	movea.l #$22000c,a1
	move.w #$d8,d1
	moveq #$1,d6
loc_ff2588:
	moveq #$1,d5
loc_ff258a:
	move.w (a0)+,d0
	beq.s loc_ff2590
	add.w d1,d0
loc_ff2590:
	move.w d0,(a1)+
	dbf d5,loc_ff258a
	lea $fc(a1),a1
	dbf d6,loc_ff2588
loc_ff259e:
	rts

sub_ff25a0:
	move.w #$1,($a12012).l
loc_ff25a8:
	tst.w ($a12022).l
	beq.s loc_ff25a8
	nop
	nop
	nop
	move.w #$0,($a12012).l
loc_ff25be:
	tst.w ($a12022).l
	bne.s loc_ff25be
	rts

sub_ff25c8:
	btst.b #$1,($a12003).l
	bne.s loc_ff25e4
loc_ff25d2:
	bset.b #$1,($a12003).l
	btst.b #$1,($a12003).l
	beq.s loc_ff25d2
loc_ff25e4:
	rts

sub_ff25e6:
	btst.b #$0,($a12003).l
	beq.s sub_ff25e6
	rts

sub_ff25f2:
	btst.b #$7,($a1200f).l
	beq.s sub_ff25f2
	rts

sub_ff25fe:
	btst.b #$7,($a1200f).l
	bne.s sub_ff25fe
	rts

sub_ff260a:
	subq.l #$2,a7
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_ff2616:
	lsr.w #$1,d5
	move.w sr,d6
	dbf d4,loc_ff2628
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_ff2628:
	move.w d6,ccr
	bcc.s loc_ff2630
	move.b (a0)+,(a1)+
	bra.s loc_ff2616
loc_ff2630:
	moveq #$0,d3
	lsr.w #$1,d5
	move.w sr,d6
	dbf d4,loc_ff2644
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_ff2644:
	move.w d6,ccr
	bcs.s loc_ff2674
	lsr.w #$1,d5
	dbf d4,loc_ff2658
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_ff2658:
	roxl.w #$1,d3
	lsr.w #$1,d5
	dbf d4,loc_ff266a
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_ff266a:
	roxl.w #$1,d3
	addq.w #$1,d3
	moveq #$ffffffff,d2
	move.b (a0)+,d2
	bra.s loc_ff268a
loc_ff2674:
	move.b (a0)+,d0
	move.b (a0)+,d1
	moveq #$ffffffff,d2
	move.b d1,d2
	lsl.w #$5,d2
	move.b d0,d2
	andi.w #$7,d1
	beq.s loc_ff2696
	move.b d1,d3
	addq.w #$1,d3
loc_ff268a:
	move.b $0(a1,d2.w),d0
	move.b d0,(a1)+
	dbf d3,loc_ff268a
	bra.s loc_ff2616
loc_ff2696:
	move.b (a0)+,d1
	beq.s loc_ff26a6
	cmpi.b #$1,d1
	beq.w loc_ff2616
	move.b d1,d3
	bra.s loc_ff268a
loc_ff26a6:
	addq.l #$2,a7
	rts
	.incbin 1962, 44

sub_ff26d6:
	bsr.w sub_ff31b4
	lea ($ef00).w,a0
	bsr.s sub_ff26e6
	bsr.w sub_ff2796
	rts

sub_ff26e6:
	moveq #$f,d7
loc_ff26e8:
	move.w (a0),d0
	beq.s loc_ff26f6
	movem.l d7/a0,-(a7)
	bsr.s sub_ff2700
	movem.l (a7)+,d7/a0
loc_ff26f6:
	lea $40(a0),a0
	dbf d7,loc_ff26e8
	rts

sub_ff2700:
	add.w d0,d0
	add.w d0,d0
	movea.l $ff2714(pc,d0.w),a1
	jsr (a1)
	btst.b #$4,$2c(a0)
	beq.s loc_ff2716
	bsr.w sub_ff2876
loc_ff2716:
	rts
	.incbin 2072, 126

sub_ff2796:
	lea ($e800).w,a1
	clr.l (a1)+
	clr.l (a1)+
	lea ($ef00).w,a0
	lea ($e800).w,a1
	moveq #$0,d5
	moveq #$f,d7
loc_ff27aa:
	tst.w $0(a0)
	beq.w loc_ff2840
	movea.l $28(a0),a2
	bsr.w sub_ff2854
	move.w $24(a0),d0
	add.w d0,d0
	add.w d0,d0
	adda.w $4(a2,d0.w),a2
	move.w (a2)+,d6
	moveq #$d,d3
loc_ff27ca:
	moveq #$0,d4
	move.w $4(a0),d0
	btst.b #$7,$2c(a0)
	beq.s loc_ff27e2
	sub.w $6(a2),d0
	bset.l #$b,d4
	bra.s loc_ff27e6
loc_ff27e2:
	sub.w $4(a2),d0
loc_ff27e6:
	addi.w #$80,d0
	move.w d0,$6(a1)
	move.w $8(a0),d0
	btst.b #$6,$2c(a0)
	beq.s loc_ff2804
	sub.w $a(a2),d0
	bset.l #$c,d4
	bra.s loc_ff2808
loc_ff2804:
	sub.w $8(a2),d0
loc_ff2808:
	addi.w #$80,d0
	move.w d0,$0(a1)
	addq.w #$1,d5
	move.w d5,d0
	or.w $0(a2),d0
	move.w d0,$2(a1)
	move.w $26(a0),d0
	btst.b #$5,$2c(a0)
	beq.s loc_ff282c
	bset.l #$f,d0
loc_ff282c:
	add.w $2(a2),d0
	eor.w d4,d0
	move.w d0,$4(a1)
	addq.l #$8,a1
	adda.w #$c,a2
	dbf d6,loc_ff27ca
loc_ff2840:
	lea $40(a0),a0
	dbf d7,loc_ff27aa
	tst.w d5
	beq.s loc_ff2852
	move.b #$0,-$5(a1)
loc_ff2852:
	rts

sub_ff2854:
	subq.w #$1,$22(a0)
	bhi.s loc_ff2874
	move.w $24(a0),d0
	addq.w #$1,d0
	cmp.w (a2),d0
	bcs.s loc_ff2866
	moveq #$0,d0
loc_ff2866:
	move.w d0,$24(a0)
	add.w d0,d0
	add.w d0,d0
	move.w $2(a2,d0.w),$22(a0)
loc_ff2874:
	rts

sub_ff2876:
	movea.l a0,a1
	moveq #$0,d1
	bra.w sub_ff28b0

sub_ff287e:
	lea ($ef00).w,a1
	moveq #$0,d1
	moveq #$f,d0
loc_ff2886:
	jsr sub_ff28b0(pc)
	dbf d0,loc_ff2886
	rts
	.incbin 2448, 32

sub_ff28b0:
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
	.incbin 2514, 198

sub_ff2998:
	move.b #$1,($f39f).w
	move.w #$2500,sr
loc_ff29a2:
	tst.b ($f39f).w
	bne.s loc_ff29a2
	rts
	dc.b $33,$fc,$ff,$00,$00,$a1,$20,$1e
	dc.b $4e,$75

sub_ff29b4:
	move.l d1,-(a7)
	move.l ($f3ac).w,d1
	bne.s loc_ff29c2
	move.l #$2a6d365a,d1
loc_ff29c2:
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
	move.l d1,($f3ac).w
	move.l (a7)+,d1
	rts
	.incbin 2782, 296

sub_ff2b06:
	lea dat_ff2ca8(pc),a0
	move.w #$8000,d0
	moveq #$12,d7
loc_ff2b10:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff2b10
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bra.s loc_ff2b76
	.incbin 3134, 56
loc_ff2b76:
	bsr.w sub_ff2cbc
	lea ($c00004).l,a6
	move.w #$8f01,(a6)
	move.l #$93ff94ff,(a6)
	move.w #$9780,(a6)
	move.l #$40000080,(a6)
	move.w #$0,($c00000).l
loc_ff2b9c:
	btst.b #$1,$1(a6)
	bne.s loc_ff2b9c
	move.l #$40000000,(a6)
	move.w #$0,($c00000).l
	move.w #$8f02,(a6)
	move.l #$40000003,($c00004).l
	move.w #$7ff,d7
loc_ff2bc4:
	move.w #$e6ff,($c00000).l
	dbf d7,loc_ff2bc4
	move.l #$60000003,($c00004).l
	move.w #$7ff,d7
loc_ff2bde:
	move.w #$6fe,($c00000).l
	dbf d7,loc_ff2bde
	move.l #$c0000000,($c00004).l
	lea dat_ff2c28(pc),a0
	moveq #$0,d0
	moveq #$1f,d7
loc_ff2bfc:
	move.l d0,($c00000).l
	dbf d7,loc_ff2bfc
	move.l #$40000010,($c00004).l
	move.l #$ffe0,($c00000).l
	bsr.w sub_ff2cd4
	move.w #$8134,($ff0f16).l
	rts
dat_ff2c28:
	.incbin 3368, 128
dat_ff2ca8:
	.incbin 3496, 20

sub_ff2cbc:
	move.w sr,($f3aa).w
	move.w #$100,($a11100).l
loc_ff2cc8:
	btst.b #$0,($a11100).l
	bne.s loc_ff2cc8
	rts

sub_ff2cd4:
	move.w #$0,($a11100).l
	move.w ($f3aa).w,sr
	rts
	.incbin 3554, 656

sub_ff2f72:
	move.w #$3f,($f3b8).w
	move.w #$15,d4
loc_ff2f7c:
	move.b #$a,($f3b4).w
	bsr.w sub_ff2998
	bsr.s sub_ff2f8e
	dbf d4,loc_ff2f7c
	rts

sub_ff2f8e:
	moveq #$0,d0
	lea ($ed00).w,a0
	move.b ($f3b8).w,d0
	adda.w d0,a0
	move.b ($f3b9).w,d0
loc_ff2f9e:
	bsr.s sub_ff2fbc
	dbf d0,loc_ff2f9e
	moveq #$0,d0
	lea ($ed80).w,a0
	move.b ($f3b8).w,d0
	adda.w d0,a0
	move.b ($f3b9).w,d0
loc_ff2fb4:
	bsr.s sub_ff2fbc
	dbf d0,loc_ff2fb4
	rts

sub_ff2fbc:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_ff2ff8
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_ff2fd4
	addq.w #$2,(a0)+
	rts
loc_ff2fd4:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_ff2fe6
	addi.w #$20,(a0)+
	rts
loc_ff2fe6:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_ff2ff8
	addi.w #$200,(a0)+
	rts
loc_ff2ff8:
	addq.w #$2,a0
	rts

sub_ff2ffc:
	move.w #$3f,($f3b8).w
	moveq #$0,d0
	lea ($ed00).w,a0
	move.b ($f3b8).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f3b9).w,d0
loc_ff3016:
	move.w d1,(a0)+
	dbf d0,loc_ff3016
	move.w #$15,d4
loc_ff3020:
	move.b #$a,($f39f).w
	bsr.w sub_ff2998
	bsr.s sub_ff3032
	dbf d4,loc_ff3020
	rts

sub_ff3032:
	moveq #$0,d0
	lea ($ed00).w,a0
	lea ($ed80).w,a1
	move.b ($f3b8).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f3b9).w,d0
loc_ff3048:
	bsr.s sub_ff306e
	dbf d0,loc_ff3048
	bra.s loc_ff306c
	.incbin 4432, 28
loc_ff306c:
	rts

sub_ff306e:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_ff309a
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_ff3086
	cmp.w d2,d1
	bcs.s loc_ff3086
	move.w d1,(a0)+
	rts
loc_ff3086:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_ff3096
	cmp.w d2,d1
	bcs.s loc_ff3096
	move.w d1,(a0)+
	rts
loc_ff3096:
	subq.w #$2,(a0)+
	rts
loc_ff309a:
	addq.w #$2,a0
	rts

sub_ff309e:
	move.w #$3f,($f3b8).w
	moveq #$0,d0
	lea ($ed00).w,a0
	move.b ($f3b8).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f3b9).w,d0
loc_ff30b6:
	move.w d1,(a0)+
	dbf d0,loc_ff30b6
	move.w #$15,d4
loc_ff30c0:
	move.b #$a,($f39f).w
	bsr.w sub_ff2998
	bsr.s sub_ff30d2
	dbf d4,loc_ff30c0
	rts

sub_ff30d2:
	moveq #$0,d0
	lea ($ed00).w,a0
	lea ($ed80).w,a1
	move.b ($f3b8).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f3b9).w,d0
loc_ff30e8:
	bsr.s sub_ff310e
	dbf d0,loc_ff30e8
	bra.s loc_ff310c
	.incbin 4592, 28
loc_ff310c:
	rts

sub_ff310e:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_ff3136
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_ff3124
	move.w d1,(a0)+
	rts
loc_ff3124:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_ff3132
	move.w d1,(a0)+
	rts
loc_ff3132:
	addq.w #$2,(a0)+
	rts
loc_ff3136:
	addq.w #$2,a0
	rts

sub_ff313a:
	move.w #$3f,($f3b8).w
	move.w #$15,d4
loc_ff3144:
	move.b #$a,($f39f).w
	bsr.w sub_ff2998
	bsr.s sub_ff3156
	dbf d4,loc_ff3144
	rts

sub_ff3156:
	moveq #$0,d0
	lea ($ed00).w,a0
	move.b ($f3b8).w,d0
	adda.w d0,a0
	move.b ($f3b9).w,d0
loc_ff3166:
	bsr.s sub_ff3184
	dbf d0,loc_ff3166
	moveq #$0,d0
	lea ($ee00).w,a0
	move.b ($f3b8).w,d0
	adda.w d0,a0
	move.b ($f3b9).w,d0
loc_ff317c:
	bsr.s sub_ff3184
	dbf d0,loc_ff317c
	rts

sub_ff3184:
	move.w (a0),d2
	beq.s loc_ff31b0
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_ff3194
	subq.w #$2,(a0)+
	rts
loc_ff3194:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_ff31a2
	subi.w #$20,(a0)+
	rts
loc_ff31a2:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_ff31b0
	subi.w #$200,(a0)+
	rts
loc_ff31b0:
	addq.w #$2,a0
	rts

sub_ff31b4:
	btst.b #$0,($f38e).w
	beq.s loc_ff31be
	rts
loc_ff31be:
	lea ($f390).w,a2
	moveq #$5,d5
loc_ff31c4:
	subq.w #$1,(a2)
	bcs.s loc_ff31d2
	adda.w #$2,a2
	dbf d5,loc_ff31c4
	rts
loc_ff31d2:
	move.w d5,d0
	add.w d0,d0
	add.w d0,d0
	lea dat_ff3206(pc,d0.w),a1
	move.w (a1)+,(a2)
	movem.l d5/a1-a2,-(a7)
	jsr sub_ff29b4(pc)
	movem.l (a7)+,d5/a1-a2
	andi.l #$ffff,d0
	moveq #$0,d1
	move.w (a1),d1
	divs.w d1,d0
	swap d0
	add.w d0,(a2)
	move.w d5,d0
	add.w d0,d0
	move.w dat_ff321e(pc,d0.w),d0
	jmp dat_ff321e(pc,d0.w)
dat_ff3206:
	.incbin 4870, 24
dat_ff321e:
	.incbin 4894, 3906

sub_ff4160:
	lea ($c00004).l,a5
	moveq #$3,d2
loc_ff4168:
	moveq #$0,d1
	move.b d0,d1
	beq.s loc_ff4180
	lsl.w #$3,d1
	lea dat_ff4188(pc),a0
	move.l -$8(a0,d1.w),(a5)
	movea.l -$4(a0,d1.w),a0
	jsr sub_ff43d0(pc)
loc_ff4180:
	ror.l #$8,d0
	dbf d2,loc_ff4168
	rts
dat_ff4188:
	.incbin 8840, 584

sub_ff43d0:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff449a).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff43ec
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $44,$b0
loc_ff43ec:
	lea ($eb00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff43fa
	adda.w #$a,a3
loc_ff43fa:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff44c6(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff4422
	nop
	nop
	nop
	nop
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff4422:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff446e
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff444a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff444a:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff4458:
	lsr.w #$4,d0
loc_ff445a:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff4468
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff4468:
	dbf d0,loc_ff445a
	bra.s sub_ff4422
loc_ff446e:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff447c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff447c:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff4458
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff4458
dat_ff449a:
	.incbin 9626, 44

sub_ff44c6:
	move.b (a0)+,d0
loc_ff44c8:
	cmpi.b #$ff,d0
	bne.s loc_ff44d0
	rts
loc_ff44d0:
	move.w d0,d7
loc_ff44d2:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff44c8
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
	bne.s loc_ff4500
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff44d2
loc_ff4500:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff450c:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff450c
	bra.s loc_ff44d2

sub_ff4518:
	lea ($f340).w,a2
	moveq #$0,d0
	move.w $0(a2),d0
	add.w d0,d0
	move.w dat_ff452c(pc,d0.w),d0
	jmp dat_ff452c(pc,d0.w)
dat_ff452c:
	.incbin 9772, 320

sub_ff466c:
	btst.b #$1,($f38e).w
	beq.s loc_ff46ce
	bclr.b #$1,($f38e).w
	lea ($f340).w,a2
	movea.w $4(a2),a1
	move.w #$7,$0(a1)
	btst.b #$0,($f39c).w
	bne.s loc_ff46b0
	bset.b #$0,($f39c).w
	move.w #$5b8,$26(a1)
	move.b #$1,$2d(a1)
	move.w #$a,d0
	add.w $2(a2),d0
	jsr sub_ff4160(pc)
	bra.s loc_ff46ce
loc_ff46b0:
	bset.b #$1,($f39c).w
	move.w #$5dc,$26(a1)
	move.b #$2,$2d(a1)
	move.w #$2a,d0
	add.w $2(a2),d0
	jsr sub_ff4160(pc)
loc_ff46ce:
	rts
	.incbin 10192, 382
dat_ff484e:
	.incbin 10574, 28
dat_ff486a:
	.incbin 10602, 64
dat_ff48aa:
	.incbin 10666, 32
dat_ff48ca:
	.incbin 10698, 3168
dat_ff552a:
	.incbin 13866, 3556
dat_ff630e:
	.incbin 17422, 112
dat_ff637e:
	.incbin 17534, 24
dat_ff6396:
	.incbin 17558, 806
dat_ff66bc:
	.incbin 18364, 4004
