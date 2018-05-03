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
	.file	"af_atempo.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.type	init, %function
init:
.LFB76:
	.file 1 "libavfilter/af_atempo.c"
	.loc 1 983 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 984 0
	ldr	r3, [r0, #36]
.LVL1:
	.loc 1 985 0
	mvn	r2, #0
	.loc 1 986 0
	mov	r0, #0
.LVL2:
	.loc 1 985 0
	str	r2, [r3, #40]
	.loc 1 986 0
	str	r0, [r3, #160]
	.loc 1 988 0
	bx	lr
	.cfi_endproc
.LFE76:
	.size	init, .-init
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.text
	.align	2
	.type	process_command, %function
process_command:
.LFB83:
	.loc 1 1169 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	mov	r8, r0
	.loc 1 1170 0
	mov	r0, r1
.LVL4:
	ldr	r1, .L20
.LVL5:
	.loc 1 1169 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	.loc 1 1170 0
.LPIC0:
	add	r1, pc, r1
	.loc 1 1169 0
	mov	r9, r2
	.loc 1 1170 0
	bl	strcmp(PLT)
.LVL6:
	subs	r6, r0, #0
	bne	.L9
.LVL7:
.LBB48:
.LBB49:
	.loc 1 326 0
	add	r1, sp, #16
	str	r6, [r1, #-4]!
	.loc 1 327 0
	mov	r0, r9
	.loc 1 325 0
	ldr	r7, [r8, #36]
.LVL8:
	.loc 1 327 0
	bl	av_strtod(PLT)
.LVL9:
	mov	r5, r1
	.loc 1 329 0
	ldr	r1, [sp, #12]
	.loc 1 327 0
	mov	r4, r0
.LVL10:
	.loc 1 329 0
	cmp	r1, #0
	beq	.L4
	.loc 1 329 0 is_stmt 0 discriminator 1
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L19
.L4:
	.loc 1 334 0 is_stmt 1
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L20+4
	bl	__aeabi_dcmplt(PLT)
.LVL11:
	cmp	r0, #0
	bne	.L6
	.loc 1 334 0 is_stmt 0 discriminator 1
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	mov	r3, #1073741824
	bl	__aeabi_dcmpgt(PLT)
.LVL12:
	cmp	r0, #0
	bne	.L6
.LVL13:
.LBB50:
.LBB51:
	.loc 1 170 0 is_stmt 1
	ldrd	r2, [r7, #152]
.LBE51:
.LBE50:
	.loc 1 341 0
	ldr	r8, [r7, #52]
.LVL14:
.LBB53:
.LBB52:
	.loc 1 170 0
	adds	r2, r2, #1
	and	r2, r2, #1
.LBE52:
.LBE53:
	.loc 1 341 0
	add	r3, r7, r2, asl #5
	ldrd	r0, [r3, #88]
	add	r8, r8, r8, lsr #31
	mov	r8, r8, asr #1
	mov	r9, r8, asr #31
.LVL15:
	adds	r0, r0, r8
	.loc 1 342 0
	add	r2, r2, #3
	.loc 1 341 0
	adc	r1, r1, r9
	.loc 1 342 0
	mov	r2, r2, asl #5
	.loc 1 341 0
	strd	r0, [r7, #72]
	.loc 1 342 0
	ldrd	r2, [r2, r7]
	.loc 1 343 0
	strd	r4, [r7, #64]
	.loc 1 342 0
	adds	r8, r8, r2
	adc	r9, r9, r3
	strd	r8, [r7, #80]
.LVL16:
.L3:
.LBE49:
.LBE48:
	.loc 1 1171 0
	mov	r0, r6
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL17:
.L9:
	.cfi_restore_state
	.loc 1 1170 0 discriminator 2
	mvn	r6, #37
	b	.L3
.LVL18:
.L6:
.LBB55:
.LBB54:
	.loc 1 335 0
	ldr	r2, .L20+8
	strd	r4, [sp]
	mov	r0, r8
	mov	r1, #16
.LPIC2:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL19:
	.loc 1 337 0
	mvn	r6, #21
	b	.L3
.L19:
	.loc 1 330 0
	ldr	r2, .L20+12
	mov	r0, r8
	mov	r3, r9
	mov	r1, #16
.LPIC1:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL20:
	.loc 1 331 0
	mvn	r6, #21
	b	.L3
.L21:
	.align	2
.L20:
	.word	.LC0-(.LPIC0+8)
	.word	1071644672
	.word	.LC2-(.LPIC2+8)
	.word	.LC1-(.LPIC1+8)
.LBE54:
.LBE55:
	.cfi_endproc
.LFE83:
	.size	process_command, .-process_command
	.global	__aeabi_ui2f
	.global	__aeabi_fcmplt
	.global	__aeabi_fcmpgt
	.global	__aeabi_i2f
	.global	__aeabi_d2f
	.align	2
	.type	yae_downmix, %function
yae_downmix:
.LFB66:
	.loc 1 402 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL21:
	.loc 1 407 0
	ldr	r2, [r0, #52]
	.loc 1 402 0
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
	.loc 1 407 0
	mov	r2, r2, asl #3
	.loc 1 402 0
	mov	r6, r0
	mov	r4, r1
	.loc 1 407 0
	ldr	r0, [r1, #24]
.LVL22:
	.loc 1 402 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 1 407 0
	mov	r1, #0
.LVL23:
	.loc 1 404 0
	ldr	r5, [r4, #16]
.LVL24:
	.loc 1 407 0
	bl	memset(PLT)
.LVL25:
	.loc 1 409 0
	ldr	r3, [r6, #40]
	cmp	r3, #0
	bne	.L23
.LBB56:
	.loc 1 410 0
	ldr	r3, [r6, #44]
	str	r3, [sp]
	mov	r2, r3
	ldr	r3, [r4, #20]
	cmp	r2, #1
	mla	r2, r3, r2, r5
	ldr	r9, [r4, #24]
	str	r2, [sp, #4]
.LVL26:
	beq	.L24
.LBB57:
	.loc 1 410 0 is_stmt 0 discriminator 18
	cmp	r5, r2
	bcs	.L22
	ldr	r3, [sp]
	mov	r7, r5
	sub	r3, r3, #1
	str	r3, [sp, #8]
.LVL27:
.L36:
	.loc 1 410 0 discriminator 19
	ldrb	r0, [r7]	@ zero_extendqisi2
	bl	__aeabi_ui2f(PLT)
.LVL28:
	ldr	r1, .L124
	add	r10, r7, #1
	bic	r6, r0, #-2147483648
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_fcmplt(PLT)
.LVL29:
	.loc 1 410 0 discriminator 15
	ldr	r3, [sp]
	.loc 1 410 0 discriminator 19
	cmp	r0, #0
	.loc 1 410 0 discriminator 4
	ldreq	r6, .L124
.LVL30:
	.loc 1 410 0 discriminator 15
	cmp	r3, #1
	ble	.L89
	add	r7, r7, r3
	mov	r4, r10
.LVL31:
.L35:
	.loc 1 410 0 discriminator 16
	ldrb	r0, [r4], #1	@ zero_extendqisi2
.LVL32:
	bl	__aeabi_ui2f(PLT)
.LVL33:
	ldr	r1, .L124
	bic	fp, r0, #-2147483648
	mov	r5, r0
.LVL34:
	mov	r0, fp
.LVL35:
	bl	__aeabi_fcmplt(PLT)
.LVL36:
	.loc 1 410 0 discriminator 11
	mov	r1, r6
	.loc 1 410 0 discriminator 16
	cmp	r0, #0
	.loc 1 410 0 discriminator 9
	ldreq	fp, .L124
.LVL37:
	.loc 1 410 0 discriminator 11
	mov	r0, fp
	bl	__aeabi_fcmpgt(PLT)
.LVL38:
	cmp	r0, #0
	.loc 1 410 0 discriminator 12
	movne	r8, r5
	movne	r6, fp
.LVL39:
	.loc 1 410 0 discriminator 15
	cmp	r4, r7
	bne	.L35
.LVL40:
	ldr	r3, [sp, #8]
	add	r7, r10, r3
.LVL41:
.L30:
	.loc 1 410 0 discriminator 18
	ldr	r3, [sp, #4]
	.loc 1 410 0 discriminator 17
	str	r8, [r9], #4	@ float
.LVL42:
	.loc 1 410 0 discriminator 18
	cmp	r3, r7
	bhi	.L36
.LVL43:
.L22:
.LBE57:
.LBE56:
	.loc 1 420 0 is_stmt 1
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL44:
.L23:
	.cfi_restore_state
	.loc 1 411 0
	cmp	r3, #1
	beq	.L121
	.loc 1 413 0
	cmp	r3, #2
	beq	.L122
	.loc 1 415 0
	cmp	r3, #3
	beq	.L123
	.loc 1 417 0
	cmp	r3, #4
	bne	.L22
.LBB59:
	.loc 1 418 0
	ldr	r9, [r6, #44]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	mul	r3, r9, r3
	cmp	r9, #1
	add	r3, r5, r3, asl #3
	str	r2, [sp]
	str	r3, [sp, #4]
.LVL45:
	beq	.L76
.LBB60:
	.loc 1 418 0 is_stmt 0 discriminator 18
	cmp	r5, r3
	subcc	r3, r9, #-536870911
.LVL46:
	movcc	r3, r3, asl #3
	strcc	r3, [sp, #8]
	bcs	.L22
.LVL47:
.L87:
	.loc 1 418 0 discriminator 19
	ldrd	r0, [r5], #8
.LVL48:
	bl	__aeabi_d2f(PLT)
.LVL49:
	mov	r1, #1065353216
	bic	r8, r0, #-2147483648
	mov	r10, r0
.LVL50:
	mov	r0, r8
.LVL51:
	bl	__aeabi_fcmplt(PLT)
.LVL52:
	cmp	r0, #0
	.loc 1 418 0 discriminator 4
	moveq	r8, #1065353216
.LVL53:
	.loc 1 418 0 discriminator 15
	cmp	r9, #1
	ble	.L81
	mov	r7, r5
	mov	r4, #1
.LVL54:
.L86:
	.loc 1 418 0 discriminator 16
	ldrd	r0, [r7], #8
.LVL55:
	bl	__aeabi_d2f(PLT)
.LVL56:
	mov	r1, #1065353216
	.loc 1 418 0 discriminator 14
	add	r4, r4, #1
.LVL57:
	.loc 1 418 0 discriminator 16
	bic	fp, r0, #-2147483648
	mov	r6, r0
.LVL58:
	mov	r0, fp
.LVL59:
	bl	__aeabi_fcmplt(PLT)
.LVL60:
	.loc 1 418 0 discriminator 11
	mov	r1, r8
	.loc 1 418 0 discriminator 16
	cmp	r0, #0
	.loc 1 418 0 discriminator 9
	moveq	fp, #1065353216
.LVL61:
	.loc 1 418 0 discriminator 11
	mov	r0, fp
	bl	__aeabi_fcmpgt(PLT)
.LVL62:
	cmp	r0, #0
	.loc 1 418 0 discriminator 12
	movne	r10, r6
	movne	r8, fp
.LVL63:
	.loc 1 418 0 discriminator 15
	cmp	r4, r9
	bne	.L86
	ldr	r3, [sp, #8]
	add	r5, r5, r3
.LVL64:
.L81:
	.loc 1 418 0 discriminator 18
	ldr	r3, [sp, #4]
	cmp	r3, r5
	.loc 1 418 0 discriminator 17
	ldr	r3, [sp]
	str	r10, [r3], #4	@ float
	str	r3, [sp]
.LVL65:
	.loc 1 418 0 discriminator 18
	bhi	.L87
	b	.L22
.LVL66:
.L89:
.LBE60:
.LBE59:
.LBB61:
.LBB58:
	.loc 1 410 0 is_stmt 1 discriminator 15
	mov	r7, r10
	b	.L30
.LVL67:
.L24:
.LBE58:
	.loc 1 410 0 is_stmt 0 discriminator 1
	cmp	r5, r2
	bcs	.L22
	mov	r4, r2
.LVL68:
.L27:
	.loc 1 410 0 discriminator 2
	ldrb	r0, [r5], #1	@ zero_extendqisi2
.LVL69:
	bl	__aeabi_ui2f(PLT)
.LVL70:
	.loc 1 410 0 discriminator 1
	cmp	r5, r4
	.loc 1 410 0 discriminator 2
	str	r0, [r9], #4	@ float
.LVL71:
	.loc 1 410 0 discriminator 1
	bne	.L27
.LBE61:
	.loc 1 420 0 is_stmt 1
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL72:
.L121:
	.cfi_restore_state
.LBB62:
	.loc 1 412 0
	ldr	r3, [r6, #44]
	ldr	fp, [r4, #20]
	str	r3, [sp]
	cmp	r3, #1
	mul	r3, fp, r3
	ldr	r9, [r4, #24]
	add	r3, r5, r3, asl #1
	str	r3, [sp, #4]
.LVL73:
	beq	.L38
.LBB63:
	.loc 1 412 0 is_stmt 0 discriminator 18
	cmp	r5, r3
	bcs	.L22
	ldr	r3, [sp]
.LVL74:
	mov	r3, r3, asl #1
	str	r3, [sp, #8]
	sub	r3, r3, #2
	str	r3, [sp, #12]
.LVL75:
.L49:
	.loc 1 412 0 discriminator 19
	ldrsh	r0, [r5]
	bl	__aeabi_i2f(PLT)
.LVL76:
	ldr	r1, .L124+4
	add	r10, r5, #2
	bic	r6, r0, #-2147483648
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_fcmplt(PLT)
.LVL77:
	.loc 1 412 0 discriminator 15
	ldr	r3, [sp]
	.loc 1 412 0 discriminator 19
	cmp	r0, #0
	.loc 1 412 0 discriminator 4
	ldreq	r6, .L124+4
.LVL78:
	.loc 1 412 0 discriminator 15
	cmp	r3, #1
	ble	.L92
	ldr	r3, [sp, #8]
	mov	r4, r10
	add	r7, r5, r3
.LVL79:
.L48:
	.loc 1 412 0 discriminator 16
	ldrsh	r0, [r4], #2
.LVL80:
	bl	__aeabi_i2f(PLT)
.LVL81:
	ldr	r1, .L124+4
	bic	r5, r0, #-2147483648
	mov	fp, r0
.LVL82:
	mov	r0, r5
.LVL83:
	bl	__aeabi_fcmplt(PLT)
.LVL84:
	.loc 1 412 0 discriminator 11
	mov	r1, r6
	.loc 1 412 0 discriminator 16
	cmp	r0, #0
	.loc 1 412 0 discriminator 9
	ldreq	r5, .L124+4
.LVL85:
	.loc 1 412 0 discriminator 11
	mov	r0, r5
	bl	__aeabi_fcmpgt(PLT)
.LVL86:
	cmp	r0, #0
	.loc 1 412 0 discriminator 12
	movne	r8, fp
	movne	r6, r5
.LVL87:
	.loc 1 412 0 discriminator 15
	cmp	r4, r7
	bne	.L48
	ldr	r3, [sp, #12]
	add	r5, r10, r3
.LVL88:
.L43:
	.loc 1 412 0 discriminator 18
	ldr	r3, [sp, #4]
	.loc 1 412 0 discriminator 17
	str	r8, [r9], #4	@ float
.LVL89:
	.loc 1 412 0 discriminator 18
	cmp	r3, r5
	bhi	.L49
	b	.L22
.LVL90:
.L123:
.LBE63:
.LBE62:
.LBB65:
	.loc 1 416 0 is_stmt 1
	ldr	r9, [r6, #44]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	mul	r3, r9, r3
	cmp	r9, #1
	add	r3, r5, r3, asl #2
	str	r2, [sp]
	str	r3, [sp, #4]
.LVL91:
	beq	.L64
.LBB66:
	.loc 1 416 0 is_stmt 0 discriminator 18
	cmp	r5, r3
	subcc	r3, r9, #-1073741823
.LVL92:
	movcc	r3, r3, asl #2
	strcc	r3, [sp, #8]
	bcs	.L22
.LVL93:
.L75:
	.loc 1 416 0 discriminator 19
	ldr	r10, [r5], #4	@ float
.LVL94:
	mov	r1, #1065353216
	bic	r8, r10, #-2147483648
	mov	r0, r8
	bl	__aeabi_fcmplt(PLT)
.LVL95:
	cmp	r0, #0
	.loc 1 416 0 discriminator 4
	moveq	r8, #1065353216
.LVL96:
	.loc 1 416 0 discriminator 15
	cmp	r9, #1
	ble	.L69
	mov	r7, r5
	mov	r4, #1
.LVL97:
.L74:
	.loc 1 416 0 discriminator 16
	ldr	r6, [r7], #4	@ float
.LVL98:
	mov	r1, #1065353216
	bic	fp, r6, #-2147483648
	mov	r0, fp
	bl	__aeabi_fcmplt(PLT)
.LVL99:
	.loc 1 416 0 discriminator 11
	mov	r1, r8
	.loc 1 416 0 discriminator 14
	add	r4, r4, #1
.LVL100:
	.loc 1 416 0 discriminator 16
	cmp	r0, #0
	.loc 1 416 0 discriminator 9
	moveq	fp, #1065353216
.LVL101:
	.loc 1 416 0 discriminator 11
	mov	r0, fp
	bl	__aeabi_fcmpgt(PLT)
.LVL102:
	cmp	r0, #0
	.loc 1 416 0 discriminator 12
	movne	r10, r6
	movne	r8, fp
.LVL103:
	.loc 1 416 0 discriminator 15
	cmp	r4, r9
	bne	.L74
	ldr	r3, [sp, #8]
	add	r5, r5, r3
.LVL104:
.L69:
	.loc 1 416 0 discriminator 18
	ldr	r3, [sp, #4]
	cmp	r3, r5
	.loc 1 416 0 discriminator 17
	ldr	r3, [sp]
	str	r10, [r3], #4	@ float
	str	r3, [sp]
.LVL105:
	.loc 1 416 0 discriminator 18
	bhi	.L75
	b	.L22
.LVL106:
.L122:
.LBE66:
.LBE65:
.LBB67:
	.loc 1 414 0 is_stmt 1
	ldr	r10, [r6, #44]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	mul	r3, r10, r3
	cmp	r10, #1
	add	r3, r5, r3, asl #2
	str	r2, [sp]
	str	r3, [sp, #4]
.LVL107:
	beq	.L51
.LBB68:
	.loc 1 414 0 is_stmt 0 discriminator 18
	cmp	r5, r3
	subcc	r3, r10, #-1073741823
.LVL108:
	movcc	r3, r3, asl #2
	strcc	r3, [sp, #8]
	bcs	.L22
.LVL109:
.L62:
	.loc 1 414 0 discriminator 19
	ldr	r0, [r5], #4
.LVL110:
	bl	__aeabi_i2f(PLT)
.LVL111:
	mov	r1, #1325400064
	bic	r9, r0, #-2147483648
	mov	fp, r0
.LVL112:
	mov	r0, r9
.LVL113:
	bl	__aeabi_fcmplt(PLT)
.LVL114:
	cmp	r0, #0
	.loc 1 414 0 discriminator 4
	moveq	r9, #1325400064
.LVL115:
	.loc 1 414 0 discriminator 15
	cmp	r10, #1
	ble	.L56
	mov	r8, r5
	mov	r6, #1
.LVL116:
.L61:
	.loc 1 414 0 discriminator 16
	ldr	r0, [r8], #4
.LVL117:
	bl	__aeabi_i2f(PLT)
.LVL118:
	mov	r1, #1325400064
	.loc 1 414 0 discriminator 14
	add	r6, r6, #1
.LVL119:
	.loc 1 414 0 discriminator 16
	bic	r4, r0, #-2147483648
	mov	r7, r0
.LVL120:
	mov	r0, r4
.LVL121:
	bl	__aeabi_fcmplt(PLT)
.LVL122:
	.loc 1 414 0 discriminator 11
	mov	r1, r9
	.loc 1 414 0 discriminator 16
	cmp	r0, #0
	.loc 1 414 0 discriminator 9
	moveq	r4, #1325400064
.LVL123:
	.loc 1 414 0 discriminator 11
	mov	r0, r4
	bl	__aeabi_fcmpgt(PLT)
.LVL124:
	cmp	r0, #0
	.loc 1 414 0 discriminator 12
	movne	fp, r7
	movne	r9, r4
.LVL125:
	.loc 1 414 0 discriminator 15
	cmp	r6, r10
	bne	.L61
	ldr	r3, [sp, #8]
	add	r5, r5, r3
.LVL126:
.L56:
	.loc 1 414 0 discriminator 18
	ldr	r3, [sp, #4]
	cmp	r3, r5
	.loc 1 414 0 discriminator 17
	ldr	r3, [sp]
	str	fp, [r3], #4	@ float
	str	r3, [sp]
.LVL127:
	.loc 1 414 0 discriminator 18
	bhi	.L62
	b	.L22
.LVL128:
.L92:
.LBE68:
.LBE67:
.LBB69:
.LBB64:
	.loc 1 412 0 is_stmt 1 discriminator 15
	mov	r5, r10
	b	.L43
.LVL129:
.L38:
.LBE64:
	.loc 1 412 0 is_stmt 0 discriminator 1
	cmp	r5, r3
	bcs	.L22
	mov	r4, r3
.LVL130:
.L40:
	.loc 1 412 0 discriminator 2
	ldrsh	r0, [r5], #2
.LVL131:
	bl	__aeabi_i2f(PLT)
.LVL132:
	.loc 1 412 0 discriminator 1
	cmp	r4, r5
	.loc 1 412 0 discriminator 2
	str	r0, [r9], #4	@ float
.LVL133:
	.loc 1 412 0 discriminator 1
	bhi	.L40
	b	.L22
.LVL134:
.L51:
.LBE69:
.LBB70:
	.loc 1 414 0 is_stmt 1 discriminator 1
	cmp	r5, r3
	bcs	.L22
	ldr	r4, [sp]
.LVL135:
	mov	r6, r3
.LVL136:
.L53:
	.loc 1 414 0 is_stmt 0 discriminator 2
	ldr	r0, [r5], #4
.LVL137:
	bl	__aeabi_i2f(PLT)
.LVL138:
	.loc 1 414 0 discriminator 1
	cmp	r6, r5
	.loc 1 414 0 discriminator 2
	str	r0, [r4], #4	@ float
.LVL139:
	.loc 1 414 0 discriminator 1
	bhi	.L53
	b	.L22
.LVL140:
.L76:
.LBE70:
.LBB71:
	.loc 1 418 0 is_stmt 1 discriminator 1
	cmp	r5, r3
	bcs	.L22
	ldr	r4, [sp]
.LVL141:
	mov	r6, r3
.LVL142:
.L78:
	.loc 1 418 0 is_stmt 0 discriminator 2
	ldrd	r0, [r5], #8
.LVL143:
	bl	__aeabi_d2f(PLT)
.LVL144:
	.loc 1 418 0 discriminator 1
	cmp	r6, r5
	.loc 1 418 0 discriminator 2
	str	r0, [r4], #4	@ float
.LVL145:
	.loc 1 418 0 discriminator 1
	bhi	.L78
	b	.L22
.LVL146:
.L64:
.LBE71:
.LBB72:
	.loc 1 416 0 is_stmt 1 discriminator 1
	cmp	r5, r3
	bcs	.L22
	mov	r1, r3
	ldr	r3, [sp]
.LVL147:
.L66:
	.loc 1 416 0 is_stmt 0 discriminator 2
	ldr	r2, [r5], #4	@ float
.LVL148:
	str	r2, [r3], #4	@ float
.LVL149:
	.loc 1 416 0 discriminator 1
	cmp	r1, r5
	bhi	.L66
	b	.L22
.L125:
	.align	2
.L124:
	.word	1123942400
	.word	1191181824
.LBE72:
	.cfi_endproc
.LFE66:
	.size	yae_downmix, .-yae_downmix
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.align	2
	.type	yae_load_frag, %function
yae_load_frag:
.LFB68:
	.loc 1 507 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL150:
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
.LBB82:
.LBB83:
	.loc 1 165 0
	ldrd	r6, [r0, #152]
.LBE83:
.LBE82:
	.loc 1 516 0
	ldr	r3, [r0, #52]
.LBB85:
.LBB84:
	.loc 1 165 0
	and	r6, r6, #1
.LBE84:
.LBE85:
	.loc 1 507 0
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 1 507 0
	mov	r4, r0
.LVL151:
	.loc 1 516 0
	mov	r0, r6, asl #5
.LVL152:
	str	r0, [sp, #32]
	add	r0, r4, r0
	ldrd	r6, [r0, #88]
	mov	r9, r3, asr #31
	adds	r10, r3, r6
	adc	fp, r9, r7
	.loc 1 517 0
	cmp	r1, #0
	.loc 1 516 0
	mov	r8, r3
	strd	r10, [sp, #8]
.LVL153:
	.loc 1 517 0
	str	r1, [sp, #36]
	beq	.L127
.LBB86:
.LBB87:
	.loc 1 436 0
	ldrd	r6, [r4, #24]
	.loc 1 435 0
	ldr	fp, [r1]
	.loc 1 438 0
	ldrd	r0, [sp, #8]
	mov	ip, r2
.LVL154:
	cmp	r6, r0
	sbcs	r2, r7, r1
.LVL155:
	bge	.L156
	.loc 1 443 0
	ldr	r8, [r4, #8]
	.loc 1 436 0
	rsb	r3, r6, r0
	.loc 1 443 0
	cmp	r3, r8
	.loc 1 436 0
	str	r3, [sp, #16]
	movle	r10, fp
	movle	r9, ip
	.loc 1 443 0
	ble	.L133
	b	.L173
.LVL156:
.L131:
.LBB88:
	.loc 1 472 0
	cmp	r3, #0
	bne	.L174
.LVL157:
.L133:
.LBE88:
	.loc 1 445 0
	ldrd	r2, [sp, #8]
	cmp	r6, r2
	sbcs	r3, r7, r3
	bge	.L135
	.loc 1 445 0 is_stmt 0 discriminator 1
	cmp	r9, r10
	bls	.L175
	ldr	r3, [sp, #16]
.LBB92:
	.loc 1 446 0 is_stmt 1
	ldr	fp, [r4, #48]
.LVL158:
	cmp	r3, r8
	mov	r1, fp
	rsb	r0, r10, r9
	movlt	r5, r3
	movge	r5, r8
	bl	__aeabi_idiv(PLT)
.LVL159:
	.loc 1 454 0
	ldr	r1, [r4, #20]
	rsb	r2, r1, r8
	.loc 1 453 0
	cmp	r5, r0
	movlt	r3, r5
	movge	r3, r0
.LVL160:
	.loc 1 454 0
	cmp	r3, r2
	movlt	r5, r3
	movge	r5, r2
.LVL161:
	.loc 1 455 0
	rsb	r3, r5, r3
.LVL162:
	cmp	r3, r8
	movge	r3, r8
.LVL163:
	.loc 1 457 0
	cmp	r5, #0
	beq	.L131
.LVL164:
.LBB89:
	.loc 1 458 0
	ldr	r0, [r4, #4]
	.loc 1 459 0
	mul	r2, r5, fp
	mla	r0, r1, fp, r0
.LVL165:
	mov	r1, r10
	str	r3, [sp, #28]
	bl	memcpy(PLT)
.LVL166:
	.loc 1 462 0
	ldrd	r6, [r4, #24]
	.loc 1 464 0
	ldr	r2, [r4, #12]
	ldr	r8, [r4, #8]
	add	r2, r5, r2
	.loc 1 462 0
	adds	r6, r6, r5
	adc	r7, r7, r5, asr #31
	.loc 1 465 0
	ldr	r0, [r4, #20]
	.loc 1 464 0
	cmp	r2, r8
	movge	r2, r8
	str	r2, [r4, #12]
	.loc 1 462 0
	strd	r6, [r4, #24]
	.loc 1 465 0
	mov	r1, r8
	add	r0, r5, r0
	.loc 1 464 0
	str	r2, [sp, #24]
	.loc 1 465 0
	bl	__aeabi_idivmod(PLT)
.LVL167:
	.loc 1 468 0
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	cmp	r8, r2
	.loc 1 461 0
	ldr	fp, [r4, #48]
.LVL168:
	mla	r10, fp, r5, r10
.LVL169:
	.loc 1 465 0
	str	r1, [r4, #20]
	.loc 1 468 0 discriminator 1
	rsbgt	r1, r2, r1
.LBE89:
	.loc 1 472 0
	cmp	r3, #0
.LBB90:
	.loc 1 466 0
	str	r1, [r4, #16]
.LBE90:
	.loc 1 472 0
	beq	.L133
.LVL170:
.L174:
.LBB91:
	.loc 1 474 0
	mul	r2, r3, fp
	mov	r1, r10
	ldr	r0, [r4, #4]
	str	r3, [sp, #24]
	bl	memcpy(PLT)
.LVL171:
	.loc 1 479 0
	ldr	r3, [sp, #24]
	.loc 1 477 0
	ldrd	r6, [r4, #24]
	.loc 1 479 0
	ldr	r5, [r4, #12]
.LVL172:
	ldr	r8, [r4, #8]
	add	r5, r3, r5
	.loc 1 477 0
	adds	r6, r6, r3
	adc	r7, r7, r3, asr #31
	.loc 1 480 0
	ldr	r0, [r4, #20]
	.loc 1 479 0
	cmp	r5, r8
	movge	r5, r8
	.loc 1 476 0
	ldr	r2, [r4, #48]
	.loc 1 477 0
	strd	r6, [r4, #24]
	.loc 1 479 0
	str	r5, [r4, #12]
	.loc 1 480 0
	mov	r1, r8
	add	r0, r3, r0
	.loc 1 476 0
	mla	r10, r2, r3, r10
.LVL173:
	.loc 1 480 0
	bl	__aeabi_idivmod(PLT)
.LVL174:
	.loc 1 483 0
	cmp	r8, r5
	.loc 1 480 0
	str	r1, [r4, #20]
	.loc 1 483 0 discriminator 1
	rsbgt	r1, r5, r1
	.loc 1 481 0
	str	r1, [r4, #16]
	b	.L133
.LVL175:
.L156:
.LBE91:
.LBE92:
.LBE87:
.LBE86:
	.loc 1 524 0 discriminator 2
	mov	r0, #0
	mov	r1, #0
.L140:
.LVL176:
	.loc 1 528 0
	cmp	r0, r8
	sbcs	r2, r1, r9
	blt	.L176
.LVL177:
	.loc 1 531 0
	ldr	r3, [sp, #32]
	mov	r5, #0
	add	r1, r4, r3
	str	r5, [r1, #108]
	.loc 1 534 0
	ldr	r0, [r4, #12]
.LVL178:
	.loc 1 537 0
	ldrd	r2, [r1, #88]
	.loc 1 534 0
	subs	r6, r6, r0
	sbc	r7, r7, r0, asr #31
	.loc 1 537 0
	cmp	r2, r6
	sbcs	r0, r3, r7
	.loc 1 532 0
	ldr	ip, [r1, #104]
.LVL179:
	.loc 1 537 0
	bge	.L171
	mov	r10, #0
	mov	fp, #0
.LVL180:
.L154:
	.loc 1 539 0
	subs	r2, r6, r2
	sbc	r3, r7, r3
	cmp	r2, r10
	sbcs	r1, r3, fp
	mov	r9, fp
	movlt	r9, r3
	mov	r8, r10
	movlt	r8, r2
.LVL181:
	.loc 1 540 0
	cmp	r9, fp
	cmpeq	r8, r10
	beq	.L177
	.loc 1 542 0
	ldr	r2, [r4, #48]
	mov	r0, ip
	mul	r2, r8, r2
	mov	r1, #0
	str	ip, [sp, #8]
	bl	memset(PLT)
.LVL182:
	.loc 1 543 0
	ldr	r3, [r4, #48]
	ldr	ip, [sp, #8]
	.loc 1 551 0
	ldr	lr, [r4, #16]
	.loc 1 543 0
	mla	ip, r3, r8, ip
.LVL183:
	.loc 1 551 0
	ldr	r3, [r4, #20]
	.loc 1 552 0
	cmp	lr, r3
	bge	.L146
.L179:
	.loc 1 552 0 is_stmt 0 discriminator 1
	rsb	r3, lr, r3
	str	r3, [sp, #8]
.LVL184:
	mov	r2, #0
	mov	r3, #0
.LVL185:
	strd	r2, [sp, #16]
	ldr	r3, [sp, #8]
.LVL186:
.L147:
	.loc 1 558 0 is_stmt 1
	adds	r0, r8, r3
	adc	r1, r9, r3, asr #31
	ldrd	r2, [sp, #16]
	adds	r2, r2, r0
	adc	r3, r3, r1
.LVL187:
	mov	r1, r3
	cmp	r2, r10
	sbcs	r3, r1, fp
	blt	.L178
	.loc 1 563 0
	ldr	r3, [sp, #32]
	.loc 1 560 0
	ldr	r7, [r4, #4]
	.loc 1 563 0
	add	r2, r4, r3
	ldr	r1, [r2, #88]
	.loc 1 564 0
	ldr	r3, [sp, #8]
	rsb	r6, r6, r1
.LVL188:
	.loc 1 563 0
	add	r6, r6, r8
	.loc 1 564 0
	cmp	r6, r3
	.loc 1 560 0
	ldr	r2, [r4, #48]
.LVL189:
	.loc 1 564 0
	blt	.L149
	.loc 1 564 0 is_stmt 0 discriminator 1
	rsb	r1, r3, r6
.LVL190:
	.loc 1 567 0 is_stmt 1
	rsb	r8, r8, r5
.LVL191:
.L150:
	.loc 1 574 0
	cmp	r8, #0
	beq	.L171
	.loc 1 575 0
	mla	r1, r2, r1, r7
	mov	r0, ip
	mul	r2, r8, r2
	bl	memcpy(PLT)
.LVL192:
.L171:
	.loc 1 578 0
	mov	r0, #0
.L168:
	.loc 1 579 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL193:
.L176:
	.cfi_restore_state
	.loc 1 528 0 discriminator 1
	rsb	r5, r0, r3
	.loc 1 531 0
	ldr	r3, [sp, #32]
	mov	r10, r5
	add	r1, r4, r3
	str	r5, [r1, #108]
	.loc 1 534 0
	ldr	r0, [r4, #12]
.LVL194:
	.loc 1 537 0
	ldrd	r2, [r1, #88]
	.loc 1 534 0
	subs	r6, r6, r0
	sbc	r7, r7, r0, asr #31
	.loc 1 537 0
	cmp	r2, r6
	sbcs	r0, r3, r7
	.loc 1 532 0
	ldr	ip, [r1, #104]
	mov	fp, #0
.LVL195:
	.loc 1 537 0
	blt	.L154
	.loc 1 546 0
	cmp	r5, #0
	.loc 1 535 0
	movne	r8, #0
	movne	r9, #0
	.loc 1 546 0
	beq	.L171
.LVL196:
	.loc 1 551 0
	ldr	lr, [r4, #16]
	ldr	r3, [r4, #20]
	.loc 1 552 0
	cmp	lr, r3
	blt	.L179
.LVL197:
.L146:
	.loc 1 552 0 is_stmt 0 discriminator 2
	ldr	r2, [r4, #8]
	mov	r0, r3
	mov	r1, r3, asr #31
	rsb	r3, lr, r2
	strd	r0, [sp, #16]
	str	r3, [sp, #8]
.LVL198:
	b	.L147
.LVL199:
.L149:
	.loc 1 566 0 is_stmt 1 discriminator 1
	rsb	r8, r8, r5
.LVL200:
	rsb	r5, r6, r3
	cmp	r5, r8
	movge	r5, r8
.LVL201:
	.loc 1 569 0
	cmp	r5, #0
	.loc 1 567 0
	rsb	r8, r5, r8
.LVL202:
	.loc 1 564 0 discriminator 2
	moveq	r1, r5
	.loc 1 569 0
	beq	.L150
	add	r1, r6, lr
	.loc 1 570 0
	mla	r1, r2, r1, r7
	mov	r0, ip
	mul	r2, r5, r2
.LVL203:
	bl	memcpy(PLT)
.LVL204:
	.loc 1 571 0
	ldr	r2, [r4, #48]
	.loc 1 564 0 discriminator 2
	mov	r1, #0
	.loc 1 570 0
	mov	ip, r0
	.loc 1 571 0
	mla	ip, r2, r5, ip
.LVL205:
	b	.L150
.LVL206:
.L127:
	ldrd	r6, [r4, #24]
.LVL207:
.L152:
	.loc 1 524 0
	ldrd	r0, [sp, #8]
	cmp	r6, r0
	sbcs	r2, r7, r1
	bge	.L156
	.loc 1 524 0 is_stmt 0 discriminator 1
	subs	r0, r0, r6
	sbc	r1, r1, r7
	b	.L140
.LVL208:
.L135:
.LBB97:
.LBB93:
	.loc 1 492 0 is_stmt 1
	ldrd	r2, [sp, #8]
	cmp	r2, r6
	sbcs	r3, r3, r7
	.loc 1 489 0
	ldr	r3, [sp, #36]
	str	r10, [r3]
	.loc 1 492 0
	blt	.L180
	.loc 1 494 0
	ldrd	r2, [sp, #8]
	cmp	r3, r7
	cmpeq	r2, r6
	bne	.L155
	ldr	r3, [r4, #52]
	mov	r8, r3
	mov	r9, r3, asr #31
	b	.L152
.L175:
	.loc 1 489 0
	ldr	r3, [sp, #36]
.LBE93:
.LBE97:
	.loc 1 518 0
	mvn	r0, #10
.LBB98:
.LBB94:
	.loc 1 489 0
	str	r10, [r3]
.LBE94:
.LBE98:
	.loc 1 579 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL209:
.L155:
	.cfi_restore_state
	.loc 1 518 0
	mvn	r0, #10
	b	.L168
.L180:
.LBB99:
.LBB95:
	.loc 1 492 0 discriminator 1
	ldr	r3, .L181
	mov	r2, #492
.LPIC48:
	add	r3, pc, r3
	str	r3, [sp]
	str	r2, [sp, #4]
	ldr	r3, .L181+4
	ldr	r2, .L181+8
	mov	r0, #0
	mov	r1, r0
.LPIC46:
	add	r2, pc, r2
.LPIC47:
	add	r3, pc, r3
	bl	av_log(PLT)
.LVL210:
	.loc 1 492 0 is_stmt 0 discriminator 2
	bl	abort(PLT)
.LVL211:
.L177:
.LBE95:
.LBE99:
	.loc 1 540 0 is_stmt 1 discriminator 1
	ldr	r3, .L181+12
	mov	r2, #540
.LPIC51:
	add	r3, pc, r3
	str	r3, [sp]
	str	r2, [sp, #4]
	ldr	r3, .L181+16
	ldr	r2, .L181+20
	mov	r0, #0
	mov	r1, r0
.LPIC49:
	add	r2, pc, r2
.LPIC50:
	add	r3, pc, r3
	bl	av_log(PLT)
.LVL212:
	.loc 1 540 0 is_stmt 0 discriminator 2
	bl	abort(PLT)
.LVL213:
.L178:
	.loc 1 558 0 is_stmt 1 discriminator 1
	ldr	r3, .L181+24
	ldr	r2, .L181+28
.LPIC54:
	add	r3, pc, r3
	str	r3, [sp]
	str	r2, [sp, #4]
	ldr	r3, .L181+32
	ldr	r2, .L181+36
	mov	r0, #0
	mov	r1, r0
.LPIC52:
	add	r2, pc, r2
.LPIC53:
	add	r3, pc, r3
	bl	av_log(PLT)
.LVL214:
	.loc 1 558 0 is_stmt 0 discriminator 2
	bl	abort(PLT)
.LVL215:
.L173:
.LBB100:
.LBB96:
	.loc 1 443 0 is_stmt 1 discriminator 1
	ldr	r3, .L181+40
	ldr	r2, .L181+44
.LPIC45:
	add	r3, pc, r3
	str	r3, [sp]
	str	r2, [sp, #4]
	ldr	r3, .L181+48
	ldr	r2, .L181+52
	mov	r0, #0
.LVL216:
	mov	r1, r0
.LVL217:
.LPIC43:
	add	r2, pc, r2
.LPIC44:
	add	r3, pc, r3
	bl	av_log(PLT)
.LVL218:
	.loc 1 443 0 is_stmt 0 discriminator 2
	bl	abort(PLT)
.LVL219:
.L182:
	.align	2
.L181:
	.word	.LC5-(.LPIC48+8)
	.word	.LC6-(.LPIC47+8)
	.word	.LC3-(.LPIC46+8)
	.word	.LC5-(.LPIC51+8)
	.word	.LC7-(.LPIC50+8)
	.word	.LC3-(.LPIC49+8)
	.word	.LC5-(.LPIC54+8)
	.word	558
	.word	.LC8-(.LPIC53+8)
	.word	.LC3-(.LPIC52+8)
	.word	.LC5-(.LPIC45+8)
	.word	443
	.word	.LC4-(.LPIC44+8)
	.word	.LC3-(.LPIC43+8)
.LBE96:
.LBE100:
	.cfi_endproc
.LFE68:
	.size	yae_load_frag, .-yae_load_frag
	.align	2
	.type	query_formats, %function
query_formats:
.LFB78:
	.loc 1 997 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL220:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 997 0
	mov	r4, r0
	.loc 1 1017 0
	bl	ff_all_channel_layouts(PLT)
.LVL221:
	.loc 1 1018 0
	subs	r1, r0, #0
	beq	.L186
	.loc 1 1021 0
	mov	r0, r4
.LVL222:
	bl	ff_set_common_channel_layouts(PLT)
.LVL223:
	.loc 1 1022 0
	cmp	r0, #0
	ldmltfd	sp!, {r4, pc}
	.loc 1 1025 0
	ldr	r0, .L196
.LVL224:
.LPIC55:
	add	r0, pc, r0
	bl	ff_make_format_list(PLT)
.LVL225:
	.loc 1 1026 0
	subs	r1, r0, #0
	beq	.L186
	.loc 1 1029 0
	mov	r0, r4
.LVL226:
	bl	ff_set_common_formats(PLT)
.LVL227:
	.loc 1 1030 0
	cmp	r0, #0
	ldmltfd	sp!, {r4, pc}
.LVL228:
.LBB103:
.LBB104:
	.loc 1 1033 0
	bl	ff_all_samplerates(PLT)
.LVL229:
	.loc 1 1034 0
	subs	r1, r0, #0
	beq	.L186
	.loc 1 1037 0
	mov	r0, r4
.LVL230:
.LBE104:
.LBE103:
	.loc 1 1038 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL231:
.LBB106:
.LBB105:
	.loc 1 1037 0
	b	ff_set_common_samplerates(PLT)
.LVL232:
.L186:
	.cfi_restore_state
.LBE105:
.LBE106:
	.loc 1 1019 0
	mvn	r0, #11
	ldmfd	sp!, {r4, pc}
.L197:
	.align	2
.L196:
	.word	.LANCHOR0-(.LPIC55+8)
	.cfi_endproc
.LFE78:
	.size	query_formats, .-query_formats
	.global	__aeabi_l2d
	.global	__aeabi_ddiv
	.global	__aeabi_dsub
	.global	__aeabi_d2iz
	.global	__aeabi_fmul
	.global	__aeabi_fadd
	.global	__aeabi_fsub
	.align	2
	.type	yae_adjust_position, %function
yae_adjust_position:
.LFB72:
	.loc 1 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL233:
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
.LBB116:
.LBB117:
	.loc 1 170 0
	ldrd	r6, [r0, #152]
.LBE117:
.LBE116:
	.loc 1 700 0
	ldr	r4, [r0, #52]
.LBB119:
.LBB118:
	.loc 1 170 0
	adds	r2, r6, #1
	and	r2, r2, #1
.LBE118:
.LBE119:
	.loc 1 700 0
	add	r3, r2, #3
	.loc 1 695 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 695 0
	mov	ip, r0
	.loc 1 700 0
	mov	r1, r4, lsr #31
	mov	r3, r3, asl #5
	ldrd	r8, [ip, #80]
	mov	lr, r1
	.loc 1 695 0
	str	r0, [sp, #4]
.LVL234:
	.loc 1 700 0
	str	r1, [sp, #24]
	ldrd	r0, [r0, r3]
.LVL235:
	add	r3, lr, r4
	mov	lr, r3, asr #1
	subs	r0, r0, r8
	mov	fp, lr, asr #31
	sbc	r1, r1, r9
	.loc 1 699 0
	adds	r0, r0, lr
	adc	r1, r1, fp
	.loc 1 703 0
	mov	r5, r2, asl #5
	.loc 1 700 0
	mov	r10, lr
	str	lr, [sp, #16]
	.loc 1 699 0
	bl	__aeabi_l2d(PLT)
.LVL236:
	.loc 1 703 0
	ldr	ip, [sp, #4]
.LBB120:
.LBB121:
	.loc 1 165 0
	and	r6, r6, #1
.LVL237:
.LBE121:
.LBE120:
	.loc 1 703 0
	add	r3, ip, r5
.LBB123:
.LBB122:
	.loc 1 165 0
	mov	lr, r6, asl #5
	mov	r7, lr
	str	lr, [sp, #28]
.LBE122:
.LBE123:
	.loc 1 699 0
	mov	r8, r0
	mov	r9, r1
	.loc 1 703 0
	ldrd	r0, [r3, #88]
	ldrd	r2, [ip, #72]
	subs	r0, r0, r2
	sbc	r1, r1, r3
	adds	r0, r0, r10
	adc	r1, r1, fp
	bl	__aeabi_l2d(PLT)
.LVL238:
	.loc 1 702 0
	ldr	r6, [sp, #4]
	ldrd	r2, [r6, #64]
	bl	__aeabi_ddiv(PLT)
.LVL239:
	add	r5, r6, r5
	mov	r2, r0
	mov	r3, r1
	.loc 1 706 0
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub(PLT)
.LVL240:
	bl	__aeabi_d2iz(PLT)
.LVL241:
	add	r3, r6, r7
	ldr	fp, [r5, #112]
	ldr	r5, [r3, #112]
.LBB124:
.LBB125:
.LBB126:
.LBB127:
	.loc 1 619 0
	ldr	r1, [r5]	@ float
.LBE127:
.LBE126:
.LBE125:
.LBE124:
	.loc 1 706 0
	mov	r8, r0
	str	r0, [sp, #12]
.LVL242:
.LBB139:
.LBB135:
.LBB131:
.LBB128:
	.loc 1 619 0
	ldr	r0, [fp]	@ float
.LVL243:
	bl	__aeabi_fmul(PLT)
.LVL244:
.LBE128:
.LBE131:
.LBE135:
.LBE139:
	.loc 1 709 0
	ldr	r3, [r6, #172]
	mov	ip, r6
	ldr	r2, [ip, #168]
.LBB140:
.LBB136:
.LBB132:
.LBB129:
	.loc 1 620 0
	ldr	r1, [r5, #4]	@ float
.LBE129:
.LBE132:
.LBE136:
.LBE140:
	.loc 1 709 0
	str	r2, [sp, #20]
.LBB141:
.LBB137:
	.loc 1 648 0
	rsb	r2, r8, #0
.LBE137:
.LBE141:
	.loc 1 709 0
	mov	r6, r3
	str	r3, [sp, #8]
.LVL245:
.LBB142:
.LBB138:
	.loc 1 648 0
	str	r2, [sp]
.LVL246:
.LBB133:
.LBB130:
	.loc 1 619 0
	str	r0, [r3]	@ float
	.loc 1 620 0
	ldr	r0, [fp, #4]	@ float
	bl	__aeabi_fmul(PLT)
.LVL247:
	.loc 1 625 0 discriminator 1
	cmp	r4, #1
	.loc 1 620 0
	str	r0, [r6, #4]	@ float
.LVL248:
	.loc 1 625 0 discriminator 1
	ble	.L203
	add	r10, r6, #16
.LVL249:
	add	fp, fp, #16
	add	r5, r5, #16
.LVL250:
	mov	r6, #1
.LVL251:
.L202:
	.loc 1 626 0
	ldr	r1, [r5, #-8]	@ float
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_fmul(PLT)
.LVL252:
	ldr	r8, [fp, #-4]	@ float
	ldr	r7, [r5, #-4]	@ float
	.loc 1 625 0 discriminator 3
	add	r6, r6, #1
.LVL253:
	.loc 1 626 0
	mov	r1, r7
	add	r5, r5, #8
	add	fp, fp, #8
.LVL254:
	add	r10, r10, #8
	mov	r9, r0
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
.LVL255:
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fadd(PLT)
.LVL256:
	str	r0, [r10, #-16]	@ float
	.loc 1 627 0
	mov	r0, r8
	ldr	r1, [r5, #-16]	@ float
	bl	__aeabi_fmul(PLT)
.LVL257:
	ldr	r1, [fp, #-16]	@ float
	mov	r8, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
.LVL258:
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fsub(PLT)
.LVL259:
	.loc 1 625 0 discriminator 1
	cmp	r6, r4
	.loc 1 627 0
	str	r0, [r10, #-12]	@ float
	.loc 1 625 0 discriminator 1
	bne	.L202
.LVL260:
.L203:
	.loc 1 631 0
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #8]
	bl	av_rdft_calc(PLT)
.LVL261:
.LBE130:
.LBE133:
	.loc 1 663 0
	ldr	r3, [sp]
	.loc 1 666 0
	ldr	r2, [sp, #12]
	.loc 1 663 0
	bic	r7, r3, r3, asr #31
.LVL262:
	.loc 1 664 0
	cmp	r7, r4
	movge	r7, r4
.LVL263:
	.loc 1 666 0
	ldr	r1, [sp, #16]
	cmp	r4, #0
	add	r3, r4, #15
	movge	r3, r4
	rsb	r5, r2, r1, asl #1
	sub	r3, r4, r3, asr #4
	cmp	r5, r3
	movge	r5, r3
.LVL264:
	.loc 1 667 0
	bic	r5, r5, r5, asr #31
.LVL265:
	.loc 1 672 0 discriminator 1
	cmp	r7, r5
	.loc 1 670 0
	mov	r3, r7, asl #2
.LVL266:
	ldrge	r0, [sp]
	.loc 1 672 0 discriminator 1
	bge	.L201
.LBB134:
	.loc 1 681 0
	ldr	r2, [sp, #24]
	sub	r3, r3, #4
.LVL267:
	add	r4, r2, r4
.LVL268:
	ldr	r2, [sp, #8]
	ldr	r8, [sp]
	add	r10, r2, r3
	ldr	r3, [sp, #12]
.LVL269:
	sub	r4, r7, r4, asr #1
	rsb	r5, r7, r5
.LVL270:
	mvn	r6, #8388608
	add	r7, r7, r3
.LVL271:
	mov	fp, #0
.LVL272:
.L206:
	.loc 1 676 0
	add	r0, r7, fp
	bl	__aeabi_i2f(PLT)
.LVL273:
	mov	r9, r0
	.loc 1 677 0
	mov	r0, fp
	bl	__aeabi_i2f(PLT)
.LVL274:
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fmul(PLT)
.LVL275:
	mov	r9, r0
	rsb	r0, fp, r5
	bl	__aeabi_i2f(PLT)
.LVL276:
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fmul(PLT)
.LVL277:
	ldr	r1, [r10, #4]!	@ float
.LVL278:
	bl	__aeabi_fmul(PLT)
.LVL279:
	.loc 1 679 0
	mov	r1, r6
	.loc 1 677 0
	mov	r9, r0
.LVL280:
	.loc 1 679 0
	bl	__aeabi_fcmpgt(PLT)
.LVL281:
	cmp	r0, #0
	addne	r8, r4, fp
.LVL282:
	add	fp, fp, #1
	.loc 1 680 0
	movne	r6, r9
.LVL283:
.LBE134:
	.loc 1 672 0 discriminator 1
	cmp	fp, r5
	bne	.L206
	mov	r0, r8
	str	r8, [sp]
.LVL284:
.L201:
.LBE138:
.LBE142:
	.loc 1 717 0
	cmp	r0, #0
	beq	.L207
	.loc 1 719 0
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #28]
	.loc 1 722 0
	mov	r1, #0
	.loc 1 719 0
	add	r6, r3, r2
	ldrd	r2, [r6, #88]
	.loc 1 722 0
	str	r1, [r6, #108]
	.loc 1 719 0
	subs	r2, r2, r0
	sbc	r3, r3, r0, asr #31
	ldr	r0, [sp]
	strd	r2, [r6, #88]
.L207:
	.loc 1 726 0
	add	sp, sp, #36
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE72:
	.size	yae_adjust_position, .-yae_adjust_position
	.align	2
	.type	yae_release_buffers, %function
yae_release_buffers:
.LFB63:
	.loc 1 217 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL285:
.LBB145:
.LBB146:
	.loc 1 202 0
	ldr	r2, [r0, #52]
.LBE146:
.LBE145:
	.loc 1 217 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB150:
.LBB147:
	.loc 1 202 0
	add	r2, r2, r2, lsr #31
	mov	r2, r2, asr #1
	mov	r3, r2, asr #31
	rsbs	r2, r2, #0
	rsc	r3, r3, #0
	.loc 1 178 0
	mov	r5, #0
	.loc 1 182 0
	mov	r6, #0
	mov	r7, #0
.LBE147:
.LBE150:
	.loc 1 217 0
	mov	r4, r0
.LVL286:
.LBB151:
.LBB148:
	.loc 1 202 0
	strd	r2, [r0, #88]
	.loc 1 203 0
	strd	r2, [r0, #96]
	.loc 1 178 0
	str	r5, [r0, #12]
	.loc 1 179 0
	str	r5, [r0, #16]
	.loc 1 180 0
	str	r5, [r0, #20]
	.loc 1 183 0
	str	r5, [r0, #160]
	.loc 1 193 0
	str	r5, [r0, #108]
	.loc 1 197 0
	str	r5, [r0, #140]
	.loc 1 182 0
	strd	r6, [r0, #152]
	.loc 1 185 0
	strd	r6, [r0, #24]
	.loc 1 186 0
	strd	r6, [r0, #32]
	.loc 1 188 0
	strd	r6, [r0, #72]
	.loc 1 189 0
	strd	r6, [r0, #80]
	.loc 1 195 0
	strd	r6, [r0, #120]
	.loc 1 196 0
	strd	r6, [r0, #128]
	.loc 1 205 0
	add	r0, r0, #176
.LVL287:
	bl	av_frame_free(PLT)
.LVL288:
.LBE148:
.LBE151:
	.loc 1 220 0
	add	r0, r4, #104
.LBB152:
.LBB149:
	.loc 1 206 0
	str	r5, [r4, #180]
	.loc 1 207 0
	str	r5, [r4, #184]
	.loc 1 209 0
	strd	r6, [r4, #192]
	.loc 1 210 0
	strd	r6, [r4, #200]
.LBE149:
.LBE152:
	.loc 1 220 0
	bl	av_freep(PLT)
.LVL289:
	.loc 1 221 0
	add	r0, r4, #136
	bl	av_freep(PLT)
.LVL290:
	.loc 1 222 0
	add	r0, r4, #112
	bl	av_freep(PLT)
.LVL291:
	.loc 1 223 0
	add	r0, r4, #144
	bl	av_freep(PLT)
.LVL292:
	.loc 1 225 0
	add	r0, r4, #4
	bl	av_freep(PLT)
.LVL293:
	.loc 1 226 0
	add	r0, r4, #56
	bl	av_freep(PLT)
.LVL294:
	.loc 1 227 0
	add	r0, r4, #172
	bl	av_freep(PLT)
.LVL295:
	.loc 1 229 0
	ldr	r0, [r4, #164]
	bl	av_rdft_end(PLT)
.LVL296:
	.loc 1 230 0
	str	r5, [r4, #164]
	.loc 1 232 0
	ldr	r0, [r4, #168]
	bl	av_rdft_end(PLT)
.LVL297:
	.loc 1 233 0
	str	r5, [r4, #168]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE63:
	.size	yae_release_buffers, .-yae_release_buffers
	.section	.text.unlikely
	.align	2
	.type	uninit, %function
uninit:
.LFB77:
	.loc 1 991 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL298:
	.loc 1 993 0
	ldr	r0, [r0, #36]
.LVL299:
	b	yae_release_buffers(PLT)
.LVL300:
	.cfi_endproc
.LFE77:
	.size	uninit, .-uninit
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.text
	.align	2
	.type	config_props, %function
config_props:
.LFB79:
	.loc 1 1041 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL301:
	.loc 1 1043 0
	ldr	r2, [r0, #8]
	.loc 1 1041 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	mov	r3, r0
.LVL302:
	.loc 1 1045 0
	ldr	r7, [r0, #52]
	.loc 1 1041 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 1 1047 0
	ldrd	r0, [r0, #40]
.LVL303:
	.loc 1 1043 0
	ldr	r4, [r2, #36]
.LVL304:
	.loc 1 1046 0
	ldr	r5, [r3, #48]
.LVL305:
	.loc 1 1047 0
	bl	av_get_channel_layout_nb_channels(PLT)
.LVL306:
	mov	r6, r0
.LVL307:
.LBB158:
.LBB159:
	.loc 1 257 0
	mov	r0, r7
.LVL308:
	bl	av_get_bytes_per_sample(PLT)
.LVL309:
	.loc 1 267 0
	ldr	r3, .L238
	mov	r2, r5, asr #31
	smull	r1, r3, r5, r3
	.loc 1 271 0
	mov	r1, #1
	.loc 1 267 0
	rsb	r3, r2, r3, asr #2
	.loc 1 270 0
	orr	r5, r3, r1
.LVL310:
	clz	r5, r5
	rsb	r5, r5, #31
.LVL311:
	.loc 1 271 0
	mov	r2, r1, asl r5
.LVL312:
	.loc 1 272 0
	cmp	r2, r3
	.loc 1 262 0
	str	r7, [r4, #40]
	.loc 1 263 0
	str	r6, [r4, #44]
	.loc 1 267 0
	str	r3, [r4, #52]
	.loc 1 264 0
	mul	r0, r6, r0
.LVL313:
	str	r0, [r4, #48]
	.loc 1 272 0
	bhi	.L237
	.loc 1 275 0
	movcc	r2, r2, asl #1
.LVL314:
	strcc	r2, [r4, #52]
	.loc 1 280 0
	add	r0, r4, #104
	.loc 1 276 0
	addcc	r5, r5, #1
.LVL315:
	.loc 1 280 0
	bl	av_freep(PLT)
.LVL316:
	ldr	r3, [r4, #52]
	ldr	r0, [r4, #48]
	.loc 1 280 0 is_stmt 0 discriminator 1
	mul	r0, r3, r0
	bl	av_malloc(PLT)
.LVL317:
	.loc 1 280 0
	cmp	r0, #0
	str	r0, [r4, #104]
	beq	.L231
	.loc 1 281 0 is_stmt 1
	add	r0, r4, #136
	bl	av_freep(PLT)
.LVL318:
	ldr	r3, [r4, #52]
	ldr	r0, [r4, #48]
	.loc 1 281 0 is_stmt 0 discriminator 1
	mul	r0, r3, r0
	bl	av_malloc(PLT)
.LVL319:
	.loc 1 281 0
	cmp	r0, #0
	str	r0, [r4, #136]
	beq	.L231
	.loc 1 282 0 is_stmt 1
	add	r0, r4, #112
	bl	av_freep(PLT)
.LVL320:
	ldr	r0, [r4, #52]
	.loc 1 282 0 is_stmt 0 discriminator 1
	mov	r0, r0, asl #3
	bl	av_malloc(PLT)
.LVL321:
	.loc 1 282 0
	cmp	r0, #0
	str	r0, [r4, #112]
	beq	.L231
	.loc 1 283 0 is_stmt 1
	add	r0, r4, #144
	bl	av_freep(PLT)
.LVL322:
	ldr	r0, [r4, #52]
	.loc 1 283 0 is_stmt 0 discriminator 1
	mov	r0, r0, asl #3
	bl	av_malloc(PLT)
.LVL323:
	.loc 1 283 0
	cmp	r0, #0
	str	r0, [r4, #144]
	beq	.L231
	.loc 1 287 0 is_stmt 1
	mov	r6, #0
.LVL324:
	.loc 1 286 0
	ldr	r0, [r4, #164]
	bl	av_rdft_end(PLT)
.LVL325:
	.loc 1 292 0
	add	r5, r5, #1
.LVL326:
	.loc 1 289 0
	ldr	r0, [r4, #168]
	.loc 1 287 0
	str	r6, [r4, #164]
	.loc 1 289 0
	bl	av_rdft_end(PLT)
.LVL327:
	.loc 1 290 0
	str	r6, [r4, #168]
	.loc 1 292 0
	mov	r1, r6
	mov	r0, r5
	bl	av_rdft_init(PLT)
.LVL328:
	.loc 1 293 0
	cmp	r0, r6
	.loc 1 292 0
	str	r0, [r4, #164]
	.loc 1 293 0
	beq	.L231
	.loc 1 298 0
	mov	r0, r5
	mov	r1, #1
	bl	av_rdft_init(PLT)
.LVL329:
	.loc 1 299 0
	cmp	r0, #0
	.loc 1 298 0
	str	r0, [r4, #168]
	.loc 1 299 0
	beq	.L231
	.loc 1 304 0
	add	r0, r4, #172
	bl	av_freep(PLT)
.LVL330:
	ldr	r0, [r4, #52]
	.loc 1 304 0 is_stmt 0 discriminator 1
	mov	r0, r0, asl #3
	bl	av_malloc(PLT)
.LVL331:
	.loc 1 304 0
	cmp	r0, #0
	str	r0, [r4, #172]
	beq	.L231
	.loc 1 306 0 is_stmt 1
	ldr	r3, [r4, #52]
	.loc 1 307 0
	add	r0, r4, #4
	.loc 1 306 0
	add	r3, r3, r3, asl #1
	str	r3, [r4, #8]
	.loc 1 307 0
	bl	av_freep(PLT)
.LVL332:
	ldr	r3, [r4, #8]
	ldr	r0, [r4, #48]
	.loc 1 307 0 is_stmt 0 discriminator 1
	mul	r0, r3, r0
	bl	av_malloc(PLT)
.LVL333:
	.loc 1 307 0
	cmp	r0, #0
	str	r0, [r4, #4]
	beq	.L231
	.loc 1 310 0 is_stmt 1
	add	r0, r4, #56
	bl	av_freep(PLT)
.LVL334:
	ldr	r0, [r4, #52]
	.loc 1 310 0 is_stmt 0 discriminator 1
	mov	r0, r0, asl #2
	bl	av_malloc(PLT)
.LVL335:
	.loc 1 310 0
	cmp	r0, #0
	.loc 1 310 0 discriminator 1
	mov	r6, r0
	.loc 1 310 0
	str	r0, [r4, #56]
	beq	.L231
.LVL336:
	.loc 1 312 0 is_stmt 1 discriminator 1
	ldr	r7, [r4, #52]
.LVL337:
	cmp	r7, #0
	ble	.L234
	sub	r0, r7, #1
	bl	__aeabi_i2d(PLT)
.LVL338:
	sub	r6, r6, #4
	mov	r5, #0
.LVL339:
	mov	r8, r0
	mov	r9, r1
.LVL340:
.L233:
.LBB160:
	.loc 1 313 0
	mov	r0, r5
	bl	__aeabi_i2d(PLT)
.LVL341:
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_ddiv(PLT)
.LVL342:
	.loc 1 314 0
	ldr	r2, .L238+4
	ldr	r3, .L238+8
	bl	__aeabi_dmul(PLT)
.LVL343:
	bl	cos(PLT)
.LVL344:
.LBE160:
	.loc 1 312 0 discriminator 3
	add	r5, r5, #1
.LVL345:
.LBB161:
	.loc 1 314 0
	mov	r2, r0
	mov	r3, r1
.LVL346:
	mov	r0, #0
	ldr	r1, .L238+12
	bl	__aeabi_dsub(PLT)
.LVL347:
	mov	r2, #0
	ldr	r3, .L238+16
	bl	__aeabi_dmul(PLT)
.LVL348:
	.loc 1 315 0
	bl	__aeabi_d2f(PLT)
.LVL349:
.LBE161:
	.loc 1 312 0 discriminator 1
	cmp	r5, r7
.LBB162:
	.loc 1 315 0
	str	r0, [r6, #4]!	@ float
.LBE162:
	.loc 1 312 0 discriminator 1
	bne	.L233
.LVL350:
.L234:
.LBB163:
.LBB164:
	.loc 1 202 0
	add	r2, r7, r7, lsr #31
	mov	r2, r2, asr #1
	mov	r3, r2, asr #31
	rsbs	r2, r2, #0
	.loc 1 178 0
	mov	r5, #0
	.loc 1 182 0
	mov	r6, #0
	mov	r7, #0
	.loc 1 202 0
	rsc	r3, r3, #0
	.loc 1 205 0
	add	r0, r4, #176
	.loc 1 202 0
	strd	r2, [r4, #88]
	.loc 1 203 0
	strd	r2, [r4, #96]
	.loc 1 178 0
	str	r5, [r4, #12]
	.loc 1 179 0
	str	r5, [r4, #16]
	.loc 1 180 0
	str	r5, [r4, #20]
	.loc 1 183 0
	str	r5, [r4, #160]
	.loc 1 193 0
	str	r5, [r4, #108]
	.loc 1 197 0
	str	r5, [r4, #140]
	.loc 1 182 0
	strd	r6, [r4, #152]
	.loc 1 185 0
	strd	r6, [r4, #24]
	.loc 1 186 0
	strd	r6, [r4, #32]
	.loc 1 188 0
	strd	r6, [r4, #72]
	.loc 1 189 0
	strd	r6, [r4, #80]
	.loc 1 195 0
	strd	r6, [r4, #120]
	.loc 1 196 0
	strd	r6, [r4, #128]
	.loc 1 205 0
	bl	av_frame_free(PLT)
.LVL351:
.LBE164:
.LBE163:
	.loc 1 319 0
	mov	r0, r5
.LBB166:
.LBB165:
	.loc 1 206 0
	str	r5, [r4, #180]
	.loc 1 207 0
	str	r5, [r4, #184]
	.loc 1 209 0
	strd	r6, [r4, #192]
	.loc 1 210 0
	strd	r6, [r4, #200]
.LVL352:
.L223:
.LBE165:
.LBE166:
.LBE159:
.LBE158:
	.loc 1 1050 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL353:
.L231:
	.cfi_restore_state
.LBB168:
.LBB167:
	.loc 1 310 0 discriminator 3
	mov	r0, r4
	bl	yae_release_buffers(PLT)
.LVL354:
	.loc 1 310 0 is_stmt 0 discriminator 2
	mvn	r0, #11
	b	.L223
.LVL355:
.L237:
	.loc 1 272 0 is_stmt 1 discriminator 1
	ldr	r3, .L238+20
	mov	r2, #272
.LVL356:
.LPIC58:
	add	r3, pc, r3
	str	r3, [sp]
	str	r2, [sp, #4]
	ldr	r3, .L238+24
	ldr	r2, .L238+28
	mov	r0, #0
	mov	r1, r0
.LVL357:
.LPIC56:
	add	r2, pc, r2
.LPIC57:
	add	r3, pc, r3
	bl	av_log(PLT)
.LVL358:
	.loc 1 272 0 is_stmt 0 discriminator 2
	bl	abort(PLT)
.LVL359:
.L239:
	.align	2
.L238:
	.word	715827883
	.word	1413754136
	.word	1075388923
	.word	1072693248
	.word	1071644672
	.word	.LC5-(.LPIC58+8)
	.word	.LC9-(.LPIC57+8)
	.word	.LC3-(.LPIC56+8)
.LBE167:
.LBE168:
	.cfi_endproc
.LFE79:
	.size	config_props, .-config_props
	.global	__aeabi_dadd
	.global	__aeabi_d2lz
	.global	__aeabi_f2uiz
	.global	__aeabi_f2iz
	.global	__aeabi_f2d
	.align	2
	.type	filter_frame, %function
filter_frame:
.LFB81:
	.loc 1 1079 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL360:
	.loc 1 1080 0
	ldr	r3, [r0, #8]
.LVL361:
	.loc 1 1085 0
	ldr	r2, [r1, #76]
	.loc 1 1079 0
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
	sub	sp, sp, #124
	.cfi_def_cfa_offset 160
	.loc 1 1085 0
	mov	r5, r2
	str	r2, [sp, #92]
	.loc 1 1082 0
	ldr	r2, [r3, #28]
	.loc 1 1081 0
	ldr	fp, [r3, #36]
.LVL362:
	.loc 1 1079 0
	str	r1, [sp, #100]
	.loc 1 1086 0
	mov	r0, r5
.LVL363:
	.loc 1 1082 0
	ldr	r3, [r2]
.LVL364:
	.loc 1 1085 0
	mov	r4, r1
	.loc 1 1082 0
	str	r3, [sp, #88]
.LVL365:
	.loc 1 1086 0
	bl	__aeabi_i2d(PLT)
.LVL366:
	ldrd	r2, [fp, #64]
	bl	__aeabi_ddiv(PLT)
.LVL367:
	mov	r2, #0
	ldr	r3, .L344
	bl	__aeabi_dadd(PLT)
.LVL368:
	bl	__aeabi_d2iz(PLT)
.LVL369:
	.loc 1 1088 0
	ldr	r1, [r4]
	add	r2, sp, #120
	.loc 1 1089 0
	ldr	r3, [fp, #48]
	mov	r8, fp
	.loc 1 1086 0
	str	r0, [sp, #96]
.LVL370:
	.loc 1 1088 0
	mov	r0, r2
.LVL371:
	.loc 1 1089 0
	mov	r2, r5
	mla	r2, r3, r2, r1
	str	r2, [sp, #60]
.LVL372:
	.loc 1 1088 0
	mov	r2, r0
.LVL373:
	str	r1, [r2, #-12]!
	str	r2, [sp, #72]
.LVL374:
.L302:
	.loc 1 1091 0
	ldr	r3, [sp, #60]
	cmp	r3, r1
	bls	.L338
.L304:
	.loc 1 1092 0
	ldr	r3, [r8, #176]
	cmp	r3, #0
	beq	.L242
	ldr	r3, [r8, #184]
	str	r3, [sp, #44]
.L243:
.LVL375:
	ldr	r4, [r8, #160]
.LVL376:
.L245:
.LBB215:
.LBB216:
	.loc 1 831 0
	cmp	r4, #0
	beq	.L331
.L246:
	.loc 1 852 0
	cmp	r4, #1
	beq	.L251
	.loc 1 863 0
	cmp	r4, #2
	beq	.L254
	.loc 1 878 0
	cmp	r4, #3
	beq	.L255
	.loc 1 831 0
	cmp	r4, #0
	bne	.L246
.L331:
	.loc 1 833 0
	mov	r0, r8
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #60]
	bl	yae_load_frag(PLT)
.LVL377:
	cmp	r0, #0
	bne	.L335
.LVL378:
.LBB217:
.LBB218:
	.loc 1 165 0
	ldrd	r2, [r8, #152]
.LBE218:
.LBE217:
	.loc 1 838 0 discriminator 1
	mov	r0, r8
.LBB220:
.LBB219:
	.loc 1 165 0
	and	r2, r2, #1
	add	r1, r8, r2, asl #5
.LBE219:
.LBE220:
	.loc 1 838 0 discriminator 1
	add	r1, r1, #88
	bl	yae_downmix(PLT)
.LVL379:
.LBB221:
.LBB222:
	.loc 1 165 0
	ldrd	r2, [r8, #152]
.LBE222:
.LBE221:
	.loc 1 841 0 discriminator 1
	ldr	r0, [r8, #164]
.LBB224:
.LBB223:
	.loc 1 165 0
	and	r2, r2, #1
.LBE223:
.LBE224:
	.loc 1 841 0
	add	r2, r8, r2, asl #5
	.loc 1 841 0 is_stmt 0 discriminator 1
	ldr	r1, [r2, #112]
	bl	av_rdft_calc(PLT)
.LVL380:
	.loc 1 844 0 is_stmt 1
	ldrd	r2, [r8, #152]
	orrs	r3, r2, r3
	.loc 1 849 0
	movne	r3, #1
	strne	r3, [r8, #160]
	.loc 1 844 0
	beq	.L339
.LVL381:
.L251:
	.loc 1 854 0
	mov	r0, r8
	bl	yae_adjust_position(PLT)
.LVL382:
	cmp	r0, #0
	.loc 1 857 0
	movne	r3, #2
	strne	r3, [r8, #160]
	.loc 1 854 0
	beq	.L334
.L254:
	.loc 1 865 0
	mov	r0, r8
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #60]
	bl	yae_load_frag(PLT)
.LVL383:
	cmp	r0, #0
	bne	.L335
.LVL384:
.LBB225:
.LBB226:
	.loc 1 165 0
	ldrd	r2, [r8, #152]
.LBE226:
.LBE225:
	.loc 1 870 0 discriminator 1
	mov	r0, r8
.LBB228:
.LBB227:
	.loc 1 165 0
	and	r2, r2, #1
	add	r1, r8, r2, asl #5
.LBE227:
.LBE228:
	.loc 1 870 0 discriminator 1
	add	r1, r1, #88
	bl	yae_downmix(PLT)
.LVL385:
.LBB229:
.LBB230:
	.loc 1 165 0
	ldrd	r2, [r8, #152]
.LBE230:
.LBE229:
	.loc 1 873 0 discriminator 1
	ldr	r0, [r8, #164]
.LBB232:
.LBB231:
	.loc 1 165 0
	and	r2, r2, #1
.LBE231:
.LBE232:
	.loc 1 873 0
	add	r2, r8, r2, asl #5
	.loc 1 873 0 is_stmt 0 discriminator 1
	ldr	r1, [r2, #112]
	bl	av_rdft_calc(PLT)
.LVL386:
.L334:
	.loc 1 875 0 is_stmt 1
	mov	r3, #3
	str	r3, [r8, #160]
.L255:
.LVL387:
.LBB233:
.LBB234:
	.loc 1 777 0
	ldrd	r0, [r8, #32]
.LBB235:
.LBB236:
	.loc 1 170 0
	ldrd	r2, [r8, #152]
.LBE236:
.LBE235:
	.loc 1 777 0
	mov	r4, r0
.LBB239:
.LBB240:
	.loc 1 165 0
	and	r0, r2, #1
.LBE240:
.LBE239:
	.loc 1 777 0
	add	ip, r0, #3
	mov	ip, ip, asl #5
	ldrd	r10, [r8, ip]
.LBB241:
.LBB237:
	.loc 1 170 0
	adds	r2, r2, #1
.LBE237:
.LBE241:
	.loc 1 777 0
	cmp	r4, r10
	sbcs	ip, r1, fp
	.loc 1 780 0
	mov	ip, r0, asl #5
	.loc 1 777 0
	mov	r5, r1
.LBB242:
.LBB238:
	.loc 1 170 0
	and	r2, r2, #1
.LVL388:
.LBE238:
.LBE242:
	.loc 1 777 0
	mov	r7, r1
	.loc 1 780 0
	add	r1, r8, ip
	ldr	r1, [r1, #108]
	add	r0, r2, #3
	mov	lr, r2, asl #5
	mov	r0, r0, asl #5
	add	r2, r8, lr
	ldr	r9, [r2, #108]
	mov	r3, r1, asr #31
	mov	r2, r1
	.loc 1 777 0
	mov	r6, r4
	strd	r4, [sp, #48]
	.loc 1 780 0
	ldrd	r4, [r8, r0]
	strd	r2, [sp, #8]
	.loc 1 777 0
	movlt	r6, r10
	movlt	r7, fp
.LVL389:
	.loc 1 780 0
	adds	r2, r1, r10
	adc	r3, r3, fp
	adds	r0, r4, r9
	adc	r1, r5, r9, asr #31
	cmp	r0, r2
	strd	r2, [sp, #64]
	sbcs	r3, r1, r3
	strltd	r0, [sp, #64]
.L259:
.LVL390:
	.loc 1 785 0
	subs	r4, r6, r4
	sbc	r5, r7, r5
	strd	r4, [sp, #16]
.LVL391:
	.loc 1 783 0
	ldrd	r4, [sp, #64]
	subs	r2, r4, r6
	sbc	r3, r5, r7
	strd	r2, [sp, #32]
.LVL392:
	.loc 1 786 0
	subs	r0, r6, r10
	.loc 1 796 0
	mov	r3, r5
	cmp	r4, r6
	sbcs	r3, r3, r7
	mov	r2, r4
	movlt	r2, #1
	movge	r2, #0
	.loc 1 796 0 is_stmt 0 discriminator 2
	cmp	r6, r10
	sbcs	r3, r7, fp
	.loc 1 796 0 discriminator 4
	ldrd	r4, [sp, #8]
	ldrd	r6, [sp, #32]
.LVL393:
	.loc 1 791 0 is_stmt 1
	add	r3, r8, lr
	orrlt	r2, r2, #1
	.loc 1 796 0 discriminator 4
	cmp	r4, r6
	.loc 1 792 0
	add	fp, r8, ip
	.loc 1 791 0
	ldr	r1, [r3, #104]
	.loc 1 796 0 discriminator 4
	sbcs	ip, r5, r7
	.loc 1 788 0
	ldr	r3, [r8, #56]
	.loc 1 791 0
	ldrd	r4, [sp, #16]
	.loc 1 796 0 discriminator 4
	orrlt	r2, r2, #1
	.loc 1 791 0
	ldr	ip, [r8, #48]
	.loc 1 792 0
	ldr	lr, [fp, #104]
	.loc 1 796 0 discriminator 4
	cmp	r2, #0
	.loc 1 791 0
	mov	r2, r4
	.loc 1 788 0
	add	r4, r3, r4, asl #2
	.loc 1 789 0
	add	r3, r3, r0, asl #2
	.loc 1 791 0
	mla	r2, ip, r2, r1
	.loc 1 789 0
	str	r3, [sp, #40]
	.loc 1 788 0
	str	r4, [sp, #56]
.LVL394:
	.loc 1 792 0
	mla	ip, r0, ip, lr
.LVL395:
	.loc 1 794 0
	ldr	r3, [r8, #180]
.LVL396:
	.loc 1 796 0 discriminator 4
	bne	.L340
	.loc 1 800 0
	ldr	r1, [r8, #40]
	cmp	r1, #0
	bne	.L261
.LVL397:
.LBB243:
	.loc 1 801 0 discriminator 10
	ldrd	r0, [sp, #32]
	cmp	r0, #1
	sbcs	r1, r1, #0
	ldr	r0, [sp, #44]
	movge	r1, #1
	movlt	r1, #0
	cmp	r3, r0
	movcs	r1, #0
	andcc	r1, r1, #1
	cmp	r1, #0
	beq	.L267
	mov	r4, #0
	mov	r5, #0
	strd	r4, [sp, #8]
	ldr	r1, [r8, #44]
	ldrd	r4, [sp, #48]
	mov	r9, fp
.LVL398:
.L266:
	ldr	r0, [sp, #8]
.LBB244:
	.loc 1 801 0 is_stmt 0 discriminator 11
	ldr	lr, [sp, #56]
	.loc 1 801 0 discriminator 7
	cmp	r1, #0
	.loc 1 801 0 discriminator 11
	ldr	lr, [lr, r0, asl #2]	@ float
	str	lr, [sp, #24]	@ float
.LVL399:
	ldr	lr, [sp, #40]
.LVL400:
	ldr	r0, [lr, r0, asl #2]	@ float
	str	r0, [sp, #28]	@ float
.LVL401:
	.loc 1 801 0 discriminator 7
	ble	.L263
	mov	r10, ip
	mov	r5, r3
	mov	r4, r2
	mov	fp, r9
	str	r2, [sp, #16]
.LVL402:
.L265:
.LBB245:
	.loc 1 801 0 discriminator 8
	ldrd	r2, [fp, #88]
	ldrd	r6, [sp, #8]
	ldrb	r0, [r4], #1	@ zero_extendqisi2
.LVL403:
	adds	r6, r6, r2
	adc	r7, r7, r3
	mov	r3, r7
.LVL404:
	cmp	r6, #0
	sbcs	r3, r3, #0
	ldrb	r9, [r10], #1	@ zero_extendqisi2
.LVL405:
	blt	.L264
	bl	__aeabi_ui2f(PLT)
.LVL406:
	mov	r1, r0
	.loc 1 801 0 discriminator 4
	ldr	r0, [sp, #24]	@ float
	bl	__aeabi_fmul(PLT)
.LVL407:
	mov	r7, r0
	.loc 1 801 0 discriminator 8
	mov	r0, r9
	bl	__aeabi_ui2f(PLT)
.LVL408:
	mov	r1, r0
	.loc 1 801 0 discriminator 4
	ldr	r0, [sp, #28]	@ float
	bl	__aeabi_fmul(PLT)
.LVL409:
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
.LVL410:
	bl	__aeabi_f2uiz(PLT)
.LVL411:
	and	r0, r0, #255
.L264:
	ldr	r3, [sp, #16]
	.loc 1 801 0 discriminator 6
	strb	r0, [r5], #1
.LVL412:
.LBE245:
	.loc 1 801 0 discriminator 7
	ldr	r1, [r8, #44]
	rsb	r3, r3, r4
.LVL413:
	cmp	r1, r3
	.loc 1 801 0 discriminator 6
	mov	r2, r4
.LVL414:
	mov	r3, r5
.LVL415:
	mov	ip, r10
.LVL416:
	.loc 1 801 0 discriminator 7
	bgt	.L265
.LVL417:
	ldrd	r4, [r8, #32]
	mov	r9, fp
.LVL418:
.L263:
.LBE244:
	.loc 1 801 0 discriminator 9
	ldrd	r6, [sp, #8]
	.loc 1 801 0 discriminator 10
	ldrd	r10, [sp, #32]
	.loc 1 801 0 discriminator 9
	adds	r6, r6, #1
	adc	r7, r7, #0
	adds	r4, r4, #1
	adc	r5, r5, #0
	.loc 1 801 0 discriminator 10
	cmp	r6, r10
	sbcs	r0, r7, fp
	ldr	lr, [sp, #44]
	movlt	r0, #1
	movge	r0, #0
	cmp	lr, r3
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	.loc 1 801 0 discriminator 9
	strd	r6, [sp, #8]
.LVL419:
	strd	r4, [r8, #32]
	.loc 1 801 0 discriminator 10
	bne	.L266
	strd	r4, [sp, #48]
.LVL420:
.L267:
.LBE243:
	.loc 1 815 0 is_stmt 1
	ldrd	r0, [sp, #64]
	ldrd	r4, [sp, #48]
	.loc 1 813 0
	str	r3, [r8, #180]
	.loc 1 815 0
	cmp	r1, r5
	cmpeq	r0, r4
	bne	.L248
.LVL421:
.LBE234:
.LBE233:
.LBB276:
.LBB277:
	.loc 1 586 0
	ldr	r5, [r8, #52]
.LBE277:
.LBE276:
	.loc 1 886 0
	mov	r4, #0
.LBB283:
.LBB282:
	.loc 1 586 0
	add	r5, r5, r5, lsr #31
	mov	r5, r5, asr #1
	mov	r0, r5
	bl	__aeabi_i2d(PLT)
.LVL422:
	ldrd	r2, [r8, #64]
	bl	__aeabi_dmul(PLT)
.LVL423:
	.loc 1 591 0
	ldrd	r10, [r8, #152]
	adds	r6, r10, #1
	adc	r7, fp, #0
	strd	r6, [r8, #152]
.LVL424:
	.loc 1 595 0
	bl	__aeabi_d2lz(PLT)
.LVL425:
.LBB278:
.LBB279:
	.loc 1 170 0
	and	r10, r10, #1
.LVL426:
.LBE279:
.LBE278:
	.loc 1 595 0
	add	r3, r8, r10, asl #5
	ldrd	r2, [r3, #88]
.LBB280:
.LBB281:
	.loc 1 165 0
	and	r6, r6, #1
.LBE281:
.LBE280:
	.loc 1 596 0
	add	r10, r10, #3
	.loc 1 595 0
	add	ip, r8, r6, asl #5
	.loc 1 596 0
	mov	r10, r10, asl #5
	add	r6, r6, #3
	mov	r6, r6, asl #5
	.loc 1 595 0
	adds	r0, r0, r2
	adc	r1, r1, r3
	strd	r0, [ip, #88]
	.loc 1 596 0
	ldrd	r2, [r8, r10]
	adds	r2, r2, r5
	adc	r3, r3, r5, asr #31
	strd	r2, [r8, r6]
	.loc 1 597 0
	str	r4, [ip, #108]
.LBE282:
.LBE283:
	.loc 1 886 0
	str	r4, [r8, #160]
	b	.L331
.LVL427:
.L339:
.LBB284:
.LBB285:
	.loc 1 586 0
	ldr	r5, [r8, #52]
	add	r5, r5, r5, lsr #31
	mov	r5, r5, asr #1
	mov	r0, r5
	bl	__aeabi_i2d(PLT)
.LVL428:
	ldrd	r2, [r8, #64]
	bl	__aeabi_dmul(PLT)
.LVL429:
	.loc 1 591 0
	mov	r2, #1
	mov	r3, #0
	strd	r2, [r8, #152]
.LVL430:
	.loc 1 595 0
	bl	__aeabi_d2lz(PLT)
.LVL431:
	.loc 1 596 0
	ldrd	r6, [r8, #96]
	.loc 1 595 0
	ldrd	r2, [r8, #88]
	.loc 1 596 0
	adds	r6, r6, r5
	adc	r7, r7, r5, asr #31
	.loc 1 597 0
	str	r4, [r8, #140]
	.loc 1 596 0
	strd	r6, [r8, #128]
	ldr	r4, [r8, #160]
	.loc 1 595 0
	adds	r0, r0, r2
	adc	r1, r1, r3
	strd	r0, [r8, #120]
	b	.L245
.LVL432:
.L261:
.LBE285:
.LBE284:
.LBB286:
.LBB273:
	.loc 1 802 0
	cmp	r1, #1
	beq	.L341
	.loc 1 804 0
	cmp	r1, #2
	beq	.L342
	.loc 1 806 0
	cmp	r1, #3
	beq	.L343
	.loc 1 808 0
	cmp	r1, #4
	bne	.L267
.LVL433:
.LBB246:
	.loc 1 809 0 discriminator 10
	ldrd	r0, [sp, #32]
	cmp	r0, #1
	sbcs	r1, r1, #0
	ldr	r0, [sp, #44]
	movge	r1, #1
	movlt	r1, #0
	cmp	r3, r0
	movcs	r1, #0
	andcc	r1, r1, #1
	cmp	r1, #0
	beq	.L310
	ldr	r1, [sp, #56]
	ldr	r6, [r8, #44]
	sub	r1, r1, #4
	str	r1, [sp, #56]
	mov	r1, r6, asl #3
	str	r1, [sp, #80]
	mov	r0, #0
	mov	r1, #0
	str	fp, [sp, #84]
	strd	r0, [sp, #16]
.LVL434:
	str	r8, [sp, #76]
	str	ip, [sp, #28]
	str	r2, [sp, #24]
	str	r3, [sp, #8]
.LVL435:
.L299:
.LBB247:
	.loc 1 809 0 is_stmt 0 discriminator 11
	ldrd	r0, [sp, #16]
	ldr	r2, [sp, #40]
	mov	r3, r0, asl #2
	ldr	r8, [r2, r3]	@ float
	ldr	r3, [sp, #56]
	.loc 1 809 0 discriminator 7
	cmp	r6, #0
	.loc 1 809 0 discriminator 11
	ldr	r7, [r3, #4]!	@ float
.LVL436:
	str	r3, [sp, #56]
.LVL437:
	.loc 1 809 0 discriminator 7
	ble	.L293
	ldr	r3, [sp, #84]
.LVL438:
	ldrd	r2, [r3, #88]
	adds	r0, r0, r2
	adc	r1, r1, r3
	mov	r3, r1
	cmp	r0, #0
	sbcs	r3, r3, #0
	ldr	r3, [sp, #24]
	blt	.L294
	sub	r10, r3, #8
	ldr	r3, [sp, #28]
	ldr	r9, [sp, #8]
	sub	r5, r3, #8
	mov	r4, #0
.LVL439:
.L295:
.LBB248:
	.loc 1 809 0 discriminator 8
	ldrd	r0, [r10, #8]!
.LVL440:
	bl	__aeabi_d2f(PLT)
.LVL441:
.LBE248:
	.loc 1 809 0 discriminator 6
	add	r4, r4, #1
.LVL442:
.LBB249:
	.loc 1 809 0 discriminator 8
	mov	r1, r0
	.loc 1 809 0 discriminator 4
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
.LVL443:
	mov	fp, r0
	.loc 1 809 0 discriminator 8
	ldrd	r0, [r5, #8]!
	bl	__aeabi_d2f(PLT)
.LVL444:
	mov	r1, r0
	.loc 1 809 0 discriminator 4
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
.LVL445:
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fadd(PLT)
.LVL446:
	bl	__aeabi_f2d(PLT)
.LVL447:
.LBE249:
	.loc 1 809 0 discriminator 7
	cmp	r4, r6
.LBB250:
	.loc 1 809 0 discriminator 4
	strd	r0, [r9], #8
.LVL448:
.LBE250:
	.loc 1 809 0 discriminator 7
	bne	.L295
.LVL449:
.L329:
	ldr	r3, [sp, #80]
	ldr	r2, [sp, #24]
	add	r2, r2, r3
.LVL450:
	str	r2, [sp, #24]
.LVL451:
	ldr	r2, [sp, #28]
.LVL452:
	add	r2, r2, r3
.LVL453:
	str	r2, [sp, #28]
.LVL454:
	ldr	r2, [sp, #8]
.LVL455:
	add	r3, r2, r3
.LVL456:
	str	r3, [sp, #8]
.LVL457:
.L293:
.LBE247:
	.loc 1 809 0 discriminator 9
	ldrd	r2, [sp, #16]
	ldrd	r0, [sp, #48]
	adds	r2, r2, #1
	.loc 1 809 0 discriminator 10
	ldrd	r4, [sp, #32]
	.loc 1 809 0 discriminator 9
	adc	r3, r3, #0
	adds	r0, r0, r2
	adc	r1, r1, r3
	.loc 1 809 0 discriminator 10
	cmp	r2, r4
	.loc 1 809 0 discriminator 9
	strd	r2, [sp, #16]
.LVL458:
	.loc 1 809 0 discriminator 10
	ldr	ip, [sp, #8]
	sbcs	r3, r3, r5
	ldr	r2, [sp, #44]
.LVL459:
	movlt	r3, #1
	movge	r3, #0
	cmp	r2, ip
	movls	r3, #0
	andhi	r3, r3, #1
	cmp	r3, #0
	.loc 1 809 0 discriminator 9
	ldr	r3, [sp, #76]
	strd	r0, [r3, #32]
.LVL460:
	.loc 1 809 0 discriminator 10
	bne	.L299
.LVL461:
.L336:
	mov	r8, r3
	mov	r3, ip
.LVL462:
.L292:
	strd	r0, [sp, #48]
	b	.L267
.LVL463:
.L341:
.LBE246:
.LBB254:
	.loc 1 803 0 is_stmt 1 discriminator 10
	ldrd	r0, [sp, #32]
	cmp	r0, #1
	sbcs	r1, r1, #0
	ldr	r0, [sp, #44]
	movge	r1, #1
	movlt	r1, #0
	cmp	r3, r0
	movcs	r1, #0
	andcc	r1, r1, #1
	cmp	r1, #0
	beq	.L310
	ldr	r0, [sp, #56]
	ldr	r1, [r8, #44]
	sub	r0, r0, #4
	mov	lr, r0
	mov	r9, r1, asl #1
	str	r1, [sp, #76]
	str	fp, [sp, #80]
	mov	r0, #0
	mov	r1, #0
	str	r8, [sp, #56]
	mov	fp, lr
	mov	r8, r3
.LVL464:
	strd	r0, [sp, #8]
	str	ip, [sp, #24]
	str	r2, [sp, #16]
.LVL465:
	str	r9, [sp, #28]
.LVL466:
.L276:
.LBB255:
	.loc 1 803 0 is_stmt 0 discriminator 7
	ldr	r3, [sp, #76]
	.loc 1 803 0 discriminator 11
	ldr	r5, [fp, #4]!	@ float
.LVL467:
	.loc 1 803 0 discriminator 7
	cmp	r3, #0
	.loc 1 803 0 discriminator 11
	ldr	r3, [sp, #8]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #40]
	ldr	r6, [r3, r2]	@ float
.LVL468:
	.loc 1 803 0 discriminator 7
	ble	.L270
	ldr	r3, [sp, #80]
	ldrd	r0, [r3, #88]
	ldrd	r2, [sp, #8]
	adds	r2, r2, r0
	adc	r3, r3, r1
	mov	r1, r3
	cmp	r2, #0
	sbcs	r3, r1, #0
	ldr	r3, [sp, #16]
	blt	.L271
	sub	r9, r3, #2
	ldr	r3, [sp, #24]
	sub	r4, r3, #2
	ldr	r3, [sp, #28]
	add	r7, r8, r3
.LVL469:
.L272:
.LBB256:
	.loc 1 803 0 discriminator 8
	ldrsh	r0, [r9, #2]!
.LVL470:
	bl	__aeabi_i2f(PLT)
.LVL471:
	mov	r1, r0
	.loc 1 803 0 discriminator 4
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
.LVL472:
	mov	r10, r0
	.loc 1 803 0 discriminator 8
	ldrsh	r0, [r4, #2]!
	bl	__aeabi_i2f(PLT)
.LVL473:
	mov	r1, r0
	.loc 1 803 0 discriminator 4
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
.LVL474:
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fadd(PLT)
.LVL475:
	bl	__aeabi_f2iz(PLT)
.LVL476:
	strh	r0, [r8], #2	@ movhi
.LVL477:
.LBE256:
	.loc 1 803 0 discriminator 7
	cmp	r8, r7
	bne	.L272
.LVL478:
.L327:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #28]
	add	r2, r2, r3
.LVL479:
	str	r2, [sp, #16]
.LVL480:
	ldr	r2, [sp, #24]
.LVL481:
	add	r3, r2, r3
.LVL482:
	str	r3, [sp, #24]
.LVL483:
.L270:
.LBE255:
	.loc 1 803 0 discriminator 9
	ldrd	r2, [sp, #8]
	ldrd	r0, [sp, #48]
	adds	r2, r2, #1
	.loc 1 803 0 discriminator 10
	ldrd	r4, [sp, #32]
	.loc 1 803 0 discriminator 9
	adc	r3, r3, #0
	adds	r0, r0, r2
	adc	r1, r1, r3
	.loc 1 803 0 discriminator 10
	cmp	r2, r4
	.loc 1 803 0 discriminator 9
	strd	r2, [sp, #8]
.LVL484:
	.loc 1 803 0 discriminator 10
	sbcs	r3, r3, r5
	ldr	r3, [sp, #44]
	movlt	r2, #1
.LVL485:
	movge	r2, #0
	cmp	r3, r8
	movls	r2, #0
	andhi	r2, r2, #1
	.loc 1 803 0 discriminator 9
	ldr	r3, [sp, #56]
	.loc 1 803 0 discriminator 10
	cmp	r2, #0
	.loc 1 803 0 discriminator 9
	strd	r0, [r3, #32]
.LVL486:
	.loc 1 803 0 discriminator 10
	bne	.L276
	mov	r3, r8
	ldr	r8, [sp, #56]
.LVL487:
	b	.L292
.LVL488:
.L271:
	sub	r2, r3, #2
	ldr	r3, [sp, #28]
	add	r0, r8, r3
.LVL489:
.L274:
.LBB258:
.LBB257:
	.loc 1 803 0 discriminator 8
	ldrh	r3, [r2, #2]!
.LVL490:
	.loc 1 803 0 discriminator 6
	strh	r3, [r8], #2	@ movhi
.LVL491:
.LBE257:
	.loc 1 803 0 discriminator 7
	cmp	r8, r0
	bne	.L274
	b	.L327
.LVL492:
.L294:
.LBE258:
.LBE254:
.LBB259:
.LBB253:
	.loc 1 809 0 is_stmt 1 discriminator 7
	ldr	r0, [sp, #8]
	sub	ip, r3, #8
	mov	r1, #0
.LVL493:
.L297:
	.loc 1 809 0 is_stmt 0 discriminator 6
	add	r1, r1, #1
.LVL494:
.LBB251:
	.loc 1 809 0 discriminator 8
	ldrd	r2, [ip, #8]!
.LVL495:
.LBE251:
	.loc 1 809 0 discriminator 7
	cmp	r1, r6
.LBB252:
	.loc 1 809 0 discriminator 6
	strd	r2, [r0], #8
.LVL496:
.LBE252:
	.loc 1 809 0 discriminator 7
	bne	.L297
	b	.L329
.LVL497:
.L335:
	ldr	r3, [r8, #180]
.L248:
.LBE253:
.LBE259:
.LBE273:
.LBE286:
.LBE216:
.LBE215:
	.loc 1 1104 0 is_stmt 1
	ldr	r2, [r8, #184]
	cmp	r2, r3
	beq	.L301
	ldr	r1, [sp, #108]
	.loc 1 1091 0
	ldr	r3, [sp, #60]
	cmp	r3, r1
	bhi	.L304
.LVL498:
.L338:
	.loc 1 1113 0
	ldrd	r2, [r8, #192]
	ldr	r1, [sp, #92]
	mov	r4, #0
	adds	r2, r2, r1
	adc	r3, r3, r1, asr #31
	strd	r2, [r8, #192]
.L303:
.LVL499:
	.loc 1 1115 0
	add	r0, sp, #100
.LVL500:
	bl	av_frame_free(PLT)
.LVL501:
	.loc 1 1116 0
	mov	r0, r4
	.loc 1 1117 0
	add	sp, sp, #124
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL502:
.L342:
	.cfi_restore_state
.LBB291:
.LBB289:
.LBB287:
.LBB274:
.LBB260:
	.loc 1 805 0 discriminator 10
	ldrd	r0, [sp, #32]
	cmp	r0, #1
	sbcs	r1, r1, #0
	ldr	r0, [sp, #44]
	movge	r1, #1
	movlt	r1, #0
	cmp	r3, r0
	movcs	r1, #0
	andcc	r1, r1, #1
	cmp	r1, #0
	beq	.L310
	ldr	lr, [r8, #44]
	mov	r0, #0
	mov	r1, #0
	strd	r0, [sp, #8]
.LVL503:
.L282:
	ldr	r1, [sp, #8]
.LBB261:
	.loc 1 805 0 is_stmt 0 discriminator 11
	ldr	r0, [sp, #56]
	.loc 1 805 0 discriminator 7
	cmp	lr, #0
	.loc 1 805 0 discriminator 11
	ldr	r0, [r0, r1, asl #2]	@ float
	str	r0, [sp, #24]	@ float
.LVL504:
	ldr	r0, [sp, #40]
.LVL505:
	ldr	r1, [r0, r1, asl #2]	@ float
	str	r1, [sp, #28]	@ float
.LVL506:
	.loc 1 805 0 discriminator 7
	ble	.L279
	mov	r10, r2
	mov	r6, ip
	mov	r5, r3
	mov	r4, #0
	str	r8, [sp, #16]
.LVL507:
.L281:
.LBB262:
	.loc 1 805 0 discriminator 8
	ldrd	r2, [fp, #88]
	ldrd	r8, [sp, #8]
	ldr	r0, [r10], #4
.LVL508:
	adds	r8, r8, r2
	adc	r9, r9, r3
	mov	r3, r9
.LVL509:
	cmp	r8, #0
	sbcs	r3, r3, #0
	ldr	r9, [r6], #4
.LVL510:
	blt	.L280
	bl	__aeabi_i2f(PLT)
.LVL511:
	mov	r1, r0
	.loc 1 805 0 discriminator 4
	ldr	r0, [sp, #24]	@ float
	bl	__aeabi_fmul(PLT)
.LVL512:
	mov	r7, r0
	.loc 1 805 0 discriminator 8
	mov	r0, r9
	bl	__aeabi_i2f(PLT)
.LVL513:
	mov	r1, r0
	.loc 1 805 0 discriminator 4
	ldr	r0, [sp, #28]	@ float
	bl	__aeabi_fmul(PLT)
.LVL514:
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
.LVL515:
	bl	__aeabi_f2iz(PLT)
.LVL516:
.L280:
.LBE262:
	.loc 1 805 0 discriminator 7
	ldr	r3, [sp, #16]
.LBB263:
	.loc 1 805 0 discriminator 6
	str	r0, [r5], #4
.LVL517:
.LBE263:
	.loc 1 805 0 discriminator 7
	ldr	lr, [r3, #44]
	.loc 1 805 0 discriminator 6
	add	r4, r4, #1
.LVL518:
	.loc 1 805 0 discriminator 7
	cmp	r4, lr
	.loc 1 805 0 discriminator 6
	mov	r3, r5
	mov	r2, r10
.LVL519:
	mov	ip, r6
.LVL520:
	.loc 1 805 0 discriminator 7
	blt	.L281
.LVL521:
	ldr	r8, [sp, #16]
.LVL522:
.L279:
.LBE261:
	.loc 1 805 0 discriminator 9
	ldrd	r0, [sp, #8]
	.loc 1 805 0 discriminator 10
	ldrd	r6, [sp, #32]
	.loc 1 805 0 discriminator 9
	adds	r0, r0, #1
	adc	r1, r1, #0
	mov	r4, r0
	mov	r5, r1
	ldrd	r0, [sp, #48]
	strd	r4, [sp, #8]
.LVL523:
	adds	r0, r0, r4
	adc	r1, r1, r5
	.loc 1 805 0 discriminator 10
	cmp	r4, r6
	sbcs	r4, r5, r7
.LVL524:
	ldr	r5, [sp, #44]
	movlt	r4, #1
	movge	r4, #0
	cmp	r5, r3
	movls	r4, #0
	andhi	r4, r4, #1
	cmp	r4, #0
	.loc 1 805 0 discriminator 9
	strd	r0, [r8, #32]
	.loc 1 805 0 discriminator 10
	bne	.L282
	b	.L292
.LVL525:
.L343:
.LBE260:
.LBB264:
	.loc 1 807 0 is_stmt 1 discriminator 10
	ldrd	r0, [sp, #32]
	cmp	r0, #1
	sbcs	r1, r1, #0
	ldr	r0, [sp, #44]
	movge	r1, #1
	movlt	r1, #0
	cmp	r3, r0
	movcs	r1, #0
	andcc	r1, r1, #1
	cmp	r1, #0
	beq	.L310
	ldr	r1, [sp, #56]
	ldr	r6, [r8, #44]
	sub	r1, r1, #4
	str	r1, [sp, #56]
	mov	r1, r6, asl #2
	str	r1, [sp, #80]
	mov	r0, #0
	mov	r1, #0
	str	fp, [sp, #84]
	strd	r0, [sp, #16]
.LVL526:
	str	r8, [sp, #76]
	str	ip, [sp, #28]
	str	r2, [sp, #24]
	str	r3, [sp, #8]
.LVL527:
.L291:
.LBB265:
	.loc 1 807 0 is_stmt 0 discriminator 11
	ldrd	r0, [sp, #16]
	ldr	r2, [sp, #40]
	mov	r3, r0, asl #2
	ldr	r8, [r2, r3]	@ float
	ldr	r3, [sp, #56]
	.loc 1 807 0 discriminator 7
	cmp	r6, #0
	.loc 1 807 0 discriminator 11
	ldr	r7, [r3, #4]!	@ float
.LVL528:
	str	r3, [sp, #56]
.LVL529:
	.loc 1 807 0 discriminator 7
	ble	.L285
	ldr	r3, [sp, #84]
.LVL530:
	ldrd	r2, [r3, #88]
	adds	r0, r0, r2
	adc	r1, r1, r3
	mov	r3, r1
	cmp	r0, #0
	sbcs	r3, r3, #0
	ldr	r3, [sp, #24]
	blt	.L286
	sub	r10, r3, #4
	ldr	r3, [sp, #28]
	ldr	r9, [sp, #8]
	sub	r5, r3, #4
	mov	r4, #0
.LVL531:
.L287:
.LBB266:
	.loc 1 807 0 discriminator 4
	ldr	r1, [r10, #4]!	@ float
.LVL532:
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
.LVL533:
	ldr	r1, [r5, #4]!	@ float
.LBE266:
	.loc 1 807 0 discriminator 6
	add	r4, r4, #1
.LVL534:
.LBB267:
	.loc 1 807 0 discriminator 4
	mov	fp, r0
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
.LVL535:
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fadd(PLT)
.LVL536:
.LBE267:
	.loc 1 807 0 discriminator 7
	cmp	r4, r6
.LBB268:
	.loc 1 807 0 discriminator 6
	str	r0, [r9], #4	@ float
.LVL537:
.LBE268:
	.loc 1 807 0 discriminator 7
	bne	.L287
.LVL538:
.L328:
	ldr	r3, [sp, #80]
	ldr	r2, [sp, #24]
	add	r2, r2, r3
.LVL539:
	str	r2, [sp, #24]
.LVL540:
	ldr	r2, [sp, #28]
.LVL541:
	add	r2, r2, r3
.LVL542:
	str	r2, [sp, #28]
.LVL543:
	ldr	r2, [sp, #8]
.LVL544:
	add	r3, r2, r3
.LVL545:
	str	r3, [sp, #8]
.LVL546:
.L285:
.LBE265:
	.loc 1 807 0 discriminator 9
	ldrd	r2, [sp, #16]
	ldrd	r0, [sp, #48]
	adds	r2, r2, #1
	.loc 1 807 0 discriminator 10
	ldrd	r4, [sp, #32]
	.loc 1 807 0 discriminator 9
	adc	r3, r3, #0
	adds	r0, r0, r2
	adc	r1, r1, r3
	.loc 1 807 0 discriminator 10
	cmp	r2, r4
	.loc 1 807 0 discriminator 9
	strd	r2, [sp, #16]
.LVL547:
	.loc 1 807 0 discriminator 10
	ldr	ip, [sp, #8]
	sbcs	r3, r3, r5
	ldr	r2, [sp, #44]
.LVL548:
	movlt	r3, #1
	movge	r3, #0
	cmp	r2, ip
	movls	r3, #0
	andhi	r3, r3, #1
	cmp	r3, #0
	.loc 1 807 0 discriminator 9
	ldr	r3, [sp, #76]
	strd	r0, [r3, #32]
.LVL549:
	.loc 1 807 0 discriminator 10
	bne	.L291
	b	.L336
.LVL550:
.L286:
.LBB271:
	.loc 1 807 0 discriminator 7
	ldr	r2, [sp, #8]
	sub	r1, r3, #4
	mov	r3, #0
.LVL551:
.L289:
	.loc 1 807 0 discriminator 6
	add	r3, r3, #1
.LVL552:
.LBB269:
	.loc 1 807 0 discriminator 8
	ldr	r0, [r1, #4]!	@ float
.LVL553:
.LBE269:
	.loc 1 807 0 discriminator 7
	cmp	r3, r6
.LBB270:
	.loc 1 807 0 discriminator 6
	str	r0, [r2], #4	@ float
.LVL554:
.LBE270:
	.loc 1 807 0 discriminator 7
	bne	.L289
	b	.L328
.LVL555:
.L310:
.LBE271:
.LBE264:
.LBB272:
	.loc 1 809 0 is_stmt 1 discriminator 10
	ldrd	r0, [sp, #48]
	b	.L292
.LVL556:
.L242:
.LBE272:
.LBE274:
.LBE287:
.LBE289:
.LBE291:
	.loc 1 1093 0
	ldr	r4, [sp, #96]
	ldr	r0, [sp, #88]
	mov	r1, r4
	bl	ff_get_audio_buffer(PLT)
.LVL557:
	.loc 1 1094 0
	cmp	r0, #0
	.loc 1 1093 0
	str	r0, [r8, #176]
	.loc 1 1094 0
	beq	.L305
	.loc 1 1096 0
	ldr	r1, [sp, #100]
	bl	av_frame_copy_props(PLT)
.LVL558:
	.loc 1 1098 0
	ldr	r3, [r8, #176]
	.loc 1 1099 0
	ldr	r2, [r8, #48]
	.loc 1 1098 0
	ldr	r3, [r3]
	.loc 1 1099 0
	mov	r1, r4
	mla	r1, r2, r1, r3
	.loc 1 1098 0
	str	r3, [r8, #180]
	.loc 1 1099 0
	str	r1, [sp, #44]
	str	r1, [r8, #184]
	b	.L243
.LVL559:
.L301:
.LBB292:
	.loc 1 1105 0
	ldr	r4, [r8, #176]
	ldr	r1, [r8, #48]
	ldr	r0, [r4]
	rsb	r0, r0, r3
	bl	__aeabi_idiv(PLT)
.LVL560:
.LBB293:
.LBB294:
	.loc 1 1063 0
	ldr	r6, [sp, #88]
	add	r3, r6, #56
	.loc 1 1058 0
	ldr	ip, [r6, #48]
	.loc 1 1064 0
	str	ip, [sp, #116]
.LBE294:
.LBE293:
	.loc 1 1105 0
	mov	r5, r0
.LVL561:
.LBB296:
.LBB295:
	.loc 1