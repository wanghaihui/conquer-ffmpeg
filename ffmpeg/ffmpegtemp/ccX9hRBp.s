	.arch armv5te
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"sanm.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	__aeabi_idiv
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.type	make_glyphs, %function
make_glyphs:
.LFB151:
	.file 1 "libavcodec/sanm.c"
	.loc 1 387 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	mov	r8, r3
	.loc 1 388 0
	mul	r3, r8, r8
.LVL1:
	.loc 1 387 0
	sub	sp, sp, #84
	.cfi_def_cfa_offset 120
	.loc 1 388 0
	str	r3, [sp, #60]
	sub	r3, r2, #1
	str	r3, [sp, #36]
	sub	r3, r1, #1
	str	r3, [sp, #56]
	ldr	r3, [sp, #60]
.LBB577:
.LBB578:
.LBB579:
	.loc 1 333 0
	mov	ip, r8
	mov	r3, r3, asl #4
	str	r3, [sp, #68]
	add	r3, r1, #15
	str	r3, [sp, #64]
.LBE579:
.LBE578:
.LBE577:
	.loc 1 388 0
	ldr	r3, [sp, #56]
	str	r3, [sp, #20]
	ldr	r3, [sp, #36]
	str	r3, [sp, #40]
.LBB601:
.LBB584:
.LBB580:
	.loc 1 328 0
	sub	r3, r8, #1
.LBE580:
.LBE584:
.LBE601:
	.loc 1 387 0
	str	r0, [sp, #24]
.LVL2:
.LBB602:
.LBB585:
.LBB581:
	.loc 1 328 0
	str	r3, [sp, #12]
.LVL3:
.L23:
.LBE581:
.LBE585:
	.loc 1 394 0
	ldr	r3, [sp, #40]
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #40]
	.loc 1 393 0
	ldr	r3, [sp, #20]
	.loc 1 394 0
	str	r2, [sp, #32]
	.loc 1 393 0
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #20]
.LVL4:
	.loc 1 394 0
	ldr	r3, [sp, #32]
.LVL5:
	.loc 1 393 0
	str	r2, [sp, #28]
	.loc 1 394 0
	mov	r3, r3, asl #24
.LBB586:
.LBB582:
	.loc 1 330 0
	movs	r3, r3, asr #24
	str	r3, [sp, #16]
.LBE582:
.LBE586:
	.loc 1 393 0
	mov	r3, r2, asl #24
	mov	r3, r3, asr #24
	str	r3, [sp, #4]
.LVL6:
.LBB587:
.LBB583:
	.loc 1 331 0
	moveq	r4, #3
	.loc 1 330 0
	beq	.L2
	.loc 1 332 0
	ldr	r3, [sp, #16]
.LVL7:
	ldr	r2, [sp, #12]
	cmp	r3, r2
	.loc 1 333 0
	moveq	r4, #1
	.loc 1 332 0
	beq	.L2
	.loc 1 334 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	.loc 1 335 0
	ldreq	r4, [sp, #4]
	.loc 1 334 0
	beq	.L2
	.loc 1 339 0
	cmp	r3, r2
	moveq	r4, #2
	movne	r4, #4
.L2:
.LVL8:
	ldr	r10, [sp, #24]
	ldr	r3, [sp, #36]
	str	r3, [sp, #48]
	mov	r9, r10
	ldr	r3, [sp, #56]
	mov	r5, ip
	str	r3, [sp, #8]
.LVL9:
.L22:
.LBE583:
.LBE587:
.LBB588:
	.loc 1 399 0
	ldr	r3, [sp, #48]
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #48]
	.loc 1 398 0
	ldr	r3, [sp, #8]
	.loc 1 399 0
	mov	lr, r2, asl #24
	.loc 1 398 0
	ldrsb	ip, [r3, #1]!
.LBB589:
.LBB590:
	.loc 1 330 0
	movs	lr, lr, asr #24
.LBE590:
.LBE589:
	.loc 1 399 0
	str	r2, [sp, #44]
	.loc 1 398 0
	str	r3, [sp, #8]
.LVL10:
.LBB592:
.LBB591:
	.loc 1 331 0
	moveq	r2, #3
	.loc 1 330 0
	beq	.L3
	.loc 1 332 0
	ldr	r3, [sp, #12]
.LVL11:
	cmp	lr, r3
	.loc 1 333 0
	moveq	r2, #1
	.loc 1 332 0
	beq	.L3
	.loc 1 334 0
	cmp	ip, #0
	.loc 1 335 0
	moveq	r2, ip
	.loc 1 334 0
	beq	.L3
	.loc 1 339 0
	cmp	ip, r3
	moveq	r2, #2
	movne	r2, #4
.L3:
.LVL12:
.LBE591:
.LBE592:
.LBB593:
.LBB594:
	.loc 1 344 0
	sub	r3, r2, #2
	clz	r1, r4
	clz	r3, r3
	mov	r1, r1, lsr #5
	mov	r3, r3, lsr #5
	tst	r3, r1
	bne	.L35
	.loc 1 345 0
	sub	r6, r4, #2
	clz	r0, r2
	clz	r6, r6
	mov	r0, r0, lsr #5
	mov	r6, r6, lsr #5
	.loc 1 344 0 discriminator 1
	tst	r0, r6
	bne	.L35
	.loc 1 346 0
	sub	r8, r4, #3
	clz	r8, r8
	mov	r8, r8, lsr #5
	.loc 1 345 0
	cmp	r2, #1
	moveq	r7, #0
	andne	r7, r8, #1
	cmp	r7, #0
	bne	.L35
	.loc 1 347 0
	sub	fp, r2, #3
	clz	fp, fp
	mov	fp, fp, lsr #5
	.loc 1 346 0
	cmp	r4, #1
	moveq	r7, #0
	andne	r7, fp, #1
	cmp	r7, #0
	bne	.L35
	.loc 1 349 0
	sub	r10, r4, #1
	clz	r10, r10
	mov	r10, r10, lsr #5
	cmp	r2, #3
	moveq	r7, #0
	andne	r7, r10, #1
	cmp	r7, #0
	bne	.L37
	.loc 1 350 0
	sub	r7, r2, #1
	clz	r7, r7
	mov	r7, r7, lsr #5
	str	r7, [sp, #52]
	.loc 1 349 0 discriminator 1
	cmp	r4, #3
	moveq	r7, #0
	andne	r7, r7, #1
	cmp	r7, #0
	bne	.L37
	.loc 1 352 0
	cmp	r2, #2
	moveq	r1, #0
	andne	r1, r1, #1
	cmp	r1, #0
	bne	.L4
	.loc 1 352 0 is_stmt 0 discriminator 1
	cmp	r4, #2
	moveq	r0, #0
	andne	r0, r0, #1
	cmp	r0, #0
	.loc 1 354 0 is_stmt 1
	movne	r7, r1
	.loc 1 352 0 discriminator 1
	bne	.L4
	.loc 1 355 0
	tst	fp, r10
	bne	.L42
	.loc 1 355 0 is_stmt 0 discriminator 1
	ldr	r1, [sp, #52]
	tst	r1, r8
	bne	.L42
	.loc 1 356 0 is_stmt 1
	cmp	r2, #0
	moveq	r2, #0
	andne	r2, r6, #1
.LVL13:
	cmp	r2, #0
	bne	.L42
	.loc 1 357 0
	cmp	r4, #0
	moveq	r7, #0
	andne	r7, r3, #1
	.loc 1 361 0
	cmp	r7, #0
	movne	r7, #2
	moveq	r7, #4
	b	.L4
.LVL14:
.L35:
	.loc 1 348 0
	mov	r7, #1
	b	.L4
.L37:
	.loc 1 351 0
	mov	r7, #3
	b	.L4
.LVL15:
.L42:
	.loc 1 359 0
	mov	r7, #2
.L4:
.LBE594:
.LBE593:
	.loc 1 402 0
	ldr	r3, [sp, #4]
	.loc 1 405 0
	mov	r1, r4
	.loc 1 402 0
	rsb	r8, r3, ip
	ldr	r3, [sp, #16]
	cmp	r8, #0
	rsb	r2, r3, lr
	rsblt	r8, r8, #0
	cmp	r2, #0
	rsblt	r2, r2, #0
	ldr	r3, [sp, #44]
	cmp	r8, r2
	movlt	r8, r2
.LVL16:
	mov	r3, r3, asl #24
	mov	r3, r3, asr #24
.LBB595:
.LBB596:
.LBB597:
	.loc 1 369 0
	mov	r10, r8, asr #1
	mla	r2, r3, r8, r10
	ldr	r3, [sp, #16]
	str	r2, [sp, #44]
	ldr	r2, [sp, #4]
	mov	fp, #0
	mla	r10, ip, r8, r10
	rsb	r3, lr, r3
	rsb	ip, ip, r2
.LBE597:
.LBE596:
.LBE595:
	.loc 1 405 0
	mov	r4, fp
.LVL17:
	mov	r2, r1
.LVL18:
.L21:
.LBB600:
.LBB599:
.LBB598:
	.loc 1 368 0
	cmp	r8, #0
	.loc 1 373 0
	ldreq	r0, [sp, #32]
	.loc 1 372 0
	ldreq	r6, [sp, #28]
	.loc 1 368 0
	beq	.L5
	.loc 1 369 0
	mov	r1, r8
	mov	r0, r10
	str	r2, [sp, #72]
	str	ip, [sp, #52]
	str	r3, [sp, #76]
	bl	__aeabi_idiv(PLT)
.LVL19:
	.loc 1 370 0
	ldr	r3, [sp, #44]
	mov	r1, r8
	.loc 1 369 0
	mov	r6, r0
	.loc 1 370 0
	add	r0, fp, r3
	bl	__aeabi_idiv(PLT)
.LVL20:
	ldr	ip, [sp, #52]
	ldr	r2, [sp, #72]
	ldr	r3, [sp, #76]
	.loc 1 369 0
	and	r6, r6, #255
.LVL21:
	.loc 1 370 0
	and	r0, r0, #255
.LVL22:
.L5:
.LBE598:
.LBE599:
	.loc 1 411 0
	cmp	r7, #3
	addls	pc, pc, r7, asl #2
	b	.L6
.L8:
	b	.L7
	b	.L9
	b	.L10
	b	.L11
	.p2align 1
.L9:
	.loc 1 413 0
	mov	r0, r0, asl #24
.LVL23:
	mov	r6, r6, asl #24
.LVL24:
	mov	r0, r0, asr #24
.LVL25:
	add	r6, r5, r6, asr #24
	mla	r6, r5, r0, r6
	mov	r1, #0
	add	r6, r9, r6
.L12:
	.loc 1 413 0 is_stmt 0 discriminator 1
	cmp	r0, #0
	rsb	r1, r5, r1
	.loc 1 413 0 discriminator 3
	sub	r0, r0, #1
.LVL26:
	.loc 1 413 0 discriminator 1
	blt	.L6
	.loc 1 414 0 is_stmt 1
	mov	lr, #1
	strb	lr, [r6, r1]
	b	.L12
.LVL27:
.L11:
	.loc 1 418 0
	mov	r0, r0, asl #24
.LVL28:
	mov	r6, r6, asl #24
.LVL29:
	mov	r0, r0, asr #24
.LVL30:
	rsb	r6, r5, r6, asr #24
	mla	r6, r5, r0, r6
	mov	r1, #0
	add	r6, r9, r6
.L14:
	.loc 1 418 0 is_stmt 0 discriminator 1
	cmp	r0, r5
	add	r1, r1, r5
	.loc 1 418 0 discriminator 3
	add	r0, r0, #1
.LVL31:
	.loc 1 418 0 discriminator 1
	bge	.L6
	.loc 1 419 0 is_stmt 1
	mov	lr, #1
	strb	lr, [r6, r1]
	b	.L14
.LVL32:
.L7:
	mov	r0, r0, asl #24
.LVL33:
	mov	r0, r0, asr #24
	mla	r0, r5, r0, r9
	.loc 1 423 0
	mov	r6, r6, asl #24
.LVL34:
	mov	r6, r6, asr #24
.LVL35:
.L17:
	.loc 1 423 0 is_stmt 0 discriminator 1
	cmp	r6, #0
	blt	.L6
	.loc 1 424 0 is_stmt 1
	mov	r1, #1
	strb	r1, [r0, r6]
	.loc 1 423 0 discriminator 3
	sub	r6, r6, #1
.LVL36:
	b	.L17
.LVL37:
.L10:
	mov	r0, r0, asl #24
.LVL38:
	mov	r0, r0, asr #24
	mla	r0, r5, r0, r9
	.loc 1 428 0
	mov	r6, r6, asl #24
.LVL39:
	mov	r6, r6, asr #24
.LVL40:
.L19:
	.loc 1 428 0 is_stmt 0 discriminator 1
	cmp	r6, r5
	.loc 1 429 0 is_stmt 1
	movlt	r1, #1
	strltb	r1, [r0, r6]
	.loc 1 428 0 discriminator 3
	addlt	r6, r6, r1
.LVL41:
	blt	.L19
.LVL42:
.L6:
.LBE600:
	.loc 1 405 0 discriminator 2
	add	r4, r4, #1
.LVL43:
	.loc 1 405 0 is_stmt 0 discriminator 1
	cmp	r4, r8
	add	r10, r10, ip
	add	fp, fp, r3
	ble	.L21
.LBE588:
	.loc 1 397 0 is_stmt 1 discriminator 1
	ldr	r3, [sp, #8]
	mov	r4, r2
.LVL44:
	ldr	r2, [sp, #64]
.LVL45:
	cmp	r3, r2
	ldr	r3, [sp, #60]
.LVL46:
	add	r9, r9, r3
.LVL47:
	bne	.L22
.LBE602:
	.loc 1 392 0 discriminator 1
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #8]
	mov	ip, r5
	cmp	r3, r2
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #68]
	add	r3, r3, r2
	str	r3, [sp, #24]
.LVL48:
	bne	.L23
	.loc 1 435 0
	add	sp, sp, #84
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE151:
	.size	make_glyphs, .-make_glyphs
	.text
	.align	2
	.type	decode_4, %function
decode_4:
.LFB176:
	.loc 1 1250 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL49:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 1250 0
	mov	r3, r0
	.loc 1 1251 0
	ldr	r1, [r3, #2616]
	ldr	r2, [r3, #2632]
	ldr	r0, [r0, #2612]
.LVL50:
	bl	memcpy(PLT)
.LVL51:
	.loc 1 1253 0
	mov	r0, #0
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE176:
	.size	decode_4, .-decode_4
	.align	2
	.type	decode_3, %function
decode_3:
.LFB175:
	.loc 1 1244 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL52:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 1244 0
	mov	r3, r0
	.loc 1 1245 0
	ldr	r1, [r3, #2620]
	ldr	r2, [r3, #2636]
	ldr	r0, [r0, #2612]
.LVL53:
	bl	memcpy(PLT)
.LVL54:
	.loc 1 1247 0
	mov	r0, #0
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE175:
	.size	decode_3, .-decode_3
	.align	2
	.type	process_block, %function
process_block:
.LFB162:
	.loc 1 771 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL55:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB650:
.LBB651:
	.file 2 "libavcodec/bytestream.h"
	.loc 2 156 0
	ldmib	r0, {r10, ip}
.LBE651:
.LBE650:
	.loc 1 771 0
	sub	sp, sp, #24
	.cfi_def_cfa_offset 56
	.loc 1 776 0
	cmp	r10, ip
	.loc 1 771 0
	ldr	r5, [sp, #56]
	ldr	r4, [sp, #64]
	.loc 1 776 0
	beq	.L91
	mov	r6, r3
.LBB652:
.LBB653:
.LBB654:
	.loc 2 95 0
	add	r3, r10, #1
.LVL56:
	mov	r8, r0
.LVL57:
	str	r3, [r0, #4]
	ldrb	r0, [r10]	@ zero_extendqisi2
.LVL58:
	mov	r9, r2
.LBE654:
.LBE653:
.LBE652:
	.loc 1 780 0
	cmp	r0, #247
	mov	r7, r1
	bgt	.L92
.LBB655:
	.loc 1 840 0
	ldr	r3, .L95
	.loc 1 842 0
	ldr	r1, [r8, #2620]
.LVL59:
	.loc 1 840 0
.LPIC8:
	add	r3, pc, r3
	.loc 1 841 0
	add	ip, r3, r0, asl #1
	.loc 1 840 0
	ldrb	r2, [r3, r0, asl #1]	@ zero_extendqisi2
.LVL60:
	.loc 1 841 0
	ldrsb	r3, [ip, #1]
	.loc 1 840 0
	mov	r2, r2, asl #24
	.loc 1 846 0
	mul	r0, r5, r3
.LVL61:
	.loc 1 840 0
	mov	r2, r2, asr #24
.LVL62:
	.loc 1 846 0
	rsb	ip, r2, #0
	rsb	ip, r0, ip
	.loc 1 842 0
	rsb	r1, r1, r6
.LVL63:
	.loc 1 846 0
	cmp	r1, ip
	blt	.L78
	.loc 1 847 0
	add	r3, r3, r4
.LVL64:
	add	ip, r2, r4
	sub	r3, r3, #1
	mla	r3, r5, r3, ip
	ldr	ip, [r8, #2660]
	rsb	r1, r1, ip, asr #1
.LVL65:
	.loc 1 846 0 discriminator 1
	cmp	r1, r3
	blt	.L78
.LVL66:
	.loc 1 852 0 discriminator 1
	cmp	r4, #0
	addgt	r2, r0, r2
.LVL67:
	movgt	r3, r7
	addgt	r6, r6, r2
.LVL68:
	movgt	r7, #0
.LVL69:
	ble	.L67
.LVL70:
.L80:
	.loc 1 853 0
	mov	r0, r3
	mov	r1, r6
	mov	r2, r4
	bl	memcpy(PLT)
.LVL71:
	.loc 1 852 0 discriminator 3
	add	r7, r7, #1
.LVL72:
	.loc 1 852 0 is_stmt 0 discriminator 1
	cmp	r7, r4
	add	r6, r6, r5
	add	r3, r0, r5
	bne	.L80
.LVL73:
.L67:
.LBE655:
	.loc 1 856 0 is_stmt 1
	mov	r0, #0
.LVL74:
.L56:
	.loc 1 857 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL75:
.L92:
	.cfi_restore_state
	.loc 1 781 0
	sub	r2, r0, #252
.LVL76:
	cmp	r2, #3
	addls	pc, pc, r2, asl #2
	b	.L58
.L60:
	b	.L59
	b	.L61
	b	.L62
	b	.L63
	.p2align 1
.L63:
	.loc 1 783 0
	cmp	r4, #2
	beq	.L93
	.loc 1 792 0
	ldr	r3, [sp, #60]
	.loc 1 791 0
	mov	r4, r4, asr #1
.LVL77:
	.loc 1 792 0
	str	r3, [sp, #4]
	str	r4, [sp, #8]
	str	r5, [sp]
	mov	r0, r8
.LVL78:
	mov	r2, r9
.LVL79:
	mov	r3, r6
	bl	process_block(PLT)
.LVL80:
	cmp	r0, #0
	bne	.L91
	.loc 1 794 0
	ldr	r3, [sp, #60]
	str	r5, [sp]
	stmib	sp, {r3, r4}
	mov	r0, r8
	add	r1, r7, r4
	add	r2, r9, r4
	add	r3, r6, r4
	bl	process_block(PLT)
.LVL81:
	cmp	r0, #0
	bne	.L91
	.loc 1 797 0
	mul	r0, r5, r4
	.loc 1 800 0
	ldr	r3, [sp, #60]
	.loc 1 797 0
	add	r7, r7, r0
.LVL82:
	.loc 1 798 0
	add	r9, r9, r0
.LVL83:
	.loc 1 799 0
	add	r6, r6, r0
.LVL84:
	.loc 1 800 0
	stmib	sp, {r3, r4}
	str	r5, [sp]
	mov	r1, r7
	mov	r2, r9
	mov	r3, r6
	mov	r0, r8
	bl	process_block(PLT)
.LVL85:
	cmp	r0, #0
	bne	.L91
	.loc 1 802 0
	ldr	r3, [sp, #60]
	str	r5, [sp]
	stmib	sp, {r3, r4}
	mov	r0, r8
	add	r1, r7, r4
	add	r2, r9, r4
	add	r3, r6, r4
	bl	process_block(PLT)
.LVL86:
	cmp	r0, #0
	beq	.L56
.LVL87:
.L91:
.LBB656:
	.loc 1 849 0
	ldr	r0, .L95+4
	b	.L56
.LVL88:
.L62:
.LBE656:
	.loc 1 808 0
	cmp	r3, ip
	beq	.L91
.LVL89:
.LBB657:
.LBB658:
.LBB659:
	.loc 2 95 0
	add	r3, r10, #2
.LBE659:
.LBE658:
.LBE657:
	.loc 1 812 0 discriminator 1
	cmp	r4, #0
.LBB662:
.LBB661:
.LBB660:
	.loc 2 95 0
	str	r3, [r8, #4]
.LBE660:
.LBE661:
.LBE662:
	.loc 1 811 0
	ldrb	r8, [r10, #1]	@ zero_extendqisi2
.LVL90:
	.loc 1 812 0 discriminator 1
	ble	.L67
	mov	r3, r1
	mov	r6, #0
.LVL91:
.L68:
	.loc 1 813 0
	mov	r0, r3
	mov	r1, r8
	mov	r2, r4
	bl	memset(PLT)
.LVL92:
	.loc 1 812 0 discriminator 3
	add	r6, r6, #1
.LVL93:
	.loc 1 812 0 is_stmt 0 discriminator 1
	cmp	r6, r4
	add	r3, r0, r5
	bne	.L68
	b	.L67
.LVL94:
.L61:
.LBB663:
.LBB664:
	.loc 2 156 0 is_stmt 1
	rsb	r3, r3, ip
.LBE664:
.LBE663:
	.loc 1 816 0
	cmp	r3, #2
	bls	.L91
.LVL95:
.LBB665:
.LBB666:
.LBB667:
	.loc 2 95 0
	add	r1, r10, #2
.LVL96:
.LBE667:
.LBE666:
.LBE665:
	.loc 1 820 0
	cmp	r4, #8
.LBB670:
.LBB669:
.LBB668:
	.loc 2 95 0
	str	r1, [r8, #4]
.LBE668:
.LBE669:
.LBE670:
	.loc 1 819 0
	ldrb	r3, [r10, #1]	@ zero_extendqisi2
.LVL97:
	.loc 1 820 0
	beq	.L94
	.loc 1 820 0 is_stmt 0 discriminator 2
	add	r3, r3, #199
.LVL98:
.LBB671:
.LBB672:
	.loc 2 277 0 is_stmt 1
	add	r0, sp, #20
	mov	r2, #2
.LBE672:
.LBE671:
	.loc 1 820 0 discriminator 2
	add	r6, r8, r3, asl #4
.LVL99:
.LBB678:
.LBB673:
	.loc 2 277 0
	bl	memcpy(PLT)
.LVL100:
	.loc 2 278 0
	add	r3, r10, #4
.LBE673:
.LBE678:
	.loc 1 823 0 discriminator 1
	cmp	r4, #0
.LBB679:
.LBB674:
	.loc 2 278 0
	str	r3, [r8, #4]
.LVL101:
.LBE674:
.LBE679:
	.loc 1 823 0 discriminator 1
	ble	.L67
.LVL102:
.L70:
	cmp	r4, #1
	movge	r1, r4
	movlt	r1, #1
	.loc 1 812 0 discriminator 1
	mov	lr, #0
.LVL103:
.L72:
	mov	ip, r7
	mov	r2, r6
	mov	r0, #0
.LVL104:
.L71:
	.loc 1 825 0
	ldrsb	r3, [r2], #1
.LVL105:
	add	r8, sp, #24
	cmp	r3, #0
	addeq	r8, r8, #1
	.loc 1 824 0 discriminator 3
	add	r0, r0, #1
.LVL106:
	.loc 1 825 0
	ldrb	r3, [r8, #-4]	@ zero_extendqisi2
	.loc 1 824 0 discriminator 1
	cmp	r4, r0
	.loc 1 825 0
	strb	r3, [ip], #1
	.loc 1 824 0 discriminator 1
	bgt	.L71
	.loc 1 823 0 discriminator 2
	add	lr, lr, #1
.LVL107:
	.loc 1 823 0 is_stmt 0 discriminator 1
	cmp	r4, lr
	add	r6, r6, r1
.LVL108:
	add	r7, r7, r5
	bgt	.L72
	b	.L67
.LVL109:
.L59:
	.loc 1 828 0 is_stmt 1 discriminator 1
	cmp	r4, #0
	movgt	r3, r1
	movgt	r6, r9
.LVL110:
	movgt	r8, #0
.LVL111:
	ble	.L67
.LVL112:
.L73:
	.loc 1 829 0
	mov	r0, r3
	mov	r1, r6
	mov	r2, r4
	bl	memcpy(PLT)
.LVL113:
	.loc 1 828 0 discriminator 3
	add	r8, r8, #1
.LVL114:
	.loc 1 828 0 is_stmt 0 discriminator 1
	cmp	r8, r4
	add	r6, r6, r5
	add	r3, r0, r5
	bne	.L73
	b	.L67
.LVL115:
.L58:
.LBB680:
.LBB681:
.LBB682:
.LBB683:
	.file 3 "./libavutil/common.h"
	.loc 3 132 0 is_stmt 1
	ldr	r1, [sp, #60]
.LVL116:
	ldr	r2, [r8, #12]
.LVL117:
.LBE683:
.LBE682:
.LBE681:
.LBE680:
	.loc 1 833 0
	and	r0, r0, #7
.LVL118:
.LBB690:
.LBB688:
.LBB686:
.LBB684:
	.loc 3 132 0
	adds	r0, r0, r1
.LBE684:
.LBE686:
.LBE688:
.LBE690:
.LBB691:
.LBB692:
	.loc 2 190 0
	rsb	r3, r2, r3
.LVL119:
.LBE692:
.LBE691:
.LBB693:
.LBB689:
	.loc 2 223 0
	rsb	lr, r2, ip
.LVL120:
.LBB687:
.LBB685:
	.loc 3 132 0
	movmi	r0, #0
	bmi	.L74
	cmp	r0, lr
	movge	r0, lr
.L74:
.LVL121:
.LBE685:
.LBE687:
	.loc 2 224 0
	add	r1, r2, r0
.LVL122:
.LBE689:
.LBE693:
.LBB694:
.LBB695:
	.loc 2 95 0
	rsb	ip, r1, ip
	cmp	ip, #0
.LVL123:
.LBB696:
.LBB697:
.LBB698:
	addgt	r1, r1, #1
	strgt	r1, [r8, #4]
.LVL124:
.LBE698:
.LBE697:
.LBE696:
	movle	r9, #0
.LVL125:
	ldrgtb	r9, [r2, r0]	@ zero_extendqisi2
.LVL126:
.LBE695:
.LBE694:
.LBB699:
.LBB700:
.LBB701:
.LBB702:
	.loc 3 132 0
	cmp	r3, #0
	movlt	r3, #0
.LVL127:
	blt	.L76
	cmp	r3, lr
	movge	r3, lr
.L76:
.LVL128:
.LBE702:
.LBE701:
	.loc 2 224 0
	add	r3, r2, r3
.LBE700:
.LBE699:
	.loc 1 836 0 discriminator 1
	cmp	r4, #0
.LBB704:
.LBB703:
	.loc 2 224 0
	str	r3, [r8, #4]
.LVL129:
.LBE703:
.LBE704:
	.loc 1 836 0 discriminator 1
	ble	.L67
	mov	r3, r7
	mov	r6, #0
.LVL130:
.L77:
	.loc 1 837 0
	mov	r0, r3
	mov	r1, r9
	mov	r2, r4
	bl	memset(PLT)
.LVL131:
	.loc 1 836 0 discriminator 3
	add	r6, r6, #1
.LVL132:
	.loc 1 836 0 is_stmt 0 discriminator 1
	cmp	r6, r4
	add	r3, r0, r5
	bne	.L77
	b	.L67
.LVL133:
.L93:
.LBB705:
.LBB706:
	.loc 2 156 0 is_stmt 1
	rsb	r3, r3, ip
.LBE706:
.LBE705:
	.loc 1 784 0
	cmp	r3, #3
	bls	.L91
.LVL134:
.LBB707:
.LBB708:
.LBB709:
	.loc 2 95 0
	add	r3, r10, #2
	str	r3, [r8, #4]
	ldrb	r3, [r10, #1]	@ zero_extendqisi2
.LBE709:
.LBE708:
.LBE707:
	.loc 1 786 0
	strb	r3, [r1]
.LVL135:
.LBB710:
.LBB711:
.LBB712:
	.loc 2 95 0
	ldr	r2, [r8, #4]
.LBE712:
.LBE711:
.LBE710:
	.loc 1 788 0
	mov	r3, r1
.LBB715:
.LBB714:
.LBB713:
	.loc 2 95 0
	add	r1, r2, #1
.LVL136:
	str	r1, [r8, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
.LBE713:
.LBE714:
.LBE715:
	.loc 1 787 0
	strb	r2, [r7, #1]
.LVL137:
.LBB716:
.LBB717:
.LBB718:
	.loc 2 95 0
	ldr	r2, [r8, #4]
.LBE718:
.LBE717:
.LBE716:
	.loc 1 856 0
	mov	r0, #0
.LVL138:
.LBB721:
.LBB720:
.LBB719:
	.loc 2 95 0
	add	r1, r2, #1
	str	r1, [r8, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
.LBE719:
.LBE720:
.LBE721:
	.loc 1 788 0
	strb	r2, [r3, r5]!
.LVL139:
.LBB722:
.LBB723:
.LBB724:
	.loc 2 95 0
	ldr	r2, [r8, #4]
	add	r1, r2, #1
	str	r1, [r8, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
.LBE724:
.LBE723:
.LBE722:
	.loc 1 789 0
	strb	r2, [r3, #1]
	b	.L56
.LVL140:
.L78:
.LBB725:
	.loc 1 848 0
	ldr	r2, .L95+8
.LVL141:
	ldr	r0, [r8]
	mov	r1, #16
.LPIC10:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL142:
	b	.L91
.LVL143:
.L94:
.LBE725:
	.loc 1 820 0 discriminator 1
	add	r3, r8, r3, asl #6
.LVL144:
.LBB726:
.LBB675:
	.loc 2 277 0
	add	r0, sp, #20
	mov	r2, #2
.LBE675:
.LBE726:
	.loc 1 820 0 discriminator 1
	add	r6, r3, #7232
.LVL145:
.LBB727:
.LBB676:
	.loc 2 277 0
	bl	memcpy(PLT)
.LVL146:
	.loc 2 278 0
	add	r3, r10, #4
.LBE676:
.LBE727:
	.loc 1 820 0 discriminator 1
	add	r6, r6, #48
.LVL147:
.LBB728:
.LBB677:
	.loc 2 278 0
	str	r3, [r8, #4]
.LVL148:
	b	.L70
.L96:
	.align	2
.L95:
	.word	.LANCHOR0-(.LPIC8+8)
	.word	-1094995529
	.word	.LC0-(.LPIC10+8)
.LBE677:
.LBE728:
	.cfi_endproc
.LFE162:
	.size	process_block, .-process_block
	.align	2
	.type	decode_nop, %function
decode_nop:
.LFB166:
	.loc 1 1012 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL149:
	.loc 1 1013 0
	ldr	r1, .L99
	.loc 1 1012 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 1013 0
	ldr	r0, [r0]
.LVL150:
.LPIC11:
	add	r1, pc, r1
	bl	avpriv_request_sample(PLT)
.LVL151:
	.loc 1 1015 0
	ldr	r0, .L99+4
	ldmfd	sp!, {r3, pc}
.L100:
	.align	2
.L99:
	.word	.LC1-(.LPIC11+8)
	.word	-1163346256
	.cfi_endproc
.LFE166:
	.size	decode_nop, .-decode_nop
	.section	.text.unlikely
	.align	2
	.type	init_buffers, %function
init_buffers:
.LFB154:
	.loc 1 464 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL152:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 465 0
	add	r5, r0, #2608
	.loc 1 464 0
	mov	r4, r0
	.loc 1 465 0
	add	r6, r0, #2624
	add	r8, r5, #4
	mov	r0, r8
.LVL153:
	add	r1, r6, #4
	ldr	r2, [r4, #2660]
	.loc 1 466 0
	add	r7, r5, #8
	.loc 1 465 0
	bl	av_fast_padded_malloc(PLT)
.LVL154:
	.loc 1 467 0
	add	r5, r5, #12
	.loc 1 466 0
	mov	r0, r7
	add	r1, r6, #8
	ldr	r2, [r4, #2660]
	bl	av_fast_padded_malloc(PLT)
.LVL155:
	.loc 1 467 0
	mov	r0, r5
	add	r1, r6, #12
	ldr	r2, [r4, #2660]
	bl	av_fast_padded_malloc(PLT)
.LVL156:
	.loc 1 468 0
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L102
	.loc 1 469 0
	mov	r0, r6
	add	r1, r4, #2640
	ldr	r2, [r4, #2660]
	bl	av_fast_padded_malloc(PLT)
.LVL157:
.L102:
	.loc 1 472 0
	ldr	r3, [r4, #2612]
	cmp	r3, #0
	beq	.L103
	.loc 1 472 0 is_stmt 0 discriminator 1
	ldr	r3, [r4, #2616]
	cmp	r3, #0
	beq	.L103
	.loc 1 472 0 discriminator 2
	ldr	r3, [r4, #2620]
	cmp	r3, #0
	beq	.L103
	.loc 1 472 0 discriminator 3
	ldr	r3, [r4, #2624]
	cmp	r3, #0
	bne	.L105
	.loc 1 473 0 is_stmt 1
	ldr	r2, [r4, #16]
	cmp	r2, #0
	bne	.L105
.L103:
.LVL158:
.LBB733:
.LBB734:
	.loc 1 452 0
	mov	r0, r8
	bl	av_freep(PLT)
.LVL159:
	.loc 1 453 0
	mov	r0, r7
	bl	av_freep(PLT)
.LVL160:
	.loc 1 454 0
	mov	r0, r5
	bl	av_freep(PLT)
.LVL161:
	.loc 1 455 0
	mov	r0, r6
	bl	av_freep(PLT)
.LVL162:
	.loc 1 456 0
	add	r0, r4, #2640
	add	r0, r0, #4
	bl	av_freep(PLT)
.LVL163:
	.loc 1 459 0
	mov	r3, #0
	str	r3, [r4, #2636]
	.loc 1 458 0
	str	r3, [r4, #2632]
	.loc 1 457 0
	str	r3, [r4, #2628]
.LVL164:
.LBB735:
.LBB736:
	.loc 1 439 0
	str	r3, [r4, #2588]
	.loc 1 440 0
	str	r3, [r4, #2592]
	.loc 1 441 0
	str	r3, [r4, #2656]
	.loc 1 443 0
	str	r3, [r4, #2596]
	.loc 1 444 0
	str	r3, [r4, #2600]
	.loc 1 446 0
	str	r3, [r4, #2660]
	.loc 1 447 0
	str	r3, [r4, #2584]
.LBE736:
.LBE735:
.LBE734:
.LBE733:
	.loc 1 475 0
	mvn	r0, #11
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL165:
.L105:
	.loc 1 478 0
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.cfi_endproc
.LFE154:
	.size	init_buffers, .-init_buffers
	.align	2
	.type	decode_init, %function
decode_init:
.LFB156:
	.loc 1 489 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL166:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 497 0
	ldr	ip, [r0, #124]
	ldr	r6, [r0, #128]
.LBB737:
.LBB738:
	.loc 1 443 0
	add	r1, ip, #7
	.loc 1 444 0
	add	r2, r6, #7
	.loc 1 443 0
	bic	r1, r1, #7
	.loc 1 444 0
	bic	r2, r2, #7
	.loc 1 446 0
	mul	lr, r2, r1
.LBE738:
.LBE737:
	.loc 1 493 0
	ldr	r3, [r0, #104]
.LBB742:
.LBB739:
	.loc 1 441 0
	mul	r7, r6, ip
.LBE739:
.LBE742:
	.loc 1 493 0
	clz	r3, r3
	mov	r3, r3, lsr #5
	.loc 1 490 0
	ldr	r4, [r0, #60]
.LVL167:
	.loc 1 495 0 discriminator 2
	cmp	r3, #0
	movne	r8, #44
	moveq	r8, #11
	.loc 1 489 0
	mov	r5, r0
.LBB743:
.LBB740:
	.loc 1 446 0
	mov	lr, lr, asl #1
.LBE740:
.LBE743:
	.loc 1 492 0
	str	r0, [r4]
	.loc 1 493 0
	str	r3, [r4, #16]
	.loc 1 498 0
	mov	r0, r4
.LVL168:
	.loc 1 495 0 discriminator 4
	str	r8, [r5, #144]
.LBB744:
.LBB741:
	.loc 1 440 0
	str	r6, [r4, #2592]
	.loc 1 439 0
	str	ip, [r4, #2588]
	.loc 1 447 0
	str	ip, [r4, #2584]
	.loc 1 441 0
	str	r7, [r4, #2656]
	.loc 1 443 0
	str	r1, [r4, #2596]
	.loc 1 446 0
	str	lr, [r4, #2660]
	.loc 1 444 0
	str	r2, [r4, #2600]
.LBE741:
.LBE744:
	.loc 1 498 0
	bl	init_buffers(PLT)
.LVL169:
	subs	r6, r0, #0
.LVL170:
	beq	.L119
	.loc 1 499 0
	ldr	r2, .L128
	mov	r0, r5
	mov	r1, #16
.LPIC20:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL171:
	.loc 1 500 0
	mvn	r6, #11
	b	.L120
.L119:
	.loc 1 503 0
	ldr	r7, .L128+4
	add	r0, r4, #3184
.LPIC21:
	add	r7, pc, r7
	add	r1, r7, #512
	add	r2, r7, #528
	mov	r3, #4
	bl	make_glyphs(PLT)
.LVL172:
	.loc 1 504 0
	add	r0, r4, #7232
	mov	r3, #8
	add	r1, r7, #544
	add	r2, r7, #560
	add	r0, r0, #48
	bl	make_glyphs(PLT)
.LVL173:
	.loc 1 506 0
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L120
.LBB745:
	.loc 1 509 0
	ldr	r3, .L128+8
	ldr	r2, [r5, #104]
	cmp	r2, r3
	bgt	.L122
	.loc 1 510 0
	ldr	r2, .L128+12
	mov	r0, r5
	mov	r1, #16
.LPIC25:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL174:
	.loc 1 511 0
	ldr	r6, .L128+16
	b	.L120
.L122:
	.loc 1 514 0
	ldr	r3, [r5, #100]
	add	r0, r4, #1040
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r1, [r3, #1]	@ zero_extendqisi2
	add	r0, r0, #4
	orr	r2, r2, r1, asl #8
	add	r3, r3, #2
	str	r2, [r4, #20]!
.LVL175:
.L123:
	.loc 1 516 0
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r2, r2, ip, asl #16
	orr	r2, r2, #-16777216
	str	r2, [r4, #4]!
	.loc 1 515 0 discriminator 1
	cmp	r4, r0
	add	r3, r3, #4
	bne	.L123
.LVL176:
.L120:
.LBE745:
	.loc 1 520 0
	mov	r0, r6
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L129:
	.align	2
.L128:
	.word	.LC2-(.LPIC20+8)
	.word	.LANCHOR0-(.LPIC21+8)
	.word	1025
	.word	.LC3-(.LPIC25+8)
	.word	-1094995529
	.cfi_endproc
.LFE156:
	.size	decode_init, .-decode_init
	.text
	.align	2
	.type	decode_6, %function
decode_6:
.LFB178:
	.loc 1 1279 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL177:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB758:
.LBB759:
	.loc 2 156 0
	ldmib	r0, {r2, r3}
.LBE759:
.LBE758:
	.loc 1 1280 0
	ldr	ip, [r0, #2656]
.LVL178:
.LBB761:
.LBB760:
	.loc 2 156 0
	rsb	r3, r2, r3
.LBE760:
.LBE761:
	.loc 1 1283 0
	cmp	ip, r3
	.loc 1 1281 0
	ldr	r1, [r0, #2612]
.LVL179:
	.loc 1 1283 0
	bhi	.L131
.LVL180:
	.loc 1 1287 0
	cmp	ip, #0
	subne	r1, r1, #2
.LVL181:
	addne	ip, r2, ip
	beq	.L135
.LVL182:
.L134:
.LBB762:
.LBB763:
.LBB764:
	.loc 2 95 0
	add	r2, r2, #1
	str	r2, [r0, #4]
	ldrb	r3, [r2, #-1]	@ zero_extendqisi2
.LBE764:
.LBE763:
.LBE762:
	.loc 1 1287 0
	cmp	r2, ip
	.loc 1 1288 0
	add	r3, r3, #1328
	add	r3, r0, r3, asl #1
	ldrh	r3, [r3, #8]
	strh	r3, [r1, #2]!	@ movhi
.LVL183:
	.loc 1 1287 0
	bne	.L134
.LVL184:
.L135:
	.loc 1 1290 0
	mov	r0, #0
.LVL185:
	ldmfd	sp!, {r3, pc}
.LVL186:
.L131:
.LBB765:
.LBB766:
	.loc 1 1284 0
	ldr	r2, .L138
	ldr	r0, [r0]
.LVL187:
	mov	r1, #16
.LVL188:
.LPIC34:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL189:
	ldr	r0, .L138+4
	ldmfd	sp!, {r3, pc}
.L139:
	.align	2
.L138:
	.word	.LC4-(.LPIC34+8)
	.word	-1094995529
.LBE766:
.LBE765:
	.cfi_endproc
.LFE178:
	.size	decode_6, .-decode_6
	.align	2
	.type	decode_0, %function
decode_0:
.LFB165:
	.loc 1 995 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL190:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 999 0
	ldr	r7, [r0, #2588]
	ldr	r8, [r0, #2592]
.LBB779:
.LBB780:
	.loc 2 156 0
	ldr	r3, [r0, #8]
.LBE780:
.LBE779:
	.loc 1 999 0
	mul	r2, r8, r7
.LBB783:
.LBB781:
	.loc 2 156 0
	ldr	r1, [r0, #4]
.LBE781:
.LBE783:
	.loc 1 996 0
	ldr	r5, [r0, #2612]
.LVL191:
.LBB784:
.LBB782:
	.loc 2 156 0
	rsb	r3, r1, r3
.LBE782:
.LBE784:
	.loc 1 999 0
	cmp	r3, r2, asl #1
	bcc	.L141
.LVL192:
	.loc 1 1003 0 discriminator 1
	cmp	r8, #0
	ble	.L142
	ldr	r9, [r0, #2584]
	sub	r5, r5, #2
.LVL193:
	mov	r9, r9, asl #1
	mov	r10, r7, asl #1
	mov	r6, #0
.LVL194:
.L143:
	.loc 1 1004 0 discriminator 1
	cmp	r7, #0
	ble	.L146
	ldr	r3, [r0, #4]
	mov	ip, r5
	add	r4, r3, r10
.LVL195:
.L145:
.LBB785:
.LBB786:
.LBB787:
	.loc 2 90 0
	add	r1, r3, #2
	str	r1, [r0, #4]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	lr, [r3, #1]	@ zero_extendqisi2
.LBE787:
.LBE786:
.LBE785:
	.loc 1 1004 0 discriminator 1
	cmp	r1, r4
.LBB790:
.LBB789:
.LBB788:
	.loc 2 90 0
	orr	r2, r2, lr, asl #8
	mov	r3, r1
.LBE788:
.LBE789:
.LBE790:
	.loc 1 1005 0
	strh	r2, [ip, #2]!	@ movhi
	.loc 1 1004 0 discriminator 1
	bne	.L145
.LVL196:
.L146:
	.loc 1 1003 0 discriminator 2
	add	r6, r6, #1
.LVL197:
	.loc 1 1003 0 is_stmt 0 discriminator 1
	cmp	r6, r8
	add	r5, r5, r9
.LVL198:
	bne	.L143
.LVL199:
.L142:
	.loc 1 1008 0 is_stmt 1
	mov	r0, #0
.LVL200:
	.loc 1 1009 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL201:
.L141:
.LBB791:
.LBB792:
	.loc 1 1000 0
	ldr	r2, .L149
	ldr	r0, [r0]
.LVL202:
	mov	r1, #16
.LPIC35:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL203:
	ldr	r0, .L149+4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L150:
	.align	2
.L149:
	.word	.LC5-(.LPIC35+8)
	.word	-1094995529
.LBE792:
.LBE791:
	.cfi_endproc
.LFE165:
	.size	decode_0, .-decode_0
	.section	.text.unlikely
	.align	2
	.type	decode_end, %function
decode_end:
.LFB157:
	.loc 1 523 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL204:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 524 0
	ldr	r4, [r0, #60]
.LVL205:
.LBB797:
.LBB798:
	.loc 1 452 0
	add	r5, r4, #2608
	add	r0, r5, #4
.LVL206:
	bl	av_freep(PLT)
.LVL207:
	.loc 1 453 0
	add	r0, r5, #8
	bl	av_freep(PLT)
.LVL208:
	.loc 1 454 0
	add	r0, r5, #12
	bl	av_freep(PLT)
.LVL209:
	.loc 1 455 0
	add	r0, r4, #2624
	bl	av_freep(PLT)
.LVL210:
	.loc 1 456 0
	add	r0, r4, #2640
	add	r0, r0, #4
	bl	av_freep(PLT)
.LVL211:
	.loc 1 459 0
	mov	r0, #0
	str	r0, [r4, #2636]
	.loc 1 458 0
	str	r0, [r4, #2632]
	.loc 1 457 0
	str	r0, [r4, #2628]
.LVL212:
.LBB799:
.LBB800:
	.loc 1 439 0
	str	r0, [r4, #2588]
	.loc 1 440 0
	str	r0, [r4, #2592]
	.loc 1 441 0
	str	r0, [r4, #2656]
	.loc 1 443 0
	str	r0, [r4, #2596]
	.loc 1 444 0
	str	r0, [r4, #2600]
	.loc 1 446 0
	str	r0, [r4, #2660]
	.loc 1 447 0
	str	r0, [r4, #2584]
.LBE800:
.LBE799:
.LBE798:
.LBE797:
	.loc 1 529 0
	ldmfd	sp!, {r3, r4, r5, pc}
	.cfi_endproc
.LFE157:
	.size	decode_end, .-decode_end
	.text
	.align	2
	.type	decode_5, %function
decode_5:
.LFB177:
	.loc 1 1256 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL213:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1263 0
	ldr	r6, [r0, #2660]
	.loc 1 1256 0
	mov	r5, r0
.LBB819:
.LBB820:
	.loc 1 535 0
	cmp	r6, #0
.LBE820:
.LBE819:
	.loc 1 1261 0
	ldr	ip, [r0, #2612]
.LVL214:
.LBB841:
.LBB839:
	.loc 1 535 0
	bgt	.L163
	b	.L164
.LVL215:
.L170:
	rsb	r3, r1, r3
	.loc 1 545 0
	cmp	r3, r4
	bcc	.L157
.LVL216:
.LBB821:
.LBB822:
	.loc 2 277 0
	mov	r0, ip
.LVL217:
	mov	r2, r4
.LVL218:
	bl	memcpy(PLT)
.LVL219:
	.loc 2 278 0
	ldr	r3, [r5, #4]
.LBE822:
.LBE821:
	.loc 1 551 0
	rsb	r6, r4, r6
.LVL220:
.LBB825:
.LBB823:
	.loc 2 278 0
	add	r3, r3, r4
.LBE823:
.LBE825:
	.loc 1 535 0
	cmp	r6, #0
.LBB826:
.LBB824:
	.loc 2 278 0
	str	r3, [r5, #4]
	.loc 2 277 0
	mov	ip, r0
.LBE824:
.LBE826:
	.loc 1 550 0
	add	ip, ip, r4
.LVL221:
	.loc 1 535 0
	ble	.L164
.LVL222:
.L163:
.LBB827:
.LBB828:
	.loc 2 95 0
	ldmib	r5, {r2, r3}
	rsb	r1, r2, r3
	cmp	r1, #0
	ble	.L169
.LVL223:
.LBB829:
.LBB830:
.LBB831:
	add	r1, r2, #1
	str	r1, [r5, #4]
	ldrb	r0, [r2]	@ zero_extendqisi2
.LVL224:
.LBE831:
.LBE830:
.LBE829:
.LBE828:
.LBE827:
	.loc 1 537 0
	mov	r4, r0, asr #1
	add	r4, r4, #1
.LVL225:
	.loc 1 538 0
	cmp	r4, r6
	bgt	.L157
.LVL226:
	.loc 1 538 0 is_stmt 0 discriminator 1
	cmp	r3, r1
	beq	.L157
	.loc 1 541 0 is_stmt 1
	tst	r0, #1
	beq	.L170
.LVL227:
.LBB833:
.LBB834:
	.loc 2 95 0
	rsb	r1, r1, r3
	cmp	r1, #0
.LBB835:
.LBB836:
.LBB837:
	addgt	r3, r2, #2
	strgt	r3, [r5, #4]
.LBE837:
.LBE836:
.LBE835:
	.loc 2 95 0 is_stmt 0 discriminator 1
	strle	r3, [r5, #4]
	ldrgtb	r1, [r2, #1]	@ zero_extendqisi2
	movle	r1, #0
.LVL228:
.LBE834:
.LBE833:
	.loc 1 543 0 is_stmt 1
	mov	r0, ip
.LVL229:
	mov	r2, r4
	bl	memset(PLT)
.LVL230:
	.loc 1 551 0
	rsb	r6, r4, r6
.LVL231:
	.loc 1 535 0
	cmp	r6, #0
	.loc 1 543 0
	mov	ip, r0
	.loc 1 550 0
	add	ip, ip, r4
.LVL232:
	.loc 1 535 0
	bgt	.L163
.LVL233:
.L164:
.LBE839:
.LBE841:
	.loc 1 1275 0
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL234:
.L169:
.LBB842:
.LBB840:
.LBB838:
.LBB832:
	.loc 2 95 0 discriminator 1
	str	r3, [r5, #4]
.LVL235:
.L157:
.LBE832:
.LBE838:
.LBE840:
.LBE842:
	.loc 1 1264 0
	ldr	r0, .L171
	.loc 1 1276 0
	ldmfd	sp!, {r4, r5, r6, pc}
.L172:
	.align	2
.L171:
	.word	-1094995529
	.cfi_endproc
.LFE177:
	.size	decode_5, .-decode_5
	.align	2
	.type	decode_8, %function
decode_8:
.LFB179:
	.loc 1 1294 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL236:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 1297 0
	ldr	r8, [r0, #2656]
	.loc 1 1299 0
	add	r1, r0, #2640
	.loc 1 1294 0
	mov	r5, r0
	.loc 1 1299 0
	mov	r2, r8
	add	r0, r1, #4
.LVL237:
	add	r1, r1, #8
	.loc 1 1295 0
	ldr	r7, [r5, #2612]
.LVL238:
	.loc 1 1299 0
	bl	av_fast_malloc(PLT)
.LVL239:
	.loc 1 1300 0
	ldr	r6, [r5, #2644]
	cmp	r6, #0
	beq	.L174
.LVL240:
.LBB863:
.LBB864:
	.loc 1 535 0
	cmp	r8, #0
	movgt	ip, r6
	movgt	r9, r8
	bgt	.L185
	b	.L199
.LVL241:
.L201:
	rsb	r3, r1, r3
	.loc 1 545 0
	cmp	r3, r4
	bcc	.L179
.LVL242:
.LBB865:
.LBB866:
	.loc 2 277 0
	mov	r0, ip
.LVL243:
	mov	r2, r4
.LVL244:
	bl	memcpy(PLT)
.LVL245:
	.loc 2 278 0
	ldr	r3, [r5, #4]
.LBE866:
.LBE865:
	.loc 1 551 0
	rsb	r9, r4, r9
.LVL246:
.LBB869:
.LBB867:
	.loc 2 278 0
	add	r3, r3, r4
.LBE867:
.LBE869:
	.loc 1 535 0
	cmp	r9, #0
.LBB870:
.LBB868:
	.loc 2 278 0
	str	r3, [r5, #4]
	.loc 2 277 0
	mov	ip, r0
.LBE868:
.LBE870:
	.loc 1 550 0
	add	ip, ip, r4
.LVL247:
	.loc 1 535 0
	ble	.L187
.LVL248:
.L185:
.LBB871:
.LBB872:
	.loc 2 95 0
	ldmib	r5, {r2, r3}
	rsb	r1, r2, r3
	cmp	r1, #0
	ble	.L200
.LVL249:
.LBB873:
.LBB874:
.LBB875:
	add	r1, r2, #1
	str	r1, [r5, #4]
	ldrb	r0, [r2]	@ zero_extendqisi2
.LVL250:
.LBE875:
.LBE874:
.LBE873:
.LBE872:
.LBE871:
	.loc 1 537 0
	mov	r4, r0, asr #1
	add	r4, r4, #1
.LVL251:
	.loc 1 538 0
	cmp	r4, r9
	bgt	.L179
.LVL252:
	.loc 1 538 0 is_stmt 0 discriminator 1
	cmp	r3, r1
	beq	.L179
	.loc 1 541 0 is_stmt 1
	tst	r0, #1
	beq	.L201
.LVL253:
.LBB877:
.LBB878:
	.loc 2 95 0
	rsb	r1, r1, r3
	cmp	r1, #0
.LBB879:
.LBB880:
.LBB881:
	addgt	r3, r2, #2
	strgt	r3, [r5, #4]
.LBE881:
.LBE880:
.LBE879:
	.loc 2 95 0 is_stmt 0 discriminator 1
	strle	r3, [r5, #4]
	ldrgtb	r1, [r2, #1]	@ zero_extendqisi2
	movle	r1, #0
.LVL254:
.LBE878:
.LBE877:
	.loc 1 543 0 is_stmt 1
	mov	r0, ip
.LVL255:
	mov	r2, r4
	bl	memset(PLT)
.LVL256:
	.loc 1 551 0
	rsb	r9, r4, r9
.LVL257:
	.loc 1 535 0
	cmp	r9, #0
	.loc 1 543 0
	mov	ip, r0
	.loc 1 550 0
	add	ip, ip, r4
.LVL258:
	.loc 1 535 0
	bgt	.L185
.LVL259:
.L187:
.LBE864:
.LBE863:
	.loc 1 1309 0
	sub	r8, r8, #1
.LVL260:
	add	r8, r7, r8, asl #1
.LVL261:
	sub	r7, r7, #2
.LVL262:
.L188:
	.loc 1 1310 0
	ldrb	r3, [r6], #1	@ zero_extendqisi2
.LVL263:
	add	r3, r3, #1328
	add	r3, r5, r3, asl #1
	ldrh	r3, [r3, #8]
	strh	r3, [r7, #2]!	@ movhi
.LVL264:
	.loc 1 1309 0
	cmp	r7, r8
	bne	.L188
.LVL265:
.L189:
	.loc 1 1312 0
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.LVL266:
.L200:
.LBB884:
.LBB883:
.LBB882:
.LBB876:
	.loc 2 95 0 discriminator 1
	str	r3, [r5, #4]
.LVL267:
.L179:
.LBE876:
.LBE882:
.LBE883:
.LBE884:
	.loc 1 1307 0
	ldr	r0, .L202
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.LVL268:
.L199:
	.loc 1 1309 0
	beq	.L189
	b	.L187
.LVL269:
.L174:
.LBB885:
.LBB886:
	.loc 1 1301 0
	ldr	r2, .L202+4
	ldr	r0, [r5]
	mov	r1, #16
.LPIC36:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL270:
	mvn	r0, #11
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L203:
	.align	2
.L202:
	.word	-1094995529
	.word	.LC6-(.LPIC36+8)
.LBE886:
.LBE885:
	.cfi_endproc
.LFE179:
	.size	decode_8, .-decode_8
	.align	2
	.type	opcode_0xf8, %function
opcode_0xf8:
.LFB171:
	.loc 1 1103 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL271:
	.loc 1 1104 0
	ldr	ip, [r0, #2584]
	.loc 1 1106 0
	cmp	r3, #2
	.loc 1 1104 0
	mla	r2, ip, r2, r1
.LVL272:
	ldr	r1, [r0, #2612]
.LVL273:
	mov	r2, r2, asl #1
	.loc 1 1103 0
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 1104 0
	add	ip, r1, r2
.LVL274:
	.loc 1 1103 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 1106 0
	beq	.L217
	ldr	r2, [r0, #4]
.LVL275:
.LBB943:
.LBB944:
.LBB945:
	.loc 2 156 0
	ldr	r1, [r0, #8]
	rsb	r1, r2, r1
.LBE945:
.LBE944:
	.loc 1 1118 0
	cmp	r1, #4
	bls	.L213
.LVL276:
	.loc 1 1121 0
	mov	r1, r2
.LBB946:
.LBB947:
.LBB948:
	.loc 2 95 0
	add	lr, r2, #1
	str	lr, [r0, #4]
.LBE948:
.LBE947:
.LBE946:
.LBB949:
.LBB950:
.LBB951:
	.loc 2 90 0
	add	r6, r2, #5
.LBE951:
.LBE950:
.LBE949:
	.loc 1 1121 0
	ldrb	r4, [r1], #3	@ zero_extendqisi2
.LVL277:
.LBB956:
.LBB957:
.LBB958:
	.loc 2 90 0
	str	r1, [r0, #4]
	ldrb	lr, [r2, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
.LBE958:
.LBE957:
.LBE956:
.LBB961:
.LBB954:
.LBB952:
	str	r6, [r0, #4]
	ldrb	r1, [r2, #3]	@ zero_extendqisi2
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
.LBE952:
.LBE954:
.LBE961:
.LBB962:
.LBB960:
.LBB959:
	orr	lr, lr, r5, asl #8
.LVL278:
.LBE959:
.LBE960:
.LBE962:
.LBB963:
.LBB955:
.LBB953:
	orr	r2, r1, r2, asl #8
.LBE953:
.LBE955:
.LBE963:
.LBB964:
.LBB965:
	.loc 1 1059 0
	cmp	r3, #8
	.loc 1 1051 0
	strh	lr, [sp, #6]	@ movhi
	strh	r2, [sp, #4]	@ movhi
	.loc 1 1059 0
	beq	.L218
	.loc 1 1060 0
	ldr	r2, [sp, #24]
	.loc 1 1059 0 discriminator 2
	add	lr, r4, #199
.LVL279:
	.loc 1 1062 0 discriminator 1
	cmp	r3, #0
	.loc 1 1059 0 discriminator 2
	add	lr, r0, lr, asl #4
.LVL280:
	.loc 1 1060 0
	rsb	r5, r3, r2
.LVL281:
	.loc 1 1062 0 discriminator 1
	ble	.L209
.L208:
	cmp	r3, #1
	mov	r5, r5, asl #1
.LVL282:
	movge	r6, r3
.LVL283:
	movlt	r6, #1
.LBE965:
.LBE964:
.LBE943:
	.loc 1 1103 0
	mov	r4, #0
.LVL284:
.L211:
	mov	r1, lr
.LVL285:
.L210:
.LBB970:
.LBB968:
.LBB966:
	.loc 1 1064 0
	ldrsb	r2, [r1], #1
.LVL286:
	add	r0, sp, #8
	add	r2, r0, r2, asl #1
	rsb	r0, lr, r1
	ldrh	r2, [r2, #-4]
	.loc 1 1063 0 discriminator 1
	cmp	r3, r0
	.loc 1 1064 0
	strh	r2, [ip], #2	@ movhi
.LVL287:
	.loc 1 1063 0 discriminator 1
	bgt	.L210
	.loc 1 1062 0 discriminator 2
	add	r4, r4, #1
.LVL288:
	.loc 1 1062 0 is_stmt 0 discriminator 1
	cmp	r3, r4
	add	lr, lr, r6
	.loc 1 1062 0 discriminator 2
	add	ip, ip, r5
.LVL289:
	.loc 1 1062 0 discriminator 1
	bgt	.L211
.LVL290:
.L209:
.LBE966:
.LBE968:
.LBE970:
	.loc 1 1127 0 is_stmt 1
	mov	r0, #0
.LVL291:
.L206:
	.loc 1 1128 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL292:
.L217:
	.cfi_restore_state
.LBB971:
.LBB972:
	.loc 2 156 0
	ldmib	r0, {r3, lr}
.LVL293:
	rsb	lr, r3, lr
.LBE972:
.LBE971:
	.loc 1 1107 0
	cmp	lr, #7
	bls	.L213
.LVL294:
.LBB973:
.LBB974:
.LBB975:
	.loc 2 90 0
	add	lr, r3, #2
	str	lr, [r0, #4]
	ldrb	lr, [r3]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
.LBE975:
.LBE974:
.LBE973:
.LBB978:
.LBB979:
.LBB980:
	add	r4, r3, #4
.LBE980:
.LBE979:
.LBE978:
.LBB985:
.LBB977:
.LBB976:
	orr	lr, lr, r5, asl #8
.LBE976:
.LBE977:
.LBE985:
	.loc 1 1110 0
	strh	lr, [r1, r2]	@ movhi
.LVL295:
.LBB986:
.LBB983:
.LBB981:
	.loc 2 90 0
	str	r4, [r0, #4]
	ldrb	lr, [r3, #3]	@ zero_extendqisi2
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
.LBE981:
.LBE983:
.LBE986:
.LBB987:
.LBB988:
.LBB989:
	add	r1, r3, #6
.LBE989:
.LBE988:
.LBE987:
.LBB992:
.LBB984:
.LBB982:
	orr	r2, r2, lr, asl #8
.LBE982:
.LBE984:
.LBE992:
	.loc 1 1111 0
	strh	r2, [ip, #2]	@ movhi
.LBB993:
.LBB991:
.LBB990:
	.loc 2 90 0
	str	r1, [r0, #4]
	ldrb	r1, [r3, #5]	@ zero_extendqisi2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #8
.LBE990:
.LBE991:
.LBE993:
	.loc 1 1112 0
	ldr	r1, [sp, #24]
	mov	lr, r1, asl #1
.LVL296:
.LBB994:
.LBB995:
.LBB996:
	.loc 2 90 0
	add	r1, r3, #8
.LBE996:
.LBE995:
.LBE994:
	.loc 1 1112 0
	strh	r2, [ip, lr]!	@ movhi
.LVL297:
.LBB1001:
.LBB999:
.LBB997:
	.loc 2 90 0
	str	r1, [r0, #4]
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
.LBE997:
.LBE999:
.LBE1001:
	.loc 1 1127 0
	mov	r0, #0
.LVL298:
.LBB1002:
.LBB1000:
.LBB998:
	.loc 2 90 0
	orr	r3, r2, r3, asl #8
.LBE998:
.LBE1000:
.LBE1002:
	.loc 1 1113 0
	strh	r3, [ip, #2]	@ movhi
	.loc 1 1128 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL299:
.L218:
	.cfi_restore_state
.LBB1003:
.LBB969:
.LBB967:
	.loc 1 1059 0 discriminator 1
	add	lr, r0, r4, asl #6
.LVL300:
	.loc 1 1060 0
	ldr	r2, [sp, #24]
	.loc 1 1059 0 discriminator 1
	add	lr, lr, #7232
	add	lr, lr, #48
.LVL301:
	.loc 1 1060 0
	sub	r5, r2, #8
.LVL302:
	b	.L208
.LVL303:
.L213:
.LBE967:
.LBE969:
.LBE1003:
	.loc 1 1108 0
	ldr	r0, .L219
.LVL304:
	b	.L206
.L220:
	.align	2
.L219:
	.word	-1094995529
	.cfi_endproc
.LFE171:
	.size	opcode_0xf8, .-opcode_0xf8
	.global	__aeabi_idivmod
	.align	2
	.type	codec2subblock, %function
codec2subblock:
.LFB173:
	.loc 1 1147 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL305:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB1108:
.LBB1109:
	.loc 2 156 0
	ldr	ip, [r0, #8]
	ldr	lr, [r0, #4]
.LVL306:
.LBE1109:
.LBE1108:
	.loc 1 1147 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 1 1151 0
	cmp	lr, ip
	beq	.L237
	mov	r7, r2
.LBB1110:
.LBB1111:
.LBB1112:
	.loc 2 95 0
	add	r2, lr, #1
.LVL307:
	mov	r6, r1
	str	r2, [r0, #4]
	ldrb	r1, [lr]	@ zero_extendqisi2
.LVL308:
	mov	r4, r3
.LBE1112:
.LBE1111:
.LBE1110:
	.loc 1 1156 0
	sub	r3, r1, #245
.LVL309:
	mov	r5, r0
.LVL310:
	cmp	r3, #10
	addls	pc, pc, r3, asl #2
	b	.L224
.L226:
	b	.L225
	b	.L227
	b	.L228
	b	.L279
	b	.L230
	b	.L230
	b	.L230
	b	.L230
	b	.L231
	b	.L232
	b	.L233
	.p2align 1
.L279:
	.loc 1 1214 0
	ldr	r0, [r5, #2584]
.LVL311:
	str	r0, [sp]
	mov	r1, r6
.LVL312:
	mov	r2, r7
	mov	r3, r4
.LVL313:
	mov	r0, r5
	bl	opcode_0xf8(PLT)
.LVL314:
	.loc 1 1228 0
	mov	r0, #0
.LVL315:
.L270:
	.loc 1 1229 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL316:
.L230:
	.cfi_restore_state
	.loc 1 1197 0
	ldr	ip, [r0, #2584]
	add	r2, r1, #1328
	mla	r0, r7, ip, r6
.LVL317:
	ldr	r3, [r5, #2612]
	add	r2, r5, r2, asl #1
.LBB1113:
.LBB1114:
	.loc 1 1041 0 discriminator 1
	cmp	r4, #0
.LBE1114:
.LBE1113:
	.loc 1 1197 0
	ldrh	r1, [r2, #22]
.LVL318:
.LBB1119:
.LBB1115:
	.loc 1 1040 0
	rsb	ip, r4, ip
.LBE1115:
.LBE1119:
	.loc 1 1197 0
	add	r0, r3, r0, asl #1
.LVL319:
.LBB1120:
.LBB1116:
	.loc 1 1041 0 discriminator 1
	ble	.L278
	mov	r5, r4, asl #1
.LVL320:
	add	lr, r5, ip, asl #1
.LVL321:
	mov	ip, #0
.LVL322:
.L251:
	add	r3, r0, r5
.LBE1116:
.LBE1120:
	.loc 1 1147 0
	mov	r2, r0
.LVL323:
.L252:
.LBB1121:
.LBB1117:
	.loc 1 1043 0
	strh	r1, [r2], #2	@ movhi
.LVL324:
	.loc 1 1042 0 discriminator 1
	cmp	r2, r3
	bne	.L252
	.loc 1 1041 0 discriminator 2
	add	ip, ip, #1
.LVL325:
	.loc 1 1041 0 is_stmt 0 discriminator 1
	cmp	ip, r4
	add	r0, r0, lr
.LVL326:
	bne	.L251
.LVL327:
.L278:
.LBE1117:
.LBE1121:
	.loc 1 1228 0 is_stmt 1
	mov	r0, #0
	.loc 1 1229 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL328:
.L231:
	.cfi_restore_state
	.loc 1 1201 0
	cmp	r2, ip
	beq	.L237
.LBB1122:
.LBB1123:
.LBB1124:
	.loc 2 95 0
	add	r3, lr, #2
.LBE1124:
.LBE1123:
.LBE1122:
	.loc 1 1203 0
	ldr	r8, [r0, #2584]
.LBB1127:
.LBB1126:
.LBB1125:
	.loc 2 95 0
	str	r3, [r0, #4]
	ldrb	r2, [lr, #1]	@ zero_extendqisi2
.LBE1125:
.LBE1126:
.LBE1127:
	.loc 1 1203 0
	mla	r0, r7, r8, r6
.LVL329:
	add	r2, r2, #1328
	ldr	r3, [r5, #2612]
	add	r2, r5, r2, asl #1
.LBB1128:
.LBB1129:
	.loc 1 1041 0 discriminator 1
	cmp	r4, #0
.LBE1129:
.LBE1128:
	.loc 1 1203 0
	ldrh	r1, [r2, #8]
.LVL330:
.LBB1134:
.LBB1130:
	.loc 1 1040 0
	rsb	lr, r4, r8
.LBE1130:
.LBE1134:
	.loc 1 1203 0
	add	r0, r3, r0, asl #1
.LVL331:
.LBB1135:
.LBB1131:
	.loc 1 1041 0 discriminator 1
	ble	.L278
	mov	r5, r4, asl #1
.LVL332:
	add	lr, r5, lr, asl #1
.LVL333:
	mov	ip, #0
.LVL334:
.L253:
	add	r3, r0, r5
.LBE1131:
.LBE1135:
.LBB1136:
.LBB1118:
	mov	r2, r0
.LVL335:
.L254:
.LBE1118:
.LBE1136:
.LBB1137:
.LBB1132:
	.loc 1 1043 0
	strh	r1, [r2], #2	@ movhi
.LVL336:
	.loc 1 1042 0 discriminator 1
	cmp	r2, r3
	bne	.L254
	.loc 1 1041 0 discriminator 2
	add	ip, ip, #1
.LVL337:
	.loc 1 1041 0 is_stmt 0 discriminator 1
	cmp	ip, r4
	add	r0, r0, lr
.LVL338:
	bne	.L253
	b	.L278
.LVL339:
.L232:
.LBE1132:
.LBE1137:
.LBB1138:
.LBB1139:
	.loc 2 156 0 is_stmt 1
	rsb	r2, r2, ip
.LBE1139:
.LBE1138:
	.loc 1 1207 0
	cmp	r2, #1
	bls	.L237
	.loc 1 1209 0
	ldr	ip, [r0, #2584]
.LBB1140:
.LBB1141:
.LBB1142:
	.loc 2 90 0
	add	r3, lr, #3
.LBE1142:
.LBE1141:
.LBE1140:
	.loc 1 1209 0
	mla	r0, r7, ip, r6
.LVL340:
.LBB1149:
.LBB1146:
.LBB1143:
	.loc 2 90 0
	str	r3, [r5, #4]
.LBE1143:
.LBE1146:
.LBE1149:
	.loc 1 1209 0
	ldr	r2, [r5, #2612]
.LBB1150:
.LBB1147:
.LBB1144:
	.loc 2 90 0
	ldrb	r3, [lr, #1]	@ zero_extendqisi2
	ldrb	r1, [lr, #2]	@ zero_extendqisi2
.LVL341:
.LBE1144:
.LBE1147:
.LBE1150:
.LBB1151:
.LBB1152:
	.loc 1 1041 0 discriminator 1
	cmp	r4, #0
.LBE1152:
.LBE1151:
.LBB1156:
.LBB1148:
.LBB1145:
	.loc 2 90 0
	orr	r1, r3, r1, asl #8
.LBE1145:
.LBE1148:
.LBE1156:
.LBB1157:
.LBB1153:
	.loc 1 1040 0
	rsb	ip, r4, ip
.LBE1153:
.LBE1157:
	.loc 1 1209 0
	add	r0, r2, r0, asl #1
.LVL342:
.LBB1158:
.LBB1154:
	.loc 1 1041 0 discriminator 1
	ble	.L278
	mov	r5, r4, asl #1
.LVL343:
	add	lr, r5, ip, asl #1
	mov	ip, #0
.LVL344:
.L255:
	add	r3, r0, r5
.LBE1154:
.LBE1158:
.LBB1159:
.LBB1133:
	mov	r2, r0
.LVL345:
.L256:
.LBE1133:
.LBE1159:
.LBB1160:
.LBB1155:
	.loc 1 1043 0
	strh	r1, [r2], #2	@ movhi
.LVL346:
	.loc 1 1042 0 discriminator 1
	cmp	r2, r3
	bne	.L256
	.loc 1 1041 0 discriminator 2
	add	ip, ip, #1
.LVL347:
	.loc 1 1041 0 is_stmt 0 discriminator 1
	cmp	ip, r4
	add	r0, r0, lr
.LVL348:
	bne	.L255
	b	.L278
.LVL349:
.L233:
.LBE1155:
.LBE1160:
	.loc 1 1213 0 is_stmt 1
	cmp	r4, #2
	beq	.L279
	.loc 1 1216 0
	mov	r4, r4, asr #1
.LVL350:
	.loc 1 1217 0
	mov	r3, r4
	mov	r1, r6
.LVL351:
	mov	r2, r7
	bl	codec2subblock(PLT)
.LVL352:
	cmp	r0, #0
	bne	.L237
	.loc 1 1219 0
	add	r8, r6, r4
	mov	r1, r8
	mov	r0, r5
	mov	r2, r7
	mov	r3, r4
	bl	codec2subblock(PLT)
.LVL353:
	cmp	r0, #0
	bne	.L237
	.loc 1 1221 0
	add	r7, r7, r4
.LVL354:
	mov	r1, r6
	mov	r2, r7
	mov	r0, r5
	mov	r3, r4
	bl	codec2subblock(PLT)
.LVL355:
	cmp	r0, #0
	bne	.L237
	.loc 1 1223 0
	mov	r0, r5
	mov	r1, r8
	mov	r2, r7
	mov	r3, r4
	bl	codec2subblock(PLT)
.LVL356:
	cmp	r0, #0
	beq	.L270
.LVL357:
.L237:
	.loc 1 1152 0
	ldr	r0, .L284
	b	.L270
.LVL358:
.L225:
.LBB1161:
.LBB1162:
	.loc 2 156 0
	rsb	r2, r2, ip
.LBE1162:
.LBE1161:
	.loc 1 1168 0
	cmp	r2, #1
	bls	.L237
.LVL359:
.LBB1163:
.LBB1164:
.LBB1165:
	.loc 2 90 0
	add	r3, lr, #3
	str	r3, [r0, #4]
.LVL360:
	ldrb	r3, [lr, #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #2]	@ zero_extendqisi2
.LBE1165:
.LBE1164:
.LBE1163:
	.loc 1 1172 0
	ldr	r9, [r0, #2588]
.LBB1168:
.LBB1167:
.LBB1166:
	.loc 2 90 0
	orr	r8, r3, r8, asl #8
.LBE1166:
.LBE1167:
.LBE1168:
	.loc 1 1172 0
	mov	r8, r8, asl #16
	mov	r8, r8, asr #16
	mov	r0, r8
.LVL361:
	mov	r1, r9
.LVL362:
	bl	__aeabi_idivmod(PLT)
.LVL363:
	.loc 1 1173 0
	mov	r0, r8
	.loc 1 1175 0
	mov	r8, r1, asl #16
.LVL364:
	.loc 1 1173 0
	mov	r1, r9
.LVL365:
	bl	__aeabi_idiv(PLT)
.LVL366:
.LBB1169:
.LBB1170:
	.loc 1 1133 0
	ldr	ip, [r5, #2584]
	add	r8, r6, r8, asr #16
.LBE1170:
.LBE1169:
	.loc 1 1175 0
	mov	r0, r0, asl #16
.LBB1173:
.LBB1171:
	.loc 1 1133 0
	add	r1, r7, r0, asr #16
	mla	r0, ip, r1, r8
.LVL367:
	.loc 1 1136 0
	cmp	r0, #0
	blt	.L238
	.loc 1 1134 0
	sub	r2, r4, #1
.LVL368:
	mla	r2, ip, r2, r2
.LVL369:
	.loc 1 1136 0 discriminator 1
	ldr	r3, [r5, #2660]
	.loc 1 1134 0
	add	r2, r0, r2
	.loc 1 1136 0 discriminator 1
	cmp	r2, r3, asr #1
	bge	.L238
.LVL370:
.LBE1171:
.LBE1173:
	.loc 1 1176 0
	mla	r6, ip, r7, r6
.LVL371:
	ldr	r8, [r5, #2612]
	ldr	lr, [r5, #2620]
.LBB1174:
.LBB1175:
	.loc 1 1023 0
	cmp	r4, #4
.LBE1175:
.LBE1174:
	.loc 1 1176 0
	add	r2, r8, r6, asl #1
	add	r1, lr, r0, asl #1
.LVL372:
.LBB1190:
.LBB1186:
	.loc 1 1021 0
	mov	r3, ip, asl #1
.LVL373:
	.loc 1 1023 0
	beq	.L260
	cmp	r4, #8
	beq	.L261
	cmp	r4, #2
	bne	.L278
.LVL374:
.LBB1176:
.LBB1177:
	.file 4 "libavcodec/copy_block.h"
	.loc 4 41 0
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
.LVL375:
	ldrb	lr, [lr, r0, asl #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
.LVL376:
	orr	lr, lr, r4, asl #8
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	r0, lr, r0, asl #16
	orr	r0, r0, r4, asl #24
	add	lr, r1, r3
	mov	r5, r0, lsr #16
.LVL377:
	mov	r4, r0, lsr #24
	mov	r7, r0, lsr #8
.LVL378:
	strb	r0, [r8, r6, asl #1]
	strb	r5, [r2, #2]
	strb	r7, [r2, #1]
	strb	r4, [r2, #3]
.LVL379:
	ldrb	r4, [lr, #1]	@ zero_extendqisi2
	ldrb	r0, [r1, ip, asl #1]	@ zero_extendqisi2
	ldrb	r1, [lr, #2]	@ zero_extendqisi2
.LVL380:
	orr	r0, r0, r4, asl #8
	ldrb	lr, [lr, #3]	@ zero_extendqisi2
.LVL381:
	orr	r1, r0, r1, asl #16
	orr	r1, r1, lr, asl #24
	add	r3, r2, r3
.LVL382:
	mov	r5, r1, lsr #8
	mov	r4, r1, lsr #16
	mov	lr, r1, lsr #24
	strb	r1, [r2, ip, asl #1]
.LBE1177:
.LBE1176:
.LBE1186:
.LBE1190:
	.loc 1 1228 0
	mov	r0, #0
.LBB1191:
.LBB1187:
.LBB1179:
.LBB1178:
	.loc 4 41 0
	strb	r5, [r3, #1]
	strb	r4, [r3, #2]
	strb	lr, [r3, #3]
.LVL383:
	b	.L270
.LVL384:
.L227:
.LBE1178:
.LBE1179:
.LBE1187:
.LBE1191:
	.loc 1 1182 0
	ldr	r0, [r0, #2584]
.LVL385:
	ldr	r8, [r5, #2612]
	mla	r6, r7, r0, r6
.LVL386:
	ldr	ip, [r5, #2616]
	mov	r2, r6, asl #1
.LBB1192:
.LBB1193:
	.loc 1 1023 0
	cmp	r4, #4
.LBE1193:
.LBE1192:
	.loc 1 1182 0
	add	r1, r8, r2
.LVL387:
.LBB1206:
.LBB1202:
	.loc 1 1021 0
	mov	r3, r0, asl #1
.LVL388:
.LBE1202:
.LBE1206:
	.loc 1 1182 0
	add	r2, ip, r2
.LVL389:
.LBB1207:
.LBB1203:
	.loc 1 1023 0
	beq	.L241
	cmp	r4, #8
	beq	.L242
	cmp	r4, #2
	bne	.L278
.LVL390:
.LBB1194:
.LBB1195:
	.loc 4 41 0
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
.LVL391:
	ldrb	lr, [ip, r6, asl #1]	@ zero_extendqisi2
.LVL392:
	ldrb	ip, [r2, #2]	@ zero_extendqisi2
	orr	lr, lr, r4, asl #8
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	orr	ip, lr, ip, asl #16
	orr	ip, ip, r4, asl #24
	add	lr, r2, r3
	mov	r4, ip, lsr #24
	mov	r7, ip, lsr #8
.LVL393:
	mov	r5, ip, lsr #16
.LVL394:
	strb	ip, [r8, r6, asl #1]
.LVL395:
	strb	r7, [r1, #1]
	strb	r5, [r1, #2]
	strb	r4, [r1, #3]
.LVL396:
	ldrb	ip, [r2, r0, asl #1]	@ zero_extendqisi2
	ldrb	r4, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [lr, #2]	@ zero_extendqisi2
.LVL397:
	orr	ip, ip, r4, asl #8
	ldrb	lr, [lr, #3]	@ zero_extendqisi2
.LVL398:
	orr	r2, ip, r2, asl #16
	orr	r2, r2, lr, asl #24
	add	r3, r1, r3
.LVL399:
	mov	r4, r2, lsr #8
	mov	lr, r2, lsr #16
	mov	ip, r2, lsr #24
	strb	r2, [r1, r0, asl #1]
.LBE1195:
.LBE1194:
.LBE1203:
.LBE1207:
	.loc 1 1228 0
	mov	r0, #0
.LVL400:
.LBB1208:
.LBB1204:
.LBB1197:
.LBB1196:
	.loc 4 41 0
	strb	r4, [r3, #1]
	strb	lr, [r3, #2]
	strb	ip, [r3, #3]
.LVL401:
	b	.L270
.LVL402:
.L228:
.LBE1196:
.LBE1197:
.LBE1204:
.LBE1208:
	.loc 1 1187 0
	ldr	r1, [r0, #2584]
.LVL403:
.LBB1209:
.LBB1210:
	.loc 1 1070 0
	ldr	r8, [r0, #2612]
	mla	r0, r1, r7, r6
.LVL404:
	.loc 1 1072 0
	cmp	r4, #2
	.loc 1 1070 0
	mov	r0, r0, asl #1
.LBB1211:
.LBB1212:
.LBB1213:
	.loc 2 156 0
	rsb	r2, r2, ip
.LBE1213:
.LBE1212:
.LBE1211:
	.loc 1 1070 0
	add	r3, r8, r0
.LVL405:
	.loc 1 1072 0
	beq	.L282
.LVL406:
.LBB1217:
	.loc 1 1090 0
	cmp	r2, #2
	bls	.L278
.LVL407:
.LBB1218:
.LBB1219:
.LBB1220:
	.loc 2 95 0
	add	r2, lr, #2
.LBE1220:
.LBE1219:
.LBE1218:
.LBB1223:
.LBB1224:
.LBB1225:
	add	r0, lr, #3
.LBE1225:
.LBE1224:
.LBE1223:
.LBB1228:
.LBB1222:
.LBB1221:
	str	r2, [r5, #4]
.LVL408:
.LBE1221:
.LBE1222:
.LBE1228:
	.loc 1 1093 0
	ldrb	r2, [lr, #1]	@ zero_extendqisi2
.LVL409:
.LBB1229:
.LBB1227:
.LBB1226:
	.loc 2 95 0
	str	r0, [r5, #4]
	ldrb	r0, [lr, #2]	@ zero_extendqisi2
.LBE1226:
.LBE1227:
.LBE1229:
.LBB1230:
.LBB1231:
.LBB1232:
	add	r6, lr, #4
.LVL410:
.LBE1232:
.LBE1231:
.LBE1230:
	.loc 1 1094 0
	add	r0, r0, #1328
	add	r0, r5, r0, asl #1
	ldrh	ip, [r0, #8]
.LVL411:
.LBB1235:
.LBB1234:
.LBB1233:
	.loc 2 95 0
	str	r6, [r5, #4]
.LVL412:
	ldrb	r0, [lr, #3]	@ zero_extendqisi2
.LVL413:
.LBE1233:
.LBE1234:
.LBE1235:
.LBB1236:
.LBB1237:
	.loc 1 1059 0
	cmp	r4, #8
.LBE1237:
.LBE1236:
	.loc 1 1095 0
	add	r0, r0, #1328
.LVL414:
	add	r0, r5, r0, asl #1
.LVL415:
.LBB1241:
.LBB1238:
	.loc 1 1051 0
	ldrh	r0, [r0, #8]
	strh	ip, [sp, #22]	@ movhi
	strh	r0, [sp, #20]	@ movhi
	.loc 1 1059 0
	beq	.L283
	.loc 1 1059 0 is_stmt 0 discriminator 2
	add	r2, r2, #199
.LVL416:
	.loc 1 1062 0 is_stmt 1 discriminator 1
	cmp	r4, #0
	.loc 1 1059 0 discriminator 2
	add	ip, r5, r2, asl #4
.LVL417:
	.loc 1 1060 0
	rsb	r1, r4, r1
.LVL418:
	.loc 1 1062 0 discriminator 1
	ble	.L278
.LVL419:
.L247:
	cmp	r4, #1
	mov	r5, r1, asl #1
.LVL420:
	movge	r6, r4
	movlt	r6, #1
.LBE1238:
.LBE1241:
.LBE1217:
.LBE1210:
.LBE1209:
	.loc 1 1147 0
	mov	lr, #0
.LVL421:
.L250:
	mov	r1, ip
.LVL422:
.L249:
.LBB1250:
.LBB1247:
.LBB1244:
.LBB1242:
.LBB1239:
	.loc 1 1064 0
	ldrsb	r2, [r1], #1
.LVL423:
	add	r0, sp, #24
	add	r2, r0, r2, asl #1
	rsb	r0, ip, r1
	ldrh	r2, [r2, #-4]
	.loc 1 1063 0 discriminator 1
	cmp	r4, r0
	.loc 1 1064 0
	strh	r2, [r3], #2	@ movhi
.LVL424:
	.loc 1 1063 0 discriminator 1
	bgt	.L249
	.loc 1 1062 0 discriminator 2
	add	lr, lr, #1
.LVL425:
	.loc 1 1062 0 is_stmt 0 discriminator 1
	cmp	r4, lr
	add	ip, ip, r6
	.loc 1 1062 0 discriminator 2
	add	r3, r3, r5
.LVL426:
	.loc 1 1062 0 discriminator 1
	bgt	.L250
	b	.L278
.LVL427:
.L238:
.LBE1239:
.LBE1242:
.LBE1244:
.LBE1247:
.LBE1250:
.LBB1251:
.LBB1172:
	.loc 1 1139 0 is_stmt 1
	ldr	r2, .L284+4
	ldr	r0, [r5]
.LVL428:
	mov	r3, r8
	stmia	sp, {r1, r6, r7}
	str	r4, [sp, #12]
	mov	r1, #16
.LVL429:
.LPIC40:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL430:
.LBE1172:
.LBE1251:
	.loc 1 1228 0
	mov	r0, #0
	b	.L270
.LVL431:
.L224:
	.loc 1 1158 0
	ldr	r3, .L284+8
.LBB1252:
.LBB1253:
	.loc 1 1133 0
	ldr	r2, [r0, #2584]
.LBE1253:
.LBE1252:
	.loc 1 1158 0
.LPIC37:
	add	r3, pc, r3
	ldrb	r0, [r3, r1, asl #1]	@ zero_extendqisi2
.LVL432:
	.loc 1 1159 0
	add	r3, r3, r1, asl #1
	.loc 1 1161 0
	ldrsb	ip, [r3, #1]
	mov	r3, r0, asl #24
.LBB1256:
.LBB1254:
	.loc 1 1133 0
	add	r3, r6, r3, asr #24
	add	ip, r7, ip
	mla	lr, r2, ip, r3
.LVL433:
	.loc 1 1136 0
	cmp	lr, #0
	blt	.L234
	.loc 1 1134 0
	sub	r1, r4, #1
.LVL434:
	mla	r1, r2, r1, r1
.LVL435:
	.loc 1 1136 0 discriminator 1
	ldr	r0, [r5, #2660]
.LVL436:
	.loc 1 1134 0
	add	r1, lr, r1
	.loc 1 1136 0 discriminator 1
	cmp	r1, r0, asr #1
	bge	.L234
.LVL437:
.LBE1254:
.LBE1256:
	.loc 1 1162 0
	mla	r6, r2, r7, r6
.LVL438:
	ldr	r8, [r5, #2612]
	ldr	ip, [r5, #2620]
.LBB1257:
.LBB1258:
	.loc 1 1023 0
	cmp	r4, #4
.LBE1258:
.LBE1257:
	.loc 1 1162 0
	add	r1, r8, r6, asl #1
	add	r0, ip, lr, asl #1
.LVL439:
.LBB1274:
.LBB1269:
	.loc 1 1021 0
	mov	r3, r2, asl #1
.LVL440:
	.loc 1 1023 0
	beq	.L258
	cmp	r4, #8
	beq	.L259
	cmp	r4, #2
	bne	.L278
.LVL441:
.LBB1259:
.LBB1260:
	.loc 4 41 0
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
.LVL442:
	ldrb	lr, [ip, lr, asl #1]	@ zero_extendqisi2
.LVL443:
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	orr	lr, lr, r4, asl #8
	ldrb	r4, [r0, #3]	@ zero_extendqisi2
	orr	ip, lr, ip, asl #16
	orr	ip, ip, r4, asl #24
	add	lr, r0, r3
	mov	r4, ip, lsr #24
	mov	r7, ip, lsr #8
.LVL444:
	mov	r5, ip, lsr #16
.LVL445:
	strb	ip, [r8, r6, asl #1]
.LVL446:
	strb	r7, [r1, #1]
	strb	r5, [r1, #2]
	strb	r4, [r1, #3]
.LVL447:
	ldrb	r4, [lr, #1]	@ zero_extendqisi2
	ldrb	ip, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r0, [lr, #2]	@ zero_extendqisi2
.LVL448:
	orr	ip, ip, r4, asl #8
	ldrb	lr, [lr, #3]	@ zero_extendqisi2
.LVL449:
	orr	r0, ip, r0, asl #16
	orr	r0, r0, lr, asl #24
	add	r3, r1, r3
.LVL450:
	mov	r4, r0, lsr #8
	mov	lr, r0, lsr #16
	mov	ip, r0, lsr #24
	strb	r0, [r1, r2, asl #1]
.LBE1260:
.LBE1259:
.LBE1269:
.LBE1274:
	.loc 1 1228 0
	mov	r0, #0
.LBB1275:
.LBB1270:
.LBB1262:
.LBB1261:
	.loc 4 41 0
	strb	r4, [r3, #1]
	strb	lr, [r3, #2]
	strb	ip, [r3, #3]
.LVL451:
	b	.L270
.LVL452:
.L234:
.LBE1261:
.LBE1262:
.LBE1270:
.LBE1275:
.LBB1276:
.LBB1255:
	.loc 1 1139 0
	ldr	r2, .L284+12
.LVL453:
	ldr	r0, [r5]
	mov	r1, #16
	str	ip, [sp]
.LVL454:
	stmib	sp, {r6, r7}
	str	r4, [sp, #12]
.LPIC39:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL455:
	b	.L278
.LVL456:
.L259:
.LBE1255:
.LBE1276:
.LBB1277:
.LBB1271:
.LBB1263:
.LBB1264:
	.loc 4 72 0
	ldrb	r5, [ip, lr, asl #1]	@ zero_extendqisi2
.LVL457:
	ldrb	r10, [r0, #5]	@ zero_extendqisi2
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
.LVL458:
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
.LVL459:
	ldrb	r9, [r0, #2]	@ zero_extendqisi2
	ldrb	ip, [r0, #6]	@ zero_extendqisi2
	ldrb	r7, [r0, #3]	@ zero_extendqisi2
.LVL460:
	orr	lr, lr, r10, asl #8
	orr	r4, r5, r4, asl #8
	ldrb	r5, [r0, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	orr	ip, lr, ip, asl #16
	orr	ip, ip, r5, asl #24
	orr	lr, r4, r7, asl #24
	mov	r10, lr, lsr #16
	mov	r9, lr, lsr #24
	mov	r7, ip, lsr #8
	mov	r5, ip, lsr #16
	mov	r4, ip, lsr #24
	mov	fp, lr, lsr #8
	strb	lr, [r8, r6, asl #1]
.LVL461:
	strb	r10, [r1, #2]
	strb	r9, [r1, #3]
	strb	ip, [r1, #4]
	strb	fp, [r1, #1]
	strb	r7, [r1, #5]
	strb	r5, [r1, #6]
	strb	r4, [r1, #7]
	ldrb	lr, [r0, #9]	@ zero_extendqisi2
	ldrb	r4, [r0, #12]	@ zero_extendqisi2
	ldrb	r5, [r0, #8]	@ zero_extendqisi2
	ldrb	ip, [r0, #13]	@ zero_extendqisi2
	ldrb	r8, [r0, #10]	@ zero_extendqisi2
	ldrb	r7, [r0, #14]	@ zero_extendqisi2
	ldrb	r6, [r0, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	ip, ip, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, ip, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	ip, r0, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r1, #9]
	strb	r4, [r1, #8]
	strb	r9, [r1, #10]
	strb	r8, [r1, #11]
	strb	r7, [r1, #13]
	strb	r6, [r1, #14]
	strb	lr, [r1, #12]
	strb	r5, [r1, #15]
	ldrb	r5, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #1]	@ zero_extendqisi2
	ldrb	r4, [ip, #4]	@ zero_extendqisi2
	ldrb	r0, [ip, #5]	@ zero_extendqisi2
.LVL462:
	ldrb	r8, [ip, #2]	@ zero_extendqisi2
	ldrb	r7, [ip, #6]	@ zero_extendqisi2
	ldrb	r6, [ip, #3]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r0, r4, r0, asl #8
	ldrb	lr, [ip, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r0, r0, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r0, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r0, r1, r3
.LVL463:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r1, r2, asl #1]
	strb	r10, [r0, #1]
	strb	r9, [r0, #2]
	strb	lr, [r0, #4]
	strb	r8, [r0, #3]
	strb	r7, [r0, #5]
	strb	r6, [r0, #6]
	strb	r5, [r0, #7]
	ldrb	lr, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #13]	@ zero_extendqisi2
.LVL464:
	ldrb	r8, [ip, #10]	@ zero_extendqisi2
	ldrb	r7, [ip, #14]	@ zero_extendqisi2
	ldrb	r6, [ip, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [ip, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r1, ip, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r0, #9]
	strb	r4, [r0, #8]
	strb	r9, [r0, #10]
	strb	r7, [r0, #13]
	strb	r6, [r0, #14]
	strb	lr, [r0, #12]
	strb	r8, [r0, #11]
	strb	r5, [r0, #15]
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #2]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
.LVL465:
	ldrb	r7, [r1, #6]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	ip, ip, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, ip, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	ip, r0, r3
.LVL466:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r0, r2, asl #1]
	strb	r10, [ip, #1]
	strb	r9, [ip, #2]
	strb	lr, [ip, #4]
	strb	r8, [ip, #3]
	strb	r7, [ip, #5]
	strb	r6, [ip, #6]
	strb	r5, [ip, #7]
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	r0, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r0, r4, r0, asl #8
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r0, r0, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r0, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r0, r1, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [ip, #9]
	strb	r4, [ip, #8]
	strb	r9, [ip, #10]
	strb	r7, [ip, #13]
	strb	lr, [ip, #12]
	strb	r8, [ip, #11]
	strb	r6, [ip, #14]
	strb	r5, [ip, #15]
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	ldrb	r8, [r0, #2]	@ zero_extendqisi2
	ldrb	r5, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	ldrb	r1, [r0, #5]	@ zero_extendqisi2
.LVL467:
	ldrb	r7, [r0, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r1, ip, r3
.LVL468:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [ip, r2, asl #1]
	strb	r10, [r1, #1]
	strb	r9, [r1, #2]
	strb	lr, [r1, #4]
	strb	r8, [r1, #3]
	strb	r7, [r1, #5]
	strb	r6, [r1, #6]
	strb	r5, [r1, #7]
	ldrb	lr, [r0, #9]	@ zero_extendqisi2
	ldrb	r4, [r0, #12]	@ zero_extendqisi2
	ldrb	r5, [r0, #8]	@ zero_extendqisi2
	ldrb	ip, [r0, #13]	@ zero_extendqisi2
	ldrb	r8, [r0, #10]	@ zero_extendqisi2
	ldrb	r7, [r0, #14]	@ zero_extendqisi2
	ldrb	r6, [r0, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	ip, ip, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, ip, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	ip, r0, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r1, #9]
	strb	r9, [r1, #10]
	strb	r7, [r1, #13]
	strb	r4, [r1, #8]
	strb	lr, [r1, #12]
	strb	r8, [r1, #11]
	strb	r6, [r1, #14]
	strb	r5, [r1, #15]
	ldrb	lr, [ip, #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #2]	@ zero_extendqisi2
	ldrb	r6, [ip, #3]	@ zero_extendqisi2
	ldrb	r5, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r4, [ip, #4]	@ zero_extendqisi2
	ldrb	r0, [ip, #5]	@ zero_extendqisi2
.LVL469:
	ldrb	r7, [ip, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r0, r4, r0, asl #8
	ldrb	lr, [ip, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r0, r0, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r0, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r0, r1, r3
.LVL470:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r1, r2, asl #1]
	strb	r10, [r0, #1]
	strb	r9, [r0, #2]
	strb	lr, [r0, #4]
	strb	r8, [r0, #3]
	strb	r7, [r0, #5]
	strb	r6, [r0, #6]
	strb	r5, [r0, #7]
	ldrb	lr, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #13]	@ zero_extendqisi2
	ldrb	r8, [ip, #10]	@ zero_extendqisi2
	ldrb	r7, [ip, #14]	@ zero_extendqisi2
	ldrb	r6, [ip, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [ip, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r1, ip, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r0, #9]
	strb	r9, [r0, #10]
	strb	r7, [r0, #13]
	strb	r4, [r0, #8]
	strb	lr, [r0, #12]
	strb	r8, [r0, #11]
	strb	r6, [r0, #14]
	strb	r5, [r0, #15]
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r5, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
.LVL471:
	ldrb	r7, [r1, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	ip, ip, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, ip, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	ip, r0, r3
.LVL472:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r0, r2, asl #1]
	strb	r10, [ip, #1]
	strb	r9, [ip, #2]
	strb	lr, [ip, #4]
	strb	r8, [ip, #3]
	strb	r7, [ip, #5]
	strb	r6, [ip, #6]
	strb	r5, [ip, #7]
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	r0, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r0, r4, r0, asl #8
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r0, r0, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r0, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r0, r1, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [ip, #9]
	strb	r9, [ip, #10]
	strb	r4, [ip, #8]
	strb	lr, [ip, #12]
	strb	r8, [ip, #11]
	strb	r7, [ip, #13]
	strb	r6, [ip, #14]
	strb	r5, [ip, #15]
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	ldrb	r5, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r0, #5]	@ zero_extendqisi2
.LVL473:
	ldrb	r8, [r0, #2]	@ zero_extendqisi2
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
	ldrb	r7, [r0, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r1, ip, r3
.LVL474:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [ip, r2, asl #1]
	strb	r10, [r1, #1]
	strb	r9, [r1, #2]
	strb	lr, [r1, #4]
	strb	r8, [r1, #3]
	strb	r7, [r1, #5]
	strb	r6, [r1, #6]
	strb	r5, [r1, #7]
	ldrb	lr, [r0, #9]	@ zero_extendqisi2
	ldrb	r4, [r0, #12]	@ zero_extendqisi2
	ldrb	r5, [r0, #8]	@ zero_extendqisi2
	ldrb	ip, [r0, #13]	@ zero_extendqisi2
	ldrb	r8, [r0, #10]	@ zero_extendqisi2
	ldrb	r7, [r0, #14]	@ zero_extendqisi2
	ldrb	r6, [r0, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	ip, ip, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, ip, lr, asl #24
	mov	r9, r4, lsr #16
	.loc 4 74 0
	add	ip, r0, r3
	.loc 4 72 0
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	mov	r10, r4, lsr #8
	strb	r9, [r1, #10]
	strb	r10, [r1, #9]
	strb	r4, [r1, #8]
	strb	lr, [r1, #12]
	strb	r8, [r1, #11]
	strb	r7, [r1, #13]
	strb	r6, [r1, #14]
	strb	r5, [r1, #15]
	ldrb	r5, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #5]	@ zero_extendqisi2
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #4]	@ zero_extendqisi2
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r0, [ip, #6]	@ zero_extendqisi2
.LVL475:
	ldrb	r6, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r4, r5, r4, asl #8
	ldrb	r5, [ip, #7]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r0, lr, r0, asl #16
	orr	r0, r0, r5, asl #24
	orr	lr, r4, r6, asl #24
	.loc 4 73 0
	add	r3, r1, r3
.LVL476:
	.loc 4 72 0
	mov	r9, lr, lsr #8
	mov	r8, lr, lsr #16
	mov	r7, lr, lsr #24
	mov	r6, r0, lsr #8
	mov	r5, r0, lsr #16
	mov	r4, r0, lsr #24
	strb	lr, [r1, r2, asl #1]
	strb	r0, [r3, #4]
.LVL477:
.L277:
	strb	r9, [r3, #1]
	strb	r8, [r3, #2]
	strb	r7, [r3, #3]
	strb	r6, [r3, #5]
	strb	r5, [r3, #6]
	strb	r4, [r3, #7]
	ldrb	lr, [ip, #8]	@ zero_extendqisi2
	ldrb	r0, [ip, #9]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #13]	@ zero_extendqisi2
	ldrb	r4, [ip, #10]	@ zero_extendqisi2
	ldrb	r2, [ip, #14]	@ zero_extendqisi2
	orr	r0, lr, r0, asl #8
	orr	r1, r1, r5, asl #8
	ldrb	lr, [ip, #11]	@ zero_extendqisi2
	ldrb	ip, [ip, #15]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #16
	orr	r0, r0, r4, asl #16
	orr	r1, r0, lr, asl #24
	orr	r2, r2, ip, asl #24
.LVL478:
.L275:
.LBE1264:
.LBE1263:
.LBE1271:
.LBE1277:
.LBB1278:
.LBB1188:
.LBB1180:
.LBB1181:
	mov	r6, r1, lsr #8
	mov	r5, r1, lsr #16
	mov	r4, r1, lsr #24
	mov	lr, r2, lsr #8
	mov	ip, r2, lsr #16
	mov	r0, r2, lsr #24
	strb	r6, [r3, #9]
	strb	r1, [r3, #8]
	strb	r2, [r3, #12]
	strb	r5, [r3, #10]
	strb	r4, [r3, #11]
	strb	lr, [r3, #13]
	strb	ip, [r3, #14]
	strb	r0, [r3, #15]
.LVL479:
	b	.L278
.LVL480:
.L260:
.LBE1181:
.LBE1180:
.LBB1183:
.LBB1184:
	.loc 4 51 0
	ldrb	r5, [lr, r0, asl #1]	@ zero_extendqisi2
.LVL481:
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
.LVL482:
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
.LVL483:
	ldrb	r0, [r1, #6]	@ zero_extendqisi2
.LVL484:
	orr	r5, r5, r9, asl #8
	orr	lr, lr, r7, asl #8
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	ldrb	r7, [r1, #7]	@ zero_extendqisi2
	orr	r4, r5, r4, asl #16
	orr	r0, lr, r0, asl #16
	orr	r4, r4, r9, asl #24
	orr	r0, r0, r7, asl #24
	strb	r4, [r8, r6, asl #1]
	mov	fp, r4, lsr #8
	mov	r10, r4, lsr #16
	mov	r9, r4, lsr #24
	mov	r7, r0, lsr #8
	.loc 4 53 0
	add	r4, r1, r3
	.loc 4 51 0
	mov	r5, r0, lsr #16
	mov	lr, r0, lsr #24
	strb	fp, [r2, #1]
	strb	r10, [r2, #2]
	strb	r9, [r2, #3]
	strb	r0, [r2, #4]
	strb	r7, [r2, #5]
	strb	r5, [r2, #6]
	strb	lr, [r2, #7]
	ldrb	r5, [r1, ip, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #5]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	ldrb	r7, [r4, #2]	@ zero_extendqisi2
	ldrb	r1, [r4, #6]	@ zero_extendqisi2
.LVL485:
	ldrb	r6, [r4, #3]	@ zero_extendqisi2
	orr	r0, r0, r8, asl #8
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r4, #7]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	orr	r1, r0, r1, asl #16
	orr	r1, r1, r5, asl #24
	orr	r0, lr, r6, asl #24
	.loc 4 52 0
	add	r5, r2, r3
.LVL486:
	.loc 4 53 0
	add	lr, r4, r3
	.loc 4 51 0
	mov	fp, r0, lsr #8
	mov	r10, r0, lsr #16
	mov	r9, r0, lsr #24
	mov	r8, r1, lsr #8
	mov	r7, r1, lsr #16
	mov	r6, r1, lsr #24
	strb	r0, [r2, ip, asl #1]
	strb	fp, [r5, #1]
	strb	r1, [r5, #4]
	strb	r10, [r5, #2]
	strb	r9, [r5, #3]
	strb	r8, [r5, #5]
	strb	r7, [r5, #6]
	strb	r6, [r5, #7]
	ldrb	r4, [r4, ip, asl #1]	@ zero_extendqisi2
.LVL487:
	ldrb	r0, [lr, #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #5]	@ zero_extendqisi2
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r7, [lr, #2]	@ zero_extendqisi2
	ldrb	r2, [lr, #6]	@ zero_extendqisi2
.LVL488:
	ldrb	r6, [lr, #3]	@ zero_extendqisi2
	orr	r1, r1, r8, asl #8
	orr	r0, r4, r0, asl #8
	ldrb	r4, [lr, #7]	@ zero_extendqisi2
	orr	r0, r0, r7, asl #16
	orr	r2, r1, r2, asl #16
	orr	r2, r2, r4, asl #24
	orr	r1, r0, r6, asl #24
	.loc 4 52 0
	add	r4, r5, r3
.LVL489:
	.loc 4 51 0
	add	r6, lr, r3
	mov	r8, r2, lsr #8
	mov	r7, r2, lsr #16
	mov	r0, r2, lsr #24
	mov	fp, r1, lsr #8
	mov	r10, r1, lsr #16
	mov	r9, r1, lsr #24
	strb	r1, [r5, ip, asl #1]
	strb	fp, [r4, #1]
	strb	r2, [r4, #4]
	strb	r10, [r4, #2]
	strb	r9, [r4, #3]
	strb	r8, [r4, #5]
	strb	r7, [r4, #6]
	strb	r0, [r4, #7]
.LVL490:
	ldrb	r8, [r6, #5]	@ zero_extendqisi2
	ldrb	lr, [lr, ip, asl #1]	@ zero_extendqisi2
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	ldrb	r1, [r6, #4]	@ zero_extendqisi2
	ldrb	r7, [r6, #2]	@ zero_extendqisi2
	ldrb	r2, [r6, #6]	@ zero_extendqisi2
	ldrb	r5, [r6, #3]	@ zero_extendqisi2
	orr	r1, r1, r8, asl #8
	orr	r0, lr, r0, asl #8
	ldrb	lr, [r6, #7]	@ zero_extendqisi2
	orr	r0, r0, r7, asl #16
	orr	r2, r1, r2, asl #16
	orr	r2, r2, lr, asl #24
	orr	r1, r0, r5, asl #24
	add	r3, r4, r3
.LVL491:
	mov	r8, r1, lsr #8
	mov	r7, r1, lsr #16
	mov	r6, r1, lsr #24
.LVL492:
	mov	r5, r2, lsr #8
	mov	lr, r2, lsr #16
	mov	r0, r2, lsr #24
	strb	r1, [r4, ip, asl #1]
	strb	r2, [r3, #4]
	strb	r8, [r3, #1]
	strb	r7, [r3, #2]
	strb	r6, [r3, #3]
	strb	r5, [r3, #5]
	strb	lr, [r3, #6]
	strb	r0, [r3, #7]
.LVL493:
	b	.L278
.LVL494:
.L282:
.LBE1184:
.LBE1183:
.LBE1188:
.LBE1278:
.LBB1279:
.LBB1248:
.LBB1245:
	.loc 1 1075 0
	cmp	r2, #3
	bls	.L278
.LVL495:
.LBB1214:
.LBB1215:
.LBB1216:
	.loc 2 88 0
	add	r2, lr, #5
	str	r2, [r5, #4]
.LVL496:
	ldrb	r4, [lr, #2]	@ zero_extendqisi2
.LVL497:
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [lr, #3]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	ldrb	lr, [lr, #4]	@ zero_extendqisi2
	orr	r2, ip, r2, asl #16
	orr	r2, r2, lr, asl #24
.LBE1216:
.LBE1215:
.LBE1214:
	.loc 1 1079 0
	and	r4, r2, #255
	.loc 1 1080 0
	mov	lr, r2, lsr #8
.LVL498:
	.loc 1 1082 0
	mov	ip, r2, lsr #16
.LVL499:
	.loc 1 1079 0
	add	r4, r4, #1328
	.loc 1 1081 0
	and	lr, lr, #255
	.loc 1 1079 0
	add	r4, r5, r4, asl #1
	.loc 1 1081 0
	add	lr, lr, #1328
	.loc 1 1083 0
	and	ip, ip, #255
.LVL500:
	.loc 1 1079 0
	ldrh	r4, [r4, #8]
	.loc 1 1083 0
	add	ip, ip, #1328
	.loc 1 1081 0
	add	lr, r5, lr, asl #1
	.loc 1 1085 0
	mov	r2, r2, lsr #24
.LVL501:
	.loc 1 1079 0
	strh	r4, [r8, r0]	@ movhi
.LVL502:
	.loc 1 1085 0
	add	r2, r2, #1328
	.loc 1 1083 0
	add	r0, r5, ip, asl #1
	.loc 1 1081 0
	ldrh	ip, [lr, #8]
	strh	ip, [r3, #2]	@ movhi
	.loc 1 1083 0
	mov	r1, r1, asl #1
.LVL503:
	ldrh	r0, [r0, #8]
	.loc 1 1085 0
	add	r2, r5, r2, asl #1
	.loc 1 1083 0
	strh	r0, [r3, r1]!	@ movhi
.LVL504:
	.loc 1 1085 0
	ldrh	r2, [r2, #8]
	strh	r2, [r3, #2]	@ movhi
.LBE1245:
.LBE1248:
.LBE1279:
	.loc 1 1228 0
	mov	r0, #0
	b	.L270
.L285:
	.align	2
.L284:
	.word	-1094995529
	.word	.LC7-(.LPIC40+8)
	.word	.LANCHOR0-(.LPIC37+8)
	.word	.LC7-(.LPIC39+8)
.LVL505:
.L242:
.LBB1280:
.LBB1205:
.LBB1198:
.LBB1199:
	.loc 4 72 0
	ldrb	r5, [ip, r6, asl #1]	@ zero_extendqisi2
.LVL506:
	ldrb	r10, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
.LVL507:
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
.LVL508:
	ldrb	r9, [r2, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #6]	@ zero_extendqisi2
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
.LVL509:
	orr	lr, lr, r10, asl #8
	orr	r4, r5, r4, asl #8
	ldrb	r5, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	orr	ip, lr, ip, asl #16
	orr	ip, ip, r5, asl #24
	orr	lr, r4, r7, asl #24
	mov	r10, lr, lsr #16
	mov	r9, lr, lsr #24
	mov	r7, ip, lsr #8
	mov	r5, ip, lsr #16
	mov	r4, ip, lsr #24
	mov	fp, lr, lsr #8
	strb	lr, [r8, r6, asl #1]
.LVL510:
	strb	r10, [r1, #2]
	strb	r9, [r1, #3]
	strb	ip, [r1, #4]
	strb	fp, [r1, #1]
	strb	r7, [r1, #5]
	strb	r5, [r1, #6]
	strb	r4, [r1, #7]
	ldrb	lr, [r2, #9]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	ip, [r2, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	ldrb	r7, [r2, #14]	@ zero_extendqisi2
	ldrb	r6, [r2, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	lr, [r2, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	ip, ip, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, ip, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	ip, r2, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r1, #9]
	strb	r4, [r1, #8]
	strb	lr, [r1, #12]
	strb	r9, [r1, #10]
	strb	r8, [r1, #11]
	strb	r6, [r1, #14]
	strb	r7, [r1, #13]
	strb	r5, [r1, #15]
	ldrb	r5, [r2, r0, asl #1]	@ zero_extendqisi2
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r6, [ip, #5]	@ zero_extendqisi2
	ldrb	lr, [ip, #4]	@ zero_extendqisi2
	ldrb	r4, [ip, #2]	@ zero_extendqisi2
	ldrb	r2, [ip, #6]	@ zero_extendqisi2
.LVL511:
	orr	r5, r5, r7, asl #8
	orr	lr, lr, r6, asl #8
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	ldrb	r6, [ip, #7]	@ zero_extendqisi2
	orr	r4, r5, r4, asl #16
	orr	r2, lr, r2, asl #16
	orr	r4, r4, r7, asl #24
	orr	r2, r2, r6, asl #24
	.loc 4 73 0
	add	lr, r1, r3
.LVL512:
	.loc 4 72 0
	mov	r10, r4, lsr #8
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, r2, lsr #8
	mov	r6, r2, lsr #16
	mov	r5, r2, lsr #24
	strb	r4, [r1, r0, asl #1]
	strb	r10, [lr, #1]
	strb	r9, [lr, #2]
	strb	r2, [lr, #4]
	strb	r8, [lr, #3]
	strb	r7, [lr, #5]
	strb	r6, [lr, #6]
	strb	r5, [lr, #7]
	ldrb	r1, [ip, #9]	@ zero_extendqisi2
.LVL513:
	ldrb	r4, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	ldrb	r2, [ip, #13]	@ zero_extendqisi2
	ldrb	r8, [ip, #10]	@ zero_extendqisi2
	ldrb	r7, [ip, #14]	@ zero_extendqisi2
	ldrb	r6, [ip, #11]	@ zero_extendqisi2
	orr	r5, r5, r1, asl #8
	orr	r2, r4, r2, asl #8
	ldrb	r1, [ip, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r2, r2, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	r1, r2, r1, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r2, ip, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, r1, lsr #8
	mov	r6, r1, lsr #16
	mov	r5, r1, lsr #24
	strb	r10, [lr, #9]
	strb	r1, [lr, #12]
	strb	r9, [lr, #10]
	strb	r8, [lr, #11]
	strb	r6, [lr, #14]
	strb	r4, [lr, #8]
	strb	r7, [lr, #13]
	strb	r5, [lr, #15]
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	ldrb	r5, [ip, r0, asl #1]	@ zero_extendqisi2
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	ip, [r2, #4]	@ zero_extendqisi2
.LVL514:
	ldrb	r1, [r2, #6]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #8
	orr	ip, ip, r6, asl #8
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
	ldrb	r6, [r2, #7]	@ zero_extendqisi2
	orr	r4, r5, r4, asl #16
	orr	r1, ip, r1, asl #16
	orr	r4, r4, r7, asl #24
	orr	r1, r1, r6, asl #24
	.loc 4 73 0
	add	ip, lr, r3
.LVL515:
	.loc 4 72 0
	mov	r10, r4, lsr #8
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, r1, lsr #8
	mov	r6, r1, lsr #16
	mov	r5, r1, lsr #24
	strb	r4, [lr, r0, asl #1]
	strb	r10, [ip, #1]
	strb	r9, [ip, #2]
	strb	r1, [ip, #4]
	strb	r8, [ip, #3]
	strb	r7, [ip, #5]
	strb	r6, [ip, #6]
	strb	r5, [ip, #7]
	ldrb	lr, [r2, #9]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r1, [r2, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	ldrb	r7, [r2, #14]	@ zero_extendqisi2
	ldrb	r6, [r2, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [r2, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r1, r2, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [ip, #9]
	strb	r4, [ip, #8]
	strb	r9, [ip, #10]
	strb	r7, [ip, #13]
	strb	lr, [ip, #12]
	strb	r8, [ip, #11]
	strb	r6, [ip, #14]
	strb	r5, [ip, #15]
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #2]	@ zero_extendqisi2
	ldrb	r5, [r2, r0, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r2, [r1, #5]	@ zero_extendqisi2
.LVL516:
	ldrb	r7, [r1, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r2, r4, r2, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r2, r2, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r2, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r2, ip, r3
.LVL517:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [ip, r0, asl #1]
	strb	r10, [r2, #1]
	strb	r9, [r2, #2]
	strb	lr, [r2, #4]
	strb	r8, [r2, #3]
	strb	r7, [r2, #5]
	strb	r6, [r2, #6]
	strb	r5, [r2, #7]
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	ip, ip, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, ip, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	ip, r1, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r2, #9]
	strb	r9, [r2, #10]
	strb	r7, [r2, #13]
	strb	r4, [r2, #8]
	strb	lr, [r2, #12]
	strb	r8, [r2, #11]
	strb	r6, [r2, #14]
	strb	r5, [r2, #15]
	ldrb	lr, [ip, #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #2]	@ zero_extendqisi2
	ldrb	r6, [ip, #3]	@ zero_extendqisi2
	ldrb	r5, [r1, r0, asl #1]	@ zero_extendqisi2
	ldrb	r4, [ip, #4]	@ zero_extendqisi2
	ldrb	r1, [ip, #5]	@ zero_extendqisi2
.LVL518:
	ldrb	r7, [ip, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [ip, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r1, r2, r3
.LVL519:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r2, r0, asl #1]
	strb	r10, [r1, #1]
	strb	r9, [r1, #2]
	strb	lr, [r1, #4]
	strb	r8, [r1, #3]
	strb	r7, [r1, #5]
	strb	r6, [r1, #6]
	strb	r5, [r1, #7]
	ldrb	lr, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	ldrb	r2, [ip, #13]	@ zero_extendqisi2
	ldrb	r8, [ip, #10]	@ zero_extendqisi2
	ldrb	r7, [ip, #14]	@ zero_extendqisi2
	ldrb	r6, [ip, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r2, r4, r2, asl #8
	ldrb	lr, [ip, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r2, r2, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r2, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r2, ip, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r1, #9]
	strb	r9, [r1, #10]
	strb	r7, [r1, #13]
	strb	r4, [r1, #8]
	strb	lr, [r1, #12]
	strb	r8, [r1, #11]
	strb	r6, [r1, #14]
	strb	r5, [r1, #15]
	ldrb	lr, [r2, #1]	@ zero_extendqisi2
	ldrb	r8, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r2, #3]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	ldrb	r5, [ip, r0, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r2, #5]	@ zero_extendqisi2
.LVL520:
	ldrb	r7, [r2, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	lr, [r2, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	ip, ip, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, ip, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	ip, r1, r3
.LVL521:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r1, r0, asl #1]
	strb	r10, [ip, #1]
	strb	r9, [ip, #2]
	strb	lr, [ip, #4]
	strb	r8, [ip, #3]
	strb	r7, [ip, #5]
	strb	r6, [ip, #6]
	strb	r5, [ip, #7]
	ldrb	lr, [r2, #9]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r1, [r2, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	ldrb	r7, [r2, #14]	@ zero_extendqisi2
	ldrb	r6, [r2, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [r2, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r1, r2, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [ip, #9]
	strb	r9, [ip, #10]
	strb	r4, [ip, #8]
	strb	lr, [ip, #12]
	strb	r8, [ip, #11]
	strb	r7, [ip, #13]
	strb	r6, [ip, #14]
	strb	r5, [ip, #15]
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r5, [r2, r0, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r1, #5]	@ zero_extendqisi2
.LVL522:
	ldrb	r8, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	ldrb	r7, [r1, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r2, r4, r2, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r2, r2, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r2, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r2, ip, r3
.LVL523:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [ip, r0, asl #1]
	strb	r10, [r2, #1]
	strb	r9, [r2, #2]
	strb	lr, [r2, #4]
	strb	r8, [r2, #3]
	strb	r7, [r2, #5]
	strb	r6, [r2, #6]
	strb	r5, [r2, #7]
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	ip, ip, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, ip, lr, asl #24
	mov	r9, r4, lsr #16
	.loc 4 74 0
	add	ip, r1, r3
	.loc 4 72 0
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	mov	r10, r4, lsr #8
	strb	r9, [r2, #10]
	strb	r10, [r2, #9]
	strb	r4, [r2, #8]
	strb	lr, [r2, #12]
	strb	r8, [r2, #11]
	strb	r7, [r2, #13]
	strb	r6, [r2, #14]
	strb	r5, [r2, #15]
	ldrb	r5, [r1, r0, asl #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #5]	@ zero_extendqisi2
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #4]	@ zero_extendqisi2
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r1, [ip, #6]	@ zero_extendqisi2
.LVL524:
	ldrb	r6, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r4, r5, r4, asl #8
	ldrb	r5, [ip, #7]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r1, lr, r1, asl #16
	orr	r1, r1, r5, asl #24
	orr	lr, r4, r6, asl #24
	.loc 4 73 0
	add	r3, r2, r3
.LVL525:
	.loc 4 72 0
	strb	lr, [r2, r0, asl #1]
	mov	r9, lr, lsr #8
	mov	r8, lr, lsr #16
	mov	r7, lr, lsr #24
	mov	r6, r1, lsr #8
	mov	r5, r1, lsr #16
	mov	r4, r1, lsr #24
	strb	r1, [r3, #4]
	b	.L277
.LVL526:
.L241:
.LBE1199:
.LBE1198:
.LBB1200:
.LBB1201:
	.loc 4 51 0
	ldrb	r5, [ip, r6, asl #1]	@ zero_extendqisi2
.LVL527:
	ldrb	r9, [r2, #1]	@ zero_extendqisi2
	ldrb	r7, [r2, #5]	@ zero_extendqisi2
.LVL528:
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
.LVL529:
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
.LVL530:
	ldrb	ip, [r2, #6]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	orr	lr, lr, r7, asl #8
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	ldrb	r7, [r2, #7]	@ zero_extendqisi2
	orr	r4, r5, r4, asl #16
	orr	ip, lr, ip, asl #16
	orr	r4, r4, r9, asl #24
	orr	ip, ip, r7, asl #24
	strb	r4, [r8, r6, asl #1]
.LVL531:
	mov	fp, r4, lsr #8
	mov	r10, r4, lsr #16
	mov	r9, r4, lsr #24
	mov	r7, ip, lsr #8
	.loc 4 53 0
	add	r4, r2, r3
	.loc 4 51 0
	mov	r5, ip, lsr #16
	mov	lr, ip, lsr #24
	strb	fp, [r1, #1]
	strb	r10, [r1, #2]
	strb	r9, [r1, #3]
	strb	ip, [r1, #4]
	strb	r7, [r1, #5]
	strb	r5, [r1, #6]
	strb	lr, [r1, #7]
	ldrb	r5, [r2, r0, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #5]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	ip, [r4, #4]	@ zero_extendqisi2
	ldrb	r7, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #6]	@ zero_extendqisi2
.LVL532:
	ldrb	r6, [r4, #3]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r4, #7]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	orr	r2, ip, r2, asl #16
	orr	r2, r2, r5, asl #24
	orr	ip, lr, r6, asl #24
	.loc 4 52 0
	add	r5, r1, r3
.LVL533:
	.loc 4 53 0
	add	lr, r4, r3
	.loc 4 51 0
	mov	fp, ip, lsr #8
	mov	r10, ip, lsr #16
	mov	r9, ip, lsr #24
	mov	r8, r2, lsr #8
	mov	r7, r2, lsr #16
	mov	r6, r2, lsr #24
	strb	ip, [r1, r0, asl #1]
	strb	fp, [r5, #1]
	strb	r2, [r5, #4]
	strb	r10, [r5, #2]
	strb	r9, [r5, #3]
	strb	r8, [r5, #5]
	strb	r7, [r5, #6]
	strb	r6, [r5, #7]
	ldrb	r4, [r4, r0, asl #1]	@ zero_extendqisi2
.LVL534:
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #5]	@ zero_extendqisi2
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
.LVL535:
	ldrb	r7, [lr, #2]	@ zero_extendqisi2
	ldrb	r2, [lr, #6]	@ zero_extendqisi2
	ldrb	r6, [lr, #3]	@ zero_extendqisi2
	orr	r1, r1, r8, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	r4, [lr, #7]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #16
	orr	r2, r1, r2, asl #16
	orr	r2, r2, r4, asl #24
	orr	r1, ip, r6, asl #24
	.loc 4 52 0
	add	r4, r5, r3
.LVL536:
	.loc 4 51 0
	add	r6, lr, r3
	mov	r8, r2, lsr #8
	mov	r7, r2, lsr #16
	mov	ip, r2, lsr #24
	mov	fp, r1, lsr #8
	mov	r10, r1, lsr #16
	mov	r9, r1, lsr #24
	strb	r1, [r5, r0, asl #1]
	strb	fp, [r4, #1]
	strb	r2, [r4, #4]
	strb	r10, [r4, #2]
	strb	r9, [r4, #3]
	strb	r8, [r4, #5]
	strb	r7, [r4, #6]
	strb	ip, [r4, #7]
.LVL537:
	ldrb	r8, [r6, #5]	@ zero_extendqisi2
	ldrb	lr, [lr, r0, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r6, #1]	@ zero_extendqisi2
	ldrb	r1, [r6, #4]	@ zero_extendqisi2
	ldrb	r7, [r6, #2]	@ zero_extendqisi2
	ldrb	r2, [r6, #6]	@ zero_extendqisi2
	ldrb	r5, [r6, #3]	@ zero_extendqisi2
	orr	r1, r1, r8, asl #8
	orr	ip, lr, ip, asl #8
	ldrb	lr, [r6, #7]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #16
	orr	r2, r1, r2, asl #16
	orr	r2, r2, lr, asl #24
	orr	r1, ip, r5, asl #24
	add	r3, r4, r3
.LVL538:
	mov	r8, r1, lsr #8
	mov	r7, r1, lsr #16
	mov	r6, r1, lsr #24
.LVL539:
	mov	r5, r2, lsr #8
	mov	lr, r2, lsr #16
	mov	ip, r2, lsr #24
	strb	r1, [r4, r0, asl #1]
	strb	r2, [r3, #4]
.LVL540:
.L276:
.LBE1201:
.LBE1200:
.LBE1205:
.LBE1280:
.LBB1281:
.LBB1272:
.LBB1265:
.LBB1266:
	strb	r8, [r3, #1]
	strb	r7, [r3, #2]
	strb	r6, [r3, #3]
	strb	r5, [r3, #5]
	strb	lr, [r3, #6]
	strb	ip, [r3, #7]
.LVL541:
	b	.L278
.LVL542:
.L283:
.LBE1266:
.LBE1265:
.LBE1272:
.LBE1281:
.LBB1282:
.LBB1249:
.LBB1246:
.LBB1243:
.LBB1240:
	.loc 1 1059 0 discriminator 1
	add	r2, r5, r2, asl #6
.LVL543:
	add	ip, r2, #7232
.LVL544:
	add	ip, ip, #48
.LVL545:
	.loc 1 1060 0
	sub	r1, r1, #8
.LVL546:
	b	.L247
.LVL547:
.L258:
.LBE1240:
.LBE1243:
.LBE1246:
.LBE1249:
.LBE1282:
.LBB1283:
.LBB1273:
.LBB1268:
.LBB1267:
	.loc 4 51 0
	ldrb	r5, [ip, lr, asl #1]	@ zero_extendqisi2
.LVL548:
	ldrb	r9, [r0, #1]	@ zero_extendqisi2
	ldrb	r7, [r0, #5]	@ zero_extendqisi2
.LVL549:
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
.LVL550:
	ldrb	r4, [r0, #2]	@ zero_extendqisi2
.LVL551:
	ldrb	ip, [r0, #6]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	orr	lr, lr, r7, asl #8
	ldrb	r9, [r0, #3]	@ zero_extendqisi2
	ldrb	r7, [r0, #7]	@ zero_extendqisi2
	orr	r4, r5, r4, asl #16
	orr	ip, lr, ip, asl #16
	orr	r4, r4, r9, asl #24
	orr	ip, ip, r7, asl #24
	strb	r4, [r8, r6, asl #1]
.LVL552:
	mov	fp, r4, lsr #8
	mov	r10, r4, lsr #16
	mov	r9, r4, lsr #24
	mov	r7, ip, lsr #8
	.loc 4 53 0
	add	r4, r0, r3
	.loc 4 51 0
	mov	r5, ip, lsr #16
	mov	lr, ip, lsr #24
	strb	fp, [r1, #1]
	strb	r10, [r1, #2]
	strb	r9, [r1, #3]
	strb	ip, [r1, #4]
	strb	r7, [r1, #5]
	strb	r5, [r1, #6]
	strb	lr, [r1, #7]
	ldrb	r5, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #5]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	ip, [r4, #4]	@ zero_extendqisi2
	ldrb	r7, [r4, #2]	@ zero_extendqisi2
	ldrb	r0, [r4, #6]	@ zero_extendqisi2
.LVL553:
	ldrb	r6, [r4, #3]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r4, #7]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	orr	r0, ip, r0, asl #16
	orr	r0, r0, r5, asl #24
	orr	ip, lr, r6, asl #24
	.loc 4 52 0
	add	r5, r1, r3
.LVL554:
	.loc 4 53 0
	add	lr, r4, r3
	.loc 4 51 0
	mov	fp, ip, lsr #8
	mov	r10, ip, lsr #16
	mov	r9, ip, lsr #24
	mov	r8, r0, lsr #8
	mov	r7, r0, lsr #16
	mov	r6, r0, lsr #24
	strb	ip, [r1, r2, asl #1]
	strb	fp, [r5, #1]
	strb	r0, [r5, #4]
	strb	r10, [r5, #2]
	strb	r9, [r5, #3]
	strb	r8, [r5, #5]
	strb	r7, [r5, #6]
	strb	r6, [r5, #7]
	ldrb	r4, [r4, r2, asl #1]	@ zero_extendqisi2
.LVL555:
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #5]	@ zero_extendqisi2
	ldrb	r0, [lr, #4]	@ zero_extendqisi2
	ldrb	r7, [lr, #2]	@ zero_extendqisi2
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
.LVL556:
	ldrb	r6, [lr, #3]	@ zero_extendqisi2
	orr	r0, r0, r8, asl #8
	orr	ip, r4, ip, asl #8
	ldrb	r4, [lr, #7]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #16
	orr	r1, r0, r1, asl #16
	orr	r1, r1, r4, asl #24
	orr	r0, ip, r6, asl #24
	.loc 4 52 0
	add	r4, r5, r3
.LVL557:
	.loc 4 51 0
	add	r6, lr, r3
	mov	r8, r1, lsr #8
	mov	r7, r1, lsr #16
	mov	ip, r1, lsr #24
	mov	fp, r0, lsr #8
	mov	r10, r0, lsr #16
	mov	r9, r0, lsr #24
	strb	r0, [r5, r2, asl #1]
	strb	fp, [r4, #1]
	strb	r1, [r4, #4]
	strb	r10, [r4, #2]
	strb	r9, [r4, #3]
	strb	r8, [r4, #5]
	strb	r7, [r4, #6]
	strb	ip, [r4, #7]
.LVL558:
	ldrb	r8, [r6, #5]	@ zero_extendqisi2
	ldrb	lr, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r6, #1]	@ zero_extendqisi2
	ldrb	r0, [r6, #4]	@ zero_extendqisi2
	ldrb	r7, [r6, #2]	@ zero_extendqisi2
	ldrb	r1, [r6, #6]	@ zero_extendqisi2
	ldrb	r5, [r6, #3]	@ zero_extendqisi2
	orr	r0, r0, r8, asl #8
	orr	ip, lr, ip, asl #8
	ldrb	lr, [r6, #7]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #16
	orr	r1, r0, r1, asl #16
	orr	r1, r1, lr, asl #24
	orr	r0, ip, r5, asl #24
	add	r3, r4, r3
.LVL559:
	strb	r0, [r4, r2, asl #1]
	mov	r8, r0, lsr #8
	mov	r7, r0, lsr #16
	mov	r6, r0, lsr #24
.LVL560:
	mov	r5, r1, lsr #8
	mov	lr, r1, lsr #16
	mov	ip, r1, lsr #24
	strb	r1, [r3, #4]
	b	.L276
.LVL561:
.L261:
.LBE1267:
.LBE1268:
.LBE1273:
.LBE1283:
.LBB1284:
.LBB1189:
.LBB1185:
.LBB1182:
	.loc 4 72 0
	ldrb	r5, [lr, r0, asl #1]	@ zero_extendqisi2
.LVL562:
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
.LVL563:
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	ldrb	r0, [r1, #6]	@ zero_extendqisi2
.LVL564:
	ldrb	r7, [r1, #3]	@ zero_extendqisi2
.LVL565:
	orr	lr, lr, r10, asl #8
	orr	r4, r5, r4, asl #8
	ldrb	r5, [r1, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	orr	r0, lr, r0, asl #16
	orr	r0, r0, r5, asl #24
	orr	lr, r4, r7, asl #24
	mov	r10, lr, lsr #16
	mov	r9, lr, lsr #24
	mov	r7, r0, lsr #8
	mov	r5, r0, lsr #16
	mov	r4, r0, lsr #24
	mov	fp, lr, lsr #8
	strb	lr, [r8, r6, asl #1]
	strb	r10, [r2, #2]
	strb	r9, [r2, #3]
	strb	r0, [r2, #4]
	strb	fp, [r2, #1]
	strb	r7, [r2, #5]
	strb	r5, [r2, #6]
	strb	r4, [r2, #7]
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	r0, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r0, r4, r0, asl #8
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r0, r0, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r0, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r0, r1, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r2, #9]
	strb	r4, [r2, #8]
	strb	r9, [r2, #10]
	strb	r8, [r2, #11]
	strb	r7, [r2, #13]
	strb	r6, [r2, #14]
	strb	lr, [r2, #12]
	strb	r5, [r2, #15]
	ldrb	r5, [r1, ip, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	ldrb	r1, [r0, #5]	@ zero_extendqisi2
.LVL566:
	ldrb	r8, [r0, #2]	@ zero_extendqisi2
	ldrb	r7, [r0, #6]	@ zero_extendqisi2
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r1, r2, r3
.LVL567:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r2, ip, asl #1]
	strb	r10, [r1, #1]
	strb	r9, [r1, #2]
	strb	lr, [r1, #4]
	strb	r8, [r1, #3]
	strb	r7, [r1, #5]
	strb	r6, [r1, #6]
	strb	r5, [r1, #7]
	ldrb	lr, [r0, #9]	@ zero_extendqisi2
	ldrb	r4, [r0, #12]	@ zero_extendqisi2
	ldrb	r5, [r0, #8]	@ zero_extendqisi2
	ldrb	r2, [r0, #13]	@ zero_extendqisi2
.LVL568:
	ldrb	r8, [r0, #10]	@ zero_extendqisi2
	ldrb	r7, [r0, #14]	@ zero_extendqisi2
	ldrb	r6, [r0, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r2, r4, r2, asl #8
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r2, r2, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r2, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r2, r0, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r1, #9]
	strb	r4, [r1, #8]
	strb	r9, [r1, #10]
	strb	r7, [r1, #13]
	strb	r6, [r1, #14]
	strb	lr, [r1, #12]
	strb	r8, [r1, #11]
	strb	r5, [r1, #15]
	ldrb	r5, [r0, ip, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r2, #1]	@ zero_extendqisi2
	ldrb	r8, [r2, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	ldrb	r0, [r2, #5]	@ zero_extendqisi2
.LVL569:
	ldrb	r7, [r2, #6]	@ zero_extendqisi2
	ldrb	r6, [r2, #3]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r0, r4, r0, asl #8
	ldrb	lr, [r2, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r0, r0, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r0, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r0, r1, r3
.LVL570:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r1, ip, asl #1]
	strb	r10, [r0, #1]
	strb	r9, [r0, #2]
	strb	lr, [r0, #4]
	strb	r8, [r0, #3]
	strb	r7, [r0, #5]
	strb	r6, [r0, #6]
	strb	r5, [r0, #7]
	ldrb	lr, [r2, #9]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r1, [r2, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	ldrb	r7, [r2, #14]	@ zero_extendqisi2
	ldrb	r6, [r2, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [r2, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r1, r2, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r0, #9]
	strb	r4, [r0, #8]
	strb	r9, [r0, #10]
	strb	r7, [r0, #13]
	strb	lr, [r0, #12]
	strb	r8, [r0, #11]
	strb	r6, [r0, #14]
	strb	r5, [r0, #15]
	ldrb	r5, [r2, ip, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r2, [r1, #5]	@ zero_extendqisi2
.LVL571:
	ldrb	r7, [r1, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r2, r4, r2, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r2, r2, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r2, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r2, r0, r3
.LVL572:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r0, ip, asl #1]
	strb	r10, [r2, #1]
	strb	r9, [r2, #2]
	strb	lr, [r2, #4]
	strb	r8, [r2, #3]
	strb	r7, [r2, #5]
	strb	r6, [r2, #6]
	strb	r5, [r2, #7]
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	r0, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r0, r4, r0, asl #8
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r0, r0, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r0, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r0, r1, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r2, #9]
	strb	r9, [r2, #10]
	strb	r7, [r2, #13]
	strb	r4, [r2, #8]
	strb	lr, [r2, #12]
	strb	r8, [r2, #11]
	strb	r6, [r2, #14]
	strb	r5, [r2, #15]
	ldrb	r5, [r1, ip, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	ldrb	r8, [r0, #2]	@ zero_extendqisi2
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	ldrb	r1, [r0, #5]	@ zero_extendqisi2
.LVL573:
	ldrb	r7, [r0, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r1, r2, r3
.LVL574:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r2, ip, asl #1]
	strb	r10, [r1, #1]
	strb	r9, [r1, #2]
	strb	lr, [r1, #4]
	strb	r8, [r1, #3]
	strb	r7, [r1, #5]
	strb	r6, [r1, #6]
	strb	r5, [r1, #7]
	ldrb	lr, [r0, #9]	@ zero_extendqisi2
	ldrb	r4, [r0, #12]	@ zero_extendqisi2
	ldrb	r5, [r0, #8]	@ zero_extendqisi2
	ldrb	r2, [r0, #13]	@ zero_extendqisi2
	ldrb	r8, [r0, #10]	@ zero_extendqisi2
	ldrb	r7, [r0, #14]	@ zero_extendqisi2
	ldrb	r6, [r0, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r2, r4, r2, asl #8
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r2, r2, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r2, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r2, r0, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r1, #9]
	strb	r9, [r1, #10]
	strb	r7, [r1, #13]
	strb	r4, [r1, #8]
	strb	lr, [r1, #12]
	strb	r8, [r1, #11]
	strb	r6, [r1, #14]
	strb	r5, [r1, #15]
	ldrb	lr, [r2, #1]	@ zero_extendqisi2
	ldrb	r8, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r2, #3]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	ldrb	r5, [r0, ip, asl #1]	@ zero_extendqisi2
	ldrb	r0, [r2, #5]	@ zero_extendqisi2
.LVL575:
	ldrb	r7, [r2, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r0, r4, r0, asl #8
	ldrb	lr, [r2, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r0, r0, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r0, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r0, r1, r3
.LVL576:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r1, ip, asl #1]
	strb	r10, [r0, #1]
	strb	r9, [r0, #2]
	strb	lr, [r0, #4]
	strb	r8, [r0, #3]
	strb	r7, [r0, #5]
	strb	r6, [r0, #6]
	strb	r5, [r0, #7]
	ldrb	lr, [r2, #9]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r1, [r2, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	ldrb	r7, [r2, #14]	@ zero_extendqisi2
	ldrb	r6, [r2, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r1, r4, r1, asl #8
	ldrb	lr, [r2, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r1, r1, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 74 0
	add	r1, r2, r3
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r10, [r0, #9]
	strb	r9, [r0, #10]
	strb	r4, [r0, #8]
	strb	lr, [r0, #12]
	strb	r8, [r0, #11]
	strb	r7, [r0, #13]
	strb	r6, [r0, #14]
	strb	r5, [r0, #15]
	ldrb	r5, [r2, ip, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r2, [r1, #5]	@ zero_extendqisi2
.LVL577:
	ldrb	r8, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	ldrb	r7, [r1, #6]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r2, r4, r2, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r2, r2, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r2, lr, asl #24
	mov	r10, r4, lsr #8
	.loc 4 73 0
	add	r2, r0, r3
.LVL578:
	.loc 4 72 0
	mov	r9, r4, lsr #16
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	strb	r4, [r0, ip, asl #1]
	strb	r10, [r2, #1]
	strb	r9, [r2, #2]
	strb	lr, [r2, #4]
	strb	r8, [r2, #3]
	strb	r7, [r2, #5]
	strb	r6, [r2, #6]
	strb	r5, [r2, #7]
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	r0, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #8
	orr	r0, r4, r0, asl #8
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r4, r5, r8, asl #16
	orr	r0, r0, r7, asl #16
	orr	r4, r4, r6, asl #24
	orr	lr, r0, lr, asl #24
	mov	r9, r4, lsr #16
	.loc 4 74 0
	add	r0, r1, r3
	.loc 4 72 0
	mov	r8, r4, lsr #24
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	mov	r10, r4, lsr #8
	strb	r9, [r2, #10]
	strb	r10, [r2, #9]
	strb	r4, [r2, #8]
	strb	lr, [r2, #12]
	strb	r8, [r2, #11]
	strb	r7, [r2, #13]
	strb	r6, [r2, #14]
	strb	r5, [r2, #15]
	ldrb	r5, [r1, ip, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r0, #5]	@ zero_extendqisi2
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	ldrb	r1, [r0, #6]	@ zero_extendqisi2
.LVL579:
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r4, r5, r4, asl #8
	ldrb	r5, [r0, #7]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r1, lr, r1, asl #16
	orr	r1, r1, r5, asl #24
	orr	lr, r4, r6, asl #24
	.loc 4 73 0
	add	r3, r2, r3
.LVL580:
	.loc 4 72 0
	mov	r5, r1, lsr #16
	mov	r4, r1, lsr #24
	mov	r9, lr, lsr #8
	mov	r8, lr, lsr #16
	mov	r7, lr, lsr #24
	mov	r6, r1, lsr #8
	strb	lr, [r2, ip, asl #1]
	strb	r1, [r3, #4]
	strb	r9, [r3, #1]
	strb	r8, [r3, #2]
	strb	r7, [r3, #3]
	strb	r6, [r3, #5]
	strb	r5, [r3, #6]
	strb	r4, [r3, #7]
	ldrb	r4, [r0, #9]	@ zero_extendqisi2
	ldrb	lr, [r0, #13]	@ zero_extendqisi2
	ldrb	ip, [r0, #8]	@ zero_extendqisi2
.LVL581:
	ldrb	r1, [r0, #12]	@ zero_extendqisi2
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	ldrb	r5, [r0, #10]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #8
	orr	ip, ip, r4, asl #8
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	ldrb	r4, [r0, #11]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #16
	orr	r0, ip, r5, asl #16
.LVL582:
	orr	r1, r0, r4, asl #24
	orr	r2, r2, lr, asl #24
	b	.L275
.LBE1182:
.LBE1185:
.LBE1189:
.LBE1284:
	.cfi_endproc
.LFE173:
	.size	codec2subblock, .-codec2subblock
	.align	2
	.type	decode_2, %function
decode_2:
.LFB174:
	.loc 1 1232 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL583:
	.loc 1 1235 0 discriminator 1
	ldr	r3, [r0, #2600]
	cmp	r3, #0
	ble	.L420
	.loc 1 1232 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 1235 0 discriminator 1
	mov	r2, #6
	.loc 1 1232 0
	sub	sp, sp, #76
	.cfi_def_cfa_offset 112
	.loc 1 1235 0 discriminator 1
	str	r2, [sp, #36]
	mov	r2, #2
	str	r2, [sp, #32]
	mov	r2, #0
	str	r2, [sp, #24]
.LBB1877:
.LBB1878:
.LBB1879:
.LBB1880:
.LBB1881:
.LBB1882:
	.loc 1 1139 0
	ldr	r2, .L442
	ldr	r10, [r0, #2596]
.LPIC68:
	add	r2, pc, r2
	str	r2, [sp, #40]
.LBE1882:
.LBE1881:
	.loc 1 1158 0
	ldr	r2, .L442+4
	mov	fp, r0
.LPIC53:
	add	r2, pc, r2
	str	r2, [sp, #44]
.LBB1887:
.LBB1888:
	.loc 1 1139 0
	ldr	r2, .L442+8
	mov	r8, r10
.LPIC67:
	add	r2, pc, r2
	str	r2, [sp, #48]
.LBE1888:
.LBE1887:
.LBE1880:
.LBE1879:
.LBB2058:
.LBB2059:
.LBB2060:
.LBB2061:
	ldr	r2, .L442+12
.LPIC66:
	add	r2, pc, r2
	str	r2, [sp, #52]
.LBE2061:
.LBE2060:
	.loc 1 1158 0
	ldr	r2, .L442+16
.LPIC51:
	add	r2, pc, r2
	str	r2, [sp, #56]
.LBB2065:
.LBB2066:
	.loc 1 1139 0
	ldr	r2, .L442+20
.LPIC65:
	add	r2, pc, r2
	str	r2, [sp, #60]
.LVL584:
.L288:
.LBE2066:
.LBE2065:
.LBE2059:
.LBE2058:
.LBE1878:
.LBE1877:
	.loc 1 1236 0 discriminator 1
	cmp	r8, #0
	ble	.L400
.LVL585:
.LBB3027:
.LBB3020:
.LBB2239:
.LBB2240:
	.loc 2 156 0
	ldmib	fp, {r2, ip}
.LBE2240:
.LBE2239:
	.loc 1 1151 0
	cmp	r2, ip
	beq	.L408
	mov	r10, #2
	mov	r9, #4
	mov	r3, r10
	mov	r4, #0
	mov	r10, r9
	str	r3, [sp, #20]
.LVL586:
.L290:
.LBB2242:
.LBB2243:
.LBB2244:
	.loc 2 95 0
	add	r0, r2, #1
	str	r0, [fp, #4]
	ldrb	r3, [r2]	@ zero_extendqisi2
.LVL587:
.LBE2244:
.LBE2243:
.LBE2242:
	.loc 1 1156 0
	sub	r1, r3, #245
	cmp	r1, #10
	addls	pc, pc, r1, asl #2
	b	.L291
.L293:
	b	.L292
	b	.L294
	b	.L295
	b	.L296
	b	.L297
	b	.L297
	b	.L297
	b	.L297
	b	.L298
	b	.L299
	b	.L300
	.p2align 1
.L300:
.LVL588:
.LBB2245:
.LBB2246:
	.loc 1 1151 0
	cmp	r0, ip
	beq	.L408
.LVL589:
.LBB2247:
.LBB2248:
.LBB2249:
	.loc 2 95 0
	add	r3, r2, #2
.LVL590:
	str	r3, [fp, #4]
	ldrb	r0, [r2, #1]	@ zero_extendqisi2
.LVL591:
.LBE2249:
.LBE2248:
.LBE2247:
	.loc 1 1156 0
	sub	r1, r0, #245
.LVL592:
	cmp	r1, #10
	addls	pc, pc, r1, asl #2
	b	.L307
.L309:
	b	.L308
	b	.L310
	b	.L311
	b	.L312
	b	.L313
	b	.L313
	b	.L313
	b	.L313
	b	.L314
	b	.L315
	b	.L316
.LVL593:
	.p2align 1
.L299:
.LBE2246:
.LBE2245:
.LBB2617:
.LBB2618:
	.loc 2 156 0
	rsb	r0, r0, ip
.LBE2618:
.LBE2617:
	.loc 1 1207 0
	cmp	r0, #1
	bls	.L408
	.loc 1 1209 0
	ldr	r3, [fp, #2584]
.LVL594:
	ldr	r5, [sp, #24]
	mla	r5, r3, r5, r4
.LBB2619:
.LBB2620:
	.loc 1 1040 0
	sub	r3, r3, #8
	.loc 1 1041 0 discriminator 2
	mov	r1, r3, asl #1
.LVL595:
.LBE2620:
.LBE2619:
	.loc 1 1209 0
	ldr	r3, [fp, #2612]
	mov	r5, r5, asl #1
	add	lr, r3, r5
.LVL596:
.LBB2625:
.LBB2621:
	.loc 1 1043 0
	add	r3, lr, #16
	.loc 1 1041 0 discriminator 2
	add	ip, r3, r1
	str	r3, [sp, #28]
.LBE2621:
.LBE2625:
.LBB2626:
.LBB2627:
.LBB2628:
	.loc 2 90 0
	add	r3, r2, #3
	str	r3, [fp, #4]
.LVL597:
.LBE2628:
.LBE2627:
.LBE2626:
.LBB2633:
.LBB2622:
	.loc 1 1043 0
	add	r7, ip, #16
.LBE2622:
.LBE2633:
.LBB2634:
.LBB2631:
.LBB2629:
	.loc 2 90 0
	ldrb	r9, [r2, #1]	@ zero_extendqisi2
	ldrb	r3, [r2, #2]	@ zero_extendqisi2
.LBE2629:
.LBE2631:
.LBE2634:
.LBB2635:
.LBB2623:
	.loc 1 1041 0 discriminator 2
	add	r0, r7, r1
.LBE2623:
.LBE2635:
.LBB2636:
.LBB2632:
.LBB2630:
	.loc 2 90 0
	orr	r3, r9, r3, asl #8
.LVL598:
.LBE2630:
.LBE2632:
.LBE2636:
.LBB2637:
.LBB2624:
	.loc 1 1043 0
	add	r6, r0, #16
	ldr	r9, [fp, #2612]
	.loc 1 1041 0 discriminator 2
	add	r2, r6, r1
	.loc 1 1043 0
	strh	r3, [r9, r5]	@ movhi
.LVL599:
	strh	r3, [lr, #2]	@ movhi
.LVL600:
	strh	r3, [lr, #4]	@ movhi
.LVL601:
	strh	r3, [lr, #6]	@ movhi
.LVL602:
	strh	r3, [lr, #8]	@ movhi
.LVL603:
	strh	r3, [lr, #10]	@ movhi
.LVL604:
	strh	r3, [lr, #12]	@ movhi
.LVL605:
	strh	r3, [lr, #14]	@ movhi
.LVL606:
	add	r5, r2, #16
	ldr	lr, [sp, #28]
	mov	r9, r5
	.loc 1 1041 0 discriminator 2
	add	r5, r5, r1
	.loc 1 1043 0
	strh	r3, [lr, r1]	@ movhi
.LVL607:
	add	lr, r5, #16
	strh	r3, [ip, #2]	@ movhi
.LVL608:
	strh	r3, [ip, #4]	@ movhi
.LVL609:
	strh	r3, [ip, #6]	@ movhi
.LVL610:
	strh	r3, [ip, #8]	@ movhi
.LVL611:
	strh	r3, [ip, #10]	@ movhi
.LVL612:
	strh	r3, [ip, #12]	@ movhi
.LVL613:
	strh	r3, [ip, #14]	@ movhi
.LVL614:
	.loc 1 1041 0 discriminator 2
	add	ip, lr, r1
	.loc 1 1043 0
	strh	r3, [r7, r1]	@ movhi
.LVL615:
	strh	r3, [r0, #2]	@ movhi
.LVL616:
	strh	r3, [r0, #4]	@ movhi
.LVL617:
	strh	r3, [r0, #6]	@ movhi
.LVL618:
	strh	r3, [r0, #8]	@ movhi
.LVL619:
	strh	r3, [r0, #10]	@ movhi
.LVL620:
	strh	r3, [r0, #12]	@ movhi
.LVL621:
	strh	r3, [r0, #14]	@ movhi
.LVL622:
	strh	r3, [r6, r1]	@ movhi
.LVL623:
.L435:
	add	r0, ip, #16
	strh	r3, [r2, #2]	@ movhi
.LVL624:
	strh	r3, [r2, #4]	@ movhi
.LVL625:
	strh	r3, [r2, #6]	@ movhi
.LVL626:
	strh	r3, [r2, #8]	@ movhi
.LVL627:
	strh	r3, [r2, #10]	@ movhi
.LVL628:
	strh	r3, [r2, #12]	@ movhi
.LVL629:
	strh	r3, [r2, #14]	@ movhi
.LVL630:
	.loc 1 1041 0 discriminator 2
	add	r2, r0, r1
	.loc 1 1043 0
	strh	r3, [r9, r1]	@ movhi
.LVL631:
	strh	r3, [r5, #2]	@ movhi
.LVL632:
	strh	r3, [r5, #4]	@ movhi
.LVL633:
	strh	r3, [r5, #6]	@ movhi
.LVL634:
	strh	r3, [r5, #8]	@ movhi
.LVL635:
	strh	r3, [r5, #10]	@ movhi
.LVL636:
	strh	r3, [r5, #12]	@ movhi
.LVL637:
	strh	r3, [r5, #14]	@ movhi
.LVL638:
	strh	r3, [lr, r1]	@ movhi
.LVL639:
	add	lr, r2, #16
	strh	r3, [ip, #2]	@ movhi
.LVL640:
	strh	r3, [ip, #4]	@ movhi
.LVL641:
	strh	r3, [ip, #6]	@ movhi
.LVL642:
	strh	r3, [ip, #8]	@ movhi
.LVL643:
	strh	r3, [ip, #10]	@ movhi
.LVL644:
	strh	r3, [ip, #12]	@ movhi
.LVL645:
	strh	r3, [ip, #14]	@ movhi
.LVL646:
	strh	r3, [r0, r1]	@ movhi
.LVL647:
	.loc 1 1041 0 discriminator 2
	add	r0, lr, r1
	.loc 1 1043 0
	strh	r3, [r2, #2]	@ movhi
.LVL648:
	strh	r3, [r2, #4]	@ movhi
.LVL649:
	strh	r3, [r2, #6]	@ movhi
.LVL650:
	strh	r3, [r2, #8]	@ movhi
.LVL651:
	strh	r3, [r2, #10]	@ movhi
.LVL652:
	strh	r3, [r2, #12]	@ movhi
.LVL653:
	strh	r3, [r2, #14]	@ movhi
.LVL654:
	strh	r3, [lr, r1]	@ movhi
.LVL655:
	strh	r3, [r0, #2]	@ movhi
.LVL656:
	strh	r3, [r0, #4]	@ movhi
.LVL657:
	strh	r3, [r0, #6]	@ movhi
.LVL658:
	strh	r3, [r0, #8]	@ movhi
.LVL659:
	strh	r3, [r0, #10]	@ movhi
.LVL660:
	strh	r3, [r0, #12]	@ movhi
.LVL661:
	strh	r3, [r0, #14]	@ movhi
.LVL662:
.L415:
.LBE2624:
.LBE2637:
.LBE3020:
.LBE3027:
	.loc 1 1236 0 discriminator 2
	add	r4, r4, #8
.LVL663:
	.loc 1 1236 0 is_stmt 0 discriminator 1
	cmp	r4, r8
	bge	.L441
.LVL664:
.L399:
	ldr	r3, [sp, #20]
.LBB3028:
.LBB3021:
.LBB2638:
.LBB2241:
	.loc 2 156 0 is_stmt 1
	ldmib	fp, {r2, ip}
	add	r3, r3, #8
.LBE2241:
.LBE2638:
	.loc 1 1151 0
	cmp	r2, ip
	add	r10, r10, #8
	str	r3, [sp, #20]
	bne	.L290
.LVL665:
.L408:
.LBE3021:
.LBE3028:
	.loc 1 1238 0
	ldr	r0, .L442+24
.LVL666:
.L418:
	.loc 1 1241 0
	add	sp, sp, #76
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL667:
.L298:
	.cfi_restore_state
.LBB3029:
.LBB3022:
	.loc 1 1201 0
	cmp	r0, ip
	beq	.L408
	.loc 1 1203 0
	ldr	r3, [fp, #2584]
.LVL668:
	ldr	r5, [sp, #24]
.LBB2639:
.LBB2640:
	.loc 1 1043 0
	ldr	r9, [fp, #2612]
.LBE2640:
.LBE2639:
	.loc 1 1203 0
	mla	r5, r3, r5, r4
.LBB2647:
.LBB2641:
	.loc 1 1040 0
	sub	r3, r3, #8
	.loc 1 1041 0 discriminator 2
	mov	r1, r3, asl #1
.LVL669:
.LBE2641:
.LBE2647:
	.loc 1 1203 0
	ldr	r3, [fp, #2612]
	mov	r5, r5, asl #1
	add	lr, r3, r5
.LVL670:
.LBB2648:
.LBB2642:
	.loc 1 1043 0
	add	r7, lr, #16
.LBE2642:
.LBE2648:
.LBB2649:
.LBB2650:
.LBB2651:
	.loc 2 95 0
	add	r3, r2, #2
	str	r3, [fp, #4]
.LVL671:
.LBE2651:
.LBE2650:
.LBE2649:
.LBB2654:
.LBB2643:
	.loc 1 1041 0 discriminator 2
	add	ip, r7, r1
.LBE2643:
.LBE2654:
.LBB2655:
.LBB2653:
.LBB2652:
	.loc 2 95 0
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
.LBE2652:
.LBE2653:
.LBE2655:
.LBB2656:
.LBB2644:
	.loc 1 1043 0
	add	r6, ip, #16
	.loc 1 1041 0 discriminator 2
	add	r0, r6, r1
.LBE2644:
.LBE2656:
	.loc 1 1203 0
	add	r3, r3, #1328
.LBB2657:
.LBB2645:
	.loc 1 1043 0
	add	r2, r0, #16
.LBE2645:
.LBE2657:
	.loc 1 1203 0
	add	r3, fp, r3, asl #1
	ldrh	r3, [r3, #8]
.LVL672:
.LBB2658:
.LBB2646:
	.loc 1 1041 0 discriminator 2
	str	r2, [sp, #28]
	add	r2, r2, r1
	.loc 1 1043 0
	strh	r3, [r9, r5]	@ movhi
.LVL673:
	add	r5, r2, #16
	strh	r3, [lr, #2]	@ movhi
.LVL674:
	strh	r3, [lr, #4]	@ movhi
.LVL675:
	strh	r3, [lr, #6]	@ movhi
.LVL676:
	strh	r3, [lr, #8]	@ movhi
.LVL677:
	strh	r3, [lr, #10]	@ movhi
.LVL678:
	strh	r3, [lr, #12]	@ movhi
.LVL679:
	strh	r3, [lr, #14]	@ movhi
.LVL680:
	mov	r9, r5
	strh	r3, [r7, r1]	@ movhi
.LVL681:
	.loc 1 1041 0 discriminator 2
	add	r5, r5, r1
	.loc 1 1043 0
	strh	r3, [ip, #2]	@ movhi
.LVL682:
	strh	r3, [ip, #4]	@ movhi
.LVL683:
	strh	r3, [ip, #6]	@ movhi
.LVL684:
	strh	r3, [ip, #8]	@ movhi
.LVL685:
	strh	r3, [ip, #10]	@ movhi
.LVL686:
	strh	r3, [ip, #12]	@ movhi
.LVL687:
	strh	r3, [ip, #14]	@ movhi
.LVL688:
	strh	r3, [r6, r1]	@ movhi
.LVL689:
	strh	r3, [r0, #2]	@ movhi
.LVL690:
	strh	r3, [r0, #4]	@ movhi
.LVL691:
	strh	r3, [r0, #6]	@ movhi
.LVL692:
	strh	r3, [r0, #8]	@ movhi
.LVL693:
	strh	r3, [r0, #10]	@ movhi
.LVL694:
	strh	r3, [r0, #12]	@ movhi
.LVL695:
	strh	r3, [r0, #14]	@ movhi
.LVL696:
	ldr	r0, [sp, #28]
	add	lr, r5, #16
	.loc 1 1041 0 discriminator 2
	add	ip, lr, r1
	.loc 1 1043 0
	strh	r3, [r0, r1]	@ movhi
.LVL697:
	b	.L435
.LVL698:
.L297:
.LBE2646:
.LBE2658:
	.loc 1 1197 0
	ldr	r2, [fp, #2584]
	ldr	lr, [sp, #24]
	ldr	r1, [fp, #2612]
	mla	lr, r2, lr, r4
.LBB2659:
.LBB2660:
	.loc 1 1040 0
	sub	r2, r2, #8
.LBE2660:
.LBE2659:
	.loc 1 1197 0
	mov	lr, lr, asl #1
	add	ip, r1, lr
.LBB2666:
.LBB2661:
	.loc 1 1041 0 discriminator 2
	mov	r2, r2, asl #1
	.loc 1 1043 0
	add	r7, ip, #16
	.loc 1 1041 0 discriminator 2
	add	r0, r7, r2
	.loc 1 1043 0
	add	r6, r0, #16
	.loc 1 1041 0 discriminator 2
	add	r1, r6, r2
.LBE2661:
.LBE2666:
	.loc 1 1197 0
	add	r3, r3, #1328
.LVL699:
.LBB2667:
.LBB2662:
	.loc 1 1043 0
	ldr	r9, [fp, #2612]
	add	r5, r1, #16
.LBE2662:
.LBE2667:
	.loc 1 1197 0
	add	r3, fp, r3, asl #1
.LVL700:
	ldrh	r3, [r3, #22]
.LVL701:
.LBB2668:
.LBB2663:
	.loc 1 1041 0 discriminator 2
	str	r5, [sp, #28]
	add	r5, r5, r2
	.loc 1 1043 0
	strh	r3, [r9, lr]	@ movhi
.LVL702:
	add	lr, r5, #16
	mov	r9, lr
	.loc 1 1041 0 discriminator 2
	add	lr, lr, r2
	.loc 1 1043 0
	strh	r3, [ip, #2]	@ movhi
.LVL703:
	strh	r3, [ip, #4]	@ movhi
.LVL704:
	strh	r3, [ip, #6]	@ movhi
.LVL705:
	strh	r3, [ip, #8]	@ movhi
.LVL706:
	strh	r3, [ip, #10]	@ movhi
.LVL707:
	strh	r3, [ip, #12]	@ movhi
.LVL708:
	strh	r3, [ip, #14]	@ movhi
.LVL709:
	strh	r3, [r7, r2]	@ movhi
.LVL710:
	add	ip, lr, #16
	strh	r3, [r0, #2]	@ movhi
.LVL711:
	strh	r3, [r0, #4]	@ movhi
.LVL712:
	strh	r3, [r0, #6]	@ movhi
.LVL713:
	strh	r3, [r0, #8]	@ movhi
.LVL714:
	strh	r3, [r0, #10]	@ movhi
.LVL715:
	strh	r3, [r0, #12]	@ movhi
.LVL716:
	strh	r3, [r0, #14]	@ movhi
.LVL717:
	strh	r3, [r6, r2]	@ movhi
.LVL718:
	strh	r3, [r1, #2]	@ movhi
.LVL719:
	strh	r3, [r1, #4]	@ movhi
.LVL720:
	strh	r3, [r1, #6]	@ movhi
.LVL721:
	strh	r3, [r1, #8]	@ movhi
.LVL722:
	strh	r3, [r1, #10]	@ movhi
.LVL723:
	strh	r3, [r1, #12]	@ movhi
.LVL724:
	strh	r3, [r1, #14]	@ movhi
.LVL725:
	ldr	r1, [sp, #28]
	.loc 1 1041 0 discriminator 2
	add	r0, ip, r2
	.loc 1 1043 0
	strh	r3, [r1, r2]	@ movhi
.LVL726:
	add	r1, r0, #16
	strh	r3, [r5, #2]	@ movhi
.LVL727:
	strh	r3, [r5, #4]	@ movhi
.LVL728:
	strh	r3, [r5, #6]	@ movhi
.LVL729:
	strh	r3, [r5, #8]	@ movhi
.LVL730:
	strh	r3, [r5, #10]	@ movhi
.LVL731:
	strh	r3, [r5, #12]	@ movhi
.LVL732:
	strh	r3, [r5, #14]	@ movhi
.LVL733:
	.loc 1 1041 0 discriminator 2
	add	r5, r1, r2
	.loc 1 1043 0
	strh	r3, [r9, r2]	@ movhi
.LVL734:
.LBE2663:
.LBE2668:
.LBE3022:
.LBE3029:
	.loc 1 1236 0 discriminator 2
	add	r4, r4, #8
.LVL735:
.LBB3030:
.LBB3023:
.LBB2669:
.LBB2664:
	.loc 1 1043 0
	strh	r3, [lr, #2]	@ movhi
.LVL736:
	strh	r3, [lr, #4]	@ movhi
.LVL737:
	strh	r3, [lr, #6]	@ movhi
.LVL738:
	strh	r3, [lr, #8]	@ movhi
.LVL739:
	strh	r3, [lr, #10]	@ movhi
.LVL740:
	strh	r3, [lr, #12]	@ movhi
.LVL741:
	strh	r3, [lr, #14]	@ movhi
.LVL742:
	strh	r3, [ip, r2]	@ movhi
.LVL743:
	add	ip, r5, #16
	strh	r3, [r0, #2]	@ movhi
.LVL744:
	strh	r3, [r0, #4]	@ movhi
.LVL745:
	strh	r3, [r0, #6]	@ movhi
.LVL746:
	strh	r3, [r0, #8]	@ movhi
.LVL747:
	strh	r3, [r0, #10]	@ movhi
.LVL748:
	strh	r3, [r0, #12]	@ movhi
.LVL749:
	strh	r3, [r0, #14]	@ movhi
.LVL750:
.LBE2664:
.LBE2669:
.LBE3023:
.LBE3030:
	.loc 1 1236 0 discriminator 1
	cmp	r4, r8
.LBB3031:
.LBB3024:
.LBB2670:
.LBB2665:
	.loc 1 1043 0
	strh	r3, [r1, r2]	@ movhi
.LVL751:
	.loc 1 1041 0 discriminator 2
	add	r1, ip, r2
	.loc 1 1043 0
	strh	r3, [r5, #2]	@ movhi
.LVL752:
	strh	r3, [r5, #4]	@ movhi
.LVL753:
	strh	r3, [r5, #6]	@ movhi
.LVL754:
	strh	r3, [r5, #8]	@ movhi
.LVL755:
	strh	r3, [r5, #10]	@ movhi
.LVL756:
	strh	r3, [r5, #12]	@ movhi
.LVL757:
	strh	r3, [r5, #14]	@ movhi
.LVL758:
	strh	r3, [ip, r2]	@ movhi
.LVL759:
	strh	r3, [r1, #2]	@ movhi
.LVL760:
	strh	r3, [r1, #4]	@ movhi
.LVL761:
	strh	r3, [r1, #6]	@ movhi
.LVL762:
	strh	r3, [r1, #8]	@ movhi
.LVL763:
	strh	r3, [r1, #10]	@ movhi
.LVL764:
	strh	r3, [r1, #12]	@ movhi
.LVL765:
	strh	r3, [r1, #14]	@ movhi
.LVL766:
.LBE2665:
.LBE2670:
.LBE3024:
.LBE3031:
	.loc 1 1236 0 discriminator 1
	blt	.L399
.LVL767:
.L441:
	ldr	r3, [fp, #2600]
.LVL768:
.L400:
	.loc 1 1235 0 discriminator 2
	ldr	r2, [sp, #24]
	add	r2, r2, #8
	str	r2, [sp, #24]
.LVL769:
	.loc 1 1235 0 is_stmt 0 discriminator 1
	cmp	r2, r3
	ldr	r2, [sp, #32]
.LVL770:
	add	r2, r2, #8
	str	r2, [sp, #32]
	ldr	r2, [sp, #36]
	add	r2, r2, #8
	str	r2, [sp, #36]
	blt	.L288
	.loc 1 1240 0 is_stmt 1
	mov	r0, #0
	b	.L418
.LVL771:
.L296:
.LBB3032:
.LBB3025:
.LBB2671:
.LBB2672:
.LBB2673:
.LBB2674:
.LBB2675:
	.loc 2 156 0
	rsb	r0, r0, ip
.LBE2675:
.LBE2674:
.LBE2673:
.LBE2672:
.LBE2671:
	.loc 1 1191 0
	ldr	r1, [fp, #2584]
.LVL772:
.LBB2718:
.LBB2717:
	.loc 1 1104 0
	ldr	ip, [sp, #24]
	ldr	r7, [fp, #2612]
	mla	ip, r1, ip, r4
.LBB2715:
	.loc 1 1118 0
	cmp	r0, #4
.LBE2715:
	.loc 1 1104 0
	mov	ip, ip, asl #1
	add	r0, r7, ip
.LVL773:
.LBB2716:
	.loc 1 1118 0
	bls	.L415
.LVL774:
.LBB2676:
.LBB2677:
.LBB2678:
	.loc 2 95 0
	add	r3, r2, #2
.LVL775:
	str	r3, [fp, #4]
.LVL776:
.LBE2678:
.LBE2677:
.LBE2676:
	.loc 1 1121 0
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
.LVL777:
.LBB2679:
.LBB2680:
.LBB2681:
	.loc 2 90 0
	add	r5, r2, #4
.LBE2681:
.LBE2680:
.LBE2679:
.LBB2688:
.LBB2689:
	.loc 1 1059 0 discriminator 1
	mov	r3, r3, asl #6
.LVL778:
.LBE2689:
.LBE2688:
.LBB2695:
.LBB2685:
.LBB2682:
	.loc 2 90 0
	str	r5, [fp, #4]
.LVL779:
.LBE2682:
.LBE2685:
.LBE2695:
.LBB2696:
.LBB2690:
	.loc 1 1059 0 discriminator 1
	add	r3, r3, #7232
.LBE2690:
.LBE2696:
.LBB2697:
.LBB2686:
.LBB2683:
	.loc 2 90 0
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r2, #3]	@ zero_extendqisi2
.LBE2683:
.LBE2686:
.LBE2697:
.LBB2698:
.LBB2699:
.LBB2700:
	add	lr, r2, #6
.LBE2700:
.LBE2699:
.LBE2698:
.LBB2707:
.LBB2691:
	.loc 1 1059 0 discriminator 1
	add	r3, r3, #48
.LBE2691:
.LBE2707:
.LBB2708:
.LBB2704:
.LBB2701:
	.loc 2 90 0
	str	lr, [fp, #4]
.LBE2701:
.LBE2704:
.LBE2708:
.LBB2709:
.LBB2687:
.LBB2684:
	orr	r6, r5, r6, asl #8
.LVL780:
.LBE2684:
.LBE2687:
.LBE2709:
.LBB2710:
.LBB2692:
	.loc 1 1064 0
	ldrsb	lr, [fp, r3]
.LBE2692:
.LBE2710:
.LBB2711:
.LBB2705:
.LBB2702:
	.loc 2 90 0
	ldrb	r5, [r2, #4]	@ zero_extendqisi2
	ldrb	r2, [r2, #5]	@ zero_extendqisi2
.LVL781:
.LBE2702:
.LBE2705:
.LBE2711:
.LBB2712:
.LBB2693:
	.loc 1 1064 0
	add	r9, sp, #72
.LBE2693:
.LBE2712:
.LBB2713:
.LBB2706:
.LBB2703:
	.loc 2 90 0
	orr	r2, r5, r2, asl #8
.LBE2703:
.LBE2706:
.LBE2713:
.LBB2714:
.LBB2694:
	.loc 1 1064 0
	add	lr, r9, lr, asl #1
	.loc 1 1059 0 discriminator 1
	add	r3, fp, r3
.LVL782:
	.loc 1 1051 0
	strh	r6, [sp, #70]	@ movhi
	strh	r2, [sp, #68]	@ movhi
	.loc 1 1064 0
	ldrh	r2, [lr, #-4]
	strh	r2, [r7, ip]	@ movhi
.LVL783:
	ldrsb	ip, [r3, #1]
	mov	r2, r1, asl #1
	add	r1, r9, ip, asl #1
.LVL784:
	ldrh	r1, [r1, #-4]
	strh	r1, [r0, #2]	@ movhi
	ldrsb	r1, [r3, #2]
	add	r5, r0, #14
	add	r1, r9, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r0, #4]	@ movhi
	ldrsb	r1, [r3, #3]
	sub	r2, r2, #14
.LVL785:
	add	r1, r9, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r0, #6]	@ movhi
.LVL786:
	ldrsb	r1, [r3, #4]
	.loc 1 1062 0 discriminator 2
	add	ip, r5, r2
	.loc 1 1064 0
	add	r1, r9, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r0, #8]	@ movhi
.LVL787:
	ldrsb	r1, [r3, #5]
	add	lr, ip, #14
	add	r1, r9, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r0, #10]	@ movhi
.LVL788:
	ldrsb	r1, [r3, #6]
	.loc 1 1062 0 discriminator 2
	add	r7, lr, r2
	.loc 1 1064 0
	add	r1, r9, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r0, #12]	@ movhi
.LVL789:
	ldrsb	r1, [r3, #7]
	add	r6, r7, #14
.LVL790:
	add	r1, r9, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r0, #14]	@ movhi
.LVL791:
	ldrsb	r0, [r3, #8]
.LVL792:
	.loc 1 1062 0 discriminator 2
	add	r1, r6, r2
	.loc 1 1064 0
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r5, r2]	@ movhi
.LVL793:
	ldrsb	r0, [r3, #9]
	add	r5, r1, #14
.LVL794:
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [ip, #2]	@ movhi
.LVL795:
	ldrsb	r0, [r3, #10]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [ip, #4]	@ movhi
.LVL796:
	ldrsb	r0, [r3, #11]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [ip, #6]	@ movhi
.LVL797:
	ldrsb	r0, [r3, #12]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [ip, #8]	@ movhi
.LVL798:
	ldrsb	r0, [r3, #13]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [ip, #10]	@ movhi
.LVL799:
	ldrsb	r0, [r3, #14]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [ip, #12]	@ movhi
.LVL800:
	ldrsb	r0, [r3, #15]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [ip, #14]	@ movhi
.LVL801:
	ldrsb	r0, [r3, #16]
	.loc 1 1062 0 discriminator 2
	add	ip, r5, r2
	.loc 1 1064 0
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [lr, r2]	@ movhi
.LVL802:
	ldrsb	r0, [r3, #17]
	add	lr, ip, #14
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r7, #2]	@ movhi
.LVL803:
	ldrsb	r0, [r3, #18]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r7, #4]	@ movhi
.LVL804:
	ldrsb	r0, [r3, #19]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r7, #6]	@ movhi
.LVL805:
	ldrsb	r0, [r3, #20]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r7, #8]	@ movhi
.LVL806:
	ldrsb	r0, [r3, #21]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r7, #10]	@ movhi
.LVL807:
	ldrsb	r0, [r3, #22]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r7, #12]	@ movhi
.LVL808:
	ldrsb	r0, [r3, #23]
	add	r0, r9, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r7, #14]	@ movhi
.LVL809:
	ldrsb	r7, [r3, #24]
	.loc 1 1062 0 discriminator 2
	add	r0, lr, r2
	.loc 1 1064 0
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [r6, r2]	@ movhi
.LVL810:
	ldrsb	r7, [r3, #25]
	add	r6, r0, #14
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [r1, #2]	@ movhi
.LVL811:
	ldrsb	r7, [r3, #26]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [r1, #4]	@ movhi
.LVL812:
	ldrsb	r7, [r3, #27]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [r1, #6]	@ movhi
.LVL813:
	ldrsb	r7, [r3, #28]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [r1, #8]	@ movhi
.LVL814:
	ldrsb	r7, [r3, #29]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [r1, #10]	@ movhi
.LVL815:
	ldrsb	r7, [r3, #30]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [r1, #12]	@ movhi
.LVL816:
	ldrsb	r7, [r3, #31]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [r1, #14]	@ movhi
.LVL817:
	ldrsb	r7, [r3, #32]
	.loc 1 1062 0 discriminator 2
	add	r1, r6, r2
	.loc 1 1064 0
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [r5, r2]	@ movhi
.LVL818:
	ldrsb	r7, [r3, #33]
	add	r5, r1, #14
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [ip, #2]	@ movhi
.LVL819:
	ldrsb	r7, [r3, #34]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [ip, #4]	@ movhi
.LVL820:
	ldrsb	r7, [r3, #35]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [ip, #6]	@ movhi
.LVL821:
	ldrsb	r7, [r3, #36]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [ip, #8]	@ movhi
.LVL822:
	ldrsb	r7, [r3, #37]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [ip, #10]	@ movhi
.LVL823:
	ldrsb	r7, [r3, #38]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [ip, #12]	@ movhi
.LVL824:
	ldrsb	r7, [r3, #39]
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [ip, #14]	@ movhi
.LVL825:
	ldrsb	r7, [r3, #40]
	.loc 1 1062 0 discriminator 2
	add	ip, r5, r2
	.loc 1 1064 0
	add	r7, r9, r7, asl #1
	ldrh	r7, [r7, #-4]
	strh	r7, [lr, r2]	@ movhi
.LVL826:
	ldrsb	lr, [r3, #41]
	mov	r7, r9
.LVL827:
.L437:
	add	lr, r7, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #2]	@ movhi
.LVL828:
	ldrsb	lr, [r3, #42]
	add	lr, r7, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #4]	@ movhi
.LVL829:
	ldrsb	lr, [r3, #43]
	add	lr, r7, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #6]	@ movhi
.LVL830:
	ldrsb	lr, [r3, #44]
	add	lr, r7, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #8]	@ movhi
.LVL831:
	ldrsb	lr, [r3, #45]
	add	lr, r7, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #10]	@ movhi
.LVL832:
	ldrsb	lr, [r3, #46]
	add	lr, r7, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #12]	@ movhi
.LVL833:
	ldrsb	lr, [r3, #47]
	add	lr, r7, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #14]	@ movhi
.LVL834:
	ldrsb	r0, [r3, #48]
	mov	lr, r7
	add	r0, r7, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r6, r2]	@ movhi
.LVL835:
	ldrsb	r0, [r3, #49]
	add	r0, r7, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r1, #2]	@ movhi
.LVL836:
	ldrsb	r0, [r3, #50]
	add	r0, r7, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r1, #4]	@ movhi
.LVL837:
	ldrsb	r0, [r3, #51]
	add	r0, r7, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r1, #6]	@ movhi
.LVL838:
	ldrsb	r0, [r3, #52]
	add	r0, r7, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r1, #8]	@ movhi
.LVL839:
	ldrsb	r0, [r3, #53]
	add	r0, r7, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r1, #10]	@ movhi
.LVL840:
	ldrsb	r0, [r3, #54]
	add	r0, r7, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r1, #12]	@ movhi
.LVL841:
	ldrsb	r0, [r3, #55]
	add	r0, r7, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r1, #14]	@ movhi
.LVL842:
	ldrsb	r1, [r3, #56]
	add	r1, r7, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r5, r2]	@ movhi
.LVL843:
	ldrsb	r2, [r3, #57]
	add	r2, r7, r2, asl #1
	ldrh	r2, [r2, #-4]
	strh	r2, [ip, #2]	@ movhi
.LVL844:
	ldrsb	r2, [r3, #58]
	add	r2, r7, r2, asl #1
	ldrh	r2, [r2, #-4]
	strh	r2, [ip, #4]	@ movhi
.LVL845:
	ldrsb	r2, [r3, #59]
	add	r2, r7, r2, asl #1
	ldrh	r2, [r2, #-4]
	strh	r2, [ip, #6]	@ movhi
.LVL846:
	ldrsb	r2, [r3, #60]
	add	r2, r7, r2, asl #1
	ldrh	r2, [r2, #-4]
	strh	r2, [ip, #8]	@ movhi
.LVL847:
	ldrsb	r2, [r3, #61]
	add	r2, r7, r2, asl #1
	ldrh	r2, [r2, #-4]
	strh	r2, [ip, #10]	@ movhi
.LVL848:
	ldrsb	r2, [r3, #62]
	add	r2, r7, r2, asl #1
	ldrh	r2, [r2, #-4]
	strh	r2, [ip, #12]	@ movhi
.LVL849:
	ldrsb	r3, [r3, #63]
.LVL850:
	add	r3, r7, r3, asl #1
	ldrh	r3, [r3, #-4]
	strh	r3, [ip, #14]	@ movhi
.LVL851:
	b	.L415
.LVL852:
.L295:
.LBE2694:
.LBE2714:
.LBE2716:
.LBE2717:
.LBE2718:
.LBB2719:
.LBB2720:
.LBB2721:
.LBB2722:
.LBB2723:
	.loc 2 156 0
	rsb	r0, r0, ip
.LBE2723:
.LBE2722:
.LBE2721:
.LBE2720:
.LBE2719:
	.loc 1 1187 0
	ldr	r1, [fp, #2584]
.LVL853:
.LBB2755:
.LBB2754:
	.loc 1 1070 0
	ldr	ip, [sp, #24]
	ldr	lr, [fp, #2612]
	mla	ip, r1, ip, r4
.LBB2752:
	.loc 1 1090 0
	cmp	r0, #2
.LBE2752:
	.loc 1 1070 0
	mov	ip, ip, asl #1
	add	r0, lr, ip
.LVL854:
.LBB2753:
	.loc 1 1090 0
	bls	.L415
.LVL855:
.LBB2724:
.LBB2725:
.LBB2726:
	.loc 2 95 0
	add	r3, r2, #2
.LVL856:
.LBE2726:
.LBE2725:
.LBE2724:
.LBB2729:
.LBB2730:
.LBB2731:
	add	r5, r2, #3
.LBE2731:
.LBE2730:
.LBE2729:
.LBB2734:
.LBB2728:
.LBB2727:
	str	r3, [fp, #4]
.LVL857:
.LBE2727:
.LBE2728:
.LBE2734:
	.loc 1 1093 0
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
.LVL858:
.LBB2735:
.LBB2733:
.LBB2732:
	.loc 2 95 0
	str	r5, [fp, #4]
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
.LBE2732:
.LBE2733:
.LBE2735:
.LBB2736:
.LBB2737:
.LBB2738:
	add	r6, r2, #4
.LBE2738:
.LBE2737:
.LBE2736:
	.loc 1 1094 0
	add	r5, r5, #1328
.LBB2741:
.LBB2742:
	.loc 1 1059 0 discriminator 1
	mov	r3, r3, asl #6
.LVL859:
.LBE2742:
.LBE2741:
	.loc 1 1094 0
	add	r5, fp, r5, asl #1
	ldrh	r5, [r5, #8]
.LVL860:
.LBB2747:
.LBB2743:
	.loc 1 1059 0 discriminator 1
	add	r3, r3, #7232
.LBE2743:
.LBE2747:
.LBB2748:
.LBB2740:
.LBB2739:
	.loc 2 95 0
	str	r6, [fp, #4]
.LVL861:
	ldrb	r6, [r2, #3]	@ zero_extendqisi2
.LVL862:
.LBE2739:
.LBE2740:
.LBE2748:
.LBB2749:
.LBB2744:
	.loc 1 1059 0 discriminator 1
	add	r3, r3, #48
	.loc 1 1064 0
	ldrsb	r2, [fp, r3]
.LBE2744:
.LBE2749:
	.loc 1 1095 0
	add	r6, r6, #1328
.LVL863:
.LBB2750:
.LBB2745:
	.loc 1 1064 0
	add	r7, sp, #72
.LBE2745:
.LBE2750:
	.loc 1 1095 0
	add	r6, fp, r6, asl #1
.LVL864:
.LBB2751:
.LBB2746:
	.loc 1 1051 0
	ldrh	r6, [r6, #8]
	.loc 1 1064 0
	add	r2, r7, r2, asl #1
	.loc 1 1059 0 discriminator 1
	add	r3, fp, r3
.LVL865:
	.loc 1 1051 0
	strh	r5, [sp, #70]	@ movhi
	strh	r6, [sp, #68]	@ movhi
	.loc 1 1064 0
	ldrh	r2, [r2, #-4]
	strh	r2, [lr, ip]	@ movhi
.LVL866:
	ldrsb	ip, [r3, #1]
	mov	r2, r1, asl #1
	add	r1, r7, ip, asl #1
.LVL867:
	ldrh	r1, [r1, #-4]
	strh	r1, [r0, #2]	@ movhi
	ldrsb	r1, [r3, #2]
	sub	r2, r2, #14
.LVL868:
	add	r1, r7, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r0, #4]	@ movhi
.LVL869:
	ldrsb	ip, [r3, #3]
	add	r1, r0, #14
	add	ip, r7, ip, asl #1
	ldrh	ip, [ip, #-4]
	strh	ip, [r0, #6]	@ movhi
.LVL870:
	ldrsb	ip, [r3, #4]
	.loc 1 1062 0 discriminator 2
	add	r5, r1, r2
.LVL871:
	.loc 1 1064 0
	add	ip, r7, ip, asl #1
	ldrh	ip, [ip, #-4]
	strh	ip, [r0, #8]	@ movhi
.LVL872:
	ldrsb	lr, [r3, #5]
	add	ip, r5, #14
	add	lr, r7, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #10]	@ movhi
.LVL873:
	ldrsb	r6, [r3, #6]
	.loc 1 1062 0 discriminator 2
	add	lr, ip, r2
	.loc 1 1064 0
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r0, #12]	@ movhi
.LVL874:
	ldrsb	r6, [r3, #7]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r0, #14]	@ movhi
.LVL875:
	ldrsb	r6, [r3, #8]
	add	r0, lr, #14
.LVL876:
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r1, r2]	@ movhi
.LVL877:
	ldrsb	r6, [r3, #9]
	.loc 1 1062 0 discriminator 2
	add	r1, r0, r2
.LVL878:
	.loc 1 1064 0
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r5, #2]	@ movhi
.LVL879:
	ldrsb	r6, [r3, #10]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r5, #4]	@ movhi
.LVL880:
	ldrsb	r6, [r3, #11]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r5, #6]	@ movhi
.LVL881:
	ldrsb	r6, [r3, #12]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r5, #8]	@ movhi
.LVL882:
	ldrsb	r6, [r3, #13]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r5, #10]	@ movhi
.LVL883:
	ldrsb	r6, [r3, #14]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r5, #12]	@ movhi
.LVL884:
	ldrsb	r6, [r3, #15]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r5, #14]	@ movhi
.LVL885:
	ldrsb	r6, [r3, #16]
	add	r5, r1, #14
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [ip, r2]	@ movhi
.LVL886:
	ldrsb	r6, [r3, #17]
	.loc 1 1062 0 discriminator 2
	add	ip, r5, r2
	.loc 1 1064 0
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #2]	@ movhi
.LVL887:
	ldrsb	r6, [r3, #18]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #4]	@ movhi
.LVL888:
	ldrsb	r6, [r3, #19]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #6]	@ movhi
.LVL889:
	ldrsb	r6, [r3, #20]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #8]	@ movhi
.LVL890:
	ldrsb	r6, [r3, #21]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #10]	@ movhi
.LVL891:
	ldrsb	r6, [r3, #22]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #12]	@ movhi
.LVL892:
	ldrsb	r6, [r3, #23]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #14]	@ movhi
.LVL893:
	ldrsb	r6, [r3, #24]
	add	lr, ip, #14
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r0, r2]	@ movhi
.LVL894:
	ldrsb	r6, [r3, #25]
	.loc 1 1062 0 discriminator 2
	add	r0, lr, r2
	.loc 1 1064 0
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r1, #2]	@ movhi
.LVL895:
	ldrsb	r6, [r3, #26]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r1, #4]	@ movhi
.LVL896:
	ldrsb	r6, [r3, #27]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r1, #6]	@ movhi
.LVL897:
	ldrsb	r6, [r3, #28]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r1, #8]	@ movhi
.LVL898:
	ldrsb	r6, [r3, #29]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r1, #10]	@ movhi
.LVL899:
	ldrsb	r6, [r3, #30]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r1, #12]	@ movhi
.LVL900:
	ldrsb	r6, [r3, #31]
	add	r6, r7, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r1, #14]	@ movhi
.LVL901:
	ldrsb	r1, [r3, #32]
	add	r6, r0, #14
	add	r1, r7, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r5, r2]	@ movhi
.LVL902:
	ldrsb	r5, [r3, #33]
	.loc 1 1062 0 discriminator 2
	add	r1, r6, r2
	.loc 1 1064 0
	add	r5, r7, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [ip, #2]	@ movhi
.LVL903:
	ldrsb	r5, [r3, #34]
	add	r5, r7, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [ip, #4]	@ movhi
.LVL904:
	ldrsb	r5, [r3, #35]
	add	r5, r7, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [ip, #6]	@ movhi
.LVL905:
	ldrsb	r5, [r3, #36]
	add	r5, r7, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [ip, #8]	@ movhi
.LVL906:
	ldrsb	r5, [r3, #37]
	add	r5, r7, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [ip, #10]	@ movhi
.LVL907:
	ldrsb	r5, [r3, #38]
	add	r5, r7, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [ip, #12]	@ movhi
.LVL908:
	ldrsb	r5, [r3, #39]
	add	r5, r7, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [ip, #14]	@ movhi
.LVL909:
	ldrsb	ip, [r3, #40]
	add	r5, r1, #14
	add	ip, r7, ip, asl #1
	ldrh	ip, [ip, #-4]
	strh	ip, [lr, r2]	@ movhi
.LVL910:
	.loc 1 1062 0 discriminator 2
	add	ip, r5, r2
	.loc 1 1064 0
	ldrsb	lr, [r3, #41]
	b	.L437
.L443:
	.align	2
.L442:
	.word	.LC7-(.LPIC68+8)
	.word	.LANCHOR0-(.LPIC53+8)
	.word	.LC7-(.LPIC67+8)
	.word	.LC7-(.LPIC66+8)
	.word	.LANCHOR0-(.LPIC51+8)
	.word	.LC7-(.LPIC65+8)
	.word	-1094995529
	.word	.LANCHOR0-(.LPIC41+8)
.LVL911:
.L294:
.LBE2746:
.LBE2751:
.LBE2753:
.LBE2754:
.LBE2755:
	.loc 1 1182 0
	ldr	ip, [fp, #2584]
	ldr	lr, [sp, #24]
	ldr	r2, [fp, #2616]
	mla	lr, ip, lr, r4
	ldr	r5, [fp, #2612]
	mov	r3, lr, asl #1
.LVL912:
	add	r1, r2, r3
.LVL913:
.LBB2756:
.LBB2757:
.LBB2758:
.LBB2759:
	.loc 4 72 0
	ldrb	r0, [r2, lr, asl #1]	@ zero_extendqisi2
.LVL914:
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1, #4]	@ zero_extendqisi2
	orr	r0, r0, r7, asl #8
	orr	r2, r2, r6, asl #8
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r1, #6]	@ zero_extendqisi2
	orr	r0, r0, r7, asl #16
	orr	r2, r2, r6, asl #16
	ldrb	r7, [r1, #3]	@ zero_extendqisi2
	ldrb	r6, [r1, #7]	@ zero_extendqisi2
.LBE2759:
.LBE2758:
.LBE2757:
.LBE2756:
	.loc 1 1182 0
	add	r3, r5, r3
.LVL915:
.LBB2765:
.LBB2764:
.LBB2762:
.LBB2760:
	.loc 4 72 0
	orr	r2, r2, r6, asl #24
	orr	r0, r0, r7, asl #24
	strb	r0, [r5, lr, asl #1]
.LVL916:
	mov	r7, r0, lsr #8
	strb	r2, [r3, #4]
	mov	r6, r0, lsr #16
	mov	r5, r2, lsr #8
	mov	lr, r2, lsr #16
	mov	r0, r0, lsr #24
	mov	r2, r2, lsr #24
	strb	r7, [r3, #1]
	strb	r6, [r3, #2]
	strb	r0, [r3, #3]
	strb	r5, [r3, #5]
	strb	lr, [r3, #6]
	strb	r2, [r3, #7]
	ldrb	r5, [r1, #9]	@ zero_extendqisi2
	ldrb	r0, [r1, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #10]	@ zero_extendqisi2
	ldrb	r2, [r1, #12]	@ zero_extendqisi2
	ldrb	r6, [r1, #14]	@ zero_extendqisi2
	orr	r0, r0, r5, asl #8
	ldrb	r5, [r1, #11]	@ zero_extendqisi2
	orr	r0, r0, r7, asl #16
	orr	r2, r2, lr, asl #8
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r5, r0, r5, asl #24
	orr	r2, r2, r6, asl #16
.LBE2760:
.LBE2762:
	.loc 1 1021 0
	mov	r0, ip, asl #1
.LVL917:
.LBB2763:
.LBB2761:
	.loc 4 72 0
	orr	lr, r2, lr, asl #24
	mov	r6, r5, lsr #8
	mov	r2, r5, lsr #16
	mov	r7, r5, lsr #24
	strb	r6, [r3, #9]
	strb	r5, [r3, #8]
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	strb	lr, [r3, #12]
	strb	r2, [r3, #10]
	mov	lr, lr, lsr #24
	.loc 4 74 0
	add	r2, r1, r0
	.loc 4 72 0
	strb	r7, [r3, #11]
	strb	r6, [r3, #13]
	strb	r5, [r3, #14]
	strb	lr, [r3, #15]
	ldrb	lr, [r1, ip, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r2, #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
.LVL918:
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	ldrb	r8, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	r1, r1, r6, asl #8
	ldrb	r6, [r2, #3]	@ zero_extendqisi2
	orr	r5, lr, r7, asl #16
	ldrb	lr, [r2, #7]	@ zero_extendqisi2
	orr	r7, r5, r6, asl #24
	orr	r1, r1, r8, asl #16
	orr	lr, r1, lr, asl #24
	mov	r6, r7, lsr #8
	.loc 4 73 0
	add	r1, r3, r0
.LVL919:
	.loc 4 72 0
	strb	r7, [r3, ip, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [r1, #1]
	strb	lr, [r1, #4]
	mov	r3, r7, lsr #24
.LVL920:
	mov	r6, lr, lsr #16
	mov	r7, lr, lsr #8
	mov	lr, lr, lsr #24
	strb	r5, [r1, #2]
	strb	r3, [r1, #3]
	strb	r7, [r1, #5]
	strb	r6, [r1, #6]
	strb	lr, [r1, #7]
	ldrb	r3, [r2, #8]	@ zero_extendqisi2
	ldrb	r7, [r2, #13]	@ zero_extendqisi2
	ldrb	r5, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [r2, #12]	@ zero_extendqisi2
	ldrb	r6, [r2, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r5, r3, r5, asl #8
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r3, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #16
	ldrb	r6, [r2, #15]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #24
	orr	r3, lr, r3, asl #16
	orr	r3, r3, r6, asl #24
	mov	lr, r5, lsr #16
	mov	r6, r5, lsr #8
	mov	r7, r5, lsr #24
	strb	r6, [r1, #9]
	strb	r5, [r1, #8]
	mov	r6, r3, lsr #8
	mov	r5, r3, lsr #16
	strb	r3, [r1, #12]
	strb	lr, [r1, #10]
	mov	r3, r3, lsr #24
	.loc 4 74 0
	add	lr, r2, r0
	.loc 4 72 0
	strb	r7, [r1, #11]
	strb	r6, [r1, #13]
	strb	r5, [r1, #14]
	strb	r3, [r1, #15]
	ldrb	r3, [r2, ip, asl #1]	@ zero_extendqisi2
	ldrb	r5, [lr, #1]	@ zero_extendqisi2
	ldrb	r6, [lr, #5]	@ zero_extendqisi2
	ldrb	r7, [lr, #2]	@ zero_extendqisi2
	ldrb	r2, [lr, #4]	@ zero_extendqisi2
.LVL921:
	ldrb	r8, [lr, #3]	@ zero_extendqisi2
	orr	r5, r3, r5, asl #8
	ldrb	r3, [lr, #6]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #8
	orr	r5, r5, r7, asl #16
	ldrb	r6, [lr, #7]	@ zero_extendqisi2
	orr	r7, r5, r8, asl #24
	orr	r3, r2, r3, asl #16
	orr	r3, r3, r6, asl #24
	.loc 4 73 0
	add	r2, r1, r0
.LVL922:
	.loc 4 72 0
	mov	r6, r7, lsr #8
	strb	r7, [r1, ip, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [r2, #1]
	strb	r3, [r2, #4]
	mov	r1, r7, lsr #24
	mov	r6, r3, lsr #16
	mov	r7, r3, lsr #8
	mov	r3, r3, lsr #24
	strb	r5, [r2, #2]
	strb	r1, [r2, #3]
	strb	r7, [r2, #5]
	strb	r6, [r2, #6]
	strb	r3, [r2, #7]
	ldrb	r3, [lr, #8]	@ zero_extendqisi2
	ldrb	r7, [lr, #13]	@ zero_extendqisi2
	ldrb	r5, [lr, #9]	@ zero_extendqisi2
	ldrb	r1, [lr, #12]	@ zero_extendqisi2
	ldrb	r6, [lr, #10]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	orr	r5, r3, r5, asl #8
	ldrb	r7, [lr, #11]	@ zero_extendqisi2
	ldrb	r3, [lr, #14]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #16
	ldrb	r6, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #24
	orr	r3, r1, r3, asl #16
	orr	r3, r3, r6, asl #24
	mov	r1, r5, lsr #16
	mov	r6, r5, lsr #8
	strb	r6, [r2, #9]
	strb	r5, [r2, #8]
	strb	r3, [r2, #12]
	strb	r1, [r2, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	r1, lr, r0
	.loc 4 72 0
	mov	r6, r3, lsr #8
	mov	r5, r3, lsr #16
	mov	r3, r3, lsr #24
	strb	r7, [r2, #11]
	strb	r6, [r2, #13]
	strb	r5, [r2, #14]
	strb	r3, [r2, #15]
	ldrb	r3, [lr, ip, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
.LVL923:
	ldrb	r8, [r1, #3]	@ zero_extendqisi2
	orr	r5, r3, r5, asl #8
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	orr	r5, r5, r7, asl #16
	ldrb	r6, [r1, #7]	@ zero_extendqisi2
	orr	r7, r5, r8, asl #24
	orr	r3, lr, r3, asl #16
	orr	r3, r3, r6, asl #24
	.loc 4 73 0
	add	lr, r2, r0
.LVL924:
	.loc 4 72 0
	mov	r6, r7, lsr #8
	strb	r7, [r2, ip, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [lr, #1]
	strb	r3, [lr, #4]
	mov	r2, r7, lsr #24
	mov	r6, r3, lsr #16
	mov	r7, r3, lsr #8
	mov	r3, r3, lsr #24
	strb	r5, [lr, #2]
	strb	r2, [lr, #3]
	strb	r7, [lr, #5]
	strb	r6, [lr, #6]
	strb	r3, [lr, #7]
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r7, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #9]	@ zero_extendqisi2
	ldrb	r2, [r1, #12]	@ zero_extendqisi2
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	orr	r5, r3, r5, asl #8
	ldrb	r7, [r1, #11]	@ zero_extendqisi2
	ldrb	r3, [r1, #14]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #16
	ldrb	r6, [r1, #15]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #24
	orr	r3, r2, r3, asl #16
	orr	r3, r3, r6, asl #24
	mov	r2, r5, lsr #16
	mov	r6, r5, lsr #8
	strb	r6, [lr, #9]
	strb	r5, [lr, #8]
	strb	r3, [lr, #12]
	strb	r2, [lr, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	r2, r1, r0
	.loc 4 72 0
	mov	r6, r3, lsr #8
	mov	r5, r3, lsr #16
	mov	r3, r3, lsr #24
	strb	r6, [lr, #13]
	strb	r7, [lr, #11]
	strb	r5, [lr, #14]
	strb	r3, [lr, #15]
	ldrb	r3, [r1, ip, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r2, #1]	@ zero_extendqisi2
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
.LVL925:
	ldrb	r8, [r2, #3]	@ zero_extendqisi2
	orr	r5, r3, r5, asl #8
	ldrb	r3, [r2, #6]	@ zero_extendqisi2
	orr	r1, r1, r6, asl #8
	orr	r5, r5, r7, asl #16
	ldrb	r6, [r2, #7]	@ zero_extendqisi2
	orr	r7, r5, r8, asl #24
	orr	r3, r1, r3, asl #16
	orr	r3, r3, r6, asl #24
	.loc 4 73 0
	add	r1, lr, r0
.LVL926:
	.loc 4 72 0
	mov	r6, r7, lsr #8
	strb	r7, [lr, ip, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [r1, #1]
	strb	r3, [r1, #4]
	mov	lr, r7, lsr #24
	mov	r6, r3, lsr #16
	mov	r7, r3, lsr #8
	mov	r3, r3, lsr #24
	strb	r5, [r1, #2]
	strb	lr, [r1, #3]
	strb	r7, [r1, #5]
	strb	r6, [r1, #6]
	strb	r3, [r1, #7]
	ldrb	r3, [r2, #8]	@ zero_extendqisi2
	ldrb	r7, [r2, #13]	@ zero_extendqisi2
	ldrb	r5, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [r2, #12]	@ zero_extendqisi2
	ldrb	r6, [r2, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r5, r3, r5, asl #8
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r3, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #16
	ldrb	r6, [r2, #15]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #24
	orr	r3, lr, r3, asl #16
	orr	r3, r3, r6, asl #24
	mov	lr, r5, lsr #16
	mov	r6, r5, lsr #8
	strb	r6, [r1, #9]
	strb	r5, [r1, #8]
	strb	r3, [r1, #12]
	strb	lr, [r1, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	lr, r2, r0
	.loc 4 72 0
	mov	r6, r3, lsr #8
	mov	r5, r3, lsr #16
	mov	r3, r3, lsr #24
	strb	r6, [r1, #13]
	strb	r7, [r1, #11]
	strb	r5, [r1, #14]
	strb	r3, [r1, #15]
	ldrb	r3, [r2, ip, asl #1]	@ zero_extendqisi2
	ldrb	r5, [lr, #1]	@ zero_extendqisi2
	ldrb	r7, [lr, #2]	@ zero_extendqisi2
	orr	r3, r3, r5, asl #8
	ldrb	r8, [lr, #3]	@ zero_extendqisi2
	ldrb	r6, [lr, #5]	@ zero_extendqisi2
	ldrb	r2, [lr, #4]	@ zero_extendqisi2
.LVL927:
	orr	r5, r3, r7, asl #16
	ldrb	r3, [lr, #6]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #8
	ldrb	r6, [lr, #7]	@ zero_extendqisi2
	orr	r7, r5, r8, asl #24
	orr	r3, r2, r3, asl #16
	orr	r3, r3, r6, asl #24
	.loc 4 73 0
	add	r2, r1, r0
.LVL928:
	.loc 4 72 0
	mov	r6, r7, lsr #8
	strb	r7, [r1, ip, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [r2, #1]
	strb	r3, [r2, #4]
	mov	r1, r7, lsr #24
	mov	r6, r3, lsr #16
	mov	r7, r3, lsr #8
	mov	r3, r3, lsr #24
	strb	r5, [r2, #2]
	strb	r1, [r2, #3]
	strb	r7, [r2, #5]
	strb	r6, [r2, #6]
	strb	r3, [r2, #7]
	ldrb	r3, [lr, #8]	@ zero_extendqisi2
	ldrb	r7, [lr, #13]	@ zero_extendqisi2
	ldrb	r5, [lr, #9]	@ zero_extendqisi2
	ldrb	r1, [lr, #12]	@ zero_extendqisi2
	ldrb	r6, [lr, #10]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	orr	r5, r3, r5, asl #8
	ldrb	r7, [lr, #11]	@ zero_extendqisi2
	ldrb	r3, [lr, #14]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #16
	ldrb	r6, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #24
	orr	r3, r1, r3, asl #16
	orr	r3, r3, r6, asl #24
	mov	r1, r5, lsr #16
	mov	r6, r5, lsr #8
	strb	r6, [r2, #9]
	strb	r5, [r2, #8]
	strb	r3, [r2, #12]
	strb	r1, [r2, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	r1, lr, r0
	.loc 4 72 0
	mov	r6, r3, lsr #8
	mov	r5, r3, lsr #16
	mov	r3, r3, lsr #24
	strb	r6, [r2, #13]
	strb	r7, [r2, #11]
	strb	r5, [r2, #14]
	strb	r3, [r2, #15]
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r3, [lr, ip, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	ldrb	r8, [r1, #3]	@ zero_extendqisi2
	orr	r3, r3, r5, asl #8
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
.LVL929:
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	orr	r5, r3, r7, asl #16
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	ldrb	r6, [r1, #7]	@ zero_extendqisi2
	orr	r7, r5, r8, asl #24
	orr	r3, lr, r3, asl #16
	orr	r3, r3, r6, asl #24
	.loc 4 73 0
	add	lr, r2, r0
.LVL930:
	.loc 4 72 0
	mov	r6, r7, lsr #8
	strb	r7, [r2, ip, asl #1]
	mov	r5, r7, lsr #16
	strb	r3, [lr, #4]
	strb	r6, [lr, #1]
	mov	r2, r7, lsr #24
	mov	r6, r3, lsr #16
	mov	r7, r3, lsr #8
	mov	r3, r3, lsr #24
	strb	r5, [lr, #2]
	strb	r2, [lr, #3]
	strb	r7, [lr, #5]
	strb	r6, [lr, #6]
	strb	r3, [lr, #7]
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r7, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #9]	@ zero_extendqisi2
	ldrb	r2, [r1, #12]	@ zero_extendqisi2
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	orr	r5, r3, r5, asl #8
	ldrb	r7, [r1, #11]	@ zero_extendqisi2
	ldrb	r3, [r1, #14]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #16
	ldrb	r6, [r1, #15]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #24
	orr	r3, r2, r3, asl #16
	orr	r3, r3, r6, asl #24
	mov	r2, r5, lsr #16
	mov	r6, r5, lsr #8
	strb	r6, [lr, #9]
	strb	r5, [lr, #8]
	strb	r3, [lr, #12]
	strb	r2, [lr, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	r2, r1, r0
	.loc 4 72 0
	mov	r6, r3, lsr #8
	mov	r5, r3, lsr #16
	mov	r3, r3, lsr #24
	strb	r7, [lr, #11]
	strb	r6, [lr, #13]
	strb	r5, [lr, #14]
	strb	r3, [lr, #15]
	ldrb	r1, [r1, ip, asl #1]	@ zero_extendqisi2
.LVL931:
	ldrb	r5, [r2, #1]	@ zero_extendqisi2
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r2, #3]	@ zero_extendqisi2
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
	orr	r5, r1, r5, asl #8
	ldrb	r1, [r2, #5]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #16
	ldrb	r7, [r2, #6]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #8
	ldrb	r1, [r2, #7]	@ zero_extendqisi2
	orr	r3, r3, r7, asl #16
	orr	r1, r3, r1, asl #24
	orr	r5, r5, r6, asl #24
	strb	r5, [lr, ip, asl #1]
	.loc 4 73 0
	add	r3, lr, r0
.LVL932:
	.loc 4 72 0
	mov	r6, r5, lsr #16
	mov	r0, r5, lsr #24
.LVL933:
	mov	lr, r1, lsr #16
	mov	ip, r1, lsr #24
.LVL934:
	mov	r7, r5, lsr #8
	mov	r5, r1, lsr #8
	strb	r1, [r3, #4]
	strb	r7, [r3, #1]
	strb	r6, [r3, #2]
	strb	r0, [r3, #3]
	strb	r5, [r3, #5]
	strb	lr, [r3, #6]
	strb	ip, [r3, #7]
	ldrb	r5, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [r2, #13]	@ zero_extendqisi2
	ldrb	ip, [r2, #8]	@ zero_extendqisi2
	ldrb	r0, [r2, #12]	@ zero_extendqisi2
	ldrb	r1, [r2, #10]	@ zero_extendqisi2
	ldrb	r6, [r2, #14]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	orr	r0, r0, lr, asl #8
	ldrb	r5, [r2, #11]	@ zero_extendqisi2
	ldrb	lr, [r2, #15]	@ zero_extendqisi2
	orr	r1, ip, r1, asl #16
	orr	r2, r0, r6, asl #16
.LVL935:
	orr	r1, r1, r5, asl #24
	orr	r2, r2, lr, asl #24
.LVL936:
.L436:
.LBE2761:
.LBE2763:
.LBE2764:
.LBE2765:
.LBB2766:
.LBB2767:
.LBB2768:
.LBB2769:
	mov	r7, r1, lsr #8
	mov	r6, r1, lsr #16
	mov	r5, r1, lsr #24
	mov	lr, r2, lsr #8
	mov	ip, r2, lsr #16
	mov	r0, r2, lsr #24
	strb	r7, [r3, #9]
	strb	r1, [r3, #8]
	strb	r2, [r3, #12]
	strb	r6, [r3, #10]
	strb	r5, [r3, #11]
	strb	lr, [r3, #13]
	strb	ip, [r3, #14]
	strb	r0, [r3, #15]
.LVL937:
.L434:
	ldr	r8, [fp, #2596]
	b	.L415
.LVL938:
.L292:
.LBE2769:
.LBE2768:
.LBE2767:
.LBE2766:
.LBB2787:
.LBB2788:
	.loc 2 156 0
	rsb	r0, r0, ip
.LBE2788:
.LBE2787:
	.loc 1 1168 0
	cmp	r0, #1
	bls	.L408
.LVL939:
.LBB2789:
.LBB2790:
.LBB2791:
	.loc 2 90 0
	add	r3, r2, #3
.LVL940:
	str	r3, [fp, #4]
.LVL941:
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
.LBE2791:
.LBE2790:
.LBE2789:
	.loc 1 1172 0
	ldr	r6, [fp, #2588]
.LBB2794:
.LBB2793:
.LBB2792:
	.loc 2 90 0
	orr	r5, r3, r5, asl #8
.LBE2792:
.LBE2793:
.LBE2794:
	.loc 1 1172 0
	mov	r5, r5, asl #16
	mov	r5, r5, asr #16
	mov	r0, r5
	mov	r1, r6
.LVL942:
	bl	__aeabi_idivmod(PLT)
.LVL943:
	.loc 1 1173 0
	mov	r0, r5
	.loc 1 1175 0
	mov	r3, r1, asl #16
	.loc 1 1173 0
	mov	r1, r6
.LVL944:
	.loc 1 1175 0
	mov	r5, r3, asr #16
.LVL945:
	.loc 1 1173 0
	bl	__aeabi_idiv(PLT)
.LVL946:
.LBB2795:
.LBB2796:
	.loc 1 1133 0
	ldr	r1, [sp, #24]
	ldr	r2, [fp, #2584]
	add	r3, r4, r5
.LBE2796:
.LBE2795:
	.loc 1 1175 0
	mov	r0, r0, asl #16
.LBB2799:
.LBB2797:
	.loc 1 1133 0
	add	ip, r1, r0, asr #16
	mul	r1, r2, ip
.LVL947:
	.loc 1 1136 0
	adds	lr, r3, r1
.LVL948:
	bmi	.L303
	.loc 1 1134 0
	add	r0, r2, #1
.LVL949:
	rsb	r0, r0, r0, asl #3
.LVL950:
	.loc 1 1136 0 discriminator 1
	ldr	r6, [fp, #2660]
	.loc 1 1134 0
	add	r0, lr, r0
	.loc 1 1136 0 discriminator 1
	cmp	r0, r6, asr #1
	bge	.L303
.LVL951:
	add	r3, r1, r5
.LVL952:
.LBE2797:
.LBE2799:
	.loc 1 1176 0
	ldr	r1, [fp, #2620]
.LVL953:
	.loc 1 1177 0
	add	r3, r3, r4
	.loc 1 1176 0
	add	r0, r1, r3, asl #1
.LBB2800:
.LBB2782:
.LBB2776:
.LBB2770:
	.loc 4 72 0
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
.LVL954:
	ldrb	r3, [r1, r3, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r0, #5]	@ zero_extendqisi2
.LVL955:
	ldrb	r1, [r0, #4]	@ zero_extendqisi2
.LBE2770:
.LBE2776:
.LBE2782:
.LBE2800:
	.loc 1 1176 0
	ldr	r5, [sp, #24]
.LBB2801:
.LBB2783:
.LBB2777:
.LBB2771:
	.loc 4 72 0
	ldrb	r8, [r0, #2]	@ zero_extendqisi2
	ldrb	r7, [r0, #6]	@ zero_extendqisi2
.LBE2771:
.LBE2777:
.LBE2783:
.LBE2801:
	.loc 1 1176 0
	mla	r5, r2, r5, r4
.LBB2802:
.LBB2784:
.LBB2778:
.LBB2772:
	.loc 4 72 0
	orr	ip, r3, ip, asl #8
	orr	lr, r1, lr, asl #8
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	ldrb	r6, [r0, #7]	@ zero_extendqisi2
	orr	r1, lr, r7, asl #16
	orr	ip, ip, r8, asl #16
.LBE2772:
.LBE2778:
.LBE2784:
.LBE2802:
	.loc 1 1176 0
	ldr	lr, [fp, #2612]
.LBB2803:
.LBB2785:
.LBB2779:
.LBB2773:
	.loc 4 72 0
	orr	r3, ip, r3, asl #24
	mov	r7, r3, lsr #8
	orr	ip, r1, r6, asl #24
.LBE2773:
.LBE2779:
.LBE2785:
.LBE2803:
	.loc 1 1176 0
	add	r1, lr, r5, asl #1
.LVL956:
.LBB2804:
.LBB2786:
.LBB2780:
.LBB2774:
	.loc 4 72 0
	strb	r3, [lr, r5, asl #1]
	mov	r6, r3, lsr #16
	strb	r7, [r1, #1]
	mov	r5, ip, lsr #8
	mov	lr, ip, lsr #16
	mov	r7, ip, lsr #24
	mov	r3, r3, lsr #24
	strb	ip, [r1, #4]
	strb	r6, [r1, #2]
	strb	r3, [r1, #3]
	strb	r5, [r1, #5]
	strb	lr, [r1, #6]
	strb	r7, [r1, #7]
	ldrb	r5, [r0, #9]	@ zero_extendqisi2
	ldrb	ip, [r0, #8]	@ zero_extendqisi2
	ldrb	lr, [r0, #13]	@ zero_extendqisi2
	ldrb	r7, [r0, #10]	@ zero_extendqisi2
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	ldrb	r6, [r0, #14]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r0, #11]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #16
	orr	r3, r3, lr, asl #8
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	orr	r5, ip, r5, asl #24
	orr	r3, r3, r6, asl #16
	orr	lr, r3, lr, asl #24
	mov	r6, r5, lsr #8
.LBE2774:
.LBE2780:
	.loc 1 1021 0
	mov	r3, r2, asl #1
.LVL957:
.LBB2781:
.LBB2775:
	.loc 4 72 0
	mov	ip, r5, lsr #16
	mov	r7, r5, lsr #24
	strb	r6, [r1, #9]
	strb	r5, [r1, #8]
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	strb	lr, [r1, #12]
	strb	ip, [r1, #10]
	mov	lr, lr, lsr #24
	.loc 4 74 0
	add	ip, r0, r3
	.loc 4 72 0
	strb	r7, [r1, #11]
	strb	r6, [r1, #13]
	strb	r5, [r1, #14]
	strb	lr, [r1, #15]
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	ldrb	r6, [ip, #5]	@ zero_extendqisi2
	ldrb	lr, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r0, [ip, #4]	@ zero_extendqisi2
.LVL958:
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	r0, r0, r6, asl #8
	ldrb	r6, [ip, #3]	@ zero_extendqisi2
	orr	r5, lr, r7, asl #16
	ldrb	lr, [ip, #7]	@ zero_extendqisi2
	orr	r7, r5, r6, asl #24
	orr	r0, r0, r8, asl #16
	orr	lr, r0, lr, asl #24
	mov	r6, r7, lsr #8
	.loc 4 73 0
	add	r0, r1, r3
.LVL959:
	.loc 4 72 0
	strb	r7, [r1, r2, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [r0, #1]
	strb	lr, [r0, #4]
	mov	r1, r7, lsr #24
.LVL960:
	mov	r6, lr, lsr #16
	mov	r7, lr, lsr #8
	mov	lr, lr, lsr #24
	strb	r5, [r0, #2]
	strb	r1, [r0, #3]
	strb	r7, [r0, #5]
	strb	r6, [r0, #6]
	strb	lr, [r0, #7]
	ldrb	r7, [ip, #9]	@ zero_extendqisi2
	ldrb	r6, [ip, #13]	@ zero_extendqisi2
	ldrb	lr, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r1, r1, r6, asl #8
	ldrb	r7, [ip, #14]	@ zero_extendqisi2
	ldrb	r6, [ip, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	r1, r1, r7, asl #16
	orr	lr, r1, lr, asl #24
	mov	r6, r5, lsr #8
	mov	r1, r5, lsr #16
	mov	r7, r5, lsr #24
	strb	r6, [r0, #9]
	strb	r5, [r0, #8]
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	strb	lr, [r0, #12]
	strb	r1, [r0, #10]
	mov	lr, lr, lsr #24
	.loc 4 74 0
	add	r1, ip, r3
	.loc 4 72 0
	strb	r7, [r0, #11]
	strb	r6, [r0, #13]
	strb	r5, [r0, #14]
	strb	lr, [r0, #15]
	ldrb	lr, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
.LVL961:
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	ip, ip, r6, asl #8
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	orr	r5, lr, r7, asl #16
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r7, r5, r6, asl #24
	orr	ip, ip, r8, asl #16
	orr	lr, ip, lr, asl #24
	mov	r6, r7, lsr #8
	.loc 4 73 0
	add	ip, r0, r3
.LVL962:
	.loc 4 72 0
	strb	r7, [r0, r2, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [ip, #1]
	strb	lr, [ip, #4]
	mov	r0, r7, lsr #24
	mov	r6, lr, lsr #16
	mov	r7, lr, lsr #8
	mov	lr, lr, lsr #24
	strb	r5, [ip, #2]
	strb	r0, [ip, #3]
	strb	r7, [ip, #5]
	strb	r6, [ip, #6]
	strb	lr, [ip, #7]
	ldrb	r7, [r1, #9]	@ zero_extendqisi2
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	ldrb	r0, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r0, r0, r6, asl #8
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	r0, r0, r7, asl #16
	orr	lr, r0, lr, asl #24
	mov	r6, r5, lsr #8
	mov	r0, r5, lsr #16
	strb	r6, [ip, #9]
	strb	r5, [ip, #8]
	strb	lr, [ip, #12]
	strb	r0, [ip, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	r0, r1, r3
	.loc 4 72 0
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	mov	lr, lr, lsr #24
	strb	r7, [ip, #11]
	strb	r6, [ip, #13]
	strb	r5, [ip, #14]
	strb	lr, [ip, #15]
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	ldrb	r6, [r0, #5]	@ zero_extendqisi2
	ldrb	r1, [r0, #4]	@ zero_extendqisi2
.LVL963:
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	ldrb	r8, [r0, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	r1, r1, r6, asl #8
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
	orr	r5, lr, r7, asl #16
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	orr	r7, r5, r6, asl #24
	orr	r1, r1, r8, asl #16
	orr	lr, r1, lr, asl #24
	mov	r6, r7, lsr #8
	.loc 4 73 0
	add	r1, ip, r3
.LVL964:
	.loc 4 72 0
	strb	r7, [ip, r2, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [r1, #1]
	strb	lr, [r1, #4]
	mov	ip, r7, lsr #24
	mov	r6, lr, lsr #16
	mov	r7, lr, lsr #8
	mov	lr, lr, lsr #24
	strb	r5, [r1, #2]
	strb	ip, [r1, #3]
	strb	r7, [r1, #5]
	strb	r6, [r1, #6]
	strb	lr, [r1, #7]
	ldrb	r7, [r0, #9]	@ zero_extendqisi2
	ldrb	r6, [r0, #13]	@ zero_extendqisi2
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	ldrb	ip, [r0, #12]	@ zero_extendqisi2
	ldrb	r5, [r0, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	ip, ip, r6, asl #8
	ldrb	r7, [r0, #14]	@ zero_extendqisi2
	ldrb	r6, [r0, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	ip, ip, r7, asl #16
	orr	lr, ip, lr, asl #24
	mov	r6, r5, lsr #8
	mov	ip, r5, lsr #16
	strb	r6, [r1, #9]
	strb	r5, [r1, #8]
	strb	lr, [r1, #12]
	strb	ip, [r1, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	ip, r0, r3
	.loc 4 72 0
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	mov	lr, lr, lsr #24
	strb	r6, [r1, #13]
	strb	r7, [r1, #11]
	strb	r5, [r1, #14]
	strb	lr, [r1, #15]
	ldrb	lr, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #8
	ldrb	r0, [ip, #4]	@ zero_extendqisi2
.LVL965:
	ldrb	lr, [ip, #5]	@ zero_extendqisi2
	ldrb	r6, [ip, #3]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #16
	ldrb	r7, [ip, #6]	@ zero_extendqisi2
	orr	r0, r0, lr, asl #8
	ldrb	lr, [ip, #7]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	r0, r0, r7, asl #16
	orr	lr, r0, lr, asl #24
	mov	r7, r5, lsr #8
	.loc 4 73 0
	add	r0, r1, r3
.LVL966:
	.loc 4 72 0
	strb	r5, [r1, r2, asl #1]
	mov	r6, r5, lsr #16
	strb	r7, [r0, #1]
	strb	lr, [r0, #4]
	mov	r1, lr, lsr #8
	mov	r7, lr, lsr #16
	mov	r5, r5, lsr #24
	mov	lr, lr, lsr #24
	strb	r6, [r0, #2]
	strb	r5, [r0, #3]
	strb	r1, [r0, #5]
	strb	r7, [r0, #6]
	strb	lr, [r0, #7]
	ldrb	r7, [ip, #9]	@ zero_extendqisi2
	ldrb	r6, [ip, #13]	@ zero_extendqisi2
	ldrb	lr, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r1, r1, r6, asl #8
	ldrb	r7, [ip, #14]	@ zero_extendqisi2
	ldrb	r6, [ip, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	r1, r1, r7, asl #16
	orr	lr, r1, lr, asl #24
	mov	r6, r5, lsr #8
	mov	r1, r5, lsr #16
	strb	r6, [r0, #9]
	strb	r5, [r0, #8]
	strb	lr, [r0, #12]
	strb	r1, [r0, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	r1, ip, r3
	.loc 4 72 0
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	mov	lr, lr, lsr #24
	strb	r7, [r0, #11]
	strb	r6, [r0, #13]
	strb	r5, [r0, #14]
	strb	lr, [r0, #15]
	ldrb	lr, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #8
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
.LVL967:
	orr	r5, r5, r7, asl #16
	ldrb	r7, [r1, #6]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	ip, ip, r7, asl #16
	orr	lr, ip, lr, asl #24
	mov	r7, r5, lsr #8
	.loc 4 73 0
	add	ip, r0, r3
.LVL968:
	.loc 4 72 0
	strb	r5, [r0, r2, asl #1]
	mov	r6, r5, lsr #16
	strb	lr, [ip, #4]
	strb	r7, [ip, #1]
	mov	r0, lr, lsr #8
	mov	r7, lr, lsr #16
	mov	r5, r5, lsr #24
	mov	lr, lr, lsr #24
	strb	r6, [ip, #2]
	strb	r5, [ip, #3]
	strb	r0, [ip, #5]
	strb	r7, [ip, #6]
	strb	lr, [ip, #7]
	ldrb	r7, [r1, #9]	@ zero_extendqisi2
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	ldrb	r0, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r0, r0, r6, asl #8
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	r0, r0, r7, asl #16
	orr	lr, r0, lr, asl #24
	mov	r6, r5, lsr #8
	mov	r0, r5, lsr #16
	strb	r6, [ip, #9]
	strb	r5, [ip, #8]
	strb	lr, [ip, #12]
	strb	r0, [ip, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	r0, r1, r3
	.loc 4 72 0
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	mov	lr, lr, lsr #24
	strb	r7, [ip, #11]
	strb	r6, [ip, #13]
	strb	r5, [ip, #14]
	strb	lr, [ip, #15]
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #8
	ldrb	r1, [r0, #4]	@ zero_extendqisi2
.LVL969:
	ldrb	lr, [r0, #5]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #16
	ldrb	r7, [r0, #6]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #8
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	r1, r1, r7, asl #16
	orr	lr, r1, lr, asl #24
	mov	r7, r5, lsr #8
	.loc 4 73 0
	add	r1, ip, r3
.LVL970:
	.loc 4 72 0
	strb	r5, [ip, r2, asl #1]
	mov	r6, r5, lsr #16
	mov	ip, lr, lsr #8
	mov	r5, r5, lsr #24
	strb	lr, [r1, #4]
	strb	r7, [r1, #1]
	mov	r7, lr, lsr #16
	mov	lr, lr, lsr #24
	strb	r6, [r1, #2]
	strb	r5, [r1, #3]
	strb	ip, [r1, #5]
	strb	r7, [r1, #6]
.LVL971:
.L433:
	strb	lr, [r1, #7]
	ldrb	r7, [r0, #9]	@ zero_extendqisi2
	ldrb	r6, [r0, #13]	@ zero_extendqisi2
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	ldrb	ip, [r0, #12]	@ zero_extendqisi2
	ldrb	r5, [r0, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	ip, ip, r6, asl #8
	ldrb	r7, [r0, #14]	@ zero_extendqisi2
	ldrb	r6, [r0, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	ip, ip, r7, asl #16
	orr	lr, ip, lr, asl #24
	mov	r6, r5, lsr #8
	mov	ip, r5, lsr #16
	strb	r6, [r1, #9]
	strb	r5, [r1, #8]
	strb	lr, [r1, #12]
	strb	ip, [r1, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	ip, r0, r3
	.loc 4 72 0
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	mov	lr, lr, lsr #24
	strb	r7, [r1, #11]
	strb	r6, [r1, #13]
	strb	r5, [r1, #14]
	strb	lr, [r1, #15]
	ldrb	r5, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r0, [ip, #4]	@ zero_extendqisi2
	ldrb	lr, [ip, #5]	@ zero_extendqisi2
	ldrb	r6, [ip, #2]	@ zero_extendqisi2
	orr	lr, r0, lr, asl #8
	orr	r5, r5, r7, asl #8
	ldrb	r0, [ip, #6]	@ zero_extendqisi2
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #16
	ldrb	r6, [ip, #7]	@ zero_extendqisi2
	orr	r0, lr, r0, asl #16
	orr	r0, r0, r6, asl #24
	orr	lr, r5, r7, asl #24
	strb	lr, [r1, r2, asl #1]
	.loc 4 73 0
	add	r3, r1, r3
.LVL972:
	.loc 4 72 0
	mov	r6, lr, lsr #16
	mov	r5, lr, lsr #24
	mov	r1, r0, lsr #16
	mov	r2, r0, lsr #24
	mov	r7, lr, lsr #8
	mov	lr, r0, lsr #8
	strb	r0, [r3, #4]
	strb	r6, [r3, #2]
	strb	r5, [r3, #3]
	strb	r1, [r3, #6]
	strb	r2, [r3, #7]
	strb	r7, [r3, #1]
	strb	lr, [r3, #5]
	ldrb	lr, [ip, #8]	@ zero_extendqisi2
	ldrb	r5, [ip, #9]	@ zero_extendqisi2
	ldrb	r0, [ip, #12]	@ zero_extendqisi2
	ldrb	r6, [ip, #13]	@ zero_extendqisi2
	ldrb	r1, [ip, #10]	@ zero_extendqisi2
	ldrb	r2, [ip, #14]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	r0, r0, r6, asl #8
	ldrb	r5, [ip, #11]	@ zero_extendqisi2
	ldrb	ip, [ip, #15]	@ zero_extendqisi2
.LVL973:
	orr	r1, lr, r1, asl #16
	orr	r2, r0, r2, asl #16
	orr	r1, r1, r5, asl #24
	orr	r2, r2, ip, asl #24
	b	.L436
.LVL974:
.L291:
.LBE2775:
.LBE2781:
.LBE2786:
.LBE2804:
	.loc 1 1158 0
	ldr	r1, .L442+28
.LBB2805:
.LBB2806:
	.loc 1 1133 0
	ldr	r2, [fp, #2584]
.LBE2806:
.LBE2805:
	.loc 1 1158 0
.LPIC41:
	add	r1, pc, r1
	.loc 1 1159 0
	add	r0, r1, r3, asl #1
	.loc 1 1161 0
	ldrsb	ip, [r0, #1]
	.loc 1 1158 0
	ldrb	r3, [r1, r3, asl #1]	@ zero_extendqisi2
.LVL975:
.LBB2811:
.LBB2807:
	.loc 1 1133 0
	ldr	r1, [sp, #24]
.LBE2807:
.LBE2811:
	.loc 1 1161 0
	mov	r3, r3, asl #24
.LVL976:
.LBB2812:
.LBB2808:
	.loc 1 1133 0
	add	ip, r1, ip
	mul	r1, r2, ip
.LBE2808:
.LBE2812:
	.loc 1 1161 0
	mov	r0, r3, asr #24
.LVL977:
.LBB2813:
.LBB2809:
	.loc 1 1133 0
	add	r3, r4, r0
.LVL978:
	.loc 1 1136 0
	adds	r5, r3, r1
.LVL979:
	bmi	.L301
	.loc 1 1134 0
	add	lr, r2, #1
.LVL980:
	rsb	lr, lr, lr, asl #3
.LVL981:
	.loc 1 1136 0 discriminator 1
	ldr	r6, [fp, #2660]
	.loc 1 1134 0
	add	lr, r5, lr
	.loc 1 1136 0 discriminator 1
	cmp	lr, r6, asr #1
	bge	.L301
.LVL982:
	add	r3, r1, r0
.LVL983:
.LBE2809:
.LBE2813:
	.loc 1 1162 0
	ldr	r1, [fp, #2620]
.LVL984:
	.loc 1 1163 0
	add	r3, r3, r4
	.loc 1 1162 0
	add	r0, r1, r3, asl #1
.LVL985:
.LBB2814:
.LBB2815:
.LBB2816:
.LBB2817:
	.loc 4 72 0
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r1, r3, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #5]	@ zero_extendqisi2
.LVL986:
	ldrb	r1, [r0, #4]	@ zero_extendqisi2
	orr	r3, r3, lr, asl #8
.LBE2817:
.LBE2816:
.LBE2815:
.LBE2814:
	.loc 1 1162 0
	ldr	lr, [sp, #24]
.LBB2832:
.LBB2828:
.LBB2823:
.LBB2818:
	.loc 4 72 0
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	ldrb	r5, [r0, #6]	@ zero_extendqisi2
.LVL987:
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
.LBE2818:
.LBE2823:
.LBE2828:
.LBE2832:
	.loc 1 1162 0
	mla	lr, r2, lr, r4
.LBB2833:
.LBB2829:
.LBB2824:
.LBB2819:
	.loc 4 72 0
	orr	r1, r1, ip, asl #8
	orr	r1, r1, r5, asl #16
	ldrb	ip, [r0, #7]	@ zero_extendqisi2
.LBE2819:
.LBE2824:
.LBE2829:
.LBE2833:
	.loc 1 1162 0
	ldr	r5, [fp, #2612]
.LBB2834:
.LBB2830:
.LBB2825:
.LBB2820:
	.loc 4 72 0
	orr	r3, r3, r7, asl #16
	orr	r3, r3, r6, asl #24
	orr	ip, r1, ip, asl #24
	mov	r7, r3, lsr #8
.LBE2820:
.LBE2825:
.LBE2830:
.LBE2834:
	.loc 1 1162 0
	add	r1, r5, lr, asl #1
.LVL988:
.LBB2835:
.LBB2831:
.LBB2826:
.LBB2821:
	.loc 4 72 0
	strb	r3, [r5, lr, asl #1]
.LVL989:
	mov	r6, r3, lsr #16
	strb	r7, [r1, #1]
	mov	r5, ip, lsr #8
	mov	lr, ip, lsr #16
	mov	r7, ip, lsr #24
	mov	r3, r3, lsr #24
	strb	ip, [r1, #4]
	strb	r6, [r1, #2]
	strb	r3, [r1, #3]
	strb	r5, [r1, #5]
	strb	lr, [r1, #6]
	strb	r7, [r1, #7]
	ldrb	r5, [r0, #9]	@ zero_extendqisi2
	ldrb	ip, [r0, #8]	@ zero_extendqisi2
	ldrb	lr, [r0, #13]	@ zero_extendqisi2
	ldrb	r7, [r0, #10]	@ zero_extendqisi2
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	ldrb	r6, [r0, #14]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r0, #11]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #16
	orr	r3, r3, lr, asl #8
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	orr	r5, ip, r5, asl #24
	orr	r3, r3, r6, asl #16
	orr	lr, r3, lr, asl #24
	mov	r6, r5, lsr #8
.LBE2821:
.LBE2826:
	.loc 1 1021 0
	mov	r3, r2, asl #1
.LVL990:
.LBB2827:
.LBB2822:
	.loc 4 72 0
	mov	ip, r5, lsr #16
	mov	r7, r5, lsr #24
	strb	r6, [r1, #9]
	strb	r5, [r1, #8]
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	strb	lr, [r1, #12]
	strb	ip, [r1, #10]
	mov	lr, lr, lsr #24
	.loc 4 74 0
	add	ip, r0, r3
	.loc 4 72 0
	strb	r7, [r1, #11]
	strb	r6, [r1, #13]
	strb	r5, [r1, #14]
	strb	lr, [r1, #15]
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	ldrb	r6, [ip, #5]	@ zero_extendqisi2
	ldrb	lr, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r0, [ip, #4]	@ zero_extendqisi2
.LVL991:
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	r0, r0, r6, asl #8
	ldrb	r6, [ip, #3]	@ zero_extendqisi2
	orr	r5, lr, r7, asl #16
	ldrb	lr, [ip, #7]	@ zero_extendqisi2
	orr	r7, r5, r6, asl #24
	orr	r0, r0, r8, asl #16
	orr	lr, r0, lr, asl #24
	mov	r6, r7, lsr #8
	.loc 4 73 0
	add	r0, r1, r3
.LVL992:
	.loc 4 72 0
	strb	r7, [r1, r2, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [r0, #1]
	strb	lr, [r0, #4]
	mov	r1, r7, lsr #24
.LVL993:
	mov	r6, lr, lsr #16
	mov	r7, lr, lsr #8
	mov	lr, lr, lsr #24
	strb	r5, [r0, #2]
	strb	r1, [r0, #3]
	strb	r7, [r0, #5]
	strb	r6, [r0, #6]
	strb	lr, [r0, #7]
	ldrb	r7, [ip, #9]	@ zero_extendqisi2
	ldrb	r6, [ip, #13]	@ zero_extendqisi2
	ldrb	lr, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r1, r1, r6, asl #8
	ldrb	r7, [ip, #14]	@ zero_extendqisi2
	ldrb	r6, [ip, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	r1, r1, r7, asl #16
	orr	lr, r1, lr, asl #24
	mov	r6, r5, lsr #8
	mov	r1, r5, lsr #16
	mov	r7, r5, lsr #24
	strb	r6, [r0, #9]
	strb	r5, [r0, #8]
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	strb	lr, [r0, #12]
	strb	r1, [r0, #10]
	mov	lr, lr, lsr #24
	.loc 4 74 0
	add	r1, ip, r3
	.loc 4 72 0
	strb	r7, [r0, #11]
	strb	r6, [r0, #13]
	strb	r5, [r0, #14]
	strb	lr, [r0, #15]
	ldrb	lr, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
.LVL994:
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	ip, ip, r6, asl #8
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	orr	r5, lr, r7, asl #16
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r7, r5, r6, asl #24
	orr	ip, ip, r8, asl #16
	orr	lr, ip, lr, asl #24
	mov	r6, r7, lsr #8
	.loc 4 73 0
	add	ip, r0, r3
.LVL995:
	.loc 4 72 0
	strb	r7, [r0, r2, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [ip, #1]
	strb	lr, [ip, #4]
	mov	r0, r7, lsr #24
	mov	r6, lr, lsr #16
	mov	r7, lr, lsr #8
	mov	lr, lr, lsr #24
	strb	r5, [ip, #2]
	strb	r0, [ip, #3]
	strb	r7, [ip, #5]
	strb	r6, [ip, #6]
	strb	lr, [ip, #7]
	ldrb	r7, [r1, #9]	@ zero_extendqisi2
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	ldrb	r0, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r0, r0, r6, asl #8
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	r0, r0, r7, asl #16
	orr	lr, r0, lr, asl #24
	mov	r6, r5, lsr #8
	mov	r0, r5, lsr #16
	strb	r6, [ip, #9]
	strb	r5, [ip, #8]
	strb	lr, [ip, #12]
	strb	r0, [ip, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	r0, r1, r3
	.loc 4 72 0
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	mov	lr, lr, lsr #24
	strb	r7, [ip, #11]
	strb	r6, [ip, #13]
	strb	r5, [ip, #14]
	strb	lr, [ip, #15]
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	ldrb	r6, [r0, #5]	@ zero_extendqisi2
	ldrb	r1, [r0, #4]	@ zero_extendqisi2
.LVL996:
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	ldrb	r8, [r0, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	r1, r1, r6, asl #8
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
	orr	r5, lr, r7, asl #16
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	orr	r7, r5, r6, asl #24
	orr	r1, r1, r8, asl #16
	orr	lr, r1, lr, asl #24
	mov	r6, r7, lsr #8
	.loc 4 73 0
	add	r1, ip, r3
.LVL997:
	.loc 4 72 0
	strb	r7, [ip, r2, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [r1, #1]
	strb	lr, [r1, #4]
	mov	ip, r7, lsr #24
	mov	r6, lr, lsr #16
	mov	r7, lr, lsr #8
	mov	lr, lr, lsr #24
	strb	r5, [r1, #2]
	strb	ip, [r1, #3]
	strb	r7, [r1, #5]
	strb	r6, [r1, #6]
	strb	lr, [r1, #7]
	ldrb	r7, [r0, #9]	@ zero_extendqisi2
	ldrb	r6, [r0, #13]	@ zero_extendqisi2
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	ldrb	ip, [r0, #12]	@ zero_extendqisi2
	ldrb	r5, [r0, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	ip, ip, r6, asl #8
	ldrb	r7, [r0, #14]	@ zero_extendqisi2
	ldrb	r6, [r0, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	ip, ip, r7, asl #16
	orr	lr, ip, lr, asl #24
	mov	r6, r5, lsr #8
	mov	ip, r5, lsr #16
	strb	r6, [r1, #9]
	strb	r5, [r1, #8]
	strb	lr, [r1, #12]
	strb	ip, [r1, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	ip, r0, r3
	.loc 4 72 0
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	mov	lr, lr, lsr #24
	strb	r6, [r1, #13]
	strb	r7, [r1, #11]
	strb	r5, [r1, #14]
	strb	lr, [r1, #15]
	ldrb	lr, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #8
	ldrb	r0, [ip, #4]	@ zero_extendqisi2
.LVL998:
	ldrb	lr, [ip, #5]	@ zero_extendqisi2
	ldrb	r6, [ip, #3]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #16
	ldrb	r7, [ip, #6]	@ zero_extendqisi2
	orr	r0, r0, lr, asl #8
	ldrb	lr, [ip, #7]	@ zero_extendqisi2
	orr	r0, r0, r7, asl #16
	orr	r7, r5, r6, asl #24
	orr	lr, r0, lr, asl #24
	mov	r6, r7, lsr #8
	.loc 4 73 0
	add	r0, r1, r3
.LVL999:
	.loc 4 72 0
	strb	r7, [r1, r2, asl #1]
	mov	r5, r7, lsr #16
	strb	r6, [r0, #1]
	strb	lr, [r0, #4]
	mov	r1, r7, lsr #24
	mov	r6, lr, lsr #16
	mov	r7, lr, lsr #8
	mov	lr, lr, lsr #24
	strb	r5, [r0, #2]
	strb	r1, [r0, #3]
	strb	r7, [r0, #5]
	strb	r6, [r0, #6]
	strb	lr, [r0, #7]
	ldrb	r7, [ip, #9]	@ zero_extendqisi2
	ldrb	r6, [ip, #13]	@ zero_extendqisi2
	ldrb	lr, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r1, r1, r6, asl #8
	ldrb	r7, [ip, #14]	@ zero_extendqisi2
	ldrb	r6, [ip, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	r1, r1, r7, asl #16
	orr	lr, r1, lr, asl #24
	mov	r6, r5, lsr #8
	mov	r1, r5, lsr #16
	strb	r6, [r0, #9]
	strb	r5, [r0, #8]
	strb	lr, [r0, #12]
	strb	r1, [r0, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	r1, ip, r3
	.loc 4 72 0
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	mov	lr, lr, lsr #24
	strb	r7, [r0, #11]
	strb	r6, [r0, #13]
	strb	r5, [r0, #14]
	strb	lr, [r0, #15]
	ldrb	lr, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #8
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
.LVL1000:
	orr	r5, r5, r7, asl #16
	ldrb	r7, [r1, #6]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #16
	orr	r7, r5, r6, asl #24
	orr	lr, ip, lr, asl #24
	mov	r6, r7, lsr #8
	.loc 4 73 0
	add	ip, r0, r3
.LVL1001:
	.loc 4 72 0
	strb	r7, [r0, r2, asl #1]
	mov	r5, r7, lsr #16
	strb	lr, [ip, #4]
	strb	r6, [ip, #1]
	mov	r0, r7, lsr #24
	mov	r6, lr, lsr #16
	mov	r7, lr, lsr #8
	mov	lr, lr, lsr #24
	strb	r5, [ip, #2]
	strb	r0, [ip, #3]
	strb	r7, [ip, #5]
	strb	r6, [ip, #6]
	strb	lr, [ip, #7]
	ldrb	r7, [r1, #9]	@ zero_extendqisi2
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	ldrb	r0, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #10]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r0, r0, r6, asl #8
	ldrb	r7, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #16
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #24
	orr	r0, r0, r7, asl #16
	orr	lr, r0, lr, asl #24
	mov	r6, r5, lsr #8
	mov	r0, r5, lsr #16
	strb	r6, [ip, #9]
	strb	r5, [ip, #8]
	strb	lr, [ip, #12]
	strb	r0, [ip, #10]
	mov	r7, r5, lsr #24
	.loc 4 74 0
	add	r0, r1, r3
	.loc 4 72 0
	mov	r6, lr, lsr #8
	mov	r5, lr, lsr #16
	mov	lr, lr, lsr #24
	strb	r7, [ip, #11]
	strb	r6, [ip, #13]
	strb	r5, [ip, #14]
	strb	lr, [ip, #15]
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #8
	ldrb	r1, [r0, #4]	@ zero_extendqisi2
.LVL1002:
	ldrb	lr, [r0, #5]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #16
	ldrb	r7, [r0, #6]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #8
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #16
	orr	r7, r5, r6, asl #24
	orr	lr, r1, lr, asl #24
	mov	r6, r7, lsr #8
	.loc 4 73 0
	add	r1, ip, r3
.LVL1003:
	.loc 4 72 0
	strb	r7, [ip, r2, asl #1]
	mov	r5, r7, lsr #16
	mov	ip, r7, lsr #24
	strb	r6, [r1, #1]
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
	strb	lr, [r1, #4]
	strb	r5, [r1, #2]
	mov	lr, lr, lsr #24
	strb	ip, [r1, #3]
	strb	r7, [r1, #5]
	strb	r6, [r1, #6]
	b	.L433
.LVL1004:
.L301:
.LBE2822:
.LBE2827:
.LBE2831:
.LBE2835:
.LBB2836:
.LBB2810:
	.loc 1 1139 0
	mov	r2, #8
.LVL1005:
	ldr	r0, [fp]
	str	r2, [sp, #12]
.LVL1006:
	ldr	r2, .L444
	ldr	r1, [sp, #24]
	str	r1, [sp, #8]
	str	ip, [sp]
	str	r4, [sp, #4]
	mov	r1, #16
.LPIC55:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL1007:
	b	.L434
.LVL1008:
.L303:
.LBE2810:
.LBE2836:
.LBB2837:
.LBB2798:
	mov	r2, #8
.LVL1009:
	ldr	r0, [fp]
	str	r2, [sp, #12]
.LVL1010:
	ldr	r2, .L444+4
	ldr	r1, [sp, #24]
	str	r1, [sp, #8]
	str	ip, [sp]
	str	r4, [sp, #4]
	mov	r1, #16
.LPIC56:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL1011:
	b	.L434
.LVL1012:
.L310:
.LBE2798:
.LBE2837:
.LBB2838:
.LBB2611:
	.loc 1 1182 0
	ldr	lr, [fp, #2584]
	ldr	r0, [sp, #24]
.LVL1013:
	ldr	r3, [fp, #2616]
	mla	r0, lr, r0, r4
	ldr	r7, [fp, #2612]
	mov	r6, r0, asl #1
	add	ip, r3, r6
.LBB2250:
.LBB2251:
.LBB2252:
.LBB2253:
	.loc 4 51 0
	ldrb	r1, [r3, r0, asl #1]	@ zero_extendqisi2
.LVL1014:
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	ldrb	r2, [ip, #5]	@ zero_extendqisi2
.LVL1015:
	ldrb	r3, [ip, #4]	@ zero_extendqisi2
	orr	r1, r1, r5, asl #8
	ldrb	r5, [ip, #2]	@ zero_extendqisi2
	orr	r3, r3, r2, asl #8
	ldrb	r2, [ip, #6]	@ zero_extendqisi2
	orr	r1, r1, r5, asl #16
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	r3, r3, r2, asl #16
	ldrb	r2, [ip, #7]	@ zero_extendqisi2
	orr	r1, r1, r5, asl #24
	strb	r1, [r7, r0, asl #1]
.LVL1016:
.LBE2253:
.LBE2252:
.LBE2251:
.LBE2250:
	.loc 1 1182 0
	add	r6, r7, r6
.LVL1017:
.LBB2259:
.LBB2258:
.LBB2256:
.LBB2254:
	.loc 4 51 0
	orr	r2, r3, r2, asl #24
	mov	r5, r1, lsr #8
.LBE2254:
.LBE2256:
	.loc 1 1021 0
	mov	r3, lr, asl #1
.LVL1018:
.LBB2257:
.LBB2255:
	.loc 4 51 0
	mov	r0, r1, lsr #16
	strb	r2, [r6, #4]
	strb	r5, [r6, #1]
	strb	r0, [r6, #2]
	mov	r7, r2, lsr #8
	.loc 4 53 0
	add	r0, ip, r3
	.loc 4 51 0
	mov	r5, r2, lsr #16
	mov	r1, r1, lsr #24
	mov	r2, r2, lsr #24
	strb	r1, [r6, #3]
	strb	r7, [r6, #5]
	strb	r5, [r6, #6]
	strb	r2, [r6, #7]
	ldrb	r2, [ip, lr, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r0, #5]	@ zero_extendqisi2
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #4]	@ zero_extendqisi2
.LVL1019:
	ldrb	r5, [r0, #2]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #8
	orr	r1, r2, r1, asl #8
	ldrb	r7, [r0, #3]	@ zero_extendqisi2
	ldrb	r2, [r0, #6]	@ zero_extendqisi2
	orr	r1, r1, r5, asl #16
	ldrb	r5, [r0, #7]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #24
	orr	r2, ip, r2, asl #16
	.loc 4 52 0
	add	r7, r6, r3
.LVL1020:
	.loc 4 51 0
	orr	r2, r2, r5, asl #24
	mov	ip, r1, lsr #16
	mov	r5, r1, lsr #8
	strb	r1, [r6, lr, asl #1]
	mov	r6, r2, lsr #8
.LVL1021:
	strb	r5, [r7, #1]
	strb	r2, [r7, #4]
	mov	r5, r2, lsr #16
	strb	ip, [r7, #2]
	mov	r1, r1, lsr #24
	.loc 4 53 0
	add	ip, r0, r3
	.loc 4 51 0
	mov	r2, r2, lsr #24
	strb	r1, [r7, #3]
	strb	r6, [r7, #5]
	strb	r5, [r7, #6]
	strb	r2, [r7, #7]
	ldrb	r2, [r0, lr, asl #1]	@ zero_extendqisi2
	ldrb	r6, [ip, #5]	@ zero_extendqisi2
	ldrb	r1, [ip, #1]	@ zero_extendqisi2
	ldrb	r0, [ip, #4]	@ zero_extendqisi2
.LVL1022:
	ldrb	r5, [ip, #2]	@ zero_extendqisi2
	orr	r0, r0, r6, asl #8
	orr	r1, r2, r1, asl #8
	ldrb	r6, [ip, #3]	@ zero_extendqisi2
	ldrb	r2, [ip, #6]	@ zero_extendqisi2
	orr	r1, r1, r5, asl #16
	ldrb	r5, [ip, #7]	@ zero_extendqisi2
	orr	r1, r1, r6, asl #24
	orr	r2, r0, r2, asl #16
	orr	r2, r2, r5, asl #24
	.loc 4 52 0
	add	r0, r7, r3
.LVL1023:
	.loc 4 51 0
	mov	r6, r1, lsr #8
	mov	r5, r1, lsr #16
	strb	r1, [r7, lr, asl #1]
	strb	r6, [r0, #1]
	strb	r2, [r0, #4]
	strb	r5, [r0, #2]
	mov	r7, r2, lsr #8
	add	r5, ip, r3
	mov	r6, r2, lsr #16
	mov	r1, r1, lsr #24
	mov	r2, r2, lsr #24
	strb	r1, [r0, #3]
	strb	r7, [r0, #5]
	strb	r6, [r0, #6]
	strb	r2, [r0, #7]
.LVL1024:
	ldrb	r6, [r5, #1]	@ zero_extendqisi2
	ldrb	r2, [r5, #4]	@ zero_extendqisi2
	ldrb	ip, [ip, lr, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #5]	@ zero_extendqisi2
	ldrb	r7, [r5, #6]	@ zero_extendqisi2
	ldrb	r8, [r5, #2]	@ zero_extendqisi2
	orr	ip, ip, r6, asl #8
	orr	r1, r2, r1, asl #8
	ldrb	r6, [r5, #3]	@ zero_extendqisi2
	ldrb	r2, [r5, #7]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #16
	orr	ip, ip, r8, asl #16
	orr	r6, ip, r6, asl #24
	orr	r2, r1, r2, asl #24
	add	r3, r0, r3
.LVL1025:
	strb	r6, [r0, lr, asl #1]
	mov	ip, r6, lsr #24
	mov	r7, r6, lsr #8
	mov	r5, r6, lsr #16
.LVL1026:
	mov	r1, r2, lsr #8
	mov	lr, r2, lsr #16
.LVL1027:
	mov	r0, r2, lsr #24
	strb	r2, [r3, #4]
	strb	r7, [r3, #1]
	strb	r5, [r3, #2]
	strb	ip, [r3, #3]
	strb	r1, [r3, #5]
	strb	lr, [r3, #6]
	strb	r0, [r3, #7]
.LVL1028:
	ldmib	fp, {r3, ip}
.LVL1029:
.L409:
.LBE2255:
.LBE2257:
.LBE2258:
.LBE2259:
.LBE2611:
.LBE2838:
.LBB2839:
.LBB2840:
	.loc 1 1151 0
	cmp	ip, r3
.LBB2841:
.LBB2842:
	.loc 2 156 0
	mov	r1, ip
.LBE2842:
.LBE2841:
	.loc 1 1151 0
	beq	.L408
.LVL1030:
.LBB2843:
.LBB2844:
.LBB2845:
	.loc 2 95 0
	add	r2, r3, #1
	str	r2, [fp, #4]
	ldrb	r0, [r3]	@ zero_extendqisi2
.LVL1031:
.LBE2845:
.LBE2844:
.LBE2843:
	.loc 1 1156 0
	sub	lr, r0, #245
	cmp	lr, #10
	addls	pc, pc, lr, asl #2
	b	.L353
.L355:
	b	.L354
	b	.L356
	b	.L357
	b	.L358
	b	.L359
	b	.L359
	b	.L359
	b	.L359
	b	.L360
	b	.L361
	b	.L362
.LVL1032:
	.p2align 1
.L308:
.LBE2840:
.LBE2839:
.LBB3000:
.LBB2612:
.LBB2260:
.LBB2261:
	.loc 2 156 0
	rsb	r3, r3, ip
.LBE2261:
.LBE2260:
	.loc 1 1168 0
	cmp	r3, #1
	bls	.L408
.LVL1033:
.LBB2262:
.LBB2263:
.LBB2264:
	.loc 2 90 0
	add	r3, r2, #4
	str	r3, [fp, #4]
.LVL1034:
	ldrb	r3, [r2, #2]	@ zero_extendqisi2
	ldrb	r5, [r2, #3]	@ zero_extendqisi2
.LBE2264:
.LBE2263:
.LBE2262:
	.loc 1 1172 0
	ldr	r6, [fp, #2588]
.LBB2267:
.LBB2266:
.LBB2265:
	.loc 2 90 0
	orr	r5, r3, r5, asl #8
.LBE2265:
.LBE2266:
.LBE2267:
	.loc 1 1172 0
	mov	r5, r5, asl #16
	mov	r5, r5, asr #16
	mov	r0, r5
.LVL1035:
	mov	r1, r6
.LVL1036:
	bl	__aeabi_idivmod(PLT)
.LVL1037:
	.loc 1 1173 0
	mov	r0, r5
	.loc 1 1175 0
	mov	r3, r1, asl #16
	.loc 1 1173 0
	mov	r1, r6
.LVL1038:
	.loc 1 1175 0
	mov	r5, r3, asr #16
.LVL1039:
	.loc 1 1173 0
	bl	__aeabi_idiv(PLT)
.LVL1040:
.LBB2268:
.LBB2269:
	.loc 1 1133 0
	ldr	r2, [sp, #24]
	ldr	ip, [fp, #2584]
	add	r3, r4, r5
	.loc 1 1134 0
	add	r1, ip, #1
	add	r6, r1, r1, asl #1
.LBE2269:
.LBE2268:
	.loc 1 1175 0
	mov	r0, r0, asl #16
.LBB2272:
.LBB2270:
	.loc 1 1133 0
	add	lr, r2, r0, asr #16
	mul	r2, ip, lr
	add	r1, r3, r2
.LVL1041:
	.loc 1 1136 0
	cmp	r1, #0
	.loc 1 1134 0
	add	r1, r1, r6
.LVL1042:
	.loc 1 1136 0
	blt	.L319
	.loc 1 1136 0 is_stmt 0 discriminator 1
	ldr	r0, [fp, #2660]
	cmp	r1, r0, asr #1
	bge	.L319
.LVL1043:
	add	r3, r2, r5
.LVL1044:
	b	.L424
.LVL1045:
.L315:
.LBE2270:
.LBE2272:
.LBB2273:
.LBB2274:
	.loc 2 156 0 is_stmt 1
	rsb	r3, r3, ip
.LBE2274:
.LBE2273:
	.loc 1 1207 0
	cmp	r3, #1
	bls	.L408
	.loc 1 1209 0
	ldr	r3, [fp, #2584]
	ldr	lr, [sp, #24]
	ldr	r8, [fp, #2612]
	mla	lr, r3, lr, r4
.LBB2275:
.LBB2276:
	.loc 1 1040 0
	sub	r3, r3, #4
.LBE2276:
.LBE2275:
	.loc 1 1209 0
	mov	lr, lr, asl #1
.LBB2281:
.LBB2277:
	.loc 1 1041 0 discriminator 2
	mov	r1, r3, asl #1
.LBE2277:
.LBE2281:
	.loc 1 1209 0
	add	r0, r8, lr
.LVL1046:
.LBB2282:
.LBB2283:
.LBB2284:
	.loc 2 90 0
	add	r3, r2, #4
	str	r3, [fp, #4]
.LVL1047:
.LBE2284:
.LBE2283:
.LBE2282:
.LBB2289:
.LBB2278:
	.loc 1 1043 0
	add	r5, r0, #8
.LBE2278:
.LBE2289:
.LBB2290:
.LBB2287:
.LBB2285:
	.loc 2 90 0
	ldrb	r6, [r2, #2]	@ zero_extendqisi2
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
.LBE2285:
.LBE2287:
.LBE2290:
.LBB2291:
.LBB2279:
	.loc 1 1041 0 discriminator 2
	add	r7, r5, r1
.LBE2279:
.LBE2291:
.LBB2292:
.LBB2288:
.LBB2286:
	.loc 2 90 0
	orr	r2, r6, r2, asl #8
.LVL1048:
.LBE2286:
.LBE2288:
.LBE2292:
.LBB2293:
.LBB2280:
	.loc 1 1043 0
	add	r6, r7, #8
	strh	r2, [r8, lr]	@ movhi
.LVL1049:
	.loc 1 1041 0 discriminator 2
	add	lr, r6, r1
	.loc 1 1043 0
	strh	r2, [r0, #2]	@ movhi
.LVL1050:
	strh	r2, [r0, #4]	@ movhi
.LVL1051:
	strh	r2, [r0, #6]	@ movhi
.LVL1052:
	add	r0, lr, #8
	strh	r2, [r5, r1]	@ movhi
.LVL1053:
	.loc 1 1041 0 discriminator 2
	add	r5, r0, r1
	.loc 1 1043 0
	strh	r2, [r7, #2]	@ movhi
.LVL1054:
	strh	r2, [r7, #4]	@ movhi
.LVL1055:
	strh	r2, [r7, #6]	@ movhi
.LVL1056:
	strh	r2, [r6, r1]	@ movhi
.LVL1057:
	strh	r2, [lr, #2]	@ movhi
.LVL1058:
	strh	r2, [lr, #4]	@ movhi
.LVL1059:
	strh	r2, [lr, #6]	@ movhi
.LVL1060:
	strh	r2, [r0, r1]	@ movhi
.LVL1061:
	strh	r2, [r5, #2]	@ movhi
.LVL1062:
	strh	r2, [r5, #4]	@ movhi
.LVL1063:
	strh	r2, [r5, #6]	@ movhi
.LVL1064:
	b	.L409
.LVL1065:
.L314:
.LBE2280:
.LBE2293:
	.loc 1 1201 0
	cmp	r3, ip
	beq	.L408
	.loc 1 1203 0
	ldr	r3, [fp, #2584]
	ldr	r5, [sp, #24]
.LBB2294:
.LBB2295:
	.loc 1 1040 0
	sub	r1, r3, #4
.LBE2295:
.LBE2294:
	.loc 1 1203 0
	mla	r5, r3, r5, r4
.LBB2298:
.LBB2299:
.LBB2300:
	.loc 2 95 0
	add	r3, r2, #3
.LBE2300:
.LBE2299:
.LBE2298:
	.loc 1 1203 0
	ldr	r6, [fp, #2612]
.LBB2303:
.LBB2302:
.LBB2301:
	.loc 2 95 0
	str	r3, [fp, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
.LBE2301:
.LBE2302:
.LBE2303:
	.loc 1 1203 0
	mov	r5, r5, asl #1
	add	lr, r6, r5
.LVL1066:
	add	r2, r2, #1328
.LBB2304:
.LBB2296:
	.loc 1 1041 0 discriminator 2
	mov	r1, r1, asl #1
	.loc 1 1043 0
	add	r7, lr, #8
.LBE2296:
.LBE2304:
	.loc 1 1203 0
	add	r2, fp, r2, asl #1
	ldrh	r2, [r2, #8]
.LVL1067:
.LBB2305:
.LBB2297:
	.loc 1 1041 0 discriminator 2
	add	r0, r7, r1
.LVL1068:
	.loc 1 1043 0
	strh	r2, [r6, r5]	@ movhi
.LVL1069:
	add	r6, r0, #8
	.loc 1 1041 0 discriminator 2
	add	r5, r6, r1
	.loc 1 1043 0
	strh	r2, [lr, #2]	@ movhi
.LVL1070:
	strh	r2, [lr, #4]	@ movhi
.LVL1071:
	strh	r2, [lr, #6]	@ movhi
.LVL1072:
	add	lr, r5, #8
	strh	r2, [r7, r1]	@ movhi
.LVL1073:
	strh	r2, [r0, #2]	@ movhi
.LVL1074:
	strh	r2, [r0, #4]	@ movhi
.LVL1075:
	strh	r2, [r0, #6]	@ movhi
.LVL1076:
	strh	r2, [r6, r1]	@ movhi
.LVL1077:
.L425:
	.loc 1 1041 0 discriminator 2
	add	r0, lr, r1
	.loc 1 1043 0
	strh	r2, [r5, #2]	@ movhi
.LVL1078:
	strh	r2, [r5, #4]	@ movhi
.LVL1079:
	strh	r2, [r5, #6]	@ movhi
.LVL1080:
	strh	r2, [lr, r1]	@ movhi
.LVL1081:
	strh	r2, [r0, #2]	@ movhi
.LVL1082:
	strh	r2, [r0, #4]	@ movhi
.LVL1083:
	strh	r2, [r0, #6]	@ movhi
.LVL1084:
	b	.L409
.LVL1085:
.L313:
.LBE2297:
.LBE2305:
	.loc 1 1197 0
	ldr	r2, [fp, #2584]
	ldr	r5, [sp, #24]
	ldr	r7, [fp, #2612]
	mla	r5, r2, r5, r4
.LBB2306:
.LBB2307:
	.loc 1 1040 0
	sub	r2, r2, #4
.LBE2307:
.LBE2306:
	.loc 1 1197 0
	mov	r5, r5, asl #1
	add	lr, r7, r5
.LBB2311:
.LBB2308:
	.loc 1 1041 0 discriminator 2
	mov	r1, r2, asl #1
.LBE2308:
.LBE2311:
	.loc 1 1197 0
	add	r2, r0, #1328
.LBB2312:
.LBB2309:
	.loc 1 1043 0
	add	r6, lr, #8
.LBE2309:
.LBE2312:
	.loc 1 1197 0
	add	r2, fp, r2, asl #1
	ldrh	r2, [r2, #22]
.LVL1086:
.LBB2313:
.LBB2310:
	.loc 1 1041 0 discriminator 2
	add	r0, r6, r1
.LVL1087:
	.loc 1 1043 0
	strh	r2, [r7, r5]	@ movhi
.LVL1088:
	add	r7, r0, #8
	.loc 1 1041 0 discriminator 2
	add	r5, r7, r1
	.loc 1 1043 0
	strh	r2, [lr, #2]	@ movhi
.LVL1089:
	strh	r2, [lr, #4]	@ movhi
.LVL1090:
	strh	r2, [lr, #6]	@ movhi
.LVL1091:
	strh	r2, [r6, r1]	@ movhi
.LVL1092:
	add	lr, r5, #8
	strh	r2, [r0, #2]	@ movhi
.LVL1093:
	strh	r2, [r0, #4]	@ movhi
.LVL1094:
	strh	r2, [r0, #6]	@ movhi
.LVL1095:
	strh	r2, [r7, r1]	@ movhi
.LVL1096:
	b	.L425
.LVL1097:
.L312:
.LBE2310:
.LBE2313:
	.loc 1 1191 0
	ldr	r3, [fp, #2584]
	str	r3, [sp]
	mov	r0, fp
.LVL1098:
	mov	r3, #4
	mov	r1, r4
.LVL1099:
	ldr	r2, [sp, #24]
	bl	opcode_0xf8(PLT)
.LVL1100:
	ldmib	fp, {r3, ip}
	b	.L409
.LVL1101:
.L311:
.LBB2314:
.LBB2315:
.LBB2316:
.LBB2317:
.LBB2318:
	.loc 2 156 0
	rsb	r1, r3, ip
.LBE2318:
.LBE2317:
	.loc 1 1090 0
	cmp	r1, #2
.LBE2316:
.LBE2315:
.LBE2314:
	.loc 1 1187 0
	ldr	r0, [fp, #2584]
.LVL1102:
.LBB2358:
.LBB2357:
	.loc 1 1070 0
	ldr	r5, [fp, #2612]
.LVL1103:
.LBB2352:
	.loc 1 1090 0
	bls	.L409
.LBB2319:
.LBB2320:
.LBB2321:
	.loc 2 95 0
	add	r1, r2, #3
.LBE2321:
.LBE2320:
.LBE2319:
.LBB2324:
.LBB2325:
.LBB2326:
	add	r3, r2, #4
.LBE2326:
.LBE2325:
.LBE2324:
.LBB2329:
.LBB2323:
.LBB2322:
	str	r1, [fp, #4]
.LVL1104:
.LBE2322:
.LBE2323:
.LBE2329:
	.loc 1 1093 0
	ldrb	lr, [r2, #2]	@ zero_extendqisi2
.LBB2330:
.LBB2328:
.LBB2327:
	.loc 2 95 0
	str	r3, [fp, #4]
	ldrb	r1, [r2, #3]	@ zero_extendqisi2
.LBE2327:
.LBE2328:
.LBE2330:
.LBB2331:
.LBB2332:
.LBB2333:
	add	r3, r2, #5
.LBE2333:
.LBE2332:
.LBE2331:
	.loc 1 1094 0
	add	r1, r1, #1328
	add	r1, fp, r1, asl #1
	ldrh	r6, [r1, #8]
.LBB2338:
.LBB2339:
	.loc 1 1059 0 discriminator 2
	add	r7, lr, #199
.LBE2339:
.LBE2338:
.LBB2345:
.LBB2336:
.LBB2334:
	.loc 2 95 0
	str	r3, [fp, #4]
.LBE2334:
.LBE2336:
.LBE2345:
.LBE2352:
	.loc 1 1070 0
	ldr	r1, [sp, #24]
.LBB2353:
.LBB2346:
.LBB2337:
.LBB2335:
	.loc 2 95 0
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
.LBE2335:
.LBE2337:
.LBE2346:
.LBB2347:
.LBB2340:
	.loc 1 1059 0 discriminator 2
	mov	r2, r7, asl #4
	.loc 1 1064 0
	ldrsb	r7, [fp, r2]
.LBE2340:
.LBE2347:
.LBE2353:
	.loc 1 1070 0
	mla	r1, r0, r1, r4
.LBB2354:
	.loc 1 1095 0
	add	lr, lr, #1328
.LBB2348:
.LBB2341:
	.loc 1 1064 0
	add	r8, sp, #72
.LBE2341:
.LBE2348:
	.loc 1 1095 0
	add	lr, fp, lr, asl #1
.LBB2349:
.LBB2342:
	.loc 1 1051 0
	ldrh	lr, [lr, #8]
	.loc 1 1064 0
	add	r7, r8, r7, asl #1
	.loc 1 1059 0 discriminator 2
	add	r2, fp, r2
	.loc 1 1051 0
	strh	r6, [sp, #70]	@ movhi
	strh	lr, [sp, #68]	@ movhi
.LBE2342:
.LBE2349:
.LBE2354:
	.loc 1 1070 0
	mov	r1, r1, asl #1
.LBB2355:
.LBB2350:
.LBB2343:
	.loc 1 1064 0
	ldrh	lr, [r7, #-4]
	strh	lr, [r5, r1]	@ movhi
	ldrsb	lr, [r2, #1]
.LBE2343:
.LBE2350:
.LBE2355:
	.loc 1 1070 0
	add	r5, r5, r1
.LVL1105:
.LBB2356:
.LBB2351:
.LBB2344:
	.loc 1 1064 0
	add	r1, r8, lr, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r5, #2]	@ movhi
.LVL1106:
	ldrsb	r1, [r2, #2]
	.loc 1 1060 0
	sub	r0, r0, #4
.LVL1107:
	.loc 1 1064 0
	add	r1, r8, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r5, #4]	@ movhi
.LVL1108:
	ldrsb	r1, [r2, #3]
	.loc 1 1062 0 discriminator 2
	mov	r0, r0, asl #1
.LVL1109:
	.loc 1 1064 0
	add	r1, r8, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r5, #6]	@ movhi
	ldrsb	lr, [r2, #4]
	add	r5, r5, #8
.LVL1110:
	add	lr, r8, lr, asl #1
	ldrh	r1, [lr, #-4]
	strh	r1, [r5, r0]	@ movhi
	ldrsb	lr, [r2, #5]
	.loc 1 1062 0 discriminator 2
	add	r1, r5, r0
.LVL1111:
	.loc 1 1064 0
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r1, #2]	@ movhi
.LVL1112:
	ldrsb	lr, [r2, #6]
	add	r6, r1, #8
.LVL1113:
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r1, #4]	@ movhi
.LVL1114:
	ldrsb	r5, [r2, #7]
	.loc 1 1062 0 discriminator 2
	add	lr, r6, r0
	.loc 1 1064 0
	add	r5, r8, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [r1, #6]	@ movhi
.LVL1115:
	ldrsb	r1, [r2, #8]
	add	r5, lr, #8
	add	r1, r8, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r6, r0]	@ movhi
.LVL1116:
	ldrsb	r6, [r2, #9]
	.loc 1 1062 0 discriminator 2
	add	r1, r5, r0
	.loc 1 1064 0
	add	r6, r8, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #2]	@ movhi
.LVL1117:
	ldrsb	r6, [r2, #10]
	add	r6, r8, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #4]	@ movhi
.LVL1118:
	ldrsb	r6, [r2, #11]
	add	r6, r8, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #6]	@ movhi
.LVL1119:
	ldrsb	lr, [r2, #12]
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r5, r0]	@ movhi
.LVL1120:
	ldrsb	r0, [r2, #13]
	mov	lr, r8
	add	r0, r8, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r1, #2]	@ movhi
.LVL1121:
	ldrsb	r0, [r2, #14]
	add	r0, r8, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r1, #4]	@ movhi
.LVL1122:
	ldrsb	r2, [r2, #15]
.LVL1123:
	add	r2, r8, r2, asl #1
	ldrh	r2, [r2, #-4]
	strh	r2, [r1, #6]	@ movhi
.LVL1124:
	b	.L409
.LVL1125:
.L316:
.LBE2344:
.LBE2351:
.LBE2356:
.LBE2357:
.LBE2358:
	.loc 1 1217 0
	mov	r0, fp
.LVL1126:
	mov	r1, r4
.LVL1127:
	ldr	r2, [sp, #24]
.LVL1128:
	mov	r3, #2
.LVL1129:
	bl	codec2subblock(PLT)
.LVL1130:
	cmp	r0, #0
	bne	.L408
.LVL1131:
	ldr	lr, [fp, #4]
.LVL1132:
.LBB2359:
.LBB2360:
.LBB2361:
.LBB2362:
	.loc 2 156 0
	ldr	r2, [fp, #8]
.LBE2362:
.LBE2361:
	.loc 1 1151 0
	cmp	lr, r2
	beq	.L408
.LVL1133:
.LBB2363:
.LBB2364:
.LBB2365:
	.loc 2 95 0
	add	r3, lr, #1
	str	r3, [fp, #4]
	ldrb	r0, [lr]	@ zero_extendqisi2
.LVL1134:
.LBE2365:
.LBE2364:
.LBE2363:
	.loc 1 1156 0
	sub	r1, r0, #245
	cmp	r1, #10
	addls	pc, pc, r1, asl #2
	b	.L323
.L325:
	b	.L324
	b	.L326
	b	.L327
	b	.L332
	b	.L329
	b	.L329
	b	.L329
	b	.L329
	b	.L330
	b	.L331
	b	.L332
.LVL1135:
	.p2align 1
.L361:
.LBE2360:
.LBE2359:
.LBE2612:
.LBE3000:
.LBB3001:
.LBB2994:
.LBB2846:
.LBB2847:
	.loc 2 156 0
	rsb	r2, r2, ip
.LBE2847:
.LBE2846:
	.loc 1 1207 0
	cmp	r2, #1
	bls	.L408
	.loc 1 1209 0
	ldr	r2, [fp, #2584]
	ldr	lr, [sp, #24]
	ldr	r8, [fp, #2612]
	mla	lr, r2, lr, r10
.LBB2848:
.LBB2849:
	.loc 1 1040 0
	sub	r2, r2, #4
.LBE2849:
.LBE2848:
	.loc 1 1209 0
	mov	lr, lr, asl #1
.LBB2854:
.LBB2850:
	.loc 1 1041 0 discriminator 2
	mov	r0, r2, asl #1
.LVL1136:
.LBE2850:
.LBE2854:
	.loc 1 1209 0
	add	ip, r8, lr
.LVL1137:
.LBB2855:
.LBB2856:
.LBB2857:
	.loc 2 90 0
	add	r2, r3, #3
	str	r2, [fp, #4]
.LVL1138:
.LBE2857:
.LBE2856:
.LBE2855:
.LBB2862:
.LBB2851:
	.loc 1 1043 0
	add	r5, ip, #8
.LBE2851:
.LBE2862:
.LBB2863:
.LBB2860:
.LBB2858:
	.loc 2 90 0
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
.LBE2858:
.LBE2860:
.LBE2863:
.LBB2864:
.LBB2852:
	.loc 1 1041 0 discriminator 2
	add	r7, r5, r0
.LBE2852:
.LBE2864:
.LBB2865:
.LBB2861:
.LBB2859:
	.loc 2 90 0
	orr	r3, r6, r3, asl #8
.LVL1139:
.LBE2859:
.LBE2861:
.LBE2865:
.LBB2866:
.LBB2853:
	.loc 1 1043 0
	add	r6, r7, #8
	strh	r3, [r8, lr]	@ movhi
.LVL1140:
	.loc 1 1041 0 discriminator 2
	add	lr, r6, r0
	.loc 1 1043 0
	strh	r3, [ip, #2]	@ movhi
.LVL1141:
	strh	r3, [ip, #4]	@ movhi
.LVL1142:
	strh	r3, [ip, #6]	@ movhi
.LVL1143:
	add	ip, lr, #8
	strh	r3, [r5, r0]	@ movhi
.LVL1144:
	.loc 1 1041 0 discriminator 2
	add	r5, ip, r0
	.loc 1 1043 0
	strh	r3, [r7, #2]	@ movhi
.LVL1145:
	strh	r3, [r7, #4]	@ movhi
.LVL1146:
	strh	r3, [r7, #6]	@ movhi
.LVL1147:
	strh	r3, [r6, r0]	@ movhi
.LVL1148:
	strh	r3, [lr, #2]	@ movhi
.LVL1149:
	strh	r3, [lr, #4]	@ movhi
.LVL1150:
	strh	r3, [lr, #6]	@ movhi
.LVL1151:
	strh	r3, [ip, r0]	@ movhi
.LVL1152:
	strh	r3, [r5, #2]	@ movhi
.LVL1153:
	strh	r3, [r5, #4]	@ movhi
.LVL1154:
	strh	r3, [r5, #6]	@ movhi
.LVL1155:
.L411:
	ldr	r3, [sp, #24]
.LBE2853:
.LBE2866:
.LBE2994:
.LBE3001:
.LBB3002:
.LBB2233:
	.loc 1 1151 0
	cmp	r2, r1
	add	r3, r3, #4
	str	r3, [sp, #28]
.LVL1156:
	beq	.L408
.LVL1157:
.LBB2072:
.LBB2073:
.LBB2074:
	.loc 2 95 0
	add	r3, r2, #1
.LVL1158:
	str	r3, [fp, #4]
	ldrb	lr, [r2]	@ zero_extendqisi2
.LVL1159:
.LBE2074:
.LBE2073:
.LBE2072:
	.loc 1 1156 0
	sub	r0, lr, #245
	cmp	r0, #10
	addls	pc, pc, r0, asl #2
	b	.L368
.L370:
	b	.L369
	b	.L371
	b	.L372
	b	.L373
	b	.L374
	b	.L374
	b	.L374
	b	.L374
	b	.L375
	b	.L376
	b	.L377
.LVL1160:
	.p2align 1
.L360:
.LBE2233:
.LBE3002:
.LBB3003:
.LBB2995:
	.loc 1 1201 0
	cmp	r2, ip
	beq	.L408
	.loc 1 1203 0
	ldr	r2, [fp, #2584]
	ldr	r5, [sp, #24]
.LBB2867:
.LBB2868:
	.loc 1 1040 0
	sub	r0, r2, #4
.LVL1161:
.LBE2868:
.LBE2867:
	.loc 1 1203 0
	mla	r5, r2, r5, r10
.LBB2871:
.LBB2872:
.LBB2873:
	.loc 2 95 0
	add	r2, r3, #2
.LBE2873:
.LBE2872:
.LBE2871:
	.loc 1 1203 0
	ldr	r6, [fp, #2612]
.LBB2876:
.LBB2875:
.LBB2874:
	.loc 2 95 0
	str	r2, [fp, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
.LBE2874:
.LBE2875:
.LBE2876:
	.loc 1 1203 0
	mov	r5, r5, asl #1
	add	lr, r6, r5
.LVL1162:
	add	r3, r3, #1328
.LBB2877:
.LBB2869:
	.loc 1 1041 0 discriminator 2
	mov	r0, r0, asl #1
	.loc 1 1043 0
	add	r7, lr, #8
.LBE2869:
.LBE2877:
	.loc 1 1203 0
	add	r3, fp, r3, asl #1
	ldrh	r3, [r3, #8]
.LVL1163:
.LBB2878:
.LBB2870:
	.loc 1 1041 0 discriminator 2
	add	ip, r7, r0
	.loc 1 1043 0
	strh	r3, [r6, r5]	@ movhi
.LVL1164:
	add	r6, ip, #8
	.loc 1 1041 0 discriminator 2
	add	r5, r6, r0
	.loc 1 1043 0
	strh	r3, [lr, #2]	@ movhi
.LVL1165:
	strh	r3, [lr, #4]	@ movhi
.LVL1166:
	strh	r3, [lr, #6]	@ movhi
.LVL1167:
	add	lr, r5, #8
	strh	r3, [r7, r0]	@ movhi
.LVL1168:
	strh	r3, [ip, #2]	@ movhi
.LVL1169:
	strh	r3, [ip, #4]	@ movhi
.LVL1170:
	strh	r3, [ip, #6]	@ movhi
.LVL1171:
	.loc 1 1041 0 discriminator 2
	add	ip, lr, r0
	.loc 1 1043 0
	strh	r3, [r6, r0]	@ movhi
.LVL1172:
	strh	r3, [r5, #2]	@ movhi
.LVL1173:
	strh	r3, [r5, #4]	@ movhi
.LVL1174:
	strh	r3, [r5, #6]	@ movhi
.LVL1175:
	strh	r3, [lr, r0]	@ movhi
.LVL1176:
	strh	r3, [ip, #2]	@ movhi
.LVL1177:
	strh	r3, [ip, #4]	@ movhi
.LVL1178:
	strh	r3, [ip, #6]	@ movhi
.LVL1179:
	b	.L411
.LVL1180:
.L359:
.LBE2870:
.LBE2878:
	.loc 1 1197 0
	ldr	r3, [fp, #2584]
	ldr	r5, [sp, #24]
	ldr	r7, [fp, #2612]
	mla	r5, r3, r5, r10
.LBB2879:
.LBB2880:
	.loc 1 1040 0
	sub	r3, r3, #4
.LBE2880:
.LBE2879:
	.loc 1 1197 0
	mov	r5, r5, asl #1
.LBB2884:
.LBB2881:
	.loc 1 1041 0 discriminator 2
	mov	ip, r3, asl #1
.LBE2881:
.LBE2884:
	.loc 1 1197 0
	add	lr, r7, r5
	add	r3, r0, #1328
.LBB2885:
.LBB2882:
	.loc 1 1043 0
	add	r6, lr, #8
.LBE2882:
.LBE2885:
	.loc 1 1197 0
	add	r3, fp, r3, asl #1
	ldrh	r3, [r3, #22]
.LVL1181:
.LBB2886:
.LBB2883:
	.loc 1 1041 0 discriminator 2
	add	r8, r6, ip
	.loc 1 1043 0
	strh	r3, [r7, r5]	@ movhi
.LVL1182:
	add	r5, r8, #8
	.loc 1 1041 0 discriminator 2
	add	r0, r5, ip
.LVL1183:
	.loc 1 1043 0
	strh	r3, [lr, #2]	@ movhi
.LVL1184:
	strh	r3, [lr, #4]	@ movhi
.LVL1185:
	strh	r3, [lr, #6]	@ movhi
.LVL1186:
	add	lr, r0, #8
	strh	r3, [r6, ip]	@ movhi
.LVL1187:
	strh	r3, [r8, #2]	@ movhi
.LVL1188:
	strh	r3, [r8, #4]	@ movhi
.LVL1189:
	strh	r3, [r8, #6]	@ movhi
.LVL1190:
	strh	r3, [r5, ip]	@ movhi
.LVL1191:
	.loc 1 1041 0 discriminator 2
	add	r5, lr, ip
	.loc 1 1043 0
	strh	r3, [r0, #2]	@ movhi
.LVL1192:
	strh	r3, [r0, #4]	@ movhi
.LVL1193:
	strh	r3, [r0, #6]	@ movhi
.LVL1194:
	strh	r3, [lr, ip]	@ movhi
.LVL1195:
	strh	r3, [r5, #2]	@ movhi
.LVL1196:
	strh	r3, [r5, #4]	@ movhi
.LVL1197:
	strh	r3, [r5, #6]	@ movhi
.LVL1198:
	b	.L411
.LVL1199:
.L358:
.LBE2883:
.LBE2886:
	.loc 1 1191 0
	ldr	r3, [fp, #2584]
	str	r3, [sp]
	mov	r1, r10
	ldr	r2, [sp, #24]
	mov	r0, fp
.LVL1200:
	mov	r3, #4
	bl	opcode_0xf8(PLT)
.LVL1201:
	ldr	r2, [fp, #4]
	ldr	r1, [fp, #8]
	b	.L411
.LVL1202:
.L357:
.LBB2887:
.LBB2888:
.LBB2889:
.LBB2890:
.LBB2891:
	.loc 2 156 0
	rsb	ip, r2, ip
.LBE2891:
.LBE2890:
	.loc 1 1090 0
	cmp	ip, #2
.LBE2889:
	.loc 1 1070 0
	ldr	r5, [fp, #2612]
.LBE2888:
.LBE2887:
	.loc 1 1187 0
	ldr	ip, [fp, #2584]
.LVL1203:
.LBB2931:
.LBB2930:
.LBB2925:
	.loc 1 1090 0
	bls	.L411
.LBB2892:
.LBB2893:
.LBB2894:
	.loc 2 95 0
	add	r0, r3, #2
.LVL1204:
.LBE2894:
.LBE2893:
.LBE2892:
.LBB2897:
.LBB2898:
.LBB2899:
	add	r2, r3, #3
.LBE2899:
.LBE2898:
.LBE2897:
.LBB2902:
.LBB2896:
.LBB2895:
	str	r0, [fp, #4]
.LBE2895:
.LBE2896:
.LBE2902:
	.loc 1 1093 0
	ldrb	lr, [r3, #1]	@ zero_extendqisi2
.LVL1205:
.LBB2903:
.LBB2901:
.LBB2900:
	.loc 2 95 0
	str	r2, [fp, #4]
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
.LBE2900:
.LBE2901:
.LBE2903:
.LBB2904:
.LBB2905:
.LBB2906:
	add	r2, r3, #4
.LBE2906:
.LBE2905:
.LBE2904:
	.loc 1 1094 0
	add	r0, r0, #1328
	add	r0, fp, r0, asl #1
	ldrh	r6, [r0, #8]
.LBB2911:
.LBB2912:
	.loc 1 1059 0 discriminator 2
	add	r7, lr, #199
.LBE2912:
.LBE2911:
.LBB2918:
.LBB2909:
.LBB2907:
	.loc 2 95 0
	str	r2, [fp, #4]
.LBE2907:
.LBE2909:
.LBE2918:
.LBE2925:
	.loc 1 1070 0
	ldr	r0, [sp, #24]
.LBB2926:
.LBB2919:
.LBB2910:
.LBB2908:
	.loc 2 95 0
	ldrb	lr, [r3, #3]	@ zero_extendqisi2
.LBE2908:
.LBE2910:
.LBE2919:
.LBB2920:
.LBB2913:
	.loc 1 1059 0 discriminator 2
	mov	r3, r7, asl #4
	.loc 1 1064 0
	ldrsb	r7, [fp, r3]
.LBE2913:
.LBE2920:
.LBE2926:
	.loc 1 1070 0
	mla	r0, ip, r0, r10
.LBB2927:
	.loc 1 1095 0
	add	lr, lr, #1328
.LBB2921:
.LBB2914:
	.loc 1 1064 0
	add	r8, sp, #72
.LBE2914:
.LBE2921:
	.loc 1 1095 0
	add	lr, fp, lr, asl #1
.LBB2922:
.LBB2915:
	.loc 1 1051 0
	ldrh	lr, [lr, #8]
	.loc 1 1064 0
	add	r7, r8, r7, asl #1
	.loc 1 1059 0 discriminator 2
	add	r3, fp, r3
	.loc 1 1051 0
	strh	r6, [sp, #70]	@ movhi
	strh	lr, [sp, #68]	@ movhi
.LBE2915:
.LBE2922:
.LBE2927:
	.loc 1 1070 0
	mov	r0, r0, asl #1
.LBB2928:
.LBB2923:
.LBB2916:
	.loc 1 1064 0
	ldrh	lr, [r7, #-4]
	strh	lr, [r5, r0]	@ movhi
	ldrsb	lr, [r3, #1]
.LBE2916:
.LBE2923:
.LBE2928:
	.loc 1 1070 0
	add	r0, r5, r0
.LVL1206:
.LBB2929:
.LBB2924:
.LBB2917:
	.loc 1 1064 0
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #2]	@ movhi
.LVL1207:
	ldrsb	lr, [r3, #2]
	.loc 1 1060 0
	sub	ip, ip, #4
.LVL1208:
	.loc 1 1064 0
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #4]	@ movhi
.LVL1209:
	ldrsb	lr, [r3, #3]
	.loc 1 1062 0 discriminator 2
	mov	ip, ip, asl #1
.LVL1210:
	.loc 1 1064 0
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #6]	@ movhi
	ldrsb	lr, [r3, #4]
	add	r0, r0, #8
.LVL1211:
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, ip]	@ movhi
	ldrsb	lr, [r3, #5]
	.loc 1 1062 0 discriminator 2
	add	r0, r0, ip
.LVL1212:
	.loc 1 1064 0
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #2]	@ movhi
.LVL1213:
	ldrsb	lr, [r3, #6]
	add	r6, r0, #8
.LVL1214:
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #4]	@ movhi
.LVL1215:
	ldrsb	r5, [r3, #7]
	.loc 1 1062 0 discriminator 2
	add	lr, r6, ip
	.loc 1 1064 0
	add	r5, r8, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [r0, #6]	@ movhi
.LVL1216:
	ldrsb	r0, [r3, #8]
	add	r5, lr, #8
	add	r0, r8, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r6, ip]	@ movhi
.LVL1217:
	ldrsb	r6, [r3, #9]
	.loc 1 1062 0 discriminator 2
	add	r0, r5, ip
	.loc 1 1064 0
	add	r6, r8, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #2]	@ movhi
.LVL1218:
	ldrsb	r6, [r3, #10]
	add	r6, r8, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #4]	@ movhi
.LVL1219:
	ldrsb	r6, [r3, #11]
	add	r6, r8, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [lr, #6]	@ movhi
.LVL1220:
	ldrsb	lr, [r3, #12]
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r5, ip]	@ movhi
.LVL1221:
	ldrsb	ip, [r3, #13]
	mov	lr, r8
	add	ip, r8, ip, asl #1
	ldrh	ip, [ip, #-4]
	strh	ip, [r0, #2]	@ movhi
.LVL1222:
	ldrsb	ip, [r3, #14]
	add	ip, r8, ip, asl #1
	ldrh	ip, [ip, #-4]
	strh	ip, [r0, #4]	@ movhi
.LVL1223:
	ldrsb	r3, [r3, #15]
.LVL1224:
	add	r3, r8, r3, asl #1
	ldrh	r3, [r3, #-4]
	strh	r3, [r0, #6]	@ movhi
.LVL1225:
	b	.L411
.LVL1226:
.L356:
.LBE2917:
.LBE2924:
.LBE2929:
.LBE2930:
.LBE2931:
	.loc 1 1182 0
	ldr	r5, [fp, #2584]
	ldr	lr, [sp, #24]
	ldr	r3, [fp, #2616]
	mla	lr, r5, lr, r10
	ldr	r6, [fp, #2612]
	mov	r7, lr, asl #1
	add	r0, r3, r7
.LVL1227:
.LBB2932:
.LBB2933:
.LBB2934:
.LBB2935:
	.loc 4 51 0
	ldrb	r1, [r3, lr, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	ldrb	r2, [r0, #5]	@ zero_extendqisi2
.LVL1228:
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #8
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	orr	r3, r3, r2, asl #8
	ldrb	r2, [r0, #6]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #16
	ldrb	ip, [r0, #3]	@ zero_extendqisi2
	orr	r3, r3, r2, asl #16
	ldrb	r2, [r0, #7]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #24
	strb	r1, [r6, lr, asl #1]
.LVL1229:
.LBE2935:
.LBE2934:
.LBE2933:
.LBE2932:
	.loc 1 1182 0
	add	r7, r6, r7
.LVL1230:
.LBB2941:
.LBB2940:
.LBB2938:
.LBB2936:
	.loc 4 51 0
	orr	r2, r3, r2, asl #24
	mov	ip, r1, lsr #8
.LBE2936:
.LBE2938:
	.loc 1 1021 0
	mov	r3, r5, asl #1
.LVL1231:
.LBB2939:
.LBB2937:
	.loc 4 51 0
	mov	lr, r1, lsr #16
	strb	r2, [r7, #4]
	strb	ip, [r7, #1]
	strb	lr, [r7, #2]
	mov	r6, r2, lsr #8
	.loc 4 53 0
	add	lr, r0, r3
	.loc 4 51 0
	mov	ip, r2, lsr #16
	mov	r1, r1, lsr #24
	mov	r2, r2, lsr #24
	strb	r1, [r7, #3]
	strb	r6, [r7, #5]
	strb	ip, [r7, #6]
	strb	r2, [r7, #7]
	ldrb	r2, [r0, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [lr, #5]	@ zero_extendqisi2
	ldrb	r1, [lr, #1]	@ zero_extendqisi2
	ldrb	r0, [lr, #4]	@ zero_extendqisi2
.LVL1232:
	ldrb	ip, [lr, #2]	@ zero_extendqisi2
	orr	r0, r0, r6, asl #8
	orr	r1, r2, r1, asl #8
	ldrb	r6, [lr, #3]	@ zero_extendqisi2
	ldrb	r2, [lr, #6]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #16
	ldrb	ip, [lr, #7]	@ zero_extendqisi2
	orr	r1, r1, r6, asl #24
	orr	r2, r0, r2, asl #16
	orr	r2, r2, ip, asl #24
	mov	r6, r1, lsr #8
	.loc 4 52 0
	add	ip, r7, r3
.LVL1233:
	.loc 4 51 0
	mov	r0, r1, lsr #16
	strb	r1, [r7, r5, asl #1]
	mov	r7, r2, lsr #8
.LVL1234:
	strb	r6, [ip, #1]
	strb	r2, [ip, #4]
	mov	r6, r2, lsr #16
	strb	r0, [ip, #2]
	mov	r1, r1, lsr #24
	.loc 4 53 0
	add	r0, lr, r3
	.loc 4 51 0
	mov	r2, r2, lsr #24
	strb	r1, [ip, #3]
	strb	r7, [ip, #5]
	strb	r6, [ip, #6]
	strb	r2, [ip, #7]
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	ldrb	r7, [r0, #5]	@ zero_extendqisi2
	ldrb	r2, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
.LVL1235:
	ldrb	r6, [r0, #2]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	orr	r2, r2, r1, asl #8
	ldrb	r7, [r0, #3]	@ zero_extendqisi2
	ldrb	r1, [r0, #6]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #16
	ldrb	r6, [r0, #7]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #24
	orr	r1, lr, r1, asl #16
	orr	r1, r1, r6, asl #24
	.loc 4 52 0
	add	lr, ip, r3
.LVL1236:
	.loc 4 51 0
	mov	r7, r2, lsr #8
	mov	r6, r2, lsr #16
	strb	r2, [ip, r5, asl #1]
	strb	r7, [lr, #1]
	strb	r1, [lr, #4]
	strb	r6, [lr, #2]
	mov	ip, r1, lsr #8
	add	r6, r0, r3
	mov	r7, r1, lsr #16
	mov	r2, r2, lsr #24
	mov	r1, r1, lsr #24
	strb	r2, [lr, #3]
	strb	ip, [lr, #5]
	strb	r7, [lr, #6]
	strb	r1, [lr, #7]
.LVL1237:
	ldrb	ip, [r6, #1]	@ zero_extendqisi2
	ldrb	r2, [r6, #4]	@ zero_extendqisi2
	ldrb	r1, [r6, #5]	@ zero_extendqisi2
	ldrb	r0, [r0, r5, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r6, #6]	@ zero_extendqisi2
	ldrb	r8, [r6, #2]	@ zero_extendqisi2
	orr	r0, r0, ip, asl #8
	orr	r1, r2, r1, asl #8
	ldrb	ip, [r6, #3]	@ zero_extendqisi2
	ldrb	r2, [r6, #7]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #16
	orr	r0, r0, r8, asl #16
	orr	ip, r0, ip, asl #24
	orr	r2, r1, r2, asl #24
	add	r3, lr, r3
.LVL1238:
	mov	r7, ip, lsr #8
	mov	r6, ip, lsr #16
.LVL1239:
	mov	r0, ip, lsr #24
	mov	r1, r2, lsr #8
	strb	ip, [lr, r5, asl #1]
.LVL1240:
.L428:
.LBE2937:
.LBE2939:
.LBE2940:
.LBE2941:
.LBB2942:
.LBB2943:
.LBB2944:
.LBB2945:
	mov	lr, r2, lsr #16
	mov	ip, r2, lsr #24
	strb	r2, [r3, #4]
	strb	r7, [r3, #1]
	strb	r6, [r3, #2]
	strb	r0, [r3, #3]
	strb	r1, [r3, #5]
	strb	lr, [r3, #6]
	strb	ip, [r3, #7]
.LVL1241:
	ldr	r2, [fp, #4]
	ldr	r1, [fp, #8]
	b	.L411
.LVL1242:
.L354:
.LBE2945:
.LBE2944:
.LBE2943:
.LBE2942:
.LBB2963:
.LBB2964:
	.loc 2 156 0
	rsb	r2, r2, ip
.LBE2964:
.LBE2963:
	.loc 1 1168 0
	cmp	r2, #1
	bls	.L408
.LVL1243:
.LBB2965:
.LBB2966:
.LBB2967:
	.loc 2 90 0
	add	r2, r3, #3
	str	r2, [fp, #4]
.LVL1244:
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
.LBE2967:
.LBE2966:
.LBE2965:
	.loc 1 1172 0
	ldr	r6, [fp, #2588]
.LBB2970:
.LBB2969:
.LBB2968:
	.loc 2 90 0
	orr	r5, r2, r5, asl #8
.LBE2968:
.LBE2969:
.LBE2970:
	.loc 1 1172 0
	mov	r5, r5, asl #16
	mov	r5, r5, asr #16
	mov	r0, r5
.LVL1245:
	mov	r1, r6
	bl	__aeabi_idivmod(PLT)
.LVL1246:
	.loc 1 1173 0
	mov	r0, r5
	.loc 1 1175 0
	mov	r3, r1, asl #16
	.loc 1 1173 0
	mov	r1, r6
.LVL1247:
	.loc 1 1175 0
	mov	r5, r3, asr #16
.LVL1248:
	.loc 1 1173 0
	bl	__aeabi_idiv(PLT)
.LVL1249:
.LBB2971:
.LBB2972:
	.loc 1 1133 0
	ldr	r2, [sp, #24]
	ldr	ip, [fp, #2584]
	add	r3, r10, r5
.LBE2972:
.LBE2971:
	.loc 1 1175 0
	mov	r0, r0, asl #16
.LBB2975:
.LBB2973:
	.loc 1 1133 0
	add	lr, r2, r0, asr #16
	mul	r1, ip, lr
.LVL1250:
	.loc 1 1136 0
	adds	r0, r3, r1
.LVL1251:
	bmi	.L365
	.loc 1 1134 0
	add	r2, ip, #1
.LVL1252:
	add	r2, r2, r2, asl #1
.LVL1253:
	.loc 1 1136 0 discriminator 1
	ldr	r6, [fp, #2660]
	.loc 1 1134 0
	add	r2, r0, r2
	.loc 1 1136 0 discriminator 1
	cmp	r2, r6, asr #1
	bge	.L365
.LVL1254:
	add	r3, r1, r5
.LVL1255:
.L426:
.LBE2973:
.LBE2975:
	.loc 1 1176 0
	ldr	r2, [fp, #2620]
	.loc 1 1177 0
	add	r3, r3, r10
	.loc 1 1176 0
	add	r0, r2, r3, asl #1
.LBB2976:
.LBB2958:
.LBB2952:
.LBB2946:
	.loc 4 51 0
	ldrb	r1, [r2, r3, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	ldrb	r2, [r0, #5]	@ zero_extendqisi2
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
.LBE2946:
.LBE2952:
.LBE2958:
.LBE2976:
	.loc 1 1176 0
	ldr	r6, [sp, #24]
.LBB2977:
.LBB2959:
.LBB2953:
.LBB2947:
	.loc 4 51 0
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	ldrb	r5, [r0, #6]	@ zero_extendqisi2
.LBE2947:
.LBE2953:
.LBE2959:
.LBE2977:
	.loc 1 1176 0
	mla	r6, ip, r6, r10
.LBB2978:
.LBB2960:
.LBB2954:
.LBB2948:
	.loc 4 51 0
	orr	r1, r1, lr, asl #8
	orr	r3, r3, r2, asl #8
	ldrb	lr, [r0, #3]	@ zero_extendqisi2
	ldrb	r2, [r0, #7]	@ zero_extendqisi2
	orr	r3, r3, r5, asl #16
	orr	r1, r1, r7, asl #16
.LBE2948:
.LBE2954:
.LBE2960:
.LBE2978:
	.loc 1 1176 0
	ldr	r5, [fp, #2612]
.LBB2979:
.LBB2961:
.LBB2955:
.LBB2949:
	.loc 4 51 0
	orr	r1, r1, lr, asl #24
	strb	r1, [r5, r6, asl #1]
.LBE2949:
.LBE2955:
.LBE2961:
.LBE2979:
	.loc 1 1176 0
	add	r7, r5, r6, asl #1
.LVL1256:
.LBB2980:
.LBB2962:
.LBB2956:
.LBB2950:
	.loc 4 51 0
	orr	r2, r3, r2, asl #24
	mov	lr, r1, lsr #8
.LBE2950:
.LBE2956:
	.loc 1 1021 0
	mov	r3, ip, asl #1
.LVL1257:
.LBB2957:
.LBB2951:
	.loc 4 51 0
	mov	r5, r1, lsr #16
	strb	lr, [r7, #1]
	strb	r2, [r7, #4]
	strb	r5, [r7, #2]
	mov	r6, r2, lsr #8
	.loc 4 53 0
	add	r5, r0, r3
	.loc 4 51 0
	mov	lr, r2, lsr #16
	mov	r1, r1, lsr #24
	mov	r2, r2, lsr #24
	strb	r1, [r7, #3]
	strb	r6, [r7, #5]
	strb	lr, [r7, #6]
	strb	r2, [r7, #7]
	ldrb	r2, [r0, ip, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r5, #5]	@ zero_extendqisi2
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	ldrb	r0, [r5, #4]	@ zero_extendqisi2
.LVL1258:
	ldrb	lr, [r5, #2]	@ zero_extendqisi2
	orr	r0, r0, r6, asl #8
	orr	r1, r2, r1, asl #8
	ldrb	r6, [r5, #3]	@ zero_extendqisi2
	ldrb	r2, [r5, #6]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #16
	ldrb	lr, [r5, #7]	@ zero_extendqisi2
	orr	r1, r1, r6, asl #24
	orr	r2, r0, r2, asl #16
	orr	r2, r2, lr, asl #24
	mov	r6, r1, lsr #8
	.loc 4 52 0
	add	lr, r7, r3
.LVL1259:
	.loc 4 51 0
	mov	r0, r1, lsr #16
	strb	r1, [r7, ip, asl #1]
	mov	r7, r2, lsr #8
.LVL1260:
	strb	r6, [lr, #1]
	strb	r2, [lr, #4]
	mov	r6, r2, lsr #16
	strb	r0, [lr, #2]
	mov	r1, r1, lsr #24
	.loc 4 53 0
	add	r0, r5, r3
	.loc 4 51 0
	mov	r2, r2, lsr #24
	strb	r1, [lr, #3]
	strb	r7, [lr, #5]
	strb	r6, [lr, #6]
	strb	r2, [lr, #7]
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	ldrb	r7, [r0, #5]	@ zero_extendqisi2
	ldrb	r2, [r5, ip, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r0, #4]	@ zero_extendqisi2
.LVL1261:
	ldrb	r6, [r0, #2]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #8
	orr	r2, r2, r1, asl #8
	ldrb	r7, [r0, #3]	@ zero_extendqisi2
	ldrb	r1, [r0, #6]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #16
	ldrb	r6, [r0, #7]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #24
	orr	r1, r5, r1, asl #16
	orr	r1, r1, r6, asl #24
	.loc 4 52 0
	add	r5, lr, r3
.LVL1262:
	.loc 4 51 0
	mov	r7, r2, lsr #8
	mov	r6, r2, lsr #16
	strb	r2, [lr, ip, asl #1]
	strb	r7, [r5, #1]
	strb	r1, [r5, #4]
	strb	r6, [r5, #2]
	mov	lr, r1, lsr #8
	add	r6, r0, r3
	mov	r7, r1, lsr #16
	mov	r2, r2, lsr #24
	mov	r1, r1, lsr #24
	strb	r2, [r5, #3]
	strb	lr, [r5, #5]
	strb	r7, [r5, #6]
	strb	r1, [r5, #7]
.LVL1263:
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	ldrb	r2, [r6, #4]	@ zero_extendqisi2
	ldrb	r1, [r6, #5]	@ zero_extendqisi2
	ldrb	r0, [r0, ip, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r6, #6]	@ zero_extendqisi2
	ldrb	r8, [r6, #2]	@ zero_extendqisi2
	orr	r0, r0, lr, asl #8
	orr	r1, r2, r1, asl #8
	ldrb	lr, [r6, #3]	@ zero_extendqisi2
	ldrb	r2, [r6, #7]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #16
	orr	r0, r0, r8, asl #16
	orr	lr, r0, lr, asl #24
	orr	r2, r1, r2, asl #24
	add	r3, r5, r3
.LVL1264:
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
.LVL1265:
	mov	r0, lr, lsr #24
	mov	r1, r2, lsr #8
	strb	lr, [r5, ip, asl #1]
	b	.L428
.L445:
	.align	2
.L444:
	.word	.LC7-(.LPIC55+8)
	.word	.LC7-(.LPIC56+8)
	.word	.LANCHOR0-(.LPIC43+8)
	.word	.LANCHOR0-(.LPIC49+8)
.LVL1266:
.L376:
.LBE2951:
.LBE2957:
.LBE2962:
.LBE2980:
.LBE2995:
.LBE3003:
.LBB3004:
.LBB2234:
.LBB2075:
.LBB2076:
	.loc 2 156 0
	rsb	r3, r3, r1
.LBE2076:
.LBE2075:
	.loc 1 1207 0
	cmp	r3, #1
	bls	.L408
	.loc 1 1209 0
	ldr	r3, [fp, #2584]
	ldr	ip, [sp, #28]
	mla	ip, r3, ip, r4
.LBB2077:
.LBB2078:
	.loc 1 1040 0
	sub	r3, r3, #4
	.loc 1 1041 0 discriminator 2
	mov	r0, r3, asl #1
.LBE2078:
.LBE2077:
	.loc 1 1209 0
	ldr	r3, [fp, #2612]
	mov	ip, ip, asl #1
	add	r5, r3, ip
.LVL1267:
.LBB2081:
.LBB2082:
.LBB2083:
	.loc 2 90 0
	add	r3, r2, #3
	str	r3, [fp, #4]
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
.LBE2083:
.LBE2082:
.LBE2081:
.LBB2086:
.LBB2079:
	.loc 1 1043 0
	add	r6, r5, #8
.LBE2079:
.LBE2086:
.LBB2087:
.LBB2085:
.LBB2084:
	.loc 2 90 0
	orr	r2, r7, r2, asl #8
.LVL1268:
.LBE2084:
.LBE2085:
.LBE2087:
.LBB2088:
.LBB2080:
	.loc 1 1043 0
	ldr	r7, [fp, #2612]
	.loc 1 1041 0 discriminator 2
	add	lr, r6, r0
.LVL1269:
.L432:
	.loc 1 1043 0
	strh	r2, [r7, ip]	@ movhi
.LVL1270:
	add	r7, lr, #8
	.loc 1 1041 0 discriminator 2
	add	ip, r7, r0
	.loc 1 1043 0
	strh	r2, [r5, #2]	@ movhi
.LVL1271:
	strh	r2, [r5, #4]	@ movhi
.LVL1272:
	strh	r2, [r5, #6]	@ movhi
.LVL1273:
	add	r5, ip, #8
	strh	r2, [r6, r0]	@ movhi
.LVL1274:
	strh	r2, [lr, #2]	@ movhi
.LVL1275:
	strh	r2, [lr, #4]	@ movhi
.LVL1276:
	strh	r2, [lr, #6]	@ movhi
.LVL1277:
	strh	r2, [r7, r0]	@ movhi
.LVL1278:
.L431:
	.loc 1 1041 0 discriminator 2
	add	lr, r5, r0
	.loc 1 1043 0
	strh	r2, [ip, #2]	@ movhi
.LVL1279:
	strh	r2, [ip, #4]	@ movhi
.LVL1280:
	strh	r2, [ip, #6]	@ movhi
.LVL1281:
	strh	r2, [r5, r0]	@ movhi
.LVL1282:
	strh	r2, [lr, #2]	@ movhi
.LVL1283:
	strh	r2, [lr, #4]	@ movhi
.LVL1284:
	strh	r2, [lr, #6]	@ movhi
.LVL1285:
.L413:
.LBE2080:
.LBE2088:
.LBE2234:
.LBE3004:
.LBB3005:
.LBB2055:
	.loc 1 1151 0
	cmp	r1, r3
	beq	.L408
.LVL1286:
.LBB1894:
.LBB1895:
.LBB1896:
	.loc 2 95 0
	add	r2, r3, #1
	str	r2, [fp, #4]
	ldrb	r0, [r3]	@ zero_extendqisi2
.LVL1287:
.LBE1896:
.LBE1895:
.LBE1894:
	.loc 1 1156 0
	sub	ip, r0, #245
	cmp	ip, #10
	addls	pc, pc, ip, asl #2
	b	.L383
.L385:
	b	.L384
	b	.L386
	b	.L387
	b	.L388
	b	.L389
	b	.L389
	b	.L389
	b	.L389
	b	.L390
	b	.L391
	b	.L392
.LVL1288:
	.p2align 1
.L375:
.LBE2055:
.LBE3005:
.LBB3006:
.LBB2235:
	.loc 1 1201 0
	cmp	r3, r1
	beq	.L408
	.loc 1 1203 0
	ldr	r3, [fp, #2584]
	ldr	ip, [sp, #28]
.LBB2089:
.LBB2090:
	.loc 1 1040 0
	sub	r0, r3, #4
.LBE2090:
.LBE2089:
	.loc 1 1203 0
	mla	ip, r3, ip, r4
.LBB2093:
.LBB2094:
.LBB2095:
	.loc 2 95 0
	add	r3, r2, #2
.LBE2095:
.LBE2094:
.LBE2093:
	.loc 1 1203 0
	ldr	r7, [fp, #2612]
.LBB2098:
.LBB2097:
.LBB2096:
	.loc 2 95 0
	str	r3, [fp, #4]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
.LBE2096:
.LBE2097:
.LBE2098:
	.loc 1 1203 0
	mov	ip, ip, asl #1
	add	r5, r7, ip
.LVL1289:
	add	r2, r2, #1328
.LBB2099:
.LBB2091:
	.loc 1 1041 0 discriminator 2
	mov	r0, r0, asl #1
	.loc 1 1043 0
	add	r6, r5, #8
.LBE2091:
.LBE2099:
	.loc 1 1203 0
	add	r2, fp, r2, asl #1
.LBB2100:
.LBB2092:
	.loc 1 1041 0 discriminator 2
	add	lr, r6, r0
.LVL1290:
.LBE2092:
.LBE2100:
	.loc 1 1203 0
	ldrh	r2, [r2, #8]
.LVL1291:
	b	.L432
.LVL1292:
.L374:
	.loc 1 1197 0
	ldr	r2, [fp, #2584]
	ldr	ip, [sp, #28]
	ldr	r6, [fp, #2612]
	mla	ip, r2, ip, r4
.LBB2101:
.LBB2102:
	.loc 1 1040 0
	sub	r2, r2, #4
.LBE2102:
.LBE2101:
	.loc 1 1197 0
	mov	ip, ip, asl #1
	add	r5, r6, ip
.LBB2106:
.LBB2103:
	.loc 1 1041 0 discriminator 2
	mov	r0, r2, asl #1
.LBE2103:
.LBE2106:
	.loc 1 1197 0
	add	r2, lr, #1328
.LBB2107:
.LBB2104:
	.loc 1 1043 0
	add	r7, r5, #8
.LBE2104:
.LBE2107:
	.loc 1 1197 0
	add	r2, fp, r2, asl #1
	ldrh	r2, [r2, #22]
.LVL1293:
.LBB2108:
.LBB2105:
	.loc 1 1041 0 discriminator 2
	add	lr, r7, r0
.LVL1294:
	.loc 1 1043 0
	strh	r2, [r6, ip]	@ movhi
.LVL1295:
	add	r6, lr, #8
	.loc 1 1041 0 discriminator 2
	add	ip, r6, r0
	.loc 1 1043 0
	strh	r2, [r5, #2]	@ movhi
.LVL1296:
	strh	r2, [r5, #4]	@ movhi
.LVL1297:
	strh	r2, [r5, #6]	@ movhi
.LVL1298:
	strh	r2, [r7, r0]	@ movhi
.LVL1299:
	add	r5, ip, #8
	strh	r2, [lr, #2]	@ movhi
.LVL1300:
	strh	r2, [lr, #4]	@ movhi
.LVL1301:
	strh	r2, [lr, #6]	@ movhi
.LVL1302:
	strh	r2, [r6, r0]	@ movhi
.LVL1303:
	b	.L431
.LVL1304:
.L373:
.LBE2105:
.LBE2108:
	.loc 1 1191 0
	ldr	r3, [fp, #2584]
	str	r3, [sp]
	mov	r1, r4
	mov	r3, #4
	mov	r0, fp
	ldr	r2, [sp, #28]
	bl	opcode_0xf8(PLT)
.LVL1305:
	ldr	r3, [fp, #4]
	ldr	r1, [fp, #8]
	b	.L413
.LVL1306:
.L372:
.LBB2109:
.LBB2110:
.LBB2111:
.LBB2112:
.LBB2113:
	.loc 2 156 0
	rsb	r0, r3, r1
.LBE2113:
.LBE2112:
	.loc 1 1090 0
	cmp	r0, #2
.LBE2111:
.LBE2110:
.LBE2109:
	.loc 1 1187 0
	ldr	ip, [fp, #2584]
.LVL1307:
.LBB2152:
.LBB2151:
	.loc 1 1070 0
	ldr	r5, [fp, #2612]
.LVL1308:
.LBB2146:
	.loc 1 1090 0
	bls	.L413
.LBB2114:
.LBB2115:
.LBB2116:
	.loc 2 95 0
	add	r0, r2, #2
.LBE2116:
.LBE2115:
.LBE2114:
.LBB2119:
.LBB2120:
.LBB2121:
	add	r3, r2, #3
.LBE2121:
.LBE2120:
.LBE2119:
.LBB2124:
.LBB2118:
.LBB2117:
	str	r0, [fp, #4]
.LBE2117:
.LBE2118:
.LBE2124:
	.loc 1 1093 0
	ldrb	r0, [r2, #1]	@ zero_extendqisi2
.LBB2125:
.LBB2123:
.LBB2122:
	.loc 2 95 0
	str	r3, [fp, #4]
	ldrb	lr, [r2, #2]	@ zero_extendqisi2
.LVL1309:
.LBE2122:
.LBE2123:
.LBE2125:
.LBB2126:
.LBB2127:
.LBB2128:
	add	r3, r2, #4
.LBE2128:
.LBE2127:
.LBE2126:
	.loc 1 1094 0
	add	lr, lr, #1328
	add	lr, fp, lr, asl #1
.LBB2131:
.LBB2132:
	.loc 1 1059 0 discriminator 2
	add	r0, r0, #199
.LBE2132:
.LBE2131:
	.loc 1 1094 0
	ldrh	r7, [lr, #8]
.LBB2139:
.LBB2130:
.LBB2129:
	.loc 2 95 0
	str	r3, [fp, #4]
	ldrb	lr, [r2, #3]	@ zero_extendqisi2
.LBE2129:
.LBE2130:
.LBE2139:
.LBB2140:
.LBB2133:
	.loc 1 1059 0 discriminator 2
	mov	r2, r0, asl #4
.LBE2133:
.LBE2140:
.LBE2146:
	.loc 1 1070 0
	ldr	r0, [sp, #28]
.LBB2147:
.LBB2141:
.LBB2134:
	.loc 1 1064 0
	ldrsb	r6, [fp, r2]
.LBE2134:
.LBE2141:
.LBE2147:
	.loc 1 1070 0
	mla	r0, ip, r0, r4
.LBB2148:
	.loc 1 1095 0
	add	lr, lr, #1328
.LBB2142:
.LBB2135:
	.loc 1 1064 0
	add	r8, sp, #72
.LBE2135:
.LBE2142:
	.loc 1 1095 0
	add	lr, fp, lr, asl #1
.LBB2143:
.LBB2136:
	.loc 1 1051 0
	ldrh	lr, [lr, #8]
	.loc 1 1064 0
	add	r6, r8, r6, asl #1
	.loc 1 1059 0 discriminator 2
	add	r2, fp, r2
	.loc 1 1051 0
	strh	r7, [sp, #70]	@ movhi
	strh	lr, [sp, #68]	@ movhi
.LBE2136:
.LBE2143:
.LBE2148:
	.loc 1 1070 0
	mov	r0, r0, asl #1
.LBB2149:
.LBB2144:
.LBB2137:
	.loc 1 1064 0
	ldrh	lr, [r6, #-4]
	strh	lr, [r5, r0]	@ movhi
	ldrsb	lr, [r2, #1]
.LBE2137:
.LBE2144:
.LBE2149:
	.loc 1 1070 0
	add	r0, r5, r0
.LVL1310:
.LBB2150:
.LBB2145:
.LBB2138:
	.loc 1 1064 0
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #2]	@ movhi
.LVL1311:
	ldrsb	lr, [r2, #2]
	.loc 1 1060 0
	sub	ip, ip, #4
.LVL1312:
	.loc 1 1064 0
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #4]	@ movhi
.LVL1313:
	ldrsb	lr, [r2, #3]
	.loc 1 1062 0 discriminator 2
	mov	ip, ip, asl #1
.LVL1314:
	.loc 1 1064 0
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #6]	@ movhi
	ldrsb	lr, [r2, #4]
	add	r0, r0, #8
.LVL1315:
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, ip]	@ movhi
	ldrsb	lr, [r2, #5]
	.loc 1 1062 0 discriminator 2
	add	r0, r0, ip
.LVL1316:
	.loc 1 1064 0
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #2]	@ movhi
.LVL1317:
	ldrsb	lr, [r2, #6]
	add	r5, r0, #8
.LVL1318:
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r0, #4]	@ movhi
.LVL1319:
	ldrsb	r6, [r2, #7]
	.loc 1 1062 0 discriminator 2
	add	lr, r5, ip
	.loc 1 1064 0
	add	r6, r8, r6, asl #1
	ldrh	r6, [r6, #-4]
	strh	r6, [r0, #6]	@ movhi
.LVL1320:
	ldrsb	r0, [r2, #8]
	add	r6, lr, #8
	add	r0, r8, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r5, ip]	@ movhi
.LVL1321:
	ldrsb	r5, [r2, #9]
	.loc 1 1062 0 discriminator 2
	add	r0, r6, ip
	.loc 1 1064 0
	add	r5, r8, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [lr, #2]	@ movhi
.LVL1322:
	ldrsb	r5, [r2, #10]
	add	r5, r8, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [lr, #4]	@ movhi
.LVL1323:
	ldrsb	r5, [r2, #11]
	add	r5, r8, r5, asl #1
	ldrh	r5, [r5, #-4]
	strh	r5, [lr, #6]	@ movhi
.LVL1324:
	ldrsb	lr, [r2, #12]
	add	lr, r8, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r6, ip]	@ movhi
.LVL1325:
	ldrsb	ip, [r2, #13]
	mov	lr, r8
	add	ip, r8, ip, asl #1
	ldrh	ip, [ip, #-4]
	strh	ip, [r0, #2]	@ movhi
.LVL1326:
	ldrsb	ip, [r2, #14]
	add	ip, r8, ip, asl #1
	ldrh	ip, [ip, #-4]
	strh	ip, [r0, #4]	@ movhi
.LVL1327:
	ldrsb	r2, [r2, #15]
.LVL1328:
	add	r2, r8, r2, asl #1
	ldrh	r2, [r2, #-4]
	strh	r2, [r0, #6]	@ movhi
.LVL1329:
	b	.L413
.LVL1330:
.L371:
.LBE2138:
.LBE2145:
.LBE2150:
.LBE2151:
.LBE2152:
	.loc 1 1182 0
	ldr	r7, [fp, #2584]
	ldr	r1, [sp, #28]
	ldr	r3, [fp, #2616]
	mla	r1, r7, r1, r4
.LBB2153:
.LBB2154:
	.loc 1 1021 0
	mov	r6, r7, asl #1
.LBE2154:
.LBE2153:
	.loc 1 1182 0
	mov	lr, r1, asl #1
.LVL1331:
	add	r0, r3, lr
.LVL1332:
.LBB2164:
.LBB2161:
.LBB2155:
.LBB2156:
	.loc 4 51 0
	ldrb	r2, [r3, r1, asl #1]	@ zero_extendqisi2
.LVL1333:
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #5]	@ zero_extendqisi2
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #8
	orr	r3, r3, ip, asl #8
	ldrb	r5, [r0, #2]	@ zero_extendqisi2
	ldrb	ip, [r0, #6]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	orr	r3, r3, ip, asl #16
	ldrb	r5, [r0, #3]	@ zero_extendqisi2
	ldrb	ip, [r0, #7]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #24
	orr	r3, r3, ip, asl #24
	ldr	r5, [fp, #2612]
.LBE2156:
.LBE2155:
.LBE2161:
.LBE2164:
	.loc 1 1182 0
	ldr	ip, [fp, #2612]
.LBB2165:
.LBB2162:
.LBB2159:
.LBB2157:
	.loc 4 51 0
	strb	r2, [r5, r1, asl #1]
.LVL1334:
.LBE2157:
.LBE2159:
.LBE2162:
.LBE2165:
	.loc 1 1182 0
	add	lr, ip, lr
.LVL1335:
.LBB2166:
.LBB2163:
.LBB2160:
.LBB2158:
	.loc 4 51 0
	mov	r1, r2, lsr #16
	mov	ip, r2, lsr #8
	strb	r3, [lr, #4]
	strb	ip, [lr, #1]
	strb	r1, [lr, #2]
	mov	r5, r3, lsr #8
	.loc 4 53 0
	add	r1, r0, r6
	.loc 4 51 0
	mov	ip, r3, lsr #16
	mov	r2, r2, lsr #24
	mov	r3, r3, lsr #24
	strb	r2, [lr, #3]
	strb	r5, [lr, #5]
	strb	ip, [lr, #6]
	strb	r3, [lr, #7]
	ldrb	r3, [r0, r7, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #4]	@ zero_extendqisi2
.LVL1336:
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	orr	r0, r0, r5, asl #8
	orr	r2, r3, r2, asl #8
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, ip, asl #16
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #24
	orr	r3, r0, r3, asl #16
	.loc 4 52 0
	add	r5, lr, r6
.LVL1337:
	.loc 4 51 0
	orr	r3, r3, ip, asl #24
	mov	r0, r2, lsr #8
	mov	ip, r2, lsr #16
	strb	r2, [lr, r7, asl #1]
	mov	lr, r3, lsr #8
.LVL1338:
	strb	r0, [r5, #1]
	strb	r3, [r5, #4]
	mov	r0, r3, lsr #16
	strb	ip, [r5, #2]
	mov	r2, r2, lsr #24
	.loc 4 53 0
	add	ip, r1, r6
	.loc 4 51 0
	mov	r3, r3, lsr #24
	strb	r2, [r5, #3]
	strb	lr, [r5, #5]
	strb	r0, [r5, #6]
	strb	r3, [r5, #7]
	ldrb	r3, [r1, r7, asl #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #5]	@ zero_extendqisi2
	ldrb	r1, [ip, #1]	@ zero_extendqisi2
.LVL1339:
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
	ldrb	r0, [ip, #2]	@ zero_extendqisi2
	orr	r2, r2, lr, asl #8
	orr	r1, r3, r1, asl #8
	ldrb	lr, [ip, #3]	@ zero_extendqisi2
	ldrb	r3, [ip, #6]	@ zero_extendqisi2
	orr	r1, r1, r0, asl #16
	ldrb	r0, [ip, #7]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #24
	orr	r3, r2, r3, asl #16
	orr	r3, r3, r0, asl #24
	mov	lr, r1, lsr #8
	.loc 4 52 0
	add	r0, r5, r6
.LVL1340:
	.loc 4 51 0
	mov	r2, r1, lsr #16
	strb	r1, [r5, r7, asl #1]
	strb	lr, [r0, #1]
	strb	r3, [r0, #4]
	strb	r2, [r0, #2]
	mov	r5, r3, lsr #8
	add	r2, ip, r6
	mov	lr, r3, lsr #16
	mov	r1, r1, lsr #24
	mov	r3, r3, lsr #24
	strb	r1, [r0, #3]
	strb	r5, [r0, #5]
	strb	lr, [r0, #6]
	strb	r3, [r0, #7]
.LVL1341:
	ldrb	lr, [r2, #1]	@ zero_extendqisi2
	ldrb	ip, [ip, r7, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #5]	@ zero_extendqisi2
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #8
	ldrb	lr, [r2, #6]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #8
	ldrb	r1, [r2, #3]	@ zero_extendqisi2
	ldrb	r2, [r2, #7]	@ zero_extendqisi2
.LVL1342:
	orr	ip, ip, r5, asl #16
	orr	r3, r3, lr, asl #16
.LVL1343:
.L429:
.LBE2158:
.LBE2160:
.LBE2163:
.LBE2166:
.LBB2167:
.LBB2168:
.LBB2169:
.LBB2170:
	orr	r1, ip, r1, asl #24
	orr	r2, r3, r2, asl #24
	strb	r1, [r0, r7, asl #1]
.LVL1344:
	add	r3, r0, r6
	mov	r5, r1, lsr #16
	mov	r6, r1, lsr #8
	mov	lr, r1, lsr #24
	mov	ip, r2, lsr #8
	mov	r1, r2, lsr #24
	mov	r0, r2, lsr #16
	strb	r2, [r3, #4]
	strb	r6, [r3, #1]
	strb	r5, [r3, #2]
	strb	lr, [r3, #3]
	strb	ip, [r3, #5]
	strb	r0, [r3, #6]
	strb	r1, [r3, #7]
.LVL1345:
	ldr	r3, [fp, #4]
	ldr	r1, [fp, #8]
	b	.L413
.LVL1346:
.L369:
.LBE2170:
.LBE2169:
.LBE2168:
.LBE2167:
.LBB2188:
.LBB2189:
	.loc 2 156 0
	rsb	r3, r3, r1
.LBE2189:
.LBE2188:
	.loc 1 1168 0
	cmp	r3, #1
	bls	.L408
.LVL1347:
.LBB2190:
.LBB2191:
.LBB2192:
	.loc 2 90 0
	add	r3, r2, #3
	str	r3, [fp, #4]
.LVL1348:
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
.LBE2192:
.LBE2191:
.LBE2190:
	.loc 1 1172 0
	ldr	r6, [fp, #2588]
.LBB2195:
.LBB2194:
.LBB2193:
	.loc 2 90 0
	orr	r5, r3, r5, asl #8
.LBE2193:
.LBE2194:
.LBE2195:
	.loc 1 1172 0
	mov	r5, r5, asl #16
	mov	r5, r5, asr #16
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_idivmod(PLT)
.LVL1349:
	.loc 1 1173 0
	mov	r0, r5
	.loc 1 1175 0
	mov	r3, r1, asl #16
	.loc 1 1173 0
	mov	r1, r6
.LVL1350:
	.loc 1 1175 0
	mov	r5, r3, asr #16
.LVL1351:
	.loc 1 1173 0
	bl	__aeabi_idiv(PLT)
.LVL1352:
.LBB2196:
.LBB2062:
	.loc 1 1133 0
	ldr	r2, [sp, #28]
	ldr	r7, [fp, #2584]
	add	r3, r4, r5
	.loc 1 1134 0
	add	ip, r7, #1
	add	ip, ip, ip, asl #1
.LBE2062:
.LBE2196:
	.loc 1 1175 0
	mov	r0, r0, asl #16
.LBB2197:
.LBB2063:
	.loc 1 1133 0
	add	r1, r2, r0, asr #16
	mul	r2, r7, r1
	add	r0, r3, r2
.LVL1353:
	.loc 1 1136 0
	cmp	r0, #0
	.loc 1 1134 0
	add	r0, r0, ip
.LVL1354:
	.loc 1 1136 0
	blt	.L380
	.loc 1 1136 0 is_stmt 0 discriminator 1
	ldr	ip, [fp, #2660]
	cmp	r0, ip, asr #1
	bge	.L380
.LVL1355:
	add	r3, r2, r5
.LVL1356:
.LBE2063:
.LBE2197:
	.loc 1 1176 0 is_stmt 1
	ldr	r2, [fp, #2620]
.LVL1357:
	.loc 1 1177 0
	add	r3, r3, r4
	.loc 1 1176 0
	add	r1, r2, r3, asl #1
.LVL1358:
.LBB2198:
.LBB2183:
.LBB2177:
.LBB2171:
	.loc 4 51 0
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	ldrb	r3, [r2, r3, asl #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #4]	@ zero_extendqisi2
.LVL1359:
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
.LBE2171:
.LBE2177:
.LBE2183:
.LBE2198:
	.loc 1 1176 0
	ldr	r5, [sp, #28]
.LBB2199:
.LBB2184:
.LBB2178:
.LBB2172:
	.loc 4 51 0
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	orr	r2, r3, r2, asl #8
	orr	r0, r0, ip, asl #8
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
.LBE2172:
.LBE2178:
.LBE2184:
.LBE2199:
	.loc 1 1176 0
	mla	r5, r7, r5, r4
.LBB2200:
.LBB2185:
.LBB2179:
.LBB2173:
	.loc 4 51 0
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
	orr	r6, r2, r6, asl #16
	orr	r2, r0, lr, asl #16
.LBE2173:
.LBE2179:
.LBE2185:
.LBE2200:
	.loc 1 1176 0
	ldr	r0, [fp, #2612]
.LBB2201:
.LBB2186:
.LBB2180:
.LBB2174:
	.loc 4 51 0
	orr	r3, r6, r3, asl #24
	strb	r3, [r0, r5, asl #1]
.LBE2174:
.LBE2180:
.LBE2186:
.LBE2201:
	.loc 1 1176 0
	add	lr, r0, r5, asl #1
.LVL1360:
.LBB2202:
.LBB2187:
.LBB2181:
.LBB2175:
	.loc 4 51 0
	orr	r2, r2, ip, asl #24
.LBE2175:
.LBE2181:
	.loc 1 1021 0
	mov	r6, r7, asl #1
.LVL1361:
.LBB2182:
.LBB2176:
	.loc 4 51 0
	mov	ip, r3, lsr #8
	mov	r0, r3, lsr #16
	strb	ip, [lr, #1]
	strb	r2, [lr, #4]
	strb	r0, [lr, #2]
	mov	r5, r2, lsr #8
	.loc 4 53 0
	add	r0, r1, r6
	.loc 4 51 0
	mov	ip, r2, lsr #16
	mov	r3, r3, lsr #24
	mov	r2, r2, lsr #24
	strb	r3, [lr, #3]
	strb	r5, [lr, #5]
	strb	ip, [lr, #6]
	strb	r2, [lr, #7]
	ldrb	r3, [r1, r7, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r0, #5]	@ zero_extendqisi2
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	ldrb	r1, [r0, #4]	@ zero_extendqisi2
.LVL1362:
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	orr	r1, r1, r5, asl #8
	orr	r2, r3, r2, asl #8
	ldrb	r5, [r0, #3]	@ zero_extendqisi2
	ldrb	r3, [r0, #6]	@ zero_extendqisi2
	orr	r2, r2, ip, asl #16
	orr	r2, r2, r5, asl #24
	ldrb	ip, [r0, #7]	@ zero_extendqisi2
	orr	r3, r1, r3, asl #16
	mov	r1, r2, lsr #8
	orr	r3, r3, ip, asl #24
	mov	r8, r1
	.loc 4 52 0
	add	ip, lr, r6
.LVL1363:
	.loc 4 51 0
	mov	r1, r2, lsr #16
	strb	r2, [lr, r7, asl #1]
	mov	r5, r3, lsr #8
	mov	lr, r3, lsr #16
.LVL1364:
	strb	r3, [ip, #4]
	strb	r1, [ip, #2]
	mov	r2, r2, lsr #24
	.loc 4 53 0
	add	r1, r0, r6
	.loc 4 51 0
	mov	r3, r3, lsr #24
	strb	r8, [ip, #1]
	strb	r2, [ip, #3]
	strb	r5, [ip, #5]
	strb	lr, [ip, #6]
	strb	r3, [ip, #7]
	ldrb	r3, [r0, r7, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #4]	@ zero_extendqisi2
.LVL1365:
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	orr	r0, r0, r5, asl #8
	orr	r2, r3, r2, asl #8
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, lr, asl #16
	orr	r2, r2, r5, asl #24
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r3, r0, r3, asl #16
	mov	r0, r2, lsr #8
	orr	r3, r3, lr, asl #24
	mov	r8, r0
	mov	lr, r2, lsr #16
	.loc 4 52 0
	add	r0, ip, r6
.LVL1366:
	.loc 4 51 0
	strb	r2, [ip, r7, asl #1]
	mov	r5, r3, lsr #8
	strb	r3, [r0, #4]
	strb	lr, [r0, #2]
	mov	ip, r3, lsr #16
	add	lr, r1, r6
	mov	r2, r2, lsr #24
	mov	r3, r3, lsr #24
	strb	r8, [r0, #1]
	strb	r2, [r0, #3]
	strb	r5, [r0, #5]
	strb	ip, [r0, #6]
	strb	r3, [r0, #7]
.LVL1367:
	ldrb	r5, [lr, #2]	@ zero_extendqisi2
	ldrb	r1, [r1, r7, asl #1]	@ zero_extendqisi2
	ldrb	r2, [lr, #5]	@ zero_extendqisi2
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	mov	r8, r5
	ldrb	r5, [lr, #6]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	orr	r3, r3, r2, asl #8
	ldrb	r1, [lr, #3]	@ zero_extendqisi2
	ldrb	r2, [lr, #7]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r3, r3, r5, asl #16
	b	.L429
.LVL1368:
.L307:
.LBE2176:
.LBE2182:
.LBE2187:
.LBE2202:
.LBE2235:
.LBE3006:
.LBB3007:
.LBB2613:
	.loc 1 1158 0
	ldr	r3, .L444+8
.LBB2472:
.LBB2473:
	.loc 1 1133 0
	ldr	ip, [fp, #2584]
.LBE2473:
.LBE2472:
	.loc 1 1158 0
.LPIC43:
	add	r3, pc, r3
	.loc 1 1159 0
	add	r2, r3, r0, asl #1
	.loc 1 1161 0
	ldrsb	lr, [r2, #1]
.LBB2479:
.LBB2474:
	.loc 1 1133 0
	ldr	r2, [sp, #24]
.LBE2474:
.LBE2479:
	.loc 1 1158 0
	ldrb	r3, [r3, r0, asl #1]	@ zero_extendqisi2
.LVL1369:
.LBB2480:
.LBB2475:
	.loc 1 1133 0
	add	lr, r2, lr
.LBE2475:
.LBE2480:
	.loc 1 1161 0
	mov	r3, r3, asl #24
.LVL1370:
.LBB2481:
.LBB2476:
	.loc 1 1133 0
	mul	r2, ip, lr
.LVL1371:
.LBE2476:
.LBE2481:
	.loc 1 1161 0
	mov	r3, r3, asr #24
.LBB2482:
.LBB2477:
	.loc 1 1133 0
	add	r5, r4, r3
.LVL1372:
	.loc 1 1136 0
	adds	r0, r5, r2
.LVL1373:
	bmi	.L317
	.loc 1 1134 0
	add	r1, ip, #1
.LVL1374:
	add	r1, r1, r1, asl #1
.LVL1375:
	.loc 1 1136 0 discriminator 1
	ldr	r6, [fp, #2660]
	.loc 1 1134 0
	add	r1, r0, r1
	.loc 1 1136 0 discriminator 1
	cmp	r1, r6, asr #1
	bge	.L317
.LVL1376:
	add	r3, r2, r3
.LVL1377:
.L424:
.LBE2477:
.LBE2482:
	.loc 1 1176 0
	ldr	r2, [fp, #2620]
	.loc 1 1177 0
	add	r3, r3, r4
	.loc 1 1176 0
	add	r0, r2, r3, asl #1
.LBB2483:
.LBB2484:
.LBB2485:
.LBB2486:
	.loc 4 51 0
	ldrb	r1, [r2, r3, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	ldrb	r2, [r0, #5]	@ zero_extendqisi2
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
.LBE2486:
.LBE2485:
.LBE2484:
.LBE2483:
	.loc 1 1176 0
	ldr	r6, [sp, #24]
.LBB2501:
.LBB2497:
.LBB2492:
.LBB2487:
	.loc 4 51 0
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	ldrb	r5, [r0, #6]	@ zero_extendqisi2
.LBE2487:
.LBE2492:
.LBE2497:
.LBE2501:
	.loc 1 1176 0
	mla	r6, ip, r6, r4
.LBB2502:
.LBB2498:
.LBB2493:
.LBB2488:
	.loc 4 51 0
	orr	r1, r1, lr, asl #8
	orr	r3, r3, r2, asl #8
	ldrb	lr, [r0, #3]	@ zero_extendqisi2
	ldrb	r2, [r0, #7]	@ zero_extendqisi2
	orr	r3, r3, r5, asl #16
	orr	r1, r1, r7, asl #16
.LBE2488:
.LBE2493:
.LBE2498:
.LBE2502:
	.loc 1 1176 0
	ldr	r5, [fp, #2612]
.LBB2503:
.LBB2499:
.LBB2494:
.LBB2489:
	.loc 4 51 0
	orr	r1, r1, lr, asl #24
	strb	r1, [r5, r6, asl #1]
.LBE2489:
.LBE2494:
.LBE2499:
.LBE2503:
	.loc 1 1176 0
	add	r7, r5, r6, asl #1
.LVL1378:
.LBB2504:
.LBB2500:
.LBB2495:
.LBB2490:
	.loc 4 51 0
	orr	r2, r3, r2, asl #24
	mov	lr, r1, lsr #8
.LBE2490:
.LBE2495:
	.loc 1 1021 0
	mov	r3, ip, asl #1
.LVL1379:
.LBB2496:
.LBB2491:
	.loc 4 51 0
	mov	r5, r1, lsr #16
	strb	lr, [r7, #1]
	strb	r2, [r7, #4]
	strb	r5, [r7, #2]
	mov	r6, r2, lsr #8
	.loc 4 53 0
	add	r5, r0, r3
	.loc 4 51 0
	mov	lr, r2, lsr #16
	mov	r1, r1, lsr #24
	mov	r2, r2, lsr #24
	strb	r1, [r7, #3]
	strb	r6, [r7, #5]
	strb	lr, [r7, #6]
	strb	r2, [r7, #7]
	ldrb	r2, [r0, ip, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r5, #5]	@ zero_extendqisi2
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	ldrb	r0, [r5, #4]	@ zero_extendqisi2
.LVL1380:
	ldrb	lr, [r5, #2]	@ zero_extendqisi2
	orr	r0, r0, r6, asl #8
	orr	r1, r2, r1, asl #8
	ldrb	r6, [r5, #3]	@ zero_extendqisi2
	ldrb	r2, [r5, #6]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #16
	ldrb	lr, [r5, #7]	@ zero_extendqisi2
	orr	r1, r1, r6, asl #24
	orr	r2, r0, r2, asl #16
	orr	r2, r2, lr, asl #24
	mov	r6, r1, lsr #8
	.loc 4 52 0
	add	lr, r7, r3
.LVL1381:
	.loc 4 51 0
	mov	r0, r1, lsr #16
	strb	r1, [r7, ip, asl #1]
	mov	r7, r2, lsr #8
.LVL1382:
	strb	r6, [lr, #1]
	strb	r2, [lr, #4]
	mov	r6, r2, lsr #16
	strb	r0, [lr, #2]
	mov	r1, r1, lsr #24
	.loc 4 53 0
	add	r0, r5, r3
	.loc 4 51 0
	mov	r2, r2, lsr #24
	strb	r1, [lr, #3]
	strb	r7, [lr, #5]
	strb	r6, [lr, #6]
	strb	r2, [lr, #7]
	ldrb	r2, [r5, ip, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	ldrb	r7, [r0, #5]	@ zero_extendqisi2
	ldrb	r5, [r0, #4]	@ zero_extendqisi2
.LVL1383:
	ldrb	r6, [r0, #2]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #8
	orr	r2, r2, r1, asl #8
	ldrb	r7, [r0, #3]	@ zero_extendqisi2
	ldrb	r1, [r0, #6]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #16
	ldrb	r6, [r0, #7]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #24
	orr	r1, r5, r1, asl #16
	orr	r1, r1, r6, asl #24
	.loc 4 52 0
	add	r5, lr, r3
.LVL1384:
	.loc 4 51 0
	mov	r7, r2, lsr #8
	mov	r6, r2, lsr #16
	strb	r2, [lr, ip, asl #1]
	strb	r7, [r5, #1]
	strb	r1, [r5, #4]
	strb	r6, [r5, #2]
	mov	lr, r1, lsr #8
	add	r6, r0, r3
	mov	r7, r1, lsr #16
	mov	r2, r2, lsr #24
	mov	r1, r1, lsr #24
	strb	r2, [r5, #3]
	strb	lr, [r5, #5]
	strb	r7, [r5, #6]
	strb	r1, [r5, #7]
.LVL1385:
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	ldrb	r2, [r6, #4]	@ zero_extendqisi2
	ldrb	r0, [r0, ip, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r6, #5]	@ zero_extendqisi2
	ldrb	r7, [r6, #6]	@ zero_extendqisi2
	ldrb	r8, [r6, #2]	@ zero_extendqisi2
	orr	r0, r0, lr, asl #8
	orr	r1, r2, r1, asl #8
	ldrb	lr, [r6, #3]	@ zero_extendqisi2
	ldrb	r2, [r6, #7]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #16
	orr	r0, r0, r8, asl #16
	orr	lr, r0, lr, asl #24
	orr	r2, r1, r2, asl #24
	strb	lr, [r5, ip, asl #1]
	add	r3, r5, r3
.LVL1386:
	mov	r7, lr, lsr #8
	mov	r6, lr, lsr #16
.LVL1387:
	mov	r0, lr, lsr #24
	mov	ip, r2, lsr #24
.LVL1388:
	mov	r1, r2, lsr #8
	mov	lr, r2, lsr #16
	strb	r2, [r3, #4]
	strb	r7, [r3, #1]
	strb	r6, [r3, #2]
	strb	r0, [r3, #3]
	strb	r1, [r3, #5]
	strb	lr, [r3, #6]
	strb	ip, [r3, #7]
.LVL1389:
	ldmib	fp, {r3, ip}
	b	.L409
.LVL1390:
.L353:
.LBE2491:
.LBE2496:
.LBE2500:
.LBE2504:
.LBE2613:
.LBE3007:
.LBB3008:
.LBB2996:
	.loc 1 1158 0
	ldr	r3, .L444+12
.LBB2981:
.LBB2982:
	.loc 1 1133 0
	ldr	ip, [fp, #2584]
.LBE2982:
.LBE2981:
	.loc 1 1158 0
.LPIC49:
	add	r3, pc, r3
	.loc 1 1159 0
	add	r2, r3, r0, asl #1
	.loc 1 1161 0
	ldrsb	lr, [r2, #1]
.LBB2988:
.LBB2983:
	.loc 1 1133 0
	ldr	r2, [sp, #24]
.LBE2983:
.LBE2988:
	.loc 1 1158 0
	ldrb	r3, [r3, r0, asl #1]	@ zero_extendqisi2
.LVL1391:
.LBB2989:
.LBB2984:
	.loc 1 1133 0
	add	lr, r2, lr
.LBE2984:
.LBE2989:
	.loc 1 1161 0
	mov	r3, r3, asl #24
.LVL1392:
.LBB2990:
.LBB2985:
	.loc 1 1133 0
	mul	r1, ip, lr
.LBE2985:
.LBE2990:
	.loc 1 1161 0
	mov	r3, r3, asr #24
.LBB2991:
.LBB2986:
	.loc 1 1133 0
	add	r5, r10, r3
.LVL1393:
	.loc 1 1136 0
	adds	r0, r5, r1
.LVL1394:
	bmi	.L363
	.loc 1 1134 0
	add	r2, ip, #1
.LVL1395:
	add	r2, r2, r2, asl #1
.LVL1396:
	.loc 1 1136 0 discriminator 1
	ldr	r6, [fp, #2660]
	.loc 1 1134 0
	add	r2, r0, r2
	.loc 1 1136 0 discriminator 1
	cmp	r2, r6, asr #1
	bge	.L363
.LVL1397:
	add	r3, r1, r3
	b	.L426
.LVL1398:
.L368:
.LBE2986:
.LBE2991:
.LBE2996:
.LBE3008:
.LBB3009:
.LBB2236:
	.loc 1 1159 0
	ldr	r2, [sp, #56]
.LBB2203:
.LBB2067:
	.loc 1 1133 0
	ldr	r7, [fp, #2584]
.LBE2067:
.LBE2203:
	.loc 1 1159 0
	add	r3, r2, lr, asl #1
	.loc 1 1161 0
	ldrsb	r1, [r3, #1]
	.loc 1 1158 0
	ldrb	r3, [r2, lr, asl #1]	@ zero_extendqisi2
.LVL1399:
.LBB2204:
.LBB2068:
	.loc 1 1133 0
	ldr	r2, [sp, #28]
.LBE2068:
.LBE2204:
	.loc 1 1161 0
	mov	r3, r3, asl #24
.LVL1400:
.LBB2205:
.LBB2069:
	.loc 1 1133 0
	add	r1, r1, r2
	mul	r2, r7, r1
.LBE2069:
.LBE2205:
	.loc 1 1161 0
	mov	r3, r3, asr #24
.LBB2206:
.LBB2070:
	.loc 1 1133 0
	add	ip, r4, r3
	add	r0, ip, r2
.LVL1401:
	.loc 1 1134 0
	add	lr, r7, #1
.LVL1402:
	.loc 1 1136 0
	cmp	r0, #0
	.loc 1 1134 0
	add	lr, lr, lr, asl #1
	add	r0, r0, lr
.LVL1403:
	.loc 1 1136 0
	blt	.L378
	.loc 1 1136 0 is_stmt 0 discriminator 1
	ldr	lr, [fp, #2660]
	cmp	r0, lr, asr #1
	bge	.L378
.LVL1404:
	add	r3, r2, r3
.LBE2070:
.LBE2206:
	.loc 1 1162 0 is_stmt 1
	ldr	r2, [fp, #2620]
.LVL1405:
	.loc 1 1163 0
	add	r3, r3, r4
	.loc 1 1162 0
	add	r1, r2, r3, asl #1
.LVL1406:
.LBB2207:
.LBB2208:
.LBB2209:
.LBB2210:
	.loc 4 51 0
	ldrb	r0, [r1, #5]	@ zero_extendqisi2
.LVL1407:
	ldrb	r2, [r2, r3, asl #1]	@ zero_extendqisi2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
.LVL1408:
	orr	r3, r3, r0, asl #8
.LBE2210:
.LBE2209:
.LBE2208:
.LBE2207:
	.loc 1 1162 0
	ldr	r0, [sp, #28]
.LBB2227:
.LBB2223:
.LBB2217:
.LBB2211:
	.loc 4 51 0
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	ldrb	r5, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
.LBE2211:
.LBE2217:
.LBE2223:
.LBE2227:
	.loc 1 1162 0
	mla	r0, r7, r0, r4
.LBB2228:
.LBB2224:
.LBB2218:
.LBB2212:
	.loc 4 51 0
	orr	r2, r2, ip, asl #8
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #16
	orr	r3, r3, r5, asl #16
.LBE2212:
.LBE2218:
.LBE2224:
.LBE2228:
	.loc 1 1162 0
	ldr	r6, [fp, #2612]
.LBB2229:
.LBB2225:
.LBB2219:
.LBB2213:
	.loc 4 51 0
	orr	lr, r2, lr, asl #24
	orr	ip, r3, ip, asl #24
.LBE2213:
.LBE2219:
	.loc 1 1021 0
	mov	r3, r7, asl #1
.LBB2220:
.LBB2214:
	.loc 4 51 0
	strb	lr, [r6, r0, asl #1]
.LVL1409:
.LBE2214:
.LBE2220:
	.loc 1 1021 0
	mov	r8, r3
.LBB2221:
.LBB2215:
	.loc 4 51 0
	mov	r5, lr, lsr #8
.LBE2215:
.LBE2221:
.LBE2225:
.LBE2229:
	.loc 1 1162 0
	add	r3, r6, r0, asl #1
.LVL1410:
.LBB2230:
.LBB2226:
.LBB2222:
.LBB2216:
	.loc 4 51 0
	mov	r0, lr, lsr #16
	strb	r5, [r3, #1]
	strb	ip, [r3, #4]
	strb	r0, [r3, #2]
	mov	r2, ip, lsr #8
	.loc 4 53 0
	add	r0, r1, r8
	.loc 4 51 0
	mov	r5, ip, lsr #16
	mov	lr, lr, lsr #24
	mov	ip, ip, lsr #24
	strb	lr, [r3, #3]
	strb	r2, [r3, #5]
	strb	r5, [r3, #6]
	strb	ip, [r3, #7]
	ldrb	r2, [r1, r7, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	ldrb	lr, [r0, #5]	@ zero_extendqisi2
	ldrb	r5, [r0, #2]	@ zero_extendqisi2
	ldrb	r1, [r0, #4]	@ zero_extendqisi2
.LVL1411:
	ldrb	r6, [r0, #3]	@ zero_extendqisi2
	orr	ip, r2, ip, asl #8
	ldrb	r2, [r0, #6]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #8
	orr	ip, ip, r5, asl #16
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	orr	r5, ip, r6, asl #24
	orr	r2, r1, r2, asl #16
	orr	r2, r2, lr, asl #24
	.loc 4 52 0
	add	r1, r3, r8
.LVL1412:
	.loc 4 51 0
	mov	lr, r5, lsr #8
	mov	ip, r5, lsr #16
	strb	r5, [r3, r7, asl #1]
	mov	r3, r5, lsr #24
.LVL1413:
	strb	lr, [r1, #1]
	mov	r5, r2, lsr #8
	mov	lr, r2, lsr #16
	strb	r2, [r1, #4]
	strb	ip, [r1, #2]
	mov	r2, r2, lsr #24
	.loc 4 53 0
	add	ip, r0, r8
	.loc 4 51 0
	strb	r3, [r1, #3]
	strb	r5, [r1, #5]
	strb	lr, [r1, #6]
	strb	r2, [r1, #7]
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [r0, r7, asl #1]	@ zero_extendqisi2
	ldrb	r2, [ip, #5]	@ zero_extendqisi2
	ldrb	r3, [ip, #4]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	ldrb	r5, [ip, #2]	@ zero_extendqisi2
	orr	r3, r3, r2, asl #8
	ldrb	r2, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #16
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	r3, r3, r2, asl #16
	ldrb	r2, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #24
	orr	r2, r3, r2, asl #24
	mov	r5, lr, lsr #8
	.loc 4 52 0
	add	r3, r1, r8
.LVL1414:
	.loc 4 51 0
	mov	r6, lr, lsr #16
	strb	lr, [r1, r7, asl #1]
	add	ip, ip, r8
.LVL1415:
	strb	r5, [r3, #1]
	strb	r2, [r3, #4]
	strb	r6, [r3, #2]
	mov	r5, r2, lsr #8
	mov	r6, r2, lsr #16
	mov	lr, lr, lsr #24
	mov	r2, r2, lsr #24
	strb	lr, [r3, #3]
	strb	r5, [r3, #5]
	strb	r6, [r3, #6]
	strb	r2, [r3, #7]
.LVL1416:
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
	ldrb	lr, [r0, r8, asl #1]	@ zero_extendqisi2
	ldrb	r0, [ip, #5]	@ zero_extendqisi2
.LVL1417:
	ldrb	r6, [ip, #6]	@ zero_extendqisi2
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
.LVL1418:
	orr	lr, lr, r5, asl #8
	orr	r0, r2, r0, asl #8
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	ldrb	r2, [ip, #7]	@ zero_extendqisi2
	orr	r0, r0, r6, asl #16
	orr	lr, lr, r7, asl #16
	orr	r5, lr, r5, asl #24
	orr	r2, r0, r2, asl #24
	strb	r5, [r1, r8, asl #1]
	add	r3, r3, r8
.LVL1419:
	mov	r6, r5, lsr #8
	mov	lr, r5, lsr #16
	mov	ip, r5, lsr #24
	mov	r1, r2, lsr #24
	mov	r0, r2, lsr #8
	mov	r5, r2, lsr #16
	strb	r1, [r3, #7]
.LVL1420:
	strb	r2, [r3, #4]
	strb	r6, [r3, #1]
	strb	lr, [r3, #2]
	strb	ip, [r3, #3]
	strb	r0, [r3, #5]
	strb	r5, [r3, #6]
	ldr	r3, [fp, #4]
.LVL1421:
	ldr	r1, [fp, #8]
	b	.L413
.LVL1422:
.L362:
.LBE2216:
.LBE2222:
.LBE2226:
.LBE2230:
.LBE2236:
.LBE3009:
.LBB3010:
.LBB2997:
	.loc 1 1217 0
	ldr	r6, [sp, #24]
	mov	r0, fp
.LVL1423:
	mov	r1, r10
	mov	r2, r6
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1424:
	cmp	r0, #0
	bne	.L408
	add	r5, r4, #6
	.loc 1 1219 0
	mov	r1, r5
	mov	r0, fp
	mov	r2, r6
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1425:
	cmp	r0, #0
	bne	.L408
	.loc 1 1221 0
	ldr	r6, [sp, #32]
	mov	r0, fp
	mov	r1, r10
	mov	r2, r6
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1426:
	cmp	r0, #0
	bne	.L408
	.loc 1 1223 0
	mov	r1, r5
	mov	r0, fp
	mov	r2, r6
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1427:
	cmp	r0, #0
	bne	.L408
.LVL1428:
.L427:
	ldr	r2, [fp, #4]
	ldr	r1, [fp, #8]
	b	.L411
.LVL1429:
.L377:
.LBE2997:
.LBE3010:
.LBB3011:
.LBB2237:
	.loc 1 1217 0
	ldr	r5, [sp, #28]
	mov	r0, fp
	mov	r1, r4
	mov	r2, r5
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1430:
	cmp	r0, #0
	bne	.L408
	.loc 1 1219 0
	ldr	r6, [sp, #20]
	mov	r0, fp
	mov	r1, r6
	mov	r2, r5
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1431:
	cmp	r0, #0
	bne	.L408
	.loc 1 1221 0
	ldr	r5, [sp, #36]
	mov	r0, fp
	mov	r1, r4
	mov	r2, r5
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1432:
	cmp	r0, #0
	bne	.L408
	.loc 1 1223 0
	mov	r0, fp
	mov	r1, r6
	mov	r2, r5
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1433:
	cmp	r0, #0
	bne	.L408
.LVL1434:
.L430:
	ldr	r3, [fp, #4]
	ldr	r1, [fp, #8]
	b	.L413
.LVL1435:
.L384:
.LBE2237:
.LBE3011:
.LBB3012:
.LBB2056:
.LBB1897:
.LBB1898:
	.loc 2 156 0
	rsb	r2, r2, r1
.LBE1898:
.LBE1897:
	.loc 1 1168 0
	cmp	r2, #1
	bls	.L408
.LVL1436:
.LBB1899:
.LBB1900:
.LBB1901:
	.loc 2 90 0
	add	r2, r3, #3
	str	r2, [fp, #4]
.LVL1437:
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
.LBE1901:
.LBE1900:
.LBE1899:
	.loc 1 1172 0
	ldr	r6, [fp, #2588]
.LBB1904:
.LBB1903:
.LBB1902:
	.loc 2 90 0
	orr	r5, r2, r5, asl #8
.LBE1902:
.LBE1903:
.LBE1904:
	.loc 1 1172 0
	mov	r5, r5, asl #16
	mov	r5, r5, asr #16
	mov	r0, r5
.LVL1438:
	mov	r1, r6
	bl	__aeabi_idivmod(PLT)
.LVL1439:
	.loc 1 1173 0
	mov	r0, r5
	.loc 1 1175 0
	mov	r5, r1, asl #16
.LVL1440:
	.loc 1 1173 0
	mov	r1, r6
.LVL1441:
	bl	__aeabi_idiv(PLT)
.LVL1442:
.LBB1905:
.LBB1883:
	.loc 1 1133 0
	ldr	r2, [sp, #28]
	ldr	ip, [fp, #2584]
.LBE1883:
.LBE1905:
	.loc 1 1175 0
	mov	r5, r5, asr #16
.LBB1906:
.LBB1884:
	.loc 1 1133 0
	add	r3, r10, r5
.LBE1884:
.LBE1906:
	.loc 1 1175 0
	mov	r0, r0, asl #16
.LBB1907:
.LBB1885:
	.loc 1 1133 0
	add	r1, r2, r0, asr #16
	mul	r2, ip, r1
.LVL1443:
	.loc 1 1136 0
	adds	lr, r3, r2
.LVL1444:
	bmi	.L395
	.loc 1 1134 0
	add	r0, ip, #1
.LVL1445:
	add	r0, r0, r0, asl #1
.LVL1446:
	.loc 1 1136 0 discriminator 1
	ldr	r6, [fp, #2660]
	.loc 1 1134 0
	add	r0, lr, r0
	.loc 1 1136 0 discriminator 1
	cmp	r0, r6, asr #1
	bge	.L395
.LVL1447:
	add	r3, r2, r5
.LVL1448:
.LBE1885:
.LBE1907:
	.loc 1 1176 0
	ldr	r2, [fp, #2620]
.LVL1449:
	.loc 1 1177 0
	add	r3, r3, r10
	.loc 1 1176 0
	add	r1, r2, r3, asl #1
.LVL1450:
.LBB1908:
.LBB1909:
.LBB1910:
.LBB1911:
	.loc 4 51 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, r3, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
.LBE1911:
.LBE1910:
.LBE1909:
.LBE1908:
	.loc 1 1176 0
	ldr	r8, [sp, #28]
.LBB1924:
.LBB1920:
.LBB1916:
.LBB1912:
	.loc 4 51 0
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
.LVL1451:
	ldrb	r0, [r1, #6]	@ zero_extendqisi2
.LBE1912:
.LBE1916:
.LBE1920:
.LBE1924:
	.loc 1 1176 0
	mla	r8, ip, r8, r10
.LBB1925:
.LBB1921:
.LBB1917:
.LBB1913:
	.loc 4 51 0
	orr	r6, r2, r6, asl #8
	orr	r3, r3, r5, asl #8
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	ldrb	r7, [r1, #7]	@ zero_extendqisi2
	orr	r2, r6, lr, asl #16
	orr	r3, r3, r0, asl #16
.LBE1913:
.LBE1917:
.LBE1921:
.LBE1925:
	.loc 1 1176 0
	ldr	r0, [fp, #2612]
.LBB1926:
.LBB1922:
.LBB1918:
.LBB1914:
	.loc 4 51 0
	orr	r2, r2, r5, asl #24
	ldr	r5, [fp, #2612]
.LBE1914:
.LBE1918:
.LBE1922:
.LBE1926:
	.loc 1 1176 0
	add	r0, r0, r8, asl #1
.LVL1452:
.LBB1927:
.LBB1923:
	.loc 1 1021 0
	mov	lr, ip, asl #1
.LVL1453:
.LBB1919:
.LBB1915:
	.loc 4 51 0
	orr	r3, r3, r7, asl #24
	mov	r6, r2, lsr #8
	mov	r7, r2, lsr #16
	strb	r2, [r5, r8, asl #1]
	strb	r6, [r0, #1]
	strb	r3, [r0, #4]
	strb	r7, [r0, #2]
	mov	r5, r3, lsr #8
	.loc 4 53 0
	add	r7, r1, lr
	.loc 4 51 0
	mov	r6, r3, lsr #16
	mov	r2, r2, lsr #24
	mov	r3, r3, lsr #24
	strb	r2, [r0, #3]
	strb	r5, [r0, #5]
	strb	r6, [r0, #6]
	strb	r3, [r0, #7]
	ldrb	r3, [r1, ip, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r1, [r7, #4]	@ zero_extendqisi2
.LVL1454:
	ldrb	r5, [r7, #2]	@ zero_extendqisi2
	orr	r1, r1, r6, asl #8
	orr	r2, r3, r2, asl #8
	ldrb	r6, [r7, #3]	@ zero_extendqisi2
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	ldrb	r5, [r7, #7]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #24
	orr	r3, r1, r3, asl #16
	orr	r3, r3, r5, asl #24
	.loc 4 52 0
	add	r1, r0, lr
.LVL1455:
	.loc 4 51 0
	mov	r6, r2, lsr #8
	mov	r5, r2, lsr #16
	strb	r2, [r0, ip, asl #1]
	mov	r0, r3, lsr #8
.LVL1456:
	mov	r2, r2, lsr #24
	strb	r6, [r1, #1]
	strb	r3, [r1, #4]
	mov	r6, r3, lsr #16
	strb	r5, [r1, #2]
	mov	r3, r3, lsr #24
	.loc 4 53 0
	add	r5, r7, lr
	.loc 4 51 0
	strb	r2, [r1, #3]
	strb	r0, [r1, #5]
	strb	r6, [r1, #6]
	strb	r3, [r1, #7]
	ldrb	r6, [r5, #1]	@ zero_extendqisi2
	ldrb	r0, [r7, ip, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r5, #5]	@ zero_extendqisi2
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	orr	r0, r0, r6, asl #8
	ldrb	r6, [r5, #2]	@ zero_extendqisi2
	orr	r3, r3, r2, asl #8
	ldrb	r2, [r5, #6]	@ zero_extendqisi2
	orr	r0, r0, r6, asl #16
	ldrb	r6, [r5, #3]	@ zero_extendqisi2
	orr	r3, r3, r2, asl #16
	ldrb	r2, [r5, #7]	@ zero_extendqisi2
	orr	r0, r0, r6, asl #24
	strb	r0, [r1, ip, asl #1]
	orr	r2, r3, r2, asl #24
	mov	r6, r0, lsr #8
	.loc 4 52 0
	add	r3, r1, lr
.LVL1457:
	.loc 4 51 0
	mov	ip, r0, lsr #16
.LVL1458:
	strb	r6, [r3, #1]
	mov	r0, r0, lsr #24
	mov	r6, r2, lsr #8
	strb	r2, [r3, #4]
	strb	ip, [r3, #2]
	add	r5, r5, lr
.LVL1459:
	mov	ip, r2, lsr #16
	mov	r2, r2, lsr #24
	strb	r0, [r3, #3]
	strb	r6, [r3, #5]
	strb	ip, [r3, #6]
.LVL1460:
.L440:
	strb	r2, [r3, #7]
.LVL1461:
	ldrb	ip, [r7, lr, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r5, #1]	@ zero_extendqisi2
	ldrb	r2, [r5, #4]	@ zero_extendqisi2
	ldrb	r0, [r5, #5]	@ zero_extendqisi2
	ldrb	r7, [r5, #6]	@ zero_extendqisi2
	ldrb	r8, [r5, #2]	@ zero_extendqisi2
	orr	ip, ip, r6, asl #8
	orr	r0, r2, r0, asl #8
	ldrb	r6, [r5, #3]	@ zero_extendqisi2
	ldrb	r2, [r5, #7]	@ zero_extendqisi2
	orr	r0, r0, r7, asl #16
	orr	ip, ip, r8, asl #16
	orr	r6, ip, r6, asl #24
	orr	r2, r0, r2, asl #24
	strb	r6, [r1, lr, asl #1]
	add	r3, r3, lr
.LVL1462:
	mov	r7, r6, lsr #8
	mov	r5, r6, lsr #16
	mov	ip, r6, lsr #24
	mov	r0, r2, lsr #8
	mov	lr, r2, lsr #16
	mov	r1, r2, lsr #24
	strb	r2, [r3, #4]
	strb	r7, [r3, #1]
	strb	r5, [r3, #2]
	strb	ip, [r3, #3]
	strb	r0, [r3, #5]
	strb	lr, [r3, #6]
	strb	r1, [r3, #7]
.LVL1463:
	b	.L434
.LVL1464:
.L391:
.LBE1915:
.LBE1919:
.LBE1923:
.LBE1927:
.LBB1928:
.LBB1929:
	.loc 2 156 0
	rsb	r2, r2, r1
.LBE1929:
.LBE1928:
	.loc 1 1207 0
	cmp	r2, #1
	bls	.L408
	.loc 1 1209 0
	ldr	r2, [fp, #2584]
	ldr	r1, [sp, #28]
	ldr	r0, [fp, #2612]
.LVL1465:
	mla	r1, r2, r1, r10
.LBB1930:
.LBB1931:
.LBB1932:
	.loc 2 90 0
	add	ip, r3, #3
.LVL1466:
.LBE1932:
.LBE1931:
.LBE1930:
	.loc 1 1209 0
	mov	r1, r1, asl #1
.LBB1941:
.LBB1937:
.LBB1933:
	.loc 2 90 0
	str	ip, [fp, #4]
.LVL1467:
.LBE1933:
.LBE1937:
.LBE1941:
	.loc 1 1209 0
	add	lr, r0, r1
.LVL1468:
.LBB1942:
.LBB1938:
.LBB1934:
	.loc 2 90 0
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
.LBE1934:
.LBE1938:
.LBE1942:
.LBB1943:
.LBB1944:
	.loc 1 1040 0
	sub	r2, r2, #4
.LBE1944:
.LBE1943:
.LBB1947:
.LBB1939:
.LBB1935:
	.loc 2 90 0
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
.LBE1935:
.LBE1939:
.LBE1947:
.LBB1948:
.LBB1945:
	.loc 1 1041 0 discriminator 2
	mov	r2, r2, asl #1
	.loc 1 1043 0
	add	ip, lr, #8
.LBE1945:
.LBE1948:
.LBB1949:
.LBB1940:
.LBB1936:
	.loc 2 90 0
	orr	r3, r6, r3, asl #8
.LVL1469:
.LBE1936:
.LBE1940:
.LBE1949:
.LBB1950:
.LBB1946:
	.loc 1 1041 0 discriminator 2
	add	r5, ip, r2
	.loc 1 1043 0
	strh	r3, [r0, r1]	@ movhi
.LVL1470:
	add	r1, r5, #8
	.loc 1 1041 0 discriminator 2
	add	r0, r1, r2
	.loc 1 1043 0
	strh	r3, [lr, #2]	@ movhi
.LVL1471:
	strh	r3, [lr, #4]	@ movhi
.LVL1472:
	strh	r3, [lr, #6]	@ movhi
.LVL1473:
	strh	r3, [ip, r2]	@ movhi
.LVL1474:
.L439:
	add	ip, r0, #8
	strh	r3, [r5, #2]	@ movhi
.LVL1475:
	strh	r3, [r5, #4]	@ movhi
.LVL1476:
	strh	r3, [r5, #6]	@ movhi
.LVL1477:
	strh	r3, [r1, r2]	@ movhi
.LVL1478:
	.loc 1 1041 0 discriminator 2
	add	r1, ip, r2
	.loc 1 1043 0
	strh	r3, [r0, #2]	@ movhi
.LVL1479:
	strh	r3, [r0, #4]	@ movhi
.LVL1480:
	strh	r3, [r0, #6]	@ movhi
.LVL1481:
	strh	r3, [ip, r2]	@ movhi
.LVL1482:
	strh	r3, [r1, #2]	@ movhi
.LVL1483:
	strh	r3, [r1, #4]	@ movhi
.LVL1484:
	strh	r3, [r1, #6]	@ movhi
.LVL1485:
	b	.L434
.LVL1486:
.L389:
.LBE1946:
.LBE1950:
	.loc 1 1197 0
	ldr	r3, [fp, #2584]
	ldr	lr, [sp, #28]
	ldr	r1, [fp, #2612]
	mla	lr, r3, lr, r10
.LBB1951:
.LBB1952:
	.loc 1 1040 0
	sub	r3, r3, #4
.LBE1952:
.LBE1951:
	.loc 1 1197 0
	mov	lr, lr, asl #1
	add	ip, r1, lr
.LBB1956:
.LBB1953:
	.loc 1 1041 0 discriminator 2
	mov	r2, r3, asl #1
.LBE1953:
.LBE1956:
	.loc 1 1197 0
	add	r3, r0, #1328
.LBB1957:
.LBB1954:
	.loc 1 1043 0
	add	r5, ip, #8
.LBE1954:
.LBE1957:
	.loc 1 1197 0
	add	r3, fp, r3, asl #1
	ldrh	r3, [r3, #22]
.LVL1487:
.LBB1958:
.LBB1955:
	.loc 1 1041 0 discriminator 2
	add	r0, r5, r2
.LVL1488:
	.loc 1 1043 0
	strh	r3, [r1, lr]	@ movhi
.LVL1489:
	add	r1, r0, #8
	.loc 1 1041 0 discriminator 2
	add	lr, r1, r2
	.loc 1 1043 0
	strh	r3, [ip, #2]	@ movhi
.LVL1490:
	strh	r3, [ip, #4]	@ movhi
.LVL1491:
	strh	r3, [ip, #6]	@ movhi
.LVL1492:
	add	ip, lr, #8
	strh	r3, [r5, r2]	@ movhi
.LVL1493:
	strh	r3, [r0, #2]	@ movhi
.LVL1494:
	strh	r3, [r0, #4]	@ movhi
.LVL1495:
	strh	r3, [r0, #6]	@ movhi
.LVL1496:
	strh	r3, [r1, r2]	@ movhi
.LVL1497:
	.loc 1 1041 0 discriminator 2
	add	r1, ip, r2
	.loc 1 1043 0
	strh	r3, [lr, #2]	@ movhi
.LVL1498:
	strh	r3, [lr, #4]	@ movhi
.LVL1499:
	strh	r3, [lr, #6]	@ movhi
.LVL1500:
	strh	r3, [ip, r2]	@ movhi
.LVL1501:
	strh	r3, [r1, #2]	@ movhi
.LVL1502:
	strh	r3, [r1, #4]	@ movhi
.LVL1503:
	strh	r3, [r1, #6]	@ movhi
.LVL1504:
	b	.L434
.LVL1505:
.L388:
.LBE1955:
.LBE1958:
	.loc 1 1191 0
	ldr	r3, [fp, #2584]
	str	r3, [sp]
	ldr	r2, [sp, #28]
	mov	r0, fp
.LVL1506:
	mov	r1, r10
	mov	r3, #4
	bl	opcode_0xf8(PLT)
.LVL1507:
	b	.L434
.LVL1508:
.L387:
.LBB1959:
.LBB1960:
.LBB1961:
.LBB1962:
.LBB1963:
	.loc 2 156 0
	rsb	r2, r2, r1
.LBE1963:
.LBE1962:
	.loc 1 1090 0
	cmp	r2, #2
.LBE1961:
.LBE1960:
.LBE1959:
	.loc 1 1187 0
	ldr	r1, [fp, #2584]
.LVL1509:
.LBB2000:
.LBB1999:
	.loc 1 1070 0
	ldr	r0, [fp, #2612]
.LVL1510:
.LBB1994:
	.loc 1 1090 0
	bls	.L434
.LBB1964:
.LBB1965:
.LBB1966:
	.loc 2 95 0
	add	r2, r3, #2
.LBE1966:
.LBE1965:
.LBE1964:
.LBB1969:
.LBB1970:
.LBB1971:
	add	ip, r3, #3
.LVL1511:
.LBE1971:
.LBE1970:
.LBE1969:
.LBB1974:
.LBB1968:
.LBB1967:
	str	r2, [fp, #4]
.LVL1512:
.LBE1967:
.LBE1968:
.LBE1974:
	.loc 1 1093 0
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
.LBB1975:
.LBB1973:
.LBB1972:
	.loc 2 95 0
	str	ip, [fp, #4]
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
.LBE1972:
.LBE1973:
.LBE1975:
.LBB1976:
.LBB1977:
.LBB1978:
	add	lr, r3, #4
.LBE1978:
.LBE1977:
.LBE1976:
	.loc 1 1094 0
	add	ip, ip, #1328
	add	ip, fp, ip, asl #1
	ldrh	ip, [ip, #8]
.LBB1981:
.LBB1980:
.LBB1979:
	.loc 2 95 0
	str	lr, [fp, #4]
	ldrb	lr, [r3, #3]	@ zero_extendqisi2
.LBE1979:
.LBE1980:
.LBE1981:
.LBB1982:
.LBB1983:
	.loc 1 1059 0 discriminator 2
	add	r2, r2, #199
.LBE1983:
.LBE1982:
.LBE1994:
	.loc 1 1070 0
	ldr	r8, [sp, #28]
.LBB1995:
.LBB1989:
.LBB1984:
	.loc 1 1059 0 discriminator 2
	mov	r3, r2, asl #4
.LBE1984:
.LBE1989:
	.loc 1 1095 0
	add	r2, lr, #1328
.LBE1995:
	.loc 1 1070 0
	mla	r8, r1, r8, r10
.LBB1996:
.LBB1990:
.LBB1985:
	.loc 1 1064 0
	ldrsb	lr, [fp, r3]
.LBE1985:
.LBE1990:
	.loc 1 1095 0
	add	r2, fp, r2, asl #1
.LBB1991:
.LBB1986:
	.loc 1 1051 0
	ldrh	r5, [r2, #8]
	.loc 1 1064 0
	add	r2, sp, #72
	add	lr, r2, lr, asl #1
	.loc 1 1059 0 discriminator 2
	add	r3, fp, r3
	.loc 1 1051 0
	strh	r5, [sp, #68]	@ movhi
	strh	ip, [sp, #70]	@ movhi
.LBE1986:
.LBE1991:
.LBE1996:
	.loc 1 1070 0
	mov	r2, r8, asl #1
.LBB1997:
.LBB1992:
.LBB1987:
	.loc 1 1064 0
	ldrh	ip, [lr, #-4]
	strh	ip, [r0, r2]	@ movhi
	ldrsb	ip, [r3, #1]
.LBE1987:
.LBE1992:
.LBE1997:
	.loc 1 1070 0
	add	r2, r0, r2
.LVL1513:
.LBB1998:
.LBB1993:
.LBB1988:
	.loc 1 1064 0
	add	r0, sp, #72
.LVL1514:
	add	r0, r0, ip, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r2, #2]	@ movhi
.LVL1515:
	ldrsb	r0, [r3, #2]
	add	ip, sp, #72
	add	r0, ip, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r2, #4]	@ movhi
.LVL1516:
	ldrsb	r0, [r3, #3]
	.loc 1 1060 0
	sub	r1, r1, #4
.LVL1517:
	.loc 1 1064 0
	add	r0, ip, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r2, #6]	@ movhi
	ldrsb	r0, [r3, #4]
	.loc 1 1062 0 discriminator 2
	mov	r1, r1, asl #1
.LVL1518:
	.loc 1 1064 0
	add	r0, ip, r0, asl #1
	ldrh	r0, [r0, #-4]
	add	r2, r2, #8
.LVL1519:
	strh	r0, [r2, r1]	@ movhi
	ldrsb	r0, [r3, #5]
	.loc 1 1062 0 discriminator 2
	add	r2, r2, r1
.LVL1520:
	.loc 1 1064 0
	add	r0, ip, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r2, #2]	@ movhi
.LVL1521:
	ldrsb	r0, [r3, #6]
	add	lr, sp, #72
	add	r0, lr, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [r2, #4]	@ movhi
.LVL1522:
	ldrsb	lr, [r3, #7]
	add	r5, sp, #72
	add	lr, r5, lr, asl #1
	ldrh	lr, [lr, #-4]
	strh	lr, [r2, #6]	@ movhi
	add	ip, r2, #8
.LVL1523:
	ldrsb	r2, [r3, #8]
	.loc 1 1062 0 discriminator 2
	add	r0, ip, r1
.LVL1524:
	.loc 1 1064 0
	add	r2, r5, r2, asl #1
	ldrh	r2, [r2, #-4]
	strh	r2, [ip, r1]	@ movhi
.LVL1525:
	ldrsb	ip, [r3, #9]
	add	lr, r0, #8
	add	ip, r5, ip, asl #1
	ldrh	ip, [ip, #-4]
	strh	ip, [r0, #2]	@ movhi
.LVL1526:
	ldrsb	ip, [r3, #10]
	.loc 1 1062 0 discriminator 2
	add	r2, lr, r1
	.loc 1 1064 0
	add	ip, r5, ip, asl #1
	ldrh	ip, [ip, #-4]
	strh	ip, [r0, #4]	@ movhi
.LVL1527:
	ldrsb	ip, [r3, #11]
	add	ip, r5, ip, asl #1
	ldrh	ip, [ip, #-4]
	strh	ip, [r0, #6]	@ movhi
.LVL1528:
	ldrsb	r0, [r3, #12]
	add	r0, r5, r0, asl #1
	ldrh	r0, [r0, #-4]
	strh	r0, [lr, r1]	@ movhi
.LVL1529:
	ldrsb	r1, [r3, #13]
	add	r1, r5, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r2, #2]	@ movhi
.LVL1530:
	ldrsb	r1, [r3, #14]
	add	r1, r5, r1, asl #1
	ldrh	r1, [r1, #-4]
	strh	r1, [r2, #4]	@ movhi
.LVL1531:
	ldrsb	r3, [r3, #15]
.LVL1532:
	add	r3, r5, r3, asl #1
	ldrh	r3, [r3, #-4]
	strh	r3, [r2, #6]	@ movhi
.LVL1533:
	b	.L434
.LVL1534:
.L386:
.LBE1988:
.LBE1993:
.LBE1998:
.LBE1999:
.LBE2000:
	.loc 1 1182 0
	ldr	r3, [fp, #2584]
	ldr	r2, [sp, #28]
	mov	r9, r3
	mla	r2, r9, r2, r10
	ldr	r3, [fp, #2616]
	mov	r0, r2, asl #1
.LVL1535:
	add	lr, r3, r0
.LBB2001:
.LBB2002:
.LBB2003:
.LBB2004:
	.loc 4 51 0
	ldrb	r1, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [lr, #5]	@ zero_extendqisi2
.LBE2004:
.LBE2003:
.LBE2002:
.LBE2001:
	.loc 1 1182 0
	mov	r8, r2
.LBB2014:
.LBB2011:
.LBB2008:
.LBB2005:
	.loc 4 51 0
	ldrb	r2, [lr, #4]	@ zero_extendqisi2
	ldrb	ip, [lr, #2]	@ zero_extendqisi2
.LVL1536:
	orr	r2, r2, r5, asl #8
	orr	r1, r3, r1, asl #8
	ldrb	r5, [lr, #3]	@ zero_extendqisi2
	ldrb	r3, [lr, #6]	@ zero_extendqisi2
.LBE2005:
.LBE2008:
.LBE2011:
.LBE2014:
	.loc 1 1182 0
	ldr	r6, [fp, #2612]
.LBB2015:
.LBB2012:
.LBB2009:
.LBB2006:
	.loc 4 51 0
	orr	r1, r1, ip, asl #16
	ldrb	ip, [lr, #7]	@ zero_extendqisi2
	orr	r1, r1, r5, asl #24
	orr	r3, r2, r3, asl #16
.LBE2006:
.LBE2009:
.LBE2012:
.LBE2015:
	.loc 1 1182 0
	add	r0, r6, r0
.LVL1537:
.LBB2016:
.LBB2013:
	.loc 1 1021 0
	mov	r2, r9, asl #1
.LVL1538:
.LBB2010:
.LBB2007:
	.loc 4 51 0
	orr	r3, r3, ip, asl #24
	mov	ip, r1, lsr #8
	strb	r1, [r6, r8, asl #1]
.LVL1539:
	mov	r7, r1, lsr #16
	strb	r3, [r0, #4]
	strb	ip, [r0, #1]
	mov	r6, r3, lsr #8
	.loc 4 53 0
	add	ip, lr, r2
	.loc 4 51 0
	mov	r5, r3, lsr #16
	mov	r1, r1, lsr #24
	mov	r3, r3, lsr #24
	strb	r7, [r0, #2]
	strb	r1, [r0, #3]
	strb	r6, [r0, #5]
	strb	r5, [r0, #6]
	strb	r3, [r0, #7]
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [lr, r9, asl #1]	@ zero_extendqisi2
.LVL1540:
	ldrb	r3, [ip, #4]	@ zero_extendqisi2
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r1, [ip, #5]	@ zero_extendqisi2
	ldrb	r6, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	orr	r1, r3, r1, asl #8
	ldrb	r3, [ip, #7]	@ zero_extendqisi2
	orr	r5, lr, r5, asl #24
	orr	r1, r1, r6, asl #16
	.loc 4 52 0
	add	lr, r0, r2
.LVL1541:
	.loc 4 51 0
	orr	r3, r1, r3, asl #24
	mov	r1, r5, lsr #8
	strb	r5, [r0, r9, asl #1]
	mov	r7, r5, lsr #16
	mov	r6, r5, lsr #24
	mov	r0, r3, lsr #16
.LVL1542:
	mov	r5, r3, lsr #8
	strb	r1, [lr, #1]
	strb	r3, [lr, #4]
	mov	r1, r3, lsr #24
	.loc 4 53 0
	add	r3, ip, r2
	.loc 4 51 0
	strb	r7, [lr, #2]
	strb	r6, [lr, #3]
	strb	r5, [lr, #5]
	strb	r0, [lr, #6]
	strb	r1, [lr, #7]
	ldrb	r1, [ip, r9, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #8
	orr	r0, r1, r0, asl #8
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	ldrb	r1, [r3, #6]	@ zero_extendqisi2
	orr	r0, r0, r6, asl #16
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	r0, r0, r7, asl #24
	orr	r1, r5, r1, asl #16
	orr	r1, r1, r6, asl #24
	.loc 4 52 0
	add	r5, lr, r2
.LVL1543:
	.loc 4 51 0
	mov	r6, r0, lsr #8
	strb	r0, [lr, r9, asl #1]
	add	r3, r3, r2
.LVL1544:
	strb	r6, [r5, #1]
	strb	r1, [r5, #4]
	mov	r7, r0, lsr #16
	mov	lr, r1, lsr #8
	mov	r6, r1, lsr #16
	mov	r0, r0, lsr #24
	mov	r1, r1, lsr #24
	strb	r7, [r5, #2]
	strb	r0, [r5, #3]
	strb	lr, [r5, #5]
	strb	r6, [r5, #6]
	strb	r1, [r5, #7]
.LVL1545:
	ldrb	ip, [ip, r2, asl #1]	@ zero_extendqisi2
.LVL1546:
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	lr, [r3, #1]	@ zero_extendqisi2
	ldrb	r0, [r3, #5]	@ zero_extendqisi2
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, #6]	@ zero_extendqisi2
	orr	lr, ip, lr, asl #8
	orr	r0, r1, r0, asl #8
	ldrb	ip, [r3, #3]	@ zero_extendqisi2
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	orr	r1, r0, r6, asl #16
	orr	ip, lr, ip, asl #24
	orr	r1, r1, r3, asl #24
	strb	ip, [r5, r9, asl #1]
	add	r3, r5, r2
.LVL1547:
	mov	r7, ip, lsr #8
	mov	r6, ip, lsr #16
	mov	lr, ip, lsr #24
	mov	r0, r1, lsr #8
	mov	r2, r1, lsr #16
.LVL1548:
	mov	ip, r1, lsr #24
	strb	r1, [r3, #4]
	strb	r7, [r3, #1]
	strb	r6, [r3, #2]
	strb	lr, [r3, #3]
	strb	r0, [r3, #5]
	strb	r2, [r3, #6]
	strb	ip, [r3, #7]
.LVL1549:
	b	.L434
.LVL1550:
.L390:
.LBE2007:
.LBE2010:
.LBE2013:
.LBE2016:
	.loc 1 1201 0
	cmp	r2, r1
	beq	.L408
	.loc 1 1203 0
	ldr	r2, [fp, #2584]
	ldr	r1, [sp, #28]
.LBB2017:
.LBB2018:
.LBB2019:
	.loc 2 95 0
	add	ip, r3, #2
.LBE2019:
.LBE2018:
.LBE2017:
	.loc 1 1203 0
	mla	r1, r2, r1, r10
	ldr	r0, [fp, #2612]
.LVL1551:
.LBB2022:
.LBB2021:
.LBB2020:
	.loc 2 95 0
	str	ip, [fp, #4]
.LVL1552:
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
.LBE2020:
.LBE2021:
.LBE2022:
	.loc 1 1203 0
	mov	r1, r1, asl #1
	add	ip, r0, r1
.LVL1553:
.LBB2023:
.LBB2024:
	.loc 1 1040 0
	sub	r2, r2, #4
.LBE2024:
.LBE2023:
	.loc 1 1203 0
	add	r3, r3, #1328
.LBB2027:
.LBB2025:
	.loc 1 1041 0 discriminator 2
	mov	r2, r2, asl #1
	.loc 1 1043 0
	add	lr, ip, #8
.LBE2025:
.LBE2027:
	.loc 1 1203 0
	add	r3, fp, r3, asl #1
	ldrh	r3, [r3, #8]
.LVL1554:
.LBB2028:
.LBB2026:
	.loc 1 1041 0 discriminator 2
	add	r5, lr, r2
	.loc 1 1043 0
	strh	r3, [r0, r1]	@ movhi
.LVL1555:
	add	r1, r5, #8
	strh	r3, [ip, #2]	@ movhi
.LVL1556:
	strh	r3, [ip, #4]	@ movhi
.LVL1557:
	strh	r3, [ip, #6]	@ movhi
.LVL1558:
	.loc 1 1041 0 discriminator 2
	add	r0, r1, r2
	.loc 1 1043 0
	strh	r3, [lr, r2]	@ movhi
.LVL1559:
	b	.L439
.LVL1560:
.L392:
.LBE2026:
.LBE2028:
	.loc 1 1217 0
	ldr	r6, [sp, #28]
	mov	r0, fp
.LVL1561:
	mov	r1, r10
	mov	r2, r6
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1562:
	cmp	r0, #0
	bne	.L408
	add	r5, r4, #6
	.loc 1 1219 0
	mov	r2, r6
	mov	r1, r5
	mov	r0, fp
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1563:
	cmp	r0, #0
	bne	.L408
	.loc 1 1221 0
	ldr	r6, [sp, #36]
	mov	r0, fp
	mov	r1, r10
	mov	r2, r6
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1564:
	cmp	r0, #0
	bne	.L408
	.loc 1 1223 0
	mov	r1, r5
	mov	r0, fp
	mov	r2, r6
	mov	r3, #2
	bl	codec2subblock(PLT)
.LVL1565:
	cmp	r0, #0
	beq	.L434
	b	.L408
.LVL1566:
.L317:
.LBE2056:
.LBE3012:
.LBB3013:
.LBB2614:
.LBB2505:
.LBB2478:
	.loc 1 1139 0
	mov	r2, #4
.LVL1567:
	ldr	r0, [fp]
.LVL1568:
	str	r2, [sp, #12]
.LVL1569:
	ldr	r2, .L446
	ldr	r3, [sp, #24]
	str	r3, [sp, #8]
	str	lr, [sp]
	str	r4, [sp, #4]
	mov	r3, r5
	mov	r1, #16
.LPIC57:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL1570:
.L407:
	ldmib	fp, {r3, ip}
	b	.L409
.LVL1571:
.L363:
.LBE2478:
.LBE2505:
.LBE2614:
.LBE3013:
.LBB3014:
.LBB2998:
.LBB2992:
.LBB2987:
	mov	r2, #4
	ldr	r0, [fp]
.LVL1572:
	str	r2, [sp, #12]
.LVL1573:
	ldr	r2, .L446+4
	ldr	r3, [sp, #24]
	str	r3, [sp, #8]
	str	lr, [sp]
	str	r10, [sp, #4]
	mov	r3, r5
	mov	r1, #16
.LVL1574:
.LPIC63:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL1575:
	b	.L427
.LVL1576:
.L319:
.LBE2987:
.LBE2992:
.LBE2998:
.LBE3014:
.LBB3015:
.LBB2615:
.LBB2506:
.LBB2271:
	mov	r2, #4
.LVL1577:
	ldr	r0, [fp]
	str	r2, [sp, #12]
	ldr	r2, .L446+8
	ldr	r1, [sp, #24]
.LVL1578:
	str	r1, [sp, #8]
	str	lr, [sp]
	str	r4, [sp, #4]
	mov	r1, #16
.LPIC58:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL1579:
	b	.L407
.LVL1580:
.L365:
.LBE2271:
.LBE2506:
.LBE2615:
.LBE3015:
.LBB3016:
.LBB2999:
.LBB2993:
.LBB2974:
	mov	r2, #4
	ldr	r0, [fp]
.LVL1581:
	str	r2, [sp, #12]
	ldr	r2, .L446+12
	ldr	r1, [sp, #24]
.LVL1582:
	str	r1, [sp, #8]
	str	lr, [sp]
	str	r10, [sp, #4]
	mov	r1, #16
.LPIC64:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL1583:
	b	.L427
.LVL1584:
.L380:
.LBE2974:
.LBE2993:
.LBE2999:
.LBE3016:
.LBB3017:
.LBB2238:
.LBB2231:
.LBB2064:
	ldr	r0, [fp]
.LVL1585:
	mov	r2, #4
.LVL1586:
	stmia	sp, {r1, r4}
	ldr	r1, [sp, #28]
.LVL1587:
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	mov	r1, #16
	ldr	r2, [sp, #52]
	bl	av_log(PLT)
.LVL1588:
	b	.L430
.LVL1589:
.L378:
.LBE2064:
.LBE2231:
.LBB2232:
.LBB2071:
	ldr	r3, [sp, #28]
	mov	r2, #4
.LVL1590:
	ldr	r0, [fp]
.LVL1591:
	stmia	sp, {r1, r4}
.LVL1592:
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	mov	r3, ip
	mov	r1, #16
.LVL1593:
	ldr	r2, [sp, #60]
	bl	av_log(PLT)
.LVL1594:
	b	.L430
.LVL1595:
.L383:
.LBE2071:
.LBE2232:
.LBE2238:
.LBE3017:
.LBB3018:
.LBB2057:
	.loc 1 1159 0
	ldr	r2, [sp, #44]
	add	r3, r2, r0, asl #1
	.loc 1 1161 0
	ldrsb	ip, [r3, #1]
.LBB2029:
.LBB1889:
	.loc 1 1133 0
	ldr	r3, [sp, #28]
.LBE1889:
.LBE2029:
	.loc 1 1158 0
	ldrb	r1, [r2, r0, asl #1]	@ zero_extendqisi2
.LVL1596:
.LBB2030:
.LBB1890:
	.loc 1 1133 0
	ldr	r0, [fp, #2584]
.LVL1597:
	add	ip, ip, r3
.LBE1890:
.LBE2030:
	.loc 1 1161 0
	mov	r1, r1, asl #24
.LVL1598:
.LBB2031:
.LBB1891:
	.loc 1 1133 0
	mul	r2, r0, ip
.LVL1599:
.LBE1891:
.LBE2031:
	.loc 1 1161 0
	mov	r1, r1, asr #24
.LBB2032:
.LBB1892:
	.loc 1 1133 0
	add	r3, r10, r1
.LVL1600:
	.loc 1 1136 0
	adds	r5, r3, r2
.LVL1601:
	bmi	.L393
	.loc 1 1134 0
	add	lr, r0, #1
.LVL1602:
	add	lr, lr, lr, asl #1
.LVL1603:
	.loc 1 1136 0 discriminator 1
	ldr	r6, [fp, #2660]
	.loc 1 1134 0
	add	lr, r5, lr
	.loc 1 1136 0 discriminator 1
	cmp	lr, r6, asr #1
	bge	.L393
.LVL1604:
	add	r3, r2, r1
.LVL1605:
.LBE1892:
.LBE2032:
	.loc 1 1162 0
	ldr	r2, [fp, #2620]
.LVL1606:
	.loc 1 1163 0
	add	r3, r3, r10
	.loc 1 1162 0
	add	r1, r2, r3, asl #1
.LVL1607:
.LBB2033:
.LBB2034:
.LBB2035:
.LBB2036:
	.loc 4 51 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, r3, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
.LVL1608:
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
.LBE2036:
.LBE2035:
.LBE2034:
.LBE2033:
	.loc 1 1162 0
	ldr	r8, [sp, #28]
.LBB2049:
.LBB2045:
.LBB2041:
.LBB2037:
	.loc 4 51 0
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
.LVL1609:
.LBE2037:
.LBE2041:
.LBE2045:
.LBE2049:
	.loc 1 1162 0
	mla	r8, r0, r