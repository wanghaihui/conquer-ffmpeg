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
	.file	"af_volume.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.type	scale_samples_u8, %function
scale_samples_u8:
.LFB60:
	.file 1 "libavfilter/af_volume.c"
	.loc 1 180 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 182 0 discriminator 1
	cmp	r2, #0
.LVL1:
	bxle	lr
	.loc 1 180 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	add	r2, r1, r2
.LVL2:
	sub	r0, r0, #1
.LVL3:
	mov	r6, r3
	mov	r7, r3, asr #31
.LVL4:
.L5:
	.loc 1 183 0
	ldrb	r8, [r1], #1	@ zero_extendqisi2
.LVL5:
	mov	r9, #0
	subs	r8, r8, #128
	mul	r3, r8, r7
	sbc	r9, r9, #0
	umull	r4, r5, r8, r6
	mla	r3, r6, r9, r3
	adds	r4, r4, #128
	add	r5, r3, r5
	adc	r5, r5, #0
	mov	ip, r4, lsr #8
	orr	ip, ip, r5, asl #24
	add	ip, ip, #128
.LVL6:
.LBB22:
.LBB23:
	.file 2 "./libavutil/common.h"
	.loc 2 161 0 discriminator 1
	rsb	r3, ip, #0
	.loc 2 161 0 is_stmt 0
	bics	lr, ip, #255
	.loc 2 161 0 discriminator 1
	mov	r3, r3, asr #31
	.loc 2 162 0 is_stmt 1
	and	ip, ip, #255
.LVL7:
	.loc 2 161 0 discriminator 1
	andne	ip, r3, #255
.LBE23:
.LBE22:
	.loc 1 182 0 discriminator 1
	cmp	r1, r2
	.loc 1 183 0
	strb	ip, [r0, #1]!
.LVL8:
	.loc 1 182 0 discriminator 1
	bne	.L5
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
	.cfi_endproc
.LFE60:
	.size	scale_samples_u8, .-scale_samples_u8
	.align	2
	.type	scale_samples_u8_small, %function
scale_samples_u8_small:
.LFB61:
	.loc 1 188 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL9:
	.loc 1 190 0 discriminator 1
	cmp	r2, #0
.LVL10:
	bxle	lr
	add	r2, r1, r2
.LVL11:
	sub	r0, r0, #1
.LVL12:
	.loc 1 188 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LVL13:
.L15:
	.loc 1 191 0
	ldrb	ip, [r1], #1	@ zero_extendqisi2
.LVL14:
	sub	ip, ip, #128
	mul	ip, r3, ip
	add	ip, ip, #128
	mov	ip, ip, asr #8
	add	ip, ip, #128
.LVL15:
.LBB24:
.LBB25:
	.loc 2 161 0 discriminator 1
	rsb	lr, ip, #0
	.loc 2 161 0 is_stmt 0
	bics	r4, ip, #255
	.loc 2 161 0 discriminator 1
	mov	lr, lr, asr #31
	.loc 2 162 0 is_stmt 1
	and	ip, ip, #255
.LVL16:
	.loc 2 161 0 discriminator 1
	andne	ip, lr, #255
.LBE25:
.LBE24:
	.loc 1 190 0 discriminator 1
	cmp	r1, r2
	.loc 1 191 0
	strb	ip, [r0, #1]!
.LVL17:
	.loc 1 190 0 discriminator 1
	bne	.L15
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE61:
	.size	scale_samples_u8_small, .-scale_samples_u8_small
	.align	2
	.type	scale_samples_s16, %function
scale_samples_s16:
.LFB62:
	.loc 1 196 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL18:
	.loc 1 200 0 discriminator 1
	cmp	r2, #0
.LVL19:
	bxle	lr
	.loc 1 196 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r2, r1, r2, asl #1
.LVL20:
	sub	r0, r0, #2
.LVL21:
	.loc 1 201 0
	mov	r4, #128
	mov	r5, #0
.LVL22:
.L24:
	ldrsh	ip, [r1], #2
	mov	r6, r4
	mov	r7, r5
	smlal	r6, r7, ip, r3
	mov	ip, r6, lsr #8
	orr	ip, ip, r7, asl #24
.LVL23:
.LBB26:
.LBB27:
	.loc 2 194 0 discriminator 1
	mov	lr, ip, asr #31
	eor	lr, lr, #32512
	.loc 2 194 0 is_stmt 0
	add	r6, ip, #32768
	.loc 2 194 0 discriminator 1
	eor	lr, lr, #255
	.loc 2 194 0
	movs	r6, r6, lsr #16
	.loc 2 195 0 is_stmt 1
	mov	ip, ip, asl #16
.LVL24:
	.loc 2 194 0 discriminator 1
	mov	lr, lr, asl #16
	.loc 2 195 0
	mov	ip, ip, lsr #16
	.loc 2 194 0 discriminator 1
	movne	ip, lr, lsr #16
.LBE27:
.LBE26:
	.loc 1 200 0 discriminator 1
	cmp	r1, r2
	.loc 1 201 0
	strh	ip, [r0, #2]!	@ movhi
	.loc 1 200 0 discriminator 1
	bne	.L24
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE62:
	.size	scale_samples_s16, .-scale_samples_s16
	.align	2
	.type	scale_samples_s16_small, %function
scale_samples_s16_small:
.LFB63:
	.loc 1 206 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL25:
	.loc 1 210 0 discriminator 1
	cmp	r2, #0
.LVL26:
	bxle	lr
	add	r2, r1, r2, asl #1
.LVL27:
	sub	r0, r0, #2
.LVL28:
	.loc 1 206 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LVL29:
.L33:
	.loc 1 211 0
	ldrsh	ip, [r1], #2
	mul	ip, r3, ip
	add	ip, ip, #128
.LBB28:
.LBB29:
	.loc 2 194 0 discriminator 1
	mov	lr, ip, asr #31
	eor	lr, lr, #32512
.LBE29:
.LBE28:
	.loc 1 211 0
	mov	ip, ip, asr #8
.LVL30:
.LBB31:
.LBB30:
	.loc 2 194 0
	add	r4, ip, #32768
	.loc 2 194 0 is_stmt 0 discriminator 1
	eor	lr, lr, #255
	.loc 2 194 0
	movs	r4, r4, lsr #16
	.loc 2 195 0 is_stmt 1
	mov	ip, ip, asl #16
.LVL31:
	.loc 2 194 0 discriminator 1
	mov	lr, lr, asl #16
	.loc 2 195 0
	mov	ip, ip, lsr #16
	.loc 2 194 0 discriminator 1
	movne	ip, lr, lsr #16
.LBE30:
.LBE31:
	.loc 1 210 0 discriminator 1
	cmp	r1, r2
	.loc 1 211 0
	strh	ip, [r0, #2]!	@ movhi
.LVL32:
	.loc 1 210 0 discriminator 1
	bne	.L33
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE63:
	.size	scale_samples_s16_small, .-scale_samples_s16_small
	.align	2
	.type	scale_samples_s32, %function
scale_samples_s32:
.LFB64:
	.loc 1 216 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL33:
	.loc 1 220 0 discriminator 1
	cmp	r2, #0
.LVL34:
	bxle	lr
	.loc 1 216 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	add	r2, r1, r2, asl #2
.LVL35:
	sub	r0, r0, #4
.LVL36:
	.loc 1 221 0
	mov	r8, #128
	mov	r9, #0
.LVL37:
.L40:
	ldr	ip, [r1], #4
.LVL38:
	mov	r6, r8
	mov	r7, r9
	smlal	r6, r7, r3, ip
	mov	r4, r6, lsr #8
	orr	r4, r4, r7, asl #24
	mov	r5, r7, asr #8
.LBB32:
.LBB33:
	.file 3 "./libavutil/arm/intmath.h"
	.loc 3 105 0
#APP
@ 105 "./libavutil/arm/intmath.h" 1
	adds   lr, r5, r4, lsr #31  
	itet   ne                     
	mvnne  lr, #1<<31             
	moveq  ip, r4                
	eorne  ip, lr,  r5, asr #31  
	
@ 0 "" 2
.LVL39:
.LBE33:
.LBE32:
	.loc 1 220 0 discriminator 1
	cmp	r1, r2
	.loc 1 221 0
	str	ip, [r0, #4]!
.LVL40:
	.loc 1 220 0 discriminator 1
	bne	.L40
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
	.cfi_endproc
.LFE64:
	.size	scale_samples_s32, .-scale_samples_s32
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.type	uninit, %function
uninit:
.LFB58:
	.loc 1 123 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL41:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 124 0
	ldr	r4, [r0, #36]
.LVL42:
	.loc 1 125 0
	ldr	r0, [r4, #20]
.LVL43:
	bl	av_expr_free(PLT)
.LVL44:
	.loc 1 126 0
	mov	r0, r4
	bl	av_opt_free(PLT)
.LVL45:
	.loc 1 127 0
	add	r0, r4, #4
	.loc 1 128 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL46:
	.loc 1 127 0
	b	av_freep(PLT)
.LVL47:
	.cfi_endproc
.LFE58:
	.size	uninit, .-uninit
	.align	2
	.type	init, %function
init:
.LFB57:
	.loc 1 112 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL48:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	mov	r6, r0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 56
	.loc 1 115 0
	mov	r0, #0
.LVL49:
	.loc 1 113 0
	ldr	r5, [r6, #36]
.LVL50:
	.loc 1 115 0
	bl	avpriv_float_dsp_alloc(PLT)
.LVL51:
	.loc 1 116 0
	cmp	r0, #0
	.loc 1 115 0
	str	r0, [r5, #4]
	.loc 1 117 0
	mvneq	r0, #11
	.loc 1 116 0
	beq	.L48
	.loc 1 119 0
	ldr	r8, [r5, #16]
.LVL52:
.LBB36:
.LBB37:
	.loc 1 98 0
	ldr	r2, .L52
	mov	r4, #0
	.loc 1 96 0
	mov	r0, r5
	ldr	r7, [r0, #20]!
.LVL53:
	.loc 1 98 0
	mov	r1, r8
	str	r6, [sp, #16]
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	mov	r3, r4
.LPIC24:
	add	r2, pc, r2
	bl	av_expr_parse(PLT)
.LVL54:
	.loc 1 100 0
	subs	r9, r0, #0
	bge	.L49
	.loc 1 101 0
	ldr	r2, .L52+4
	mov	r0, r6
.LVL55:
	mov	r3, r8
	mov	r1, #16
.LPIC25:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL56:
	.loc 1 103 0
	str	r7, [r5, #20]
	mov	r0, r9
	b	.L48
.L49:
	.loc 1 107 0
	mov	r0, r7
	bl	av_expr_free(PLT)
.LVL57:
	.loc 1 108 0
	mov	r0, r4
.LVL58:
.L48:
.LBE37:
.LBE36:
	.loc 1 120 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL59:
.L53:
	.align	2
.L52:
	.word	.LANCHOR0-(.LPIC24+8)
	.word	.LC0-(.LPIC25+8)
	.cfi_endproc
.LFE57:
	.size	init, .-init
	.align	2
	.type	volume_init, %function
volume_init:
.LFB65:
	.loc 1 225 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL60:
	.loc 1 226 0
	mov	r3, #1
	.loc 1 225 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 225 0
	mov	r4, r0
	.loc 1 226 0
	str	r3, [r0, #172]
	.loc 1 228 0
	ldr	r0, [r0, #164]
.LVL61:
	bl	av_get_packed_sample_fmt(PLT)
.LVL62:
	cmp	r0, #4
	addls	pc, pc, r0, asl #2
	b	.L54
.L57:
	b	.L56
	b	.L58
	b	.L59
	b	.L60
	b	.L61
	.p2align 1
.L56:
.LVL63:
.LBB40:
.LBB41:
	.loc 1 230 0
	ldr	r3, [r4, #152]
	cmp	r3, #16777216
	bge	.L62
	.loc 1 231 0
	ldr	r3, .L65
.LPIC26:
	add	r3, pc, r3
	str	r3, [r4, #168]
	ldmfd	sp!, {r4, pc}
.L62:
	.loc 1 233 0
	ldr	r3, .L65+4
.LPIC27:
	add	r3, pc, r3
	str	r3, [r4, #168]
	ldmfd	sp!, {r4, pc}
.LVL64:
.L58:
.LBE41:
.LBE40:
	.loc 1 236 0
	ldr	r3, [r4, #152]
	cmp	r3, #65536
	bge	.L63
	.loc 1 237 0
	ldr	r3, .L65+8
.LPIC28:
	add	r3, pc, r3
	str	r3, [r4, #168]
	ldmfd	sp!, {r4, pc}
.L63:
	.loc 1 239 0
	ldr	r3, .L65+12
.LPIC29:
	add	r3, pc, r3
	str	r3, [r4, #168]
	ldmfd	sp!, {r4, pc}
.L59:
	.loc 1 242 0
	ldr	r3, .L65+16
.LPIC30:
	add	r3, pc, r3
	str	r3, [r4, #168]
	.loc 1 243 0
	ldmfd	sp!, {r4, pc}
.L60:
	.loc 1 245 0
	mov	r3, #4
	str	r3, [r4, #172]
	.loc 1 246 0
	ldmfd	sp!, {r4, pc}
.L61:
	.loc 1 248 0
	mov	r3, #8
	str	r3, [r4, #172]
.L54:
	ldmfd	sp!, {r4, pc}
.L66:
	.align	2
.L65:
	.word	scale_samples_u8_small-(.LPIC26+8)
	.word	scale_samples_u8-(.LPIC27+8)
	.word	scale_samples_s16_small-(.LPIC28+8)
	.word	scale_samples_s16-(.LPIC29+8)
	.word	scale_samples_s32-(.LPIC30+8)
	.cfi_endproc
.LFE65:
	.size	volume_init, .-volume_init
	.global	__aeabi_dcmpun
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_d2iz
	.global	__aeabi_i2d
	.text
	.align	2
	.type	set_volume, %function
set_volume:
.LFB66:
	.loc 1 257 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL65:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 258 0
	ldr	r4, [r0, #36]
.LVL66:
	.loc 1 257 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 64
	.loc 1 260 0
	mov	r2, #0
	.loc 1 257 0
	mov	r5, r0
	.loc 1 260 0
	add	r1, r4, #24
	ldr	r0, [r4, #20]
.LVL67:
	bl	av_expr_eval(PLT)
.LVL68:
	mov	r2, r0
	mov	r3, r1
	strd	r2, [r4, #144]
	.loc 1 261 0
	bl	__aeabi_dcmpun(PLT)
.LVL69:
	cmp	r0, #0
	beq	.L68
	.loc 1 262 0
	ldr	r3, [r4, #12]
	.loc 1 263 0
	mov	r0, r5
	.loc 1 262 0
	cmp	r3, #0
	bne	.L70
	.loc 1 263 0
	ldr	r2, .L76
	mov	r1, #16
.LPIC31:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL70:
	.loc 1 264 0
	mvn	r0, #21
.L71:
	.loc 1 286 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL71:
.L70:
	.cfi_restore_state
	.loc 1 266 0
	ldr	r2, .L76+4
	mov	r1, #24
.LPIC32:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL72:
	.loc 1 267 0
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r4, #144]
.L68:
	.loc 1 270 0
	ldrd	r6, [r4, #144]
	.loc 1 272 0
	ldrd	r2, [r4, #24]
	.loc 1 270 0
	strd	r6, [r4, #112]
	.loc 1 272 0
	strd	r2, [sp]
	ldrd	r2, [r4, #96]
	ldr	ip, .L76+8
	strd	r2, [sp, #8]
	ldrd	r2, [r4, #64]
.LPIC34:
	add	ip, pc, ip
	strd	r2, [sp, #16]
	ldr	r2, [r4, #8]
	mov	r0, r5
	add	r3, ip, r2, asl #2
	ldr	r2, .L76+12
	ldr	r3, [r3, #52]
	str	r3, [sp, #24]
	mov	r1, #40
.LPIC33:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL73:
	.loc 1 276 0
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L75
.L72:
	.loc 1 282 0
	ldrd	r8, [r4, #144]
	.loc 1 281 0
	ldr	r6, .L76+16
	.loc 1 282 0
	mov	r0, r8
	mov	r1, r9
	bl	log10(PLT)
.LVL74:
	.loc 1 281 0
	ldr	r3, .L76+20
	mov	r2, #0
	strd	r8, [sp]
	bl	__aeabi_dmul(PLT)
.LVL75:
.LPIC36:
	add	r6, pc, r6
	mov	r2, r6
	strd	r0, [sp, #8]
	mov	r0, r5
	mov	r1, #40
	bl	av_log(PLT)
.LVL76:
	.loc 1 284 0
	mov	r0, r4
	bl	volume_init(PLT)
.LVL77:
	.loc 1 285 0
	mov	r0, #0
	b	.L71
.L75:
	.loc 1 277 0
	ldrd	r0, [r4, #144]
	mov	r2, #0
	ldr	r3, .L76+24
	bl	__aeabi_dmul(PLT)
.LVL78:
	mov	r2, #0
	ldr	r3, .L76+28
	bl	__aeabi_dadd(PLT)
.LVL79:
	bl	__aeabi_d2iz(PLT)
.LVL80:
	str	r0, [r4, #152]
	mov	r6, r0
	.loc 1 278 0
	bl	__aeabi_i2d(PLT)
.LVL81:
	mov	r2, #0
	ldr	r3, .L76+32
	bl	__aeabi_dmul(PLT)
.LVL82:
	.loc 1 279 0
	ldr	r2, .L76+36
	mov	r3, r6
.LPIC35:
	add	r2, pc, r2
	.loc 1 278 0
	strd	r0, [r4, #144]
	.loc 1 279 0
	mov	r0, r5
	mov	r1, #40
	bl	av_log(PLT)
.LVL83:
	b	.L72
.L77:
	.align	2
.L76:
	.word	.LC1-(.LPIC31+8)
	.word	.LC2-(.LPIC32+8)
	.word	.LANCHOR0-(.LPIC34+8)
	.word	.LC3-(.LPIC33+8)
	.word	.LC5-(.LPIC36+8)
	.word	1077149696
	.word	1081081856
	.word	1071644672
	.word	1064304640
	.word	.LC4-(.LPIC35+8)
	.cfi_endproc
.LFE66:
	.size	set_volume, .-set_volume
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.global	__aeabi_ddiv
	.global	__aeabi_ui2f
	.global	__aeabi_dcmplt
	.global	__aeabi_l2d
	.global	__aeabi_dcmpeq
	.global	__aeabi_d2f
	.align	2
	.type	filter_frame, %function
filter_frame:
.LFB69:
	.loc 1 341 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL84:
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
	.loc 1 342 0
	ldr	r5, [r0, #8]
.LVL85:
	.loc 1 341 0
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 1 344 0
	ldr	r2, [r5, #28]
	.loc 1 345 0
	mov	r3, r1
	.loc 1 341 0
	str	r1, [sp, #28]
	mov	r4, r0
	.loc 1 348 0
	mov	r0, r1
.LVL86:
	mov	r1, #5
.LVL87:
	.loc 1 344 0
	ldr	r9, [r2]
	.loc 1 343 0
	ldr	r10, [r5, #36]
.LVL88:
	.loc 1 345 0
	ldr	r8, [r3, #76]
.LVL89:
	.loc 1 348 0
	bl	av_frame_get_side_data(PLT)
.LVL90:
	.loc 1 351 0
	cmp	r0, #0
	beq	.L79
	.loc 1 351 0 is_stmt 0 discriminator 1
	ldr	r3, [r10, #120]
	cmp	r3, #1
	beq	.L79
	.loc 1 352 0 is_stmt 1
	cmp	r3, #0
	bne	.L142
.LVL91:
.L80:
	.loc 1 386 0
	ldr	r0, [sp, #28]
	mov	r1, #5
	bl	av_frame_remove_side_data(PLT)
.LVL92:
.L79:
	.loc 1 389 0
	ldrd	r0, [r10, #80]
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dcmpun(PLT)
.LVL93:
	.loc 1 390 0
	ldr	fp, [sp, #28]
	ldrd	r6, [fp, #104]
	.loc 1 389 0
	cmp	r0, #0
	bne	.L143
.L87:
	.loc 1 393 0
	cmp	r7, #-2147483648
	cmpeq	r6, #0
	beq	.L89
	.loc 1 393 0 is_stmt 0 discriminator 1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_l2d(PLT)
.LVL94:
	mov	r6, r0
	mov	r7, r1
	.loc 1 393 0 discriminator 4
	strd	r6, [r10, #64]
.LVL95:
.LBB42:
.LBB43:
	.file 4 "./libavutil/rational.h"
	.loc 4 81 0 is_stmt 1
	ldr	r0, [r4, #56]
	bl	__aeabi_i2d(PLT)
.LVL96:
	strd	r0, [sp, #8]
	ldr	r0, [r4, #60]
.LVL97:
	bl	__aeabi_i2d(PLT)
.LVL98:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [sp, #8]
	bl	__aeabi_ddiv(PLT)
.LVL99:
	mov	r2, r0
	mov	r3, r1
.LBE43:
.LBE42:
	.loc 1 394 0 discriminator 1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul(PLT)
.LVL100:
.L111:
	.loc 1 394 0 is_stmt 0 discriminator 4
	strd	r0, [r10, #96]
	.loc 1 395 0 is_stmt 1
	ldrd	r0, [r4, #160]
	bl	__aeabi_l2d(PLT)
.LVL101:
	strd	r0, [r10, #24]
	.loc 1 397 0
	mov	r0, fp
	bl	av_frame_get_pkt_pos(PLT)
.LVL102:
	.loc 1 398 0
	mvn	r3, #0
	mvn	r2, #0
	cmp	r1, r3
	cmpeq	r0, r2
	beq	.L114
	.loc 1 398 0 is_stmt 0 discriminator 1
	bl	__aeabi_l2d(PLT)
.LVL103:
.L90:
	.loc 1 399 0 is_stmt 1
	ldr	r3, [r10, #12]
	.loc 1 398 0 discriminator 4
	strd	r0, [r10, #56]
	.loc 1 399 0
	cmp	r3, #1
	beq	.L144
.L91:
	.loc 1 402 0
	ldrd	r0, [r10, #144]
	mov	r2, #0
	ldr	r3, .L147
	bl	__aeabi_dcmpeq(PLT)
.LVL104:
	cmp	r0, #0
	bne	.L92
	.loc 1 402 0 is_stmt 0 discriminator 1
	ldr	r3, [r10, #152]
	cmp	r3, #256
	beq	.L92
	.loc 1 408 0 is_stmt 1
	ldr	r0, [sp, #28]
	bl	av_frame_is_writable(PLT)
.LVL105:
	cmp	r0, #0
	beq	.L95
	.loc 1 409 0
	ldr	r3, [r10, #8]
	cmp	r3, #0
	bne	.L96
	.loc 1 409 0 is_stmt 0 discriminator 1
	ldr	r2, [r10, #152]
	cmp	r2, #0
	ble	.L95
.L96:
	.loc 1 410 0 is_stmt 1
	ldr	r4, [sp, #28]
.LVL106:
	str	r4, [sp, #36]
.L97:
	.loc 1 423 0
	cmp	r3, #0
	bne	.L100
	.loc 1 423 0 is_stmt 0 discriminator 1
	ldr	r3, [r10, #152]
	cmp	r3, #0
	ble	.L101
.L100:
.LBB44:
	.loc 1 426 0 is_stmt 1
	ldr	r0, [r4, #80]
	bl	av_sample_fmt_is_planar(PLT)
.LVL107:
	.loc 1 431 0
	ldr	r4, [r10, #8]
	.loc 1 426 0
	cmp	r0, #0
	.loc 1 429 0
	ldreq	r3, [r10, #156]
	ldreq	r2, [r10, #172]
	.loc 1 427 0
	ldrne	r3, [r10, #172]
	.loc 1 429 0
	mlaeq	r3, r8, r3, r2
	.loc 1 427 0
	addne	r5, r3, r8
.LVL108:
	subne	r5, r5, #1
	rsbne	r3, r3, #0
	.loc 1 429 0
	rsbeq	r5, r2, #0
	subeq	r3, r3, #1
	.loc 1 431 0
	cmp	r4, #0
	.loc 1 429 0
	and	r5, r5, r3
.LVL109:
	.loc 1 431 0
	bne	.L104
.LVL110:
	.loc 1 432 0 discriminator 1
	ldr	r3, [r10, #160]
	cmp	r3, #0
	ble	.L141
.LVL111:
.L105:
	.loc 1 433 0
	ldr	r2, [sp, #36]
	.loc 1 434 0
	ldr	r3, [sp, #28]
	.loc 1 433 0
	ldr	r1, [r2, #64]
	ldr	r3, [r3, #64]
	ldr	r0, [r1, r4, asl #2]
	ldr	ip, [r10, #168]
	ldr	r1, [r3, r4, asl #2]
	mov	r2, r5
	ldr	r3, [r10, #152]
	blx	ip
.LVL112:
	.loc 1 432 0 discriminator 1
	ldr	r3, [r10, #160]
	.loc 1 432 0 is_stmt 0 discriminator 3
	add	r4, r4, #1
.LVL113:
	.loc 1 432 0 discriminator 1
	cmp	r3, r4
	bgt	.L105
.LVL114:
.L141:
	ldr	r4, [sp, #28]
.LVL115:
.L101:
.LBE44:
	.loc 1 454 0 is_stmt 1
	ldr	r3, [sp, #36]
	cmp	r3, r4
	beq	.L94
	.loc 1 455 0
	add	r0, sp, #28
.LVL116:
	bl	av_frame_free(PLT)
.LVL117:
	ldr	r4, [sp, #36]
	b	.L94
.LVL118:
.L92:
	.loc 1 403 0
	ldr	r4, [sp, #28]
.LVL119:
	str	r4, [sp, #36]
.LVL120:
.L94:
	.loc 1 458 0
	ldr	r0, [r4, #76]
	bl	__aeabi_i2d(PLT)
.LVL121:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [r10, #40]
	bl	__aeabi_dadd(PLT)
.LVL122:
	strd	r0, [r10, #40]
	.loc 1 459 0
	mov	r0, r9
	mov	r1, r4
	bl	ff_filter_frame(PLT)
.LVL123:
.L139:
	.loc 1 460 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL124:
.L114:
	.cfi_restore_state
	.loc 1 398 0 discriminator 2
	mov	r0, #0
.LVL125:
	ldr	r1, .L147+4
	b	.L90
.L89:
	.loc 1 393 0 discriminator 4
	ldr	r1, .L147+4
	mov	r0, #0
	strd	r0, [r10, #64]
	b	.L111
.L95:
	.loc 1 412 0
	mov	r0, r4
	mov	r1, r8
	bl	ff_get_audio_buffer(PLT)
.LVL126:
	.loc 1 413 0
	cmp	r0, #0
	.loc 1 412 0
	str	r0, [sp, #36]
	.loc 1 413 0
	beq	.L115
	.loc 1 415 0
	ldr	r1, [sp, #28]
	bl	av_frame_copy_props(PLT)
.LVL127:
	.loc 1 416 0
	subs	r4, r0, #0
.LVL128:
	blt	.L145
	ldr	r3, [r10, #8]
	ldr	r4, [sp, #28]
	b	.L97
.LVL129:
.L144:
	.loc 1 400 0
	mov	r0, r5
	bl	set_volume(PLT)
.LVL130:
	b	.L91
.L143:
	.loc 1 390 0
	cmp	r7, #-2147483648
	cmpeq	r6, #0
	beq	.L88
	.loc 1 390 0 is_stmt 0 discriminator 1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_l2d(PLT)
.LVL131:
	.loc 1 390 0 discriminator 4
	mov	r2, r0
	mov	r3, r1
	strd	r2, [r10, #80]
.LVL132:
	strd	r0, [sp, #8]
.LBB45:
.LBB46:
	.loc 4 81 0 is_stmt 1
	ldr	r0, [r4, #56]
	bl	__aeabi_i2d(PLT)
.LVL133:
	strd	r0, [sp, #16]
	ldr	r0, [r4, #60]
.LVL134:
	bl	__aeabi_i2d(PLT)
.LVL135:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [sp, #16]
	bl	__aeabi_ddiv(PLT)
.LVL136:
	mov	r2, r0
	mov	r3, r1
.LBE46:
.LBE45:
	.loc 1 391 0 discriminator 1
	ldrd	r0, [sp, #8]
	bl	__aeabi_dmul(PLT)
.LVL137:
.L110:
	.loc 1 391 0 is_stmt 0 discriminator 4
	strd	r0, [r10, #88]
	b	.L87
.LVL138:
.L104:
.LBB47:
	.loc 1 437 0 is_stmt 1
	ldr	r0, [r10, #164]
	bl	av_get_packed_sample_fmt(PLT)
.LVL139:
	.loc 1 438 0 discriminator 1
	ldr	r3, [r10, #160]
	.loc 1 437 0
	cmp	r0, #3
	beq	.L106
.LVL140:
	.loc 1 444 0 discriminator 1
	cmp	r3, #0
	movgt	r4, #0
	ble	.L141
.LVL141:
.L107:
	.loc 1 445 0
	ldr	r2, [sp, #36]
	.loc 1 446 0
	ldr	r3, [sp, #28]
	.loc 1 445 0
	ldr	r2, [r2, #64]
	ldr	r3, [r3, #64]
	ldr	ip, [r10, #4]
	ldr	r0, [r2, r4, asl #2]
	ldr	r1, [r3, r4, asl #2]
	ldrd	r2, [r10, #144]
	str	r5, [sp]
	ldr	ip, [ip, #12]
	blx	ip
.LVL142:
	.loc 1 444 0 discriminator 1
	ldr	r3, [r10, #160]
	.loc 1 444 0 is_stmt 0 discriminator 3
	add	r4, r4, #1
.LVL143:
	.loc 1 444 0 discriminator 1
	cmp	r3, r4
	bgt	.L107
	b	.L141
.LVL144:
.L106:
	.loc 1 438 0 is_stmt 1 discriminator 1
	cmp	r3, #0
	ble	.L141
	mov	r4, #0
.LVL145:
.L109:
	.loc 1 439 0
	ldr	r2, [sp, #36]
	.loc 1 440 0
	ldr	r3, [sp, #28]
	.loc 1 439 0
	ldr	r2, [r2, #64]
	ldr	r3, [r3, #64]
	ldrd	r0, [r10, #144]
	ldr	r7, [r2, r4, asl #2]
	ldr	r8, [r3, r4, asl #2]
	bl	__aeabi_d2f(PLT)
.LVL146:
	ldr	r6, [r10, #4]
	mov	r1, r8
	ldr	ip, [r6, #8]
	mov	r3, r5
	.loc 1 438 0 discriminator 3
	add	r4, r4, #1
.LVL147:
	.loc 1 439 0
	mov	r2, r0
	mov	r0, r7
	blx	ip
.LVL148:
	.loc 1 438 0 discriminator 1
	ldr	r2, [r10, #160]
	cmp	r2, r4
	bgt	.L109
	b	.L141
.LVL149:
.L88:
.LBE47:
	.loc 1 390 0 discriminator 4
	ldr	r1, .L147+4
	mov	r0, #0
	strd	r0, [r10, #80]
	b	.L110
.LVL150:
.L145:
	.loc 1 417 0
	add	r0, sp, #36
.LVL151:
	bl	av_frame_free(PLT)
.LVL152:
	.loc 1 418 0
	add	r0, sp, #28
.LVL153:
	bl	av_frame_free(PLT)
.LVL154:
	.loc 1 419 0
	mov	r0, r4
	b	.L139
.LVL155:
.L115:
	.loc 1 414 0
	mvn	r0, #11
	b	.L139
.LVL156:
.L142:
.LBB48:
	.loc 1 358 0
	cmp	r3, #2
	.loc 1 353 0
	ldr	r3, [r0, #4]
.LVL157:
	.loc 1 358 0
	beq	.L146
.LVL158:
.L81:
	.loc 1 364 0
	ldr	r0, [r3, #8]
	cmp	r0, #-2147483648
	beq	.L83
.LVL159:
	.loc 1 367 0
	ldr	fp, [r3, #12]
	.loc 1 355 0
	ldr	r3, .L147+8
.LVL160:
	cmp	fp, #0
	moveq	fp, r3
.LVL161:
.L82:
	.loc 1 373 0
	bl	__aeabi_i2f(PLT)
.LVL162:
	ldr	r1, .L147+12
	bl	__aeabi_fdiv(PLT)
.LVL163:
	.loc 1 376 0
	bl	__aeabi_f2d(PLT)
.LVL164:
	ldr	r2, .L147+16
.LPIC38:
	add	r2, pc, r2
	mov	r6, r0
	mov	r7, r1
	strd	r6, [sp]
	mov	r1, #40
	ldr	r0, [r4, #8]
	bl	av_log(PLT)
.LVL165:
	.loc 1 379 0
	ldrd	r2, [r10, #128]
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
.LVL166:
	mov	r2, #0
	ldr	r3, .L147+20
	bl	__aeabi_ddiv(PLT)
.LVL167:
.LBB49:
.LBB50:
	.file 5 "./libavutil/internal.h"
	.loc 5 308 0
	ldr	r3, .L147+24
	ldr	r2, .L147+28
	bl	__aeabi_dmul(PLT)
.LVL168:
	bl	exp2(PLT)
.LVL169:
.LBE50:
.LBE49:
	.loc 1 380 0
	ldr	r3, [r10, #136]
	cmp	r3, #0
.LBB52:
.LBB51:
	.loc 5 308 0
	mov	r6, r0
	mov	r7, r1
.LBE51:
.LBE52:
	.loc 1 379 0
	strd	r6, [r10, #144]
	.loc 1 380 0
	beq	.L84
	.loc 1 374 0
	mov	r0, fp
	bl	__aeabi_ui2f(PLT)
.LVL170:
	ldr	r1, .L147+12
	bl	__aeabi_fdiv(PLT)
.LVL171:
	.loc 1 381 0
	bl	__aeabi_f2d(PLT)
.LVL172:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L147
	bl	__aeabi_ddiv(PLT)
.LVL173:
	mov	r2, r6
	mov	r3, r7
	strd	r0, [sp, #8]
	bl	__aeabi_dcmplt(PLT)
.LVL174:
	cmp	r0, #0
	.loc 1 381 0 is_stmt 0 discriminator 2
	streqd	r6, [sp, #8]
.L85:
	.loc 1 381 0 discriminator 4
	ldrd	r2, [sp, #8]
	strd	r2, [r10, #144]
.L84:
	.loc 1 382 0 is_stmt 1
	ldrd	r0, [r10, #144]
	mov	r2, #0
	ldr	r3, .L147+32
	bl	__aeabi_dmul(PLT)
.LVL175:
	mov	r2, #0
	ldr	r3, .L147+36
	bl	__aeabi_dadd(PLT)
.LVL176:
	bl	__aeabi_d2iz(PLT)
.LVL177:
	str	r0, [r10, #152]
	.loc 1 384 0
	mov	r0, r10
	bl	volume_init(PLT)
.LVL178:
	b	.L80
.LVL179:
.L83:
	.loc 1 370 0
	ldr	r2, .L147+40
	.loc 1 355 0
	ldr	fp, .L147+8
	.loc 1 370 0
	ldr	r0, [r4, #8]
	mov	r1, #24
.LPIC37:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL180:
	.loc 1 354 0
	mov	r0, fp
	b	.L82
.LVL181:
.L146:
	.loc 1 359 0
	ldr	r0, [r3]
.LVL182:
	.loc 1 358 0 discriminator 1
	cmp	r0, #-2147483648
	beq	.L81
.LVL183:
	.loc 1 362 0
	ldr	fp, [r3, #4]
	.loc 1 355 0
	ldr	r3, .L147+8
.LVL184:
	cmp	fp, #0
	moveq	fp, r3
	b	.L82
.L148:
	.align	2
.L147:
	.word	1072693248
	.word	2146959360
	.word	100000
	.word	1203982336
	.word	.LC7-(.LPIC38+8)
	.word	1077149696
	.word	1074434895
	.word	158966641
	.word	1081081856
	.word	1071644672
	.word	.LC6-(.LPIC37+8)
.LBE48:
	.cfi_endproc
.LFE69:
	.size	filter_frame, .-filter_frame
	.align	2
	.type	query_formats, %function
query_formats:
.LFB59:
	.loc 1 131 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL185:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 131 0
	mov	r4, r0
	.loc 1 132 0
	ldr	r5, [r0, #36]
.LVL186:
	.loc 1 158 0
	bl	ff_all_channel_counts(PLT)
.LVL187:
	.loc 1 159 0
	subs	r1, r0, #0
	beq	.L152
	.loc 1 161 0
	mov	r0, r4
.LVL188:
	bl	ff_set_common_channel_layouts(PLT)
.LVL189:
	.loc 1 162 0
	cmp	r0, #0
	ldmltfd	sp!, {r3, r4, r5, pc}
	.loc 1 165 0
	ldr	r3, [r5, #8]
	ldr	r0, .L162
.LVL190:
	rsb	r3, r3, r3, asl #3
.LPIC39:
	add	r0, pc, r0
	add	r0, r0, r3, asl #2
	bl	ff_make_format_list(PLT)
.LVL191:
	.loc 1 166 0
	subs	r1, r0, #0
	beq	.L152
	.loc 1 168 0
	mov	r0, r4
.LVL192:
	bl	ff_set_common_formats(PLT)
.LVL193:
	.loc 1 169 0
	cmp	r0, #0
	ldmltfd	sp!, {r3, r4, r5, pc}
.LVL194:
.LBB55:
.LBB56:
	.loc 1 172 0
	bl	ff_all_samplerates(PLT)
.LVL195:
	.loc 1 173 0
	subs	r1, r0, #0
	beq	.L152
	.loc 1 175 0
	mov	r0, r4
.LVL196:
.LBE56:
.LBE55:
	.loc 1 176 0
	ldmfd	sp!, {r3, r4, r5, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL197:
.LBB58:
.LBB57:
	.loc 1 175 0
	b	ff_set_common_samplerates(PLT)
.LVL198:
.L152:
	.cfi_restore_state
.LBE57:
.LBE58:
	.loc 1 160 0
	mvn	r0, #11
	ldmfd	sp!, {r3, r4, r5, pc}
.L163:
	.align	2
.L162:
	.word	.LANCHOR1-(.LPIC39+8)
	.cfi_endproc
.LFE59:
	.size	query_formats, .-query_formats
	.align	2
	.type	process_command, %function
process_command:
.LFB68:
	.loc 1 322 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL199:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	mov	r6, r0
	.loc 1 326 0
	mov	r0, r1
.LVL200:
	ldr	r1, .L172
.LVL201:
	.loc 1 322 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 56
	.loc 1 326 0
.LPIC40:
	add	r1, pc, r1
	.loc 1 322 0
	mov	r8, r2
	.loc 1 326 0
	bl	strcmp(PLT)
.LVL202:
	.loc 1 323 0
	ldr	r7, [r6, #36]
.LVL203:
	.loc 1 326 0
	subs	r5, r0, #0
	.loc 1 324 0
	mvnne	r4, #37
	.loc 1 326 0
	beq	.L170
.LVL204:
.L165:
	.loc 1 334 0
	mov	r0, r4
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL205:
.L170:
	.cfi_restore_state
.LBB61:
.LBB62:
	.loc 1 98 0
	ldr	r2, .L172+4
	.loc 1 96 0
	mov	r0, r7
	ldr	r9, [r0, #20]!
.LVL206:
	.loc 1 98 0
	mov	r1, r8
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #12]
	str	r6, [sp, #16]
.LPIC41:
	add	r2, pc, r2
	mov	r3, r5
	bl	av_expr_parse(PLT)
.LVL207:
	.loc 1 100 0
	subs	r4, r0, #0
	blt	.L171
	.loc 1 107 0
	mov	r0, r9
.LVL208:
	bl	av_expr_free(PLT)
.LVL209:
.LBE62:
.LBE61:
	.loc 1 329 0
	ldr	r4, [r7, #12]
.LVL210:
	cmp	r4, #0
	movne	r4, r5
	bne	.L165
	.loc 1 330 0
	mov	r0, r6
	bl	set_volume(PLT)
.LVL211:
	b	.L165
.LVL212:
.L171:
.LBB64:
.LBB63:
	.loc 1 101 0
	ldr	r2, .L172+8
	mov	r0, r6
.LVL213:
	mov	r3, r8
	mov	r1, #16
.LPIC42:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL214:
	.loc 1 103 0
	str	r9, [r7, #20]
.LVL215:
	b	.L165
.L173:
	.align	2
.L172:
	.word	.LC8-(.LPIC40+8)
	.word	.LANCHOR0-(.LPIC41+8)
	.word	.LC0-(.LPIC42+8)
.LBE63:
.LBE64:
	.cfi_endproc
.LFE68:
	.size	process_command, .-process_command
	.align	2
	.type	config_output, %function
config_output:
.LFB67:
	.loc 1 289 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL216:
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
	.loc 1 290 0
	ldr	r5, [r0]
.LVL217:
	.loc 1 289 0
	sub	sp, sp, #32
	.cfi_def_cfa_offset 64
	.loc 1 292 0
	ldr	r3, [r5, #16]
	.loc 1 291 0
	ldr	r10, [r5, #36]
.LVL218:
	.loc 1 292 0
	ldr	r4, [r3]
.LVL219:
	.loc 1 295 0
	ldr	r3, [r4, #152]
	.loc 1 294 0
	ldr	r0, [r4, #52]
.LVL220:
	str	r0, [r10, #164]
	.loc 1 295 0
	str	r3, [r10, #156]
	.loc 1 296 0
	bl	av_sample_fmt_is_planar(PLT)
.LVL221:
	.loc 1 306 0
	ldr	r3, .L185
	mov	r2, #0
	strd	r2, [r10, #112]
	.loc 1 305 0
	strd	r2, [r10, #96]
	.loc 1 304 0
	strd	r2, [r10, #88]
	.loc 1 303 0
	strd	r2, [r10, #80]
	.loc 1 302 0
	strd	r2, [r10, #64]
	.loc 1 301 0
	strd	r2, [r10, #56]
	.loc 1 300 0
	strd	r2, [r10, #48]
	.loc 1 299 0
	strd	r2, [r10, #40]
	.loc 1 298 0
	strd	r2, [r10, #24]
	.loc 1 296 0
	cmp	r0, #0
	.loc 1 296 0 is_stmt 0 discriminator 1
	ldrne	r1, [r10, #156]
	.loc 1 296 0 discriminator 2
	moveq	r1, #1
	.loc 1 308 0 is_stmt 1
	ldr	r0, [r4, #152]
	.loc 1 296 0 discriminator 4
	str	r1, [r10, #160]
	.loc 1 308 0
	bl	__aeabi_i2d(PLT)
.LVL222:
	mov	r6, r0
	mov	r7, r1
.LBB69:
.LBB70:
	.loc 4 81 0
	ldr	r0, [r4, #56]
.LBE70:
.LBE69:
	.loc 1 308 0
	strd	r6, [r10, #32]
.LVL223:
.LBB72:
.LBB71:
	.loc 4 81 0
	bl	__aeabi_i2d(PLT)
.LVL224:
	mov	r8, r0
	ldr	r0, [r4, #60]
.LVL225:
	mov	r9, r1
	bl	__aeabi_i2d(PLT)
.LVL226:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_ddiv(PLT)
.LVL227:
	mov	r8, r0
	mov	r9, r1
.LBE71:
.LBE72:
	.loc 1 310 0
	ldr	r0, [r4, #48]
	.loc 1 309 0
	strd	r8, [r10, #104]
	.loc 1 310 0
	bl	__aeabi_i2d(PLT)
.LVL228:
	mov	r3, r1
	mov	r2, r0
	.loc 1 312 0
	ldr	r0, [r4]
	.loc 1 310 0
	strd	r2, [r10, #72]
	.loc 1 312 0
	strd	r2, [sp, #8]
	ldr	r2, .L185+4
	mov	r1, #40
.LPIC43:
	add	r2, pc, r2
	strd	r6, [sp, #16]
	strd	r8, [sp]
	bl	av_log(PLT)
.LVL229:
.LBB73:
.LBB74:
	.loc 1 258 0
	ldr	r4, [r5, #36]
.LVL230:
	.loc 1 260 0
	mov	r2, #0
	ldr	r0, [r4, #20]
	add	r1, r4, #24
	bl	av_expr_eval(PLT)
.LVL231:
	mov	r2, r0
	mov	r3, r1
	strd	r2, [r4, #144]
	.loc 1 261 0
	bl	__aeabi_dcmpun(PLT)
.LVL232:
	cmp	r0, #0
	beq	.L176
	.loc 1 262 0
	ldr	r3, [r4, #12]
	.loc 1 263 0
	mov	r0, r5
	.loc 1 262 0
	cmp	r3, #0
	bne	.L178
	.loc 1 263 0
	ldr	r2, .L185+8
	mov	r1, #16
.LPIC44:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL233:
	.loc 1 264 0
	mvn	r0, #21
.L179:
.LBE74:
.LBE73:
	.loc 1 318 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL234:
.L178:
	.cfi_restore_state
.LBB76:
.LBB75:
	.loc 1 266 0
	ldr	r2, .L185+12
	mov	r1, #24
.LPIC45:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL235:
	.loc 1 267 0
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r4, #144]
.L176:
	.loc 1 270 0
	ldrd	r6, [r4, #144]
	.loc 1 272 0
	ldrd	r2, [r4, #24]
	.loc 1 270 0
	strd	r6, [r4, #112]
	.loc 1 272 0
	strd	r2, [sp]
	ldrd	r2, [r4, #96]
	ldr	ip, .L185+16
	strd	r2, [sp, #8]
	ldrd	r2, [r4, #64]
.LPIC47:
	add	ip, pc, ip
	strd	r2, [sp, #16]
	ldr	r2, [r4, #8]
	mov	r0, r5
	add	r3, ip, r2, asl #2
	ldr	r2, .L185+20
	ldr	r3, [r3, #52]
	str	r3, [sp, #24]
	mov	r1, #40
.LPIC46:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL236:
	.loc 1 276 0
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L184
.L180:
	.loc 1 282 0
	ldrd	r8, [r4, #144]
	.loc 1 281 0
	ldr	r6, .L185+24
	.loc 1 282 0
	mov	r0, r8
	mov	r1, r9
	bl	log10(PLT)
.LVL237:
	.loc 1 281 0
	ldr	r3, .L185+28
	mov	r2, #0
	strd	r8, [sp]
	bl	__aeabi_dmul(PLT)
.LVL238:
.LPIC49:
	add	r6, pc, r6
	mov	r2, r6
	strd	r0, [sp, #8]
	mov	r0, r5
	mov	r1, #40
	bl	av_log(PLT)
.LVL239:
	.loc 1 284 0
	mov	r0, r4
	bl	volume_init(PLT)
.LVL240:
	.loc 1 285 0
	mov	r0, #0
	b	.L179
.L184:
	.loc 1 277 0
	ldrd	r0, [r4, #144]
	mov	r2, #0
	ldr	r3, .L185+32
	bl	__aeabi_dmul(PLT)
.LVL241:
	mov	r2, #0
	ldr	r3, .L185+36
	bl	__aeabi_dadd(PLT)
.LVL242:
	bl	__aeabi_d2iz(PLT)
.LVL243:
	str	r0, [r4, #152]
	mov	r6, r0
	.loc 1 278 0
	bl	__aeabi_i2d(PLT)
.LVL244:
	mov	r2, #0
	ldr	r3, .L185+40
	bl	__aeabi_dmul(PLT)
.LVL245:
	.loc 1 279 0
	ldr	r2, .L185+44
	mov	r3, r6
.LPIC48:
	add	r2, pc, r2
	.loc 1 278 0
	strd	r0, [r4, #144]
	.loc 1 279 0
	mov	r0, r5
	mov	r1, #40
	bl	av_log(PLT)
.LVL246:
	b	.L180
.L186:
	.align	2
.L185:
	.word	2146959360
	.word	.LC9-(.LPIC43+8)
	.word	.LC1-(.LPIC44+8)
	.word	.LC2-(.LPIC45+8)
	.word	.LANCHOR0-(.LPIC47+8)
	.word	.LC3-(.LPIC46+8)
	.word	.LC5-(.LPIC49+8)
	.word	1077149696
	.word	1081081856
	.word	1071644672
	.word	1064304640
	.word	.LC4-(.LPIC48+8)
.LBE75:
.LBE76:
	.cfi_endproc
.LFE67:
	.size	config_output, .-config_output
	.global	ff_af_volume
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	sample_fmts.9297, %object
	.size	sample_fmts.9297, 84
sample_fmts.9297:
	.word	0
	.word	5
	.word	1
	.word	6
	.word	2
	.word	7
	.word	-1
	.word	3
	.word	8
	.word	-1
	.space	16
	.word	4
	.word	9
	.word	-1
	.space	16
	.section	.data.rel.ro,"aw",%progbits
	.align	2
	.type	volume_class, %object
	.size	volume_class, 44
volume_class:
	.word	.LC8
	.word	av_default_item_name
	.word	volume_options
	.word	3608935
	.space	16
	.word	7
	.space	8
	.section	.data.rel.ro.local,"aw",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	var_names, %object
	.size	var_names, 52
var_names:
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC8
	.word	0
	.type	precision_str, %object
	.size	precision_str, 12
precision_str:
	.word	.LC16
	.word	.LC18
	.word	.LC20
	.type	avfilter_af_volume_outputs, %object
	.size	avfilter_af_volume_outputs, 80
avfilter_af_volume_outputs:
	.word	.LC11
	.word	1
	.space	20
	.word	config_output
	.space	8
	.word	0
	.space	36
	.type	avfilter_af_volume_inputs, %object
	.size	avfilter_af_volume_inputs, 80
avfilter_af_volume_inputs:
	.word	.LC11
	.word	1
	.space	8
	.word	filter_frame
	.space	20
	.word	0
	.space	36
	.type	volume_options, %object
	.size	volume_options, 768
volume_options:
	.word	.LC8
	.word	.LC12
	.word	16
	.word	5
	.word	.LC13
	.space	4
	.space	16
	.word	65544
	.space	4
	.word	.LC14
	.word	.LC15
	.word	8
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.word	65544
	.word	.LC14
	.word	.LC16
	.word	.LC17
	.word	0
	.word	128
	.word	0
	.word	0
	.word	0
	.word	-1042284544
	.word	4290772992
	.word	1105199103
	.word	65544
	.word	.LC14
	.word	.LC18
	.word	.LC19
	.word	0
	.word	128
	.word	1
	.word	0
	.word	0
	.word	-1042284544
	.word	4290772992
	.word	1105199103
	.word	65544
	.word	.LC14
	.word	.LC20
	.word	.LC21
	.word	0
	.word	128
	.word	2
	.word	0
	.word	0
	.word	-1042284544
	.word	4290772992
	.word	1105199103
	.word	65544
	.word	.LC14
	.word	.LC22
	.word	.LC23
	.word	12
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.word	65544
	.word	.LC22
	.word	.LC24
	.word	.LC25
	.word	0
	.word	128
	.word	0
	.word	0
	.space	16
	.word	65544
	.word	.LC22
	.word	.LC26
	.word	.LC27
	.word	0
	.word	128
	.word	1
	.word	0
	.space	16
	.word	65544
	.word	.LC22
	.word	.LC28
	.word	.LC29
	.word	120
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1074266112
	.word	65544
	.word	.LC28
	.word	.LC30
	.word	.LC31
	.word	0
	.word	128
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65544
	.word	.LC28
	.word	.LC32
	.word	.LC33
	.word	0
	.word	128
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65544
	.word	.LC28
	.word	.LC34
	.word	.LC35
	.word	0
	.word	128
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65544
	.word	.LC28
	.word	.LC36
	.word	.LC37
	.word	0
	.word	128
	.word	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65544
	.word	.LC28
	.word	.LC38
	.word	.LC39
	.word	128
	.word	3
	.word	0
	.word	0
	.word	0
	.word	-1070727168
	.word	0
	.word	1076756480
	.word	65544
	.space	4
	.word	.LC40
	.word	.LC41
	.word	136
	.word	1112493900
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.word	65544
	.space	4
	.word	0
	.space	44
	.section	.data.rel.local,"aw",%progbits
	.align	2
	.type	ff_af_volume, %object
	.size	ff_af_volume, 56
ff_af_volume:
	.word	.LC8
	.word	.LC10
	.word	avfilter_af_volume_inputs
	.word	avfilter_af_volume_outputs
	.word	volume_class
	.word	65536
	.word	init
	.space	4
	.word	uninit
	.word	query_formats
	.word	176
	.space	4
	.word	process_command
	.space	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Error when evaluating the volume expression '%s'\012"
	.ascii	"\000"
	.space	2
.LC1:
	.ascii	"Invalid value NaN for volume\012\000"
	.space	2
.LC2:
	.ascii	"Invalid value NaN for volume, setting to 0\012\000"
.LC3:
	.ascii	"n:%f t:%f pts:%f precision:%s \000"
	.space	1
.LC4:
	.ascii	"volume_i:%d/255 \000"
	.space	3
.LC5:
	.ascii	"volume:%f volume_dB:%f\012\000"
.LC6:
	.ascii	"Both ReplayGain gain values are unknown.\012\000"
	.space	2
.LC7:
	.ascii	"Using gain %f dB from replaygain side data.\012\000"
	.space	3
.LC8:
	.ascii	"volume\000"
	.space	1
.LC9:
	.ascii	"tb:%f sample_rate:%f nb_channels:%f\012\000"
	.space	3
.LC10:
	.ascii	"Change input volume.\000"
	.space	3
.LC11:
	.ascii	"default\000"
.LC12:
	.ascii	"set volume adjustment expression\000"
	.space	3
.LC13:
	.ascii	"1.0\000"
.LC14:
	.ascii	"precision\000"
	.space	2
.LC15:
	.ascii	"select mathematical precision\000"
	.space	2
.LC16:
	.ascii	"fixed\000"
	.space	2
.LC17:
	.ascii	"select 8-bit fixed-point\000"
	.space	3
.LC18:
	.ascii	"float\000"
	.space	2
.LC19:
	.ascii	"select 32-bit floating-point\000"
	.space	3
.LC20:
	.ascii	"double\000"
	.space	1
.LC21:
	.ascii	"select 64-bit floating-point\000"
	.space	3
.LC22:
	.ascii	"eval\000"
	.space	3
.LC23:
	.ascii	"specify when to evaluate expressions\000"
	.space	3
.LC24:
	.ascii	"once\000"
	.space	3
.LC25:
	.ascii	"eval volume expression once\000"
.LC26:
	.ascii	"frame\000"
	.space	2
.LC27:
	.ascii	"eval volume expression per-frame\000"
	.space	3
.LC28:
	.ascii	"replaygain\000"
	.space	1
.LC29:
	.ascii	"Apply replaygain side data when present\000"
.LC30:
	.ascii	"drop\000"
	.space	3
.LC31:
	.ascii	"replaygain side data is dropped\000"
.LC32:
	.ascii	"ignore\000"
	.space	1
.LC33:
	.ascii	"replaygain side data is ignored\000"
.LC34:
	.ascii	"track\000"
	.space	2
.LC35:
	.ascii	"track gain is preferred\000"
.LC36:
	.ascii	"album\000"
	.space	2
.LC37:
	.ascii	"album gain is preferred\000"
.LC38:
	.ascii	"replaygain_preamp\000"
	.space	2
.LC39:
	.ascii	"Apply replaygain pre-amplification\000"
	.space	1
.LC40:
	.ascii	"replaygain_noclip\000"
	.space	2
.LC41:
	.ascii	"Apply replaygain clipping prevention\000"
	.space	3
.LC42:
	.ascii	"n\000"
	.space	2
.LC43:
	.ascii	"nb_channels\000"
.LC44:
	.ascii	"nb_consumed_samples\000"
.LC45:
	.ascii	"nb_samples\000"
	.space	1
.LC46:
	.ascii	"pos\000"
.LC47:
	.ascii	"pts\000"
.LC48:
	.ascii	"sample_rate\000"
.LC49:
	.ascii	"startpts\000"
	.space	3
.LC50:
	.ascii	"startt\000"
	.space	1
.LC51:
	.ascii	"t\000"
	.space	2
.LC52:
	.ascii	"tb\000"
	.text
.Letext0:
	.file 6 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/machine/_types.h"
	.file 7 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/stdint.h"
	.file 8 "./libavutil/avutil.h"
	.file 9 "./libavutil/log.h"
	.file 10 "./libavutil/opt.h"
	.file 11 "./libavutil/pixfmt.h"
	.file 12 "./libavutil/dict.h"
	.file 13 "./libavutil/eval.h"
	.file 14 "./libavutil/float_dsp.h"
	.file 15 "./libavutil/samplefmt.h"
	.file 16 "./libavutil/replaygain.h"
	.file 17 "./libavutil/buffer.h"
	.file 18 "./libavutil/frame.h"
	.file 19 "libavfilter/avfilter.h"
	.file 20 "libavfilter/internal.h"
	.file 21 "libavfilter/formats.h"
	.file 22 "libavfilter/af_volume.h"
	.file 23 "libavfilter/audio.h"
	.file 24 "./libavutil/mem.h"
	.file 25 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/math.h"
	.file 26 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/string.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x29d0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF468
	.byte	0x1
	.4byte	.LASF469
	.4byte	.LASF470
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x6
	.byte	0x27
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x6
	.byte	0x28
	.4byte	0x65
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x6
	.byte	0x29
	.4byte	0x77
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x6
	.byte	0x2b
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x6
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x6
	.byte	0x2e
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x30
	.4byte	0x25
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0x2a
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0x2b
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x7
	.byte	0x2c
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x2e
	.4byte	0x85
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2f
	.4byte	0x90
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0x30
	.4byte	0x9b
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x7
	.byte	0x31
	.4byte	0xad
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12f
	.uleb128 0x7
	.4byte	0xcf
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x16b
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 -1
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF29
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF30
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x8
	.2byte	0x108
	.4byte	0x1a9
	.uleb128 0x9
	.4byte	.LASF36
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF37
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF38
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF39
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF40
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF41
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF42
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF43
	.sleb128 7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0x4
	.byte	0x2b
	.4byte	0x1ce
	.uleb128 0xc
	.ascii	"num\000"
	.byte	0x4
	.byte	0x2c
	.4byte	0x33
	.byte	0
	.uleb128 0xc
	.ascii	"den\000"
	.byte	0x4
	.byte	0x2d
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x4
	.byte	0x2e
	.4byte	0x1a9
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.4byte	0x24e
	.uleb128 0x9
	.4byte	.LASF45
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF46
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF47
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF48
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF49
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF50
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF51
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF52
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF53
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF54
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF55
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF56
	.sleb128 40
	.uleb128 0x9
	.4byte	.LASF57
	.sleb128 41
	.uleb128 0x9
	.4byte	.LASF58
	.sleb128 42
	.uleb128 0x9
	.4byte	.LASF59
	.sleb128 43
	.uleb128 0x9
	.4byte	.LASF60
	.sleb128 44
	.uleb128 0x9
	.4byte	.LASF61
	.sleb128 45
	.uleb128 0x9
	.4byte	.LASF62
	.sleb128 46
	.byte	0
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x9
	.byte	0x30
	.4byte	0x1d9
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x2c
	.byte	0x9
	.byte	0x43
	.4byte	0x2ea
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x9
	.byte	0x48
	.4byte	0x129
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x9
	.byte	0x4e
	.4byte	0x2f9
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x9
	.byte	0x55
	.4byte	0x37f
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x9
	.byte	0x5d
	.4byte	0x33
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x9
	.byte	0x63
	.4byte	0x33
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x9
	.byte	0x6c
	.4byte	0x33
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x9
	.byte	0x71
	.4byte	0x39e
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x9
	.byte	0x7b
	.4byte	0x3be
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x9
	.byte	0x82
	.4byte	0x24e
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x9
	.byte	0x88
	.4byte	0x3d3
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x9
	.byte	0x8e
	.4byte	0x438
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.4byte	0x129
	.4byte	0x2f9
	.uleb128 0x10
	.4byte	0xc6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ea
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x30
	.byte	0xa
	.byte	0xf5
	.4byte	0x37f
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xa
	.byte	0xf6
	.4byte	0x129
	.byte	0
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0xa
	.byte	0xfc
	.4byte	0x129
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x102
	.4byte	0x33
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0xa
	.2byte	0x103
	.4byte	0x7b3
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0xa
	.2byte	0x10e
	.4byte	0x84d
	.byte	0x10
	.uleb128 0x12
	.ascii	"min\000"
	.byte	0xa
	.2byte	0x10f
	.4byte	0x2c
	.byte	0x18
	.uleb128 0x12
	.ascii	"max\000"
	.byte	0xa
	.2byte	0x110
	.4byte	0x2c
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0xa
	.2byte	0x112
	.4byte	0x33
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0xa
	.2byte	0x12c
	.4byte	0x129
	.byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x385
	.uleb128 0x7
	.4byte	0x2ff
	.uleb128 0xf
	.4byte	0xc6
	.4byte	0x39e
	.uleb128 0x10
	.4byte	0xc6
	.uleb128 0x10
	.4byte	0xc6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38a
	.uleb128 0xf
	.4byte	0x3b3
	.4byte	0x3b3
	.uleb128 0x10
	.4byte	0x3b3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b9
	.uleb128 0x7
	.4byte	0x259
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a4
	.uleb128 0xf
	.4byte	0x24e
	.4byte	0x3d3
	.uleb128 0x10
	.4byte	0xc6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c4
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x3f7
	.uleb128 0x10
	.4byte	0x3f7
	.uleb128 0x10
	.4byte	0xc6
	.uleb128 0x10
	.4byte	0x129
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3fd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x403
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0xc
	.byte	0xa
	.2byte	0x149
	.4byte	0x438
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x168
	.4byte	0x8f9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0xa
	.2byte	0x16c
	.4byte	0x33
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x170
	.4byte	0x33
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d9
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x9
	.byte	0x8f
	.4byte	0x259
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x4
	.byte	0xb
	.2byte	0x178
	.4byte	0x49f
	.uleb128 0x9
	.4byte	.LASF89
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF90
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF91
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF92
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF93
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF94
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF95
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF96
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF97
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF98
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF99
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF100
	.sleb128 11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x4
	.byte	0xb
	.2byte	0x18b
	.4byte	0x51f
	.uleb128 0x9
	.4byte	.LASF102
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF103
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF104
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF105
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF106
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF107
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF108
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF109
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF110
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF111
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF112
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF113
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF114
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF115
	.sleb128 13
	.uleb128 0x9
	.4byte	.LASF116
	.sleb128 14
	.uleb128 0x9
	.4byte	.LASF117
	.sleb128 15
	.uleb128 0x9
	.4byte	.LASF118
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF119
	.sleb128 17
	.uleb128 0x9
	.4byte	.LASF120
	.sleb128 18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0x4
	.byte	0xb
	.2byte	0x1a4
	.4byte	0x575
	.uleb128 0x9
	.4byte	.LASF122
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF123
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF124
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF125
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF126
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF127
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF128
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF129
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF130
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF131
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF132
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF133
	.sleb128 11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0x4
	.byte	0xb
	.2byte	0x1b8
	.4byte	0x59b
	.uleb128 0x9
	.4byte	.LASF135
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF136
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF137
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF138
	.sleb128 3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0x4
	.byte	0xb
	.2byte	0x1ce
	.4byte	0x5d9
	.uleb128 0x9
	.4byte	.LASF140
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF141
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF142
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF143
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF144
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF145
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF146
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF147
	.sleb128 7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0xc
	.byte	0x57
	.4byte	0x5e4
	.uleb128 0x14
	.4byte	.LASF148
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0xd
	.byte	0x1f
	.4byte	0x5f4
	.uleb128 0x14
	.4byte	.LASF149
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x24
	.byte	0xe
	.byte	0x18
	.4byte	0x672
	.uleb128 0xe
	.4byte	.LASF151
	.byte	0xe
	.byte	0x26
	.4byte	0x69d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF152
	.byte	0xe
	.byte	0x36
	.4byte	0x6bd
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF153
	.byte	0xe
	.byte	0x45
	.4byte	0x6bd
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF154
	.byte	0xe
	.byte	0x54
	.4byte	0x6ee
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF155
	.byte	0xe
	.byte	0x67
	.4byte	0x713
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF156
	.byte	0xe
	.byte	0x79
	.4byte	0x713
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0xe
	.byte	0x8a
	.4byte	0x69d
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0xe
	.byte	0x94
	.4byte	0x72e
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xe
	.byte	0x9f
	.4byte	0x74d
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	0x68c
	.uleb128 0x10
	.4byte	0x68c
	.uleb128 0x10
	.4byte	0x692
	.uleb128 0x10
	.4byte	0x692
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x698
	.uleb128 0x7
	.4byte	0x3a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x672
	.uleb128 0x15
	.4byte	0x6bd
	.uleb128 0x10
	.4byte	0x68c
	.uleb128 0x10
	.4byte	0x692
	.uleb128 0x10
	.4byte	0x3a
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a3
	.uleb128 0x15
	.4byte	0x6dd
	.uleb128 0x10
	.4byte	0x6dd
	.uleb128 0x10
	.4byte	0x6e3
	.uleb128 0x10
	.4byte	0x2c
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e9
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6c3
	.uleb128 0x15
	.4byte	0x713
	.uleb128 0x10
	.4byte	0x68c
	.uleb128 0x10
	.4byte	0x692
	.uleb128 0x10
	.4byte	0x692
	.uleb128 0x10
	.4byte	0x692
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6f4
	.uleb128 0x15
	.4byte	0x72e
	.uleb128 0x10
	.4byte	0x68c
	.uleb128 0x10
	.4byte	0x68c
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x719
	.uleb128 0xf
	.4byte	0x3a
	.4byte	0x74d
	.uleb128 0x10
	.4byte	0x692
	.uleb128 0x10
	.4byte	0x692
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x734
	.uleb128 0x4
	.4byte	.LASF150
	.byte	0xe
	.byte	0xa0
	.4byte	0x5f9
	.uleb128 0x8
	.4byte	.LASF160
	.byte	0x4
	.byte	0xf
	.byte	0x3b
	.4byte	0x7b3
	.uleb128 0x9
	.4byte	.LASF161
	.sleb128 -1
	.uleb128 0x9
	.4byte	.LASF162
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF163
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF164
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF165
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF166
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF167
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF168
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF169
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF170
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF171
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF172
	.sleb128 10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF173
	.byte	0x4
	.byte	0xa
	.byte	0xdd
	.4byte	0x84d
	.uleb128 0x9
	.4byte	.LASF174
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF175
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF176
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF177
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF178
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF179
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF180
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF181
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF182
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF183
	.sleb128 128
	.uleb128 0x9
	.4byte	.LASF184
	.sleb128 1397316165
	.uleb128 0x9
	.4byte	.LASF185
	.sleb128 1346784596
	.uleb128 0x9
	.4byte	.LASF186
	.sleb128 1397116244
	.uleb128 0x9
	.4byte	.LASF187
	.sleb128 1448231252
	.uleb128 0x9
	.4byte	.LASF188
	.sleb128 1146442272
	.uleb128 0x9
	.4byte	.LASF189
	.sleb128 1129270354
	.uleb128 0x9
	.4byte	.LASF190
	.sleb128 1128811585
	.uleb128 0x9
	.4byte	.LASF191
	.sleb128 1112493900
	.byte	0
	.uleb128 0x16
	.byte	0x8
	.byte	0xa
	.2byte	0x108
	.4byte	0x885
	.uleb128 0x17
	.ascii	"i64\000"
	.byte	0xa
	.2byte	0x109
	.4byte	0x10d
	.uleb128 0x17
	.ascii	"dbl\000"
	.byte	0xa
	.2byte	0x10a
	.4byte	0x2c
	.uleb128 0x17
	.ascii	"str\000"
	.byte	0xa
	.2byte	0x10b
	.4byte	0x129
	.uleb128 0x17
	.ascii	"q\000"
	.byte	0xa
	.2byte	0x10d
	.4byte	0x1ce
	.byte	0
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0xa
	.2byte	0x12d
	.4byte	0x2ff
	.uleb128 0x13
	.4byte	.LASF192
	.byte	0x30
	.byte	0xa
	.2byte	0x132
	.4byte	0x8ed
	.uleb128 0x12
	.ascii	"str\000"
	.byte	0xa
	.2byte	0x133
	.4byte	0x129
	.byte	0
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0xa
	.2byte	0x139
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF194
	.byte	0xa
	.2byte	0x139
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF195
	.byte	0xa
	.2byte	0x13e
	.4byte	0x2c
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF196
	.byte	0xa
	.2byte	0x13e
	.4byte	0x2c
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF197
	.byte	0xa
	.2byte	0x143
	.4byte	0x33
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.4byte	.LASF192
	.byte	0xa
	.2byte	0x144
	.4byte	0x891
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ff
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ed
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0x10
	.byte	0x10
	.byte	0x1e
	.4byte	0x942
	.uleb128 0xe
	.4byte	.LASF199
	.byte	0x10
	.byte	0x23
	.4byte	0xf7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF200
	.byte	0x10
	.byte	0x28
	.4byte	0x102
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF201
	.byte	0x10
	.byte	0x2c
	.4byte	0xf7
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF202
	.byte	0x10
	.byte	0x30
	.4byte	0x102
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF198
	.byte	0x10
	.byte	0x31
	.4byte	0x905
	.uleb128 0x4
	.4byte	.LASF203
	.byte	0x11
	.byte	0x49
	.4byte	0x958
	.uleb128 0x14
	.4byte	.LASF203
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0xc
	.byte	0x11
	.byte	0x51
	.4byte	0x98e
	.uleb128 0xe
	.4byte	.LASF205
	.byte	0x11
	.byte	0x52
	.4byte	0x98e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF206
	.byte	0x11
	.byte	0x59
	.4byte	0x994
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF207
	.byte	0x11
	.byte	0x5d
	.4byte	0x33
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x94d
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe1
	.uleb128 0x4
	.4byte	.LASF204
	.byte	0x11
	.byte	0x5e
	.4byte	0x95d
	.uleb128 0x8
	.4byte	.LASF208
	.byte	0x4
	.byte	0x12
	.byte	0x30
	.4byte	0xa00
	.uleb128 0x9
	.4byte	.LASF209
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF210
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF211
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF212
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF213
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF214
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF215
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF216
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF217
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF218
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF219
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF220
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF221
	.sleb128 12
	.byte	0
	.uleb128 0xb
	.4byte	.LASF222
	.byte	0x14
	.byte	0x12
	.byte	0x90
	.4byte	0xa49
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x12
	.byte	0x91
	.4byte	0x9a5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF206
	.byte	0x12
	.byte	0x92
	.4byte	0x994
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF207
	.byte	0x12
	.byte	0x93
	.4byte	0x33
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF223
	.byte	0x12
	.byte	0x94
	.4byte	0xa49
	.byte	0xc
	.uleb128 0xc
	.ascii	"buf\000"
	.byte	0x12
	.byte	0x95
	.4byte	0xa4f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x99a
	.uleb128 0x4
	.4byte	.LASF222
	.byte	0x12
	.byte	0x96
	.4byte	0xa00
	.uleb128 0x19
	.4byte	.LASF224
	.2byte	0x178
	.byte	0x12
	.byte	0xb5
	.4byte	0xcdd
	.uleb128 0xe
	.4byte	.LASF206
	.byte	0x12
	.byte	0xc0
	.4byte	0xcdd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF225
	.byte	0x12
	.byte	0xd1
	.4byte	0xced
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF226
	.byte	0x12
	.byte	0xe1
	.4byte	0xcfd
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF227
	.byte	0x12
	.byte	0xe6
	.4byte	0x33
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF228
	.byte	0x12
	.byte	0xe6
	.4byte	0x33
	.byte	0x48
	.uleb128 0xe
	.4byte	.LASF229
	.byte	0x12
	.byte	0xeb
	.4byte	0x33
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF230
	.byte	0x12
	.byte	0xf2
	.4byte	0x33
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF231
	.byte	0x12
	.byte	0xf7
	.4byte	0x33
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF232
	.byte	0x12
	.byte	0xfc
	.4byte	0x16b
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF233
	.byte	0x12
	.2byte	0x101
	.4byte	0x1ce
	.byte	0x5c
	.uleb128 0x12
	.ascii	"pts\000"
	.byte	0x12
	.2byte	0x106
	.4byte	0x10d
	.byte	0x68
	.uleb128 0x11
	.4byte	.LASF234
	.byte	0x12
	.2byte	0x10b
	.4byte	0x10d
	.byte	0x70
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0x12
	.2byte	0x112
	.4byte	0x10d
	.byte	0x78
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0x12
	.2byte	0x117
	.4byte	0x33
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0x12
	.2byte	0x11b
	.4byte	0x33
	.byte	0x84
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0x12
	.2byte	0x120
	.4byte	0x33
	.byte	0x88
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0x12
	.2byte	0x125
	.4byte	0xc6
	.byte	0x8c
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0x12
	.2byte	0x12c
	.4byte	0xd03
	.byte	0x90
	.uleb128 0x11
	.4byte	.LASF241
	.byte	0x12
	.2byte	0x133
	.4byte	0x33
	.byte	0xd0
	.uleb128 0x11
	.4byte	.LASF242
	.byte	0x12
	.2byte	0x138
	.4byte	0x33
	.byte	0xd4
	.uleb128 0x11
	.4byte	.LASF243
	.byte	0x12
	.2byte	0x13d
	.4byte	0x33
	.byte	0xd8
	.uleb128 0x11
	.4byte	.LASF244
	.byte	0x12
	.2byte	0x142
	.4byte	0x33
	.byte	0xdc
	.uleb128 0x11
	.4byte	.LASF245
	.byte	0x12
	.2byte	0x14d
	.4byte	0x10d
	.byte	0xe0
	.uleb128 0x11
	.4byte	.LASF246
	.byte	0x12
	.2byte	0x152
	.4byte	0x33
	.byte	0xe8
	.uleb128 0x11
	.4byte	.LASF247
	.byte	0x12
	.2byte	0x157
	.4byte	0x118
	.byte	0xf0
	.uleb128 0x12
	.ascii	"buf\000"
	.byte	0x12
	.2byte	0x165
	.4byte	0xd13
	.byte	0xf8
	.uleb128 0x1a
	.4byte	.LASF248
	.byte	0x12
	.2byte	0x173
	.4byte	0xd23
	.2byte	0x118
	.uleb128 0x1a
	.4byte	.LASF249
	.byte	0x12
	.2byte	0x177
	.4byte	0x33
	.2byte	0x11c
	.uleb128 0x1a
	.4byte	.LASF250
	.byte	0x12
	.2byte	0x179
	.4byte	0xd29
	.2byte	0x120
	.uleb128 0x1a
	.4byte	.LASF251
	.byte	0x12
	.2byte	0x17a
	.4byte	0x33
	.2byte	0x124
	.uleb128 0x1a
	.4byte	.LASF82
	.byte	0x12
	.2byte	0x18e
	.4byte	0x33
	.2byte	0x128
	.uleb128 0x1a
	.4byte	.LASF252
	.byte	0x12
	.2byte	0x197
	.4byte	0x575
	.2byte	0x12c
	.uleb128 0x1a
	.4byte	.LASF253
	.byte	0x12
	.2byte	0x199
	.4byte	0x449
	.2byte	0x130
	.uleb128 0x1a
	.4byte	.LASF254
	.byte	0x12
	.2byte	0x19b
	.4byte	0x49f
	.2byte	0x134
	.uleb128 0x1a
	.4byte	.LASF255
	.byte	0x12
	.2byte	0x1a4
	.4byte	0x51f
	.2byte	0x138
	.uleb128 0x1a
	.4byte	.LASF256
	.byte	0x12
	.2byte	0x1a6
	.4byte	0x59b
	.2byte	0x13c
	.uleb128 0x1a
	.4byte	.LASF257
	.byte	0x12
	.2byte	0x1af
	.4byte	0x10d
	.2byte	0x140
	.uleb128 0x1a
	.4byte	.LASF258
	.byte	0x12
	.2byte	0x1b8
	.4byte	0x10d
	.2byte	0x148
	.uleb128 0x1a
	.4byte	.LASF259
	.byte	0x12
	.2byte	0x1c2
	.4byte	0x10d
	.2byte	0x150
	.uleb128 0x1a
	.4byte	.LASF223
	.byte	0x12
	.2byte	0x1cb
	.4byte	0xa49
	.2byte	0x158
	.uleb128 0x1a
	.4byte	.LASF260
	.byte	0x12
	.2byte	0x1d6
	.4byte	0x33
	.2byte	0x15c
	.uleb128 0x1a
	.4byte	.LASF261
	.byte	0x12
	.2byte	0x1e1
	.4byte	0x33
	.2byte	0x160
	.uleb128 0x1a
	.4byte	.LASF262
	.byte	0x12
	.2byte	0x1eb
	.4byte	0x33
	.2byte	0x164
	.uleb128 0x1a
	.4byte	.LASF263
	.byte	0x12
	.2byte	0x1f3
	.4byte	0xd35
	.2byte	0x168
	.uleb128 0x1a
	.4byte	.LASF264
	.byte	0x12
	.2byte	0x1f9
	.4byte	0x33
	.2byte	0x16c
	.uleb128 0x1a
	.4byte	.LASF265
	.byte	0x12
	.2byte	0x1fc
	.4byte	0x33
	.2byte	0x170
	.uleb128 0x1a
	.4byte	.LASF266
	.byte	0x12
	.2byte	0x201
	.4byte	0xa4f
	.2byte	0x174
	.byte	0
	.uleb128 0x1b
	.4byte	0x994
	.4byte	0xced
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.4byte	0x33
	.4byte	0xcfd
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x994
	.uleb128 0x1b
	.4byte	0x118
	.4byte	0xd13
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.4byte	0xa4f
	.4byte	0xd23
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa4f
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd2f
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa55
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x18
	.4byte	.LASF224
	.byte	0x12
	.2byte	0x203
	.4byte	0xa60
	.uleb128 0x4
	.4byte	.LASF267
	.byte	0x13
	.byte	0x40
	.4byte	0xd52
	.uleb128 0x13
	.4byte	.LASF267
	.byte	0x48
	.byte	0x13
	.2byte	0x130
	.4byte	0xe4a
	.uleb128 0x11
	.4byte	.LASF268
	.byte	0x13
	.2byte	0x131
	.4byte	0x11d0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF269
	.byte	0x13
	.2byte	0x133
	.4byte	0x12a6
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x13
	.2byte	0x135
	.4byte	0x123
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF270
	.byte	0x13
	.2byte	0x137
	.4byte	0x12b1
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF271
	.byte	0x13
	.2byte	0x138
	.4byte	0x12b7
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF272
	.byte	0x13
	.2byte	0x139
	.4byte	0x41
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF273
	.byte	0x13
	.2byte	0x13b
	.4byte	0x12b1
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF274
	.byte	0x13
	.2byte	0x13c
	.4byte	0x12b7
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF275
	.byte	0x13
	.2byte	0x13d
	.4byte	0x41
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF276
	.byte	0x13
	.2byte	0x13f
	.4byte	0xc6
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF277
	.byte	0x13
	.2byte	0x141
	.4byte	0x1387
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF278
	.byte	0x13
	.2byte	0x153
	.4byte	0x33
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF279
	.byte	0x13
	.2byte	0x158
	.4byte	0x138d
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF280
	.byte	0x13
	.2byte	0x15a
	.4byte	0x13dc
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF281
	.byte	0x13
	.2byte	0x15c
	.4byte	0x123
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF282
	.byte	0x13
	.2byte	0x15d
	.4byte	0xc6
	.byte	0x3c
	.uleb128 0x11
	.4byte	.LASF283
	.byte	0x13
	.2byte	0x15e
	.4byte	0x6dd
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF284
	.byte	0x13
	.2byte	0x15f
	.4byte	0x33
	.byte	0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LASF285
	.byte	0x13
	.byte	0x41
	.4byte	0xe55
	.uleb128 0x13
	.4byte	.LASF285
	.byte	0xb8
	.byte	0x13
	.2byte	0x169
	.4byte	0x1033
	.uleb128 0x12
	.ascii	"src\000"
	.byte	0x13
	.2byte	0x16a
	.4byte	0x11ea
	.byte	0
	.uleb128 0x11
	.4byte	.LASF286
	.byte	0x13
	.2byte	0x16b
	.4byte	0x12b1
	.byte	0x4
	.uleb128 0x12
	.ascii	"dst\000"
	.byte	0x13
	.2byte	0x16d
	.4byte	0x11ea
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF287
	.byte	0x13
	.2byte	0x16e
	.4byte	0x12b1
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x13
	.2byte	0x170
	.4byte	0x134
	.byte	0x10
	.uleb128 0x12
	.ascii	"w\000"
	.byte	0x13
	.2byte	0x173
	.4byte	0x33
	.byte	0x14
	.uleb128 0x12
	.ascii	"h\000"
	.byte	0x13
	.2byte	0x174
	.4byte	0x33
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF233
	.byte	0x13
	.2byte	0x175
	.4byte	0x1ce
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF247
	.byte	0x13
	.2byte	0x177
	.4byte	0x118
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF246
	.byte	0x13
	.2byte	0x178
	.4byte	0x33
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF230
	.byte	0x13
	.2byte	0x17a
	.4byte	0x33
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF288
	.byte	0x13
	.2byte	0x183
	.4byte	0x1ce
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF289
	.byte	0x13
	.2byte	0x193
	.4byte	0x13fe
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF290
	.byte	0x13
	.2byte	0x194
	.4byte	0x13fe
	.byte	0x44
	.uleb128 0x11
	.4byte	.LASF291
	.byte	0x13
	.2byte	0x19a
	.4byte	0x13fe
	.byte	0x48
	.uleb128 0x11
	.4byte	.LASF292
	.byte	0x13
	.2byte	0x19b
	.4byte	0x13fe
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF293
	.byte	0x13
	.2byte	0x19c
	.4byte	0x1459
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF294
	.byte	0x13
	.2byte	0x19d
	.4byte	0x1459
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0x13
	.2byte	0x1a6
	.4byte	0x33
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF296
	.byte	0x13
	.2byte	0x1ad
	.4byte	0x13e2
	.byte	0x5c
	.uleb128 0x11
	.4byte	.LASF277
	.byte	0x13
	.2byte	0x1b2
	.4byte	0x1387
	.byte	0x60
	.uleb128 0x11
	.4byte	.LASF297
	.byte	0x13
	.2byte	0x1b8
	.4byte	0x10d
	.byte	0x68
	.uleb128 0x11
	.4byte	.LASF298
	.byte	0x13
	.2byte	0x1be
	.4byte	0x10d
	.byte	0x70
	.uleb128 0x11
	.4byte	.LASF299
	.byte	0x13
	.2byte	0x1c3
	.4byte	0x33
	.byte	0x78
	.uleb128 0x11
	.4byte	.LASF300
	.byte	0x13
	.2byte	0x1d0
	.4byte	0x1ce
	.byte	0x7c
	.uleb128 0x11
	.4byte	.LASF301
	.byte	0x13
	.2byte	0x1d5
	.4byte	0x145f
	.byte	0x84
	.uleb128 0x11
	.4byte	.LASF302
	.byte	0x13
	.2byte	0x1db
	.4byte	0x33
	.byte	0x88
	.uleb128 0x11
	.4byte	.LASF303
	.byte	0x13
	.2byte	0x1e4
	.4byte	0x33
	.byte	0x8c
	.uleb128 0x11
	.4byte	.LASF304
	.byte	0x13
	.2byte	0x1ea
	.4byte	0x33
	.byte	0x90
	.uleb128 0x11
	.4byte	.LASF305
	.byte	0x13
	.2byte	0x1f6
	.4byte	0x33
	.byte	0x94
	.uleb128 0x11
	.4byte	.LASF261
	.byte	0x13
	.2byte	0x1fb
	.4byte	0x33
	.byte	0x98
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x13
	.2byte	0x200
	.4byte	0x41
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF306
	.byte	0x13
	.2byte	0x205
	.4byte	0x10d
	.byte	0xa0
	.uleb128 0x11
	.4byte	.LASF307
	.byte	0x13
	.2byte	0x20a
	.4byte	0xc6
	.byte	0xa8
	.uleb128 0x11
	.4byte	.LASF308
	.byte	0x13
	.2byte	0x211
	.4byte	0x33
	.byte	0xac
	.uleb128 0x11
	.4byte	.LASF309
	.byte	0x13
	.2byte	0x218
	.4byte	0x33
	.byte	0xb0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF310
	.byte	0x13
	.byte	0x42
	.4byte	0x103e
	.uleb128 0xb
	.4byte	.LASF310
	.byte	0x28
	.byte	0x14
	.byte	0x35
	.4byte	0x10c3
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x14
	.byte	0x3b
	.4byte	0x129
	.byte	0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x14
	.byte	0x40
	.4byte	0x134
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF311
	.byte	0x14
	.byte	0x48
	.4byte	0x1581
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF312
	.byte	0x14
	.byte	0x50
	.4byte	0x159b
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF313
	.byte	0x14
	.byte	0x5c
	.4byte	0x15b5
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF314
	.byte	0x14
	.byte	0x67
	.4byte	0x15ca
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF315
	.byte	0x14
	.byte	0x70
	.4byte	0x15ca
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF316
	.byte	0x14
	.byte	0x80
	.4byte	0x15ca
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF317
	.byte	0x14
	.byte	0x88
	.4byte	0x33
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF318
	.byte	0x14
	.byte	0x90
	.4byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF319
	.byte	0x13
	.byte	0x43
	.4byte	0x10ce
	.uleb128 0xb
	.4byte	.LASF319
	.byte	0x10
	.byte	0x15
	.byte	0x40
	.4byte	0x110b
	.uleb128 0xe
	.4byte	.LASF320
	.byte	0x15
	.byte	0x41
	.4byte	0x41
	.byte	0
	.uleb128 0xe
	.4byte	.LASF321
	.byte	0x15
	.byte	0x42
	.4byte	0x14f5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF322
	.byte	0x15
	.byte	0x44
	.4byte	0x41
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF323
	.byte	0x15
	.byte	0x45
	.4byte	0x150d
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF324
	.byte	0x38
	.byte	0x13
	.byte	0x8d
	.4byte	0x11c5
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x13
	.byte	0x91
	.4byte	0x129
	.byte	0
	.uleb128 0xe
	.4byte	.LASF325
	.byte	0x13
	.byte	0x98
	.4byte	0x129
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF271
	.byte	0x13
	.byte	0xa1
	.4byte	0x11c5
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF274
	.byte	0x13
	.byte	0xa9
	.4byte	0x11c5
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF326
	.byte	0x13
	.byte	0xb3
	.4byte	0x11d0
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x13
	.byte	0xb8
	.4byte	0x33
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF327
	.byte	0x13
	.byte	0xd7
	.4byte	0x11f0
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF328
	.byte	0x13
	.byte	0xe4
	.4byte	0x1210
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF329
	.byte	0x13
	.byte	0xf0
	.4byte	0x1221
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF330
	.byte	0x13
	.2byte	0x108
	.4byte	0x11f0
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF331
	.byte	0x13
	.2byte	0x10a
	.4byte	0x33
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF332
	.byte	0x13
	.2byte	0x110
	.4byte	0x1227
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF333
	.byte	0x13
	.2byte	0x11e
	.4byte	0x1255
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF334
	.byte	0x13
	.2byte	0x125
	.4byte	0x126f
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11cb
	.uleb128 0x7
	.4byte	0x1033
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11d6
	.uleb128 0x7
	.4byte	0x43e
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x11ea
	.uleb128 0x10
	.4byte	0x11ea
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd47
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11db
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x120a
	.uleb128 0x10
	.4byte	0x11ea
	.uleb128 0x10
	.4byte	0x120a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa49
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11f6
	.uleb128 0x15
	.4byte	0x1221
	.uleb128 0x10
	.4byte	0x11ea
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1216
	.uleb128 0x6
	.byte	0x4
	.4byte	0x110b
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x1255
	.uleb128 0x10
	.4byte	0x11ea
	.uleb128 0x10
	.4byte	0x129
	.uleb128 0x10
	.4byte	0x129
	.uleb128 0x10
	.4byte	0x123
	.uleb128 0x10
	.4byte	0x33
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x122d
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x126f
	.uleb128 0x10
	.4byte	0x11ea
	.uleb128 0x10
	.4byte	0xc6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x125b
	.uleb128 0x18
	.4byte	.LASF324
	.byte	0x13
	.2byte	0x126
	.4byte	0x110b
	.uleb128 0x18
	.4byte	.LASF335
	.byte	0x13
	.2byte	0x12d
	.4byte	0x128d
	.uleb128 0xb
	.4byte	.LASF335
	.byte	0x4
	.byte	0x14
	.byte	0x98
	.4byte	0x12a6
	.uleb128 0xe
	.4byte	.LASF336
	.byte	0x14
	.byte	0x99
	.4byte	0x1507
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12ac
	.uleb128 0x7
	.4byte	0x1275
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1033
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12bd
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4a
	.uleb128 0x13
	.4byte	.LASF337
	.byte	0x38
	.byte	0x13
	.2byte	0x2f9
	.4byte	0x1387
	.uleb128 0x11
	.4byte	.LASF268
	.byte	0x13
	.2byte	0x2fa
	.4byte	0x11d0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF338
	.byte	0x13
	.2byte	0x2fb
	.4byte	0x14fb
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF339
	.byte	0x13
	.2byte	0x2fc
	.4byte	0x41
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF340
	.byte	0x13
	.2byte	0x2fe
	.4byte	0x123
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF341
	.byte	0x13
	.2byte	0x2ff
	.4byte	0x123
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF278
	.byte	0x13
	.2byte	0x30d
	.4byte	0x33
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF342
	.byte	0x13
	.2byte	0x314
	.4byte	0x33
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF279
	.byte	0x13
	.2byte	0x319
	.4byte	0x1501
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0x13
	.2byte	0x320
	.4byte	0xc6
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF336
	.byte	0x13
	.2byte	0x32e
	.4byte	0x1507
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF343
	.byte	0x13
	.2byte	0x330
	.4byte	0x123
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF344
	.byte	0x13
	.2byte	0x339
	.4byte	0x12b7
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF345
	.byte	0x13
	.2byte	0x33a
	.4byte	0x33
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF346
	.byte	0x13
	.2byte	0x33c
	.4byte	0x41
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1281
	.uleb128 0xb
	.4byte	.LASF347
	.byte	0x18
	.byte	0x14
	.byte	0x25
	.4byte	0x13dc
	.uleb128 0xe
	.4byte	.LASF348
	.byte	0x14
	.byte	0x26
	.4byte	0x2c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF349
	.byte	0x14
	.byte	0x27
	.4byte	0x123
	.byte	0x8
	.uleb128 0xc
	.ascii	"arg\000"
	.byte	0x14
	.byte	0x28
	.4byte	0x123
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x14
	.byte	0x29
	.4byte	0x33
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF332
	.byte	0x14
	.byte	0x2a
	.4byte	0x13dc
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1393
	.uleb128 0x1d
	.byte	0x4
	.byte	0x13
	.2byte	0x1a9
	.4byte	0x13fe
	.uleb128 0x9
	.4byte	.LASF350
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF351
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF352
	.sleb128 2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10c3
	.uleb128 0xb
	.4byte	.LASF353
	.byte	0x14
	.byte	0x15
	.byte	0x55
	.4byte	0x1459
	.uleb128 0xe
	.4byte	.LASF354
	.byte	0x15
	.byte	0x56
	.4byte	0x151f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF355
	.byte	0x15
	.byte	0x57
	.4byte	0x33
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF356
	.byte	0x15
	.byte	0x58
	.4byte	0xcf
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF357
	.byte	0x15
	.byte	0x59
	.4byte	0xcf
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF322
	.byte	0x15
	.byte	0x5b
	.4byte	0x41
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF323
	.byte	0x15
	.byte	0x5c
	.4byte	0x1525
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1404
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3b
	.uleb128 0x18
	.4byte	.LASF358
	.byte	0x13
	.2byte	0x2da
	.4byte	0x1471
	.uleb128 0xb
	.4byte	.LASF358
	.byte	0x8
	.byte	0x14
	.byte	0x93
	.4byte	0x1496
	.uleb128 0xe
	.4byte	.LASF359
	.byte	0x14
	.byte	0x94
	.4byte	0xc6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF360
	.byte	0x14
	.byte	0x95
	.4byte	0x1507
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF361
	.byte	0x13
	.2byte	0x2e8
	.4byte	0x14a2
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x14c0
	.uleb128 0x10
	.4byte	0x11ea
	.uleb128 0x10
	.4byte	0xc6
	.uleb128 0x10
	.4byte	0x33
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x18
	.4byte	.LASF362
	.byte	0x13
	.2byte	0x2f6
	.4byte	0x14cc
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x14ef
	.uleb128 0x10
	.4byte	0x11ea
	.uleb128 0x10
	.4byte	0x14ef
	.uleb128 0x10
	.4byte	0xc6
	.uleb128 0x10
	.4byte	0x14f5
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1496
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11ea
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1465
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14c0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1513
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1519
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10ce
	.uleb128 0x6
	.byte	0x4
	.4byte	0x118
	.uleb128 0x6
	.byte	0x4
	.4byte	0x152b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1459
	.uleb128 0x4
	.4byte	.LASF353
	.byte	0x15
	.byte	0x5d
	.4byte	0x1404
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1542
	.uleb128 0x7
	.4byte	0x129
	.uleb128 0x6
	.byte	0x4
	.4byte	0x154d
	.uleb128 0x7
	.4byte	0xd3b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1558
	.uleb128 0x7
	.4byte	0x33
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1563
	.uleb128 0x7
	.4byte	0xe1
	.uleb128 0xf
	.4byte	0x145f
	.4byte	0x1581
	.uleb128 0x10
	.4byte	0x12bd
	.uleb128 0x10
	.4byte	0x33
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1568
	.uleb128 0xf
	.4byte	0x145f
	.4byte	0x159b
	.uleb128 0x10
	.4byte	0x12bd
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1587
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x15b5
	.uleb128 0x10
	.4byte	0x12bd
	.uleb128 0x10
	.4byte	0x145f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15a1
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x15ca
	.uleb128 0x10
	.4byte	0x12bd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15bb
	.uleb128 0x8
	.4byte	.LASF363
	.byte	0x4
	.byte	0x16
	.byte	0x21
	.4byte	0x15ef
	.uleb128 0x9
	.4byte	.LASF364
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF365
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF366
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF367
	.byte	0x4
	.byte	0x16
	.byte	0x27
	.4byte	0x160e
	.uleb128 0x9
	.4byte	.LASF368
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF369
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF370
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF371
	.byte	0x4
	.byte	0x16
	.byte	0x2d
	.4byte	0x1669
	.uleb128 0x9
	.4byte	.LASF372
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF373
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF374
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF375
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF376
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF377
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF378
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF379
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF380
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF381
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF382
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF383
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF384
	.sleb128 12
	.byte	0
	.uleb128 0x8
	.4byte	.LASF385
	.byte	0x4
	.byte	0x16
	.byte	0x3d
	.4byte	0x168e
	.uleb128 0x9
	.4byte	.LASF386
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF387
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF388
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF389
	.sleb128 3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF390
	.byte	0xb0
	.byte	0x16
	.byte	0x44
	.4byte	0x1767
	.uleb128 0xe
	.4byte	.LASF391
	.byte	0x16
	.byte	0x45
	.4byte	0x11d0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF392
	.byte	0x16
	.byte	0x46
	.4byte	0x1767
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF393
	.byte	0x16
	.byte	0x47
	.4byte	0x33
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF394
	.byte	0x16
	.byte	0x48
	.4byte	0x33
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF395
	.byte	0x16
	.byte	0x49
	.4byte	0x129
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF396
	.byte	0x16
	.byte	0x4a
	.4byte	0x176d
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF283
	.byte	0x16
	.byte	0x4b
	.4byte	0x1773
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF397
	.byte	0x16
	.byte	0x4d
	.4byte	0x33
	.byte	0x78
	.uleb128 0xe
	.4byte	.LASF398
	.byte	0x16
	.byte	0x4e
	.4byte	0x2c
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF399
	.byte	0x16
	.byte	0x4f
	.4byte	0x33
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF400
	.byte	0x16
	.byte	0x50
	.4byte	0x2c
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF401
	.byte	0x16
	.byte	0x51
	.4byte	0x33
	.byte	0x98
	.uleb128 0xe
	.4byte	.LASF261
	.byte	0x16
	.byte	0x52
	.4byte	0x33
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF402
	.byte	0x16
	.byte	0x53
	.4byte	0x33
	.byte	0xa0
	.uleb128 0xe
	.4byte	.LASF403
	.byte	0x16
	.byte	0x54
	.4byte	0x75e
	.byte	0xa4
	.uleb128 0xe
	.4byte	.LASF404
	.byte	0x16
	.byte	0x56
	.4byte	0x179d
	.byte	0xa8
	.uleb128 0xe
	.4byte	.LASF405
	.byte	0x16
	.byte	0x58
	.4byte	0x33
	.byte	0xac
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x753
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e9
	.uleb128 0x1b
	.4byte	0x2c
	.4byte	0x1783
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0xb
	.byte	0
	.uleb128 0x15
	.4byte	0x179d
	.uleb128 0x10
	.4byte	0x994
	.uleb128 0x10
	.4byte	0x155d
	.uleb128 0x10
	.4byte	0x33
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1783
	.uleb128 0x4
	.4byte	.LASF390
	.byte	0x16
	.byte	0x59
	.4byte	0x168e
	.uleb128 0x1e
	.4byte	.LASF406
	.byte	0x2
	.byte	0x9f
	.4byte	0xe1
	.byte	0x3
	.4byte	0x17c8
	.uleb128 0x1f
	.ascii	"a\000"
	.byte	0x2
	.byte	0x9f
	.4byte	0x33
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF407
	.byte	0x2
	.byte	0xc0
	.4byte	0xec
	.byte	0x3
	.4byte	0x17e2
	.uleb128 0x1f
	.ascii	"a\000"
	.byte	0x2
	.byte	0xc0
	.4byte	0x33
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF408
	.byte	0x3
	.byte	0x66
	.4byte	0xf7
	.byte	0x3
	.4byte	0x180e
	.uleb128 0x1f
	.ascii	"a\000"
	.byte	0x3
	.byte	0x66
	.4byte	0x10d
	.uleb128 0x20
	.ascii	"x\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x33
	.uleb128 0x20
	.ascii	"y\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x33
	.byte	0
	.uleb128 0x21
	.4byte	.LASF471
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.4byte	0x1826
	.uleb128 0x1f
	.ascii	"vol\000"
	.byte	0x1
	.byte	0xe0
	.4byte	0x1826
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17a3
	.uleb128 0x1e
	.4byte	.LASF330
	.byte	0x1
	.byte	0x82
	.4byte	0x33
	.byte	0x1
	.4byte	0x18d4
	.uleb128 0x1f
	.ascii	"ctx\000"
	.byte	0x1
	.byte	0x82
	.4byte	0x11ea
	.uleb128 0x20
	.ascii	"vol\000"
	.byte	0x1
	.byte	0x84
	.4byte	0x1826
	.uleb128 0x22
	.4byte	.LASF321
	.byte	0x1
	.byte	0x85
	.4byte	0x13fe
	.uleb128 0x22
	.4byte	.LASF409
	.byte	0x1
	.byte	0x86
	.4byte	0x18d4
	.uleb128 0x23
	.4byte	.LASF412
	.byte	0x1
	.byte	0x87
	.4byte	0x18f0
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x9c
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1531
	.uleb128 0x1b
	.4byte	0x75e
	.4byte	0x18f0
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0x2
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	0x18da
	.uleb128 0x1e
	.4byte	.LASF410
	.byte	0x4
	.byte	0x50
	.4byte	0x2c
	.byte	0x3
	.4byte	0x190f
	.uleb128 0x1f
	.ascii	"a\000"
	.byte	0x4
	.byte	0x50
	.4byte	0x1ce
	.byte	0
	.uleb128 0x24
	.4byte	.LASF411
	.byte	0x5
	.2byte	0x132
	.4byte	0x2c
	.byte	0x3
	.4byte	0x192b
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x5
	.2byte	0x132
	.4byte	0x2c
	.byte	0
	.uleb128 0x26
	.4byte	.LASF413
	.byte	0x1
	.byte	0xb2
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a3
	.uleb128 0x27
	.ascii	"dst\000"
	.byte	0x1
	.byte	0xb2
	.4byte	0x994
	.4byte	.LLST0
	.uleb128 0x27
	.ascii	"src\000"
	.byte	0x1
	.byte	0xb2
	.4byte	0x155d
	.4byte	.LLST1
	.uleb128 0x28
	.4byte	.LASF229
	.byte	0x1
	.byte	0xb3
	.4byte	0x33
	.4byte	.LLST2
	.uleb128 0x28
	.4byte	.LASF400
	.byte	0x1
	.byte	0xb3
	.4byte	0x33
	.4byte	.LLST3
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb5
	.4byte	0x33
	.4byte	.LLST4
	.uleb128 0x2a
	.4byte	0x17ae
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0xb7
	.uleb128 0x2b
	.4byte	0x17be
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF414
	.byte	0x1
	.byte	0xba
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a19
	.uleb128 0x27
	.ascii	"dst\000"
	.byte	0x1
	.byte	0xba
	.4byte	0x994
	.4byte	.LLST6
	.uleb128 0x27
	.ascii	"src\000"
	.byte	0x1
	.byte	0xba
	.4byte	0x155d
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	.LASF229
	.byte	0x1
	.byte	0xbb
	.4byte	0x33
	.4byte	.LLST8
	.uleb128 0x2c
	.4byte	.LASF400
	.byte	0x1
	.byte	0xbb
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0xbd
	.4byte	0x33
	.4byte	.LLST9
	.uleb128 0x2a
	.4byte	0x17ae
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0xbf
	.uleb128 0x2b
	.4byte	0x17be
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF415
	.byte	0x1
	.byte	0xc2
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aad
	.uleb128 0x27
	.ascii	"dst\000"
	.byte	0x1
	.byte	0xc2
	.4byte	0x994
	.4byte	.LLST11
	.uleb128 0x27
	.ascii	"src\000"
	.byte	0x1
	.byte	0xc2
	.4byte	0x155d
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	.LASF229
	.byte	0x1
	.byte	0xc3
	.4byte	0x33
	.4byte	.LLST13
	.uleb128 0x2c
	.4byte	.LASF400
	.byte	0x1
	.byte	0xc3
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0xc5
	.4byte	0x33
	.4byte	.LLST14
	.uleb128 0x2d
	.4byte	.LASF416
	.byte	0x1
	.byte	0xc6
	.4byte	0x1aad
	.4byte	.LLST15
	.uleb128 0x2d
	.4byte	.LASF417
	.byte	0x1
	.byte	0xc7
	.4byte	0x1ab3
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	0x17c8
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0xc9
	.uleb128 0x2b
	.4byte	0x17d8
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xec
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ab9
	.uleb128 0x7
	.4byte	0xec
	.uleb128 0x26
	.4byte	.LASF418
	.byte	0x1
	.byte	0xcc
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b52
	.uleb128 0x27
	.ascii	"dst\000"
	.byte	0x1
	.byte	0xcc
	.4byte	0x994
	.4byte	.LLST18
	.uleb128 0x27
	.ascii	"src\000"
	.byte	0x1
	.byte	0xcc
	.4byte	0x155d
	.4byte	.LLST19
	.uleb128 0x28
	.4byte	.LASF229
	.byte	0x1
	.byte	0xcd
	.4byte	0x33
	.4byte	.LLST20
	.uleb128 0x2c
	.4byte	.LASF400
	.byte	0x1
	.byte	0xcd
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0xcf
	.4byte	0x33
	.4byte	.LLST21
	.uleb128 0x2d
	.4byte	.LASF416
	.byte	0x1
	.byte	0xd0
	.4byte	0x1aad
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	.LASF417
	.byte	0x1
	.byte	0xd1
	.4byte	0x1ab3
	.4byte	.LLST23
	.uleb128 0x2e
	.4byte	0x17c8
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd3
	.uleb128 0x2b
	.4byte	0x17d8
	.4byte	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF419
	.byte	0x1
	.byte	0xd6
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bfc
	.uleb128 0x27
	.ascii	"dst\000"
	.byte	0x1
	.byte	0xd6
	.4byte	0x994
	.4byte	.LLST25
	.uleb128 0x27
	.ascii	"src\000"
	.byte	0x1
	.byte	0xd6
	.4byte	0x155d
	.4byte	.LLST26
	.uleb128 0x28
	.4byte	.LASF229
	.byte	0x1
	.byte	0xd7
	.4byte	0x33
	.4byte	.LLST27
	.uleb128 0x2c
	.4byte	.LASF400
	.byte	0x1
	.byte	0xd7
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0xd9
	.4byte	0x33
	.4byte	.LLST28
	.uleb128 0x2d
	.4byte	.LASF416
	.byte	0x1
	.byte	0xda
	.4byte	0x1bfc
	.4byte	.LLST29
	.uleb128 0x2d
	.4byte	.LASF417
	.byte	0x1
	.byte	0xdb
	.4byte	0x1c02
	.4byte	.LLST30
	.uleb128 0x2a
	.4byte	0x17e2
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0xdd
	.uleb128 0x2b
	.4byte	0x17f2
	.4byte	.LLST31
	.uleb128 0x2f
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x30
	.4byte	0x17fb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x31
	.4byte	0x1804
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c08
	.uleb128 0x7
	.4byte	0xf7
	.uleb128 0x26
	.4byte	.LASF329
	.byte	0x1
	.byte	0x7a
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c67
	.uleb128 0x27
	.ascii	"ctx\000"
	.byte	0x1
	.byte	0x7a
	.4byte	0x11ea
	.4byte	.LLST32
	.uleb128 0x29
	.ascii	"vol\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x1826
	.4byte	.LLST33
	.uleb128 0x32
	.4byte	.LVL44
	.4byte	0x2719
	.uleb128 0x33
	.4byte	.LVL45
	.4byte	0x272a
	.4byte	0x1c5d
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL47
	.4byte	0x273c
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF420
	.byte	0x1
	.byte	0x5b
	.4byte	0x33
	.byte	0x1
	.4byte	0x1caf
	.uleb128 0x36
	.4byte	.LASF421
	.byte	0x1
	.byte	0x5b
	.4byte	0x1caf
	.uleb128 0x36
	.4byte	.LASF422
	.byte	0x1
	.byte	0x5b
	.4byte	0x129
	.uleb128 0x36
	.4byte	.LASF423
	.byte	0x1
	.byte	0x5b
	.4byte	0xc6
	.uleb128 0x20
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x5d
	.4byte	0x33
	.uleb128 0x20
	.ascii	"old\000"
	.byte	0x1
	.byte	0x5e
	.4byte	0x176d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x176d
	.uleb128 0x37
	.4byte	.LASF327
	.byte	0x1
	.byte	0x6f
	.4byte	0x33
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1db9
	.uleb128 0x27
	.ascii	"ctx\000"
	.byte	0x1
	.byte	0x6f
	.4byte	0x11ea
	.4byte	.LLST34
	.uleb128 0x29
	.ascii	"vol\000"
	.byte	0x1
	.byte	0x71
	.4byte	0x1826
	.4byte	.LLST35
	.uleb128 0x38
	.4byte	0x1c67
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0x77
	.4byte	0x1da9
	.uleb128 0x2b
	.4byte	0x1c8d
	.4byte	.LLST36
	.uleb128 0x2b
	.4byte	0x1c82
	.4byte	.LLST37
	.uleb128 0x2b
	.4byte	0x1c77
	.4byte	.LLST38
	.uleb128 0x2f
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x39
	.4byte	0x1c98
	.4byte	.LLST39
	.uleb128 0x39
	.4byte	0x1ca3
	.4byte	.LLST40
	.uleb128 0x33
	.4byte	.LVL54
	.4byte	0x274e
	.4byte	0x1d78
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 20
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL56
	.4byte	0x27da
	.4byte	0x1d97
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL57
	.4byte	0x2719
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL51
	.4byte	0x27f6
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x180e
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df6
	.uleb128 0x2b
	.4byte	0x181a
	.4byte	.LLST41
	.uleb128 0x3c
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0x1dec
	.uleb128 0x2b
	.4byte	0x181a
	.4byte	.LLST42
	.byte	0
	.uleb128 0x32
	.4byte	.LVL62
	.4byte	0x280b
	.byte	0
	.uleb128 0x24
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x100
	.4byte	0x33
	.byte	0x1
	.4byte	0x1e20
	.uleb128 0x25
	.ascii	"ctx\000"
	.byte	0x1
	.2byte	0x100
	.4byte	0x11ea
	.uleb128 0x3d
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0x102
	.4byte	0x1826
	.byte	0
	.uleb128 0x3e
	.4byte	0x1df6
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f04
	.uleb128 0x2b
	.4byte	0x1e07
	.4byte	.LLST43
	.uleb128 0x30
	.4byte	0x1e13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LVL68
	.4byte	0x2820
	.4byte	0x1e5c
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 24
	.byte	0
	.uleb128 0x33
	.4byte	.LVL70
	.4byte	0x27da
	.4byte	0x1e75
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL72
	.4byte	0x27da
	.4byte	0x1e88
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x33
	.4byte	.LVL73
	.4byte	0x27da
	.4byte	0x1ea2
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL74
	.4byte	0x283f
	.uleb128 0x33
	.4byte	.LVL76
	.4byte	0x27da
	.4byte	0x1ed3
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x2c
	.byte	0
	.uleb128 0x33
	.4byte	.LVL77
	.4byte	0x180e
	.4byte	0x1ee7
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL83
	.4byte	0x27da
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x154
	.4byte	0x33
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2209
	.uleb128 0x40
	.4byte	.LASF425
	.byte	0x1
	.2byte	0x154
	.4byte	0x12bd
	.4byte	.LLST44
	.uleb128 0x41
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x154
	.4byte	0x145f
	.4byte	.LLST45
	.uleb128 0x42
	.ascii	"ctx\000"
	.byte	0x1
	.2byte	0x156
	.4byte	0x11ea
	.4byte	.LLST46
	.uleb128 0x43
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0x157
	.4byte	0x1826
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x44
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x158
	.4byte	0x12bd
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x45
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x159
	.4byte	0x33
	.4byte	.LLST47
	.uleb128 0x44
	.4byte	.LASF427
	.byte	0x1
	.2byte	0x15a
	.4byte	0x145f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x42
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x15b
	.4byte	0x10d
	.4byte	.LLST48
	.uleb128 0x42
	.ascii	"sd\000"
	.byte	0x1
	.2byte	0x15c
	.4byte	0xd2f
	.4byte	.LLST49
	.uleb128 0x42
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x33
	.4byte	.LLST50
	.uleb128 0x46
	.ascii	"end\000"
	.byte	0x1
	.2byte	0x1c9
	.4byte	.L94
	.uleb128 0x47
	.4byte	0x18f5
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.2byte	0x18a
	.byte	0x2
	.4byte	0x1fe3
	.uleb128 0x2b
	.4byte	0x1905
	.4byte	.LLST51
	.byte	0
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x2056
	.uleb128 0x42
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x33
	.4byte	.LLST52
	.uleb128 0x45
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x33
	.4byte	.LLST53
	.uleb128 0x32
	.4byte	.LVL107
	.4byte	0x2854
	.uleb128 0x49
	.4byte	.LVL112
	.4byte	0x2023
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL139
	.4byte	0x280b
	.uleb128 0x49
	.4byte	.LVL142
	.4byte	0x203d
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.4byte	.LVL148
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0x18f5
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.2byte	0x187
	.byte	0x2
	.4byte	0x2075
	.uleb128 0x2b
	.4byte	0x1905
	.4byte	.LLST54
	.byte	0
	.uleb128 0x3c
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0x2135
	.uleb128 0x45
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x161
	.4byte	0x2209
	.4byte	.LLST55
	.uleb128 0x45
	.4byte	.LASF429
	.byte	0x1
	.2byte	0x162
	.4byte	0xf7
	.4byte	.LLST56
	.uleb128 0x45
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x163
	.4byte	0x102
	.4byte	.LLST57
	.uleb128 0x42
	.ascii	"g\000"
	.byte	0x1
	.2byte	0x164
	.4byte	0x3a
	.4byte	.LLST58
	.uleb128 0x42
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x164
	.4byte	0x3a
	.4byte	.LLST59
	.uleb128 0x4b
	.4byte	0x190f
	.4byte	.LBB49
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x17b
	.4byte	0x20f5
	.uleb128 0x2b
	.4byte	0x1920
	.4byte	.LLST60
	.uleb128 0x32
	.4byte	.LVL169
	.4byte	0x2869
	.byte	0
	.uleb128 0x33
	.4byte	.LVL165
	.4byte	0x27da
	.4byte	0x2111
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x2c
	.byte	0
	.uleb128 0x33
	.4byte	.LVL178
	.4byte	0x180e
	.4byte	0x2125
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL180
	.4byte	0x27da
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL90
	.4byte	0x287e
	.4byte	0x214f
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LVL92
	.4byte	0x2899
	.4byte	0x2162
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x33
	.4byte	.LVL102
	.4byte	0x28b0
	.4byte	0x2176
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL105
	.4byte	0x28c6
	.uleb128 0x33
	.4byte	.LVL117
	.4byte	0x28dc
	.4byte	0x2193
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x33
	.4byte	.LVL123
	.4byte	0x28f4
	.4byte	0x21ad
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL126
	.4byte	0x290f
	.4byte	0x21c7
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL127
	.4byte	0x2929
	.uleb128 0x33
	.4byte	.LVL130
	.4byte	0x1df6
	.4byte	0x21e4
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL152
	.4byte	0x28dc
	.4byte	0x21f8
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL154
	.4byte	0x28dc
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x942
	.uleb128 0x3b
	.4byte	0x182c
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22e7
	.uleb128 0x2b
	.4byte	0x183c
	.4byte	.LLST61
	.uleb128 0x39
	.4byte	0x1847
	.4byte	.LLST62
	.uleb128 0x39
	.4byte	0x1852
	.4byte	.LLST63
	.uleb128 0x39
	.4byte	0x185d
	.4byte	.LLST64
	.uleb128 0x30
	.4byte	0x1868
	.uleb128 0x5
	.byte	0x3
	.4byte	sample_fmts.9297
	.uleb128 0x39
	.4byte	0x18c8
	.4byte	.LLST65
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x22b0
	.uleb128 0x2b
	.4byte	0x183c
	.4byte	.LLST66
	.uleb128 0x4c
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x31
	.4byte	0x1847
	.uleb128 0x39
	.4byte	0x1852
	.4byte	.LLST67
	.uleb128 0x31
	.4byte	0x185d
	.uleb128 0x31
	.4byte	0x18c8
	.uleb128 0x30
	.4byte	0x1868
	.uleb128 0x5
	.byte	0x3
	.4byte	sample_fmts.9297
	.uleb128 0x32
	.4byte	.LVL195
	.4byte	0x2944
	.uleb128 0x4d
	.4byte	.LVL198
	.4byte	0x294f
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL187
	.4byte	0x2969
	.uleb128 0x33
	.4byte	.LVL189
	.4byte	0x2974
	.4byte	0x22cd
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL191
	.4byte	0x298e
	.uleb128 0x3a
	.4byte	.LVL193
	.4byte	0x29a3
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x140
	.4byte	0x33
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2459
	.uleb128 0x41
	.ascii	"ctx\000"
	.byte	0x1
	.2byte	0x140
	.4byte	0x11ea
	.4byte	.LLST68
	.uleb128 0x41
	.ascii	"cmd\000"
	.byte	0x1
	.2byte	0x140
	.4byte	0x129
	.4byte	.LLST69
	.uleb128 0x40
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x140
	.4byte	0x129
	.4byte	.LLST70
	.uleb128 0x41
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x141
	.4byte	0x123
	.4byte	.LLST71
	.uleb128 0x4f
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x141
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4f
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x141
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x43
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0x143
	.4byte	0x1826
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x42
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x144
	.4byte	0x33
	.4byte	.LLST72
	.uleb128 0x4b
	.4byte	0x1c67
	.4byte	.LBB61
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x147
	.4byte	0x2433
	.uleb128 0x50
	.4byte	0x1c8d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x50
	.4byte	0x1c82
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2b
	.4byte	0x1c77
	.4byte	.LLST73
	.uleb128 0x4c
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x39
	.4byte	0x1c98
	.4byte	.LLST74
	.uleb128 0x39
	.4byte	0x1ca3
	.4byte	.LLST75
	.uleb128 0x33
	.4byte	.LVL207
	.4byte	0x274e
	.4byte	0x2402
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 20
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL209
	.4byte	0x2719
	.4byte	0x2416
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL214
	.4byte	0x27da
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL202
	.4byte	0x29bd
	.4byte	0x2448
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL211
	.4byte	0x1df6
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x120
	.4byte	0x33
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25e4
	.uleb128 0x40
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x120
	.4byte	0x12bd
	.4byte	.LLST76
	.uleb128 0x42
	.ascii	"ctx\000"
	.byte	0x1
	.2byte	0x122
	.4byte	0x11ea
	.4byte	.LLST77
	.uleb128 0x43
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0x123
	.4byte	0x1826
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x45
	.4byte	.LASF425
	.byte	0x1
	.2byte	0x124
	.4byte	0x12bd
	.4byte	.LLST78
	.uleb128 0x4b
	.4byte	0x18f5
	.4byte	.LBB69
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x135
	.4byte	0x24cf
	.uleb128 0x2b
	.4byte	0x1905
	.4byte	.LLST79
	.byte	0
	.uleb128 0x4b
	.4byte	0x1df6
	.4byte	.LBB73
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x13d
	.4byte	0x25ba
	.uleb128 0x2b
	.4byte	0x1e07
	.4byte	.LLST80
	.uleb128 0x4c
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x30
	.4byte	0x1e13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LVL231
	.4byte	0x2820
	.4byte	0x2511
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 24
	.byte	0
	.uleb128 0x33
	.4byte	.LVL233
	.4byte	0x27da
	.4byte	0x252a
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL235
	.4byte	0x27da
	.4byte	0x253d
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x33
	.4byte	.LVL236
	.4byte	0x27da
	.4byte	0x2557
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL237
	.4byte	0x283f
	.uleb128 0x33
	.4byte	.LVL239
	.4byte	0x27da
	.4byte	0x2588
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x2c
	.byte	0
	.uleb128 0x33
	.4byte	.LVL240
	.4byte	0x180e
	.4byte	0x259c
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL246
	.4byte	0x27da
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL221
	.4byte	0x2854
	.uleb128 0x3a
	.4byte	.LVL229
	.4byte	0x27da
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x2c
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x2c
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x75e
	.4byte	0x25f4
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0x5
	.byte	0
	.uleb128 0x23
	.4byte	.LASF434
	.byte	0x17
	.byte	0x1c
	.4byte	0x2618
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x7
	.4byte	0x25e4
	.uleb128 0x23
	.4byte	.LASF435
	.byte	0x17
	.byte	0x25
	.4byte	0x2641
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
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
	.uleb128 0x7
	.4byte	0x25e4
	.uleb128 0x1b
	.4byte	0x129
	.4byte	0x2656
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0x2
	.byte	0
	.uleb128 0x51
	.4byte	.LASF436
	.byte	0x1
	.byte	0x29
	.4byte	0x2667
	.uleb128 0x5
	.byte	0x3
	.4byte	precision_str
	.uleb128 0x7
	.4byte	0x2646
	.uleb128 0x1b
	.4byte	0x129
	.4byte	0x267c
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0xc
	.byte	0
	.uleb128 0x51
	.4byte	.LASF437
	.byte	0x1
	.byte	0x2d
	.4byte	0x268d
	.uleb128 0x5
	.byte	0x3
	.4byte	var_names
	.uleb128 0x7
	.4byte	0x266c
	.uleb128 0x1b
	.4byte	0x885
	.4byte	0x26a2
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0xf
	.byte	0
	.uleb128 0x51
	.4byte	.LASF438
	.byte	0x1
	.byte	0x41
	.4byte	0x26b3
	.uleb128 0x5
	.byte	0x3
	.4byte	volume_options
	.uleb128 0x7
	.4byte	0x2692
	.uleb128 0x51
	.4byte	.LASF439
	.byte	0x1
	.byte	0x59
	.4byte	0x11d6
	.uleb128 0x5
	.byte	0x3
	.4byte	volume_class
	.uleb128 0x1b
	.4byte	0x1033
	.4byte	0x26d9
	.uleb128 0x1c
	.4byte	0xc8
	.byte	0x1
	.byte	0
	.uleb128 0x44
	.4byte	.LASF440
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x26eb
	.uleb128 0x5
	.byte	0x3
	.4byte	avfilter_af_volume_inputs
	.uleb128 0x7
	.4byte	0x26c9
	.uleb128 0x44
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x2702
	.uleb128 0x5
	.byte	0x3
	.4byte	avfilter_af_volume_outputs
	.uleb128 0x7
	.4byte	0x26c9
	.uleb128 0x52
	.4byte	.LASF472
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x1275
	.uleb128 0x5
	.byte	0x3
	.4byte	ff_af_volume
	.uleb128 0x53
	.4byte	.LASF442
	.byte	0xd
	.byte	0x5c
	.4byte	0x272a
	.uleb128 0x10
	.4byte	0x176d
	.byte	0
	.uleb128 0x54
	.4byte	.LASF443
	.byte	0xa
	.2byte	0x1c5
	.4byte	0x273c
	.uleb128 0x10
	.4byte	0xc6
	.byte	0
	.uleb128 0x54
	.4byte	.LASF444
	.byte	0x18
	.2byte	0x10e
	.4byte	0x274e
	.uleb128 0x10
	.4byte	0xc6
	.byte	0
	.uleb128 0x55
	.4byte	.LASF446
	.byte	0xd
	.byte	0x4a
	.4byte	0x33
	.4byte	0x278b
	.uleb128 0x10
	.4byte	0x1caf
	.uleb128 0x10
	.4byte	0x129
	.uleb128 0x10
	.4byte	0x153c
	.uleb128 0x10
	.4byte	0x153c
	.uleb128 0x10
	.4byte	0x278b
	.uleb128 0x10
	.4byte	0x153c
	.uleb128 0x10
	.4byte	0x27b0
	.uleb128 0x10
	.4byte	0x33
	.uleb128 0x10
	.4byte	0xc6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2791
	.uleb128 0x7
	.4byte	0x2796
	.uleb128 0x6
	.byte	0x4
	.4byte	0x279c
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0x27b0
	.uleb128 0x10
	.4byte	0xc6
	.uleb128 0x10
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27b6
	.uleb128 0x7
	.4byte	0x27bb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27c1
	.uleb128 0xf
	.4byte	0x2c
	.4byte	0x27da
	.uleb128 0x10
	.4byte	0xc6
	.uleb128 0x10
	.4byte	0x2c
	.uleb128 0x10
	.4byte	0x2c
	.byte	0
	.uleb128 0x53
	.4byte	.LASF445
	.byte	0x9
	.byte	0xea
	.4byte	0x27f6
	.uleb128 0x10
	.4byte	0xc6
	.uleb128 0x10
	.4byte	0x33
	.uleb128 0x10
	.4byte	0x129
	.uleb128 0x56
	.byte	0
	.uleb128 0x55
	.4byte	.LASF447
	.byte	0xe
	.byte	0xb8
	.4byte	0x1767
	.4byte	0x280b
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x55
	.4byte	.LASF448
	.byte	0xf
	.byte	0x69
	.4byte	0x75e
	.4byte	0x2820
	.uleb128 0x10
	.4byte	0x75e
	.byte	0
	.uleb128 0x55
	.4byte	.LASF449
	.byte	0xd
	.byte	0x57
	.4byte	0x2c
	.4byte	0x283f
	.uleb128 0x10
	.4byte	0x176d
	.uleb128 0x10
	.4byte	0x6e3
	.uleb128 0x10
	.4byte	0xc6
	.byte	0
	.uleb128 0x55
	.4byte	.LASF450
	.byte	0x19
	.byte	0xdb
	.4byte	0x2c
	.4byte	0x2854
	.uleb128 0x10
	.4byte	0x2c
	.byte	0
	.uleb128 0x55
	.4byte	.LASF451
	.byte	0xf
	.byte	0x93
	.4byte	0x33
	.4byte	0x2869
	.uleb128 0x10
	.4byte	0x75e
	.byte	0
	.uleb128 0x55
	.4byte	.LASF452
	.byte	0x19
	.byte	0xf0
	.4byte	0x2c
	.4byte	0x287e
	.uleb128 0x10
	.4byte	0x2c
	.byte	0
	.uleb128 0x57
	.4byte	.LASF453
	.byte	0x12
	.2byte	0x2c1
	.4byte	0xd2f
	.4byte	0x2899
	.uleb128 0x10
	.4byte	0x1547
	.uleb128 0x10
	.4byte	0x9a5
	.byte	0
	.uleb128 0x54
	.4byte	.LASF454
	.byte	0x12
	.2byte	0x2c8
	.4byte	0x28b0
	.uleb128 0x10
	.4byte	0x145f
	.uleb128 0x10
	.4byte	0x9a5
	.byte	0
	.uleb128 0x57
	.4byte	.LASF455
	.byte	0x12
	.2byte	0x20e
	.4byte	0x10d
	.4byte	0x28c6
	.uleb128 0x10
	.4byte	0x1547
	.byte	0
	.uleb128 0x57
	.4byte	.LASF456
	.byte	0x12
	.2byte	0x280
	.4byte	0x33
	.4byte	0x28dc
	.uleb128 0x10
	.4byte	0x145f
	.byte	0
	.uleb128 0x54
	.4byte	.LASF457
	.byte	0x12
	.2byte	0x23f
	.4byte	0x28ee
	.uleb128 0x10
	.4byte	0x28ee
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x145f
	.uleb128 0x57
	.4byte	.LASF458
	.byte	0x14
	.2byte	0x16f
	.4byte	0x33
	.4byte	0x290f
	.uleb128 0x10
	.4byte	0x12bd
	.uleb128 0x10
	.4byte	0x145f
	.byte	0
	.uleb128 0x55
	.4byte	.LASF459
	.byte	0x17
	.byte	0x3d
	.4byte	0x145f
	.4byte	0x2929
	.uleb128 0x10
	.4byte	0x12bd
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x57
	.4byte	.LASF460
	.byte	0x12
	.2byte	0x2a4
	.4byte	0x33
	.4byte	0x2944
	.uleb128 0x10
	.4byte	0x145f
	.uleb128 0x10
	.4byte	0x1547
	.byte	0
	.uleb128 0x58
	.4byte	.LASF462
	.byte	0x15
	.byte	0x84
	.4byte	0x13fe
	.uleb128 0x55
	.4byte	.LASF461
	.byte	0x15
	.byte	0x9d
	.4byte	0x33
	.4byte	0x2969
	.uleb128 0x10
	.4byte	0x11ea
	.uleb128 0x10
	.4byte	0x13fe
	.byte	0
	.uleb128 0x58
	.4byte	.LASF463
	.byte	0x15
	.byte	0x8b
	.4byte	0x18d4
	.uleb128 0x55
	.4byte	.LASF464
	.byte	0x15
	.byte	0x9a
	.4byte	0x33
	.4byte	0x298e
	.uleb128 0x10
	.4byte	0x11ea
	.uleb128 0x10
	.4byte	0x18d4
	.byte	0
	.uleb128 0x55
	.4byte	.LASF465
	.byte	0x15
	.byte	0xcf
	.4byte	0x13fe
	.4byte	0x29a3
	.uleb128 0x10
	.4byte	0x1552
	.byte	0
	.uleb128 0x55
	.4byte	.LASF466
	.byte	0x15
	.byte	0xa6
	.4byte	0x33
	.4byte	0x29bd
	.uleb128 0x10
	.4byte	0x11ea
	.uleb128 0x10
	.4byte	0x13fe
	.byte	0
	.uleb128 0x59
	.4byte	.LASF467
	.byte	0x1a
	.byte	0x35
	.4byte	0x33
	.uleb128 0x10
	.4byte	0x129
	.uleb128 0x10
	.4byte	0x129
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x2136
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE60
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7
	.4byte	.LFE60
	.2byte	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x21
	.byte	0x23
	.uleb128 0x80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE61
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x16
	.byte	0x71
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x80
	.byte	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x80
	.byte	0x38
	.byte	0x26
	.byte	0x23
	.uleb128 0x80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL29
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL29
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x11
	.byte	0x71
	.sleb128 -2
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x80
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL37
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL37
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x17
	.byte	0x7c
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x80
	.byte	0xf7
	.uleb128 0x25
	.byte	0x22
	.byte	0x38
	.byte	0xf7
	.uleb128 0x25
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x18
	.byte	0x71
	.sleb128 -4
	.byte	0x6
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x80
	.byte	0xf7
	.uleb128 0x25
	.byte	0x22
	.byte	0x38
	.byte	0xf7
	.uleb128 0x25
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL59
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL50
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x75
	.sleb128 20
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-1
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x75
	.sleb128 20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61
	.4byte	.LFE65
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72-1
	.4byte	.LFE66
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL138
	.4byte	.LVL149
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL150
	.4byte	.LVL155
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL87
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90-1
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL117-1
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL153
	.4byte	.LVL154-1
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL154-1
	.4byte	.LFE69
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL85
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL124
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL149
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL89
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL124
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL149
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL102
	.4byte	.LVL103-1
	.2byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x8
	.byte	0x74
	.sleb128 56
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 60
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL109
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL138
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL132
	.4byte	.LVL133-1
	.2byte	0x8
	.byte	0x74
	.sleb128 56
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 60
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL134
	.4byte	.LVL135-1
	.2byte	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL157
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL179
	.4byte	.LVL180-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL181
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x6
	.byte	0xc
	.4byte	0x186a0
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179
	.4byte	.LVL183
	.2byte	0x6
	.byte	0xc
	.4byte	0x186a0
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL157
	.4byte	.LVL161
	.2byte	0x6
	.byte	0xc
	.4byte	0x186a0
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL179
	.4byte	.LFE69
	.2byte	0x6
	.byte	0xc
	.4byte	0x186a0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL161
	.4byte	.LVL162-1
	.2byte	0xf
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x3a
	.byte	0xf4
	.uleb128 0x3a
	.byte	0x4
	.4byte	0x47c35000
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL161
	.4byte	.LVL179
	.2byte	0xf
	.byte	0x7b
	.sleb128 0
	.byte	0xf7
	.uleb128 0x41
	.byte	0xf7
	.uleb128 0x3a
	.byte	0xf4
	.uleb128 0x3a
	.byte	0x4
	.4byte	0x47c35000
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL165
	.4byte	.LVL166-1
	.2byte	0x17
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x2c
	.byte	0x7a
	.sleb128 128
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2c
	.byte	0x22
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0x40340000
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL185
	.4byte	.LVL187-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL187-1
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL197
	.4byte	.LVL198-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL198-1
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LFE59
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL186
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL198
	.4byte	.LFE59
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL186
	.4byte	.LVL191
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL192
	.4byte	.LVL193-1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL188
	.4byte	.LVL189-1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL193
	.4byte	.LVL195-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL194
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL197
	.4byte	.LVL198-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL198-1
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL196
	.4byte	.LVL198-1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL200
	.4byte	.LFE68
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL199
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL201
	.4byte	.LVL202-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL202-1
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL199
	.4byte	.LVL202-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202-1
	.4byte	.LFE68
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL199
	.4byte	.LVL202-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL202-1
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x3
	.byte	0x9
	.byte	0xda
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL209
	.2byte	0x3
	.byte	0x9
	.byte	0xda
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL215
	.2byte	0x3
	.byte	0x9
	.byte	0xda
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x3
	.byte	0x77
	.sleb128 20
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL207-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL207-1
	.4byte	.LFE68
	.2byte	0x3
	.byte	0x77
	.sleb128 20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL208
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL213
	.4byte	.LFE68
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LFE68
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL216
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL220
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL217
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL234
	.4byte	.LVL235-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL235-1
	.4byte	.LFE67
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL219
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL223
	.4byte	.LVL224-1
	.2byte	0x8
	.byte	0x74
	.sleb128 56
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 60
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL225
	.4byte	.LVL226-1
	.2byte	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL229
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL234
	.4byte	.LVL235-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL235-1
	.4byte	.LFE67
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	0
	.4byte	0
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	0
	.4byte	0
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0
	.4byte	0
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF17:
	.ascii	"long int\000"
.LASF130:
	.ascii	"AVCOL_SPC_YCOCG\000"
.LASF165:
	.ascii	"AV_SAMPLE_FMT_FLT\000"
.LASF427:
	.ascii	"out_buf\000"
.LASF116:
	.ascii	"AVCOL_TRC_BT2020_10\000"
.LASF117:
	.ascii	"AVCOL_TRC_BT2020_12\000"
.LASF370:
	.ascii	"EVAL_MODE_NB\000"
.LASF375:
	.ascii	"VAR_NB_SAMPLES\000"
.LASF296:
	.ascii	"init_state\000"
.LASF285:
	.ascii	"AVFilterLink\000"
.LASF19:
	.ascii	"char\000"
.LASF402:
	.ascii	"planes\000"
.LASF444:
	.ascii	"av_freep\000"
.LASF294:
	.ascii	"out_channel_layouts\000"
.LASF335:
	.ascii	"AVFilterInternal\000"
.LASF145:
	.ascii	"AVCHROMA_LOC_BOTTOMLEFT\000"
.LASF230:
	.ascii	"format\000"
.LASF189:
	.ascii	"AV_OPT_TYPE_COLOR\000"
.LASF352:
	.ascii	"AVLINK_INIT\000"
.LASF123:
	.ascii	"AVCOL_SPC_BT709\000"
.LASF436:
	.ascii	"precision_str\000"
.LASF82:
	.ascii	"flags\000"
.LASF358:
	.ascii	"AVFilterGraphInternal\000"
.LASF423:
	.ascii	"log_ctx\000"
.LASF205:
	.ascii	"buffer\000"
.LASF373:
	.ascii	"VAR_NB_CHANNELS\000"
.LASF162:
	.ascii	"AV_SAMPLE_FMT_U8\000"
.LASF257:
	.ascii	"best_effort_timestamp\000"
.LASF193:
	.ascii	"value_min\000"
.LASF345:
	.ascii	"sink_links_count\000"
.LASF3:
	.ascii	"unsigned int\000"
.LASF184:
	.ascii	"AV_OPT_TYPE_IMAGE_SIZE\000"
.LASF332:
	.ascii	"next\000"
.LASF68:
	.ascii	"version\000"
.LASF171:
	.ascii	"AV_SAMPLE_FMT_DBLP\000"
.LASF33:
	.ascii	"AVMEDIA_TYPE_NB\000"
.LASF246:
	.ascii	"sample_rate\000"
.LASF236:
	.ascii	"coded_picture_number\000"
.LASF242:
	.ascii	"interlaced_frame\000"
.LASF385:
	.ascii	"ReplayGainType\000"
.LASF11:
	.ascii	"__int32_t\000"
.LASF323:
	.ascii	"refs\000"
.LASF106:
	.ascii	"AVCOL_TRC_GAMMA22\000"
.LASF403:
	.ascii	"sample_fmt\000"
.LASF157:
	.ascii	"vector_fmul_reverse\000"
.LASF202:
	.ascii	"album_peak\000"
.LASF315:
	.ascii	"request_frame\000"
.LASF107:
	.ascii	"AVCOL_TRC_GAMMA28\000"
.LASF183:
	.ascii	"AV_OPT_TYPE_CONST\000"
.LASF100:
	.ascii	"AVCOL_PRI_NB\000"
.LASF401:
	.ascii	"volume_i\000"
.LASF336:
	.ascii	"execute\000"
.LASF363:
	.ascii	"PrecisionType\000"
.LASF348:
	.ascii	"time\000"
.LASF56:
	.ascii	"AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT\000"
.LASF252:
	.ascii	"color_range\000"
.LASF240:
	.ascii	"error\000"
.LASF368:
	.ascii	"EVAL_MODE_ONCE\000"
.LASF272:
	.ascii	"nb_inputs\000"
.LASF210:
	.ascii	"AV_FRAME_DATA_A53_CC\000"
.LASF447:
	.ascii	"avpriv_float_dsp_alloc\000"
.LASF324:
	.ascii	"AVFilter\000"
.LASF471:
	.ascii	"volume_init\000"
.LASF369:
	.ascii	"EVAL_MODE_FRAME\000"
.LASF48:
	.ascii	"AV_CLASS_CATEGORY_MUXER\000"
.LASF133:
	.ascii	"AVCOL_SPC_NB\000"
.LASF219:
	.ascii	"AV_FRAME_DATA_AUDIO_SERVICE_TYPE\000"
.LASF256:
	.ascii	"chroma_location\000"
.LASF354:
	.ascii	"channel_layouts\000"
.LASF445:
	.ascii	"av_log\000"
.LASF211:
	.ascii	"AV_FRAME_DATA_STEREO3D\000"
.LASF79:
	.ascii	"offset\000"
.LASF154:
	.ascii	"vector_dmul_scalar\000"
.LASF238:
	.ascii	"quality\000"
.LASF195:
	.ascii	"component_min\000"
.LASF4:
	.ascii	"signed char\000"
.LASF232:
	.ascii	"pict_type\000"
.LASF234:
	.ascii	"pkt_pts\000"
.LASF147:
	.ascii	"AVCHROMA_LOC_NB\000"
.LASF300:
	.ascii	"frame_rate\000"
.LASF329:
	.ascii	"uninit\000"
.LASF24:
	.ascii	"uint32_t\000"
.LASF20:
	.ascii	"int8_t\000"
.LASF239:
	.ascii	"opaque\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF38:
	.ascii	"AV_PICTURE_TYPE_P\000"
.LASF280:
	.ascii	"command_queue\000"
.LASF34:
	.ascii	"AVMediaType\000"
.LASF400:
	.ascii	"volume\000"
.LASF286:
	.ascii	"srcpad\000"
.LASF2:
	.ascii	"float\000"
.LASF30:
	.ascii	"AVMEDIA_TYPE_DATA\000"
.LASF90:
	.ascii	"AVCOL_PRI_BT709\000"
.LASF405:
	.ascii	"samples_align\000"
.LASF63:
	.ascii	"AVClassCategory\000"
.LASF446:
	.ascii	"av_expr_parse\000"
.LASF125:
	.ascii	"AVCOL_SPC_RESERVED\000"
.LASF150:
	.ascii	"AVFloatDSPContext\000"
.LASF350:
	.ascii	"AVLINK_UNINIT\000"
.LASF426:
	.ascii	"outlink\000"
.LASF322:
	.ascii	"refcount\000"
.LASF439:
	.ascii	"volume_class\000"
.LASF438:
	.ascii	"volume_options\000"
.LASF311:
	.ascii	"get_video_buffer\000"
.LASF209:
	.ascii	"AV_FRAME_DATA_PANSCAN\000"
.LASF421:
	.ascii	"pexpr\000"
.LASF308:
	.ascii	"frame_wanted_in\000"
.LASF233:
	.ascii	"sample_aspect_ratio\000"
.LASF70:
	.ascii	"parent_log_context_offset\000"
.LASF333:
	.ascii	"process_command\000"
.LASF159:
	.ascii	"scalarproduct_float\000"
.LASF81:
	.ascii	"default_val\000"
.LASF54:
	.ascii	"AV_CLASS_CATEGORY_SWSCALER\000"
.LASF69:
	.ascii	"log_level_offset_offset\000"
.LASF347:
	.ascii	"AVFilterCommand\000"
.LASF267:
	.ascii	"AVFilterContext\000"
.LASF454:
	.ascii	"av_frame_remove_side_data\000"
.LASF395:
	.ascii	"volume_expr\000"
.LASF396:
	.ascii	"volume_pexpr\000"
.LASF216:
	.ascii	"AV_FRAME_DATA_AFD\000"
.LASF342:
	.ascii	"nb_threads\000"
.LASF49:
	.ascii	"AV_CLASS_CATEGORY_DEMUXER\000"
.LASF105:
	.ascii	"AVCOL_TRC_RESERVED\000"
.LASF433:
	.ascii	"config_output\000"
.LASF96:
	.ascii	"AVCOL_PRI_SMPTE240M\000"
.LASF124:
	.ascii	"AVCOL_SPC_UNSPECIFIED\000"
.LASF222:
	.ascii	"AVFrameSideData\000"
.LASF282:
	.ascii	"enable\000"
.LASF404:
	.ascii	"scale_samples\000"
.LASF203:
	.ascii	"AVBuffer\000"
.LASF35:
	.ascii	"AVPictureType\000"
.LASF458:
	.ascii	"ff_filter_frame\000"
.LASF283:
	.ascii	"var_values\000"
.LASF424:
	.ascii	"set_volume\000"
.LASF149:
	.ascii	"AVExpr\000"
.LASF366:
	.ascii	"PRECISION_DOUBLE\000"
.LASF178:
	.ascii	"AV_OPT_TYPE_FLOAT\000"
.LASF169:
	.ascii	"AV_SAMPLE_FMT_S32P\000"
.LASF114:
	.ascii	"AVCOL_TRC_BT1361_ECG\000"
.LASF309:
	.ascii	"frame_wanted_out\000"
.LASF92:
	.ascii	"AVCOL_PRI_RESERVED\000"
.LASF372:
	.ascii	"VAR_N\000"
.LASF91:
	.ascii	"AVCOL_PRI_UNSPECIFIED\000"
.LASF381:
	.ascii	"VAR_T\000"
.LASF227:
	.ascii	"width\000"
.LASF25:
	.ascii	"int64_t\000"
.LASF99:
	.ascii	"AVCOL_PRI_SMPTEST428_1\000"
.LASF231:
	.ascii	"key_frame\000"
.LASF255:
	.ascii	"colorspace\000"
.LASF29:
	.ascii	"AVMEDIA_TYPE_AUDIO\000"
.LASF47:
	.ascii	"AV_CLASS_CATEGORY_OUTPUT\000"
.LASF249:
	.ascii	"nb_extended_buf\000"
.LASF383:
	.ascii	"VAR_VOLUME\000"
.LASF313:
	.ascii	"filter_frame\000"
.LASF146:
	.ascii	"AVCHROMA_LOC_BOTTOM\000"
.LASF185:
	.ascii	"AV_OPT_TYPE_PIXEL_FMT\000"
.LASF432:
	.ascii	"res_len\000"
.LASF142:
	.ascii	"AVCHROMA_LOC_CENTER\000"
.LASF364:
	.ascii	"PRECISION_FIXED\000"
.LASF181:
	.ascii	"AV_OPT_TYPE_BINARY\000"
.LASF50:
	.ascii	"AV_CLASS_CATEGORY_ENCODER\000"
.LASF27:
	.ascii	"AVMEDIA_TYPE_UNKNOWN\000"
.LASF15:
	.ascii	"__uint64_t\000"
.LASF161:
	.ascii	"AV_SAMPLE_FMT_NONE\000"
.LASF163:
	.ascii	"AV_SAMPLE_FMT_S16\000"
.LASF180:
	.ascii	"AV_OPT_TYPE_RATIONAL\000"
.LASF243:
	.ascii	"top_field_first\000"
.LASF260:
	.ascii	"decode_error_flags\000"
.LASF448:
	.ascii	"av_get_packed_sample_fmt\000"
.LASF75:
	.ascii	"query_ranges\000"
.LASF451:
	.ascii	"av_sample_fmt_is_planar\000"
.LASF109:
	.ascii	"AVCOL_TRC_SMPTE240M\000"
.LASF259:
	.ascii	"pkt_duration\000"
.LASF310:
	.ascii	"AVFilterPad\000"
.LASF434:
	.ascii	"ff_packed_sample_fmts_array\000"
.LASF144:
	.ascii	"AVCHROMA_LOC_TOP\000"
.LASF389:
	.ascii	"REPLAYGAIN_ALBUM\000"
.LASF301:
	.ascii	"partial_buf\000"
.LASF441:
	.ascii	"avfilter_af_volume_outputs\000"
.LASF298:
	.ascii	"current_pts_us\000"
.LASF443:
	.ascii	"av_opt_free\000"
.LASF174:
	.ascii	"AV_OPT_TYPE_FLAGS\000"
.LASF46:
	.ascii	"AV_CLASS_CATEGORY_INPUT\000"
.LASF155:
	.ascii	"vector_fmul_window\000"
.LASF273:
	.ascii	"output_pads\000"
.LASF472:
	.ascii	"ff_af_volume\000"
.LASF101:
	.ascii	"AVColorTransferCharacteristic\000"
.LASF320:
	.ascii	"nb_formats\000"
.LASF302:
	.ascii	"partial_buf_size\000"
.LASF139:
	.ascii	"AVChromaLocation\000"
.LASF276:
	.ascii	"priv\000"
.LASF462:
	.ascii	"ff_all_samplerates\000"
.LASF148:
	.ascii	"AVDictionary\000"
.LASF464:
	.ascii	"ff_set_common_channel_layouts\000"
.LASF251:
	.ascii	"nb_side_data\000"
.LASF214:
	.ascii	"AV_FRAME_DATA_REPLAYGAIN\000"
.LASF407:
	.ascii	"av_clip_int16_c\000"
.LASF62:
	.ascii	"AV_CLASS_CATEGORY_NB\000"
.LASF409:
	.ascii	"layouts\000"
.LASF108:
	.ascii	"AVCOL_TRC_SMPTE170M\000"
.LASF378:
	.ascii	"VAR_SAMPLE_RATE\000"
.LASF379:
	.ascii	"VAR_STARTPTS\000"
.LASF235:
	.ascii	"pkt_dts\000"
.LASF198:
	.ascii	"AVReplayGain\000"
.LASF192:
	.ascii	"AVOptionRange\000"
.LASF428:
	.ascii	"plane_samples\000"
.LASF440:
	.ascii	"avfilter_af_volume_inputs\000"
.LASF247:
	.ascii	"channel_layout\000"
.LASF244:
	.ascii	"palette_has_changed\000"
.LASF344:
	.ascii	"sink_links\000"
.LASF292:
	.ascii	"out_samplerates\000"
.LASF330:
	.ascii	"query_formats\000"
.LASF131:
	.ascii	"AVCOL_SPC_BT2020_NCL\000"
.LASF360:
	.ascii	"thread_execute\000"
.LASF387:
	.ascii	"REPLAYGAIN_IGNORE\000"
.LASF177:
	.ascii	"AV_OPT_TYPE_DOUBLE\000"
.LASF21:
	.ascii	"uint8_t\000"
.LASF305:
	.ascii	"status\000"
.LASF212:
	.ascii	"AV_FRAME_DATA_MATRIXENCODING\000"
.LASF312:
	.ascii	"get_audio_buffer\000"
.LASF237:
	.ascii	"display_picture_number\000"
.LASF456:
	.ascii	"av_frame_is_writable\000"
.LASF135:
	.ascii	"AVCOL_RANGE_UNSPECIFIED\000"
.LASF429:
	.ascii	"gain\000"
.LASF271:
	.ascii	"inputs\000"
.LASF450:
	.ascii	"log10\000"
.LASF466:
	.ascii	"ff_set_common_formats\000"
.LASF72:
	.ascii	"child_class_next\000"
.LASF140:
	.ascii	"AVCHROMA_LOC_UNSPECIFIED\000"
.LASF151:
	.ascii	"vector_fmul\000"
.LASF87:
	.ascii	"nb_components\000"
.LASF377:
	.ascii	"VAR_PTS\000"
.LASF382:
	.ascii	"VAR_TB\000"
.LASF83:
	.ascii	"unit\000"
.LASF274:
	.ascii	"outputs\000"
.LASF353:
	.ascii	"AVFilterChannelLayouts\000"
.LASF119:
	.ascii	"AVCOL_TRC_SMPTEST428_1\000"
.LASF164:
	.ascii	"AV_SAMPLE_FMT_S32\000"
.LASF14:
	.ascii	"long long int\000"
.LASF413:
	.ascii	"scale_samples_u8\000"
.LASF414:
	.ascii	"scale_samples_u8_small\000"
.LASF417:
	.ascii	"smp_src\000"
.LASF357:
	.ascii	"all_counts\000"
.LASF325:
	.ascii	"description\000"
.LASF261:
	.ascii	"channels\000"
.LASF371:
	.ascii	"VolumeVarName\000"
.LASF270:
	.ascii	"input_pads\000"
.LASF457:
	.ascii	"av_frame_free\000"
.LASF134:
	.ascii	"AVColorRange\000"
.LASF410:
	.ascii	"av_q2d\000"
.LASF388:
	.ascii	"REPLAYGAIN_TRACK\000"
.LASF331:
	.ascii	"priv_size\000"
.LASF8:
	.ascii	"__int16_t\000"
.LASF463:
	.ascii	"ff_all_channel_counts\000"
.LASF245:
	.ascii	"reordered_opaque\000"
.LASF262:
	.ascii	"pkt_size\000"
.LASF111:
	.ascii	"AVCOL_TRC_LOG\000"
.LASF168:
	.ascii	"AV_SAMPLE_FMT_S16P\000"
.LASF55:
	.ascii	"AV_CLASS_CATEGORY_SWRESAMPLER\000"
.LASF314:
	.ascii	"poll_frame\000"
.LASF287:
	.ascii	"dstpad\000"
.LASF73:
	.ascii	"category\000"
.LASF166:
	.ascii	"AV_SAMPLE_FMT_DBL\000"
.LASF194:
	.ascii	"value_max\000"
.LASF398:
	.ascii	"replaygain_preamp\000"
.LASF408:
	.ascii	"av_clipl_int32_arm\000"
.LASF115:
	.ascii	"AVCOL_TRC_IEC61966_2_1\000"
.LASF138:
	.ascii	"AVCOL_RANGE_NB\000"
.LASF455:
	.ascii	"av_frame_get_pkt_pos\000"
.LASF207:
	.ascii	"size\000"
.LASF317:
	.ascii	"needs_fifo\000"
.LASF85:
	.ascii	"range\000"
.LASF349:
	.ascii	"command\000"
.LASF43:
	.ascii	"AV_PICTURE_TYPE_BI\000"
.LASF28:
	.ascii	"AVMEDIA_TYPE_VIDEO\000"
.LASF397:
	.ascii	"replaygain\000"
.LASF307:
	.ascii	"video_frame_pool\000"
.LASF199:
	.ascii	"track_gain\000"
.LASF420:
	.ascii	"set_expr\000"
.LASF367:
	.ascii	"EvalMode\000"
.LASF411:
	.ascii	"ff_exp10\000"
.LASF293:
	.ascii	"in_channel_layouts\000"
.LASF228:
	.ascii	"height\000"
.LASF418:
	.ascii	"scale_samples_s16_small\000"
.LASF86:
	.ascii	"nb_ranges\000"
.LASF465:
	.ascii	"ff_make_format_list\000"
.LASF186:
	.ascii	"AV_OPT_TYPE_SAMPLE_FMT\000"
.LASF289:
	.ascii	"in_formats\000"
.LASF67:
	.ascii	"option\000"
.LASF113:
	.ascii	"AVCOL_TRC_IEC61966_2_4\000"
.LASF340:
	.ascii	"scale_sws_opts\000"
.LASF167:
	.ascii	"AV_SAMPLE_FMT_U8P\000"
.LASF435:
	.ascii	"ff_planar_sample_fmts_array\000"
.LASF5:
	.ascii	"__int8_t\000"
.LASF97:
	.ascii	"AVCOL_PRI_FILM\000"
.LASF355:
	.ascii	"nb_channel_layouts\000"
.LASF206:
	.ascii	"data\000"
.LASF217:
	.ascii	"AV_FRAME_DATA_MOTION_VECTORS\000"
.LASF170:
	.ascii	"AV_SAMPLE_FMT_FLTP\000"
.LASF61:
	.ascii	"AV_CLASS_CATEGORY_DEVICE_INPUT\000"
.LASF431:
	.ascii	"args\000"
.LASF13:
	.ascii	"__int64_t\000"
.LASF173:
	.ascii	"AVOptionType\000"
.LASF278:
	.ascii	"thread_type\000"
.LASF104:
	.ascii	"AVCOL_TRC_UNSPECIFIED\000"
.LASF94:
	.ascii	"AVCOL_PRI_BT470BG\000"
.LASF126:
	.ascii	"AVCOL_SPC_FCC\000"
.LASF291:
	.ascii	"in_samplerates\000"
.LASF57:
	.ascii	"AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT\000"
.LASF334:
	.ascii	"init_opaque\000"
.LASF406:
	.ascii	"av_clip_uint8_c\000"
.LASF66:
	.ascii	"item_name\000"
.LASF12:
	.ascii	"__uint32_t\000"
.LASF141:
	.ascii	"AVCHROMA_LOC_LEFT\000"
.LASF393:
	.ascii	"precision\000"
.LASF200:
	.ascii	"track_peak\000"
.LASF122:
	.ascii	"AVCOL_SPC_RGB\000"
.LASF191:
	.ascii	"AV_OPT_TYPE_BOOL\000"
.LASF84:
	.ascii	"AVOptionRanges\000"
.LASF45:
	.ascii	"AV_CLASS_CATEGORY_NA\000"
.LASF196:
	.ascii	"component_max\000"
.LASF223:
	.ascii	"metadata\000"
.LASF208:
	.ascii	"AVFrameSideDataType\000"
.LASF319:
	.ascii	"AVFilterFormats\000"
.LASF328:
	.ascii	"init_dict\000"
.LASF59:
	.ascii	"AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT\000"
.LASF253:
	.ascii	"color_primaries\000"
.LASF9:
	.ascii	"short int\000"
.LASF74:
	.ascii	"get_category\000"
.LASF361:
	.ascii	"avfilter_action_func\000"
.LASF415:
	.ascii	"scale_samples_s16\000"
.LASF32:
	.ascii	"AVMEDIA_TYPE_ATTACHMENT\000"
.LASF88:
	.ascii	"AVColorPrimaries\000"
.LASF41:
	.ascii	"AV_PICTURE_TYPE_SI\000"
.LASF160:
	.ascii	"AVSampleFormat\000"
.LASF136:
	.ascii	"AVCOL_RANGE_MPEG\000"
.LASF42:
	.ascii	"AV_PICTURE_TYPE_SP\000"
.LASF22:
	.ascii	"int16_t\000"
.LASF468:
	.ascii	"GNU C 4.9 20140827 (prerelease) -mbionic -march=arm"
	.ascii	"v5te -marm -mfloat-abi=soft -mfpu=vfp -mtls-dialect"
	.ascii	"=gnu -g -O3 -std=c99 -fomit-frame-pointer -fPIC -fn"
	.ascii	"o-math-errno -fno-signed-zeros -fno-tree-vectorize\000"
.LASF316:
	.ascii	"config_props\000"
.LASF306:
	.ascii	"frame_count\000"
.LASF269:
	.ascii	"filter\000"
.LASF430:
	.ascii	"peak\000"
.LASF380:
	.ascii	"VAR_STARTT\000"
.LASF26:
	.ascii	"uint64_t\000"
.LASF362:
	.ascii	"avfilter_execute_func\000"
.LASF78:
	.ascii	"help\000"
.LASF416:
	.ascii	"smp_dst\000"
.LASF469:
	.ascii	"libavfilter/af_volume.c\000"
.LASF392:
	.ascii	"fdsp\000"
.LASF248:
	.ascii	"extended_buf\000"
.LASF132:
	.ascii	"AVCOL_SPC_BT2020_CL\000"
.LASF449:
	.ascii	"av_expr_eval\000"
.LASF339:
	.ascii	"nb_filters\000"
.LASF460:
	.ascii	"av_frame_copy_props\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF277:
	.ascii	"graph\000"
.LASF346:
	.ascii	"disable_auto_convert\000"
.LASF129:
	.ascii	"AVCOL_SPC_SMPTE240M\000"
.LASF77:
	.ascii	"name\000"
.LASF156:
	.ascii	"vector_fmul_add\000"
.LASF226:
	.ascii	"extended_data\000"
.LASF98:
	.ascii	"AVCOL_PRI_BT2020\000"
.LASF264:
	.ascii	"qstride\000"
.LASF128:
	.ascii	"AVCOL_SPC_SMPTE170M\000"
.LASF152:
	.ascii	"vector_fmac_scalar\000"
.LASF461:
	.ascii	"ff_set_common_samplerates\000"
.LASF225:
	.ascii	"linesize\000"
.LASF327:
	.ascii	"init\000"
.LASF266:
	.ascii	"qp_table_buf\000"
.LASF172:
	.ascii	"AV_SAMPLE_FMT_NB\000"
.LASF153:
	.ascii	"vector_fmul_scalar\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF16:
	.ascii	"long unsigned int\000"
.LASF437:
	.ascii	"var_names\000"
.LASF374:
	.ascii	"VAR_NB_CONSUMED_SAMPLES\000"
.LASF265:
	.ascii	"qscale_type\000"
.LASF190:
	.ascii	"AV_OPT_TYPE_CHANNEL_LAYOUT\000"
.LASF351:
	.ascii	"AVLINK_STARTINIT\000"
.LASF37:
	.ascii	"AV_PICTURE_TYPE_I\000"
.LASF23:
	.ascii	"int32_t\000"
.LASF121:
	.ascii	"AVColorSpace\000"
.LASF386:
	.ascii	"REPLAYGAIN_DROP\000"
.LASF143:
	.ascii	"AVCHROMA_LOC_TOPLEFT\000"
.LASF419:
	.ascii	"scale_samples_s32\000"
.LASF359:
	.ascii	"thread\000"
.LASF40:
	.ascii	"AV_PICTURE_TYPE_S\000"
.LASF391:
	.ascii	"class\000"
.LASF112:
	.ascii	"AVCOL_TRC_LOG_SQRT\000"
.LASF65:
	.ascii	"class_name\000"
.LASF399:
	.ascii	"replaygain_noclip\000"
.LASF250:
	.ascii	"side_data\000"
.LASF31:
	.ascii	"AVMEDIA_TYPE_SUBTITLE\000"
.LASF120:
	.ascii	"AVCOL_TRC_NB\000"
.LASF80:
	.ascii	"type\000"
.LASF58:
	.ascii	"AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF76:
	.ascii	"AVOption\000"
.LASF452:
	.ascii	"exp2\000"
.LASF36:
	.ascii	"AV_PICTURE_TYPE_NONE\000"
.LASF394:
	.ascii	"eval_mode\000"
.LASF453:
	.ascii	"av_frame_get_side_data\000"
.LASF279:
	.ascii	"internal\000"
.LASF201:
	.ascii	"album_gain\000"
.LASF254:
	.ascii	"color_trc\000"
.LASF258:
	.ascii	"pkt_pos\000"
.LASF221:
	.ascii	"AV_FRAME_DATA_GOP_TIMECODE\000"
.LASF263:
	.ascii	"qscale_table\000"
.LASF118:
	.ascii	"AVCOL_TRC_SMPTEST2084\000"
.LASF343:
	.ascii	"aresample_swr_opts\000"
.LASF204:
	.ascii	"AVBufferRef\000"
.LASF176:
	.ascii	"AV_OPT_TYPE_INT64\000"
.LASF218:
	.ascii	"AV_FRAME_DATA_SKIP_SAMPLES\000"
.LASF304:
	.ascii	"max_samples\000"
.LASF95:
	.ascii	"AVCOL_PRI_SMPTE170M\000"
.LASF71:
	.ascii	"child_next\000"
.LASF338:
	.ascii	"filters\000"
.LASF422:
	.ascii	"expr\000"
.LASF224:
	.ascii	"AVFrame\000"
.LASF52:
	.ascii	"AV_CLASS_CATEGORY_FILTER\000"
.LASF459:
	.ascii	"ff_get_audio_buffer\000"
.LASF356:
	.ascii	"all_layouts\000"
.LASF467:
	.ascii	"strcmp\000"
.LASF215:
	.ascii	"AV_FRAME_DATA_DISPLAYMATRIX\000"
.LASF326:
	.ascii	"priv_class\000"
.LASF187:
	.ascii	"AV_OPT_TYPE_VIDEO_RATE\000"
.LASF318:
	.ascii	"needs_writable\000"
.LASF188:
	.ascii	"AV_OPT_TYPE_DURATION\000"
.LASF10:
	.ascii	"short unsigned int\000"
.LASF295:
	.ascii	"request_samples\000"
.LASF127:
	.ascii	"AVCOL_SPC_BT470BG\000"
.LASF365:
	.ascii	"PRECISION_FLOAT\000"
.LASF321:
	.ascii	"formats\000"
.LASF384:
	.ascii	"VAR_VARS_NB\000"
.LASF158:
	.ascii	"butterflies_float\000"
.LASF337:
	.ascii	"AVFilterGraph\000"
.LASF53:
	.ascii	"AV_CLASS_CATEGORY_BITSTREAM_FILTER\000"
.LASF412:
	.ascii	"sample_fmts\000"
.LASF197:
	.ascii	"is_range\000"
.LASF179:
	.ascii	"AV_OPT_TYPE_STRING\000"
.LASF303:
	.ascii	"min_samples\000"
.LASF299:
	.ascii	"age_index\000"
.LASF1:
	.ascii	"double\000"
.LASF390:
	.ascii	"VolumeContext\000"
.LASF51:
	.ascii	"AV_CLASS_CATEGORY_DECODER\000"
.LASF241:
	.ascii	"repeat_pict\000"
.LASF290:
	.ascii	"out_formats\000"
.LASF268:
	.ascii	"av_class\000"
.LASF275:
	.ascii	"nb_outputs\000"
.LASF341:
	.ascii	"resample_lavr_opts\000"
.LASF137:
	.ascii	"AVCOL_RANGE_JPEG\000"
.LASF229:
	.ascii	"nb_samples\000"
.LASF102:
	.ascii	"AVCOL_TRC_RESERVED0\000"
.LASF39:
	.ascii	"AV_PICTURE_TYPE_B\000"
.LASF220:
	.ascii	"AV_FRAME_DATA_MASTERING_DISPLAY_METADATA\000"
.LASF470:
	.ascii	"/Users/meijian/Desktop/ffmpeg_mac/ffmpeg\000"
.LASF60:
	.ascii	"AV_CLASS_CATEGORY_DEVICE_OUTPUT\000"
.LASF281:
	.ascii	"enable_str\000"
.LASF288:
	.ascii	"time_base\000"
.LASF297:
	.ascii	"current_pts\000"
.LASF284:
	.ascii	"is_disabled\000"
.LASF175:
	.ascii	"AV_OPT_TYPE_INT\000"
.LASF213:
	.ascii	"AV_FRAME_DATA_DOWNMIX_INFO\000"
.LASF103:
	.ascii	"AVCOL_TRC_BT709\000"
.LASF442:
	.ascii	"av_expr_free\000"
.LASF110:
	.ascii	"AVCOL_TRC_LINEAR\000"
.LASF93:
	.ascii	"AVCOL_PRI_BT470M\000"
.LASF376:
	.ascii	"VAR_POS\000"
.LASF182:
	.ascii	"AV_OPT_TYPE_DICT\000"
.LASF64:
	.ascii	"AVClass\000"
.LASF425:
	.ascii	"inlink\000"
.LASF44:
	.ascii	"AVRational\000"
.LASF89:
	.ascii	"AVCOL_PRI_RESERVED0\000"
	.ident	"GCC: (GNU) 4.9 20140827 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
