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
	.file	"af_astats.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	__aeabi_ul2d
	.global	__aeabi_ddiv
	.global	__aeabi_dcmplt
	.global	__aeabi_dadd
	.global	__aeabi_dcmpgt
	.global	__aeabi_dmul
	.global	__aeabi_dcmpeq
	.global	__aeabi_uldivmod
	.global	__aeabi_i2d
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.type	uninit, %function
uninit:
.LFB62:
	.file 1 "libavfilter/af_astats.c"
	.loc 1 381 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 168
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
	.loc 1 382 0
	ldr	fp, [r0, #36]
.LVL1:
	.loc 1 381 0
	sub	sp, sp, #180
	.cfi_def_cfa_offset 216
	.loc 1 384 0
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L2
	mov	r2, #0
	mov	r3, #1048576
	strd	r2, [sp, #40]
	ldr	r3, .L50
	mvn	r2, #0
	strd	r2, [sp, #24]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [sp, #16]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [sp, #8]
	ldr	r3, [sp, #40]
	str	r3, [sp, #48]
	ldr	r3, [sp, #44]
	str	r3, [sp, #52]
	ldrd	r2, [sp, #24]
	ldr	r6, .L50
	strd	r2, [sp, #56]
	ldrd	r2, [sp, #16]
	mov	r9, #0
	strd	r2, [sp, #104]
	strd	r2, [sp, #96]
	strd	r2, [sp, #136]
	strd	r2, [sp, #128]
	mov	r3, #0
	mov	r2, #0
	strd	r2, [sp, #120]
	strd	r2, [sp, #112]
	strd	r2, [sp, #144]
.LBB20:
.LBB21:
.LBB22:
	.loc 1 344 0
	ldr	r3, .L50+4
	mov	r10, r0
.LPIC0:
	add	r3, pc, r3
	str	r3, [sp, #152]
	.loc 1 345 0
	ldr	r3, .L50+8
.LBE22:
.LBE21:
.LBE20:
	mvn	r7, #0
.LBB34:
.LBB31:
.LBB25:
.LPIC1:
	add	r3, pc, r3
	str	r3, [sp, #156]
	.loc 1 346 0
	ldr	r3, .L50+12
.LBE25:
.LBE31:
.LBE34:
	str	r9, [sp, #72]
.LBB35:
.LBB32:
.LBB26:
.LPIC2:
	add	r3, pc, r3
	str	r3, [sp, #160]
	.loc 1 347 0
	ldr	r3, .L50+16
.LBE26:
.LBE32:
.LBE35:
	.loc 1 384 0
	str	r9, [sp, #36]
.LBB36:
.LBB33:
.LBB27:
	.loc 1 347 0
.LPIC3:
	add	r3, pc, r3
	str	r3, [sp, #164]
	.loc 1 348 0
	ldr	r3, .L50+20
	str	r9, [sp, #76]
.LPIC4:
	add	r3, pc, r3
	str	r3, [sp, #168]
	.loc 1 349 0
	ldr	r3, .L50+24
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #172]
.LVL2:
.L3:
.LBE27:
	.loc 1 320 0 discriminator 1
	ldr	r3, [fp, #8]
	ldr	r2, [sp, #36]
	cmp	r3, r2
	ble	.L49
.LBB28:
	.loc 1 321 0
	ldr	r3, [fp, #4]
	ldr	r2, [sp, #36]
	mov	r8, #152
	mla	r2, r8, r2, r3
	mov	r8, r2
.LVL3:
	.loc 1 323 0
	ldrd	r0, [r8, #144]
	ldrd	r2, [fp, #16]
.LVL4:
	strd	r0, [sp, #80]
	cmp	r1, r3
	cmpeq	r0, r2
	bcs	.L4
	.loc 1 324 0
	bl	__aeabi_ul2d(PLT)
.LVL5:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [r8, #16]
	bl	__aeabi_ddiv(PLT)
.LVL6:
	strd	r0, [r8, #40]
	strd	r0, [r8, #32]
.L4:
	.loc 1 326 0
	ldr	r3, [r8, #52]
	ldr	r1, [r8, #48]
	str	r3, [sp, #68]
	str	r1, [sp, #64]
	mov	r2, r7
	ldr	r1, [sp, #68]
	ldr	r0, [sp, #64]
	mov	r3, r6
	bl	__aeabi_dcmplt(PLT)
.LVL7:
	.loc 1 327 0
	ldrd	r4, [r8, #56]
	.loc 1 326 0
	ldr	r1, [sp, #64]
	ldr	ip, [sp, #68]
	.loc 1 327 0
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #52]
	.loc 1 326 0
	cmp	r0, #0
	moveq	r1, r7
	moveq	ip, r6
	str	r1, [sp, #64]
	.loc 1 327 0
	mov	r0, r4
	mov	r1, r5
	.loc 1 326 0
	str	ip, [sp, #68]
.LVL8:
	.loc 1 327 0
	bl	__aeabi_dcmplt(PLT)
.LVL9:
	.loc 1 328 0
	ldrd	r2, [r8, #96]
	strd	r2, [sp, #88]
	ldrd	r2, [sp, #56]
	.loc 1 327 0
	cmp	r0, #0
	.loc 1 328 0
	ldrd	r0, [sp, #88]
	.loc 1 327 0 discriminator 2
	streq	r4, [sp, #48]
.LVL10:
	streq	r5, [sp, #52]
	.loc 1 328 0
	bl	__aeabi_dcmplt(PLT)
.LVL11:
	cmp	r0, #0
	ldreqd	r2, [sp, #56]
	streqd	r2, [sp, #88]
.L7:
.LVL12:
	.loc 1 329 0
	ldrd	r4, [r8, #104]
	ldrd	r2, [sp, #96]
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmplt(PLT)
.LVL13:
	cmp	r0, #0
	.loc 1 329 0 is_stmt 0 discriminator 2
	streqd	r4, [sp, #96]
.LVL14:
.L8:
	.loc 1 330 0 is_stmt 1
	ldrd	r0, [sp, #104]
	ldrd	r2, [r8, #112]
	bl	__aeabi_dadd(PLT)
.LVL15:
	.loc 1 331 0
	ldrd	r2, [r8, #32]
	strd	r2, [sp, #56]
	ldrd	r2, [sp, #24]
	.loc 1 330 0
	strd	r0, [sp, #104]
.LVL16:
	.loc 1 331 0
	ldrd	r0, [sp, #56]
.LVL17:
	bl	__aeabi_dcmplt(PLT)
.LVL18:
	cmp	r0, #0
	ldreqd	r2, [sp, #24]
	streqd	r2, [sp, #56]
.L9:
.LVL19:
	.loc 1 332 0
	ldrd	r4, [r8, #40]
	ldrd	r2, [sp, #40]
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmplt(PLT)
.LVL20:
	cmp	r0, #0
	.loc 1 332 0 is_stmt 0 discriminator 2
	streqd	r4, [sp, #40]
.LVL21:
.L10:
	.loc 1 334 0 is_stmt 1
	ldrd	r0, [sp, #16]
	ldrd	r2, [r8, #16]
	bl	__aeabi_dadd(PLT)
.LVL22:
	.loc 1 335 0
	ldrd	r6, [r8, #128]
	ldrd	r4, [sp, #112]
	.loc 1 336 0
	ldrd	r2, [r8, #136]
	.loc 1 335 0
	adds	r4, r4, r6
	.loc 1 336 0
	strd	r2, [sp, #24]
	.loc 1 335 0
	adc	r5, r5, r7
	strd	r4, [sp, #112]
.LVL23:
	.loc 1 336 0
	ldrd	r6, [sp, #24]
	ldrd	r4, [sp, #120]
	.loc 1 333 0
	ldr	ip, [r8, #12]
	.loc 1 336 0
	adds	r6, r6, r4
	adc	r7, r7, r5
	.loc 1 337 0
	ldrd	r2, [r8, #80]
	.loc 1 336 0
	mov	r4, r6
	mov	r5, r7
	.loc 1 333 0
	str	ip, [sp, #24]
.LVL24:
	.loc 1 336 0
	strd	r4, [sp, #120]
.LVL25:
	.loc 1 334 0
	strd	r0, [sp, #16]
.LVL26:
	.loc 1 337 0
	ldrd	r0, [sp, #128]
	bl	__aeabi_dadd(PLT)
.LVL27:
	.loc 1 338 0
	ldrd	r2, [r8, #88]
	.loc 1 337 0
	strd	r0, [sp, #128]
.LVL28:
	.loc 1 338 0
	ldrd	r0, [sp, #136]
.LVL29:
	bl	__aeabi_dadd(PLT)
.LVL30:
	.loc 1 341 0
	ldr	ip, [sp, #72]
	.loc 1 339 0
	ldrd	r6, [r8, #120]
	.loc 1 341 0
	bic	r3, ip, #-2147483648
	ldr	ip, [sp, #24]
	.loc 1 333 0
	ldr	r9, [r8, #8]
	.loc 1 339 0
	ldrd	r4, [sp, #144]
	.loc 1 341 0
	ldr	r2, [sp, #76]
	.loc 1 339 0
	orr	r4, r4, r6
	orr	r5, r5, r7
	strd	r4, [sp, #144]
.LVL31:
	.loc 1 350 0
	ldr	r7, .L50+28
	.loc 1 351 0 discriminator 5
	ldr	r6, .L50+32
	.loc 1 350 0
.LPIC6:
	add	r7, pc, r7
	.loc 1 351 0 discriminator 5
.LPIC7:
	add	r6, pc, r6
	.loc 1 338 0
	strd	r0, [sp, #136]
.LVL32:
	.loc 1 341 0
	bic	r1, ip, #-2147483648
	.loc 1 344 0
	ldr	ip, [sp, #36]
	.loc 1 341 0
	mov	r0, r9
.LVL33:
	.loc 1 344 0
	add	ip, ip, #1
	str	ip, [sp, #36]
.LVL34:
	.loc 1 341 0
	bl	__aeabi_dcmpgt(PLT)
.LVL35:
	.loc 1 340 0
	ldrd	r4, [sp, #8]
.LVL36:
	ldrd	r2, [sp, #80]
	.loc 1 342 0
	ldr	lr, [sp, #24]
	.loc 1 340 0
	adds	r2, r2, r4
	adc	r3, r3, r5
	.loc 1 342 0
	ldr	ip, [sp, #76]
	.loc 1 340 0
	strd	r2, [sp, #8]
.LVL37:
	.loc 1 344 0
	mov	r1, #32
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #152]
.LVL38:
	.loc 1 353 0 discriminator 2
	ldr	r5, .L50+36
.LPIC9:
	add	r5, pc, r5
	.loc 1 342 0
	cmp	r0, #0
	movne	ip, r9
	.loc 1 344 0
	mov	r0, r10
	.loc 1 342 0
	str	ip, [sp, #76]
.LVL39:
	ldr	ip, [sp, #72]
	movne	ip, lr
	str	ip, [sp, #72]
.LVL40:
	.loc 1 344 0
	bl	av_log(PLT)
.LVL41:
	.loc 1 345 0
	ldrd	r0, [r8, #144]
	bl	__aeabi_ul2d(PLT)
.LVL42:
	mov	r3, r1
	mov	r2, r0
	ldrd	r0, [r8, #8]
	bl	__aeabi_ddiv(PLT)
.LVL43:
	ldr	r2, [sp, #156]
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL44:
	.loc 1 346 0
	ldrd	r2, [r8, #48]
	mov	r0, r10
	strd	r2, [sp]
	mov	r1, #32
	ldr	r2, [sp, #160]
	bl	av_log(PLT)
.LVL45:
	.loc 1 347 0
	ldrd	r2, [r8, #56]
	mov	r0, r10
	strd	r2, [sp]
	mov	r1, #32
	ldr	r2, [sp, #164]
	bl	av_log(PLT)
.LVL46:
	.loc 1 348 0
	ldrd	r2, [r8, #96]
	mov	r0, r10
	strd	r2, [sp]
	mov	r1, #32
	ldr	r2, [sp, #168]
	bl	av_log(PLT)
.LVL47:
	.loc 1 349 0
	ldrd	r2, [r8, #104]
	mov	r0, r10
	strd	r2, [sp]
	mov	r1, #32
	ldr	r2, [sp, #172]
	bl	av_log(PLT)
.LVL48:
	.loc 1 350 0
	ldrd	r0, [r8, #144]
	subs	r0, r0, #1
	sbc	r1, r1, #0
	bl	__aeabi_ul2d(PLT)
.LVL49:
	mov	r3, r1
	mov	r2, r0
	ldrd	r0, [r8, #112]
	bl	__aeabi_ddiv(PLT)
.LVL50:
	mov	r2, r7
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL51:
	.loc 1 351 0
	ldr	r4, [r8, #52]
	ldr	ip, [r8, #56]
	ldr	r7, [r8, #60]
	ldr	r9, [r8, #48]
	add	r4, r4, #-2147483648
	mov	r1, r4
	mov	r2, ip
	mov	r3, r7
	mov	r0, r9
	str	ip, [sp, #24]
	bl	__aeabi_dcmpgt(PLT)
.LVL52:
	.loc 1 351 0 is_stmt 0 discriminator 4
	ldr	ip, [sp, #24]
	.loc 1 351 0 discriminator 2
	cmp	r0, #0
	.loc 1 351 0 discriminator 4
	movne	r1, r4
	moveq	r0, ip
	movne	r0, r9
	moveq	r1, r7
	bl	log10(PLT)
.LVL53:
	ldr	r3, .L50+40
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL54:
	.loc 1 351 0 discriminator 5
	mov	r2, r6
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL55:
	.loc 1 352 0 is_stmt 1
	ldrd	r0, [r8, #144]
	bl	__aeabi_ul2d(PLT)
.LVL56:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [r8, #16]
	bl	__aeabi_ddiv(PLT)
.LVL57:
	bl	sqrt(PLT)
.LVL58:
	.loc 1 352 0 is_stmt 0 discriminator 1
	bl	log10(PLT)
.LVL59:
	.loc 1 352 0
	ldr	r3, .L50+40
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL60:
	.loc 1 352 0 discriminator 2
	ldr	r2, .L50+44
.LPIC8:
	add	r2, pc, r2
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL61:
	.loc 1 353 0 is_stmt 1
	ldrd	r0, [r8, #40]
	bl	sqrt(PLT)
.LVL62:
	.loc 1 353 0 is_stmt 0 discriminator 1
	bl	log10(PLT)
.LVL63:
	.loc 1 353 0
	ldr	r3, .L50+40
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL64:
	.loc 1 353 0 discriminator 2
	mov	r2, r5
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL65:
	.loc 1 354 0 is_stmt 1
	ldrd	r4, [r8, #32]
	mov	r2, #0
	ldr	r3, .L50+48
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpeq(PLT)
.LVL66:
	cmp	r0, #0
	bne	.L14
	.loc 1 355 0
	mov	r0, r4
	mov	r1, r5
	bl	sqrt(PLT)
.LVL67:
	.loc 1 355 0 is_stmt 0 discriminator 1
	bl	log10(PLT)
.LVL68:
	.loc 1 355 0
	mov	r2, #0
	ldr	r3, .L50+40
	bl	__aeabi_dmul(PLT)
.LVL69:
	.loc 1 355 0 discriminator 2
	ldr	r2, .L50+52
.LPIC10:
	add	r2, pc, r2
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL70:
.L14:
	.loc 1 356 0 is_stmt 1
	ldrd	r4, [r8, #16]
	mov	r2, #0
	mov	r1, r5
	mov	r3, #0
	mov	r0, r4
	bl	__aeabi_dcmpeq(PLT)
.LVL71:
	cmp	r0, #0
	.loc 1 356 0 is_stmt 0 discriminator 2
	movne	r0, #0
	ldrne	r1, .L50+48
	.loc 1 356 0
	bne	.L16
	.loc 1 356 0 discriminator 1
	ldr	r6, [r8, #52]
	ldr	ip, [r8, #56]
	ldr	r7, [r8, #48]
	ldr	r9, [r8, #60]
	add	r6, r6, #-2147483648
	mov	r2, ip
	mov	r1, r6
	mov	r3, r9
	mov	r0, r7
	str	ip, [sp, #24]
	bl	__aeabi_dcmpgt(PLT)
.LVL72:
	.loc 1 356 0 discriminator 4
	ldr	ip, [sp, #24]
	cmp	r0, #0
	.loc 1 356 0 discriminator 6
	ldrd	r0, [r8, #144]
	.loc 1 356 0 discriminator 4
	moveq	r7, ip
	moveq	r6, r9
	.loc 1 356 0 discriminator 6
	bl	__aeabi_ul2d(PLT)
.LVL73:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv(PLT)
.LVL74:
	bl	sqrt(PLT)
.LVL75:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_ddiv(PLT)
.LVL76:
.L16:
	.loc 1 356 0 discriminator 9
	ldr	r2, .L50+56
	strd	r0, [sp]
.LPIC11:
	add	r2, pc, r2
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL77:
	.loc 1 357 0 is_stmt 1
	ldrd	r2, [r8, #88]
	ldrd	r0, [r8, #80]
	bl	__aeabi_dadd(PLT)
.LVL78:
	ldrd	r4, [r8, #136]
	.loc 1 357 0 is_stmt 0 discriminator 1
	ldr	r9, .L50+60
.LPIC12:
	add	r9, pc, r9
	.loc 1 357 0
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, [r8, #128]
	adds	r0, r0, r4
	adc	r1, r1, r5
	bl	__aeabi_ul2d(PLT)
.LVL79:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv(PLT)
.LVL80:
	bl	log10(PLT)
.LVL81:
	ldr	r3, .L50+40
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL82:
	.loc 1 357 0 discriminator 1
	mov	r2, r9
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL83:
	.loc 1 358 0 is_stmt 1
	ldrd	r4, [r8, #136]
	ldrd	r2, [r8, #128]
	mov	r0, r10
	adds	r2, r2, r4
	adc	r3, r3, r5
	strd	r2, [sp]
	ldr	r2, .L50+64
	mov	r1, #32
.LPIC13:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL84:
	.loc 1 359 0
	ldrd	r2, [r8, #120]
.LVL85:
.LBB23:
.LBB24:
	.loc 1 130 0
	mov	ip, #64
.LVL86:
.L19:
	.loc 1 132 0 discriminator 2
	and	r0, r2, #1
	mov	r1, #0
	orrs	r1, r0, r1
	bne	.L33
	.loc 1 132 0 is_stmt 0 discriminator 3
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
.LVL87:
	.loc 1 132 0 discriminator 1
	subs	ip, ip, #1
.LVL88:
	bne	.L19
.L33:
.LBE24:
.LBE23:
	.loc 1 359 0 is_stmt 1 discriminator 1
	ldr	r2, .L50+68
.LVL89:
	mov	r3, ip
.LPIC14:
	add	r2, pc, r2
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL90:
	.loc 1 331 0 discriminator 4
	ldrd	r2, [sp, #56]
	.loc 1 326 0 discriminator 4
	ldr	r7, [sp, #64]
	.loc 1 331 0 discriminator 4
	strd	r2, [sp, #24]
	.loc 1 328 0 discriminator 4
	ldrd	r2, [sp, #88]
	.loc 1 326 0 discriminator 4
	ldr	r6, [sp, #68]
	.loc 1 328 0 discriminator 4
	strd	r2, [sp, #56]
.LVL91:
	b	.L3
.LVL92:
.L49:
.LBE28:
	.loc 1 362 0
	ldr	r2, .L50+72
.LVL93:
	mov	r0, r10
	mov	r1, #32
.LPIC15:
	add	r2, pc, r2
	ldr	r9, [sp, #76]
	bl	av_log(PLT)
.LVL94:
	.loc 1 363 0
	ldr	r2, [fp, #8]
	ldrd	r0, [sp, #8]
	mov	r3, r2, asr #31
	bl	__aeabi_uldivmod(PLT)
.LVL95:
	bl	__aeabi_ul2d(PLT)
.LVL96:
	.loc 1 369 0 discriminator 5
	ldr	r8, .L50+76
	.loc 1 370 0 discriminator 2
	ldr	r5, .L50+80
	.loc 1 369 0 discriminator 5
.LPIC22:
	add	r8, pc, r8
	.loc 1 370 0 discriminator 2
.LPIC23:
	add	r5, pc, r5
	.loc 1 371 0 discriminator 2
	ldr	r4, .L50+84
.LPIC24:
	add	r4, pc, r4
	.loc 1 363 0
	mov	r3, r1
	mov	r2, r0
	ldr	r1, [sp, #72]
	mov	r0, r9
	bl	__aeabi_ddiv(PLT)
.LVL97:
	ldr	r2, .L50+88
	.loc 1 368 0
	ldr	ip, .L50+92
	.loc 1 363 0
.LPIC16:
	add	r2, pc, r2
	.loc 1 368 0
.LPIC21:
	add	ip, pc, ip
	str	ip, [sp, #36]
.LVL98:
	.loc 1 369 0
	add	r9, r6, #-2147483648
	.loc 1 363 0
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL99:
	.loc 1 364 0
	mov	r3, r6
	mov	r2, r7
	strd	r2, [sp]
	ldr	r2, .L50+96
	mov	r0, r10
	mov	r1, #32
.LPIC17:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL100:
	.loc 1 365 0
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #52]
	mov	r0, r10
	strd	r2, [sp]
	ldr	r2, .L50+100
	mov	r1, #32
.LPIC18:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL101:
	.loc 1 366 0
	ldrd	r2, [sp, #56]
	mov	r0, r10
	strd	r2, [sp]
	ldr	r2, .L50+104
	mov	r1, #32
.LPIC19:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL102:
	.loc 1 367 0
	ldrd	r2, [sp, #96]
	mov	r0, r10
	strd	r2, [sp]
	ldr	r2, .L50+108
	mov	r1, #32
.LPIC20:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL103:
	.loc 1 368 0
	ldr	r0, [fp, #8]
	ldrd	r2, [sp, #8]
	subs	r2, r2, r0
	sbc	r3, r3, r0, asr #31
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_ul2d(PLT)
.LVL104:
	mov	r3, r1
	mov	r2, r0
	ldrd	r0, [sp, #104]
	bl	__aeabi_ddiv(PLT)
.LVL105:
	ldr	ip, [sp, #36]
	mov	r2, ip
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL106:
	.loc 1 369 0
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #52]
	mov	r1, r9
	mov	r0, r7
	bl	__aeabi_dcmpgt(PLT)
.LVL107:
	.loc 1 369 0 is_stmt 0 discriminator 4
	ldr	r3, [sp, #48]
	.loc 1 369 0
	cmp	r0, #0
	.loc 1 369 0 discriminator 4
	movne	r3, r7
	mov	r0, r3
	ldr	r3, [sp, #52]
	movne	r3, r9
	mov	r1, r3
	bl	log10(PLT)
.LVL108:
	ldr	r3, .L50+40
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL109:
	.loc 1 369 0 discriminator 5
	mov	r2, r8
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL110:
	.loc 1 370 0 is_stmt 1
	ldrd	r0, [sp, #8]
	bl	__aeabi_ul2d(PLT)
.LVL111:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [sp, #16]
	bl	__aeabi_ddiv(PLT)
.LVL112:
	bl	sqrt(PLT)
.LVL113:
	.loc 1 370 0 is_stmt 0 discriminator 1
	bl	log10(PLT)
.LVL114:
	.loc 1 370 0
	ldr	r3, .L50+40
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL115:
	.loc 1 370 0 discriminator 2
	mov	r2, r5
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL116:
	.loc 1 371 0 is_stmt 1
	ldrd	r0, [sp, #40]
	bl	sqrt(PLT)
.LVL117:
	.loc 1 371 0 is_stmt 0 discriminator 1
	bl	log10(PLT)
.LVL118:
	.loc 1 371 0
	ldr	r3, .L50+40
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL119:
	.loc 1 371 0 discriminator 2
	mov	r2, r4
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL120:
	.loc 1 372 0 is_stmt 1
	ldrd	r0, [sp, #24]
	mov	r2, #0
	ldr	r3, .L50+48
	bl	__aeabi_dcmpeq(PLT)
.LVL121:
	cmp	r0, #0
	bne	.L24
	.loc 1 373 0
	ldrd	r0, [sp, #24]
	bl	sqrt(PLT)
.LVL122:
	.loc 1 373 0 is_stmt 0 discriminator 1
	bl	log10(PLT)
.LVL123:
	.loc 1 373 0
	mov	r2, #0
	ldr	r3, .L50+40
	bl	__aeabi_dmul(PLT)
.LVL124:
	.loc 1 373 0 discriminator 2
	ldr	r2, .L50+112
.LPIC25:
	add	r2, pc, r2
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL125:
.L24:
	.loc 1 374 0 is_stmt 1
	ldrd	r2, [sp, #120]
	ldrd	r0, [sp, #112]
	.loc 1 375 0
	ldr	r6, .L50+116
.LVL126:
	.loc 1 374 0
	adds	r0, r0, r2
	adc	r1, r1, r3
	bl	__aeabi_ul2d(PLT)
.LVL127:
	ldrd	r2, [sp, #136]
	.loc 1 375 0
.LPIC27:
	add	r6, pc, r6
	.loc 1 374 0
	mov	r4, r0
	mov	r5, r1
	ldrd	r0, [sp, #128]
	bl	__aeabi_dadd(PLT)
.LVL128:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_ddiv(PLT)
.LVL129:
	bl	log10(PLT)
.LVL130:
	ldr	r3, .L50+40
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL131:
	.loc 1 374 0 is_stmt 0 discriminator 1
	ldr	r2, .L50+120
.LPIC26:
	add	r2, pc, r2
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL132:
	.loc 1 375 0 is_stmt 1
	ldr	r0, [fp, #8]
	bl	__aeabi_i2d(PLT)
.LVL133:
	mov	r3, r1
	mov	r2, r0
	mov	r1, r5
	mov	r0, r4
	bl	__aeabi_ddiv(PLT)
.LVL134:
	mov	r2, r6
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL135:
	ldrd	r0, [sp, #144]
.LBB29:
.LBB30:
	.loc 1 130 0
	mov	r3, #64
.LVL136:
.L26:
	.loc 1 132 0 discriminator 2
	and	r4, r0, #1
	mov	r5, #0
	orrs	r2, r4, r5
	bne	.L27
	.loc 1 132 0 is_stmt 0 discriminator 3
	movs	r1, r1, lsr #1
	mov	r0, r0, rrx
.LVL137:
	.loc 1 132 0 discriminator 1
	subs	r3, r3, #1
.LVL138:
	bne	.L26
.L27:
.LBE30:
.LBE29:
	.loc 1 376 0 is_stmt 1 discriminator 1
	ldr	r2, .L50+124
	mov	r0, r10
.LVL139:
	mov	r1, #32
.LPIC28:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL140:
	.loc 1 377 0
	ldr	r2, [fp, #8]
	ldrd	r0, [sp, #8]
	mov	r3, r2, asr #31
	bl	__aeabi_uldivmod(PLT)
.LVL141:
	ldr	r2, .L50+128
.LPIC29:
	add	r2, pc, r2
	strd	r0, [sp]
	mov	r0, r10
	mov	r1, #32
	bl	av_log(PLT)
.LVL142:
.L2:
.LBE33:
.LBE36:
	.loc 1 386 0
	add	r0, fp, #4
	.loc 1 387 0
	add	sp, sp, #180
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL143:
	.loc 1 386 0
	b	av_freep(PLT)
.LVL144:
.L51:
	.align	2
.L50:
	.word	2146435071
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC1+8)
	.word	.LC2-(.LPIC2+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC4-(.LPIC4+8)
	.word	.LC5-(.LPIC5+8)
	.word	.LC6-(.LPIC6+8)
	.word	.LC7-(.LPIC7+8)
	.word	.LC9-(.LPIC9+8)
	.word	1077149696
	.word	.LC8-(.LPIC8+8)
	.word	1072693248
	.word	.LC10-(.LPIC10+8)
	.word	.LC11-(.LPIC11+8)
	.word	.LC12-(.LPIC12+8)
	.word	.LC13-(.LPIC13+8)
	.word	.LC14-(.LPIC14+8)
	.word	.LC15-(.LPIC15+8)
	.word	.LC7-(.LPIC22+8)
	.word	.LC8-(.LPIC23+8)
	.word	.LC9-(.LPIC24+8)
	.word	.LC1-(.LPIC16+8)
	.word	.LC6-(.LPIC21+8)
	.word	.LC2-(.LPIC17+8)
	.word	.LC3-(.LPIC18+8)
	.word	.LC4-(.LPIC19+8)
	.word	.LC5-(.LPIC20+8)
	.word	.LC10-(.LPIC25+8)
	.word	.LC16-(.LPIC27+8)
	.word	.LC12-(.LPIC26+8)
	.word	.LC14-(.LPIC28+8)
	.word	.LC17-(.LPIC29+8)
	.cfi_endproc
.LFE62:
	.size	uninit, .-uninit
	.text
	.align	2
	.type	query_formats, %function
query_formats:
.LFB53:
	.loc 1 68 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL145:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 68 0
	mov	r4, r0
	.loc 1 77 0
	bl	ff_all_channel_counts(PLT)
.LVL146:
	.loc 1 78 0
	subs	r1, r0, #0
	beq	.L55
	.loc 1 80 0
	mov	r0, r4
.LVL147:
	bl	ff_set_common_channel_layouts(PLT)
.LVL148:
	.loc 1 81 0
	cmp	r0, #0
	ldmltfd	sp!, {r4, pc}
	.loc 1 84 0
	ldr	r0, .L65
.LVL149:
.LPIC30:
	add	r0, pc, r0
	bl	ff_make_format_list(PLT)
.LVL150:
	.loc 1 85 0
	subs	r1, r0, #0
	beq	.L55
	.loc 1 87 0
	mov	r0, r4
.LVL151:
	bl	ff_set_common_formats(PLT)
.LVL152:
	.loc 1 88 0
	cmp	r0, #0
	ldmltfd	sp!, {r4, pc}
.LVL153:
.LBB39:
.LBB40:
	.loc 1 91 0
	bl	ff_all_samplerates(PLT)
.LVL154:
	.loc 1 92 0
	subs	r1, r0, #0
	beq	.L55
	.loc 1 94 0
	mov	r0, r4
.LVL155:
.LBE40:
.LBE39:
	.loc 1 95 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL156:
.LBB42:
.LBB41:
	.loc 1 94 0
	b	ff_set_common_samplerates(PLT)
.LVL157:
.L55:
	.cfi_restore_state
.LBE41:
.LBE42:
	.loc 1 79 0
	mvn	r0, #11
	ldmfd	sp!, {r4, pc}
.L66:
	.align	2
.L65:
	.word	.LANCHOR0-(.LPIC30+8)
	.cfi_endproc
.LFE53:
	.size	query_formats, .-query_formats
	.align	2
	.type	set_meta.constprop.2, %function
set_meta.constprop.2:
.LFB66:
	.loc 1 179 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL158:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #264
	.cfi_def_cfa_offset 280
	.loc 1 185 0
	strd	r2, [sp]
	ldr	r2, .L69
.LVL159:
	add	r4, sp, #8
	.loc 1 179 0
	mov	r6, r0
	mov	r5, r1
	.loc 1 185 0
	mov	r0, r4
.LVL160:
	mov	r1, #128
.LVL161:
.LPIC31:
	add	r2, pc, r2
	bl	snprintf(PLT)
.LVL162:
	.loc 1 189 0
	ldr	r2, .L69+4
	mov	r3, r5
	add	r5, sp, #136
.LVL163:
	mov	r0, r5
	mov	r1, #128
.LPIC32:
	add	r2, pc, r2
	bl	snprintf(PLT)
.LVL164:
	.loc 1 190 0
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	mov	r3, #0
	bl	av_dict_set(PLT)
.LVL165:
	.loc 1 191 0
	add	sp, sp, #264
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL166:
.L70:
	.align	2
.L69:
	.word	.LC18-(.LPIC31+8)
	.word	.LC19-(.LPIC32+8)
	.cfi_endproc
.LFE66:
	.size	set_meta.constprop.2, .-set_meta.constprop.2
	.align	2
	.type	set_meta.constprop.3, %function
set_meta.constprop.3:
.LFB65:
	.loc 1 179 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL167:
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
	sub	sp, sp, #264
	.cfi_def_cfa_offset 296
	.loc 1 179 0
	add	r3, sp, #296
	ldrd	r8, [r3]
	mov	r10, r2
	.loc 1 185 0
	ldr	r2, .L76
.LVL168:
	add	r4, sp, #8
	.loc 1 179 0
	mov	r6, r1
	mov	r7, r0
	.loc 1 185 0
	strd	r8, [sp]
	mov	r0, r4
.LVL169:
	mov	r1, #128
.LVL170:
.LPIC33:
	add	r2, pc, r2
	bl	snprintf(PLT)
.LVL171:
	.loc 1 186 0
	cmp	r6, #0
	.loc 1 187 0
	add	r5, sp, #136
	.loc 1 186 0
	bne	.L75
	.loc 1 189 0
	ldr	r2, .L76+4
	mov	r3, r10
	mov	r0, r5
	mov	r1, #128
.LPIC35:
	add	r2, pc, r2
	bl	snprintf(PLT)
.LVL172:
.L73:
	.loc 1 190 0
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	mov	r3, #0
	bl	av_dict_set(PLT)
.LVL173:
	.loc 1 191 0
	add	sp, sp, #264
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL174:
.L75:
	.cfi_restore_state
	.loc 1 187 0
	ldr	r2, .L76+8
	str	r10, [sp]
	mov	r3, r6
	mov	r0, r5
	mov	r1, #128
.LPIC34:
	add	r2, pc, r2
	bl	snprintf(PLT)
.LVL175:
	b	.L73
.L77:
	.align	2
.L76:
	.word	.LC18-(.LPIC33+8)
	.word	.LC19-(.LPIC35+8)
	.word	.LC20-(.LPIC34+8)
	.cfi_endproc
.LFE65:
	.size	set_meta.constprop.3, .-set_meta.constprop.3
	.global	__aeabi_d2ulz
	.align	2
	.type	config_output, %function
config_output:
.LFB55:
	.loc 1 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL176:
	.loc 1 114 0
	ldr	r3, [r0]
	.loc 1 113 0
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
	.loc 1 116 0
	ldr	r1, [r0, #152]
	.loc 1 113 0
	mov	r4, r0
	.loc 1 116 0
	mov	r0, #152
.LVL177:
	.loc 1 114 0
	ldr	r5, [r3, #36]
.LVL178:
	.loc 1 116 0
	bl	av_calloc(PLT)
.LVL179:
	.loc 1 117 0
	cmp	r0, #0
	.loc 1 116 0
	mov	r10, r0
	str	r0, [r5, #4]
	.loc 1 117 0
	beq	.L83
	.loc 1 119 0
	ldr	r3, [r4, #152]
	.loc 1 120 0
	ldr	r0, [r4, #48]
	.loc 1 119 0
	str	r3, [r5, #8]
	.loc 1 120 0
	bl	__aeabi_i2d(PLT)
.LVL180:
	ldrd	r8, [r5, #24]
.LBB46:
.LBB47:
	.loc 1 101 0
	mov	r4, #152
.LVL181:
.LBE47:
.LBE46:
	.loc 1 120 0
	mov	r2, r8
	mov	r3, r9
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0
	ldr	r1, .L86
	bl	__aeabi_ddiv(PLT)
.LVL182:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ddiv(PLT)
.LVL183:
	bl	exp(PLT)
.LVL184:
	.loc 1 121 0
	mov	r2, #0
	ldr	r3, .L86+4
	.loc 1 120 0
	strd	r0, [r5, #32]
	.loc 1 121 0
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL185:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul(PLT)
.LVL186:
	mov	r2, #0
	ldr	r3, .L86+8
	bl	__aeabi_dadd(PLT)
.LVL187:
	bl	__aeabi_d2ulz(PLT)
.LVL188:
.LBB51:
.LBB49:
	.loc 1 101 0
	mov	r2, r4
.LBE49:
.LBE51:
	.loc 1 121 0
	strd	r0, [r5, #16]
.LVL189:
.LBB52:
.LBB50:
	.loc 1 101 0
	mov	r0, r10
	mov	r1, #0
	bl	memset(PLT)
.LVL190:
	.loc 1 103 0 discriminator 1
	ldr	r2, [r5, #8]
	cmp	r2, #0
	ble	.L82
	ldr	r3, [r5, #4]
.LBB48:
	.loc 1 106 0
	ldr	r7, .L86+12
	.loc 1 108 0
	ldr	r1, .L86
	mla	r2, r4, r2, r3
	.loc 1 106 0
	mvn	r6, #0
	.loc 1 107 0
	mov	r4, #0
	mov	r5, #1048576
.LVL191:
	.loc 1 108 0
	mov	r0, #0
.LVL192:
.L81:
	.loc 1 106 0
	strd	r6, [r3, #32]
	strd	r6, [r3, #48]
	.loc 1 107 0
	strd	r4, [r3, #40]
	strd	r4, [r3, #56]
	.loc 1 108 0
	strd	r0, [r3, #104]
	strd	r0, [r3, #96]
	add	r3, r3, #152
.LVL193:
.LBE48:
	.loc 1 103 0 discriminator 1
	cmp	r3, r2
	bne	.L81
.LVL194:
.L82:
.LBE50:
.LBE52:
	.loc 1 125 0
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL195:
.L83:
	.loc 1 118 0
	mvn	r0, #11
	.loc 1 126 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L87:
	.align	2
.L86:
	.word	-1074790400
	.word	1075052544
	.word	1071644672
	.word	2146435071
	.cfi_endproc
.LFE55:
	.size	config_output, .-config_output
	.global	__aeabi_dsub
	.global	__aeabi_ul2f
	.global	__aeabi_f2d
	.global	__aeabi_ui2d
	.align	2
	.type	filter_frame, %function
filter_frame:
.LFB60:
	.loc 1 265 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 464
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL196:
	.loc 1 266 0
	ldr	r3, [r0, #8]
	.loc 1 265 0
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
	.loc 1 266 0
	ldr	r3, [r3, #36]
	.loc 1 265 0
	sub	sp, sp, #476
	.cfi_def_cfa_offset 512
	.loc 1 265 0
	mov	r4, r0
	str	r0, [sp, #212]
	.loc 1 267 0
	mov	r0, r1
.LVL197:
	.loc 1 266 0
	mov	r5, r3
	str	r3, [sp, #140]
.LVL198:
	.loc 1 265 0
	str	r1, [sp, #196]
	.loc 1 267 0
	bl	avpriv_frame_get_metadatap(PLT)
.LVL199:
	.loc 1 272 0
	ldr	r3, [r4, #52]
	.loc 1 268 0
	ldr	r2, [r5, #8]
	.loc 1 272 0
	cmp	r3, #4
	.loc 1 268 0
	str	r2, [sp, #148]
	.loc 1 267 0
	str	r0, [sp, #200]
.LVL200:
	.loc 1 272 0
	beq	.L90
	cmp	r3, #9
	bne	.L89
.LVL201:
	.loc 1 274 0 discriminator 1
	cmp	r2, #0
	mov	r1, r2
	ble	.L89
	ldr	r3, [sp, #196]
	ldr	r2, [r3, #76]
.LVL202:
	ldr	r0, [r3, #64]
.LVL203:
	ldr	r3, [sp, #140]
	str	r2, [sp, #156]
	sub	r2, r2, #1
	ldr	fp, [r3, #4]
	adds	r4, r2, #1
.LVL204:
	mov	r3, #0
	adc	r5, r3, #0
.LVL205:
	add	r3, r0, r1, asl #2
	str	r3, [sp, #152]
	add	r3, fp, #120
	str	r0, [sp, #144]
	strd	r4, [sp, #160]
	str	r3, [sp, #96]
.LVL206:
.L94:
.LBB70:
	.loc 1 278 0 discriminator 1
	ldr	r3, [sp, #156]
	cmp	r3, #0
	.loc 1 276 0
	ldr	r3, [sp, #144]
	ldr	r4, [r3], #4
	str	r3, [sp, #144]
.LVL207:
	.loc 1 278 0 discriminator 1
	ble	.L123
	ldr	r5, [sp, #140]
	mov	r0, #0
	ldrd	r2, [r5, #32]
	ldr	r1, .L263
	strd	r2, [sp, #112]
	bl	__aeabi_dsub(PLT)
.LVL208:
	ldrd	r2, [fp, #144]
	ldr	r10, [fp, #108]
	strd	r2, [sp, #40]
	strd	r0, [sp, #120]
	ldrd	r0, [fp, #8]
	strd	r0, [sp, #64]
	ldrd	r0, [fp, #16]
	strd	r0, [sp, #72]
	ldrd	r0, [fp, #24]
	strd	r0, [sp, #24]
	ldr	r1, [fp, #96]
	str	r1, [sp, #16]
	ldr	r1, [fp, #100]
	str	r1, [sp, #32]
	ldr	r1, [sp, #96]
	ldrd	r8, [r1, #-120]
	ldr	r1, [fp, #104]
	str	r1, [sp, #8]
	ldrd	r0, [fp, #112]
	mov	r6, r8
	strd	r0, [sp, #80]
	ldrd	r0, [fp, #120]
	mov	r7, r9
	strd	r0, [sp, #48]
	ldrd	r0, [r5, #16]
	strd	r0, [sp, #128]
	sub	r1, r4, #8
	str	r1, [sp, #56]
	ldrd	r0, [sp, #160]
	adds	r0, r0, r2
	adc	r1, r1, r3
	strd	r0, [sp, #104]
	b	.L122
.LVL209:
.L256:
.LBB71:
.LBB72:
	.loc 1 141 0
	ldr	r3, .L263
	mov	r2, #0
	strd	r2, [fp, #64]
	.loc 1 142 0
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #80]
	.loc 1 143 0
	mov	r2, #1
	mov	r3, #0
	.loc 1 140 0
	strd	r8, [fp, #48]
	.loc 1 143 0
	strd	r2, [fp, #128]
.L98:
	.loc 1 151 0
	ldrd	r4, [fp, #56]
	mov	r0, r8
	mov	r1, r9
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dcmpgt(PLT)
.LVL210:
	cmp	r0, #0
	beq	.L238
	.loc 1 153 0
	ldr	r3, .L263
	mov	r2, #0
	strd	r2, [fp, #72]
	.loc 1 154 0
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #88]
	.loc 1 155 0
	mov	r2, #1
	mov	r3, #0
	.loc 1 152 0
	strd	r8, [fp, #56]
	.loc 1 155 0
	strd	r2, [fp, #136]
.L106:
	.loc 1 163 0
	ldrd	r0, [sp, #64]
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dadd(PLT)
.LVL211:
	mov	r2, r0
	mov	r3, r1
	strd	r2, [sp, #64]
	strd	r2, [fp, #8]
	.loc 1 164 0
	mov	r0, r8
	mov	r2, r8
	mov	r3, r9
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL212:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [sp, #72]
	bl	__aeabi_dadd(PLT)
.LVL213:
	mov	r2, r0
	mov	r3, r1
	strd	r2, [sp, #72]
	strd	r2, [fp, #16]
	.loc 1 165 0
	ldrd	r0, [sp, #24]
	ldrd	r2, [sp, #112]
	bl	__aeabi_dmul(PLT)
.LVL214:
	ldrd	r2, [sp, #120]
	mov	r4, r0
	mov	r5, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL215:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL216:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL217:
	mov	r2, r0
	mov	r3, r1
	strd	r2, [sp, #24]
	strd	r2, [fp, #24]
	.loc 1 166 0
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #32]
	mov	r2, #0
	ldr	r3, .L263+132
	bl	__aeabi_dcmpeq(PLT)
.LVL218:
	cmp	r0, #0
	bne	.L254
	.loc 1 166 0 is_stmt 0 discriminator 8
	mov	r2, r6
	mov	r3, r7
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub(PLT)
.LVL219:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #32]
	bic	r5, r1, #-2147483648
	mov	r1, r5
	mov	r4, r0
	bl	__aeabi_dcmplt(PLT)
.LVL220:
	cmp	r0, #0
	beq	.L115
	mov	r0, r4
	mov	r1, r5
.L185:
	.loc 1 166 0 discriminator 14
	str	r4, [sp, #16]
	str	r5, [sp, #32]
	mov	r4, r0
	mov	r5, r1
.L115:
	.loc 1 166 0 discriminator 20
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #32]
	.loc 1 167 0 is_stmt 1
	ldr	r0, [sp, #8]
	.loc 1 166 0 discriminator 20
	strd	r2, [fp, #96]
	.loc 1 167 0
	mov	r1, r10
	mov	r2, #0
	ldr	r3, .L263+132
	bl	__aeabi_dcmpeq(PLT)
.LVL221:
	cmp	r0, #0
	bne	.L242
	.loc 1 167 0 is_stmt 0 discriminator 4
	ldr	r6, [sp, #8]
	mov	r1, r10
	mov	r0, r6
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dcmpgt(PLT)
.LVL222:
	cmp	r0, #0
	moveq	r6, r4
	moveq	r10, r5
	str	r6, [sp, #8]
.L118:
	.loc 1 167 0 discriminator 12
	ldr	r0, [sp, #8]
	mov	r1, r10
	.loc 1 168 0 is_stmt 1
	mov	r2, r4
	mov	r3, r5
	.loc 1 167 0 discriminator 12
	strd	r0, [fp, #104]
	.loc 1 168 0
	ldrd	r0, [sp, #80]
	bl	__aeabi_dadd(PLT)
.LVL223:
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #112]
	strd	r2, [sp, #80]
	.loc 1 169 0
	ldr	r3, [sp, #96]
	.loc 1 170 0
	mov	r2, #0
	.loc 1 169 0
	strd	r8, [r3, #-120]
	.loc 1 170 0
	mov	r0, r8
	ldr	r3, .L263+128
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL224:
	bl	llrint(PLT)
.LVL225:
	.loc 1 172 0
	ldrd	r2, [sp, #40]
	ldrd	r4, [sp, #128]
	cmp	r3, r5
	cmpeq	r2, r4
	.loc 1 170 0
	ldrd	r2, [sp, #48]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [sp, #48]
	.loc 1 172 0
	bcc	.L119
	.loc 1 173 0
	ldrd	r6, [fp, #40]
	ldrd	r0, [sp, #24]
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dcmplt(PLT)
.LVL226:
	cmp	r0, #0
	.loc 1 173 0 is_stmt 0 discriminator 2
	ldreqd	r6, [sp, #24]
.L120:
	.loc 1 174 0 is_stmt 1
	ldrd	r4, [fp, #32]
	.loc 1 173 0 discriminator 4
	strd	r6, [fp, #40]
	.loc 1 174 0
	mov	r2, r4
	mov	r3, r5
	ldrd	r0, [sp, #24]
	bl	__aeabi_dcmplt(PLT)
.LVL227:
	cmp	r0, #0
	.loc 1 174 0 is_stmt 0 discriminator 1
	ldrned	r4, [sp, #24]
.L121:
	.loc 1 174 0 discriminator 4
	strd	r4, [fp, #32]
.L119:
	.loc 1 176 0 is_stmt 1
	ldrd	r2, [sp, #40]
.LBE72:
.LBE71:
	.loc 1 278 0 discriminator 1
	ldrd	r0, [sp, #104]
.LBB79:
.LBB73:
	.loc 1 176 0
	adds	r2, r2, #1
	adc	r3, r3, #0
.LBE73:
.LBE79:
	.loc 1 278 0 discriminator 1
	cmp	r3, r1
	cmpeq	r2, r0
.LBB80:
.LBB74:
	.loc 1 176 0
	strd	r2, [sp, #40]
.LVL228:
	mov	r6, r8
	mov	r7, r9
.LBE74:
.LBE80:
	.loc 1 278 0 discriminator 1
	beq	.L255
.LVL229:
.L122:
	.loc 1 279 0
	ldr	r3, [sp, #56]
.LBB81:
.LBB75:
	.loc 1 139 0
	ldrd	r4, [fp, #48]
.LBE75:
.LBE81:
	.loc 1 279 0
	ldrd	r8, [r3, #8]!
.LVL230:
.LBB82:
.LBB76:
	.loc 1 139 0
	mov	r2, r4
.LBE76:
.LBE82:
	.loc 1 279 0
	str	r3, [sp, #56]
.LVL231:
.LBB83:
.LBB77:
	.loc 1 139 0
	mov	r0, r8
	mov	r1, r9
	mov	r3, r5
.LVL232:
	bl	__aeabi_dcmplt(PLT)
.LVL233:
	cmp	r0, #0
	bne	.L256
	.loc 1 144 0
	mov	r0, r8
	mov	r1, r9
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dcmpeq(PLT)
.LVL234:
	cmp	r0, #0
	beq	.L236
	.loc 1 145 0
	ldrd	r2, [fp, #128]
	.loc 1 146 0
	mov	r0, r8
	.loc 1 145 0
	adds	r2, r2, #1
	adc	r3, r3, #0
	strd	r2, [fp, #128]
	.loc 1 146 0
	mov	r1, r9
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dcmpeq(PLT)
.LVL235:
	cmp	r0, #0
	beq	.L237
	.loc 1 146 0 is_stmt 0 discriminator 1
	ldrd	r0, [fp, #64]
	mov	r2, #0
	ldr	r3, .L263
	bl	__aeabi_dadd(PLT)
.LVL236:
.L101:
	.loc 1 146 0 discriminator 4
	strd	r0, [fp, #64]
	b	.L98
.LVL237:
.L261:
	ldr	r3, [sp, #88]
	ldr	r2, [sp, #112]
	add	r3, r3, r2
	str	r3, [sp, #88]
.LVL238:
.L152:
.LBE77:
.LBE83:
.LBE70:
	.loc 1 285 0 is_stmt 1 discriminator 2
	ldr	r3, [sp, #96]
	.loc 1 285 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #104]
	.loc 1 285 0 discriminator 2
	add	r3, r3, #1
	.loc 1 285 0 discriminator 1
	cmp	r3, r2
	.loc 1 285 0 discriminator 2
	str	r3, [sp, #96]
.LVL239:
	.loc 1 285 0 discriminator 1
	bne	.L124
.LVL240:
.L89:
	.loc 1 292 0 is_stmt 1
	ldr	r3, [sp, #140]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	bne	.L257
.LVL241:
.L153:
	.loc 1 295 0
	ldr	r1, [sp, #140]
	ldr	r2, [r1, #44]
	cmp	r2, #0
	ble	.L180
	.loc 1 296 0
	ldr	r3, [r1, #48]
	add	r3, r3, #1
	.loc 1 297 0
	cmp	r2, r3
	.loc 1 296 0
	str	r3, [r1, #48]
	.loc 1 297 0
	ble	.L258
.L180:
	.loc 1 303 0
	ldr	r3, [sp, #212]
	ldr	r1, [sp, #196]
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #28]
	ldr	r0, [r3]
	bl	ff_filter_frame(PLT)
.LVL242:
	.loc 1 304 0
	add	sp, sp, #476
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L258:
	.cfi_restore_state
.LVL243:
.LBB85:
.LBB86:
	.loc 1 101 0
	mov	r6, #152
	mov	r4, r1
	ldr	r0, [r1, #4]
	mov	r2, r6
	mov	r1, #0
	bl	memset(PLT)
.LVL244:
	.loc 1 103 0 discriminator 1
	ldr	lr, [r4, #8]
	cmp	lr, #0
	ble	.L184
	ldr	r3, [sp, #140]
.LBB87:
	.loc 1 106 0
	ldr	r5, .L263+156
	ldr	ip, [r3, #4]
	.loc 1 108 0
	ldr	r3, .L263+132
	mla	lr, r6, lr, ip
	.loc 1 106 0
	mvn	r4, #0
	.loc 1 107 0
	mov	r0, #0
	mov	r1, #1048576
	.loc 1 108 0
	mov	r2, #0
.LVL245:
.L183:
	.loc 1 106 0
	strd	r4, [ip, #32]
	strd	r4, [ip, #48]
	.loc 1 107 0
	strd	r0, [ip, #40]
	strd	r0, [ip, #56]
	.loc 1 108 0
	strd	r2, [ip, #104]
	strd	r2, [ip, #96]
	add	ip, ip, #152
.LVL246:
.LBE87:
	.loc 1 103 0 discriminator 1
	cmp	ip, lr
	bne	.L183
.LVL247:
.L184:
.LBE86:
.LBE85:
	.loc 1 299 0
	ldr	r2, [sp, #140]
	mov	r3, #0
	str	r3, [r2, #48]
	b	.L180
.LVL248:
.L254:
.LBB88:
.LBB84:
.LBB78:
	.loc 1 166 0 discriminator 8
	mvn	r2, #0
	ldr	r3, .L263+156
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub(PLT)
.LVL249:
	mvn	r2, #0
	ldr	r3, .L263+156
	bic	r5, r1, #-2147483648
	str	r0, [sp, #16]
	str	r5, [sp, #20]
	mov	r4, r0
	ldrd	r0, [sp, #16]
	bl	__aeabi_dcmplt(PLT)
.LVL250:
	mov	r2, r6
	mov	r3, r7
	mov	r1, r9
	cmp	r0, #0
	mov	r0, r8
	beq	.L241
	bl	__aeabi_dsub(PLT)
.LVL251:
	bic	r1, r1, #-2147483648
	b	.L185
.L238:
	.loc 1 156 0
	mov	r0, r8
	mov	r1, r9
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dcmpeq(PLT)
.LVL252:
	cmp	r0, #0
	beq	.L239
	.loc 1 157 0
	ldrd	r2, [fp, #136]
	.loc 1 158 0
	mov	r0, r8
	.loc 1 157 0
	adds	r2, r2, #1
	adc	r3, r3, #0
	strd	r2, [fp, #136]
	.loc 1 158 0
	mov	r1, r9
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dcmpeq(PLT)
.LVL253:
	cmp	r0, #0
	beq	.L240
	.loc 1 158 0 is_stmt 0 discriminator 1
	ldrd	r0, [fp, #72]
	mov	r2, #0
	ldr	r3, .L263
	bl	__aeabi_dadd(PLT)
.LVL254:
.L109:
	.loc 1 158 0 discriminator 4
	strd	r0, [fp, #72]
	b	.L106
.L242:
	.loc 1 167 0 is_stmt 1 discriminator 4
	mov	r2, r8
	mov	r3, r9
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub(PLT)
.LVL255:
	ldr	r3, .L263+132
	mov	r2, #0
	bic	r6, r1, #-2147483648
	str	r0, [sp, #88]
	str	r6, [sp, #92]
	mov	r7, r0
	ldrd	r0, [sp, #88]
	bl	__aeabi_dcmplt(PLT)
.LVL256:
	ldr	r3, [sp, #8]
	cmp	r0, #0
	moveq	r3, r7
	str	r3, [sp, #8]
	moveq	r10, r6
	b	.L118
.L241:
	bl	__aeabi_dsub(PLT)
.LVL257:
	.loc 1 166 0 discriminator 17
	ldr	r3, .L263+156
	str	r3, [sp, #32]
	mvn	r3, #0
	str	r3, [sp, #16]
	mov	r4, r0
	bic	r5, r1, #-2147483648
	b	.L115
.L236:
	.loc 1 147 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dcmpeq(PLT)
.LVL258:
	cmp	r0, #0
	beq	.L98
	.loc 1 148 0
	ldrd	r0, [fp, #64]
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul(PLT)
.LVL259:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [fp, #80]
	bl	__aeabi_dadd(PLT)
.LVL260:
	strd	r0, [fp, #80]
	b	.L98
.L239:
	.loc 1 159 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dcmpeq(PLT)
.LVL261:
	cmp	r0, #0
	beq	.L106
	.loc 1 160 0
	ldrd	r0, [fp, #72]
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul(PLT)
.LVL262:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [fp, #88]
	bl	__aeabi_dadd(PLT)
.LVL263:
	strd	r0, [fp, #88]
	b	.L106
.L237:
	.loc 1 146 0 discriminator 2
	mov	r0, #0
	ldr	r1, .L263
	b	.L101
.L240:
	.loc 1 158 0 discriminator 2
	mov	r0, #0
	ldr	r1, .L263
	b	.L109
.LVL264:
.L255:
	strd	r2, [fp, #144]
	ldrd	r2, [sp, #48]
	strd	r2, [fp, #120]
	ldr	r3, [sp, #144]
.LVL265:
.L123:
.LBE78:
.LBE84:
.LBE88:
	.loc 1 274 0 discriminator 1
	ldr	r2, [sp, #152]
	add	fp, fp, #152
.LVL266:
	cmp	r3, r2
	ldr	r3, [sp, #96]
	add	r3, r3, #152
	str	r3, [sp, #96]
	bne	.L94
	.loc 1 292 0
	ldr	r3, [sp, #140]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L153
.LVL267:
.L257:
.LBB89:
.LBB90:
	.loc 1 208 0 discriminator 1
	ldr	r3, [sp, #148]
	cmp	r3, #0
	ble	.L194
.LBB91:
.LBB92:
.LBB93:
	.loc 1 185 0
	ldr	ip, .L263+4
.LBE93:
.LBE92:
.LBE91:
	.loc 1 208 0 discriminator 1
	mov	r3, #0
.LBB112:
.LBB101:
.LBB94:
	.loc 1 185 0
.LPIC60:
	add	ip, pc, ip
	str	ip, [sp, #192]
	.loc 1 189 0
	ldr	ip, .L263+8
.LBE94:
.LBE101:
.LBE112:
	.loc 1 208 0 discriminator 1
	mov	r2, #0
.LBB113:
.LBB102:
.LBB95:
	.loc 1 189 0
.LPIC63:
	add	ip, pc, ip
.LBE95:
.LBE102:
.LBE113:
	.loc 1 208 0 discriminator 1
	mov	r1, #1048576
.LBB114:
.LBB103:
.LBB96:
	.loc 1 189 0
	str	ip, [sp, #204]
	ldr	ip, .L263+12
.LBE96:
.LBE103:
.LBE114:
	.loc 1 208 0 discriminator 1
	mov	r7, r1
	mov	r0, #0
	ldr	r1, .L263+156
	strd	r2, [sp, #64]
	strd	r2, [sp, #56]
	strd	r2, [sp, #48]
	strd	r2, [sp, #40]
	strd	r2, [sp, #168]
	ldr	fp, [sp, #200]
	add	r3, sp, #216
	mov	r4, #0
	mov	r5, #0
	mov	r6, r0
	mov	r9, #0
	mvn	r0, #0
.LBB115:
.LBB104:
.LBB97:
	.loc 1 189 0
.LPIC64:
	add	ip, pc, ip
	str	r3, [sp, #104]
	add	r3, sp, #344
.LBE97:
.LBE104:
.LBE115:
	.loc 1 208 0 discriminator 1
	str	r9, [sp, #80]
	strd	r6, [sp, #184]
	strd	r0, [sp, #176]
	strd	r4, [sp, #32]
.LBB116:
.LBB105:
.LBB98:
	.loc 1 189 0
	str	ip, [sp, #208]
.LBE98:
.LBE105:
.LBE116:
	.loc 1 208 0 discriminator 1
	str	r9, [sp, #8]
	str	r6, [sp, #144]
	str	r7, [sp, #148]
.LVL268:
	strd	r0, [sp, #160]
	str	r0, [sp, #152]
	str	r1, [sp, #156]
	strd	r4, [sp, #72]
	strd	r4, [sp, #96]
	strd	r4, [sp, #88]
	str	r3, [sp, #112]
.LVL269:
.L174:
.LBB117:
	.loc 1 209 0
	ldr	r2, [sp, #140]
	mov	r8, #152
	ldr	r3, [r2, #4]
	mla	r8, r9, r8, r3
.LVL270:
	.loc 1 211 0
	ldrd	r2, [r2, #16]
	ldrd	r0, [r8, #144]
	cmp	r1, r3
	cmpeq	r0, r2
	strd	r0, [sp, #16]
	bcc	.L155
	bl	__aeabi_ul2d(PLT)
.LVL271:
	ldrd	r2, [r8, #16]
	ldrd	r6, [r8, #40]
	strd	r2, [sp, #120]
	ldrd	r2, [r8, #32]
	strd	r2, [sp, #24]
	strd	r0, [sp, #128]
.L156:
	.loc 1 214 0
	ldrd	r4, [r8, #48]
	ldr	r2, [sp, #152]
	ldr	r3, [sp, #156]
	mov	r1, r5
	mov	r0, r4
	bl	__aeabi_dcmplt(PLT)
.LVL272:
	.loc 1 215 0
	ldr	r2, [sp, #144]
	ldr	r3, [sp, #148]
	.loc 1 214 0
	cmp	r0, #0
	.loc 1 214 0 is_stmt 0 discriminator 1
	strne	r4, [sp, #152]
.LVL273:
	strne	r5, [sp, #156]
	.loc 1 215 0 is_stmt 1
	ldrd	r4, [r8, #56]
	mov	r1, r5
	mov	r0, r4
	bl	__aeabi_dcmplt(PLT)
.LVL274:
	.loc 1 216 0
	ldrd	r2, [sp, #160]
	.loc 1 215 0
	cmp	r0, #0
	.loc 1 215 0 is_stmt 0 discriminator 2
	streq	r4, [sp, #144]
.LVL275:
	streq	r5, [sp, #148]
	.loc 1 216 0 is_stmt 1
	ldrd	r4, [r8, #96]
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmplt(PLT)
.LVL276:
	cmp	r0, #0
	.loc 1 216 0 is_stmt 0 discriminator 1
	strned	r4, [sp, #160]
.LVL277:
.L159:
	.loc 1 217 0 is_stmt 1
	ldrd	r4, [r8, #104]
	ldrd	r2, [sp, #168]
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmplt(PLT)
.LVL278:
	cmp	r0, #0
	.loc 1 217 0 is_stmt 0 discriminator 2
	streqd	r4, [sp, #168]
.LVL279:
.L160:
	.loc 1 218 0 is_stmt 1
	ldrd	r0, [sp, #40]
	ldrd	r2, [r8, #112]
	bl	__aeabi_dadd(PLT)
.LVL280:
	.loc 1 219 0
	ldrd	r2, [sp, #24]
	.loc 1 218 0
	strd	r0, [sp, #40]
.LVL281:
	.loc 1 219 0
	ldrd	r0, [sp, #176]
.LVL282:
	bl	__aeabi_dcmpgt(PLT)
.LVL283:
	cmp	r0, #0
	.loc 1 219 0 is_stmt 0 discriminator 1
	ldrned	r2, [sp, #24]
	strned	r2, [sp, #176]
.LVL284:
.L161:
	.loc 1 220 0 is_stmt 1
	ldrd	r0, [sp, #184]
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dcmpgt(PLT)
.LVL285:
	cmp	r0, #0
	.loc 1 220 0 is_stmt 0 discriminator 2
	streqd	r6, [sp, #184]
.LVL286:
.L162:
	.loc 1 222 0 is_stmt 1
	ldrd	r2, [sp, #120]
	ldrd	r0, [sp, #48]
	bl	__aeabi_dadd(PLT)
.LVL287:
	.loc 1 223 0
	ldrd	r6, [r8, #128]
	ldrd	r4, [sp, #88]
	.loc 1 224 0
	ldrd	r2, [r8, #136]
	.loc 1 223 0
	adds	r4, r4, r6
	adc	r5, r5, r7
	.loc 1 224 0
	strd	r2, [sp, #24]
	ldrd	r6, [sp, #24]
	.loc 1 223 0
	strd	r4, [sp, #88]
.LVL288:
	.loc 1 224 0
	ldrd	r4, [sp, #96]
	.loc 1 221 0
	ldr	lr, [r8, #12]
	.loc 1 224 0
	adds	r6, r6, r4
	adc	r7, r7, r5
	.loc 1 225 0
	ldrd	r2, [r8, #80]
	.loc 1 224 0
	mov	r4, r6
	mov	r5, r7
	strd	r4, [sp, #96]
.LVL289:
	.loc 1 221 0
	mov	r4, lr
	.loc 1 232 0
	add	r9, r9, #1
.LVL290:
	.loc 1 222 0
	strd	r0, [sp, #48]
.LVL291:
	.loc 1 225 0
	ldrd	r0, [sp, #56]
	bl	__aeabi_dadd(PLT)
.LVL292:
	.loc 1 226 0
	ldrd	r2, [r8, #88]
	.loc 1 225 0
	strd	r0, [sp, #56]
.LVL293:
	.loc 1 226 0
	ldrd	r0, [sp, #64]
.LVL294:
	bl	__aeabi_dadd(PLT)
.LVL295:
	.loc 1 221 0
	ldr	r6, [r8, #8]
	.loc 1 229 0
	str	r4, [sp, #120]
	ldr	r10, [sp, #80]
	str	r6, [sp, #80]
.LVL296:
	ldr	ip, [sp, #8]
	mov	r2, r10
	bic	r3, ip, #-2147483648
	.loc 1 226 0
	strd	r0, [sp, #64]
.LVL297:
	.loc 1 229 0
	bic	r1, r4, #-2147483648
	.loc 1 227 0
	ldrd	r4, [r8, #120]
	.loc 1 229 0
	mov	r0, r6
.LVL298:
	.loc 1 227 0
	strd	r4, [sp, #24]
	.loc 1 228 0
	ldrd	r6, [sp, #32]
	ldrd	r4, [sp, #16]
	adds	r4, r4, r6
	adc	r5, r5, r7
	strd	r4, [sp, #32]
.LVL299:
	.loc 1 227 0
	ldrd	r6, [sp, #24]
	ldrd	r4, [sp, #72]
	orr	r6, r6, r4
	orr	r7, r7, r5
	mov	r4, r6
	mov	r5, r7
	strd	r4, [sp, #72]
.LVL300:
	.loc 1 229 0
	bl	__aeabi_dcmpgt(PLT)
.LVL301:
	.loc 1 232 0
	ldr	r6, [sp, #80]
	ldr	lr, [sp, #120]
	.loc 1 230 0
	mov	ip, r10
	.loc 1 232 0
	ldrd	r2, [sp, #128]
	mov	r1, lr
	.loc 1 230 0
	cmp	r0, #0
	movne	ip, r6
	str	ip, [sp, #80]
	.loc 1 232 0
	mov	r0, r6
	.loc 1 230 0
	ldr	ip, [sp, #8]
	movne	ip, lr
	str	ip, [sp, #8]
.LVL302:
	.loc 1 232 0
	bl	__aeabi_ddiv(PLT)
.LVL303:
.LBB106:
.LBB99:
	.loc 1 185 0
	ldr	r2, [sp, #192]
	strd	r0, [sp]
	ldr	r0, [sp, #104]
	mov	r1, #128
	bl	snprintf(PLT)
.LVL304:
	.loc 1 186 0
	cmp	r9, #0
	bne	.L259
	.loc 1 189 0
	ldr	r0, [sp, #112]
	mov	r1, #128
	ldr	r2, [sp, #204]
	ldr	r3, [sp, #208]
	bl	snprintf(PLT)
.LVL305:
.L166:
	.loc 1 190 0
	ldr	r1, [sp, #112]
	ldr	r2, [sp, #104]
	mov	r3, #0
	mov	r0, fp
	bl	av_dict_set(PLT)
.LVL306:
.LBE99:
.LBE106:
	.loc 1 233 0
	ldrd	r2, [r8, #48]
	mov	r0, fp
	strd	r2, [sp]
	ldr	r2, .L263+16
	mov	r1, r9
.LPIC65:
	add	r2, pc, r2
	bl	set_meta.constprop.3(PLT)
.LVL307:
	.loc 1 234 0
	ldrd	r2, [r8, #56]
	mov	r0, fp
	strd	r2, [sp]
	ldr	r2, .L263+20
	mov	r1, r9
.LPIC66:
	add	r2, pc, r2
	bl	set_meta.constprop.3(PLT)
.LVL308:
	.loc 1 235 0
	ldrd	r2, [r8, #96]
	mov	r0, fp
	strd	r2, [sp]
	ldr	r2, .L263+24
	mov	r1, r9
.LPIC67:
	add	r2, pc, r2
	bl	set_meta.constprop.3(PLT)
.LVL309:
	.loc 1 236 0
	ldrd	r2, [r8, #104]
	mov	r0, fp
	strd	r2, [sp]
	ldr	r2, .L263+28
	mov	r1, r9
.LPIC68:
	add	r2, pc, r2
	bl	set_meta.constprop.3(PLT)
.LVL310:
	.loc 1 237 0
	ldrd	r0, [r8, #144]
	ldr	r4, .L263+32
.LVL311:
	subs	r0, r0, #1
	sbc	r1, r1, #0
	bl	__aeabi_ul2d(PLT)
.LVL312:
.LPIC69:
	add	r4, pc, r4
	.loc 1 238 0 discriminator 5
	ldr	r6, .L263+36
.LVL313:
	.loc 1 239 0 discriminator 2
	ldr	r5, .L263+40
	.loc 1 238 0 discriminator 5
.LPIC70:
	add	r6, pc, r6
	.loc 1 239 0 discriminator 2
.LPIC71:
	add	r5, pc, r5
	.loc 1 237 0
	mov	r3, r1
	mov	r2, r0
	ldrd	r0, [r8, #112]
	bl	__aeabi_ddiv(PLT)
.LVL314:
	mov	r2, r4
	strd	r0, [sp]
	mov	r0, fp
	mov	r1, r9
	bl	set_meta.constprop.3(PLT)
.LVL315:
	.loc 1 238 0
	ldr	r4, [r8, #52]
	ldr	ip, [r8, #56]
	ldr	r7, [r8, #60]
	ldr	r10, [r8, #48]
	add	r4, r4, #-2147483648
	mov	r1, r4
	mov	r2, ip
	mov	r3, r7
	mov	r0, r10
	str	ip, [sp, #16]
	bl	__aeabi_dcmpgt(PLT)
.LVL316:
	.loc 1 238 0 is_stmt 0 discriminator 4
	ldr	ip, [sp, #16]
	.loc 1 238 0 discriminator 2
	cmp	r0, #0
	.loc 1 238 0 discriminator 4
	movne	r1, r4
	moveq	r0, ip
	movne	r0, r10
	moveq	r1, r7
	bl	log10(PLT)
.LVL317:
	ldr	r3, .L263+112
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL318:
	.loc 1 238 0 discriminator 5
	mov	r2, r6
	strd	r0, [sp]
	mov	r0, fp
	mov	r1, r9
	bl	set_meta.constprop.3(PLT)
.LVL319:
	.loc 1 239 0 is_stmt 1
	ldrd	r0, [r8, #144]
	bl	__aeabi_ul2d(PLT)
.LVL320:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [r8, #16]
	bl	__aeabi_ddiv(PLT)
.LVL321:
	bl	sqrt(PLT)
.LVL322:
	.loc 1 239 0 is_stmt 0 discriminator 1
	bl	log10(PLT)
.LVL323:
	.loc 1 239 0
	ldr	r3, .L263+112
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL324:
	.loc 1 239 0 discriminator 2
	mov	r2, r5
	strd	r0, [sp]
	mov	r0, fp
	mov	r1, r9
	bl	set_meta.constprop.3(PLT)
.LVL325:
	.loc 1 240 0 is_stmt 1
	ldrd	r0, [r8, #40]
	bl	sqrt(PLT)
.LVL326:
	.loc 1 240 0 is_stmt 0 discriminator 1
	bl	log10(PLT)
.LVL327:
	.loc 1 240 0
	ldr	r3, .L263+112
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL328:
	.loc 1 240 0 discriminator 2
	ldr	r2, .L263+44
.LPIC72:
	add	r2, pc, r2
	strd	r0, [sp]
	mov	r0, fp
	mov	r1, r9
	bl	set_meta.constprop.3(PLT)
.LVL329:
	.loc 1 241 0 is_stmt 1
	ldrd	r0, [r8, #32]
	bl	sqrt(PLT)
.LVL330:
	.loc 1 241 0 is_stmt 0 discriminator 1
	bl	log10(PLT)
.LVL331:
	.loc 1 241 0
	ldr	r3, .L263+112
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL332:
	.loc 1 241 0 discriminator 2
	ldr	r2, .L263+48
.LPIC73:
	add	r2, pc, r2
	strd	r0, [sp]
	mov	r0, fp
	mov	r1, r9
	bl	set_meta.constprop.3(PLT)
.LVL333:
	.loc 1 242 0 is_stmt 1
	ldrd	r4, [r8, #16]
	mov	r2, #0
	mov	r3, #0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpeq(PLT)
.LVL334:
	cmp	r0, #0
	bne	.L251
	.loc 1 242 0 is_stmt 0 discriminator 1
	ldr	r6, [r8, #52]
	ldr	ip, [r8, #56]
	ldr	r7, [r8, #48]
	ldr	r10, [r8, #60]
	add	r6, r6, #-2147483648
	mov	r2, ip
	mov	r1, r6
	mov	r3, r10
	mov	r0, r7
	str	ip, [sp, #16]
	bl	__aeabi_dcmpgt(PLT)
.LVL335:
	.loc 1 242 0 discriminator 4
	ldr	ip, [sp, #16]
	cmp	r0, #0
	.loc 1 242 0 discriminator 6
	ldrd	r0, [r8, #144]
	.loc 1 242 0 discriminator 4
	moveq	r7, ip
	moveq	r6, r10
	.loc 1 242 0 discriminator 6
	bl	__aeabi_ul2d(PLT)
.LVL336:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv(PLT)
.LVL337:
	bl	sqrt(PLT)
.LVL338:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_ddiv(PLT)
.LVL339:
.L168:
	.loc 1 242 0 discriminator 9
	ldr	r2, .L263+52
	strd	r0, [sp]
.LPIC74:
	add	r2, pc, r2
	mov	r0, fp
	mov	r1, r9
	bl	set_meta.constprop.3(PLT)
.LVL340:
	.loc 1 243 0 is_stmt 1
	ldrd	r2, [r8, #88]
	ldrd	r0, [r8, #80]
	bl	__aeabi_dadd(PLT)
.LVL341:
	ldrd	r4, [r8, #136]
	.loc 1 243 0 is_stmt 0 discriminator 1
	ldr	r10, .L263+56
.LPIC75:
	add	r10, pc, r10
	.loc 1 243 0
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, [r8, #128]
	adds	r0, r0, r4
	adc	r1, r1, r5
	bl	__aeabi_ul2d(PLT)
.LVL342:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv(PLT)
.LVL343:
	bl	log10(PLT)
.LVL344:
	ldr	r3, .L263+112
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL345:
	.loc 1 243 0 discriminator 1
	mov	r2, r10
	.loc 1 244 0 is_stmt 1
	ldr	r6, .L263+60
.LPIC76:
	add	r6, pc, r6
	.loc 1 243 0 discriminator 1
	strd	r0, [sp]
	mov	r0, fp
	mov	r1, r9
	bl	set_meta.constprop.3(PLT)
.LVL346:
	.loc 1 244 0
	ldrd	r4, [r8, #136]
	ldrd	r0, [r8, #128]
	adds	r0, r0, r4
	adc	r1, r1, r5
	bl	__aeabi_ul2f(PLT)
.LVL347:
	bl	__aeabi_f2d(PLT)
.LVL348:
	mov	r2, r6
	strd	r0, [sp]
	mov	r0, fp
	mov	r1, r9
	bl	set_meta.constprop.3(PLT)
.LVL349:
	.loc 1 245 0
	ldrd	r2, [r8, #120]
.LVL350:
.LBB107:
.LBB108:
	.loc 1 130 0
	mov	r0, #64
	b	.L171
.L264:
	.align	2
.L263:
	.word	1072693248
	.word	.LC18-(.LPIC60+8)
	.word	.LC19-(.LPIC63+8)
	.word	.LC21-(.LPIC64+8)
	.word	.LC22-(.LPIC65+8)
	.word	.LC23-(.LPIC66+8)
	.word	.LC24-(.LPIC67+8)
	.word	.LC25-(.LPIC68+8)
	.word	.LC26-(.LPIC69+8)
	.word	.LC27-(.LPIC70+8)
	.word	.LC28-(.LPIC71+8)
	.word	.LC29-(.LPIC72+8)
	.word	.LC30-(.LPIC73+8)
	.word	.LC31-(.LPIC74+8)
	.word	.LC32-(.LPIC75+8)
	.word	.LC33-(.LPIC76+8)
	.word	.LC34-(.LPIC77+8)
	.word	.LC35-(.LPIC78+8)
	.word	.LC36-(.LPIC79+8)
	.word	.LC37-(.LPIC80+8)
	.word	.LC38-(.LPIC81+8)
	.word	.LC39-(.LPIC82+8)
	.word	.LC40-(.LPIC83+8)
	.word	.LC45-(.LPIC88+8)
	.word	.LC41-(.LPIC84+8)
	.word	.LC42-(.LPIC85+8)
	.word	.LC43-(.LPIC86+8)
	.word	.LC44-(.LPIC87+8)
	.word	1077149696
	.word	.LC46-(.LPIC89+8)
	.word	.LC47-(.LPIC90+8)
	.word	.LC48-(.LPIC91+8)
	.word	1138753536
	.word	-1074790400
	.word	1072693248
	.word	.LC21-(.LPIC62+8)
	.word	.LC20-(.LPIC61+8)
	.word	1352628735
	.word	1080247315
	.word	2146435071
	.word	1190603330
	.word	-1067238799
.LVL351:
.L173:
	.loc 1 132 0 discriminator 3
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
.LVL352:
	.loc 1 132 0 is_stmt 0 discriminator 1
	subs	r0, r0, #1
.LVL353:
	beq	.L199
.LVL354:
.L171:
	.loc 1 132 0 discriminator 2
	and	r4, r2, #1
	mov	r5, #0
	orrs	r1, r4, r5
	beq	.L173
	bl	__aeabi_ui2d(PLT)
.LVL355:
.L172:
.LBE108:
.LBE107:
	.loc 1 245 0 is_stmt 1 discriminator 1
	ldr	r2, .L263+64
	strd	r0, [sp]
.LPIC77:
	add	r2, pc, r2
	mov	r0, fp
	mov	r1, r9
	bl	set_meta.constprop.3(PLT)
.LVL356:
.LBE117:
	.loc 1 208 0 discriminator 1
	ldr	r3, [sp, #140]
	ldr	r4, [r3, #8]
	cmp	r9, r4
	blt	.L174
	ldrd	r0, [sp, #184]
	bl	sqrt(PLT)
.LVL357:
	bl	log10(PLT)
.LVL358:
	ldr	fp, [sp, #156]
	ldr	r10, [sp, #152]
	add	fp, fp, #-2147483648
	strd	r0, [sp, #16]
	ldrd	r0, [sp, #176]
	bl	sqrt(PLT)
.LVL359:
	ldrd	r2, [sp, #96]
	ldrd	r8, [sp, #88]
.LVL360:
	adds	r8, r8, r2
	adc	r9, r9, r3
.LVL361:
	bl	log10(PLT)
.LVL362:
	strd	r0, [sp, #24]
	ldrd	r0, [sp, #32]
.LVL363:
.L154:
	.loc 1 248 0
	mov	r2, r4
	mov	r3, r4, asr #31
	bl	__aeabi_uldivmod(PLT)
.LVL364:
	bl	__aeabi_ul2d(PLT)
.LVL365:
	ldr	r4, .L263+68
.LPIC78:
	add	r4, pc, r4
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #80]
	ldr	r1, [sp, #8]
	bl	__aeabi_ddiv(PLT)
.LVL366:
	ldr	r6, [sp, #200]
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r4
	bl	set_meta.constprop.2(PLT)
.LVL367:
	.loc 1 249 0
	ldr	r1, .L263+72
	mov	r0, r6
	ldr	r2, [sp, #152]
	ldr	r3, [sp, #156]
.LPIC79:
	add	r1, pc, r1
	bl	set_meta.constprop.2(PLT)
.LVL368:
	.loc 1 250 0
	ldr	r5, [sp, #144]
	ldr	r7, [sp, #148]
	ldr	r1, .L263+76
	mov	r0, r6
	mov	r2, r5
	mov	r3, r7
.LPIC80:
	add	r1, pc, r1
	bl	set_meta.constprop.2(PLT)
.LVL369:
	.loc 1 251 0
	ldr	r1, .L263+80
	mov	r0, r6
	ldrd	r2, [sp, #160]
.LPIC81:
	add	r1, pc, r1
	bl	set_meta.constprop.2(PLT)
.LVL370:
	.loc 1 252 0
	ldr	r1, .L263+84
	mov	r0, r6
	ldrd	r2, [sp, #168]
.LPIC82:
	add	r1, pc, r1
	bl	set_meta.constprop.2(PLT)
.LVL371:
	.loc 1 253 0
	ldr	r3, [sp, #140]
	ldr	r4, .L263+88
	ldr	r0, [r3, #8]
	ldrd	r2, [sp, #32]
.LPIC83:
	add	r4, pc, r4
	subs	r2, r2, r0
	sbc	r3, r3, r0, asr #31
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_ul2d(PLT)
.LVL372:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [sp, #40]
	bl	__aeabi_ddiv(PLT)
.LVL373:
	str	r6, [sp, #200]
.LVL374:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r4
	bl	set_meta.constprop.2(PLT)
.LVL375:
	.loc 1 254 0
	mov	r2, r10
	mov	r1, r7
	mov	r0, r5
	mov	r3, fp
	str	r5, [sp, #144]
	str	r7, [sp, #148]
	bl	__aeabi_dcmplt(PLT)
.LVL376:
	.loc 1 254 0 is_stmt 0 discriminator 4
	ldr	r3, [sp, #144]
	.loc 1 258 0 is_stmt 1 discriminator 1
	ldr	ip, .L263+92
	.loc 1 254 0 discriminator 5
	ldr	r7, .L263+96
	.loc 1 258 0 discriminator 1
.LPIC88:
	add	ip, pc, ip
	str	ip, [sp, #8]
	.loc 1 254 0 discriminator 5
.LPIC84:
	add	r7, pc, r7
	.loc 1 255 0 discriminator 2
	ldr	r6, .L263+100
	.loc 1 256 0 discriminator 2
	ldr	r5, .L263+104
	.loc 1 255 0 discriminator 2
.LPIC85:
	add	r6, pc, r6
	.loc 1 256 0 discriminator 2
.LPIC86:
	add	r5, pc, r5
	.loc 1 257 0 discriminator 2
	ldr	r4, .L263+108
.LPIC87:
	add	r4, pc, r4
	.loc 1 254 0 discriminator 2
	cmp	r0, #0
	.loc 1 254 0 is_stmt 0 discriminator 4
	movne	r3, r10
	mov	r0, r3
	ldr	r3, [sp, #148]
	movne	r3, fp
	mov	r1, r3
	bl	log10(PLT)
.LVL377:
	mov	r2, #0
	ldr	r3, .L263+112
	bl	__aeabi_dmul(PLT)
.LVL378:
	.loc 1 254 0 discriminator 5
	ldr	r10, [sp, #200]
	.loc 1 254 0 discriminator 4
	mov	r2, r0
	mov	r3, r1
	.loc 1 254 0 discriminator 5
	mov	r0, r10
	mov	r1, r7
	bl	set_meta.constprop.2(PLT)
.LVL379:
	.loc 1 255 0 is_stmt 1
	ldrd	r0, [sp, #32]
	bl	__aeabi_ul2d(PLT)
.LVL380:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [sp, #48]
	bl	__aeabi_ddiv(PLT)
.LVL381:
	bl	sqrt(PLT)
.LVL382:
	.loc 1 255 0 is_stmt 0 discriminator 1
	bl	log10(PLT)
.LVL383:
	.loc 1 255 0
	mov	r2, #0
	ldr	r3, .L263+112
	bl	__aeabi_dmul(PLT)
.LVL384:
	mov	r2, r0
	mov	r3, r1
	.loc 1 255 0 discriminator 2
	mov	r0, r10
	mov	r1, r6
	bl	set_meta.constprop.2(PLT)
.LVL385:
	.loc 1 256 0 is_stmt 1
	ldrd	r0, [sp, #16]
	mov	r2, #0
	ldr	r3, .L263+112
	bl	__aeabi_dmul(PLT)
.LVL386:
	mov	r2, r0
	mov	r3, r1
	.loc 1 256 0 is_stmt 0 discriminator 2
	mov	r0, r10
	mov	r1, r5
	bl	set_meta.constprop.2(PLT)
.LVL387:
	.loc 1 257 0 is_stmt 1
	ldrd	r0, [sp, #24]
	mov	r2, #0
	ldr	r3, .L263+112
	bl	__aeabi_dmul(PLT)
.LVL388:
	mov	r2, r0
	mov	r3, r1
	.loc 1 257 0 is_stmt 0 discriminator 2
	mov	r0, r10
	mov	r1, r4
	bl	set_meta.constprop.2(PLT)
.LVL389:
	.loc 1 258 0 is_stmt 1
	ldrd	r2, [sp, #64]
	ldrd	r0, [sp, #56]
	bl	__aeabi_dadd(PLT)
.LVL390:
	mov	r4, r0
	mov	r5, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_ul2d(PLT)
.LVL391:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv(PLT)
.LVL392:
	bl	log10(PLT)
.LVL393:
	mov	r2, #0
	ldr	r3, .L263+112
	bl	__aeabi_dmul(PLT)
.LVL394:
	.loc 1 258 0 is_stmt 0 discriminator 1
	ldr	ip, [sp, #8]
	.loc 1 258 0
	mov	r2, r0
	mov	r3, r1
	.loc 1 258 0 discriminator 1
	mov	r0, r10
	mov	r1, ip
	bl	set_meta.constprop.2(PLT)
.LVL395:
	.loc 1 259 0 is_stmt 1
	mov	r1, r9
	mov	r0, r8
	bl	__aeabi_ul2f(PLT)
.LVL396:
	bl	__aeabi_f2d(PLT)
.LVL397:
	ldr	r3, [sp, #140]
	mov	r4, r0
	ldr	r0, [r3, #8]
	mov	r5, r1
	bl	__aeabi_i2d(PLT)
.LVL398:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv(PLT)
.LVL399:
	mov	r3, r1
	ldr	r1, .L263+116
	mov	r2, r0
.LPIC89:
	add	r1, pc, r1
	mov	r0, r10
	bl	set_meta.constprop.2(PLT)
.LVL400:
.LBB118:
.LBB119:
	.loc 1 130 0
	mov	r0, #64
	ldrd	r2, [sp, #72]
	b	.L176
.LVL401:
.L178:
	.loc 1 132 0 discriminator 3
	movs	r3, r3, lsr #1
	mov	r2, r2, rrx
.LVL402:
	.loc 1 132 0 is_stmt 0 discriminator 1
	subs	r0, r0, #1
.LVL403:
	beq	.L200
.LVL404:
.L176:
	.loc 1 132 0 discriminator 2
	and	r4, r2, #1
	mov	r5, #0
	orrs	r1, r4, r5
	beq	.L178
	bl	__aeabi_ui2d(PLT)
.LVL405:
	mov	r2, r0
	mov	r3, r1
.L177:
.LBE119:
.LBE118:
	.loc 1 260 0 is_stmt 1 discriminator 1
	ldr	r5, [sp, #200]
	ldr	r1, .L263+120
	mov	r0, r5
.LPIC90:
	add	r1, pc, r1
	bl	set_meta.constprop.2(PLT)
.LVL406:
	.loc 1 261 0
	ldr	r3, [sp, #140]
	ldrd	r0, [sp, #32]
	ldr	r2, [r3, #8]
	ldr	r4, .L263+124
	mov	r3, r2, asr #31
	bl	__aeabi_uldivmod(PLT)
.LVL407:
	bl	__aeabi_ul2d(PLT)
.LVL408:
.LPIC91:
	add	r4, pc, r4
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r4
	bl	set_meta.constprop.2(PLT)
.LVL409:
	b	.L153
.LVL410:
.L90:
.LBE90:
.LBE89:
	.loc 1 285 0 discriminator 1
	ldr	r3, [sp, #196]
	ldr	r2, [r3, #76]
.LVL411:
	.loc 1 283 0
	ldr	r3, [r3, #64]
	.loc 1 285 0 discriminator 1
	cmp	r2, #0
	.loc 1 283 0
	ldr	r3, [r3]
	.loc 1 285 0 discriminator 1
	str	r2, [sp, #104]
	.loc 1 283 0
	str	r3, [sp, #88]
.LVL412:
	.loc 1 285 0 discriminator 1
	ble	.L89
	ldr	r2, [sp, #148]
	mov	r3, #152
.LVL413:
	mov	r1, r2
	mul	r1, r3, r1
	mov	r3, r2, asl #3
	str	r3, [sp, #112]
	mov	r3, #0
	str	r1, [sp, #72]
	str	r3, [sp, #96]
.LVL414:
.L124:
	.loc 1 286 0 discriminator 1
	ldr	r3, [sp, #148]
	cmp	r3, #0
	ble	.L152
	ldr	r4, [sp, #140]
	mov	r8, #0
	ldrd	r2, [r4, #32]
	mov	fp, r8
	mov	r1, r3
	ldr	r3, [r4, #4]
	mov	r0, r2
	strd	r0, [sp, #48]
	mov	r2, r0
	mov	r9, r3
	str	r3, [sp, #40]
	mov	r0, #0
	mov	r3, r1
	ldr	r1, .L263+136
	bl	__aeabi_dsub(PLT)
.LVL415:
	ldrd	r2, [r4, #16]
	mov	r10, r9
	strd	r2, [sp, #64]
	ldr	r3, [sp, #88]
	sub	r3, r3, #8
	str	r3, [sp, #32]
	strd	r0, [sp, #56]
	b	.L151
.LVL416:
.L262:
.LBB124:
.LBB125:
	.loc 1 141 0
	ldr	r3, .L263+136
	mov	r2, #0
	strd	r2, [r10, #64]
	.loc 1 142 0
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r10, #80]
	.loc 1 143 0
	mov	r2, #1
	mov	r3, #0
	strd	r2, [r10, #128]
	ldr	r3, [sp, #40]
	.loc 1 140 0
	strd	r8, [r10, #48]
	ldrd	r2, [r3, fp]
	strd	r2, [sp, #24]
.L127:
	.loc 1 151 0
	ldrd	r4, [r10, #56]
	mov	r0, r8
	mov	r1, r9
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dcmpgt(PLT)
.LVL417:
	cmp	r0, #0
	beq	.L246
	.loc 1 153 0
	ldr	r3, .L263+136
	mov	r2, #0
	strd	r2, [r10, #72]
	.loc 1 154 0
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r10, #88]
	.loc 1 155 0
	mov	r2, #1
	mov	r3, #0
	.loc 1 152 0
	strd	r8, [r10, #56]
	.loc 1 155 0
	strd	r2, [r10, #136]
.L135:
	.loc 1 163 0
	ldrd	r0, [r10, #8]
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dadd(PLT)
.LVL418:
	.loc 1 164 0
	mov	r2, r8
	mov	r3, r9
	.loc 1 163 0
	strd	r0, [r10, #8]
	.loc 1 164 0
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL419:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [r10, #16]
	bl	__aeabi_dadd(PLT)
.LVL420:
	.loc 1 165 0
	ldrd	r2, [r10, #24]
	.loc 1 164 0
	strd	r0, [r10, #16]
	.loc 1 165 0
	ldrd	r0, [sp, #48]
	bl	__aeabi_dmul(PLT)
.LVL421:
	ldrd	r2, [sp, #56]
	mov	r4, r0
	mov	r5, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL422:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL423:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL424:
	.loc 1 166 0
	ldr	r4, [r10, #100]
	ldr	r7, [r10, #96]
	.loc 1 165 0
	mov	r2, r0
	mov	r3, r1
	strd	r2, [sp, #16]
	strd	r2, [r10, #24]
	.loc 1 166 0
	mov	r0, r7
	mov	r1, r4
	mov	r2, #0
	ldr	r3, .L263+132
	bl	__aeabi_dcmpeq(PLT)
.LVL425:
	cmp	r0, #0
	bne	.L260
	.loc 1 166 0 is_stmt 0 discriminator 8
	ldrd	r2, [sp, #24]
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub(PLT)
.LVL426:
	str	r7, [sp, #8]
	str	r4, [sp, #12]
	bic	r6, r1, #-2147483648
	mov	r5, r0
	mov	r2, r0
	mov	r3, r6
	ldrd	r0, [sp, #8]
	bl	__aeabi_dcmpgt(PLT)
.LVL427:
	cmp	r0, #0
	movne	r7, r5
	movne	r4, r6
.L144:
	.loc 1 167 0 is_stmt 1
	ldr	ip, [r10, #108]
	.loc 1 166 0 discriminator 20
	mov	r3, r4
	.loc 1 167 0
	ldr	r4, [r10, #104]
	.loc 1 166 0 discriminator 20
	mov	r2, r7
	strd	r2, [r10, #96]
	.loc 1 167 0
	mov	r0, r4
	mov	r1, ip
	mov	r2, #0
	ldr	r3, .L263+132
	str	ip, [sp, #8]
	bl	__aeabi_dcmpeq(PLT)
.LVL428:
	cmp	r0, #0
	bne	.L250
	.loc 1 167 0 is_stmt 0 discriminator 4
	ldr	r7, [sp, #8]
	mov	r0, r4
	mov	r1, r7
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dcmpgt(PLT)
.LVL429:
	cmp	r0, #0
	moveq	r7, r6
	moveq	r4, r5
	str	r7, [sp, #8]
.L147:
	.loc 1 167 0 discriminator 12
	ldr	r1, [sp, #8]
	mov	r0, r4
	.loc 1 168 0 is_stmt 1
	mov	r2, r5
	mov	r3, r6
	.loc 1 167 0 discriminator 12
	strd	r0, [r10, #104]
	.loc 1 168 0
	ldrd	r0, [r10, #112]
	bl	__aeabi_dadd(PLT)
.LVL430:
	.loc 1 170 0
	mov	r2, #0
	ldr	r3, .L263+128
	.loc 1 168 0
	strd	r0, [r10, #112]
	.loc 1 169 0
	ldr	r1, [sp, #40]
	.loc 1 170 0
	mov	r0, r8
	.loc 1 169 0
	strd	r8, [r1, fp]
	.loc 1 170 0
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL431:
	bl	llrint(PLT)
.LVL432:
	.loc 1 172 0
	ldrd	r4, [r10, #144]
	ldrd	r6, [sp, #64]
	.loc 1 170 0
	ldrd	r2, [r10, #120]
	.loc 1 172 0
	cmp	r5, r7
	cmpeq	r4, r6
	.loc 1 170 0
	orr	r0, r0, r2
	orr	r1, r1, r3
	strd	r0, [r10, #120]
	.loc 1 172 0
	bcc	.L148
	.loc 1 173 0
	ldrd	r6, [r10, #40]
	ldrd	r0, [sp, #16]
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dcmplt(PLT)
.LVL433:
	cmp	r0, #0
	.loc 1 173 0 is_stmt 0 discriminator 2
	ldreqd	r6, [sp, #16]
.L149:
	.loc 1 174 0 is_stmt 1
	ldrd	r8, [r10, #32]
.LVL434:
	.loc 1 173 0 discriminator 4
	strd	r6, [r10, #40]
	.loc 1 174 0
	mov	r2, r8
	mov	r3, r9
	ldrd	r0, [sp, #16]
	bl	__aeabi_dcmplt(PLT)
.LVL435:
	cmp	r0, #0
	.loc 1 174 0 is_stmt 0 discriminator 2
	streqd	r8, [sp, #16]
.L150:
	.loc 1 174 0 discriminator 4
	ldrd	r2, [sp, #16]
	strd	r2, [r10, #32]
.L148:
.LBE125:
.LBE124:
	.loc 1 286 0 is_stmt 1 discriminator 1
	ldr	r3, [sp, #72]
.LBB131:
.LBB126:
	.loc 1 176 0
	adds	r4, r4, #1
	add	fp, fp, #152
	adc	r5, r5, #0
.LBE126:
.LBE131:
	.loc 1 286 0 discriminator 1
	cmp	fp, r3
.LBB132:
.LBB127:
	.loc 1 176 0
	strd	r4, [r10, #144]
.LVL436:
	add	r10, r10, #152
.LBE127:
.LBE132:
	.loc 1 286 0 discriminator 1
	beq	.L261
.LVL437:
.L151:
	.loc 1 287 0
	ldr	r3, [sp, #32]
.LBB133:
.LBB128:
	.loc 1 139 0
	ldrd	r4, [r10, #48]
.LBE128:
.LBE133:
	.loc 1 287 0
	ldrd	r8, [r3, #8]!
.LVL438:
.LBB134:
.LBB129:
	.loc 1 139 0
	mov	r0, r4
.LBE129:
.LBE134:
	.loc 1 287 0
	str	r3, [sp, #32]
.LVL439:
.LBB135:
.LBB130:
	.loc 1 139 0
	mov	r2, r8
	mov	r3, r9
.LVL440:
	mov	r1, r5
	bl	__aeabi_dcmpgt(PLT)
.LVL441:
	cmp	r0, #0
	bne	.L262
	.loc 1 144 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dcmpeq(PLT)
.LVL442:
	cmp	r0, #0
	beq	.L244
	.loc 1 146 0
	ldr	r1, [sp, #40]
	.loc 1 145 0
	ldrd	r2, [r10, #128]
	.loc 1 146 0
	ldrd	r0, [r1, fp]
	.loc 1 145 0
	adds	r2, r2, #1
	adc	r3, r3, #0
	.loc 1 146 0
	mov	r6, r0
	mov	r7, r1
	.loc 1 145 0
	strd	r2, [r10, #128]
	.loc 1 146 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	mov	r3, r7
	strd	r6, [sp, #24]
	bl	__aeabi_dcmpeq(PLT)
.LVL443:
	cmp	r0, #0
	beq	.L245
	.loc 1 146 0 is_stmt 0 discriminator 1
	ldrd	r0, [r10, #64]
	mov	r2, #0
	ldr	r3, .L263+136
	bl	__aeabi_dadd(PLT)
.LVL444:
.L130:
	.loc 1 146 0 discriminator 4
	strd	r0, [r10, #64]
	b	.L127
.L260:
	.loc 1 166 0 is_stmt 1 discriminator 8
	mvn	r2, #0
	ldr	r3, .L263+156
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub(PLT)
.LVL445:
	mvn	r2, #0
	ldr	r3, .L263+156
	bic	r4, r1, #-2147483648
	str	r0, [sp, #8]
	str	r4, [sp, #12]
	mov	r7, r0
	ldrd	r0, [sp, #8]
	bl	__aeabi_dcmplt(PLT)
.LVL446:
	ldrd	r2, [sp, #24]
	mov	r1, r9
	cmp	r0, #0
	mov	r0, r8
	beq	.L249
	bl	__aeabi_dsub(PLT)
.LVL447:
	mov	r5, r0
	bic	r6, r1, #-2147483648
	b	.L144
.L250:
	.loc 1 167 0 discriminator 4
	mov	r2, r8
	mov	r3, r9
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub(PLT)
.LVL448:
	ldr	r3, .L263+132
	mov	r2, #0
	bic	r7, r1, #-2147483648
	str	r0, [sp, #24]
	str	r7, [sp, #28]
	str	r0, [sp, #80]
	ldrd	r0, [sp, #24]
	bl	__aeabi_dcmplt(PLT)
.LVL449:
	ldr	ip, [sp, #80]
	ldr	r3, [sp, #8]
	cmp	r0, #0
	moveq	r3, r7
	moveq	r4, ip
	str	r3, [sp, #8]
	b	.L147
.L249:
	bl	__aeabi_dsub(PLT)
.LVL450:
	.loc 1 166 0 discriminator 17
	ldr	r4, .L263+156
	mvn	r7, #0
	mov	r5, r0
	bic	r6, r1, #-2147483648
	b	.L144
.L246:
	.loc 1 156 0
	mov	r0, r8
	mov	r1, r9
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dcmpeq(PLT)
.LVL451:
	cmp	r0, #0
	beq	.L247
	.loc 1 157 0
	ldrd	r2, [r10, #136]
	.loc 1 158 0
	mov	r0, r8
	.loc 1 157 0
	adds	r2, r2, #1
	adc	r3, r3, #0
	strd	r2, [r10, #136]
	.loc 1 158 0
	mov	r1, r9
	ldrd	r2, [sp, #24]
	bl	__aeabi_dcmpeq(PLT)
.LVL452:
	cmp	r0, #0
	beq	.L248
	.loc 1 158 0 is_stmt 0 discriminator 1
	ldrd	r0, [r10, #72]
	mov	r2, #0
	ldr	r3, .L263+136
	bl	__aeabi_dadd(PLT)
.LVL453:
.L138:
	.loc 1 158 0 discriminator 4
	strd	r0, [r10, #72]
	b	.L135
.L244:
	.loc 1 147 0 is_stmt 1
	ldr	r3, [sp, #40]
	mov	r0, r4
	ldrd	r2, [r3, fp]
	mov	r1, r5
	strd	r2, [sp, #24]
	bl	__aeabi_dcmpeq(PLT)
.LVL454:
	cmp	r0, #0
	beq	.L127
	.loc 1 148 0
	ldrd	r0, [r10, #64]
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul(PLT)
.LVL455:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [r10, #80]
	bl	__aeabi_dadd(PLT)
.LVL456:
	strd	r0, [r10, #80]
	b	.L127
.L247:
	.loc 1 159 0
	mov	r0, r4
	mov	r1, r5
	ldrd	r2, [sp, #24]
	bl	__aeabi_dcmpeq(PLT)
.LVL457:
	cmp	r0, #0
	beq	.L135
	.loc 1 160 0
	ldrd	r0, [r10, #72]
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul(PLT)
.LVL458:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [r10, #88]
	bl	__aeabi_dadd(PLT)
.LVL459:
	strd	r0, [r10, #88]
	b	.L135
.L248:
	.loc 1 158 0 discriminator 2
	mov	r0, #0
	ldr	r1, .L263+136
	b	.L138
.L245:
	.loc 1 146 0 discriminator 2
	mov	r0, #0
	ldr	r1, .L263+136
	b	.L130
.LVL460:
.L251:
.LBE130:
.LBE135:
.LBB136:
.LBB123:
.LBB121:
	.loc 1 242 0 discriminator 2
	mov	r0, #0
	ldr	r1, .L263+136
	b	.L168
.LVL461:
.L155:
	.loc 1 212 0
	ldrd	r2, [r8, #16]
	mov	r4, r2
	mov	r5, r3
	strd	r4, [sp, #120]
	bl	__aeabi_ul2d(PLT)
.LVL462:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	strd	r2, [sp, #128]
	bl	__aeabi_ddiv(PLT)
.LVL463:
	mov	r6, r0
	mov	r7, r1
	strd	r0, [r8, #40]
	strd	r0, [r8, #32]
	strd	r6, [sp, #24]
	b	.L156
.LVL464:
.L259:
.LBB110:
.LBB100:
	.loc 1 187 0
	ldr	r3, .L263+140
	ldr	r2, .L263+144
.LPIC62:
	add	r3, pc, r3
	str	r3, [sp]
	ldr	r0, [sp, #112]
	mov	r1, #128
.LPIC61:
	add	r2, pc, r2
	mov	r3, r9
	bl	snprintf(PLT)
.LVL465:
	b	.L166
.LVL466:
.L199:
.LBE100:
.LBE110:
.LBB111:
.LBB109:
	.loc 1 132 0 discriminator 1
	mov	r0, #0
.LVL467:
	mov	r1, #0
	b	.L172
.LVL468:
.L200:
.LBE109:
.LBE111:
.LBE121:
.LBB122:
.LBB120:
	mov	r2, #0
.LVL469:
	mov	r3, #0
	b	.L177
.LVL470:
.L194:
.LBE120:
.LBE122:
	.loc 1 208 0 discriminator 1
	ldr	r4, .L263+148
	ldr	r5, .L263+152
	mov	r3, #0
	mov	r2, #0
	mov	ip, r3
	ldr	r1, .L263+156
	strd	r4, [sp, #24]
	str	r3, [sp, #80]
	ldr	r4, .L263+160
	mov	r3, #0
	ldr	r5, .L263+164
	mov	r8, #0
	mov	r9, #0
	mvn	r0, #0
	strd	r2, [sp, #64]
	strd	r2, [sp, #56]
	strd	r2, [sp, #48]
	strd	r2, [sp, #40]
	strd	r2, [sp, #168]
	mov	r3, #1048576
	strd	r0, [sp, #160]
	strd	r4, [sp, #16]
	str	r0, [sp, #152]
	ldr	r4, [sp, #148]
	str	r1, [sp, #156]
	strd	r8, [sp, #32]
	strd	r8, [sp, #72]
	str	ip, [sp, #8]
	mvn	r10, #0
	mvn	fp, #1048576
	str	ip, [sp, #144]
	str	r3, [sp, #148]
.LVL471:
	mov	r0, r8
	mov	r1, r9
	b	.L154
.LBE123:
.LBE136:
	.cfi_endproc
.LFE60:
	.size	filter_frame, .-filter_frame
	.global	ff_af_astats
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	sample_fmts.9113, %object
	.size	sample_fmts.9113, 12
sample_fmts.9113:
	.word	4
	.word	9
	.word	-1
	.section	.data.rel.ro,"aw",%progbits
	.align	2
	.type	astats_class, %object
	.size	astats_class, 44
astats_class:
	.word	.LC49
	.word	av_default_item_name
	.word	astats_options
	.word	3608935
	.space	16
	.word	7
	.space	8
	.section	.data.rel.ro.local,"aw",%progbits
	.align	3
	.type	astats_outputs, %object
	.size	astats_outputs, 80
astats_outputs:
	.word	.LC51
	.word	1
	.space	20
	.word	config_output
	.space	8
	.word	0
	.space	36
	.type	astats_inputs, %object
	.size	astats_inputs, 80
astats_inputs:
	.word	.LC51
	.word	1
	.space	8
	.word	filter_frame
	.space	20
	.word	0
	.space	36
	.type	astats_options, %object
	.size	astats_options, 192
astats_options:
	.word	.LC52
	.word	.LC53
	.word	24
	.word	3
	.word	2576980378
	.word	1068079513
	.word	1202590843
	.word	1065646817
	.word	0
	.word	1076101120
	.word	65544
	.space	4
	.word	.LC54
	.word	.LC55
	.word	40
	.word	1112493900
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.word	65544
	.space	4
	.word	.LC56
	.word	.LC57
	.word	44
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	4290772992
	.word	1105199103
	.word	65544
	.space	4
	.word	0
	.space	44
	.section	.data.rel.local,"aw",%progbits
	.align	2
	.type	ff_af_astats, %object
	.size	ff_af_astats, 56
ff_af_astats:
	.word	.LC49
	.word	.LC50
	.word	astats_inputs
	.word	astats_outputs
	.word	astats_class
	.space	12
	.word	uninit
	.word	query_formats
	.word	56
	.space	12
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Channel: %d\012\000"
	.space	3
.LC1:
	.ascii	"DC offset: %f\012\000"
	.space	1
.LC2:
	.ascii	"Min level: %f\012\000"
	.space	1
.LC3:
	.ascii	"Max level: %f\012\000"
	.space	1
.LC4:
	.ascii	"Min difference: %f\012\000"
.LC5:
	.ascii	"Max difference: %f\012\000"
.LC6:
	.ascii	"Mean difference: %f\012\000"
	.space	3
.LC7:
	.ascii	"Peak level dB: %f\012\000"
	.space	1
.LC8:
	.ascii	"RMS level dB: %f\012\000"
	.space	2
.LC9:
	.ascii	"RMS peak dB: %f\012\000"
	.space	3
.LC10:
	.ascii	"RMS trough dB: %f\012\000"
	.space	1
.LC11:
	.ascii	"Crest factor: %f\012\000"
	.space	2
.LC12:
	.ascii	"Flat factor: %f\012\000"
	.space	3
.LC13:
	.ascii	"Peak count: %lld\012\000"
	.space	2
.LC14:
	.ascii	"Bit depth: %u\012\000"
	.space	1
.LC15:
	.ascii	"Overall\012\000"
	.space	3
.LC16:
	.ascii	"Peak count: %f\012\000"
.LC17:
	.ascii	"Number of samples: %lld\012\000"
	.space	3
.LC18:
	.ascii	"%f\000"
	.space	1
.LC19:
	.ascii	"lavfi.astats.%s\000"
.LC20:
	.ascii	"lavfi.astats.%d.%s\000"
	.space	1
.LC21:
	.ascii	"DC_offset\000"
	.space	2
.LC22:
	.ascii	"Min_level\000"
	.space	2
.LC23:
	.ascii	"Max_level\000"
	.space	2
.LC24:
	.ascii	"Min_difference\000"
	.space	1
.LC25:
	.ascii	"Max_difference\000"
	.space	1
.LC26:
	.ascii	"Mean_difference\000"
.LC27:
	.ascii	"Peak_level\000"
	.space	1
.LC28:
	.ascii	"RMS_level\000"
	.space	2
.LC29:
	.ascii	"RMS_peak\000"
	.space	3
.LC30:
	.ascii	"RMS_trough\000"
	.space	1
.LC31:
	.ascii	"Crest_factor\000"
	.space	3
.LC32:
	.ascii	"Flat_factor\000"
.LC33:
	.ascii	"Peak_count\000"
	.space	1
.LC34:
	.ascii	"Bit_depth\000"
	.space	2
.LC35:
	.ascii	"Overall.DC_offset\000"
	.space	2
.LC36:
	.ascii	"Overall.Min_level\000"
	.space	2
.LC37:
	.ascii	"Overall.Max_level\000"
	.space	2
.LC38:
	.ascii	"Overall.Min_difference\000"
	.space	1
.LC39:
	.ascii	"Overall.Max_difference\000"
	.space	1
.LC40:
	.ascii	"Overall.Mean_difference\000"
.LC41:
	.ascii	"Overall.Peak_level\000"
	.space	1
.LC42:
	.ascii	"Overall.RMS_level\000"
	.space	2
.LC43:
	.ascii	"Overall.RMS_peak\000"
	.space	3
.LC44:
	.ascii	"Overall.RMS_trough\000"
	.space	1
.LC45:
	.ascii	"Overall.Flat_factor\000"
.LC46:
	.ascii	"Overall.Peak_count\000"
	.space	1
.LC47:
	.ascii	"Overall.Bit_depth\000"
	.space	2
.LC48:
	.ascii	"Overall.Number_of_samples\000"
	.space	2
.LC49:
	.ascii	"astats\000"
	.space	1
.LC50:
	.ascii	"Show time domain statistics about audio frames.\000"
.LC51:
	.ascii	"default\000"
.LC52:
	.ascii	"length\000"
	.space	1
.LC53:
	.ascii	"set the window length\000"
	.space	2
.LC54:
	.ascii	"metadata\000"
	.space	3
.LC55:
	.ascii	"inject metadata in the filtergraph\000"
	.space	1
.LC56:
	.ascii	"reset\000"
	.space	2
.LC57:
	.ascii	"recalculate stats after this many frames\000"
	.text
.Letext0:
	.file 2 "/Users/meijian/android-ndk-r10e/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/lib/gcc/arm-linux-androideabi/4.9/include/stddef.h"
	.file 3 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/machine/_types.h"
	.file 4 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/stdint.h"
	.file 5 "./libavutil/rational.h"
	.file 6 "./libavutil/avutil.h"
	.file 7 "./libavutil/log.h"
	.file 8 "./libavutil/opt.h"
	.file 9 "./libavutil/dict.h"
	.file 10 "./libavutil/pixfmt.h"
	.file 11 "./libavutil/samplefmt.h"
	.file 12 "./libavutil/buffer.h"
	.file 13 "./libavutil/frame.h"
	.file 14 "libavfilter/avfilter.h"
	.file 15 "libavfilter/internal.h"
	.file 16 "libavfilter/formats.h"
	.file 17 "libavfilter/audio.h"
	.file 18 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/math.h"
	.file 19 "./libavutil/mem.h"
	.file 20 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/stdio.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2b20
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF407
	.byte	0x1
	.4byte	.LASF408
	.4byte	.LASF409
	.4byte	.Ldebug_ranges0+0x1f8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd4
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x3
	.byte	0x27
	.4byte	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x28
	.4byte	0x62
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2e
	.4byte	0x82
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.4byte	0x94
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2a
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2b
	.4byte	0x57
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x30
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x31
	.4byte	0x89
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x8
	.byte	0x5
	.byte	0x2b
	.4byte	0x10a
	.uleb128 0x7
	.ascii	"num\000"
	.byte	0x5
	.byte	0x2c
	.4byte	0x2c
	.byte	0
	.uleb128 0x7
	.ascii	"den\000"
	.byte	0x5
	.byte	0x2d
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2e
	.4byte	0xe5
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.byte	0x6
	.byte	0xbf
	.4byte	0x14c
	.uleb128 0x9
	.4byte	.LASF22
	.sleb128 -1
	.uleb128 0x9
	.4byte	.LASF23
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x6
	.2byte	0x108
	.4byte	0x18a
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF34
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF35
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF36
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF37
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF38
	.sleb128 7
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0xb
	.byte	0x4
	.4byte	0x19d
	.uleb128 0xc
	.4byte	0xb2
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.byte	0x1d
	.4byte	0x217
	.uleb128 0x9
	.4byte	.LASF40
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF41
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF42
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF43
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF44
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF45
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF46
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF47
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF48
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF49
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF50
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF51
	.sleb128 40
	.uleb128 0x9
	.4byte	.LASF52
	.sleb128 41
	.uleb128 0x9
	.4byte	.LASF53
	.sleb128 42
	.uleb128 0x9
	.4byte	.LASF54
	.sleb128 43
	.uleb128 0x9
	.4byte	.LASF55
	.sleb128 44
	.uleb128 0x9
	.4byte	.LASF56
	.sleb128 45
	.uleb128 0x9
	.4byte	.LASF57
	.sleb128 46
	.byte	0
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x7
	.byte	0x30
	.4byte	0x1a2
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x2c
	.byte	0x7
	.byte	0x43
	.4byte	0x2b3
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x7
	.byte	0x48
	.4byte	0x197
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x7
	.byte	0x4e
	.4byte	0x2c2
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x7
	.byte	0x55
	.4byte	0x348
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x7
	.byte	0x5d
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x7
	.byte	0x63
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x7
	.byte	0x6c
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x7
	.byte	0x71
	.4byte	0x367
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x7
	.byte	0x7b
	.4byte	0x387
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x7
	.byte	0x82
	.4byte	0x217
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x7
	.byte	0x88
	.4byte	0x39c
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x7
	.byte	0x8e
	.4byte	0x401
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.4byte	0x197
	.4byte	0x2c2
	.uleb128 0x10
	.4byte	0xa9
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2b3
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x30
	.byte	0x8
	.byte	0xf5
	.4byte	0x348
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x8
	.byte	0xf6
	.4byte	0x197
	.byte	0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x8
	.byte	0xfc
	.4byte	0x197
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x102
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x103
	.4byte	0x607
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x10e
	.4byte	0x6a1
	.byte	0x10
	.uleb128 0x12
	.ascii	"min\000"
	.byte	0x8
	.2byte	0x10f
	.4byte	0x25
	.byte	0x18
	.uleb128 0x12
	.ascii	"max\000"
	.byte	0x8
	.2byte	0x110
	.4byte	0x25
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x112
	.4byte	0x2c
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x12c
	.4byte	0x197
	.byte	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x34e
	.uleb128 0xc
	.4byte	0x2c8
	.uleb128 0xf
	.4byte	0xa9
	.4byte	0x367
	.uleb128 0x10
	.4byte	0xa9
	.uleb128 0x10
	.4byte	0xa9
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x353
	.uleb128 0xf
	.4byte	0x37c
	.4byte	0x37c
	.uleb128 0x10
	.4byte	0x37c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x382
	.uleb128 0xc
	.4byte	0x222
	.uleb128 0xb
	.byte	0x4
	.4byte	0x36d
	.uleb128 0xf
	.4byte	0x217
	.4byte	0x39c
	.uleb128 0x10
	.4byte	0xa9
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x38d
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0x3c0
	.uleb128 0x10
	.4byte	0x3c0
	.uleb128 0x10
	.4byte	0xa9
	.uleb128 0x10
	.4byte	0x197
	.uleb128 0x10
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3c6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3cc
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0xc
	.byte	0x8
	.2byte	0x149
	.4byte	0x401
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x168
	.4byte	0x74d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x16c
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x170
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3a2
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x7
	.byte	0x8f
	.4byte	0x222
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x9
	.byte	0x57
	.4byte	0x41d
	.uleb128 0x14
	.4byte	.LASF83
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x4
	.byte	0xa
	.2byte	0x178
	.4byte	0x478
	.uleb128 0x9
	.4byte	.LASF85
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF86
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF87
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF88
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF89
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF90
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF91
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF92
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF93
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF94
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF95
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF96
	.sleb128 11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0x4
	.byte	0xa
	.2byte	0x18b
	.4byte	0x4f8
	.uleb128 0x9
	.4byte	.LASF98
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF99
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF100
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF101
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF102
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF103
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF104
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF105
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF106
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF107
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF108
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF109
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF110
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF111
	.sleb128 13
	.uleb128 0x9
	.4byte	.LASF112
	.sleb128 14
	.uleb128 0x9
	.4byte	.LASF113
	.sleb128 15
	.uleb128 0x9
	.4byte	.LASF114
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF115
	.sleb128 17
	.uleb128 0x9
	.4byte	.LASF116
	.sleb128 18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0x4
	.byte	0xa
	.2byte	0x1a4
	.4byte	0x54e
	.uleb128 0x9
	.4byte	.LASF118
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF119
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF120
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF121
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF122
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF123
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF124
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF125
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF126
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF127
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF128
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF129
	.sleb128 11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x4
	.byte	0xa
	.2byte	0x1b8
	.4byte	0x574
	.uleb128 0x9
	.4byte	.LASF131
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF132
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF133
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF134
	.sleb128 3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0x4
	.byte	0xa
	.2byte	0x1ce
	.4byte	0x5b2
	.uleb128 0x9
	.4byte	.LASF136
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF137
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF138
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF139
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF140
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF141
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF142
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF143
	.sleb128 7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x4
	.byte	0xb
	.byte	0x3b
	.4byte	0x607
	.uleb128 0x9
	.4byte	.LASF145
	.sleb128 -1
	.uleb128 0x9
	.4byte	.LASF146
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF147
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF148
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF149
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF150
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF151
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF152
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF153
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF154
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF155
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF156
	.sleb128 10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF157
	.byte	0x4
	.byte	0x8
	.byte	0xdd
	.4byte	0x6a1
	.uleb128 0x9
	.4byte	.LASF158
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF159
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF160
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF161
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF162
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF163
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF164
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF165
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF166
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF167
	.sleb128 128
	.uleb128 0x9
	.4byte	.LASF168
	.sleb128 1397316165
	.uleb128 0x9
	.4byte	.LASF169
	.sleb128 1346784596
	.uleb128 0x9
	.4byte	.LASF170
	.sleb128 1397116244
	.uleb128 0x9
	.4byte	.LASF171
	.sleb128 1448231252
	.uleb128 0x9
	.4byte	.LASF172
	.sleb128 1146442272
	.uleb128 0x9
	.4byte	.LASF173
	.sleb128 1129270354
	.uleb128 0x9
	.4byte	.LASF174
	.sleb128 1128811585
	.uleb128 0x9
	.4byte	.LASF175
	.sleb128 1112493900
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.byte	0x8
	.2byte	0x108
	.4byte	0x6d9
	.uleb128 0x16
	.ascii	"i64\000"
	.byte	0x8
	.2byte	0x109
	.4byte	0xcf
	.uleb128 0x16
	.ascii	"dbl\000"
	.byte	0x8
	.2byte	0x10a
	.4byte	0x25
	.uleb128 0x16
	.ascii	"str\000"
	.byte	0x8
	.2byte	0x10b
	.4byte	0x197
	.uleb128 0x16
	.ascii	"q\000"
	.byte	0x8
	.2byte	0x10d
	.4byte	0x10a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x12d
	.4byte	0x2c8
	.uleb128 0x13
	.4byte	.LASF176
	.byte	0x30
	.byte	0x8
	.2byte	0x132
	.4byte	0x741
	.uleb128 0x12
	.ascii	"str\000"
	.byte	0x8
	.2byte	0x133
	.4byte	0x197
	.byte	0
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x139
	.4byte	0x25
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0x8
	.2byte	0x139
	.4byte	0x25
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x13e
	.4byte	0x25
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0x8
	.2byte	0x13e
	.4byte	0x25
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0x8
	.2byte	0x143
	.4byte	0x2c
	.byte	0x28
	.byte	0
	.uleb128 0x17
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x144
	.4byte	0x6e5
	.uleb128 0xb
	.byte	0x4
	.4byte	0x753
	.uleb128 0xb
	.byte	0x4
	.4byte	0x741
	.uleb128 0x4
	.4byte	.LASF182
	.byte	0xc
	.byte	0x49
	.4byte	0x764
	.uleb128 0x14
	.4byte	.LASF182
	.uleb128 0x6
	.4byte	.LASF183
	.byte	0xc
	.byte	0xc
	.byte	0x51
	.4byte	0x79a
	.uleb128 0xe
	.4byte	.LASF184
	.byte	0xc
	.byte	0x52
	.4byte	0x79a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF185
	.byte	0xc
	.byte	0x59
	.4byte	0x7a0
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF186
	.byte	0xc
	.byte	0x5d
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x759
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0xc
	.byte	0x5e
	.4byte	0x769
	.uleb128 0x8
	.4byte	.LASF187
	.byte	0x4
	.byte	0xd
	.byte	0x30
	.4byte	0x80c
	.uleb128 0x9
	.4byte	.LASF188
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF189
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF190
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF191
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF192
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF193
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF194
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF195
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF196
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF197
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF198
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF199
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF200
	.sleb128 12
	.byte	0
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0x14
	.byte	0xd
	.byte	0x90
	.4byte	0x855
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0xd
	.byte	0x91
	.4byte	0x7b1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF185
	.byte	0xd
	.byte	0x92
	.4byte	0x7a0
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF186
	.byte	0xd
	.byte	0x93
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF202
	.byte	0xd
	.byte	0x94
	.4byte	0x855
	.byte	0xc
	.uleb128 0x7
	.ascii	"buf\000"
	.byte	0xd
	.byte	0x95
	.4byte	0x85b
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x412
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7a6
	.uleb128 0x4
	.4byte	.LASF201
	.byte	0xd
	.byte	0x96
	.4byte	0x80c
	.uleb128 0x18
	.4byte	.LASF203
	.2byte	0x178
	.byte	0xd
	.byte	0xb5
	.4byte	0xae9
	.uleb128 0xe
	.4byte	.LASF185
	.byte	0xd
	.byte	0xc0
	.4byte	0xae9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF204
	.byte	0xd
	.byte	0xd1
	.4byte	0xaf9
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF205
	.byte	0xd
	.byte	0xe1
	.4byte	0xb09
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF206
	.byte	0xd
	.byte	0xe6
	.4byte	0x2c
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF207
	.byte	0xd
	.byte	0xe6
	.4byte	0x2c
	.byte	0x48
	.uleb128 0xe
	.4byte	.LASF208
	.byte	0xd
	.byte	0xeb
	.4byte	0x2c
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF209
	.byte	0xd
	.byte	0xf2
	.4byte	0x2c
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF210
	.byte	0xd
	.byte	0xf7
	.4byte	0x2c
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF211
	.byte	0xd
	.byte	0xfc
	.4byte	0x14c
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF212
	.byte	0xd
	.2byte	0x101
	.4byte	0x10a
	.byte	0x5c
	.uleb128 0x12
	.ascii	"pts\000"
	.byte	0xd
	.2byte	0x106
	.4byte	0xcf
	.byte	0x68
	.uleb128 0x11
	.4byte	.LASF213
	.byte	0xd
	.2byte	0x10b
	.4byte	0xcf
	.byte	0x70
	.uleb128 0x11
	.4byte	.LASF214
	.byte	0xd
	.2byte	0x112
	.4byte	0xcf
	.byte	0x78
	.uleb128 0x11
	.4byte	.LASF215
	.byte	0xd
	.2byte	0x117
	.4byte	0x2c
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF216
	.byte	0xd
	.2byte	0x11b
	.4byte	0x2c
	.byte	0x84
	.uleb128 0x11
	.4byte	.LASF217
	.byte	0xd
	.2byte	0x120
	.4byte	0x2c
	.byte	0x88
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0xd
	.2byte	0x125
	.4byte	0xa9
	.byte	0x8c
	.uleb128 0x11
	.4byte	.LASF219
	.byte	0xd
	.2byte	0x12c
	.4byte	0xb0f
	.byte	0x90
	.uleb128 0x11
	.4byte	.LASF220
	.byte	0xd
	.2byte	0x133
	.4byte	0x2c
	.byte	0xd0
	.uleb128 0x11
	.4byte	.LASF221
	.byte	0xd
	.2byte	0x138
	.4byte	0x2c
	.byte	0xd4
	.uleb128 0x11
	.4byte	.LASF222
	.byte	0xd
	.2byte	0x13d
	.4byte	0x2c
	.byte	0xd8
	.uleb128 0x11
	.4byte	.LASF223
	.byte	0xd
	.2byte	0x142
	.4byte	0x2c
	.byte	0xdc
	.uleb128 0x11
	.4byte	.LASF224
	.byte	0xd
	.2byte	0x14d
	.4byte	0xcf
	.byte	0xe0
	.uleb128 0x11
	.4byte	.LASF225
	.byte	0xd
	.2byte	0x152
	.4byte	0x2c
	.byte	0xe8
	.uleb128 0x11
	.4byte	.LASF226
	.byte	0xd
	.2byte	0x157
	.4byte	0xda
	.byte	0xf0
	.uleb128 0x12
	.ascii	"buf\000"
	.byte	0xd
	.2byte	0x165
	.4byte	0xb1f
	.byte	0xf8
	.uleb128 0x19
	.4byte	.LASF227
	.byte	0xd
	.2byte	0x173
	.4byte	0xb2f
	.2byte	0x118
	.uleb128 0x19
	.4byte	.LASF228
	.byte	0xd
	.2byte	0x177
	.4byte	0x2c
	.2byte	0x11c
	.uleb128 0x19
	.4byte	.LASF229
	.byte	0xd
	.2byte	0x179
	.4byte	0xb35
	.2byte	0x120
	.uleb128 0x19
	.4byte	.LASF230
	.byte	0xd
	.2byte	0x17a
	.4byte	0x2c
	.2byte	0x124
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0xd
	.2byte	0x18e
	.4byte	0x2c
	.2byte	0x128
	.uleb128 0x19
	.4byte	.LASF231
	.byte	0xd
	.2byte	0x197
	.4byte	0x54e
	.2byte	0x12c
	.uleb128 0x19
	.4byte	.LASF232
	.byte	0xd
	.2byte	0x199
	.4byte	0x422
	.2byte	0x130
	.uleb128 0x19
	.4byte	.LASF233
	.byte	0xd
	.2byte	0x19b
	.4byte	0x478
	.2byte	0x134
	.uleb128 0x19
	.4byte	.LASF234
	.byte	0xd
	.2byte	0x1a4
	.4byte	0x4f8
	.2byte	0x138
	.uleb128 0x19
	.4byte	.LASF235
	.byte	0xd
	.2byte	0x1a6
	.4byte	0x574
	.2byte	0x13c
	.uleb128 0x19
	.4byte	.LASF236
	.byte	0xd
	.2byte	0x1af
	.4byte	0xcf
	.2byte	0x140
	.uleb128 0x19
	.4byte	.LASF237
	.byte	0xd
	.2byte	0x1b8
	.4byte	0xcf
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF238
	.byte	0xd
	.2byte	0x1c2
	.4byte	0xcf
	.2byte	0x150
	.uleb128 0x19
	.4byte	.LASF202
	.byte	0xd
	.2byte	0x1cb
	.4byte	0x855
	.2byte	0x158
	.uleb128 0x19
	.4byte	.LASF239
	.byte	0xd
	.2byte	0x1d6
	.4byte	0x2c
	.2byte	0x15c
	.uleb128 0x19
	.4byte	.LASF240
	.byte	0xd
	.2byte	0x1e1
	.4byte	0x2c
	.2byte	0x160
	.uleb128 0x19
	.4byte	.LASF241
	.byte	0xd
	.2byte	0x1eb
	.4byte	0x2c
	.2byte	0x164
	.uleb128 0x19
	.4byte	.LASF242
	.byte	0xd
	.2byte	0x1f3
	.4byte	0xb41
	.2byte	0x168
	.uleb128 0x19
	.4byte	.LASF243
	.byte	0xd
	.2byte	0x1f9
	.4byte	0x2c
	.2byte	0x16c
	.uleb128 0x19
	.4byte	.LASF244
	.byte	0xd
	.2byte	0x1fc
	.4byte	0x2c
	.2byte	0x170
	.uleb128 0x19
	.4byte	.LASF245
	.byte	0xd
	.2byte	0x201
	.4byte	0x85b
	.2byte	0x174
	.byte	0
	.uleb128 0x1a
	.4byte	0x7a0
	.4byte	0xaf9
	.uleb128 0x1b
	.4byte	0xab
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.4byte	0x2c
	.4byte	0xb09
	.uleb128 0x1b
	.4byte	0xab
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7a0
	.uleb128 0x1a
	.4byte	0xda
	.4byte	0xb1f
	.uleb128 0x1b
	.4byte	0xab
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.4byte	0x85b
	.4byte	0xb2f
	.uleb128 0x1b
	.4byte	0xab
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x85b
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb3b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x861
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x17
	.4byte	.LASF203
	.byte	0xd
	.2byte	0x203
	.4byte	0x86c
	.uleb128 0x4
	.4byte	.LASF246
	.byte	0xe
	.byte	0x40
	.4byte	0xb5e
	.uleb128 0x13
	.4byte	.LASF246
	.byte	0x48
	.byte	0xe
	.2byte	0x130
	.4byte	0xc56
	.uleb128 0x11
	.4byte	.LASF247
	.byte	0xe
	.2byte	0x131
	.4byte	0xfdc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF248
	.byte	0xe
	.2byte	0x133
	.4byte	0x10b2
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xe
	.2byte	0x135
	.4byte	0x18a
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF249
	.byte	0xe
	.2byte	0x137
	.4byte	0x10bd
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF250
	.byte	0xe
	.2byte	0x138
	.4byte	0x10c3
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF251
	.byte	0xe
	.2byte	0x139
	.4byte	0x3e
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF252
	.byte	0xe
	.2byte	0x13b
	.4byte	0x10bd
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF253
	.byte	0xe
	.2byte	0x13c
	.4byte	0x10c3
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF254
	.byte	0xe
	.2byte	0x13d
	.4byte	0x3e
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF255
	.byte	0xe
	.2byte	0x13f
	.4byte	0xa9
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF256
	.byte	0xe
	.2byte	0x141
	.4byte	0x1193
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF257
	.byte	0xe
	.2byte	0x153
	.4byte	0x2c
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0xe
	.2byte	0x158
	.4byte	0x1199
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF259
	.byte	0xe
	.2byte	0x15a
	.4byte	0x11e8
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF260
	.byte	0xe
	.2byte	0x15c
	.4byte	0x18a
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF261
	.byte	0xe
	.2byte	0x15d
	.4byte	0xa9
	.byte	0x3c
	.uleb128 0x11
	.4byte	.LASF262
	.byte	0xe
	.2byte	0x15e
	.4byte	0x11ee
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF263
	.byte	0xe
	.2byte	0x15f
	.4byte	0x2c
	.byte	0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LASF264
	.byte	0xe
	.byte	0x41
	.4byte	0xc61
	.uleb128 0x13
	.4byte	.LASF264
	.byte	0xb8
	.byte	0xe
	.2byte	0x169
	.4byte	0xe3f
	.uleb128 0x12
	.ascii	"src\000"
	.byte	0xe
	.2byte	0x16a
	.4byte	0xff6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF265
	.byte	0xe
	.2byte	0x16b
	.4byte	0x10bd
	.byte	0x4
	.uleb128 0x12
	.ascii	"dst\000"
	.byte	0xe
	.2byte	0x16d
	.4byte	0xff6
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF266
	.byte	0xe
	.2byte	0x16e
	.4byte	0x10bd
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0xe
	.2byte	0x170
	.4byte	0x115
	.byte	0x10
	.uleb128 0x12
	.ascii	"w\000"
	.byte	0xe
	.2byte	0x173
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x12
	.ascii	"h\000"
	.byte	0xe
	.2byte	0x174
	.4byte	0x2c
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF212
	.byte	0xe
	.2byte	0x175
	.4byte	0x10a
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF226
	.byte	0xe
	.2byte	0x177
	.4byte	0xda
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF225
	.byte	0xe
	.2byte	0x178
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF209
	.byte	0xe
	.2byte	0x17a
	.4byte	0x2c
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF267
	.byte	0xe
	.2byte	0x183
	.4byte	0x10a
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF268
	.byte	0xe
	.2byte	0x193
	.4byte	0x1210
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF269
	.byte	0xe
	.2byte	0x194
	.4byte	0x1210
	.byte	0x44
	.uleb128 0x11
	.4byte	.LASF270
	.byte	0xe
	.2byte	0x19a
	.4byte	0x1210
	.byte	0x48
	.uleb128 0x11
	.4byte	.LASF271
	.byte	0xe
	.2byte	0x19b
	.4byte	0x1210
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF272
	.byte	0xe
	.2byte	0x19c
	.4byte	0x126b
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF273
	.byte	0xe
	.2byte	0x19d
	.4byte	0x126b
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF274
	.byte	0xe
	.2byte	0x1a6
	.4byte	0x2c
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF275
	.byte	0xe
	.2byte	0x1ad
	.4byte	0x11f4
	.byte	0x5c
	.uleb128 0x11
	.4byte	.LASF256
	.byte	0xe
	.2byte	0x1b2
	.4byte	0x1193
	.byte	0x60
	.uleb128 0x11
	.4byte	.LASF276
	.byte	0xe
	.2byte	0x1b8
	.4byte	0xcf
	.byte	0x68
	.uleb128 0x11
	.4byte	.LASF277
	.byte	0xe
	.2byte	0x1be
	.4byte	0xcf
	.byte	0x70
	.uleb128 0x11
	.4byte	.LASF278
	.byte	0xe
	.2byte	0x1c3
	.4byte	0x2c
	.byte	0x78
	.uleb128 0x11
	.4byte	.LASF279
	.byte	0xe
	.2byte	0x1d0
	.4byte	0x10a
	.byte	0x7c
	.uleb128 0x11
	.4byte	.LASF280
	.byte	0xe
	.2byte	0x1d5
	.4byte	0x1271
	.byte	0x84
	.uleb128 0x11
	.4byte	.LASF281
	.byte	0xe
	.2byte	0x1db
	.4byte	0x2c
	.byte	0x88
	.uleb128 0x11
	.4byte	.LASF282
	.byte	0xe
	.2byte	0x1e4
	.4byte	0x2c
	.byte	0x8c
	.uleb128 0x11
	.4byte	.LASF283
	.byte	0xe
	.2byte	0x1ea
	.4byte	0x2c
	.byte	0x90
	.uleb128 0x11
	.4byte	.LASF284
	.byte	0xe
	.2byte	0x1f6
	.4byte	0x2c
	.byte	0x94
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0xe
	.2byte	0x1fb
	.4byte	0x2c
	.byte	0x98
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0xe
	.2byte	0x200
	.4byte	0x3e
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF285
	.byte	0xe
	.2byte	0x205
	.4byte	0xcf
	.byte	0xa0
	.uleb128 0x11
	.4byte	.LASF286
	.byte	0xe
	.2byte	0x20a
	.4byte	0xa9
	.byte	0xa8
	.uleb128 0x11
	.4byte	.LASF287
	.byte	0xe
	.2byte	0x211
	.4byte	0x2c
	.byte	0xac
	.uleb128 0x11
	.4byte	.LASF288
	.byte	0xe
	.2byte	0x218
	.4byte	0x2c
	.byte	0xb0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF289
	.byte	0xe
	.byte	0x42
	.4byte	0xe4a
	.uleb128 0x6
	.4byte	.LASF289
	.byte	0x28
	.byte	0xf
	.byte	0x35
	.4byte	0xecf
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xf
	.byte	0x3b
	.4byte	0x197
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0xf
	.byte	0x40
	.4byte	0x115
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF290
	.byte	0xf
	.byte	0x48
	.4byte	0x1372
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF291
	.byte	0xf
	.byte	0x50
	.4byte	0x138c
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF292
	.byte	0xf
	.byte	0x5c
	.4byte	0x13a6
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF293
	.byte	0xf
	.byte	0x67
	.4byte	0x13bb
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF294
	.byte	0xf
	.byte	0x70
	.4byte	0x13bb
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF295
	.byte	0xf
	.byte	0x80
	.4byte	0x13bb
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF296
	.byte	0xf
	.byte	0x88
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF297
	.byte	0xf
	.byte	0x90
	.4byte	0x2c
	.byte	0x24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF298
	.byte	0xe
	.byte	0x43
	.4byte	0xeda
	.uleb128 0x6
	.4byte	.LASF298
	.byte	0x10
	.byte	0x10
	.byte	0x40
	.4byte	0xf17
	.uleb128 0xe
	.4byte	.LASF299
	.byte	0x10
	.byte	0x41
	.4byte	0x3e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF300
	.byte	0x10
	.byte	0x42
	.4byte	0x1307
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF301
	.byte	0x10
	.byte	0x44
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF302
	.byte	0x10
	.byte	0x45
	.4byte	0x131f
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF303
	.byte	0x38
	.byte	0xe
	.byte	0x8d
	.4byte	0xfd1
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xe
	.byte	0x91
	.4byte	0x197
	.byte	0
	.uleb128 0xe
	.4byte	.LASF304
	.byte	0xe
	.byte	0x98
	.4byte	0x197
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF250
	.byte	0xe
	.byte	0xa1
	.4byte	0xfd1
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF253
	.byte	0xe
	.byte	0xa9
	.4byte	0xfd1
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF305
	.byte	0xe
	.byte	0xb3
	.4byte	0xfdc
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xe
	.byte	0xb8
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF306
	.byte	0xe
	.byte	0xd7
	.4byte	0xffc
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF307
	.byte	0xe
	.byte	0xe4
	.4byte	0x101c
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF308
	.byte	0xe
	.byte	0xf0
	.4byte	0x102d
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF309
	.byte	0xe
	.2byte	0x108
	.4byte	0xffc
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF310
	.byte	0xe
	.2byte	0x10a
	.4byte	0x2c
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF311
	.byte	0xe
	.2byte	0x110
	.4byte	0x1033
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF312
	.byte	0xe
	.2byte	0x11e
	.4byte	0x1061
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF313
	.byte	0xe
	.2byte	0x125
	.4byte	0x107b
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xfd7
	.uleb128 0xc
	.4byte	0xe3f
	.uleb128 0xb
	.byte	0x4
	.4byte	0xfe2
	.uleb128 0xc
	.4byte	0x407
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0xff6
	.uleb128 0x10
	.4byte	0xff6
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb53
	.uleb128 0xb
	.byte	0x4
	.4byte	0xfe7
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0x1016
	.uleb128 0x10
	.4byte	0xff6
	.uleb128 0x10
	.4byte	0x1016
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x855
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1002
	.uleb128 0x1c
	.4byte	0x102d
	.uleb128 0x10
	.4byte	0xff6
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1022
	.uleb128 0xb
	.byte	0x4
	.4byte	0xf17
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0x1061
	.uleb128 0x10
	.4byte	0xff6
	.uleb128 0x10
	.4byte	0x197
	.uleb128 0x10
	.4byte	0x197
	.uleb128 0x10
	.4byte	0x18a
	.uleb128 0x10
	.4byte	0x2c
	.uleb128 0x10
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1039
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0x107b
	.uleb128 0x10
	.4byte	0xff6
	.uleb128 0x10
	.4byte	0xa9
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1067
	.uleb128 0x17
	.4byte	.LASF303
	.byte	0xe
	.2byte	0x126
	.4byte	0xf17
	.uleb128 0x17
	.4byte	.LASF314
	.byte	0xe
	.2byte	0x12d
	.4byte	0x1099
	.uleb128 0x6
	.4byte	.LASF314
	.byte	0x4
	.byte	0xf
	.byte	0x98
	.4byte	0x10b2
	.uleb128 0xe
	.4byte	.LASF315
	.byte	0xf
	.byte	0x99
	.4byte	0x1319
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10b8
	.uleb128 0xc
	.4byte	0x1081
	.uleb128 0xb
	.byte	0x4
	.4byte	0xe3f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10c9
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc56
	.uleb128 0x13
	.4byte	.LASF316
	.byte	0x38
	.byte	0xe
	.2byte	0x2f9
	.4byte	0x1193
	.uleb128 0x11
	.4byte	.LASF247
	.byte	0xe
	.2byte	0x2fa
	.4byte	0xfdc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF317
	.byte	0xe
	.2byte	0x2fb
	.4byte	0x130d
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF318
	.byte	0xe
	.2byte	0x2fc
	.4byte	0x3e
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF319
	.byte	0xe
	.2byte	0x2fe
	.4byte	0x18a
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF320
	.byte	0xe
	.2byte	0x2ff
	.4byte	0x18a
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF257
	.byte	0xe
	.2byte	0x30d
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF321
	.byte	0xe
	.2byte	0x314
	.4byte	0x2c
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0xe
	.2byte	0x319
	.4byte	0x1313
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0xe
	.2byte	0x320
	.4byte	0xa9
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF315
	.byte	0xe
	.2byte	0x32e
	.4byte	0x1319
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF322
	.byte	0xe
	.2byte	0x330
	.4byte	0x18a
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF323
	.byte	0xe
	.2byte	0x339
	.4byte	0x10c3
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF324
	.byte	0xe
	.2byte	0x33a
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF325
	.byte	0xe
	.2byte	0x33c
	.4byte	0x3e
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10cf
	.uleb128 0xb
	.byte	0x4
	.4byte	0x108d
	.uleb128 0x6
	.4byte	.LASF326
	.byte	0x18
	.byte	0xf
	.byte	0x25
	.4byte	0x11e8
	.uleb128 0xe
	.4byte	.LASF327
	.byte	0xf
	.byte	0x26
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF328
	.byte	0xf
	.byte	0x27
	.4byte	0x18a
	.byte	0x8
	.uleb128 0x7
	.ascii	"arg\000"
	.byte	0xf
	.byte	0x28
	.4byte	0x18a
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xf
	.byte	0x29
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF311
	.byte	0xf
	.byte	0x2a
	.4byte	0x11e8
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x119f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25
	.uleb128 0x1d
	.byte	0x4
	.byte	0xe
	.2byte	0x1a9
	.4byte	0x1210
	.uleb128 0x9
	.4byte	.LASF329
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF330
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF331
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xecf
	.uleb128 0x6
	.4byte	.LASF332
	.byte	0x14
	.byte	0x10
	.byte	0x55
	.4byte	0x126b
	.uleb128 0xe
	.4byte	.LASF333
	.byte	0x10
	.byte	0x56
	.4byte	0x1331
	.byte	0
	.uleb128 0xe
	.4byte	.LASF334
	.byte	0x10
	.byte	0x57
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF335
	.byte	0x10
	.byte	0x58
	.4byte	0xb2
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF336
	.byte	0x10
	.byte	0x59
	.4byte	0xb2
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF301
	.byte	0x10
	.byte	0x5b
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF302
	.byte	0x10
	.byte	0x5c
	.4byte	0x1337
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1216
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb47
	.uleb128 0x17
	.4byte	.LASF337
	.byte	0xe
	.2byte	0x2da
	.4byte	0x1283
	.uleb128 0x6
	.4byte	.LASF337
	.byte	0x8
	.byte	0xf
	.byte	0x93
	.4byte	0x12a8
	.uleb128 0xe
	.4byte	.LASF338
	.byte	0xf
	.byte	0x94
	.4byte	0xa9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF339
	.byte	0xf
	.byte	0x95
	.4byte	0x1319
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF340
	.byte	0xe
	.2byte	0x2e8
	.4byte	0x12b4
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0x12d2
	.uleb128 0x10
	.4byte	0xff6
	.uleb128 0x10
	.4byte	0xa9
	.uleb128 0x10
	.4byte	0x2c
	.uleb128 0x10
	.4byte	0x2c
	.byte	0
	.uleb128 0x17
	.4byte	.LASF341
	.byte	0xe
	.2byte	0x2f6
	.4byte	0x12de
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0x1301
	.uleb128 0x10
	.4byte	0xff6
	.uleb128 0x10
	.4byte	0x1301
	.uleb128 0x10
	.4byte	0xa9
	.uleb128 0x10
	.4byte	0x1307
	.uleb128 0x10
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12a8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xb
	.byte	0x4
	.4byte	0xff6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1277
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12d2
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1325
	.uleb128 0xb
	.byte	0x4
	.4byte	0x132b
	.uleb128 0xb
	.byte	0x4
	.4byte	0xeda
	.uleb128 0xb
	.byte	0x4
	.4byte	0xda
	.uleb128 0xb
	.byte	0x4
	.4byte	0x133d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x126b
	.uleb128 0x4
	.4byte	.LASF332
	.byte	0x10
	.byte	0x5d
	.4byte	0x1216
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1354
	.uleb128 0xc
	.4byte	0x2c
	.uleb128 0xf
	.4byte	0x1271
	.4byte	0x1372
	.uleb128 0x10
	.4byte	0x10c9
	.uleb128 0x10
	.4byte	0x2c
	.uleb128 0x10
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1359
	.uleb128 0xf
	.4byte	0x1271
	.4byte	0x138c
	.uleb128 0x10
	.4byte	0x10c9
	.uleb128 0x10
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1378
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0x13a6
	.uleb128 0x10
	.4byte	0x10c9
	.uleb128 0x10
	.4byte	0x1271
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1392
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0x13bb
	.uleb128 0x10
	.4byte	0x10c9
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x13ac
	.uleb128 0x6
	.4byte	.LASF342
	.byte	0x98
	.byte	0x1
	.byte	0x1d
	.4byte	0x14b2
	.uleb128 0xe
	.4byte	.LASF343
	.byte	0x1
	.byte	0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF344
	.byte	0x1
	.byte	0x1f
	.4byte	0x25
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF345
	.byte	0x1
	.byte	0x1f
	.4byte	0x25
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF346
	.byte	0x1
	.byte	0x20
	.4byte	0x25
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF347
	.byte	0x1
	.byte	0x20
	.4byte	0x25
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF348
	.byte	0x1
	.byte	0x20
	.4byte	0x25
	.byte	0x28
	.uleb128 0x7
	.ascii	"min\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x25
	.byte	0x30
	.uleb128 0x7
	.ascii	"max\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x25
	.byte	0x38
	.uleb128 0xe
	.4byte	.LASF349
	.byte	0x1
	.byte	0x22
	.4byte	0x25
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF350
	.byte	0x1
	.byte	0x22
	.4byte	0x25
	.byte	0x48
	.uleb128 0xe
	.4byte	.LASF351
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF352
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.byte	0x58
	.uleb128 0xe
	.4byte	.LASF353
	.byte	0x1
	.byte	0x24
	.4byte	0x25
	.byte	0x60
	.uleb128 0xe
	.4byte	.LASF354
	.byte	0x1
	.byte	0x24
	.4byte	0x25
	.byte	0x68
	.uleb128 0xe
	.4byte	.LASF355
	.byte	0x1
	.byte	0x25
	.4byte	0x25
	.byte	0x70
	.uleb128 0xe
	.4byte	.LASF356
	.byte	0x1
	.byte	0x26
	.4byte	0xda
	.byte	0x78
	.uleb128 0xe
	.4byte	.LASF357
	.byte	0x1
	.byte	0x27
	.4byte	0xda
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF358
	.byte	0x1
	.byte	0x27
	.4byte	0xda
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF208
	.byte	0x1
	.byte	0x28
	.4byte	0xda
	.byte	0x90
	.byte	0
	.uleb128 0x4
	.4byte	.LASF342
	.byte	0x1
	.byte	0x29
	.4byte	0x13c1
	.uleb128 0x1e
	.byte	0x38
	.byte	0x1
	.byte	0x2b
	.4byte	0x1532
	.uleb128 0xe
	.4byte	.LASF359
	.byte	0x1
	.byte	0x2c
	.4byte	0xfdc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF360
	.byte	0x1
	.byte	0x2d
	.4byte	0x1532
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF361
	.byte	0x1
	.byte	0x2e
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF362
	.byte	0x1
	.byte	0x2f
	.4byte	0xda
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF363
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF364
	.byte	0x1
	.byte	0x31
	.4byte	0x25
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF202
	.byte	0x1
	.byte	0x32
	.4byte	0x2c
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF365
	.byte	0x1
	.byte	0x33
	.4byte	0x2c
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF366
	.byte	0x1
	.byte	0x34
	.4byte	0x2c
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x14b2
	.uleb128 0x4
	.4byte	.LASF367
	.byte	0x1
	.byte	0x35
	.4byte	0x14bd
	.uleb128 0x1f
	.4byte	.LASF309
	.byte	0x1
	.byte	0x43
	.4byte	0x2c
	.byte	0x1
	.4byte	0x1598
	.uleb128 0x20
	.ascii	"ctx\000"
	.byte	0x1
	.byte	0x43
	.4byte	0xff6
	.uleb128 0x21
	.4byte	.LASF300
	.byte	0x1
	.byte	0x45
	.4byte	0x1210
	.uleb128 0x21
	.4byte	.LASF368
	.byte	0x1
	.byte	0x46
	.4byte	0x1598
	.uleb128 0x22
	.4byte	.LASF378
	.byte	0x1
	.byte	0x47
	.4byte	0x15ae
	.byte	0xc
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x23
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1343
	.uleb128 0x1a
	.4byte	0x5b2
	.4byte	0x15ae
	.uleb128 0x1b
	.4byte	0xab
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0x159e
	.uleb128 0x1f
	.4byte	.LASF369
	.byte	0x1
	.byte	0x80
	.4byte	0x3e
	.byte	0x1
	.4byte	0x15da
	.uleb128 0x24
	.4byte	.LASF356
	.byte	0x1
	.byte	0x80
	.4byte	0xda
	.uleb128 0x21
	.4byte	.LASF370
	.byte	0x1
	.byte	0x82
	.4byte	0x3e
	.byte	0
	.uleb128 0x25
	.4byte	.LASF371
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	0x1604
	.uleb128 0x20
	.ascii	"s\000"
	.byte	0x1
	.byte	0x61
	.4byte	0x1604
	.uleb128 0x23
	.ascii	"c\000"
	.byte	0x1
	.byte	0x63
	.4byte	0x2c
	.uleb128 0x26
	.uleb128 0x23
	.ascii	"p\000"
	.byte	0x1
	.byte	0x68
	.4byte	0x1532
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1538
	.uleb128 0x25
	.4byte	.LASF372
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.4byte	0x1664
	.uleb128 0x24
	.4byte	.LASF202
	.byte	0x1
	.byte	0xb3
	.4byte	0x1016
	.uleb128 0x24
	.4byte	.LASF373
	.byte	0x1
	.byte	0xb3
	.4byte	0x2c
	.uleb128 0x20
	.ascii	"key\000"
	.byte	0x1
	.byte	0xb3
	.4byte	0x197
	.uleb128 0x20
	.ascii	"fmt\000"
	.byte	0x1
	.byte	0xb4
	.4byte	0x197
	.uleb128 0x20
	.ascii	"val\000"
	.byte	0x1
	.byte	0xb4
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF374
	.byte	0x1
	.byte	0xb6
	.4byte	0x1664
	.uleb128 0x21
	.4byte	.LASF375
	.byte	0x1
	.byte	0xb7
	.4byte	0x1664
	.byte	0
	.uleb128 0x1a
	.4byte	0xc4
	.4byte	0x1674
	.uleb128 0x1b
	.4byte	0xab
	.byte	0x7f
	.byte	0
	.uleb128 0x27
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x132
	.byte	0x1
	.4byte	0x176e
	.uleb128 0x28
	.ascii	"ctx\000"
	.byte	0x1
	.2byte	0x132
	.4byte	0xff6
	.uleb128 0x29
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x134
	.4byte	0x1604
	.uleb128 0x2a
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x135
	.4byte	0xda
	.uleb128 0x2a
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x135
	.4byte	0xda
	.uleb128 0x2a
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x135
	.4byte	0xda
	.uleb128 0x2a
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x135
	.4byte	0xda
	.uleb128 0x2a
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x136
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x136
	.4byte	0x25
	.uleb128 0x29
	.ascii	"min\000"
	.byte	0x1
	.2byte	0x137
	.4byte	0x25
	.uleb128 0x29
	.ascii	"max\000"
	.byte	0x1
	.2byte	0x137
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x137
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x137
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x138
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x139
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x13a
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x13b
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x13c
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x13d
	.4byte	0x25
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x2c
	.uleb128 0x26
	.uleb128 0x29
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x141
	.4byte	0x1532
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x17c
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d22
	.uleb128 0x2c
	.ascii	"ctx\000"
	.byte	0x1
	.2byte	0x17c
	.4byte	0xff6
	.4byte	.LLST0
	.uleb128 0x2d
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x17e
	.4byte	0x1604
	.4byte	.LLST1
	.uleb128 0x2e
	.4byte	0x1674
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x181
	.4byte	0x1d18
	.uleb128 0x2f
	.4byte	0x1681
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x31
	.4byte	0x168d
	.uleb128 0x32
	.4byte	0x1697
	.4byte	.LLST2
	.uleb128 0x32
	.4byte	0x16a3
	.4byte	.LLST3
	.uleb128 0x32
	.4byte	0x16af
	.4byte	.LLST4
	.uleb128 0x32
	.4byte	0x16bb
	.4byte	.LLST5
	.uleb128 0x32
	.4byte	0x16c7
	.4byte	.LLST6
	.uleb128 0x32
	.4byte	0x16d3
	.4byte	.LLST7
	.uleb128 0x32
	.4byte	0x16df
	.4byte	.LLST8
	.uleb128 0x32
	.4byte	0x16eb
	.4byte	.LLST9
	.uleb128 0x32
	.4byte	0x16f7
	.4byte	.LLST10
	.uleb128 0x32
	.4byte	0x1703
	.4byte	.LLST11
	.uleb128 0x32
	.4byte	0x170f
	.4byte	.LLST12
	.uleb128 0x32
	.4byte	0x171b
	.4byte	.LLST13
	.uleb128 0x31
	.4byte	0x1727
	.uleb128 0x32
	.4byte	0x1733
	.4byte	.LLST14
	.uleb128 0x32
	.4byte	0x173f
	.4byte	.LLST15
	.uleb128 0x32
	.4byte	0x174b
	.4byte	.LLST16
	.uleb128 0x32
	.4byte	0x1757
	.4byte	.LLST17
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0x1abd
	.uleb128 0x32
	.4byte	0x1762
	.4byte	.LLST18
	.uleb128 0x34
	.4byte	0x15b3
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.2byte	0x167
	.4byte	0x189d
	.uleb128 0x35
	.4byte	0x15c3
	.4byte	.LLST19
	.uleb128 0x36
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x32
	.4byte	0x15ce
	.4byte	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL41
	.4byte	0x297f
	.4byte	0x18c7
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -188
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL44
	.4byte	0x297f
	.4byte	0x18e9
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL45
	.4byte	0x297f
	.4byte	0x190a
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL46
	.4byte	0x297f
	.4byte	0x192b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL47
	.4byte	0x297f
	.4byte	0x194c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL48
	.4byte	0x297f
	.4byte	0x196d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL51
	.4byte	0x297f
	.4byte	0x198d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL53
	.4byte	0x299b
	.uleb128 0x37
	.4byte	.LVL55
	.4byte	0x297f
	.4byte	0x19b6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL58
	.4byte	0x29b0
	.uleb128 0x39
	.4byte	.LVL59
	.4byte	0x299b
	.uleb128 0x37
	.4byte	.LVL61
	.4byte	0x297f
	.4byte	0x19e2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL62
	.4byte	0x29b0
	.uleb128 0x39
	.4byte	.LVL63
	.4byte	0x299b
	.uleb128 0x37
	.4byte	.LVL65
	.4byte	0x297f
	.4byte	0x1a14
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL67
	.4byte	0x29b0
	.uleb128 0x39
	.4byte	.LVL68
	.4byte	0x299b
	.uleb128 0x37
	.4byte	.LVL70
	.4byte	0x297f
	.4byte	0x1a40
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL75
	.4byte	0x29b0
	.uleb128 0x37
	.4byte	.LVL77
	.4byte	0x297f
	.4byte	0x1a63
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL81
	.4byte	0x299b
	.uleb128 0x37
	.4byte	.LVL83
	.4byte	0x297f
	.4byte	0x1a8c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL84
	.4byte	0x297f
	.4byte	0x1aa6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL90
	.4byte	0x297f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x15b3
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.2byte	0x178
	.4byte	0x1aee
	.uleb128 0x35
	.4byte	0x15c3
	.4byte	.LLST21
	.uleb128 0x36
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x32
	.4byte	0x15ce
	.4byte	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL94
	.4byte	0x297f
	.4byte	0x1b08
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL99
	.4byte	0x297f
	.4byte	0x1b22
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL100
	.4byte	0x297f
	.4byte	0x1b3c
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL101
	.4byte	0x297f
	.4byte	0x1b56
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL102
	.4byte	0x297f
	.4byte	0x1b7b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x6
	.byte	0x91
	.sleb128 -168
	.byte	0xf6
	.byte	0x8
	.uleb128 0x25
	.byte	0
	.uleb128 0x37
	.4byte	.LVL103
	.4byte	0x297f
	.4byte	0x1ba0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x6
	.byte	0x91
	.sleb128 -128
	.byte	0xf6
	.byte	0x8
	.uleb128 0x25
	.byte	0
	.uleb128 0x37
	.4byte	.LVL106
	.4byte	0x297f
	.4byte	0x1bc2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -188
	.byte	0x6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL108
	.4byte	0x299b
	.uleb128 0x37
	.4byte	.LVL110
	.4byte	0x297f
	.4byte	0x1beb
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL113
	.4byte	0x29b0
	.uleb128 0x39
	.4byte	.LVL114
	.4byte	0x299b
	.uleb128 0x37
	.4byte	.LVL116
	.4byte	0x297f
	.4byte	0x1c1d
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL117
	.4byte	0x29b0
	.4byte	0x1c3a
	.uleb128 0x38
	.uleb128 0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x6
	.byte	0x91
	.sleb128 -184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x25
	.byte	0
	.uleb128 0x39
	.4byte	.LVL118
	.4byte	0x299b
	.uleb128 0x37
	.4byte	.LVL120
	.4byte	0x297f
	.4byte	0x1c63
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL122
	.4byte	0x29b0
	.4byte	0x1c80
	.uleb128 0x38
	.uleb128 0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x6
	.byte	0x91
	.sleb128 -200
	.byte	0xf6
	.byte	0x8
	.uleb128 0x25
	.byte	0
	.uleb128 0x39
	.4byte	.LVL123
	.4byte	0x299b
	.uleb128 0x37
	.4byte	.LVL125
	.4byte	0x297f
	.4byte	0x1ca3
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL130
	.4byte	0x299b
	.uleb128 0x37
	.4byte	.LVL132
	.4byte	0x297f
	.4byte	0x1cc6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL135
	.4byte	0x297f
	.4byte	0x1ce6
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL140
	.4byte	0x297f
	.4byte	0x1d00
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL142
	.4byte	0x297f
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LVL144
	.4byte	0x29c5
	.byte	0
	.uleb128 0x3c
	.4byte	0x1543
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dec
	.uleb128 0x35
	.4byte	0x1553
	.4byte	.LLST23
	.uleb128 0x32
	.4byte	0x155e
	.4byte	.LLST24
	.uleb128 0x32
	.4byte	0x1569
	.4byte	.LLST25
	.uleb128 0x3d
	.4byte	0x1574
	.uleb128 0x5
	.byte	0x3
	.4byte	sample_fmts.9113
	.uleb128 0x32
	.4byte	0x158c
	.4byte	.LLST26
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0x1db5
	.uleb128 0x35
	.4byte	0x1553
	.4byte	.LLST27
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x32
	.4byte	0x155e
	.4byte	.LLST28
	.uleb128 0x31
	.4byte	0x1569
	.uleb128 0x31
	.4byte	0x158c
	.uleb128 0x3d
	.4byte	0x1574
	.uleb128 0x5
	.byte	0x3
	.4byte	sample_fmts.9113
	.uleb128 0x39
	.4byte	.LVL154
	.4byte	0x29d7
	.uleb128 0x3e
	.4byte	.LVL157
	.4byte	0x29e2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL146
	.4byte	0x29fc
	.uleb128 0x37
	.4byte	.LVL148
	.4byte	0x2a07
	.4byte	0x1dd2
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL150
	.4byte	0x2a21
	.uleb128 0x3a
	.4byte	.LVL152
	.4byte	0x2a36
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	0x160a
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ea5
	.uleb128 0x35
	.4byte	0x1616
	.4byte	.LLST29
	.uleb128 0x35
	.4byte	0x162c
	.4byte	.LLST30
	.uleb128 0x35
	.4byte	0x1642
	.4byte	.LLST31
	.uleb128 0x3d
	.4byte	0x164d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x3d
	.4byte	0x1658
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x3f
	.4byte	0x1637
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC18
	.byte	0x9f
	.uleb128 0x40
	.4byte	0x1621
	.byte	0
	.uleb128 0x37
	.4byte	.LVL162
	.4byte	0x2a50
	.4byte	0x1e62
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0
	.uleb128 0x37
	.4byte	.LVL164
	.4byte	0x2a50
	.4byte	0x1e83
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL165
	.4byte	0x2a71
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	0x160a
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f84
	.uleb128 0x35
	.4byte	0x1616
	.4byte	.LLST32
	.uleb128 0x35
	.4byte	0x1621
	.4byte	.LLST33
	.uleb128 0x35
	.4byte	0x162c
	.4byte	.LLST34
	.uleb128 0x3f
	.4byte	0x1642
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.4byte	0x164d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x3d
	.4byte	0x1658
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x3f
	.4byte	0x1637
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC18
	.byte	0x9f
	.uleb128 0x37
	.4byte	.LVL171
	.4byte	0x2a50
	.4byte	0x1f1b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x25
	.byte	0
	.uleb128 0x37
	.4byte	.LVL172
	.4byte	0x2a50
	.4byte	0x1f3b
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL173
	.4byte	0x2a71
	.4byte	0x1f60
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL175
	.4byte	0x2a50
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF382
	.byte	0x1
	.byte	0x70
	.4byte	0x2c
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x203e
	.uleb128 0x42
	.4byte	.LASF379
	.byte	0x1
	.byte	0x70
	.4byte	0x10c9
	.4byte	.LLST35
	.uleb128 0x43
	.ascii	"s\000"
	.byte	0x1
	.byte	0x72
	.4byte	0x1604
	.4byte	.LLST36
	.uleb128 0x44
	.4byte	0x15da
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x7b
	.4byte	0x2020
	.uleb128 0x35
	.4byte	0x15e6
	.4byte	.LLST37
	.uleb128 0x35
	.4byte	0x15e6
	.4byte	.LLST37
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x32
	.4byte	0x15ef
	.4byte	.LLST39
	.uleb128 0x45
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0x2003
	.uleb128 0x32
	.4byte	0x15f9
	.4byte	.LLST40
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL190
	.4byte	0x2a95
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL179
	.4byte	0x2ab2
	.4byte	0x2034
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x98
	.byte	0
	.uleb128 0x39
	.4byte	.LVL184
	.4byte	0x2acc
	.byte	0
	.uleb128 0x25
	.4byte	.LASF380
	.byte	0x1
	.byte	0x89
	.byte	0x3
	.4byte	0x2066
	.uleb128 0x20
	.ascii	"s\000"
	.byte	0x1
	.byte	0x89
	.4byte	0x1604
	.uleb128 0x20
	.ascii	"p\000"
	.byte	0x1
	.byte	0x89
	.4byte	0x1532
	.uleb128 0x20
	.ascii	"d\000"
	.byte	0x1
	.byte	0x89
	.4byte	0x25
	.byte	0
	.uleb128 0x25
	.4byte	.LASF381
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.4byte	0x214b
	.uleb128 0x20
	.ascii	"s\000"
	.byte	0x1
	.byte	0xc3
	.4byte	0x1604
	.uleb128 0x24
	.4byte	.LASF202
	.byte	0x1
	.byte	0xc3
	.4byte	0x1016
	.uleb128 0x21
	.4byte	.LASF356
	.byte	0x1
	.byte	0xc5
	.4byte	0xda
	.uleb128 0x21
	.4byte	.LASF357
	.byte	0x1
	.byte	0xc5
	.4byte	0xda
	.uleb128 0x21
	.4byte	.LASF358
	.byte	0x1
	.byte	0xc5
	.4byte	0xda
	.uleb128 0x21
	.4byte	.LASF208
	.byte	0x1
	.byte	0xc5
	.4byte	0xda
	.uleb128 0x21
	.4byte	.LASF351
	.byte	0x1
	.byte	0xc6
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF352
	.byte	0x1
	.byte	0xc6
	.4byte	0x25
	.uleb128 0x23
	.ascii	"min\000"
	.byte	0x1
	.byte	0xc7
	.4byte	0x25
	.uleb128 0x23
	.ascii	"max\000"
	.byte	0x1
	.byte	0xc7
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF353
	.byte	0x1
	.byte	0xc7
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF354
	.byte	0x1
	.byte	0xc7
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF377
	.byte	0x1
	.byte	0xc8
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF355
	.byte	0x1
	.byte	0xc9
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF344
	.byte	0x1
	.byte	0xca
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF345
	.byte	0x1
	.byte	0xcb
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF347
	.byte	0x1
	.byte	0xcc
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF348
	.byte	0x1
	.byte	0xcd
	.4byte	0x25
	.uleb128 0x23
	.ascii	"c\000"
	.byte	0x1
	.byte	0xce
	.4byte	0x2c
	.uleb128 0x26
	.uleb128 0x23
	.ascii	"p\000"
	.byte	0x1
	.byte	0xd1
	.4byte	0x1532
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x108
	.4byte	0x2c
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x288b
	.uleb128 0x47
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x108
	.4byte	0x10c9
	.4byte	.LLST41
	.uleb128 0x2c
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x108
	.4byte	0x1271
	.4byte	.LLST42
	.uleb128 0x2d
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x1604
	.4byte	.LLST43
	.uleb128 0x48
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x10b
	.4byte	0x1016
	.4byte	.LLST44
	.uleb128 0x48
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x10c
	.4byte	0x1354
	.4byte	.LLST45
	.uleb128 0x2d
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x288b
	.4byte	.LLST46
	.uleb128 0x2d
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x2c
	.4byte	.LLST47
	.uleb128 0x2d
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x2c
	.4byte	.LLST48
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0x2228
	.uleb128 0x2d
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x113
	.4byte	0x1532
	.4byte	.LLST49
	.uleb128 0x49
	.4byte	0x203e
	.4byte	.LBB71
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.2byte	0x117
	.uleb128 0x35
	.4byte	0x205c
	.4byte	.LLST50
	.uleb128 0x35
	.4byte	0x2053
	.4byte	.LLST51
	.uleb128 0x2f
	.4byte	0x204a
	.uleb128 0x39
	.4byte	.LVL225
	.4byte	0x2ae1
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x15da
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.byte	0x1
	.2byte	0x12a
	.4byte	0x228e
	.uleb128 0x35
	.4byte	0x15e6
	.4byte	.LLST52
	.uleb128 0x35
	.4byte	0x15e6
	.4byte	.LLST52
	.uleb128 0x36
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.uleb128 0x32
	.4byte	0x15ef
	.4byte	.LLST54
	.uleb128 0x45
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.4byte	0x2277
	.uleb128 0x32
	.4byte	0x15f9
	.4byte	.LLST55
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL244
	.4byte	0x2a95
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x2066
	.4byte	.LBB89
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.2byte	0x125
	.4byte	0x27e1
	.uleb128 0x2f
	.4byte	0x207b
	.uleb128 0x2f
	.4byte	0x2072
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0xe8
	.uleb128 0x32
	.4byte	0x2086
	.4byte	.LLST56
	.uleb128 0x32
	.4byte	0x2091
	.4byte	.LLST57
	.uleb128 0x32
	.4byte	0x209c
	.4byte	.LLST58
	.uleb128 0x32
	.4byte	0x20a7
	.4byte	.LLST59
	.uleb128 0x32
	.4byte	0x20b2
	.4byte	.LLST60
	.uleb128 0x32
	.4byte	0x20bd
	.4byte	.LLST61
	.uleb128 0x32
	.4byte	0x20c8
	.4byte	.LLST62
	.uleb128 0x32
	.4byte	0x20d3
	.4byte	.LLST63
	.uleb128 0x32
	.4byte	0x20de
	.4byte	.LLST64
	.uleb128 0x32
	.4byte	0x20e9
	.4byte	.LLST65
	.uleb128 0x32
	.4byte	0x20f4
	.4byte	.LLST66
	.uleb128 0x32
	.4byte	0x20ff
	.4byte	.LLST67
	.uleb128 0x31
	.4byte	0x210a
	.uleb128 0x32
	.4byte	0x2115
	.4byte	.LLST68
	.uleb128 0x32
	.4byte	