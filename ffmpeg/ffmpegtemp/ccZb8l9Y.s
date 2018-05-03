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
	.file	"af_afade.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.type	init, %function
init:
.LFB65:
	.file 1 "libavfilter/af_afade.c"
	.loc 1 261 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 262 0
	ldr	r1, [r0, #36]
.LVL1:
	.loc 1 264 0
	mvn	r2, #0
	ldr	ip, [r1, #16]
	ldrd	r0, [r1, #24]
.LVL2:
	subs	r2, r2, ip
	mvn	r3, #-2147483648
	sbc	r3, r3, ip, asr #31
	cmp	r2, r0
	sbcs	r3, r3, r1
	.loc 1 268 0
	mvnlt	r0, #21
	movge	r0, #0
	bx	lr
	.cfi_endproc
.LFE65:
	.size	init, .-init
	.text
	.align	2
	.type	config_output, %function
config_output:
.LFB64:
	.loc 1 199 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3:
	.loc 1 203 0
	ldr	r3, [r0, #52]
	.loc 1 201 0
	ldr	r2, [r0]
	.loc 1 203 0
	sub	r3, r3, #1
	.loc 1 199 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r5, r0
.LVL4:
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 1 201 0
	ldr	r4, [r2, #36]
.LVL5:
	.loc 1 203 0
	cmp	r3, #8
	addls	pc, pc, r3, asl #2
	b	.L5
.L7:
	b	.L6
	b	.L8
	b	.L9
	b	.L10
	b	.L5
	b	.L11
	b	.L12
	b	.L13
	b	.L14
	.p2align 1
.L12:
	.loc 1 211 0
	ldr	r3, .L25
.LPIC7:
	add	r3, pc, r3
	str	r3, [r4, #80]
.LVL6:
.L5:
	.loc 1 214 0
	ldrd	r0, [r4, #32]
.LVL7:
	orrs	r3, r0, r1
	beq	.L15
	.loc 1 215 0
	ldr	r2, [r5, #48]
	ldr	r6, .L25+4
	mov	r7, #0
	mov	r3, r2, asr #31
	strd	r6, [sp]
	bl	av_rescale(PLT)
.LVL8:
	str	r0, [r4, #16]
.L15:
	.loc 1 216 0
	ldrd	r0, [r4, #40]
	orrs	r3, r0, r1
	beq	.L16
	.loc 1 217 0
	ldr	r2, [r5, #48]
	ldr	r6, .L25+4
	mov	r7, #0
	mov	r3, r2, asr #31
	strd	r6, [sp]
	bl	av_rescale(PLT)
.LVL9:
	strd	r0, [r4, #24]
.L16:
	.loc 1 220 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LVL10:
.L14:
	.cfi_restore_state
	.loc 1 205 0
	ldr	r3, .L25+8
.LPIC1:
	add	r3, pc, r3
	str	r3, [r4, #80]
.LVL11:
	b	.L5
.LVL12:
.L6:
	.loc 1 208 0
	ldr	r3, .L25+12
.LPIC4:
	add	r3, pc, r3
	str	r3, [r4, #80]
.LVL13:
	b	.L5
.LVL14:
.L8:
	.loc 1 210 0
	ldr	r3, .L25+16
.LPIC6:
	add	r3, pc, r3
	str	r3, [r4, #80]
.LVL15:
	b	.L5
.LVL16:
.L9:
	.loc 1 206 0
	ldr	r3, .L25+20
.LPIC2:
	add	r3, pc, r3
	str	r3, [r4, #80]
.LVL17:
	b	.L5
.LVL18:
.L10:
	.loc 1 204 0
	ldr	r3, .L25+24
.LPIC0:
	add	r3, pc, r3
	str	r3, [r4, #80]
.LVL19:
	b	.L5
.LVL20:
.L11:
	.loc 1 209 0
	ldr	r3, .L25+28
.LPIC5:
	add	r3, pc, r3
	str	r3, [r4, #80]
.LVL21:
	b	.L5
.LVL22:
.L13:
	.loc 1 207 0
	ldr	r3, .L25+32
.LPIC3:
	add	r3, pc, r3
	str	r3, [r4, #80]
.LVL23:
	b	.L5
.L26:
	.align	2
.L25:
	.word	fade_samples_s32p-(.LPIC7+8)
	.word	1000000
	.word	fade_samples_dblp-(.LPIC1+8)
	.word	fade_samples_s16-(.LPIC4+8)
	.word	fade_samples_s32-(.LPIC6+8)
	.word	fade_samples_flt-(.LPIC2+8)
	.word	fade_samples_dbl-(.LPIC0+8)
	.word	fade_samples_s16p-(.LPIC5+8)
	.word	fade_samples_fltp-(.LPIC3+8)
	.cfi_endproc
.LFE64:
	.size	config_output, .-config_output
	.global	__aeabi_l2d
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_dsub
	.global	__aeabi_dcmple
	.align	2
	.type	fade_gain, %function
fade_gain:
.LFB55:
	.loc 1 94 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL24:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 98 0
	mov	r1, r3
	.loc 1 94 0
	mov	r6, r0
	.loc 1 98 0
	mov	r0, r2
.LVL25:
	bl	__aeabi_l2d(PLT)
.LVL26:
	.loc 1 94 0
	ldr	r7, [sp, #24]
	.loc 1 98 0
	mov	r4, r0
	mov	r0, r7
	mov	r5, r1
	bl	__aeabi_i2d(PLT)
.LVL27:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv(PLT)
.LVL28:
.LBB10:
.LBB11:
	.file 2 "./libavutil/common.h"
	.loc 2 299 0
	mov	r2, #0
	mov	r3, #0
.LBE11:
.LBE10:
	.loc 1 98 0
	mov	r4, r0
	mov	r5, r1
.LVL29:
.LBB14:
.LBB12:
	.loc 2 299 0
	bl	__aeabi_dcmplt(PLT)
.LVL30:
	cmp	r0, #0
	bne	.L50
	.loc 2 300 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L64
	bl	__aeabi_dcmpgt(PLT)
.LVL31:
	cmp	r0, #0
	.loc 2 300 0 is_stmt 0 discriminator 1
	ldrne	r5, .L64
	movne	r4, #0
.LVL32:
.L28:
.LBE12:
.LBE14:
	.loc 1 100 0 is_stmt 1
	sub	r0, r6, #1
	cmp	r0, #14
	addls	pc, pc, r0, asl #2
	b	.L29
.L31:
	b	.L30
	b	.L32
	b	.L33
	b	.L34
	b	.L35
	b	.L36
	b	.L37
	b	.L38
	b	.L39
	b	.L40
	b	.L41
	b	.L42
	b	.L43
	b	.L44
	b	.L45
	.p2align 1
.L33:
	.loc 1 112 0
	ldr	r2, .L64+4
	ldr	r3, .L64+8
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL33:
	bl	cos(PLT)
.LVL34:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L64
	bl	__aeabi_dsub(PLT)
.LVL35:
.L60:
	.loc 1 147 0 discriminator 1
	mov	r2, #0
	ldr	r3, .L64+12
	bl	__aeabi_dmul(PLT)
.LVL36:
	mov	r4, r0
	mov	r5, r1
.LVL37:
.L29:
	.loc 1 152 0
	mov	r0, r4
	mov	r1, r5
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL38:
.L50:
.LBB15:
.LBB13:
	.loc 2 299 0 discriminator 1
	mov	r4, #0
.LVL39:
	mov	r5, #0
	b	.L28
.L45:
.LBE13:
.LBE15:
	.loc 1 147 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L64+12
	bl	__aeabi_dcmple(PLT)
.LVL40:
	cmp	r0, #0
	beq	.L57
	.loc 1 147 0 is_stmt 0 discriminator 1
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL41:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dmul(PLT)
.LVL42:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL43:
	b	.L60
.L30:
	.loc 1 102 0 is_stmt 1
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L64+4
	ldr	r3, .L64+8
	bl	__aeabi_dmul(PLT)
.LVL44:
	ldr	r3, .L64+12
	mov	r2, #0
	bl	__aeabi_dmul(PLT)
.LVL45:
	.loc 1 152 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL46:
	.loc 1 102 0
	b	sin(PLT)
.LVL47:
.L32:
	.cfi_restore_state
	.loc 1 109 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL48:
	mov	r2, #0
	ldr	r3, .L64
	bl	__aeabi_dsub(PLT)
.LVL49:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dmul(PLT)
.LVL50:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL51:
	mov	r2, #0
	ldr	r3, .L64
	bl	__aeabi_dadd(PLT)
.LVL52:
	ldr	r2, .L64+4
	ldr	r3, .L64+16
	bl	__aeabi_dmul(PLT)
.LVL53:
	bl	cos(PLT)
.LVL54:
.L59:
	.loc 1 126 0
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L64
	bl	__aeabi_dsub(PLT)
.LVL55:
	mov	r4, r0
	mov	r5, r1
.LVL56:
	.loc 1 127 0
	b	.L29
.LVL57:
.L34:
	.loc 1 123 0
	mov	r0, r4
	mov	r1, r5
	bl	log10(PLT)
.LVL58:
	ldr	r2, .L64+20
	ldr	r3, .L64+24
	bl	__aeabi_dmul(PLT)
.LVL59:
	mov	r2, #0
	ldr	r3, .L64
	bl	__aeabi_dadd(PLT)
.LVL60:
.LBB16:
.LBB17:
	.loc 2 299 0
	mov	r2, #0
	mov	r3, #0
.LBE17:
.LBE16:
	.loc 1 123 0
	mov	r4, r0
	mov	r5, r1
.LVL61:
.LBB20:
.LBB18:
	.loc 2 299 0
	bl	__aeabi_dcmplt(PLT)
.LVL62:
	cmp	r0, #0
	bne	.L52
	.loc 2 300 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L64
	bl	__aeabi_dcmpgt(PLT)
.LVL63:
	cmp	r0, #0
	.loc 2 300 0 is_stmt 0 discriminator 1
	movne	r4, #0
.LVL64:
	ldrne	r5, .L64
	b	.L29
.LVL65:
.L35:
.LBE18:
.LBE20:
	.loc 1 129 0 is_stmt 1
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L64
	bl	__aeabi_dsub(PLT)
.LVL66:
	mov	r2, #0
	ldr	r3, .L64
	mov	r6, r0
.LVL67:
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub(PLT)
.LVL68:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
.L62:
	.loc 1 147 0 discriminator 2
	bl	__aeabi_dmul(PLT)
.LVL69:
	mov	r2, #0
	ldr	r3, .L64
	bl	__aeabi_dadd(PLT)
.LVL70:
	mov	r4, r0
	mov	r5, r1
	b	.L29
.LVL71:
.L36:
	.loc 1 132 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul(PLT)
.LVL72:
	mov	r4, r0
	mov	r5, r1
.LVL73:
	.loc 1 133 0
	b	.L29
.LVL74:
.L37:
	.loc 1 135 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL75:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL76:
	mov	r4, r0
	mov	r5, r1
.LVL77:
	.loc 1 136 0
	b	.L29
.LVL78:
.L38:
	.loc 1 138 0
	mov	r0, r4
	mov	r1, r5
	.loc 1 152 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL79:
	.loc 1 138 0
	b	sqrt(PLT)
.LVL80:
.L39:
	.cfi_restore_state
	.loc 1 141 0
	mov	r0, r4
	mov	r1, r5
	.loc 1 152 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL81:
	.loc 1 141 0
	b	cbrt(PLT)
.LVL82:
.L40:
	.cfi_restore_state
	.loc 1 126 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L64
	bl	__aeabi_dsub(PLT)
.LVL83:
	bl	sqrt(PLT)
.LVL84:
	b	.L59
.L41:
	.loc 1 120 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L64
	bl	__aeabi_dsub(PLT)
.LVL85:
	ldr	r3, .L64+28
	ldr	r2, .L64+32
	bl	__aeabi_dmul(PLT)
.LVL86:
	.loc 1 152 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL87:
	.loc 1 120 0
	b	exp(PLT)
.LVL88:
.L42:
	.cfi_restore_state
	.loc 1 106 0
	mov	r0, r4
	mov	r1, r5
	bl	asin(PLT)
.LVL89:
	ldr	r2, .L64+36
	ldr	r3, .L64+40
	bl	__aeabi_dmul(PLT)
.LVL90:
	mov	r4, r0
	mov	r5, r1
.LVL91:
	.loc 1 107 0
	b	.L29
.LVL92:
.L43:
	.loc 1 116 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL93:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L64
	bl	__aeabi_dsub(PLT)
.LVL94:
	bl	acos(PLT)
.LVL95:
	ldr	r2, .L64+36
	ldr	r3, .L64+44
	bl	__aeabi_dmul(PLT)
.LVL96:
	mov	r4, r0
	mov	r5, r1
.LVL97:
	.loc 1 117 0
	b	.L29
.LVL98:
.L44:
	.loc 1 144 0
	mov	r1, r5
	mov	r0, r4
	mov	r2, #0
	ldr	r3, .L64+12
	bl	__aeabi_dcmple(PLT)
.LVL99:
	.loc 1 144 0 is_stmt 0 discriminator 1
	mov	r1, r5
	.loc 1 144 0
	cmp	r0, #0
	.loc 1 144 0 discriminator 1
	mov	r0, r4
	.loc 1 144 0
	bne	.L63
	.loc 1 144 0 discriminator 2
	mov	r2, #0
	ldr	r3, .L64
	bl	__aeabi_dsub(PLT)
.LVL100:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd(PLT)
.LVL101:
	.loc 1 144 0 discriminator 4
	bl	cbrt(PLT)
.LVL102:
.L61:
	.loc 1 147 0 is_stmt 1 discriminator 2
	mov	r2, #0
	ldr	r3, .L64+12
	b	.L62
.LVL103:
.L63:
	.loc 1 144 0 discriminator 1
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd(PLT)
.LVL104:
	.loc 1 144 0 is_stmt 0 discriminator 2
	bl	cbrt(PLT)
.LVL105:
	b	.L60
.L57:
	.loc 1 147 0 is_stmt 1 discriminator 2
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L64
	bl	__aeabi_dsub(PLT)
.LVL106:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd(PLT)
.LVL107:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul(PLT)
.LVL108:
	mov	r2, #0
	ldr	r3, .L64
	mov	r6, r0
.LVL109:
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub(PLT)
.LVL110:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd(PLT)
.LVL111:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul(PLT)
.LVL112:
	b	.L61
.LVL113:
.L52:
.LBB21:
.LBB19:
	.loc 2 299 0 discriminator 1
	mov	r4, #0
.LVL114:
	mov	r5, #0
	b	.L29
.L65:
	.align	2
.L64:
	.word	1072693248
	.word	1413754136
	.word	1074340347
	.word	1071644672
	.word	1072243195
	.word	-1717986918
	.word	1070176665
	.word	-1071184226
	.word	715303514
	.word	1841940611
	.word	1071931184
	.word	1070882608
.LBE19:
.LBE21:
	.cfi_endproc
.LFE55:
	.size	fade_gain, .-fade_gain
	.global	__aeabi_d2iz
	.align	2
	.type	crossfade_samples_s32p, %function
crossfade_samples_s32p:
.LFB70:
	.loc 1 424 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL115:
	.loc 1 424 0 is_stmt 0 discriminator 7
	cmp	r3, #0
	bxle	lr
	.loc 1 424 0
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
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	str	r3, [sp, #48]
	sub	r3, r3, #1
.LVL116:
	adds	r4, r3, #1
	str	r1, [sp, #56]
	mov	r1, #0
.LVL117:
	adc	r5, r1, #0
	str	r2, [sp, #60]
	mov	r2, r0
.LVL118:
	strd	r4, [sp, #32]
	mov	r4, r3
	mov	r5, r3, asr #31
	mov	r3, r2
	ldr	r2, [sp, #104]
	str	r0, [sp, #52]
	add	r3, r3, r2, asl #2
	mov	fp, r3
	.loc 1 424 0 is_stmt 1 discriminator 7
	mov	r2, #0
	mov	r3, #0
	strd	r4, [sp, #40]
	strd	r2, [sp, #24]
.LVL119:
.L69:
.LBB22:
	.loc 1 424 0 is_stmt 0 discriminator 8
	ldrd	r4, [sp, #24]
	ldrd	r2, [sp, #40]
	ldr	r6, [sp, #48]
	subs	r2, r2, r4
	sbc	r3, r3, r5
	str	r6, [sp]
	ldr	r0, [sp, #108]
	bl	fade_gain(PLT)
.LVL120:
	mov	r3, r5
	str	r6, [sp]
	mov	r2, r4
	strd	r0, [sp, #8]
.LVL121:
	ldr	r0, [sp, #112]
.LVL122:
	bl	fade_gain(PLT)
.LVL123:
	.loc 1 424 0 discriminator 3
	ldr	r3, [sp, #104]
	cmp	r3, #0
	.loc 1 424 0 discriminator 8
	strd	r0, [sp, #16]
.LVL124:
	.loc 1 424 0 discriminator 3
	ble	.L72
	ldr	r3, [sp, #24]
	ldr	r4, [sp, #52]
	mov	r5, r3, asl #2
	ldr	r3, [sp, #56]
	sub	r7, r3, #4
	ldr	r3, [sp, #60]
	sub	r6, r3, #4
.LVL125:
.L71:
.LBB23:
	.loc 1 424 0 discriminator 5
	ldr	r3, [r7, #4]!
	ldr	r10, [r4], #4
.LVL126:
	ldr	r0, [r3, r5]
	bl	__aeabi_i2d(PLT)
.LVL127:
	ldrd	r2, [sp, #8]
	bl	__aeabi_dmul(PLT)
.LVL128:
	ldr	r3, [r6, #4]!
	mov	r8, r0
	ldr	r0, [r3, r5]
	mov	r9, r1
	bl	__aeabi_i2d(PLT)
.LVL129:
	ldrd	r2, [sp, #16]
	bl	__aeabi_dmul(PLT)
.LVL130:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd(PLT)
.LVL131:
	bl	__aeabi_d2iz(PLT)
.LVL132:
.LBE23:
	.loc 1 424 0 discriminator 3
	cmp	r4, fp
.LBB24:
	.loc 1 424 0 discriminator 5
	str	r0, [r10, r5]
.LBE24:
	.loc 1 424 0 discriminator 3
	bne	.L71
.LVL133:
.L72:
	ldrd	r2, [sp, #24]
.LBE22:
	.loc 1 424 0 discriminator 7
	ldrd	r0, [sp, #32]
	adds	r2, r2, #1
	adc	r3, r3, #0
	cmp	r3, r1
	cmpeq	r2, r0
	strd	r2, [sp, #24]
.LVL134:
	bne	.L69
	.loc 1 424 0
	add	sp, sp, #68
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE70:
	.size	crossfade_samples_s32p, .-crossfade_samples_s32p
	.align	2
	.type	crossfade_samples_s16p, %function
crossfade_samples_s16p:
.LFB69:
	.loc 1 423 0 is_stmt 1
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL135:
	.loc 1 423 0 is_stmt 0 discriminator 7
	cmp	r3, #0
	bxle	lr
	.loc 1 423 0
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
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	str	r3, [sp, #48]
	sub	r3, r3, #1
.LVL136:
	adds	r4, r3, #1
	str	r1, [sp, #56]
	mov	r1, #0
.LVL137:
	adc	r5, r1, #0
	str	r2, [sp, #60]
	mov	r2, r0
.LVL138:
	strd	r4, [sp, #32]
	mov	r4, r3
	mov	r5, r3, asr #31
	mov	r3, r2
	ldr	r2, [sp, #104]
	str	r0, [sp, #52]
	add	r3, r3, r2, asl #2
	mov	fp, r3
	.loc 1 423 0 is_stmt 1 discriminator 7
	mov	r2, #0
	mov	r3, #0
	strd	r4, [sp, #40]
	strd	r2, [sp, #24]
.LVL139:
.L81:
.LBB25:
	.loc 1 423 0 is_stmt 0 discriminator 8
	ldrd	r4, [sp, #24]
	ldrd	r2, [sp, #40]
	ldr	r6, [sp, #48]
	subs	r2, r2, r4
	sbc	r3, r3, r5
	str	r6, [sp]
	ldr	r0, [sp, #108]
	bl	fade_gain(PLT)
.LVL140:
	mov	r3, r5
	str	r6, [sp]
	mov	r2, r4
	strd	r0, [sp, #8]
.LVL141:
	ldr	r0, [sp, #112]
.LVL142:
	bl	fade_gain(PLT)
.LVL143:
	.loc 1 423 0 discriminator 3
	ldr	r3, [sp, #104]
	cmp	r3, #0
	.loc 1 423 0 discriminator 8
	strd	r0, [sp, #16]
.LVL144:
	.loc 1 423 0 discriminator 3
	ble	.L84
	ldr	r3, [sp, #24]
	ldr	r4, [sp, #52]
	mov	r5, r3, asl #1
	ldr	r3, [sp, #56]
	sub	r7, r3, #4
	ldr	r3, [sp, #60]
	sub	r6, r3, #4
.LVL145:
.L83:
.LBB26:
	.loc 1 423 0 discriminator 5
	ldr	r3, [r7, #4]!
	ldr	r10, [r4], #4
.LVL146:
	ldrsh	r0, [r3, r5]
	bl	__aeabi_i2d(PLT)
.LVL147:
	ldrd	r2, [sp, #8]
	bl	__aeabi_dmul(PLT)
.LVL148:
	ldr	r3, [r6, #4]!
	mov	r8, r0
	ldrsh	r0, [r3, r5]
	mov	r9, r1
	bl	__aeabi_i2d(PLT)
.LVL149:
	ldrd	r2, [sp, #16]
	bl	__aeabi_dmul(PLT)
.LVL150:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd(PLT)
.LVL151:
	bl	__aeabi_d2iz(PLT)
.LVL152:
.LBE26:
	.loc 1 423 0 discriminator 3
	cmp	r4, fp
.LBB27:
	.loc 1 423 0 discriminator 5
	strh	r0, [r10, r5]	@ movhi
.LBE27:
	.loc 1 423 0 discriminator 3
	bne	.L83
.LVL153:
.L84:
	ldrd	r2, [sp, #24]
.LBE25:
	.loc 1 423 0 discriminator 7
	ldrd	r0, [sp, #32]
	adds	r2, r2, #1
	adc	r3, r3, #0
	cmp	r3, r1
	cmpeq	r2, r0
	strd	r2, [sp, #24]
.LVL154:
	bne	.L81
	.loc 1 423 0
	add	sp, sp, #68
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE69:
	.size	crossfade_samples_s16p, .-crossfade_samples_s16p
	.global	__aeabi_f2d
	.global	__aeabi_d2f
	.align	2
	.type	crossfade_samples_fltp, %function
crossfade_samples_fltp:
.LFB68:
	.loc 1 422 0 is_stmt 1
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL155:
	.loc 1 422 0 is_stmt 0 discriminator 7
	cmp	r3, #0
	bxle	lr
	.loc 1 422 0
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
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	str	r3, [sp, #48]
	sub	r3, r3, #1
.LVL156:
	adds	r4, r3, #1
	str	r1, [sp, #56]
	mov	r1, #0
.LVL157:
	adc	r5, r1, #0
	str	r2, [sp, #60]
	mov	r2, r0
.LVL158:
	strd	r4, [sp, #32]
	mov	r4, r3
	mov	r5, r3, asr #31
	mov	r3, r2
	ldr	r2, [sp, #104]
	str	r0, [sp, #52]
	add	r3, r3, r2, asl #2
	mov	fp, r3
	.loc 1 422 0 is_stmt 1 discriminator 7
	mov	r2, #0
	mov	r3, #0
	strd	r4, [sp, #40]
	strd	r2, [sp, #24]
.LVL159:
.L93:
.LBB28:
	.loc 1 422 0 is_stmt 0 discriminator 8
	ldrd	r4, [sp, #24]
	ldrd	r2, [sp, #40]
	ldr	r6, [sp, #48]
	subs	r2, r2, r4
	sbc	r3, r3, r5
	str	r6, [sp]
	ldr	r0, [sp, #108]
	bl	fade_gain(PLT)
.LVL160:
	mov	r3, r5
	str	r6, [sp]
	mov	r2, r4
	strd	r0, [sp, #8]
.LVL161:
	ldr	r0, [sp, #112]
.LVL162:
	bl	fade_gain(PLT)
.LVL163:
	.loc 1 422 0 discriminator 3
	ldr	r3, [sp, #104]
	cmp	r3, #0
	.loc 1 422 0 discriminator 8
	strd	r0, [sp, #16]
.LVL164:
	.loc 1 422 0 discriminator 3
	ble	.L96
	ldr	r3, [sp, #24]
	ldr	r4, [sp, #52]
	mov	r5, r3, asl #2
	ldr	r3, [sp, #56]
	sub	r7, r3, #4
	ldr	r3, [sp, #60]
	sub	r6, r3, #4
.LVL165:
.L95:
.LBB29:
	.loc 1 422 0 discriminator 5
	ldr	r3, [r7, #4]!
	ldr	r10, [r4], #4
.LVL166:
	ldr	r0, [r3, r5]	@ float
	bl	__aeabi_f2d(PLT)
.LVL167:
	ldrd	r2, [sp, #8]
	bl	__aeabi_dmul(PLT)
.LVL168:
	ldr	r3, [r6, #4]!
	mov	r8, r0
	ldr	r0, [r3, r5]	@ float
	mov	r9, r1
	bl	__aeabi_f2d(PLT)
.LVL169:
	ldrd	r2, [sp, #16]
	bl	__aeabi_dmul(PLT)
.LVL170:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd(PLT)
.LVL171:
	bl	__aeabi_d2f(PLT)
.LVL172:
.LBE29:
	.loc 1 422 0 discriminator 3
	cmp	r4, fp
.LBB30:
	.loc 1 422 0 discriminator 5
	str	r0, [r10, r5]	@ float
.LBE30:
	.loc 1 422 0 discriminator 3
	bne	.L95
.LVL173:
.L96:
	ldrd	r2, [sp, #24]
.LBE28:
	.loc 1 422 0 discriminator 7
	ldrd	r0, [sp, #32]
	adds	r2, r2, #1
	adc	r3, r3, #0
	cmp	r3, r1
	cmpeq	r2, r0
	strd	r2, [sp, #24]
.LVL174:
	bne	.L93
	.loc 1 422 0
	add	sp, sp, #68
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE68:
	.size	crossfade_samples_fltp, .-crossfade_samples_fltp
	.align	2
	.type	crossfade_samples_dblp, %function
crossfade_samples_dblp:
.LFB67:
	.loc 1 421 0 is_stmt 1
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL175:
	.loc 1 421 0 is_stmt 0 discriminator 7
	cmp	r3, #0
	bxle	lr
	.loc 1 421 0
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
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	str	r3, [sp, #48]
	sub	r3, r3, #1
.LVL176:
	adds	r4, r3, #1
	str	r1, [sp, #56]
	mov	r1, #0
.LVL177:
	adc	r5, r1, #0
	str	r2, [sp, #60]
	mov	r2, r0
.LVL178:
	strd	r4, [sp, #32]
	mov	r4, r3
	mov	r5, r3, asr #31
	mov	r3, r2
	ldr	r2, [sp, #104]
	str	r0, [sp, #52]
	add	r3, r3, r2, asl #2
	str	r3, [sp, #20]
	.loc 1 421 0 is_stmt 1 discriminator 7
	mov	r2, #0
	mov	r3, #0
	strd	r4, [sp, #40]
	strd	r2, [sp, #24]
.LVL179:
.L105:
.LBB31:
	.loc 1 421 0 is_stmt 0 discriminator 8
	ldrd	r4, [sp, #24]
	ldrd	r2, [sp, #40]
	ldr	r6, [sp, #48]
	subs	r2, r2, r4
	sbc	r3, r3, r5
	str	r6, [sp]
	ldr	r0, [sp, #108]
	bl	fade_gain(PLT)
.LVL180:
	mov	r3, r5
	str	r6, [sp]
	mov	r2, r4
	mov	r8, r0
	ldr	r0, [sp, #112]
	mov	r9, r1
.LVL181:
	bl	fade_gain(PLT)
.LVL182:
	.loc 1 421 0 discriminator 3
	ldr	r3, [sp, #104]
	cmp	r3, #0
	.loc 1 421 0 discriminator 8
	strd	r0, [sp, #8]
.LVL183:
	.loc 1 421 0 discriminator 3
	ble	.L108
	ldr	r3, [sp, #24]
	ldr	r4, [sp, #52]
	mov	r5, r3, asl #3
	ldr	r3, [sp, #56]
	sub	fp, r3, #4
	ldr	r3, [sp, #60]
	sub	r10, r3, #4
.LVL184:
.L107:
.LBB32:
	.loc 1 421 0 discriminator 5
	ldr	r3, [fp, #4]!
	mov	r0, r8
	ldrd	r2, [r3, r5]
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL185:
	ldr	r3, [r10, #4]!
	ldrd	r2, [r3, r5]
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, [sp, #8]
	bl	__aeabi_dmul(PLT)
.LVL186:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
.LVL187:
	ldr	r3, [r4], #4
.LVL188:
.LBE32:
	.loc 1 421 0 discriminator 3
	ldr	r2, [sp, #20]
	cmp	r4, r2
.LBB33:
	.loc 1 421 0 discriminator 5
	strd	r0, [r3, r5]
.LBE33:
	.loc 1 421 0 discriminator 3
	bne	.L107
.LVL189:
.L108:
	ldrd	r2, [sp, #24]
.LBE31:
	.loc 1 421 0 discriminator 7
	ldrd	r0, [sp, #32]
	adds	r2, r2, #1
	adc	r3, r3, #0
	cmp	r3, r1
	cmpeq	r2, r0
	strd	r2, [sp, #24]
.LVL190:
	bne	.L105
	.loc 1 421 0
	add	sp, sp, #68
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE67:
	.size	crossfade_samples_dblp, .-crossfade_samples_dblp
	.align	2
	.type	filter_frame, %function
filter_frame:
.LFB66:
	.loc 1 271 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL191:
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
	.loc 1 272 0
	ldr	r3, [r0, #8]
	.loc 1 271 0
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 1 276 0
	ldrd	r6, [r1, #104]
	ldr	ip, [r0, #48]
	.loc 1 271 0
	str	r1, [sp, #28]
	mov	r5, r0
	.loc 1 274 0
	mov	r10, r1
	.loc 1 276 0
	mov	r0, #1
.LVL192:
	add	r1, sp, #40
.LVL193:
	.loc 1 273 0
	ldr	r2, [r3, #28]
	.loc 1 276 0
	str	ip, [sp, #36]
	str	r0, [sp, #32]
	ldmdb	r1, {r0, r1}
	.loc 1 272 0
	ldr	r4, [r3, #36]
.LVL194:
	.loc 1 276 0
	add	r3, r5, #56
	.loc 1 273 0
	ldr	r9, [r2]
.LVL195:
	.loc 1 274 0
	ldr	r8, [r10, #76]
.LVL196:
	.loc 1 276 0
	ldmia	r3, {r2, r3}
	stmia	sp, {r0, r1}
	mov	r0, r6
	mov	r1, r7
	bl	av_rescale_q(PLT)
.LVL197:
	.loc 1 278 0
	ldr	r3, [r4, #4]
	cmp	r3, #0
	.loc 1 276 0
	mov	r6, r0
	mov	r7, r1
.LVL198:
	.loc 1 278 0
	bne	.L115
	.loc 1 278 0 is_stmt 0 discriminator 1
	ldr	r1, [r4, #16]
	ldrd	r2, [r4, #24]
	adds	r2, r2, r1
	adc	r3, r3, r1, asr #31
	cmp	r2, r6
	sbcs	r3, r3, r7
	blt	.L116
.L117:
	.loc 1 282 0 is_stmt 1
	mov	r0, r10
	bl	av_frame_is_writable(PLT)
.LVL199:
	cmp	r0, #0
	beq	.L119
	.loc 1 283 0
	ldr	r5, [sp, #28]
.LVL200:
.L120:
	.loc 1 291 0
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L134
	.loc 1 292 0
	ldr	r1, [r4, #16]
	ldrd	r2, [r4, #24]
	adds	r2, r2, r1
	adc	r3, r3, r1, asr #31
	cmp	r2, r6
	sbcs	r1, r3, r7
	bge	.L124
.L122:
	.loc 1 293 0
	mov	r0, r5
	ldr	r4, [r5, #64]
.LVL201:
	bl	av_frame_get_channels(PLT)
.LVL202:
	.loc 1 293 0 is_stmt 0 discriminator 1
	ldr	r1, [r5, #80]
	str	r1, [sp]
	mov	r2, r8
	mov	r1, #0
	.loc 1 293 0
	mov	r3, r0
	.loc 1 293 0 discriminator 1
	mov	r0, r4
	bl	av_samples_set_silence(PLT)
.LVL203:
.L125:
	.loc 1 309 0 is_stmt 1
	ldr	r3, [sp, #28]
	cmp	r3, r5
	beq	.L128
	.loc 1 310 0
	add	r0, sp, #28
.LVL204:
	bl	av_frame_free(PLT)
.LVL205:
.L128:
	.loc 1 312 0
	mov	r0, r9
	mov	r1, r5
	bl	ff_filter_frame(PLT)
.LVL206:
	.loc 1 313 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL207:
.L115:
	.cfi_restore_state
	.loc 1 279 0
	ldrd	r0, [r4, #24]
	adds	r2, r6, r8
	adc	r3, r7, r8, asr #31
	cmp	r2, r0
	sbcs	r3, r3, r1
	bge	.L117
.L116:
	.loc 1 280 0
	mov	r0, r9
	mov	r1, r10
	bl	ff_filter_frame(PLT)
.LVL208:
.L118:
	.loc 1 313 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL209:
.L134:
	.cfi_restore_state
	.loc 1 291 0 discriminator 1
	ldrd	r2, [r4, #24]
	adds	r0, r6, r8
	adc	r1, r7, r8, asr #31
	cmp	r0, r2
	sbcs	r1, r1, r3
	blt	.L122
.LBB34:
	.loc 1 299 0
	subs	r6, r6, r2
.LVL210:
	sbc	r7, r7, r3
.LVL211:
.L126:
	.loc 1 303 0
	ldr	r3, [sp, #28]
	ldr	fp, [r5, #64]
	ldr	r1, [r3, #64]
	mov	r0, r3
	str	r1, [sp, #24]
	ldr	r10, [r4, #80]
	bl	av_frame_get_channels(PLT)
.LVL212:
	ldr	r2, [r4, #4]
	.loc 1 303 0 is_stmt 0 discriminator 5
	strd	r6, [sp, #8]
	.loc 1 303 0
	cmp	r2, #0
	.loc 1 303 0 discriminator 2
	mvnne	r2, #0
	moveq	r2, #1
	.loc 1 303 0 discriminator 5
	str	r2, [sp]
	ldr	r2, [r4, #16]
	str	r2, [sp, #16]
	ldr	ip, [r4, #8]
	ldr	r1, [sp, #24]
	mov	r2, r8
	str	ip, [sp, #20]
	.loc 1 303 0
	mov	r3, r0
	.loc 1 303 0 discriminator 5
	mov	r0, fp
	blx	r10
.LVL213:
	b	.L125
.LVL214:
.L119:
.LBE34:
	.loc 1 285 0 is_stmt 1
	mov	r0, r5
	mov	r1, r8
	bl	ff_get_audio_buffer(PLT)
.LVL215:
	.loc 1 286 0
	subs	r5, r0, #0
.LVL216:
	beq	.L129
	.loc 1 288 0
	ldr	r1, [sp, #28]
	bl	av_frame_copy_props(PLT)
.LVL217:
	b	.L120
.L124:
.LBB35:
	.loc 1 301 0
	subs	r6, r2, r6
.LVL218:
	sbc	r7, r3, r7
.LVL219:
	b	.L126
.LVL220:
.L129:
.LBE35:
	.loc 1 287 0
	mvn	r0, #11
.LVL221:
	b	.L118
	.cfi_endproc
.LFE66:
	.size	filter_frame, .-filter_frame
	.section	.text.unlikely
	.align	2
	.type	uninit, %function
uninit:
.LFB78:
	.loc 1 627 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL222:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 628 0
	ldr	r4, [r0, #36]
.LVL223:
	.loc 1 630 0
	ldr	r0, [r4, #60]
.LVL224:
	bl	av_audio_fifo_free(PLT)
.LVL225:
	.loc 1 631 0
	ldr	r0, [r4, #64]
	.loc 1 632 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL226:
	.loc 1 631 0
	b	av_audio_fifo_free(PLT)
.LVL227:
	.cfi_endproc
.LFE78:
	.size	uninit, .-uninit
	.text
	.align	2
	.type	acrossfade_request_frame, %function
acrossfade_request_frame:
.LFB76:
	.loc 1 555 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL228:
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 556 0
	ldr	r3, [r0]
.LVL229:
	.loc 1 555 0
	mov	r6, r0
	.loc 1 557 0
	ldr	r5, [r3, #36]
.LVL230:
.LBB36:
	.loc 1 561 0
	ldr	r3, [r3, #16]
.LVL231:
.LBE36:
	.loc 1 560 0
	ldr	r4, [r5, #52]
	cmp	r4, #0
	bne	.L138
.LVL232:
.LBB37:
	.loc 1 562 0
	ldr	r0, [r3]
.LVL233:
	bl	ff_request_frame(PLT)
.LVL234:
	.loc 1 565 0
	ldr	r3, .L144
	cmp	r0, r3
	.loc 1 566 0
	moveq	r3, #1
	streq	r3, [r5, #52]
	.loc 1 565 0
	beq	.L139
.L141:
.LBE37:
.LBB38:
	.loc 1 573 0
	mov	r4, r0
.LVL235:
.L139:
.LBE38:
	.loc 1 585 0
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.LVL236:
.L138:
.LBB41:
	.loc 1 571 0
	ldr	r0, [r5, #64]
.LVL237:
	.loc 1 570 0
	ldr	r4, [r3, #4]
.LVL238:
	.loc 1 571 0
	bl	av_audio_fifo_size(PLT)
.LVL239:
	mov	r7, r0
.LVL240:
	.loc 1 573 0
	mov	r0, r4
.LVL241:
	bl	ff_request_frame(PLT)
.LVL242:
	.loc 1 574 0
	ldr	r2, .L144
	cmp	r7, #0
	movle	r3, #0
	movgt	r3, #1
	cmp	r0, r2
	movne	r3, #0
	cmp	r3, #0
	beq	.L141
.LBB39:
	.loc 1 575 0
	mov	r0, r6
.LVL243:
	mov	r1, r7
	bl	ff_get_audio_buffer(PLT)
.LVL244:
	.loc 1 576 0
	subs	r4, r0, #0
.LVL245:
	beq	.L142
	.loc 1 579 0
	ldr	r1, [r4, #64]
	ldr	r0, [r5, #64]
.LVL246:
	mov	r2, r7
	bl	av_audio_fifo_read(PLT)
.LVL247:
	.loc 1 580 0
	mov	r0, r6
	mov	r1, r4
.LBE39:
.LBE41:
	.loc 1 585 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL248:
.LBB42:
.LBB40:
	.loc 1 580 0
	b	ff_filter_frame(PLT)
.LVL249:
.L142:
	.cfi_restore_state
	.loc 1 577 0
	mvn	r4, #11
	b	.L139
.L145:
	.align	2
.L144:
	.word	-541478725
.LBE40:
.LBE42:
	.cfi_endproc
.LFE76:
	.size	acrossfade_request_frame, .-acrossfade_request_frame
	.align	2
	.type	acrossfade_filter_frame, %function
acrossfade_filter_frame:
.LFB75:
	.loc 1 432 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL250:
	.loc 1 433 0
	ldr	r3, [r0, #8]
.LVL251:
	.loc 1 432 0
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
	.loc 1 434 0
	ldr	r4, [r3, #36]
.LVL252:
	.loc 1 436 0
	mov	r2, #0
	.loc 1 439 0
	ldr	lr, [r4, #56]
	.loc 1 435 0
	ldr	ip, [r3, #28]
	.loc 1 432 0
	sub	sp, sp, #92
	.cfi_def_cfa_offset 128
	.loc 1 439 0
	cmp	lr, r2
	.loc 1 432 0
	str	r1, [sp, #28]
	.loc 1 435 0
	ldr	r6, [ip]
.LVL253:
	.loc 1 436 0
	str	r2, [sp, #32]
	str	r2, [sp, #36]
.LVL254:
	.loc 1 439 0
	bne	.L182
	.loc 1 444 0
	ldr	r3, [r3, #16]
.LVL255:
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L183
	.loc 1 460 0
	ldr	r0, [r4, #64]
.LVL256:
	bl	av_audio_fifo_size(PLT)
.LVL257:
	ldr	r3, [r4, #16]
	cmp	r0, r3
	bge	.L153
	.loc 1 461 0
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L156
	.loc 1 461 0 is_stmt 0 discriminator 1
	ldr	r0, [r4, #60]
	bl	av_audio_fifo_size(PLT)
.LVL258:
	cmp	r0, #0
	ble	.L156
	.loc 1 462 0 is_stmt 1
	ldr	r0, [r4, #60]
	bl	av_audio_fifo_size(PLT)
.LVL259:
	mov	r5, r0
.LVL260:
	.loc 1 464 0
	mov	r1, r5
	mov	r0, r6
.LVL261:
	bl	ff_get_audio_buffer(PLT)
.LVL262:
	.loc 1 465 0
	mov	r1, r5
	.loc 1 464 0
	str	r0, [sp, #32]
	.loc 1 465 0
	mov	r0, r6
	bl	ff_get_audio_buffer(PLT)
.LVL263:
	.loc 1 466 0
	cmp	r0, #0
	.loc 1 465 0
	str	r0, [sp, #40]
	.loc 1 466 0
	beq	.L181
	.loc 1 466 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L181
	.loc 1 470 0 is_stmt 1
	ldr	r1, [r3, #64]
	mov	r2, r5
	ldr	r0, [r4, #60]
	bl	av_audio_fifo_read(PLT)
.LVL264:
	.loc 1 472 0
	ldr	r1, [sp, #40]
	ldr	r3, [sp, #32]
	.loc 1 473 0
	sub	r2, r5, #1
	.loc 1 472 0
	ldr	r0, [r1, #64]
	ldr	ip, [r6, #152]
	ldr	r1, [r3, #64]
	mvn	lr, #0
	mov	r3, r2, asr #31
	str	lr, [sp]
	strd	r2, [sp, #8]
	str	r5, [sp, #16]
	ldr	r2, [r4, #8]
	mov	r3, ip
	str	r2, [sp, #20]
	mov	r2, r5
	ldr	ip, [r4, #80]
	blx	ip
.LVL265:
	.loc 1 475 0
	add	r3, r6, #56
	ldmia	r3, {r0, r1}
	.loc 1 474 0
	ldrd	r8, [r4, #72]
	ldr	r7, [sp, #40]
	.loc 1 476 0
	mov	r3, #1
	ldr	r2, [r6, #48]
	str	r3, [sp, #56]
	.loc 1 475 0
	add	r3, sp, #56
	.loc 1 474 0
	strd	r8, [r7, #104]
	.loc 1 476 0
	str	r2, [sp, #60]
	.loc 1 475 0
	stmia	sp, {r0, r1}
	mov	r0, r5
	mov	r1, r5, asr #31
	ldmia	r3, {r2, r3}
	bl	av_rescale_q(PLT)
.LVL266:
	adds	r0, r0, r8
	adc	r1, r1, r9
	strd	r0, [r4, #72]
	.loc 1 477 0
	mov	r1, r7
	mov	r0, r6
	bl	ff_filter_frame(PLT)
.LVL267:
	.loc 1 478 0
	subs	r5, r0, #0
.LVL268:
	bge	.L155
	b	.L151
.LVL269:
.L156:
	.loc 1 437 0
	mov	r5, #0
.LVL270:
.L155:
	.loc 1 482 0
	ldr	r3, [sp, #28]
	ldr	r0, [r4, #64]
	ldr	r1, [r3, #64]
	ldr	r2, [r3, #76]
	bl	av_audio_fifo_write(PLT)
.LVL271:
.L151:
	.loc 1 548 0
	add	r0, sp, #28
.LVL272:
	bl	av_frame_free(PLT)
.LVL273:
	.loc 1 549 0
	add	r0, sp, #32
	bl	av_frame_free(PLT)
.LVL274:
	.loc 1 550 0
	add	r0, sp, #36
	bl	av_frame_free(PLT)
.LVL275:
	.loc 1 551 0
	mov	r0, r5
	.loc 1 552 0
	add	sp, sp, #92
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL276:
.L182:
	.cfi_restore_state
	.loc 1 440 0
	ldrd	r8, [r4, #72]
	.loc 1 442 0
	mov	r2, #1
	.loc 1 441 0
	ldr	ip, [r1, #76]
	.loc 1 440 0
	strd	r8, [r1, #104]
	.loc 1 441 0
	add	r3, r6, #56
.LVL277:
	.loc 1 442 0
	str	r2, [sp, #40]
	ldr	r2, [r6, #48]
	str	r2, [sp, #44]
	.loc 1 440 0
	mov	r5, r1
	.loc 1 441 0
	ldmia	r3, {r0, r1}
.LVL278:
	add	r3, sp, #40
	stmia	sp, {r0, r1}
.LVL279:
	mov	r0, ip
	ldmia	r3, {r2, r3}
	mov	r1, ip, asr #31
	bl	av_rescale_q(PLT)
.LVL280:
	adds	r0, r0, r8
	adc	r1, r1, r9
	strd	r0, [r4, #72]
	.loc 1 443 0
	mov	r1, r5
	mov	r0, r6
	bl	ff_filter_frame(PLT)
.LVL281:
	.loc 1 552 0
	add	sp, sp, #92
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL282:
.L153:
	.cfi_restore_state
	.loc 1 483 0
	ldr	r0, [r4, #64]
	bl	av_audio_fifo_size(PLT)
.LVL283:
	ldr	r3, [r4, #16]
	cmp	r0, r3
	bge	.L184
.L158:
	.loc 1 437 0
	mov	r5, #0
	b	.L151
.LVL284:
.L183:
	.loc 1 445 0
	mov	r3, r1
	ldr	r2, [r3, #76]
	ldr	r1, [r1, #64]
.LVL285:
	ldr	r0, [r4, #60]
.LVL286:
	bl	av_audio_fifo_write(PLT)
.LVL287:
	.loc 1 447 0
	ldr	r0, [r4, #60]
	bl	av_audio_fifo_size(PLT)
.LVL288:
	ldr	r5, [r4, #16]
	rsb	r5, r5, r0
.LVL289:
	.loc 1 448 0
	cmp	r5, #0
	ble	.L158
	.loc 1 449 0
	mov	r0, r6
	mov	r1, r5
	bl	ff_get_audio_buffer(PLT)
.LVL290:
	.loc 1 450 0
	cmp	r0, #0
	.loc 1 449 0
	str	r0, [sp, #40]
	.loc 1 450 0
	beq	.L181
	.loc 1 454 0
	ldr	r1, [r0, #64]
	mov	r2, r5
	ldr	r0, [r4, #60]
	bl	av_audio_fifo_read(PLT)
.LVL291:
	.loc 1 456 0
	add	r3, r6, #56
	ldmia	r3, {r0, r1}
	.loc 1 455 0
	ldrd	r8, [r4, #72]
	ldr	r7, [sp, #40]
	.loc 1 457 0
	mov	r3, #1
	ldr	r2, [r6, #48]
	str	r3, [sp, #48]
	.loc 1 456 0
	add	r3, sp, #48
	.loc 1 455 0
	strd	r8, [r7, #104]
	.loc 1 457 0
	str	r2, [sp, #52]
	.loc 1 456 0
	stmia	sp, {r0, r1}
	mov	r0, r5
	mov	r1, r5, asr #31
	ldmia	r3, {r2, r3}
	bl	av_rescale_q(PLT)
.LVL292:
	adds	r0, r0, r8
	adc	r1, r1, r9
	strd	r0, [r4, #72]
	.loc 1 458 0
	mov	r1, r7
	mov	r0, r6
	bl	ff_filter_frame(PLT)
.LVL293:
	mov	r5, r0
.LVL294:
	b	.L151
.LVL295:
.L160:
	.loc 1 491 0
	add	r0, sp, #40
	bl	av_frame_free(PLT)
.LVL296:
.L181:
	.loc 1 492 0
	mvn	r5, #11
	.loc 1 493 0
	b	.L151
.LVL297:
.L184:
	.loc 1 484 0
	ldr	r3, [sp, #28]
	ldr	r0, [r4, #64]
	ldr	r1, [r3, #64]
	ldr	r2, [r3, #76]
	bl	av_audio_fifo_write(PLT)
.LVL298:
	.loc 1 486 0
	ldr	r3, [r4, #48]
	.loc 1 487 0
	mov	r0, r6
	.loc 1 486 0
	cmp	r3, #0
	.loc 1 487 0
	ldr	r1, [r4, #16]
	.loc 1 486 0
	bne	.L185
.LVL299:
	.loc 1 510 0
	bl	ff_get_audio_buffer(PLT)
.LVL300:
	.loc 1 511 0
	ldr	r1, [r4, #16]
	.loc 1 510 0
	str	r0, [sp, #40]
	.loc 1 511 0
	mov	r0, r6
	bl	ff_get_audio_buffer(PLT)
.LVL301:
	.loc 1 512 0
	ldr	r3, [sp, #40]
	.loc 1 512 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	cmpne	r0, #0
	.loc 1 511 0 is_stmt 1
	str	r0, [sp, #36]
	.loc 1 512 0 discriminator 1
	beq	.L160
	.loc 1 518 0
	ldr	r1, [r0, #64]
	ldr	r2, [r4, #16]
	ldr	r0, [r4, #64]
	bl	av_audio_fifo_read(PLT)
.LVL302:
	.loc 1 520 0
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #36]
	ldr	r0, [r2, #64]
	mov	r10, #1
	ldr	r2, [r4, #16]
	mov	r8, #0
	mov	r9, #0
	ldr	r1, [r3, #64]
	ldr	r3, [r6, #152]
	str	r2, [sp, #16]
	strd	r8, [sp, #8]
	str	r10, [sp]
	ldr	ip, [r4, #12]
	str	ip, [sp, #20]
	.loc 1 523 0
	add	r7, r6, #56
	.loc 1 520 0
	ldr	ip, [r4, #80]
	blx	ip
.LVL303:
	.loc 1 523 0
	ldmia	r7, {r0, r1}
	.loc 1 524 0
	ldr	r3, [r6, #48]
	.loc 1 522 0
	ldrd	r8, [r4, #72]
	ldr	r5, [sp, #40]
	.loc 1 523 0
	ldr	ip, [r4, #16]
	.loc 1 524 0
	str	r3, [sp, #76]
	.loc 1 523 0
	add	r3, sp, #72
	.loc 1 524 0
	str	r10, [sp, #72]
	.loc 1 522 0
	strd	r8, [r5, #104]
	.loc 1 523 0
	stmia	sp, {r0, r1}
	ldmia	r3, {r2, r3}
	mov	r0, ip
	mov	r1, ip, asr #31
.L180:
	bl	av_rescale_q(PLT)
.LVL304:
	adds	r0, r0, r8
	adc	r1, r1, r9
	strd	r0, [r4, #72]
	.loc 1 525 0
	mov	r1, r5
	mov	r0, r6
	bl	ff_filter_frame(PLT)
.LVL305:
	.loc 1 526 0
	subs	r5, r0, #0
	blt	.L151
	.loc 1 530 0
	ldr	r0, [r4, #64]
.LVL306:
	bl	av_audio_fifo_size(PLT)
.LVL307:
	.loc 1 531 0
	subs	r10, r0, #0
	ble	.L163
	.loc 1 532 0
	mov	r0, r6
.LVL308:
	mov	r1, r10
	bl	ff_get_audio_buffer(PLT)
.LVL309:
	.loc 1 533 0
	cmp	r0, #0
	.loc 1 532 0
	str	r0, [sp, #40]
	.loc 1 533 0
	beq	.L181
	.loc 1 538 0
	ldr	r1, [r0, #64]
	mov	r2, r10
	ldr	r0, [r4, #64]
	bl	av_audio_fifo_read(PLT)
.LVL310:
	.loc 1 539 0
	ldrd	r8, [r4, #72]
	.loc 1 540 0
	ldmia	r7, {r0, r1}
	.loc 1 539 0
	ldr	r5, [sp, #40]
.LVL311:
	.loc 1 541 0
	mov	r3, #1
	ldr	r2, [r6, #48]
	str	r3, [sp, #80]
	.loc 1 540 0
	add	r3, sp, #88
	.loc 1 539 0
	strd	r8, [r5, #104]
	.loc 1 541 0
	str	r2, [sp, #84]
	.loc 1 540 0
	stmia	sp, {r0, r1}
	mov	r0, r10
	ldmdb	r3, {r2, r3}
	mov	r1, r10, asr #31
	bl	av_rescale_q(PLT)
.LVL312:
	adds	r0, r0, r8
	adc	r1, r1, r9
	strd	r0, [r4, #72]
	.loc 1 542 0
	mov	r1, r5
	mov	r0, r6
	bl	ff_filter_frame(PLT)
.LVL313:
	mov	r5, r0
.LVL314:
.L163:
	.loc 1 544 0
	mov	r3, #1
	str	r3, [r4, #56]
	b	.L151
.LVL315:
.L185:
	.loc 1 487 0
	bl	ff_get_audio_buffer(PLT)
.LVL316:
	.loc 1 488 0
	ldr	r1, [r4, #16]
	.loc 1 487 0
	str	r0, [sp, #32]
	.loc 1 488 0
	mov	r0, r6
	bl	ff_get_audio_buffer(PLT)
.LVL317:
	.loc 1 489 0
	ldr	r1, [r4, #16]
	.loc 1 488 0
	str	r0, [sp, #36]
	.loc 1 489 0
	mov	r0, r6
	bl	ff_get_audio_buffer(PLT)
.LVL318:
	.loc 1 490 0
	cmp	r0, #0
	.loc 1 489 0
	str	r0, [sp, #40]
	.loc 1 490 0
	beq	.L160
	.loc 1 490 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L160
	.loc 1 490 0 discriminator 2
	ldr	r2, [sp, #36]
	cmp	r2, #0
	beq	.L160
	.loc 1 496 0 is_stmt 1
	ldr	r1, [r3, #64]
	ldr	r2, [r4, #16]
	ldr	r0, [r4, #60]
	bl	av_audio_fifo_read(PLT)
.LVL319:
	.loc 1 497 0
	ldr	r3, [sp, #36]
	ldr	r2, [r4, #16]
	ldr	r1, [r3, #64]
	ldr	r0, [r4, #64]
	bl	av_audio_fifo_read(PLT)
.LVL320:
	.loc 1 499 0
	add	r0, sp, #28
.LVL321:
	ldmia	r0, {r0, r2, r3}
.LVL322:
	ldr	r1, [sp, #40]
	ldr	fp, [r2, #64]
	ldr	r8, [r1, #64]
	.loc 1 500 0
	ldr	r10, [r3, #64]
	.loc 1 499 0
	ldr	r5, [r4, #84]
	ldr	r9, [r4, #16]
	bl	av_frame_get_channels(PLT)
.LVL323:
	.loc 1 504 0
	add	r7, r6, #56
	.loc 1 499 0 discriminator 1
	mov	r3, r9
	mov	r1, fp
	mov	r2, r10
	str	r0, [sp]
	ldr	r0, [r4, #8]
	str	r0, [sp, #4]
	ldr	ip, [r4, #12]
	mov	r0, r8
	str	ip, [sp, #8]
	blx	r5
.LVL324:
	.loc 1 504 0
	ldr	r3, [r4, #16]
	ldmia	r7, {r0, r1}
	.loc 1 503 0
	ldrd	r8, [r4, #72]
	ldr	r5, [sp, #40]
	.loc 1 505 0
	ldr	ip, [r6, #48]
	mov	r2, #1
	.loc 1 503 0
	strd	r8, [r5, #104]
	.loc 1 504 0
	stmia	sp, {r0, r1}
	mov	r0, r3
	mov	r1, r3, asr #31
	add	r3, sp, #64
	.loc 1 505 0
	str	ip, [sp, #68]
	str	r2, [sp, #64]
	.loc 1 504 0
	ldmia	r3, {r2, r3}
	b	.L180
	.cfi_endproc
.LFE75:
	.size	acrossfade_filter_frame, .-acrossfade_filter_frame
	.align	2
	.type	query_formats, %function
query_formats:
.LFB54:
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL325:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 61 0
	mov	r4, r0
	.loc 1 73 0
	bl	ff_all_channel_counts(PLT)
.LVL326:
	.loc 1 74 0
	subs	r1, r0, #0
	beq	.L189
	.loc 1 76 0
	mov	r0, r4
.LVL327:
	bl	ff_set_common_channel_layouts(PLT)
.LVL328:
	.loc 1 77 0
	cmp	r0, #0
	ldmltfd	sp!, {r4, pc}
	.loc 1 80 0
	ldr	r0, .L199
.LVL329:
.LPIC16:
	add	r0, pc, r0
	bl	ff_make_format_list(PLT)
.LVL330:
	.loc 1 81 0
	subs	r1, r0, #0
	beq	.L189
	.loc 1 83 0
	mov	r0, r4
.LVL331:
	bl	ff_set_common_formats(PLT)
.LVL332:
	.loc 1 84 0
	cmp	r0, #0
	ldmltfd	sp!, {r4, pc}
.LVL333:
.LBB45:
.LBB46:
	.loc 1 87 0
	bl	ff_all_samplerates(PLT)
.LVL334:
	.loc 1 88 0
	subs	r1, r0, #0
	beq	.L189
	.loc 1 90 0
	mov	r0, r4
.LVL335:
.LBE46:
.LBE45:
	.loc 1 91 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL336:
.LBB48:
.LBB47:
	.loc 1 90 0
	b	ff_set_common_samplerates(PLT)
.LVL337:
.L189:
	.cfi_restore_state
.LBE47:
.LBE48:
	.loc 1 75 0
	mvn	r0, #11
	ldmfd	sp!, {r4, pc}
.L200:
	.align	2
.L199:
	.word	.LANCHOR0-(.LPIC16+8)
	.cfi_endproc
.LFE54:
	.size	query_formats, .-query_formats
	.align	2
	.type	acrossfade_config_output, %function
acrossfade_config_output:
.LFB77:
	.loc 1 588 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL338:
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
	mov	r5, r0
	.loc 1 589 0
	ldr	r0, [r0]
.LVL339:
	.loc 1 588 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 40
	.loc 1 592 0
	ldr	r3, [r0, #16]
	.loc 1 590 0
	ldr	r4, [r0, #36]
.LVL340:
	.loc 1 592 0
	ldr	ip, [r3]
	ldr	r3, [r3, #4]
	ldr	r8, [ip, #48]
	ldr	r3, [r3, #48]
	cmp	r8, r3
	bne	.L232
	.loc 1 601 0
	add	r3, ip, #56
	.loc 1 605 0
	ldr	r9, [r5, #52]
	.loc 1 601 0
	ldmia	r3, {r0, r1}
.LVL341:
	.loc 1 602 0
	ldrd	r6, [ip, #40]
	.loc 1 603 0
	ldr	r10, [ip, #152]
	.loc 1 601 0
	add	lr, r5, #56
	.loc 1 605 0
	sub	r3, r9, #1
	.loc 1 600 0
	str	r8, [r5, #48]
	.loc 1 601 0
	stmia	lr, {r0, r1}
	.loc 1 602 0
	strd	r6, [r5, #40]
	.loc 1 603 0
	str	r10, [r5, #152]
	.loc 1 605 0
	cmp	r3, #8
	addls	pc, pc, r3, asl #2
	b	.L204
.L206:
	b	.L205
	b	.L207
	b	.L208
	b	.L209
	b	.L204
	b	.L210
	b	.L211
	b	.L212
	b	.L213
	.p2align 1
.L213:
	.loc 1 607 0
	ldr	r3, .L234
.LPIC19:
	add	r3, pc, r3
	str	r3, [r4, #84]
.LVL342:
.L215:
.LBB51:
.LBB52:
	.loc 1 205 0
	ldr	r3, .L234+4
.LPIC27:
	add	r3, pc, r3
	str	r3, [r4, #80]
.L222:
	.loc 1 214 0
	ldrd	r0, [r4, #32]
	orrs	r3, r0, r1
	bne	.L224
.L233:
	ldr	r6, [r4, #16]
.LVL343:
.L225:
	.loc 1 216 0
	ldrd	r0, [r4, #40]
	orrs	r3, r0, r1
	beq	.L226
	.loc 1 217 0
	ldr	r2, .L234+8
	mov	r3, #0
	strd	r2, [sp]
	mov	r2, r8
	mov	r3, r8, asr #31
	bl	av_rescale(PLT)
.LVL344:
	strd	r0, [r4, #24]
.L226:
.LBE52:
.LBE51:
	.loc 1 618 0
	mov	r1, r10
	mov	r2, r6
	mov	r0, r9
	bl	av_audio_fifo_alloc(PLT)
.LVL345:
	.loc 1 619 0
	ldr	r1, [r5, #152]
	ldr	r2, [r4, #16]
	.loc 1 618 0
	str	r0, [r4, #60]
	.loc 1 619 0
	ldr	r0, [r5, #52]
	bl	av_audio_fifo_alloc(PLT)
.LVL346:
	.loc 1 620 0
	ldr	r3, [r4, #60]
	.loc 1 623 0
	cmp	r3, #0
	cmpne	r0, #0
	.loc 1 619 0
	str	r0, [r4, #64]
	.loc 1 623 0
	mvneq	r0, #11
	movne	r0, #0
.LVL347:
.L203:
	.loc 1 624 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL348:
.L205:
	.cfi_restore_state
	.loc 1 610 0
	ldr	r3, .L234+12
.LPIC22:
	add	r3, pc, r3
	str	r3, [r4, #84]
.LVL349:
.L218:
.LBB60:
.LBB53:
	.loc 1 208 0
	ldr	r3, .L234+16
	.loc 1 214 0
	ldrd	r0, [r4, #32]
	.loc 1 208 0
.LPIC30:
	add	r3, pc, r3
	str	r3, [r4, #80]
	.loc 1 214 0
	orrs	r3, r0, r1
	beq	.L233
.L224:
	.loc 1 215 0
	ldr	r2, .L234+8
	mov	r3, #0
	strd	r2, [sp]
.LVL350:
	mov	r2, r8
	mov	r3, r8, asr #31
	bl	av_rescale(PLT)
.LVL351:
	mov	r6, r0
	str	r0, [r4, #16]
	b	.L225
.LVL352:
.L207:
.LBE53:
.LBE60:
	.loc 1 612 0
	ldr	r3, .L234+20
.LPIC24:
	add	r3, pc, r3
	str	r3, [r4, #84]
.LVL353:
.L220:
.LBB61:
.LBB54:
	.loc 1 210 0
	ldr	r3, .L234+24
.LPIC32:
	add	r3, pc, r3
	str	r3, [r4, #80]
	b	.L222
.LVL354:
.L208:
.LBE54:
.LBE61:
	.loc 1 608 0
	ldr	r3, .L234+28
.LPIC20:
	add	r3, pc, r3
	str	r3, [r4, #84]
.LVL355:
.L216:
.LBB62:
.LBB55:
	.loc 1 206 0
	ldr	r3, .L234+32
.LPIC28:
	add	r3, pc, r3
	str	r3, [r4, #80]
	b	.L222
.LVL356:
.L209:
.LBE55:
.LBE62:
	.loc 1 606 0
	ldr	r3, .L234+36
.LPIC18:
	add	r3, pc, r3
	str	r3, [r4, #84]
.LVL357:
.L214:
.LBB63:
.LBB56:
	.loc 1 204 0
	ldr	r3, .L234+40
.LPIC26:
	add	r3, pc, r3
	str	r3, [r4, #80]
	b	.L222
.LVL358:
.L210:
.LBE56:
.LBE63:
	.loc 1 611 0
	ldr	r3, .L234+44
.LPIC23:
	add	r3, pc, r3
	str	r3, [r4, #84]
.LVL359:
.L219:
.LBB64:
.LBB57:
	.loc 1 209 0
	ldr	r3, .L234+48
.LPIC31:
	add	r3, pc, r3
	str	r3, [r4, #80]
	b	.L222
.LVL360:
.L211:
.LBE57:
.LBE64:
	.loc 1 613 0
	ldr	r3, .L234+52
.LPIC25:
	add	r3, pc, r3
	str	r3, [r4, #84]
.LVL361:
.L221:
.LBB65:
.LBB58:
	.loc 1 211 0
	ldr	r3, .L234+56
.LPIC33:
	add	r3, pc, r3
	str	r3, [r4, #80]
	b	.L222
.LVL362:
.L212:
.LBE58:
.LBE65:
	.loc 1 609 0
	ldr	r3, .L234+60
.LPIC21:
	add	r3, pc, r3
	str	r3, [r4, #84]
.LVL363:
.L217:
.LBB66:
.LBB59:
	.loc 1 207 0
	ldr	r3, .L234+64
.LPIC29:
	add	r3, pc, r3
	str	r3, [r4, #80]
	b	.L222
.LVL364:
.L204:
	.loc 1 203 0
	cmp	r3, #8
	addls	pc, pc, r3, asl #2
	b	.L222
.L223:
	b	.L218
	b	.L220
	b	.L216
	b	.L214
	b	.L222
	b	.L219
	b	.L221
	b	.L217
	b	.L215
.LVL365:
	.p2align 1
.L232:
.LBE59:
.LBE66:
	.loc 1 593 0
	ldr	r2, .L234+68
	str	r3, [sp]
	mov	r1, #16
	mov	r3, r8
.LPIC17:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL366:
	.loc 1 597 0
	mvn	r0, #21
	b	.L203
.L235:
	.align	2
.L234:
	.word	crossfade_samples_dblp-(.LPIC19+8)
	.word	fade_samples_dblp-(.LPIC27+8)
	.word	1000000
	.word	crossfade_samples_s16-(.LPIC22+8)
	.word	fade_samples_s16-(.LPIC30+8)
	.word	crossfade_samples_s32-(.LPIC24+8)
	.word	fade_samples_s32-(.LPIC32+8)
	.word	crossfade_samples_flt-(.LPIC20+8)
	.word	fade_samples_flt-(.LPIC28+8)
	.word	crossfade_samples_dbl-(.LPIC18+8)
	.word	fade_samples_dbl-(.LPIC26+8)
	.word	crossfade_samples_s16p-(.LPIC23+8)
	.word	fade_samples_s16p-(.LPIC31+8)
	.word	crossfade_samples_s32p-(.LPIC25+8)
	.word	fade_samples_s32p-(.LPIC33+8)
	.word	crossfade_samples_fltp-(.LPIC21+8)
	.word	fade_samples_fltp-(.LPIC29+8)
	.word	.LC0-(.LPIC17+8)
	.cfi_endproc
.LFE77:
	.size	acrossfade_config_output, .-acrossfade_config_output
	.align	2
	.type	fade_samples_flt, %function
fade_samples_flt:
.LFB61:
	.loc 1 194 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL367:
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
	ldr	r1, [r1]
.LVL368:
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
.LVL369:
	.loc 1 194 0
	ldr	r0, [r0]
.LVL370:
	.loc 1 194 0 is_stmt 0 discriminator 6
	cmp	r2, #0
	.loc 1 194 0
	str	r1, [sp, #20]
.LVL371:
	str	r0, [sp, #16]
.LVL372:
	ldr	r1, [sp, #84]
	.loc 1 194 0 discriminator 6
	ble	.L236
	mov	r10, r3
	ldr	r0, [sp, #80]
	sub	r3, r1, #1
.LVL373:
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	bl	__aeabi_i2d(PLT)
.LVL374:
	mov	r6, #0
	mov	r7, r6
	strd	r0, [sp]
.LVL375:
.L262:
.LBB74:
	.loc 1 194 0 discriminator 7
	ldr	r0, [sp, #64]
.LBB75:
.LBB76:
	.loc 1 98 0 is_stmt 1
	ldrd	r2, [sp, #72]
.LBE76:
.LBE75:
	.loc 1 194 0 discriminator 7
	mul	r0, r7, r0
.LBB91:
.LBB89:
	.loc 1 98 0
	adds	r2, r2, r0
	adc	r3, r3, r0, asr #31
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_l2d(PLT)
.LVL376:
	ldrd	r2, [sp]
	bl	__aeabi_ddiv(PLT)
.LVL377:
.LBB77:
.LBB78:
	.loc 2 299 0
	mov	r2, #0
	mov	r3, #0
.LBE78:
.LBE77:
	.loc 1 98 0
	mov	r4, r0
	mov	r5, r1
.LVL378:
.LBB81:
.LBB79:
	.loc 2 299 0
	bl	__aeabi_dcmplt(PLT)
.LVL379:
	cmp	r0, #0
	bne	.L264
	.loc 2 300 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L280
	bl	__aeabi_dcmpgt(PLT)
.LVL380:
	cmp	r0, #0
	.loc 2 300 0 is_stmt 0 discriminator 1
	ldrne	r5, .L280
	movne	r4, #0
.LVL381:
.L238:
.LBE79:
.LBE81:
	.loc 1 100 0 is_stmt 1
	ldr	r3, [sp, #8]
	cmp	r3, #14
	addls	pc, pc, r3, asl #2
	b	.L239
.L241:
	b	.L240
	b	.L242
	b	.L243
	b	.L244
	b	.L245
	b	.L246
	b	.L247
	b	.L248
	b	.L249
	b	.L250
	b	.L251
	b	.L252
	b	.L253
	b	.L254
	b	.L255
	.p2align 1
.L255:
	.loc 1 147 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L280+4
	bl	__aeabi_dcmple(PLT)
.LVL382:
	cmp	r0, #0
	beq	.L273
	.loc 1 147 0 is_stmt 0 discriminator 1
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL383:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dmul(PLT)
.LVL384:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL385:
	b	.L276
.L254:
	.loc 1 144 0 is_stmt 1
	mov	r1, r5
	mov	r0, r4
	mov	r2, #0
	ldr	r3, .L280+4
	bl	__aeabi_dcmple(PLT)
.LVL386:
	.loc 1 144 0 is_stmt 0 discriminator 1
	mov	r1, r5
	.loc 1 144 0
	cmp	r0, #0
	.loc 1 144 0 discriminator 1
	mov	r0, r4
	.loc 1 144 0
	bne	.L279
	.loc 1 144 0 discriminator 2
	mov	r2, #0
	ldr	r3, .L280
	bl	__aeabi_dsub(PLT)
.LVL387:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd(PLT)
.LVL388:
	.loc 1 144 0 discriminator 4
	bl	cbrt(PLT)
.LVL389:
.L278:
	.loc 1 147 0 is_stmt 1 discriminator 2
	mov	r2, #0
	ldr	r3, .L280+4
	b	.L277
.L253:
	.loc 1 116 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL390:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L280
	bl	__aeabi_dsub(PLT)
.LVL391:
	bl	acos(PLT)
.LVL392:
	ldr	r2, .L280+8
	ldr	r3, .L280+12
	bl	__aeabi_dmul(PLT)
.LVL393:
	mov	r4, r0
	mov	r5, r1
.LVL394:
.L239:
.LBE89:
.LBE91:
	.loc 1 194 0 discriminator 2
	cmp	r10, #0
	ble	.L260
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #16]
	mov	ip, r6, asl #2
	add	r6, r10, r6
.LVL395:
	add	r9, r3, ip
	add	r8, r2, ip
	add	fp, r3, r6, asl #2
.LVL396:
.L261:
	.loc 1 194 0 is_stmt 0 discriminator 4
	ldr	r0, [r9], #4	@ float
	bl	__aeabi_f2d(PLT)
.LVL397:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul(PLT)
.LVL398:
	bl	__aeabi_d2f(PLT)
.LVL399:
	.loc 1 194 0 discriminator 2
	cmp	r9, fp
	.loc 1 194 0 discriminator 4
	str	r0, [r8], #4	@ float
	.loc 1 194 0 discriminator 2
	bne	.L261
.L260:
.LBE74:
	.loc 1 194 0 discriminator 6
	ldr	r3, [sp, #12]
	.loc 1 194 0 discriminator 5
	add	r7, r7, #1
.LVL400:
	.loc 1 194 0 discriminator 6
	cmp	r3, r7
	bgt	.L262
.LVL401:
.L236:
	.loc 1 194 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL402:
.L252:
	.cfi_restore_state
.LBB93:
.LBB92:
.LBB90:
	.loc 1 106 0 is_stmt 1
	mov	r0, r4
	mov	r1, r5
	bl	asin(PLT)
.LVL403:
	ldr	r2, .L280+8
	ldr	r3, .L280+16
	bl	__aeabi_dmul(PLT)
.LVL404:
	mov	r4, r0
	mov	r5, r1
.LVL405:
	b	.L239
.LVL406:
.L251:
	.loc 1 120 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L280
	bl	__aeabi_dsub(PLT)
.LVL407:
	ldr	r2, .L280+20
	ldr	r3, .L280+24
	bl	__aeabi_dmul(PLT)
.LVL408:
	bl	exp(PLT)
.LVL409:
	mov	r4, r0
	mov	r5, r1
.LVL410:
	b	.L239
.LVL411:
.L250:
	.loc 1 126 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L280
	bl	__aeabi_dsub(PLT)
.LVL412:
	bl	sqrt(PLT)
.LVL413:
.L275:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L280
	bl	__aeabi_dsub(PLT)
.LVL414:
	mov	r4, r0
	mov	r5, r1
.LVL415:
	b	.L239
.LVL416:
.L249:
	.loc 1 141 0
	mov	r0, r4
	mov	r1, r5
	bl	cbrt(PLT)
.LVL417:
	mov	r4, r0
	mov	r5, r1
.LVL418:
	b	.L239
.LVL419:
.L248:
	.loc 1 138 0
	mov	r0, r4
	mov	r1, r5
	bl	sqrt(PLT)
.LVL420:
	mov	r4, r0
	mov	r5, r1
.LVL421:
	b	.L239
.LVL422:
.L247:
	.loc 1 135 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL423:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL424:
	mov	r4, r0
	mov	r5, r1
.LVL425:
	b	.L239
.LVL426:
.L246:
	.loc 1 132 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul(PLT)
.LVL427:
	mov	r4, r0
	mov	r5, r1
.LVL428:
	b	.L239
.LVL429:
.L245:
	.loc 1 129 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L280
	bl	__aeabi_dsub(PLT)
.LVL430:
	mov	r2, #0
	ldr	r3, .L280
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub(PLT)
.LVL431:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
.L277:
	.loc 1 147 0 discriminator 2
	bl	__aeabi_dmul(PLT)
.LVL432:
	mov	r2, #0
	ldr	r3, .L280
	bl	__aeabi_dadd(PLT)
.LVL433:
	mov	r4, r0
	mov	r5, r1
	b	.L239
.L244:
	.loc 1 123 0
	mov	r0, r4
	mov	r1, r5
	bl	log10(PLT)
.LVL434:
	ldr	r2, .L280+28
	ldr	r3, .L280+32
	bl	__aeabi_dmul(PLT)
.LVL435:
	mov	r2, #0
	ldr	r3, .L280
	bl	__aeabi_dadd(PLT)
.LVL436:
.LBB82:
.LBB83:
	.loc 2 299 0
	mov	r2, #0
	mov	r3, #0
.LBE83:
.LBE82:
	.loc 1 123 0
	mov	r4, r0
	mov	r5, r1
.LVL437:
.LBB86:
.LBB84:
	.loc 2 299 0
	bl	__aeabi_dcmplt(PLT)
.LVL438:
	cmp	r0, #0
	bne	.L266
	.loc 2 300 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L280
	bl	__aeabi_dcmpgt(PLT)
.LVL439:
	cmp	r0, #0
	.loc 2 300 0 is_stmt 0 discriminator 1
	movne	r4, #0
.LVL440:
	ldrne	r5, .L280
	b	.L239
.LVL441:
.L240:
.LBE84:
.LBE86:
	.loc 1 102 0 is_stmt 1
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L280+36
	ldr	r3, .L280+40
	bl	__aeabi_dmul(PLT)
.LVL442:
	mov	r2, #0
	ldr	r3, .L280+4
	bl	__aeabi_dmul(PLT)
.LVL443:
	bl	sin(PLT)
.LVL444:
	mov	r4, r0
	mov	r5, r1
.LVL445:
	b	.L239
.LVL446:
.L243:
	.loc 1 112 0
	ldr	r2, .L280+36
	ldr	r3, .L280+40
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL447:
	bl	cos(PLT)
.LVL448:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L280
	bl	__aeabi_dsub(PLT)
.LVL449:
.L276:
	.loc 1 144 0 discriminator 1
	mov	r2, #0
	ldr	r3, .L280+4
	bl	__aeabi_dmul(PLT)
.LVL450:
	mov	r4, r0
	mov	r5, r1
	b	.L239
.L242:
	.loc 1 109 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL451:
	mov	r2, #0
	ldr	r3, .L280
	bl	__aeabi_dsub(PLT)
.LVL452:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dmul(PLT)
.LVL453:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL454:
	mov	r2, #0
	ldr	r3, .L280
	bl	__aeabi_dadd(PLT)
.LVL455:
	ldr	r2, .L280+36
	ldr	r3, .L280+44
	bl	__aeabi_dmul(PLT)
.LVL456:
	bl	cos(PLT)
.LVL457:
	b	.L275
.LVL458:
.L264:
.LBB87:
.LBB80:
	.loc 2 299 0 discriminator 1
	mov	r4, #0
.LVL459:
	mov	r5, #0
	b	.L238
.L279:
.LBE80:
.LBE87:
	.loc 1 144 0 discriminator 1
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd(PLT)
.LVL460:
	.loc 1 144 0 is_stmt 0 discriminator 2
	bl	cbrt(PLT)
.LVL461:
	b	.L276
.L273:
	.loc 1 147 0 is_stmt 1 discriminator 2
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L280
	bl	__aeabi_dsub(PLT)
.LVL462:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd(PLT)
.LVL463:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul(PLT)
.LVL464:
	mov	r2, #0
	ldr	r3, .L280
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub(PLT)
.LVL465:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd(PLT)
.LVL466:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL467:
	b	.L278
.LVL468:
.L266:
.LBB88:
.LBB85:
	.loc 2 299 0 discriminator 1
	mov	r4, #0
.LVL469:
	mov	r5, #0
	b	.L239
.L281:
	.align	2
.L280:
	.word	1072693248
	.word	1071644672
	.word	1841940611
	.word	1070882608
	.word	1071931184
	.word	715303514
	.word	-1071184226
	.word	-1717986918
	.word	1070176665
	.word	1413754136
	.word	1074340347
	.word	1072243195
.LBE85:
.LBE88:
.LBE90:
.LBE92:
.LBE93:
	.cfi_endproc
.LFE61:
	.size	fade_samples_flt, .-fade_samples_flt
	.align	2
	.type	fade_samples_s16, %function
fade_samples_s16:
.LFB62:
	.loc 1 195 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL470:
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
	ldr	r1, [r1]
.LVL471:
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
.LVL472:
	.loc 1 195 0
	ldr	r0, [r0]
.LVL473:
	.loc 1 195 0 is_stmt 0 discriminator 6
	cmp	r2, #0
	.loc 1 195 0
	str	r1, [sp, #20]
.LVL474:
	str	r0, [sp, #16]
.LVL475:
	ldr	r1, [sp, #84]
	.loc 1 195 0 discriminator 6
	ble	.L282
	mov	r10, r3
	ldr	r0, [sp, #80]
	sub	r3, r1, #1
.LVL476:
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	bl	__aeabi_i2d(PLT)
.LVL477:
	mov	r6, #0
	mov	r7, r6
	strd	r0, [sp]
.LVL478:
.L308:
.LBB101:
	.loc 1 195 0 discriminator 7
	ldr	r0, [sp, #64]
.LBB102:
.LBB103:
	.loc 1 98 0 is_stmt 1
	ldrd	r2, [sp, #72]
.LBE103:
.LBE102:
	.loc 1 195 0 discriminator 7
	mul	r0, r7, r0
.LBB118:
.LBB116:
	.loc 1 98 0
	adds	r2, r2, r0
	adc	r3, r3, r0, asr #31
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_l2d(PLT)
.LVL479:
	ldrd	r2, [sp]
	bl	__aeabi_ddiv(PLT)
.LVL480:
.LBB104:
.LBB105:
	.loc 2 299 0
	mov	r2, #0
	mov	r3, #0
.LBE105:
.LBE104:
	.loc 1 98 0
	mov	r4, r0
	mov	r5, r1
.LVL481:
.LBB108:
.LBB106:
	.loc 2 299 0
	bl	__aeabi_dcmplt(PLT)
.LVL482:
	cmp	r0, #0
	bne	.L310
	.loc 2 300 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L326
	bl	__aeabi_dcmpgt(PLT)
.LVL483:
	cmp	r0, #0
	.loc 2 300 0 is_stmt 0 discriminator 1
	ldrne	r5, .L326
	movne	r4, #0
.LVL484:
.L284:
.LBE106:
.LBE108:
	.loc 1 100 0 is_stmt 1
	ldr	r3, [sp, #8]
	cmp	r3, #14
	addls	pc, pc, r3, asl #2
	b	.L285
.L287:
	b	.L286
	b	.L288
	b	.L289
	b	.L290
	b	.L291
	b	.L292
	b	.L293
	b	.L294
	b	.L295
	b	.L296
	b	.L297
	b	.L298
	b	.L299
	b	.L300
	b	.L301
	.p2align 1
.L301:
	.loc 1 147 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L326+4
	bl	__aeabi_dcmple(PLT)
.LVL485:
	cmp	r0, #0
	beq	.L319
	.loc 1 147 0 is_stmt 0 discriminator 1
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL486:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dmul(PLT)
.LVL487:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL488:
	b	.L322
.L300:
	.loc 1 144 0 is_stmt 1
	mov	r1, r5
	mov	r0, r4
	mov	r2, #0
	ldr	r3, .L326+4
	bl	__aeabi_dcmple(PLT)
.LVL489:
	.loc 1 144 0 is_stmt 0 discriminator 1
	mov	r1, r5
	.loc 1 144 0
	cmp	r0, #0
	.loc 1 144 0 discriminator 1
	mov	r0, r4
	.loc 1 144 0
	bne	.L325
	.loc 1 144 0 discriminator 2
	mov	r2, #0
	ldr	r3, .L326
	bl	__aeabi_dsub(PLT)
.LVL490:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd(PLT)
.LVL491:
	.loc 1 144 0 discriminator 4
	bl	cbrt(PLT)
.LVL492:
.L324:
	.loc 1 147 0 is_stmt 1 discriminator 2
	mov	r2, #0
	ldr	r3, .L326+4
	b	.L323
.L299:
	.loc 1 116 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL493:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L326
	bl	__aeabi_dsub(PLT)
.LVL494:
	bl	acos(PLT)
.LVL495:
	ldr	r2, .L326+8
	ldr	r3, .L326+12
	bl	__aeabi_dmul(PLT)
.LVL496:
	mov	r4, r0
	mov	r5, r1
.LVL497:
.L285:
.LBE116:
.LBE118:
	.loc 1 195 0 discriminator 2
	cmp	r10, #0
	ble	.L306
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #16]
	mov	ip, r6, asl #1
	add	r6, r10, r6
.LVL498:
	add	r9, r3, ip
	add	r8, r2, ip
	add	fp, r3, r6, asl #1
.LVL499:
.L307:
	.loc 1 195 0 is_stmt 0 discriminator 4
	ldrsh	r0, [r9], #2
	bl	__aeabi_i2d(PLT)
.LVL500:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul(PLT)
.LVL501:
	bl	__aeabi_d2iz(PLT)
.LVL502:
	.loc 1 195 0 discriminator 2
	cmp	r9, fp
	.loc 1 195 0 discriminator 4
	strh	r0, [r8], #2	@ movhi
	.loc 1 195 0 discriminator 2
	bne	.L307
.L306:
.LBE101:
	.loc 1 195 0 discriminator 6
	ldr	r3, [sp, #12]
	.loc 1 195 0 discriminator 5
	add	r7, r7, #1
.LVL503:
	.loc 1 195 0 discriminator 6
	cmp	r3, r7
	bgt	.L308
.LVL504:
.L282:
	.loc 1 195 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL505:
.L298:
	.cfi_restore_state
.LBB120:
.LBB119:
.LBB117:
	.loc 1 106 0 is_stmt 1
	mov	r0, r4
	mov	r1, r5
	bl	asin(PLT)
.LVL506:
	ldr	r2, .L326+8
	ldr	r3, .L326+16
	bl	__aeabi_dmul(PLT)
.LVL507:
	mov	r4, r0
	mov	r5, r1
.LVL508:
	b	.L285
.LVL509:
.L297:
	.loc 1 120 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L326
	bl	__aeabi_dsub(PLT)
.LVL510:
	ldr	r2, .L326+20
	ldr	r3, .L326+24
	bl	__aeabi_dmul(PLT)
.LVL511:
	bl	exp(PLT)
.LVL512:
	mov	r4, r0
	mov	r5, r1
.LVL513:
	b	.L285
.LVL514:
.L296:
	.loc 1 126 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L326
	bl	__aeabi_dsub(PLT)
.LVL515:
	bl	sqrt(PLT)
.LVL516:
.L321:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L326
	bl	__aeabi_dsub(PLT)
.LVL517:
	mov	r4, r0
	mov	r5, r1
.LVL518:
	b	.L285
.LVL519:
.L295:
	.loc 1 141 0
	mov	r0, r4
	mov	r1, r5
	bl	cbrt(PLT)
.LVL520:
	mov	r4, r0
	mov	r5, r1
.LVL521:
	b	.L285
.LVL522:
.L294:
	.loc 1 138 0
	mov	r0, r4
	mov	r1, r5
	bl	sqrt(PLT)
.LVL523:
	mov	r4, r0
	mov	r5, r1
.LVL524:
	b	.L285
.LVL525:
.L293:
	.loc 1 135 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL526:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL527:
	mov	r4, r0
	mov	r5, r1
.LVL528:
	b	.L285
.LVL529:
.L292:
	.loc 1 132 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul(PLT)
.LVL530:
	mov	r4, r0
	mov	r5, r1
.LVL531:
	b	.L285
.LVL532:
.L291:
	.loc 1 129 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L326
	bl	__aeabi_dsub(PLT)
.LVL533:
	mov	r2, #0
	ldr	r3, .L326
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub(PLT)
.LVL534:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
.L323:
	.loc 1 147 0 discriminator 2
	bl	__aeabi_dmul(PLT)
.LVL535:
	mov	r2, #0
	ldr	r3, .L326
	bl	__aeabi_dadd(PLT)
.LVL536:
	mov	r4, r0
	mov	r5, r1
	b	.L285
.L290:
	.loc 1 123 0
	mov	r0, r4
	mov	r1, r5
	bl	log10(PLT)
.LVL537:
	ldr	r2, .L326+28
	ldr	r3, .L326+32
	bl	__aeabi_dmul(PLT)
.LVL538:
	mov	r2, #0
	ldr	r3, .L326
	bl	__aeabi_dadd(PLT)
.LVL539:
.LBB109:
.LBB110:
	.loc 2 299 0
	mov	r2, #0
	mov	r3, #0
.LBE110:
.LBE109:
	.loc 1 123 0
	mov	r4, r0
	mov	r5, r1
.LVL540:
.LBB113:
.LBB111:
	.loc 2 299 0
	bl	__aeabi_dcmplt(PLT)
.LVL541:
	cmp	r0, #0
	bne	.L312
	.loc 2 300 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L326
	bl	__aeabi_dcmpgt(PLT)
.LVL542:
	cmp	r0, #0
	.loc 2 300 0 is_stmt 0 discriminator 1
	movne	r4, #0
.LVL543:
	ldrne	r5, .L326
	b	.L285
.LVL544:
.L286:
.LBE111:
.LBE113:
	.loc 1 102 0 is_stmt 1
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L326+36
	ldr	r3, .L326+40
	bl	__aeabi_dmul(PLT)
.LVL545:
	mov	r2, #0
	ldr	r3, .L326+4
	bl	__aeabi_dmul(PLT)
.LVL546:
	bl	sin(PLT)
.LVL547:
	mov	r4, r0
	mov	r5, r1
.LVL548:
	b	.L285
.LVL549:
.L289:
	.loc 1 112 0
	ldr	r2, .L326+36
	ldr	r3, .L326+40
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL550:
	bl	cos(PLT)
.LVL551:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L326
	bl	__aeabi_dsub(PLT)
.LVL552:
.L322:
	.loc 1 144 0 discriminator 1
	mov	r2, #0
	ldr	r3, .L326+4
	bl	__aeabi_dmul(PLT)
.LVL553:
	mov	r4, r0
	mov	r5, r1
	b	.L285
.L288:
	.loc 1 109 0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL554:
	mov	r2, #0
	ldr	r3, .L326
	bl	__aeabi_dsub(PLT)
.LVL555:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dmul(PLT)
.LVL556:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL557:
	mov	r2, #0
	ldr	r3, .L326
	bl	__aeabi_dadd(PLT)
.LVL558:
	ldr	r2, .L326+36
	ldr	r3, .L326+44
	bl	__aeabi_dmul(PLT)
.LVL559:
	bl	cos(PLT)
.LVL560:
	b	.L321
.LVL561:
.L310:
.LBB114:
.LBB107:
	.loc 2 299 0 discriminator 1
	mov	r4, #0
.LVL562:
	mov	r5, #0
	b	.L284
.L325:
.LBE107:
.LBE114:
	.loc 1 144 0 discriminator 1
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd(PLT)
.LVL563:
	.loc 1 144 0 is_stmt 0 discriminator 2
	bl	cbrt(PLT)
.LVL564:
	b	.L322
.L319:
	.loc 1 147 0 is_stmt 1 discriminator 2
	mov	r2, r4
	mov	r3, r5
	mov	r0, #0
	ldr	r1, .L326
	bl	__aeabi_dsub(PLT)
.LVL565:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd(PLT)
.LVL566:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul(PLT)
.LVL567:
	mov	r2, #0
	ldr	r3, .L326
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub(PLT)
.LVL568:
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd(PLT)
.LVL569:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL570:
	b	.L324
.LVL571:
.L312:
.LBB115:
.LBB112:
	.loc 2 299 0 discriminator 1
	mov	r4, #0
.LVL572:
	mov	r5, #0
	b	.L285
.L327:
	.align	2
.L326:
	.word	1072693248
	.word	1071644672
	.word	1841940611
	.word	1070882608
	.word	1071931184
	.word	715303514
	.word	-1071184226
	.word	-1717986918
	.word	1070176665
	.word	1413754136
	.word	1074340347
	.word	1072243195
.LBE112:
.LBE115:
.LBE117:
.LBE119:
.LBE120:
	.cfi_endproc
.LFE62:
	.size	fade_samples_s16, .-fade_samples_s16
	.align	2
	.type	fade_samples_s32, %function
fade_samples_s32:
.LFB63:
	.loc 1 196 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL573:
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
	ldr	r1, [r1]
.LVL574:
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
.LVL575:
	.loc 1 196 0
	ldr	r0, [r0]
.LVL576:
	.loc 1 196 0 is_stmt 0 discriminator 6
	cmp	r2, #0
	.loc 1 196 0
	str	r1, [sp, #20]
.LVL577:
	str	r0, [sp, #16]
.LVL578:
	ldr	r1, [sp, #84]
	.loc 1 196 0 discriminator 6
	ble	.L328
	mov	r10, r3
	ldr	r0, [sp, #80]
	sub	r3, r1, #1
.LVL579:
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	bl	__aeabi_i2d(PLT)
.LVL580:
	mov	r6, #0
	mov	r7, r6
	strd	r0, [sp]
.LVL581:
.L354:
.LBB128:
	.loc 1 196 0 discriminator 7
	ldr	r0, [sp, #64]
.LBB129:
.LBB130:
	.loc 1 98 0 is_stmt 1
	ldrd	r2, [sp, #72]
.LBE130:
.LBE129:
	.loc 1 196 0 discriminator 7
	mul	r0, r7, r0
.LBB145:
.LBB143:
	.loc 1 98 0
	adds	r2, r2, r0
	adc	r3, r3, r0, asr #31
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_l2d(PLT)
.LVL582:
	ldrd	r2, [sp]
	bl	__aeabi_ddiv(PLT)
.LVL583:
.LBB131:
.LBB132:
	.loc 2 299 0
	mov	r2, #0
	mov	r3, #0
.LBE132:
.LBE131:
	.loc 1 98 0
	mov	r4, r0
	mov	r5, r1
.LVL584:
.LBB135:
.LBB133:
	.loc 2 299 0
	bl	__aeabi_dcmplt(PLT)
.LVL585:
	cmp	r0, #0
	bne	.L356
	.loc 2 300 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L372
	bl	__aeabi_dcmpgt(PLT)
.LVL586:
	cmp	r0, #0
	.loc 2 300 0 is_stmt 0 discriminator 1
	ldrne	r5, .L372
	movne	r4, #0
.LVL587:
.L330:
.LBE133:
.LBE135:
	.loc 1 100 0 is_stmt 1
	ldr	r3, [sp, #8]
	cmp	r3, #14
	addls	pc, pc, r3, asl #2
	b	.L331
.L333:
	b	.L332
	b	.L334
	b	.L335
	b	.L336
	b	.L337
	b	.L338
	b	.L339
	b	.L340
	b	.L341
	b	.L342
	b	.L343
	b	.L344
	b	.L345
	b	.L346
	b	.L347
	.p2align 1
.L347:
	.loc 1 147 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L372+4
	bl	__aeabi_dcmple(PLT)
.LVL588:
	cmp	r0, #0
	beq	.L365
	.loc 1 147 0 is_stmt 0 discriminator 1
	mov	r2, r4
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL589:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dmul(PLT)
.LVL590:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul(PLT)
.LVL591:
	b	.L368
.L346:
	.loc 1 144 0 is_stmt 1
	mov	r1, r5
	mov	r0, r4
	mov	r2, #0
	ldr	r3, .L372+4
	bl	__aeabi_dcmple(PLT)
.LVL592:
	.loc 1 144 0 is_stmt 0 discriminator 1
	mov	r1, r5
	.loc 1 144 0
	cmp	r0, #0
	.loc 1 144 0 discriminator 1
	mov	r0, r4
	.loc 1 144 0
	bne	.L371
	.loc 1 144 0 discriminator 2
	mov	r2, 