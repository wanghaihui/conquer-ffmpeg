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
	.file	"avf_showcqt.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_ddiv
	.align	2
	.type	c_weighting, %function
c_weighting:
.LFB59:
	.file 1 "libavfilter/avf_showcqt.c"
	.loc 1 178 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
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
	.loc 1 179 0
	mov	r0, r2
.LVL1:
	mov	r1, r3
	bl	__aeabi_dmul(PLT)
.LVL2:
	mov	r2, #-2147483648
	ldr	r3, .L3
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dmul(PLT)
.LVL3:
	.loc 1 180 0
	ldr	r2, .L3+4
	ldr	r3, .L3+8
	.loc 1 179 0
	mov	r6, r0
	mov	r7, r1
.LVL4:
	.loc 1 180 0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL5:
	mov	r2, #-2147483648
	ldr	r3, .L3
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL6:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL7:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv(PLT)
.LVL8:
	.loc 1 182 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L4:
	.align	2
.L3:
	.word	1101119036
	.word	-1889785609
	.word	1081771458
	.cfi_endproc
.LFE59:
	.size	c_weighting, .-c_weighting
	.global	__aeabi_fmul
	.global	__aeabi_fadd
	.global	__aeabi_fsub
	.align	2
	.type	cqt_calc, %function
cqt_calc:
.LFB61:
	.loc 1 228 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL9:
	.loc 1 230 0 discriminator 1
	cmp	r3, #0
	bxle	lr
	.loc 1 228 0
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
	add	r3, r0, r3, asl #3
.LVL10:
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	str	r3, [sp, #16]
	add	r3, r2, #8
	str	r1, [sp, #20]
	str	r0, [sp, #12]
	str	r3, [sp, #8]
.LVL11:
.L7:
.LBB49:
	.loc 1 233 0 discriminator 1
	ldr	r1, [sp, #8]
	ldr	r2, [r1]
	cmp	r2, #0
	ble	.L10
	ldr	r3, [r1, #-4]
	ldr	fp, [r1, #-8]
	ldr	r1, [sp, #64]
	mov	r6, #0
	rsb	r5, r3, r1
	ldr	r1, [sp, #20]
	mov	r9, r6
	add	r10, r1, r3, asl #3
	add	r5, r1, r5, asl #3
	add	r3, fp, r2, asl #2
	mov	r8, r6
	mov	r7, r6
	str	r3, [sp, #4]
.LVL12:
.L8:
.LBB50:
	.loc 1 234 0
	ldr	r4, [fp], #4	@ float
.LVL13:
	.loc 1 237 0
	ldr	r1, [r10]	@ float
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
.LVL14:
	add	r10, r10, #8
	sub	r5, r5, #8
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd(PLT)
.LVL15:
	.loc 1 238 0
	ldr	r1, [r10, #-4]	@ float
	.loc 1 237 0
	mov	r6, r0
.LVL16:
	.loc 1 238 0
	mov	r0, r4
.LVL17:
	bl	__aeabi_fmul(PLT)
.LVL18:
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fadd(PLT)
.LVL19:
	.loc 1 239 0
	ldr	r1, [r5, #8]	@ float
	.loc 1 238 0
	mov	r9, r0
.LVL20:
	.loc 1 239 0
	mov	r0, r4
.LVL21:
	bl	__aeabi_fmul(PLT)
.LVL22:
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd(PLT)
.LVL23:
	.loc 1 240 0
	ldr	r1, [r5, #12]	@ float
	.loc 1 239 0
	mov	r8, r0
.LVL24:
	.loc 1 240 0
	mov	r0, r4
.LVL25:
	bl	__aeabi_fmul(PLT)
.LVL26:
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
.LVL27:
.LBE50:
	.loc 1 233 0 discriminator 1
	ldr	r3, [sp, #4]
	cmp	fp, r3
.LBB51:
	.loc 1 240 0
	mov	r7, r0
.LVL28:
.LBE51:
	.loc 1 233 0 discriminator 1
	bne	.L8
	mov	r0, r6
.LVL29:
	mov	r1, r8
	bl	__aeabi_fadd(PLT)
.LVL30:
	mov	r1, r7
	mov	r10, r0
	mov	r0, r9
	bl	__aeabi_fsub(PLT)
.LVL31:
	mov	r1, r7
	mov	r4, r0
.LVL32:
	mov	r0, r9
	bl	__aeabi_fadd(PLT)
.LVL33:
	mov	r1, r6
	mov	r5, r0
	mov	r0, r8
	bl	__aeabi_fsub(PLT)
.LVL34:
	mov	r1, r10
	mov	r6, r0
.LVL35:
	mov	r0, r10
	bl	__aeabi_fmul(PLT)
.LVL36:
	mov	r1, r4
	mov	r7, r0
.LVL37:
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
.LVL38:
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
.LVL39:
	mov	r1, r5
	mov	r4, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
.LVL40:
	mov	r1, r6
	mov	r5, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
.LVL41:
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
.LVL42:
.L9:
	.loc 1 248 0
	ldr	r3, [sp, #12]
.LBE49:
	.loc 1 230 0 discriminator 1
	ldr	r2, [sp, #16]
.LBB52:
	.loc 1 248 0
	str	r4, [r3]	@ float
	.loc 1 249 0
	str	r0, [r3, #4]	@ float
	add	r3, r3, #8
	str	r3, [sp, #12]
.LBE52:
	.loc 1 230 0 discriminator 1
	cmp	r3, r2
	ldr	r3, [sp, #8]
	add	r3, r3, #12
	str	r3, [sp, #8]
	bne	.L7
	.loc 1 251 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL43:
.L10:
	.cfi_restore_state
.LBB53:
	.loc 1 233 0 discriminator 1
	mov	r0, #0
	mov	r4, r0
	b	.L9
.LBE53:
	.cfi_endproc
.LFE61:
	.size	cqt_calc, .-cqt_calc
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.global	__aeabi_d2iz
	.global	__aeabi_i2d
	.align	2
	.type	r_func, %function
r_func:
.LFB68:
	.loc 1 443 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL44:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB54:
.LBB55:
	.file 2 "./libavutil/common.h"
	.loc 2 299 0
	mov	r0, r2
.LVL45:
	mov	r1, r3
.LBE55:
.LBE54:
	.loc 1 443 0
	mov	r4, r2
	mov	r5, r3
.LVL46:
.LBB58:
.LBB56:
	.loc 2 299 0
	mov	r2, #0
.LVL47:
	mov	r3, #0
	bl	__aeabi_dcmplt(PLT)
.LVL48:
	cmp	r0, #0
	bne	.L17
	.loc 2 300 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L21
	bl	__aeabi_dcmpgt(PLT)
.LVL49:
	cmp	r0, #0
	beq	.L20
	mov	r0, #0
	ldr	r1, .L21+4
.LVL50:
.LBE56:
.LBE58:
	.loc 1 446 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL51:
.L20:
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L21+8
	bl	__aeabi_dmul(PLT)
.LVL52:
	mov	r2, #0
	ldr	r3, .L21+12
	bl	__aeabi_dadd(PLT)
.LVL53:
	bl	__aeabi_d2iz(PLT)
.LVL54:
	mov	r0, r0, asl #16
	bl	__aeabi_i2d(PLT)
.LVL55:
	ldmfd	sp!, {r3, r4, r5, pc}
.L17:
.LBB59:
.LBB57:
	.loc 2 299 0
	mov	r0, #0
	mov	r1, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.L22:
	.align	2
.L21:
	.word	1072693248
	.word	1097850880
	.word	1081073664
	.word	1071644672
.LBE57:
.LBE59:
	.cfi_endproc
.LFE68:
	.size	r_func, .-r_func
	.align	2
	.type	g_func, %function
g_func:
.LFB69:
	.loc 1 449 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL56:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB60:
.LBB61:
	.loc 2 299 0
	mov	r0, r2
.LVL57:
	mov	r1, r3
.LBE61:
.LBE60:
	.loc 1 449 0
	mov	r4, r2
	mov	r5, r3
.LVL58:
.LBB64:
.LBB62:
	.loc 2 299 0
	mov	r2, #0
.LVL59:
	mov	r3, #0
	bl	__aeabi_dcmplt(PLT)
.LVL60:
	cmp	r0, #0
	bne	.L25
	.loc 2 300 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L29
	bl	__aeabi_dcmpgt(PLT)
.LVL61:
	cmp	r0, #0
	beq	.L28
	mov	r0, #0
	ldr	r1, .L29+4
.LVL62:
.LBE62:
.LBE64:
	.loc 1 452 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL63:
.L28:
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L29+8
	bl	__aeabi_dmul(PLT)
.LVL64:
	mov	r2, #0
	ldr	r3, .L29+12
	bl	__aeabi_dadd(PLT)
.LVL65:
	bl	__aeabi_d2iz(PLT)
.LVL66:
	mov	r0, r0, asl #8
	bl	__aeabi_i2d(PLT)
.LVL67:
	ldmfd	sp!, {r3, r4, r5, pc}
.L25:
.LBB65:
.LBB63:
	.loc 2 299 0
	mov	r0, #0
	mov	r1, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.L30:
	.align	2
.L29:
	.word	1072693248
	.word	1089462272
	.word	1081073664
	.word	1071644672
.LBE63:
.LBE65:
	.cfi_endproc
.LFE69:
	.size	g_func, .-g_func
	.align	2
	.type	b_func, %function
b_func:
.LFB70:
	.loc 1 455 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL68:
	stmfd	sp!, {r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB66:
.LBB67:
	.loc 2 299 0
	mov	r0, r2
.LVL69:
	mov	r1, r3
.LBE67:
.LBE66:
	.loc 1 455 0
	mov	r4, r2
	mov	r5, r3
.LVL70:
.LBB70:
.LBB68:
	.loc 2 299 0
	mov	r2, #0
.LVL71:
	mov	r3, #0
	bl	__aeabi_dcmplt(PLT)
.LVL72:
	cmp	r0, #0
	bne	.L33
	.loc 2 300 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L37
	bl	__aeabi_dcmpgt(PLT)
.LVL73:
	cmp	r0, #0
	beq	.L36
	mov	r0, #0
	ldr	r1, .L37+4
.LVL74:
.LBE68:
.LBE70:
	.loc 1 458 0
	ldmfd	sp!, {r3, r4, r5, pc}
.LVL75:
.L36:
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L37+4
	bl	__aeabi_dmul(PLT)
.LVL76:
	mov	r2, #0
	ldr	r3, .L37+8
	bl	__aeabi_dadd(PLT)
.LVL77:
	bl	__aeabi_d2iz(PLT)
.LVL78:
	bl	__aeabi_i2d(PLT)
.LVL79:
	ldmfd	sp!, {r3, r4, r5, pc}
.L33:
.LBB71:
.LBB69:
	.loc 2 299 0
	mov	r0, #0
	mov	r1, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.L38:
	.align	2
.L37:
	.word	1072693248
	.word	1081073664
	.word	1071644672
.LBE69:
.LBE71:
	.cfi_endproc
.LFE70:
	.size	b_func, .-b_func
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_fcmpge
	.global	__aeabi_f2uiz
	.align	2
	.type	draw_bar_rgb, %function
draw_bar_rgb:
.LFB78:
	.loc 1 690 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL80:
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
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 690 0
	ldr	r10, [sp, #72]
	mov	r4, r0
	.loc 1 692 0
	mov	r0, r10
.LVL81:
	.loc 1 690 0
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	mov	r5, r1
	str	r1, [sp, #20]
	.loc 1 692 0
	bl	__aeabi_i2f(PLT)
.LVL82:
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fdiv(PLT)
.LVL83:
	.loc 1 691 0
	ldr	r3, [r4, #68]
	.loc 1 694 0
	ldr	r2, [r4, #32]
	.loc 1 696 0 discriminator 1
	cmp	r10, #0
	.loc 1 691 0
	str	r3, [sp, #8]
.LVL84:
	.loc 1 693 0
	ldr	fp, [r4]
.LVL85:
	.loc 1 694 0
	str	r2, [sp, #16]
.LVL86:
	.loc 1 692 0
	str	r0, [sp, #12]	@ float
.LVL87:
	.loc 1 696 0 discriminator 1
	ble	.L39
	add	r2, fp, #3
.LVL88:
	add	r9, r5, r3, asl #2
	.loc 1 701 0
	mov	r7, #0
	str	r10, [sp]
	str	r2, [sp, #4]
.LVL89:
.L42:
	.loc 1 697 0
	ldr	r0, [sp]
	bl	__aeabi_i2f(PLT)
.LVL90:
	ldr	r1, [sp, #12]	@ float
	bl	__aeabi_fmul(PLT)
.LVL91:
	.loc 1 699 0 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r3, #0
	.loc 1 697 0
	mov	r6, r0
.LVL92:
	.loc 1 699 0 discriminator 1
	ble	.L48
	ldr	r10, [sp, #20]
	ldr	r5, [sp, #24]
	ldr	r4, [sp, #28]
	ldr	fp, [sp, #4]
	b	.L47
.LVL93:
.L54:
	.loc 1 701 0
	strb	r7, [fp, #-3]
.LVL94:
	.loc 1 702 0
	strb	r7, [fp, #-2]
.LVL95:
	.loc 1 703 0
	strb	r7, [fp, #-1]
.LVL96:
.L46:
	.loc 1 699 0 discriminator 1
	cmp	r10, r9
	add	fp, fp, #3
	add	r5, r5, #4
	add	r4, r4, #12
	beq	.L48
.L47:
.LVL97:
	.loc 1 700 0
	ldr	r8, [r10], #4	@ float
	mov	r0, r6
	mov	r1, r8
	bl	__aeabi_fcmpge(PLT)
.LVL98:
	.loc 1 705 0
	mov	r1, r6
	.loc 1 700 0
	cmp	r0, #0
	.loc 1 705 0
	mov	r0, r8
	.loc 1 700 0
	bne	.L54
.LVL99:
	.loc 1 705 0
	bl	__aeabi_fsub(PLT)
.LVL100:
	ldr	r1, [r5]	@ float
	bl	__aeabi_fmul(PLT)
.LVL101:
	.loc 1 706 0
	ldr	r1, [r4]	@ float
	.loc 1 705 0
	mov	r8, r0
.LVL102:
	.loc 1 706 0
	bl	__aeabi_fmul(PLT)
.LVL103:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL104:
	bl	__aeabi_f2uiz(PLT)
.LVL105:
	strb	r0, [fp, #-3]
.LVL106:
	.loc 1 707 0
	mov	r0, r8
	ldr	r1, [r4, #4]	@ float
	bl	__aeabi_fmul(PLT)
.LVL107:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL108:
	bl	__aeabi_f2uiz(PLT)
.LVL109:
	strb	r0, [fp, #-2]
.LVL110:
	.loc 1 708 0
	mov	r0, r8
	ldr	r1, [r4, #8]	@ float
	bl	__aeabi_fmul(PLT)
.LVL111:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL112:
	bl	__aeabi_f2uiz(PLT)
.LVL113:
	strb	r0, [fp, #-1]
	b	.L46
.LVL114:
.L48:
	.loc 1 696 0 discriminator 1
	ldr	r3, [sp]
	ldr	r2, [sp, #16]
	subs	r3, r3, #1
	str	r3, [sp]
.LVL115:
	ldr	r3, [sp, #4]
.LVL116:
	add	r3, r3, r2
	str	r3, [sp, #4]
	bne	.L42
.LVL117:
.L39:
	.loc 1 712 0
	add	sp, sp, #36
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE78:
	.size	draw_bar_rgb, .-draw_bar_rgb
	.align	2
	.type	draw_bar_yuv, %function
draw_bar_yuv:
.LFB79:
	.loc 1 716 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL118:
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
	sub	sp, sp, #108
	.cfi_def_cfa_offset 144
	.loc 1 716 0
	mov	r4, r0
	str	r0, [sp, #24]
	.loc 1 718 0
	ldr	r0, [sp, #144]
.LVL119:
	.loc 1 716 0
	str	r2, [sp, #36]
	str	r3, [sp, #64]
	str	r1, [sp, #20]
	.loc 1 718 0
	bl	__aeabi_i2f(PLT)
.LVL120:
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fdiv(PLT)
.LVL121:
	.loc 1 719 0
	ldr	r1, [r4, #4]
	.loc 1 724 0 discriminator 1
	ldr	r3, [sp, #144]
	.loc 1 719 0
	mov	lr, r1
	str	r1, [sp, #68]
	ldr	r1, [r4, #8]
	mov	r2, r4
	.loc 1 724 0 discriminator 1
	cmp	r3, #0
	.loc 1 717 0
	ldr	r3, [r4, #68]
	.loc 1 721 0
	ldr	ip, [r2, #40]
	.loc 1 717 0
	str	r3, [sp, #12]
.LVL122:
	.loc 1 719 0
	str	r1, [sp, #72]
	ldr	r3, [r4]
.LVL123:
	mov	r4, r1
.LVL124:
	.loc 1 721 0
	ldr	r1, [r2, #32]
.LVL125:
	str	r1, [sp, #96]
.LVL126:
	str	ip, [sp, #80]
	.loc 1 718 0
	str	r0, [sp, #60]	@ float
.LVL127:
	.loc 1 721 0
	ldr	r0, [r2, #36]
	.loc 1 722 0
	ldr	r2, [r2, #80]
.LVL128:
	.loc 1 721 0
	str	r0, [sp, #76]
.LVL129:
	.loc 1 722 0
	str	r2, [sp, #16]
.LVL130:
	.loc 1 724 0 discriminator 1
	ble	.L55
	add	r3, r3, #2
.LVL131:
	str	r3, [sp, #44]
	ldr	r3, [sp, #144]
	str	r3, [sp, #40]
	mov	r3, r0, asl #1
	str	r3, [sp, #84]
	add	r3, lr, r0
	str	r3, [sp, #52]
	mov	r3, ip, asl #1
	str	r3, [sp, #88]
	add	r3, r4, ip
	str	r3, [sp, #56]
	mov	r3, r1, asl #1
	str	r3, [sp, #92]
	mov	r3, #0
	str	r3, [sp, #48]
	sub	r3, r1, #1
	str	r3, [sp, #100]
.LVL132:
.L59:
	.loc 1 725 0
	ldr	r3, [sp, #16]
	.loc 1 726 0
	ldr	r0, [sp, #40]
	.loc 1 725 0
	cmp	r3, #0
	.loc 1 725 0 is_stmt 0 discriminator 1
	ldreq	r3, [sp, #48]
	ldrne	r6, [sp, #48]
	moveq	r6, r3, asr #1
.LVL133:
	.loc 1 726 0 is_stmt 1
	bl	__aeabi_i2f(PLT)
.LVL134:
	ldr	r1, [sp, #60]	@ float
	bl	__aeabi_fmul(PLT)
.LVL135:
	.loc 1 730 0 discriminator 1
	ldr	r3, [sp, #12]
	.loc 1 728 0
	ldr	r7, [sp, #76]
	.loc 1 730 0 discriminator 1
	cmp	r3, #0
	.loc 1 728 0
	ldr	r3, [sp, #68]
	.loc 1 729 0
	ldr	r2, [sp, #72]
	.loc 1 728 0
	mla	r7, r6, r7, r3
	.loc 1 729 0
	ldr	r3, [sp, #80]
	mla	r3, r6, r3, r2
	mov	r6, r3
.LVL136:
	.loc 1 726 0
	mov	r10, r0
.LVL137:
	.loc 1 730 0 discriminator 1
	ble	.L85
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #36]
.LVL138:
	sub	r1, r2, #1
	ldr	r9, [sp, #20]
	str	r3, [sp, #8]
	ldr	r5, [sp, #64]
	stmia	sp, {r1, r3}
	mov	r8, r2
	mov	r4, #0
	b	.L70
.LVL139:
.L109:
	.loc 1 732 0
	mov	r3, #16
	strb	r3, [r8, #-2]
	.loc 1 733 0
	mvn	r3, #127
	strb	r3, [r7]
	.loc 1 734 0
	add	r6, r6, #1
.LVL140:
	strb	r3, [r6, #-1]
	.loc 1 733 0
	add	r7, r7, #1
.LVL141:
.L63:
	.loc 1 742 0
	ldr	r3, [sp, #16]
	.loc 1 743 0
	ldr	fp, [r9, #4]	@ float
	.loc 1 742 0
	cmp	r3, #5
	.loc 1 743 0
	mov	r0, r10
	mov	r1, fp
	.loc 1 742 0
	beq	.L107
.LVL142:
	.loc 1 754 0
	bl	__aeabi_fcmpge(PLT)
.LVL143:
	cmp	r0, #0
	beq	.L99
.LVL144:
	.loc 1 755 0
	ldr	r2, [sp]
	mov	r3, #16
	strb	r3, [r2]
.L67:
.LVL145:
	.loc 1 730 0 discriminator 1
	ldr	r3, [sp, #12]
	.loc 1 730 0 is_stmt 0 discriminator 2
	add	r4, r4, #2
.LVL146:
	.loc 1 730 0 discriminator 1
	cmp	r3, r4
	ldr	r3, [sp, #4]
	add	r9, r9, #8
	add	r3, r3, #8
	str	r3, [sp, #4]
	ldr	r3, [sp]
	add	r8, r8, #2
	add	r3, r3, #2
	add	r5, r5, #24
	str	r3, [sp]
	ble	.L108
.LVL147:
.L70:
	.loc 1 731 0 is_stmt 1
	ldr	r3, [sp, #20]
	mov	r0, r10
	ldr	fp, [r3, r4, asl #2]	@ float
	mov	r1, fp
	bl	__aeabi_fcmpge(PLT)
.LVL148:
	cmp	r0, #0
	bne	.L109
	.loc 1 736 0
	mov	r0, fp
	mov	r1, r10
	bl	__aeabi_fsub(PLT)
.LVL149:
	ldr	r3, [sp, #36]
	ldr	r1, [r3, r4, asl #2]	@ float
	bl	__aeabi_fmul(PLT)
.LVL150:
	.loc 1 737 0
	ldr	r1, [r5]	@ float
	.loc 1 736 0
	mov	fp, r0
.LVL151:
	.loc 1 737 0
	bl	__aeabi_fmul(PLT)
.LVL152:
	ldr	r1, .L112
	bl	__aeabi_fadd(PLT)
.LVL153:
	bl	__aeabi_f2uiz(PLT)
.LVL154:
	.loc 1 738 0
	add	r2, r7, #1
	.loc 1 739 0
	add	r3, r6, #1
	.loc 1 738 0
	str	r2, [sp, #32]
.LVL155:
	.loc 1 739 0
	str	r3, [sp, #28]
	.loc 1 737 0
	strb	r0, [r8, #-2]
	.loc 1 738 0
	mov	r0, fp
	ldr	r1, [r5, #4]	@ float
	bl	__aeabi_fmul(PLT)
.LVL156:
	ldr	r1, .L112+4
	bl	__aeabi_fadd(PLT)
.LVL157:
	bl	__aeabi_f2uiz(PLT)
.LVL158:
	strb	r0, [r7]
	.loc 1 739 0
	mov	r0, fp
	ldr	r1, [r5, #8]	@ float
	bl	__aeabi_fmul(PLT)
.LVL159:
	ldr	r1, .L112+4
	bl	__aeabi_fadd(PLT)
.LVL160:
	bl	__aeabi_f2uiz(PLT)
.LVL161:
	.loc 1 738 0
	ldr	r2, [sp, #32]
	.loc 1 739 0
	ldr	r3, [sp, #28]
	.loc 1 738 0
	mov	r7, r2
	.loc 1 739 0
	strb	r0, [r6]
	mov	r6, r3
	b	.L63
.LVL162:
.L99:
	.loc 1 757 0
	mov	r1, r10
	mov	r0, fp
	bl	__aeabi_fsub(PLT)
.LVL163:
	ldr	r3, [sp, #4]
	ldr	r1, [r3, #4]	@ float
.LVL164:
	bl	__aeabi_fmul(PLT)
.LVL165:
	.loc 1 758 0
	ldr	r1, [r5, #12]	@ float
	bl	__aeabi_fmul(PLT)
.LVL166:
	ldr	r1, .L112
	bl	__aeabi_fadd(PLT)
.LVL167:
	bl	__aeabi_f2uiz(PLT)
.LVL168:
	ldr	r3, [sp]
	strb	r0, [r3]
	b	.L67
.LVL169:
.L107:
	.loc 1 743 0
	bl	__aeabi_fcmpge(PLT)
.LVL170:
	cmp	r0, #0
	beq	.L98
.LVL171:
	.loc 1 744 0
	ldr	r2, [sp]
	mov	r3, #16
	strb	r3, [r2]
	.loc 1 745 0
	mvn	r3, #127
	strb	r3, [r7]
	.loc 1 746 0
	add	r6, r6, #1
.LVL172:
	strb	r3, [r6, #-1]
	.loc 1 745 0
	add	r7, r7, #1
.LVL173:
	b	.L67
.LVL174:
.L98:
	.loc 1 748 0
	mov	r0, fp
	mov	r1, r10
	bl	__aeabi_fsub(PLT)
.LVL175:
	ldr	r3, [sp, #4]
	ldr	r1, [r3, #4]	@ float
	bl	__aeabi_fmul(PLT)
.LVL176:
	.loc 1 749 0
	ldr	r1, [r5, #12]	@ float
	.loc 1 748 0
	mov	fp, r0
.LVL177:
	.loc 1 749 0
	bl	__aeabi_fmul(PLT)
.LVL178:
	ldr	r1, .L112
	bl	__aeabi_fadd(PLT)
.LVL179:
	bl	__aeabi_f2uiz(PLT)
.LVL180:
	.loc 1 751 0
	add	r3, r6, #1
	str	r3, [sp, #28]
	.loc 1 749 0
	ldr	r3, [sp]
	.loc 1 750 0
	add	r2, r7, #1
	str	r2, [sp, #32]
.LVL181:
	.loc 1 749 0
	strb	r0, [r3]
	.loc 1 750 0
	mov	r0, fp
	ldr	r1, [r5, #16]	@ float
	bl	__aeabi_fmul(PLT)
.LVL182:
	ldr	r1, .L112+4
	bl	__aeabi_fadd(PLT)
.LVL183:
	bl	__aeabi_f2uiz(PLT)
.LVL184:
	strb	r0, [r7]
	.loc 1 751 0
	mov	r0, fp
	ldr	r1, [r5, #20]	@ float
	bl	__aeabi_fmul(PLT)
.LVL185:
	ldr	r1, .L112+4
	bl	__aeabi_fadd(PLT)
.LVL186:
	bl	__aeabi_f2uiz(PLT)
.LVL187:
	.loc 1 750 0
	ldr	r2, [sp, #32]
	.loc 1 751 0
	ldr	r3, [sp, #28]
	.loc 1 750 0
	mov	r7, r2
	.loc 1 751 0
	strb	r0, [r6]
	mov	r6, r3
	b	.L67
.LVL188:
.L85:
	.loc 1 724 0 discriminator 2
	ldr	r3, [sp, #48]
	.loc 1 724 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #144]
	.loc 1 724 0 discriminator 2
	add	r3, r3, #2
	.loc 1 724 0 discriminator 1
	cmp	r2, r3
	.loc 1 724 0 discriminator 2
	str	r3, [sp, #48]
.LVL189:
	ldr	r3, [sp, #40]
.LVL190:
	ldr	r2, [sp, #84]
	sub	r3, r3, #2
	str	r3, [sp, #40]
	ldr	r3, [sp, #52]
	add	r3, r3, r2
	str	r3, [sp, #52]
	ldr	r2, [sp, #88]
	ldr	r3, [sp, #56]
	add	r3, r3, r2
	str	r3, [sp, #56]
	ldr	r2, [sp, #92]
	ldr	r3, [sp, #44]
	add	r3, r3, r2
	str	r3, [sp, #44]
	.loc 1 724 0 discriminator 1
	bgt	.L59
.LVL191:
.L55:
	.loc 1 810 0 is_stmt 1
	add	sp, sp, #108
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL192:
.L108:
	.cfi_restore_state
	.loc 1 763 0
	ldr	r3, [sp, #40]
	.loc 1 766 0
	mov	r6, #0
.LVL193:
	.loc 1 763 0
	sub	r0, r3, #1
	bl	__aeabi_i2f(PLT)
.LVL194:
	ldr	r1, [sp, #60]	@ float
	bl	__aeabi_fmul(PLT)
.LVL195:
	.loc 1 765 0
	ldr	r3, [sp, #52]
	str	r3, [sp]
	.loc 1 766 0
	ldr	r3, [sp, #56]
	ldr	r2, [sp, #96]
	str	r3, [sp, #4]
	ldr	r3, [sp, #44]
	add	r8, r3, r2
	ldr	r2, [sp, #36]
	add	r10, r2, #4
.LVL196:
	ldr	r2, [sp, #64]
	add	r5, r2, #16
	ldr	r2, [sp, #20]
	add	r4, r2, #4
.LVL197:
	ldr	r2, [sp, #100]
	add	r7, r2, r3
.LVL198:
	.loc 1 763 0
	mov	r9, r0
.LVL199:
	b	.L84
.LVL200:
.L111:
	.loc 1 770 0
	bl	__aeabi_fcmpge(PLT)
.LVL201:
	cmp	r0, #0
	beq	.L101
.LVL202:
	.loc 1 771 0
	mov	r3, #16
	strb	r3, [r8, #-2]
	.loc 1 772 0
	ldr	r3, [sp]
	mvn	r2, #127
	strb	r2, [r3]
	.loc 1 773 0
	mov	r1, r2
	ldr	r2, [sp, #4]
	.loc 1 772 0
	add	r3, r3, #1
.LVL203:
	str	r3, [sp]
	.loc 1 773 0
	add	r3, r2, #1
.LVL204:
	strb	r1, [r2]
	str	r3, [sp, #4]
.LVL205:
.L75:
	.loc 1 789 0
	ldr	r3, [sp, #24]
	.loc 1 790 0
	ldr	fp, [r4]	@ float
	.loc 1 789 0
	ldr	r3, [r3, #80]
	.loc 1 790 0
	mov	r0, r9
	.loc 1 789 0
	cmp	r3, #5
	.loc 1 790 0
	mov	r1, fp
	.loc 1 789 0
	beq	.L110
.LVL206:
	.loc 1 801 0
	bl	__aeabi_fcmpge(PLT)
.LVL207:
	cmp	r0, #0
	.loc 1 802 0
	movne	r3, #16
	strneb	r3, [r7]
	.loc 1 801 0
	bne	.L81
.LVL208:
	.loc 1 804 0
	mov	r1, r9
	mov	r0, fp
	bl	__aeabi_fsub(PLT)
.LVL209:
	ldr	r3, [sp, #8]
	ldr	r1, [r3, #4]	@ float
.LVL210:
	bl	__aeabi_fmul(PLT)
.LVL211:
	.loc 1 805 0
	ldr	r1, [r5, #-4]	@ float
	bl	__aeabi_fmul(PLT)
.LVL212:
	ldr	r1, .L112
	bl	__aeabi_fadd(PLT)
.LVL213:
	bl	__aeabi_f2uiz(PLT)
.LVL214:
	strb	r0, [r7]
.LVL215:
.L81:
	.loc 1 767 0 discriminator 1
	ldr	r3, [sp, #12]
	.loc 1 767 0 is_stmt 0 discriminator 2
	add	r6, r6, #2
.LVL216:
	.loc 1 767 0 discriminator 1
	cmp	r3, r6
	ldr	r3, [sp, #8]
	add	r8, r8, #2
	add	r3, r3, #8
	add	r10, r10, #8
	str	r3, [sp, #8]
	add	r5, r5, #24
	add	r4, r4, #8
	add	r7, r7, #2
	ble	.L85
.LVL217:
.L84:
	.loc 1 769 0 is_stmt 1
	ldr	r3, [sp, #16]
	.loc 1 770 0
	ldr	fp, [r4, #-4]	@ float
	.loc 1 769 0
	cmp	r3, #0
	.loc 1 770 0
	mov	r0, r9
	mov	r1, fp
	.loc 1 769 0
	bne	.L111
.LVL218:
	.loc 1 781 0
	bl	__aeabi_fcmpge(PLT)
.LVL219:
	cmp	r0, #0
	.loc 1 782 0
	movne	r3, #16
	strneb	r3, [r8, #-2]
	.loc 1 781 0
	bne	.L75
.LVL220:
	.loc 1 784 0
	mov	r1, r9
	mov	r0, fp
	bl	__aeabi_fsub(PLT)
.LVL221:
	ldr	r1, [r10, #-4]	@ float
.LVL222:
	bl	__aeabi_fmul(PLT)
.LVL223:
	.loc 1 785 0
	ldr	r1, [r5, #-16]	@ float
	bl	__aeabi_fmul(PLT)
.LVL224:
	ldr	r1, .L112
	bl	__aeabi_fadd(PLT)
.LVL225:
	bl	__aeabi_f2uiz(PLT)
.LVL226:
	strb	r0, [r8, #-2]
	b	.L75
.LVL227:
.L110:
	.loc 1 790 0
	bl	__aeabi_fcmpge(PLT)
.LVL228:
	cmp	r0, #0
	beq	.L103
.LVL229:
	.loc 1 791 0
	mov	r3, #16
	strb	r3, [r7]
	.loc 1 792 0
	ldr	r3, [sp]
	mvn	r2, #127
	strb	r2, [r3]
	.loc 1 793 0
	mov	r1, r2
	ldr	r2, [sp, #4]
	.loc 1 792 0
	add	r3, r3, #1
.LVL230:
	str	r3, [sp]
	.loc 1 793 0
	add	r3, r2, #1
.LVL231:
	strb	r1, [r2]
	str	r3, [sp, #4]
	b	.L81
.LVL232:
.L101:
	.loc 1 775 0
	mov	r0, fp
	mov	r1, r9
	bl	__aeabi_fsub(PLT)
.LVL233:
	ldr	r1, [r10, #-4]	@ float
	bl	__aeabi_fmul(PLT)
.LVL234:
	.loc 1 776 0
	ldr	r1, [r5, #-16]	@ float
	.loc 1 775 0
	mov	fp, r0
.LVL235:
	.loc 1 776 0
	bl	__aeabi_fmul(PLT)
.LVL236:
	ldr	r1, .L112
	bl	__aeabi_fadd(PLT)
.LVL237:
	bl	__aeabi_f2uiz(PLT)
.LVL238:
	.loc 1 777 0
	ldr	r3, [sp]
	add	r2, r3, #1
	str	r2, [sp, #32]
.LVL239:
	.loc 1 778 0
	ldr	r2, [sp, #4]
.LVL240:
	add	r3, r2, #1
	str	r3, [sp, #28]
	.loc 1 776 0
	strb	r0, [r8, #-2]
	.loc 1 777 0
	mov	r0, fp
	ldr	r1, [r5, #-12]	@ float
	bl	__aeabi_fmul(PLT)
.LVL241:
	ldr	r1, .L112+4
	bl	__aeabi_fadd(PLT)
.LVL242:
	bl	__aeabi_f2uiz(PLT)
.LVL243:
	ldr	r3, [sp]
	strb	r0, [r3]
	.loc 1 778 0
	mov	r0, fp
	ldr	r1, [r5, #-8]	@ float
	bl	__aeabi_fmul(PLT)
.LVL244:
	ldr	r1, .L112+4
	bl	__aeabi_fadd(PLT)
.LVL245:
	bl	__aeabi_f2uiz(PLT)
.LVL246:
	.loc 1 777 0
	ldr	r2, [sp, #32]
	str	r2, [sp]
	.loc 1 778 0
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #28]
	str	r3, [sp, #4]
	strb	r0, [r2]
	b	.L75
.LVL247:
.L103:
	.loc 1 795 0
	mov	r0, fp
	mov	r1, r9
	bl	__aeabi_fsub(PLT)
.LVL248:
	ldr	r3, [sp, #8]
	ldr	r1, [r3, #4]	@ float
	bl	__aeabi_fmul(PLT)
.LVL249:
	.loc 1 796 0
	ldr	r1, [r5, #-4]	@ float
	.loc 1 795 0
	mov	fp, r0
.LVL250:
	.loc 1 796 0
	bl	__aeabi_fmul(PLT)
.LVL251:
	ldr	r1, .L112
	bl	__aeabi_fadd(PLT)
.LVL252:
	bl	__aeabi_f2uiz(PLT)
.LVL253:
	.loc 1 797 0
	ldr	r3, [sp]
	add	r2, r3, #1
	str	r2, [sp, #32]
.LVL254:
	.loc 1 798 0
	ldr	r2, [sp, #4]
.LVL255:
	add	r3, r2, #1
	str	r3, [sp, #28]
	.loc 1 796 0
	strb	r0, [r7]
	.loc 1 797 0
	mov	r0, fp
	ldr	r1, [r5]	@ float
	bl	__aeabi_fmul(PLT)
.LVL256:
	ldr	r1, .L112+4
	bl	__aeabi_fadd(PLT)
.LVL257:
	bl	__aeabi_f2uiz(PLT)
.LVL258:
	ldr	r3, [sp]
	strb	r0, [r3]
	.loc 1 798 0
	mov	r0, fp
	ldr	r1, [r5, #4]	@ float
	bl	__aeabi_fmul(PLT)
.LVL259:
	ldr	r1, .L112+4
	bl	__aeabi_fadd(PLT)
.LVL260:
	bl	__aeabi_f2uiz(PLT)
.LVL261:
	.loc 1 797 0
	ldr	r2, [sp, #32]
	str	r2, [sp]
	.loc 1 798 0
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #28]
	str	r3, [sp, #4]
	strb	r0, [r2]
	b	.L81
.L113:
	.align	2
.L112:
	.word	1099169792
	.word	1124106240
	.cfi_endproc
.LFE79:
	.size	draw_bar_yuv, .-draw_bar_yuv
	.align	2
	.type	draw_axis_rgb, %function
draw_axis_rgb:
.LFB80:
	.loc 1 813 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL262:
	.loc 1 814 0
	ldr	ip, [r1, #72]
	.loc 1 813 0
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
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 814 0
	str	ip, [sp, #8]
	.loc 1 818 0 discriminator 1
	cmp	ip, #0
	.loc 1 814 0
	ldr	ip, [r1, #68]
	str	ip, [sp, #4]
.LVL263:
	.loc 1 818 0 discriminator 1
	ble	.L114
	str	r3, [sp, #20]
	add	r3, ip, #1
.LVL264:
	mov	r3, r3, asl #2
	mov	r10, #0
	str	r2, [sp, #28]
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	str	r3, [sp, #24]
.LVL265:
.L117:
	.loc 1 820 0
	ldr	r0, [sp, #12]
	.loc 1 819 0
	ldr	r1, [sp, #16]
	.loc 1 820 0
	ldr	r2, [r0, #32]
	ldr	r9, [r0]
	.loc 1 821 0 discriminator 1
	ldr	r0, [sp, #4]
	.loc 1 819 0
	ldr	r3, [r1, #32]
	.loc 1 821 0 discriminator 1
	cmp	r0, #0
	ldr	r0, [sp, #20]
	.loc 1 820 0
	mla	r9, r2, r10, r9
	add	r5, r10, r0
	.loc 1 819 0
	mul	r3, r5, r3
	ldr	r5, [r1]
.LVL266:
	.loc 1 821 0 discriminator 1
	ble	.L120
	add	r3, r3, #3
.LVL267:
	add	r5, r5, r3
.LVL268:
	ldr	r3, [sp, #24]
.LVL269:
	ldr	r6, [sp, #28]
	add	r4, r9, #4
	add	r9, r9, r3
.LVL270:
.L119:
	.loc 1 822 0
	ldrb	r0, [r4, #-1]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL271:
	ldr	r1, .L124
	bl	__aeabi_fmul(PLT)
.LVL272:
	add	r4, r4, #4
.LVL273:
	add	r6, r6, #12
	add	r5, r5, #3
.LVL274:
	mov	r7, r0
.LVL275:
	.loc 1 823 0
	mov	r1, r0
	mov	r0, #1065353216
.LVL276:
	bl	__aeabi_fsub(PLT)
.LVL277:
	mov	r8, r0
	ldrb	r0, [r4, #-8]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL278:
	mov	r1, r7
	bl	__aeabi_fmul(PLT)
.LVL279:
	ldr	r1, [r6, #-12]	@ float
	mov	fp, r0
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
.LVL280:
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fadd(PLT)
.LVL281:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL282:
	bl	__aeabi_f2uiz(PLT)
.LVL283:
	strb	r0, [r5, #-6]
.LVL284:
	.loc 1 824 0
	ldrb	r0, [r4, #-7]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL285:
	mov	r1, r7
	bl	__aeabi_fmul(PLT)
.LVL286:
	ldr	r1, [r6, #-8]	@ float
	mov	fp, r0
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
.LVL287:
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fadd(PLT)
.LVL288:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL289:
	bl	__aeabi_f2uiz(PLT)
.LVL290:
	strb	r0, [r5, #-5]
.LVL291:
	.loc 1 825 0
	ldrb	r0, [r4, #-6]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL292:
	mov	r1, r7
	bl	__aeabi_fmul(PLT)
.LVL293:
	ldr	r1, [r6, #-4]	@ float
	mov	r7, r0
.LVL294:
	mov	r0, r8
	bl	__aeabi_fmul(PLT)
.LVL295:
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
.LVL296:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL297:
	bl	__aeabi_f2uiz(PLT)
.LVL298:
	.loc 1 821 0 discriminator 1
	cmp	r4, r9
	.loc 1 825 0
	strb	r0, [r5, #-4]
.LVL299:
	.loc 1 821 0 discriminator 1
	bne	.L119
.L120:
	.loc 1 818 0 discriminator 1
	ldr	r3, [sp, #8]
	.loc 1 818 0 is_stmt 0 discriminator 2
	add	r10, r10, #1
.LVL300:
	.loc 1 818 0 discriminator 1
	cmp	r10, r3
	bne	.L117
.LVL301:
.L114:
	.loc 1 829 0 is_stmt 1
	add	sp, sp, #36
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L125:
	.align	2
.L124:
	.word	998277249
	.cfi_endproc
.LFE80:
	.size	draw_axis_rgb, .-draw_axis_rgb
	.align	2
	.type	draw_axis_yuv, %function
draw_axis_yuv:
.LFB81:
	.loc 1 832 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL302:
	.loc 1 833 0
	ldr	ip, [r0, #80]
	.loc 1 832 0
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
	sub	sp, sp, #156
	.cfi_def_cfa_offset 192
	.loc 1 834 0
	cmp	ip, #0
.LVL303:
	.loc 1 833 0
	str	ip, [sp, #8]
.LVL304:
	ldr	ip, [r1, #68]
	str	ip, [sp, #68]
.LVL305:
	ldr	ip, [r1, #72]
.LVL306:
	str	ip, [sp, #72]
.LVL307:
	.loc 1 834 0 discriminator 1
	addeq	ip, r3, r3, lsr #31
.LVL308:
	moveq	ip, ip, asr #1
	.loc 1 838 0
	ldr	r7, [r0, #40]
	.loc 1 834 0 discriminator 1
	streq	ip, [sp, #88]
	.loc 1 842 0 discriminator 1
	ldr	ip, [sp, #72]
	.loc 1 834 0 discriminator 2
	strne	r3, [sp, #88]
.LVL309:
	.loc 1 838 0
	str	r7, [sp, #100]
	.loc 1 842 0 discriminator 1
	cmp	ip, #0
	.loc 1 838 0
	mov	r8, r7
	.loc 1 836 0
	ldmia	r0, {ip, lr}
	.loc 1 839 0
	ldr	r7, [r1, #36]
	ldr	r10, [r1, #32]
	.loc 1 837 0
	ldr	r4, [r1, #4]
	.loc 1 836 0
	str	lr, [sp, #92]
	.loc 1 839 0
	str	r10, [sp, #140]
	str	r7, [sp, #104]
	.loc 1 836 0
	mov	r9, lr
.LVL310:
	.loc 1 839 0
	mov	r10, r7
	.loc 1 836 0
	ldr	lr, [r0, #8]
	.loc 1 839 0
	ldr	r7, [r1, #40]
	.loc 1 837 0
	ldr	r5, [r1, #8]
	.loc 1 836 0
	str	lr, [sp, #76]
.LVL311:
	.loc 1 837 0
	str	r4, [sp, #80]
	ldr	lr, [r1]
.LVL312:
	ldr	r4, [r1, #12]
.LVL313:
	.loc 1 838 0
	ldr	r6, [r0, #36]
	.loc 1 839 0
	ldr	r1, [r1, #44]
.LVL314:
	.loc 1 837 0
	str	r5, [sp, #84]
.LVL315:
	.loc 1 838 0
	str	r6, [sp, #96]
	ldr	r5, [r0, #32]
.LVL316:
	.loc 1 839 0
	str	r7, [sp, #108]
	mov	fp, r7
.LVL317:
	str	r1, [sp, #144]
.LVL318:
	.loc 1 842 0 discriminator 1
	ble	.L126
	str	r0, [sp, #20]
	ldr	r0, [sp, #68]
.LVL319:
	str	r2, [sp, #64]
	mov	r7, r6
.LVL320:
	sub	r2, r0, #1
.LVL321:
	add	r0, r3, #1
	mla	r7, r0, r7, r9
	mul	r1, r5, r3
.LVL322:
	str	r7, [sp, #44]
	ldr	r7, [sp, #76]
	mvn	r3, r3
.LVL323:
	mov	r2, r2, lsr #1
	mla	ip, r0, r5, ip
	mov	r9, r8
.LVL324:
	add	r2, r2, #1
	mla	r8, r0, r8, r7
.LVL325:
	mla	r0, r3, r5, r1
	ldr	r3, [sp, #64]
.LVL326:
	add	r2, r2, r2, asl #1
	add	r3, r3, r2, asl #3
	str	r3, [sp, #24]
	add	r3, ip, #2
	str	r3, [sp, #40]
	mov	r3, r5, asl #1
	str	r3, [sp, #128]
	mov	r3, r6, asl #1
	str	r0, [sp, #148]
	str	r3, [sp, #116]
	add	r0, r4, #2
	mov	r3, r9, asl #1
	ldr	r4, [sp, #80]
.LVL327:
	str	r3, [sp, #112]
	mov	r3, r10, asl #1
	str	r3, [sp, #136]
	ldr	r5, [sp, #84]
.LVL328:
	add	r3, r4, r10
	str	r3, [sp, #60]
	ldr	r1, [sp, #144]
	mov	r3, fp, asl #1
	str	r3, [sp, #132]
	ldr	r10, [sp, #140]
.LVL329:
	add	r3, r5, fp
	str	r3, [sp, #56]
	mov	r3, r1, asl #1
	str	r3, [sp, #124]
	mov	r3, r10, asl #1
	str	r0, [sp, #36]
	str	r3, [sp, #120]
	add	r0, lr, #2
.LVL330:
	mov	r3, #0
	str	r8, [sp, #48]
	str	r0, [sp, #32]
	str	r3, [sp, #52]
.LVL331:
.L137:
	.loc 1 843 0
	ldr	r3, [sp, #8]
	.loc 1 845 0
	ldr	r2, [sp, #92]
	.loc 1 843 0
	cmp	r3, #0
	.loc 1 843 0 is_stmt 0 discriminator 1
	ldreq	r3, [sp, #52]
	ldrne	r10, [sp, #52]
	moveq	r10, r3, asr #1
.LVL332:
	.loc 1 851 0 is_stmt 1 discriminator 1
	ldr	r3, [sp, #68]
	.loc 1 845 0
	ldr	fp, [sp, #96]
	.loc 1 851 0 discriminator 1
	cmp	r3, #0
	.loc 1 845 0
	ldr	r3, [sp, #88]
	.loc 1 846 0
	ldr	r1, [sp, #76]
	.loc 1 845 0
	add	r3, r3, r10
	mla	fp, r3, fp, r2
.LVL333:
	.loc 1 846 0
	ldr	r2, [sp, #100]
	mla	r2, r3, r2, r1
	.loc 1 848 0
	ldr	r3, [sp, #104]
	.loc 1 846 0
	str	r2, [sp]
.LVL334:
	.loc 1 848 0
	ldr	r2, [sp, #80]
.LVL335:
	mla	r3, r10, r3, r2
	.loc 1 849 0
	ldr	r2, [sp, #84]
	.loc 1 848 0
	str	r3, [sp, #4]
.LVL336:
	.loc 1 849 0
	ldr	r3, [sp, #108]
.LVL337:
	mla	r3, r10, r3, r2
	mov	r10, r3
.LVL338:
	.loc 1 851 0 discriminator 1
	ble	.L136
	ldr	r3, [sp, #40]
.LVL339:
	ldr	r2, [sp, #148]
	ldr	r4, [sp, #64]
	add	r8, r3, r2
	ldr	r7, [sp, #32]
	ldr	r6, [sp, #36]
	b	.L135
.LVL340:
.L151:
	.loc 1 854 0
	ldr	r3, [sp, #4]
	.loc 1 855 0
	ldr	r2, [sp]
	.loc 1 854 0
	add	r3, r3, #1
	str	r3, [sp, #4]
.LVL341:
	add	fp, fp, #1
.LVL342:
	.loc 1 855 0
	add	r3, r2, #1
	add	r10, r10, #1
.LVL343:
	str	r3, [sp]
.LVL344:
.L134:
	.loc 1 851 0 discriminator 1
	ldr	r3, [sp, #24]
	add	r4, r4, #24
	cmp	r4, r3
	add	r6, r6, #2
.LVL345:
	add	r8, r8, #2
	add	r7, r7, #2
	beq	.L136
.LVL346:
.L135:
	.loc 1 852 0
	ldrb	r0, [r6, #-2]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL347:
	ldr	r1, .L152
	bl	__aeabi_fmul(PLT)
.LVL348:
	mov	r5, r0
.LVL349:
	.loc 1 853 0
	mov	r1, r0
	mov	r0, #1065353216
.LVL350:
	bl	__aeabi_fsub(PLT)
.LVL351:
	mov	r9, r0
	ldrb	r0, [r7, #-2]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL352:
	mov	r1, r5
	bl	__aeabi_fmul(PLT)
.LVL353:
	ldr	r1, .L152+4
	str	r0, [sp, #12]
	ldr	r0, [r4]	@ float
	bl	__aeabi_fadd(PLT)
.LVL354:
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fmul(PLT)
.LVL355:
	ldr	r3, [sp, #12]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
.LVL356:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL357:
	bl	__aeabi_f2uiz(PLT)
.LVL358:
	.loc 1 854 0
	ldr	r3, [sp, #4]
	.loc 1 853 0
	strb	r0, [r8, #-2]
.LVL359:
	.loc 1 854 0
	ldrb	r0, [r3]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL360:
	mov	r1, r5
	bl	__aeabi_fmul(PLT)
.LVL361:
	mov	r1, #1124073472
	str	r0, [sp, #12]
	ldr	r0, [r4, #4]	@ float
	bl	__aeabi_fadd(PLT)
.LVL362:
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fmul(PLT)
.LVL363:
	ldr	r3, [sp, #12]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
.LVL364:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL365:
	bl	__aeabi_f2uiz(PLT)
.LVL366:
	strb	r0, [fp]
.LVL367:
	.loc 1 855 0
	ldrb	r0, [r10]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL368:
	mov	r1, r5
	bl	__aeabi_fmul(PLT)
.LVL369:
	mov	r1, #1124073472
	mov	r5, r0
.LVL370:
	ldr	r0, [r4, #8]	@ float
	bl	__aeabi_fadd(PLT)
.LVL371:
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fmul(PLT)
.LVL372:
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
.LVL373:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL374:
	bl	__aeabi_f2uiz(PLT)
.LVL375:
	ldr	r2, [sp]
	strb	r0, [r2]
.LVL376:
	.loc 1 857 0
	ldrb	r0, [r6, #-1]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL377:
	ldr	r1, .L152
	bl	__aeabi_fmul(PLT)
.LVL378:
	.loc 1 858 0
	mov	r1, r0
	.loc 1 857 0
	mov	r5, r0
.LVL379:
	.loc 1 858 0
	mov	r0, #1065353216
.LVL380:
	bl	__aeabi_fsub(PLT)
.LVL381:
	mov	r9, r0
	ldrb	r0, [r7, #-1]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL382:
	mov	r1, r5
	bl	__aeabi_fmul(PLT)
.LVL383:
	ldr	r1, .L152+4
	str	r0, [sp, #12]
	ldr	r0, [r4, #12]	@ float
	bl	__aeabi_fadd(PLT)
.LVL384:
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fmul(PLT)
.LVL385:
	ldr	r3, [sp, #12]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
.LVL386:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL387:
	bl	__aeabi_f2uiz(PLT)
.LVL388:
	.loc 1 859 0
	ldr	r1, [sp, #8]
	cmp	r1, #5
	.loc 1 858 0
	strb	r0, [r8, #-1]
	.loc 1 859 0
	bne	.L151
	.loc 1 860 0
	ldr	r3, [sp, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL389:
	mov	r1, r5
	bl	__aeabi_fmul(PLT)
.LVL390:
	mov	r1, #1124073472
	str	r0, [sp, #12]
	ldr	r0, [r4, #16]	@ float
	bl	__aeabi_fadd(PLT)
.LVL391:
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fmul(PLT)
.LVL392:
	ldr	r3, [sp, #12]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
.LVL393:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL394:
	bl	__aeabi_f2uiz(PLT)
.LVL395:
	ldr	r3, [sp, #4]
	add	ip, fp, #2
	add	r3, r3, #2
	str	r3, [sp, #4]
.LVL396:
	.loc 1 861 0
	ldr	r3, [sp]
.LVL397:
	add	r2, r10, #2
	add	r3, r3, #2
	.loc 1 860 0
	str	ip, [sp, #28]
.LVL398:
	.loc 1 861 0
	str	r2, [sp, #16]
	str	r3, [sp, #12]
.LVL399:
	.loc 1 860 0
	strb	r0, [fp, #1]
	.loc 1 861 0
	ldrb	r0, [r10, #1]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL400:
	mov	r1, r5
	bl	__aeabi_fmul(PLT)
.LVL401:
	mov	r1, #1124073472
	mov	r5, r0
.LVL402:
	ldr	r0, [r4, #20]	@ float
	bl	__aeabi_fadd(PLT)
.LVL403:
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fmul(PLT)
.LVL404:
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
.LVL405:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL406:
	bl	__aeabi_f2uiz(PLT)
.LVL407:
	ldr	r3, [sp]
	.loc 1 860 0
	ldr	ip, [sp, #28]
	.loc 1 861 0
	ldr	r2, [sp, #16]
	.loc 1 860 0
	mov	fp, ip
	.loc 1 861 0
	mov	r10, r2
	strb	r0, [r3, #1]
	ldr	r3, [sp, #12]
	str	r3, [sp]
	b	.L134
.LVL408:
.L136:
	.loc 1 872 0 discriminator 1
	ldr	r3, [sp, #20]
	.loc 1 866 0
	ldr	r2, [sp, #44]
	.loc 1 872 0 discriminator 1
	ldr	r3, [r3, #68]
	.loc 1 866 0
	str	r2, [sp, #16]
.LVL409:
	.loc 1 872 0 discriminator 1
	cmp	r3, #0
	.loc 1 867 0
	ldr	r3, [sp, #48]
	str	r3, [sp]
.LVL410:
	.loc 1 869 0
	ldr	r3, [sp, #60]
.LVL411:
	str	r3, [sp, #4]
.LVL412:
	.loc 1 870 0
	ldr	r10, [sp, #56]
.LVL413:
	.loc 1 872 0 discriminator 1
	ble	.L132
	ldr	r3, [sp, #36]
.LVL414:
	ldr	r2, [sp, #144]
.LVL415:
	ldr	r4, [sp, #64]
	add	r7, r3, r2
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #140]
	ldr	r5, [sp, #40]
	add	r6, r3, r2
	mov	r9, #0
	b	.L141
.LVL416:
.L140:
	ldr	r3, [sp, #20]
	.loc 1 872 0 is_stmt 0 discriminator 2
	add	r9, r9, #2
.LVL417:
	.loc 1 872 0 discriminator 1
	ldr	r3, [r3, #68]
	add	r7, r7, #2
	cmp	r3, r9
	add	r5, r5, #2
	add	r6, r6, #2
	add	r4, r4, #24
	ble	.L132
.LVL418:
.L141:
	.loc 1 874 0 is_stmt 1
	ldrb	r0, [r7, #-2]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL419:
	ldr	r1, .L152
	bl	__aeabi_fmul(PLT)
.LVL420:
	.loc 1 875 0
	mov	r1, r0
	.loc 1 874 0
	mov	r8, r0
.LVL421:
	.loc 1 875 0
	mov	r0, #1065353216
.LVL422:
	bl	__aeabi_fsub(PLT)
.LVL423:
	mov	fp, r0
	ldrb	r0, [r6, #-2]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL424:
	mov	r1, r8
	bl	__aeabi_fmul(PLT)
.LVL425:
	ldr	r1, .L152+4
	str	r0, [sp, #12]
	ldr	r0, [r4]	@ float
	bl	__aeabi_fadd(PLT)
.LVL426:
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
.LVL427:
	ldr	r3, [sp, #12]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
.LVL428:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL429:
	bl	__aeabi_f2uiz(PLT)
.LVL430:
	.loc 1 876 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	.loc 1 875 0
	strb	r0, [r5, #-2]
	.loc 1 876 0
	beq	.L139
	.loc 1 877 0
	ldr	r3, [sp, #4]
	ldrb	r0, [r3]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL431:
	mov	r1, r8
	bl	__aeabi_fmul(PLT)
.LVL432:
	mov	r1, #1124073472
	str	r0, [sp, #12]
	ldr	r0, [r4, #4]	@ float
	bl	__aeabi_fadd(PLT)
.LVL433:
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
.LVL434:
	ldr	r3, [sp, #12]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
.LVL435:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL436:
	bl	__aeabi_f2uiz(PLT)
.LVL437:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #4]
.LVL438:
	.loc 1 878 0
	ldr	r3, [sp]
.LVL439:
	add	r2, r10, #1
	.loc 1 877 0
	add	ip, r1, #1
	.loc 1 878 0
	add	r3, r3, #1
	str	r2, [sp, #28]
	str	r3, [sp, #12]
	.loc 1 877 0
	str	ip, [sp, #16]
.LVL440:
	strb	r0, [r1]
	.loc 1 878 0
	ldrb	r0, [r10]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL441:
	mov	r1, r8
	bl	__aeabi_fmul(PLT)
.LVL442:
	mov	r1, #1124073472
	mov	r8, r0
.LVL443:
	ldr	r0, [r4, #8]	@ float
	bl	__aeabi_fadd(PLT)
.LVL444:
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
.LVL445:
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd(PLT)
.LVL446:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL447:
	bl	__aeabi_f2uiz(PLT)
.LVL448:
	ldr	r3, [sp]
	ldr	r2, [sp, #28]
	mov	r10, r2
	strb	r0, [r3]
	ldr	r3, [sp, #12]
	str	r3, [sp]
.LVL449:
.L139:
	.loc 1 881 0
	ldrb	r0, [r7, #-1]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL450:
	ldr	r1, .L152
	bl	__aeabi_fmul(PLT)
.LVL451:
	.loc 1 882 0
	mov	r1, r0
	.loc 1 881 0
	mov	r8, r0
.LVL452:
	.loc 1 882 0
	mov	r0, #1065353216
.LVL453:
	bl	__aeabi_fsub(PLT)
.LVL454:
	mov	fp, r0
	ldrb	r0, [r6, #-1]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL455:
	mov	r1, r8
	bl	__aeabi_fmul(PLT)
.LVL456:
	ldr	r1, .L152+4
	str	r0, [sp, #12]
	ldr	r0, [r4, #12]	@ float
	bl	__aeabi_fadd(PLT)
.LVL457:
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
.LVL458:
	ldr	r3, [sp, #12]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
.LVL459:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL460:
	bl	__aeabi_f2uiz(PLT)
.LVL461:
	.loc 1 883 0
	ldr	r3, [sp, #8]
	cmp	r3, #5
	.loc 1 882 0
	strb	r0, [r5, #-1]
	.loc 1 883 0
	bne	.L140
	.loc 1 884 0
	ldr	r3, [sp, #4]
	ldrb	r0, [r3]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL462:
	mov	r1, r8
	bl	__aeabi_fmul(PLT)
.LVL463:
	mov	r1, #1124073472
	str	r0, [sp, #12]
	ldr	r0, [r4, #16]	@ float
	bl	__aeabi_fadd(PLT)
.LVL464:
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
.LVL465:
	ldr	r3, [sp, #12]
	mov	r1, r0
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
.LVL466:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL467:
	bl	__aeabi_f2uiz(PLT)
.LVL468:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #4]
.LVL469:
	.loc 1 885 0
	ldr	r3, [sp]
.LVL470:
	add	r2, r10, #1
	.loc 1 884 0
	add	ip, r1, #1
	.loc 1 885 0
	add	r3, r3, #1
	str	r2, [sp, #28]
	str	r3, [sp, #12]
	.loc 1 884 0
	str	ip, [sp, #16]
.LVL471:
	strb	r0, [r1]
	.loc 1 885 0
	ldrb	r0, [r10]	@ zero_extendqisi2
	bl	__aeabi_i2f(PLT)
.LVL472:
	mov	r1, r8
	bl	__aeabi_fmul(PLT)
.LVL473:
	mov	r1, #1124073472
	mov	r8, r0
.LVL474:
	ldr	r0, [r4, #20]	@ float
	bl	__aeabi_fadd(PLT)
.LVL475:
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
.LVL476:
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd(PLT)
.LVL477:
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL478:
	bl	__aeabi_f2uiz(PLT)
.LVL479:
	ldr	r3, [sp]
	ldr	r2, [sp, #28]
	mov	r10, r2
	strb	r0, [r3]
	ldr	r3, [sp, #12]
	str	r3, [sp]
	b	.L140
.LVL480:
.L132:
	.loc 1 842 0 discriminator 2
	ldr	r3, [sp, #52]
	.loc 1 842 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #72]
	.loc 1 842 0 discriminator 2
	add	r3, r3, #2
	.loc 1 842 0 discriminator 1
	cmp	r2, r3
	.loc 1 842 0 discriminator 2
	str	r3, [sp, #52]
.LVL481:
	ldr	r2, [sp, #116]
	ldr	r3, [sp, #44]
.LVL482:
	add	r3, r3, r2
	str	r3, [sp, #44]
	ldr	r2, [sp, #112]
	ldr	r3, [sp, #48]
	add	r3, r3, r2
	str	r3, [sp, #48]
	ldr	r2, [sp, #136]
	ldr	r3, [sp, #60]
	add	r3, r3, r2
	str	r3, [sp, #60]
	ldr	r2, [sp, #132]
	ldr	r3, [sp, #56]
	add	r3, r3, r2
	str	r3, [sp, #56]
	ldr	r2, [sp, #128]
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #40]
	ldr	r2, [sp, #124]
	ldr	r3, [sp, #36]
	add	r3, r3, r2
	str	r3, [sp, #36]
	ldr	r2, [sp, #120]
	ldr	r3, [sp, #32]
	add	r3, r3, r2
	str	r3, [sp, #32]
	.loc 1 842 0 discriminator 1
	bgt	.L137
.LVL483:
.L126:
	.loc 1 889 0 is_stmt 1
	add	sp, sp, #156
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L153:
	.align	2
.L152:
	.word	998277249
	.word	1098907648
	.cfi_endproc
.LFE81:
	.size	draw_axis_yuv, .-draw_axis_yuv
	.align	2
	.type	update_sono_rgb, %function
update_sono_rgb:
.LFB83:
	.loc 1 916 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL484:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 917 0
	ldr	r6, [r0, #68]
.LVL485:
	.loc 1 918 0
	ldr	r3, [r0, #32]
	ldr	r4, [r0]
	.loc 1 920 0 discriminator 1
	cmp	r6, #0
	.loc 1 918 0
	mla	r2, r3, r2, r4
.LVL486:
	.loc 1 920 0 discriminator 1
	ldmlefd	sp!, {r4, r5, r6, pc}
	add	r6, r6, #1
.LVL487:
	add	r6, r6, r6, asl #1
	add	r6, r2, r6
	add	r4, r2, #3
	add	r5, r1, #4
.LVL488:
.L156:
	.loc 1 921 0
	ldr	r0, [r5, #-4]	@ float
	mov	r1, #1056964608
	bl	__aeabi_fadd(PLT)
.LVL489:
	bl	__aeabi_f2uiz(PLT)
.LVL490:
	.loc 1 922 0
	mov	r1, #1056964608
	add	r4, r4, #3
.LVL491:
	add	r5, r5, #12
	.loc 1 921 0
	strb	r0, [r4, #-6]
.LVL492:
	.loc 1 922 0
	ldr	r0, [r5, #-12]	@ float
	bl	__aeabi_fadd(PLT)
.LVL493:
	bl	__aeabi_f2uiz(PLT)
.LVL494:
	.loc 1 923 0
	mov	r1, #1056964608
	.loc 1 922 0
	strb	r0, [r4, #-5]
.LVL495:
	.loc 1 923 0
	ldr	r0, [r5, #-8]	@ float
	bl	__aeabi_fadd(PLT)
.LVL496:
	bl	__aeabi_f2uiz(PLT)
.LVL497:
	strb	r0, [r4, #-4]
	.loc 1 920 0 discriminator 1
	cmp	r4, r6
	bne	.L156
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE83:
	.size	update_sono_rgb, .-update_sono_rgb
	.align	2
	.type	update_sono_yuv, %function
update_sono_yuv:
.LFB84:
	.loc 1 928 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL498:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 929 0
	ldr	r8, [r0, #68]
	.loc 1 932 0
	ldr	r3, [r0, #8]
	.loc 1 930 0
	ldr	r5, [r0, #32]
	ldr	lr, [r0]
	.loc 1 931 0
	ldr	r7, [r0, #36]
	ldr	ip, [r0, #4]
	.loc 1 932 0
	ldr	r6, [r0, #40]
	.loc 1 934 0 discriminator 1
	cmp	r8, #0
	.loc 1 932 0
	mla	r6, r2, r6, r3
	.loc 1 930 0
	mla	r5, r2, r5, lr
	.loc 1 931 0
	mla	r7, r2, r7, ip
	.loc 1 929 0
	ldr	r3, [r0, #80]
.LVL499:
	.loc 1 934 0 discriminator 1
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}
	sub	r8, r8, #1
.LVL500:
	mov	r8, r8, lsr #1
	add	r8, r8, #1
	add	r8, r8, r8, asl #1
	cmp	r3, #5
	mov	r4, r1
	add	r8, r1, r8, asl #3
	add	r5, r5, #2
	beq	.L162
	sub	r7, r7, #1
	sub	r6, r6, #1
.LVL501:
.L163:
	.loc 1 935 0
	ldr	r0, [r4]	@ float
	ldr	r1, .L169
	bl	__aeabi_fadd(PLT)
.LVL502:
	bl	__aeabi_f2uiz(PLT)
.LVL503:
	.loc 1 936 0
	ldr	r1, .L169+4
	add	r4, r4, #24
	add	r5, r5, #2
.LVL504:
	.loc 1 935 0
	strb	r0, [r5, #-4]
.LVL505:
	.loc 1 936 0
	ldr	r0, [r4, #-20]	@ float
	bl	__aeabi_fadd(PLT)
.LVL506:
	bl	__aeabi_f2uiz(PLT)
.LVL507:
	.loc 1 937 0
	ldr	r1, .L169+4
	.loc 1 936 0
	strb	r0, [r7, #1]!
.LVL508:
	.loc 1 937 0
	ldr	r0, [r4, #-16]	@ float
	bl	__aeabi_fadd(PLT)
.LVL509:
	bl	__aeabi_f2uiz(PLT)
.LVL510:
	.loc 1 938 0
	ldr	r1, .L169
	.loc 1 937 0
	strb	r0, [r6, #1]!
.LVL511:
	.loc 1 938 0
	ldr	r0, [r4, #-12]	@ float
	bl	__aeabi_fadd(PLT)
.LVL512:
	bl	__aeabi_f2uiz(PLT)
.LVL513:
	.loc 1 934 0 discriminator 1
	cmp	r4, r8
	.loc 1 938 0
	strb	r0, [r5, #-3]
	.loc 1 934 0 discriminator 1
	bne	.L163
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL514:
.L162:
	add	r7, r7, #2
	add	r6, r6, #2
.LVL515:
.L165:
	.loc 1 935 0
	ldr	r0, [r4]	@ float
	ldr	r1, .L169
	bl	__aeabi_fadd(PLT)
.LVL516:
	bl	__aeabi_f2uiz(PLT)
.LVL517:
	.loc 1 936 0
	ldr	r1, .L169+4
	add	r4, r4, #24
	add	r5, r5, #2
.LVL518:
	add	r7, r7, #2
	add	r6, r6, #2
	.loc 1 935 0
	strb	r0, [r5, #-4]
	.loc 1 936 0
	ldr	r0, [r4, #-20]	@ float
	bl	__aeabi_fadd(PLT)
.LVL519:
	bl	__aeabi_f2uiz(PLT)
.LVL520:
	.loc 1 937 0
	ldr	r1, .L169+4
	.loc 1 936 0
	strb	r0, [r7, #-4]
	.loc 1 937 0
	ldr	r0, [r4, #-16]	@ float
	bl	__aeabi_fadd(PLT)
.LVL521:
	bl	__aeabi_f2uiz(PLT)
.LVL522:
	.loc 1 938 0
	ldr	r1, .L169
	.loc 1 937 0
	strb	r0, [r6, #-4]
.LVL523:
	.loc 1 938 0
	ldr	r0, [r4, #-12]	@ float
	bl	__aeabi_fadd(PLT)
.LVL524:
	bl	__aeabi_f2uiz(PLT)
.LVL525:
	.loc 1 940 0
	ldr	r1, .L169+4
	.loc 1 938 0
	strb	r0, [r5, #-3]
	.loc 1 940 0
	ldr	r0, [r4, #-8]	@ float
	bl	__aeabi_fadd(PLT)
.LVL526:
	bl	__aeabi_f2uiz(PLT)
.LVL527:
	.loc 1 941 0
	ldr	r1, .L169+4
	.loc 1 940 0
	strb	r0, [r7, #-3]
	.loc 1 941 0
	ldr	r0, [r4, #-4]	@ float
	bl	__aeabi_fadd(PLT)
.LVL528:
	bl	__aeabi_f2uiz(PLT)
.LVL529:
	.loc 1 934 0 discriminator 1
	cmp	r4, r8
	.loc 1 941 0
	strb	r0, [r6, #-3]
	.loc 1 934 0 discriminator 1
	bne	.L165
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L170:
	.align	2
.L169:
	.word	1099169792
	.word	1124106240
	.cfi_endproc
.LFE84:
	.size	update_sono_yuv, .-update_sono_yuv
	.align	2
	.type	query_formats, %function
query_formats:
.LFB89:
	.loc 1 1088 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL530:
	.loc 1 1093 0
	ldr	ip, .L177
	.loc 1 1088 0
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
	.loc 1 1093 0
.LPIC24:
	add	ip, pc, ip
	.loc 1 1088 0
	sub	sp, sp, #56
	.cfi_def_cfa_offset 88
	.loc 1 1091 0
	ldr	r2, [r0, #16]
	.loc 1 1092 0
	ldr	r3, [r0, #28]
	.loc 1 1093 0
	ldmia	ip, {r0, r1}
.LVL531:
	.loc 1 1094 0
	add	r5, ip, #8
	.loc 1 1093 0
	add	r9, sp, #4
	.loc 1 1091 0
	ldr	r6, [r2]
.LVL532:
	.loc 1 1092 0
	ldr	r8, [r3]
.LVL533:
	.loc 1 1093 0
	stmia	r9, {r0, r1}
	.loc 1 1094 0
	ldmia	r5!, {r0, r1, r2, r3}
	add	r7, sp, #12
	.loc 1 1098 0
	add	ip, ip, #32
	.loc 1 1094 0
	mov	r4, r7
	stmia	r4!, {r0, r1, r2, r3}
	.loc 1 1098 0
	ldmia	ip!, {r0, r1, r2, r3}
	add	r10, sp, #32
	mov	lr, r10
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1}
	.loc 1 1094 0
	ldr	r3, [r5]
	.loc 1 1098 0
	stmia	lr, {r0, r1}
	.loc 1 1102 0
	mov	r0, r9
	.loc 1 1094 0
	str	r3, [r4]
	.loc 1 1102 0
	bl	ff_make_format_list(PLT)
.LVL534:
	.loc 1 1103 0
	add	r1, r6, #68
	bl	ff_formats_ref(PLT)
.LVL535:
	cmp	r0, #0
	blt	.L172
	.loc 1 1106 0
	mov	r0, r10
.LVL536:
	bl	avfilter_make_format64_list(PLT)
.LVL537:
	.loc 1 1107 0
	add	r1, r6, #84
	bl	ff_channel_layouts_ref(PLT)
.LVL538:
	cmp	r0, #0
	blt	.L172
	.loc 1 1110 0
	bl	ff_all_samplerates(PLT)
.LVL539:
	.loc 1 1111 0
	add	r1, r6, #76
	bl	ff_formats_ref(PLT)
.LVL540:
	cmp	r0, #0
	blt	.L172
	.loc 1 1115 0
	mov	r0, r7
.LVL541:
	bl	ff_make_format_list(PLT)
.LVL542:
	.loc 1 1116 0
	add	r1, r8, #64
	bl	ff_formats_ref(PLT)
.LVL543:
	and	r0, r0, r0, asr #31
.LVL544:
.L172:
	.loc 1 1120 0
	add	sp, sp, #56
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL545:
.L178:
	.align	2
.L177:
	.word	.LANCHOR0-(.LPIC24+8)
	.cfi_endproc
.LFE89:
	.size	query_formats, .-query_formats
	.align	2
	.type	common_uninit, %function
common_uninit:
.LFB54:
	.loc 1 92 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL546:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 92 0
	mov	r4, r0
	.loc 1 96 0
	ldr	r0, [r0, #8]
.LVL547:
	cmp	r0, #0
	beq	.L183
	.loc 1 96 0 is_stmt 0 discriminator 1
	ldr	r5, [r0, #248]
	cmp	r5, #0
	beq	.L186
.L183:
	.loc 1 102 0 is_stmt 1
	add	r0, r4, #8
	bl	av_frame_free(PLT)
.LVL548:
	.loc 1 103 0
	add	r0, r4, #12
	bl	av_frame_free(PLT)
.LVL549:
	.loc 1 104 0
	ldr	r0, [r4, #60]
	bl	av_fft_end(PLT)
.LVL550:
	.loc 1 106 0
	ldr	r0, [r4, #64]
	.loc 1 105 0
	mov	r5, #0
	.loc 1 106 0
	cmp	r0, r5
	.loc 1 105 0
	str	r5, [r4, #60]
	.loc 1 106 0
	beq	.L182
.LVL551:
	.loc 1 107 0 discriminator 1
	ldr	r3, [r4, #88]
	cmp	r3, #0
	ble	.L182
	mov	r6, r5
	b	.L184
.LVL552:
.L187:
	ldr	r0, [r4, #64]
.LVL553:
.L184:
	.loc 1 108 0
	add	r0, r0, r5
	bl	av_freep(PLT)
.LVL554:
	.loc 1 107 0 discriminator 1
	ldr	r3, [r4, #88]
	.loc 1 107 0 is_stmt 0 discriminator 3
	add	r6, r6, #1
.LVL555:
	.loc 1 107 0 discriminator 1
	cmp	r6, r3, asl #1
	add	r5, r5, #12
	blt	.L187
.LVL556:
.L182:
	.loc 1 109 0 is_stmt 1
	add	r0, r4, #64
	bl	av_freep(PLT)
.LVL557:
	.loc 1 110 0
	add	r0, r4, #68
	bl	av_freep(PLT)
.LVL558:
	.loc 1 111 0
	add	r0, r4, #72
	bl	av_freep(PLT)
.LVL559:
	.loc 1 112 0
	add	r0, r4, #76
	bl	av_freep(PLT)
.LVL560:
	.loc 1 113 0
	add	r0, r4, #100
	bl	av_freep(PLT)
.LVL561:
	.loc 1 114 0
	add	r0, r4, #104
	bl	av_freep(PLT)
.LVL562:
	.loc 1 115 0
	add	r0, r4, #108
	bl	av_freep(PLT)
.LVL563:
	.loc 1 116 0
	add	r0, r4, #56
	bl	av_freep(PLT)
.LVL564:
	.loc 1 117 0
	add	r0, r4, #112
	bl	av_freep(PLT)
.LVL565:
	.loc 1 118 0
	add	r0, r4, #116
	.loc 1 119 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL566:
	.loc 1 118 0
	b	av_freep(PLT)
.LVL567:
.L186:
	.cfi_restore_state
	.loc 1 97 0
	bl	av_freep(PLT)
.LVL568:
	mov	r1, r5
	ldr	r0, [r4, #8]
	mov	r2, #16
	bl	memset(PLT)
.LVL569:
	b	.L183
	.cfi_endproc
.LFE54:
	.size	common_uninit, .-common_uninit
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.type	uninit, %function
uninit:
.LFB88:
	.loc 1 1083 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL570:
	.loc 1 1084 0
	ldr	r0, [r0, #36]
.LVL571:
	b	common_uninit(PLT)
.LVL572:
	.cfi_endproc
.LFE88:
	.size	uninit, .-uninit
	.global	__aeabi_idiv
	.align	2
	.type	init, %function
init:
.LFB87:
	.loc 1 1028 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL573:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 1029 0
	ldr	r4, [r0, #36]
.LVL574:
	.loc 1 1028 0
	mov	r5, r0
	.loc 1 1032 0
	ldr	r3, [r4, #168]
	.loc 1 1030 0
	str	r0, [r4, #4]
	.loc 1 1032 0
	cmp	r3, #0
	bne	.L190
	.loc 1 1033 0
	ldr	r2, .L220
	mov	r1, #24
.LPIC27:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL575:
	.loc 1 1034 0
	ldr	r3, [r4, #140]
	cmp	r3, #1920
	bne	.L191
	.loc 1 1034 0 is_stmt 0 discriminator 1
	ldr	r2, [r4, #144]
	sub	r3, r3, #840
	cmp	r2, r3
	beq	.L192
.L191:
	.loc 1 1035 0 is_stmt 1
	ldr	r2, .L220+4
	mov	r0, r5
	mov	r1, #16
.LPIC28:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL576:
	.loc 1 1036 0
	mvn	r0, #21
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L192:
	.loc 1 1038 0
	mov	r1, #960
	.loc 1 1039 0
	mov	r2, #540
	.loc 1 1040 0
	mov	r3, #1
	.loc 1 1038 0
	str	r1, [r4, #140]
	.loc 1 1039 0
	str	r2, [r4, #144]
	.loc 1 1040 0
	str	r3, [r4, #168]
.L190:
	.loc 1 1043 0
	ldr	r3, [r4, #160]
	ldr	r6, [r4, #140]
	cmp	r3, #0
	ldr	r8, [r4, #156]
	ldr	r7, [r4, #164]
	bge	.L195
	.loc 1 1044 0
	mov	r0, r6
	mov	r1, #60
	bl	__aeabi_idiv(PLT)
.LVL577:
	.loc 1 1045 0
	tst	r0, #1
	.loc 1 1046 0
	addne	r0, r0, #1
	.loc 1 1047 0
	cmp	r8, #0
	.loc 1 1046 0
	str	r0, [r4, #160]
	.loc 1 1047 0
	blt	.L198
	ldr	r3, [r4, #144]
	.loc 1 1047 0 is_stmt 0 discriminator 1
	cmp	r7, #0
	.loc 1 1048 0 is_stmt 1
	rsb	r3, r8, r3
	rsbge	r3, r7, r3
	strge	r3, [r4, #160]
	.loc 1 1047 0 discriminator 1
	bge	.L195
	b	.L219
.L198:
	.loc 1 1051 0 discriminator 1
	cmp	r7, #0
	blt	.L195
	.loc 1 1052 0
	ldr	r3, [r4, #144]
	ldr	r2, [r4, #160]
	rsb	r3, r7, r3
	cmp	r2, r3
	strle	r2, [r4, #160]
	strgt	r3, [r4, #160]
.L195:
	.loc 1 1055 0
	cmp	r8, #0
	bge	.L202
	.loc 1 1056 0
	ldr	r2, [r4, #144]
	ldr	r1, [r4, #160]
	rsb	r3, r1, r2
	add	r3, r3, r3, lsr #31
	mov	r3, r3, asr #1
	.loc 1 1057 0
	tst	r3, #1
	.loc 1 1058 0
	subne	r3, r3, #1
	.loc 1 1059 0
	cmp	r7, #0
	.loc 1 1060 0
	rsbge	r2, r7, r2
	rsbge	r2, r1, r2
	.loc 1 1058 0
	str	r3, [r4, #156]
	.loc 1 1060 0
	strge	r2, [r4, #156]
.L202:
	.loc 1 1063 0
	cmp	r7, #0
	bge	.L206
	.loc 1 1064 0
	ldr	r2, [r4, #144]
	ldr	r3, [r4, #160]
	ldr	r1, [r4, #156]
	rsb	r3, r3, r2
	rsb	r3, r1, r3
	str	r3, [r4, #164]
.L206:
	.loc 1 1066 0
	tst	r6, #1
	bne	.L207
	.loc 1 1066 0 is_stmt 0 discriminator 1
	ldr	ip, [r4, #144]
	tst	ip, #1
	bne	.L207
	.loc 1 1066 0 discriminator 2
	ldr	r1, [r4, #156]
	tst	r1, #1
	bne	.L207
	.loc 1 1066 0 discriminator 3
	ldr	lr, [r4, #160]
	ands	r0, lr, #1
	bne	.L207
	.loc 1 1066 0 discriminator 4
	ldr	r2, [r4, #164]
	and	r3, r2, #1
	orr	r3, r3, r1, lsr #31
	orr	r3, r3, lr, lsr #31
	orr	r3, r3, r2, lsr #31
	cmp	ip, r1
	orrlt	r3, r3, #1
	cmp	ip, lr
	orrlt	r3, r3, #1
	cmp	ip, r2
	orrlt	r3, r3, #1
	.loc 1 1068 0 is_stmt 1
	tst	r3, #255
	bne	.L207
	.loc 1 1068 0 is_stmt 0 discriminator 1
	add	r1, r1, lr
	add	r2, r2, r1
	cmp	ip, r2
	beq	.L208
.L207:
	.loc 1 1069 0 is_stmt 1
	ldr	r2, .L220+8
	mov	r0, r5
	mov	r1, #16
.LPIC29:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL578:
	.loc 1 1070 0
	mvn	r0, #21
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L208:
	.loc 1 1073 0
	ldr	r3, [r4, #228]
	cmp	r3, #0
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}
	.loc 1 1076 0 discriminator 2
	ldr	ip, .L220+12
	.loc 1 1073 0
	mov	r2, r0
	mov	r3, #1
.L210:
	add	r2, r2, r6
	.loc 1 1076 0 discriminator 1
	cmp	r2, ip
	cmple	r3, #9
	movle	r1, #1
	movgt	r1, #0
	cmp	r1, #0
	.loc 1 1075 0
	mov	r1, r3
	add	r3, r3, #1
	.loc 1 1076 0 discriminator 1
	bne	.L210
	str	r1, [r4, #228]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L219:
	.loc 1 1050 0
	ldr	r2, [r4, #160]
	cmp	r2, r3
	strle	r2, [r4, #160]
	strgt	r3, [r4, #160]
	b	.L195
.L221:
	.align	2
.L220:
	.word	.LC25-(.LPIC27+8)
	.word	.LC26-(.LPIC28+8)
	.word	.LC27-(.LPIC29+8)
	.word	1919
	.cfi_endproc
.LFE87:
	.size	init, .-init
	.text
	.align	2
	.type	midi, %function
midi:
.LFB67:
	.loc 1 438 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL579:
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 439 0
	mov	r0, r2
.LVL580:
	mov	r1, r3
	mov	r2, #0
.LVL581:
	ldr	r3, .L224
	bl	__aeabi_ddiv(PLT)
.LVL582:
	bl	log(PLT)
.LVL583:
	ldr	r2, .L224+4
	ldr	r3, .L224+8
	bl	__aeabi_dmul(PLT)
.LVL584:
	mov	r2, #0
	ldr	r3, .L224+12
	bl	__aeabi_dmul(PLT)
.LVL585:
	mov	r2, #0
	ldr	r3, .L224+16
	bl	__aeabi_dadd(PLT)
.LVL586:
	.loc 1 440 0
	ldmfd	sp!, {r3, pc}
.L225:
	.align	2
.L224:
	.word	1081835520
	.word	1697350398
	.word	1073157447
	.word	1076363264
	.word	1079066624
	.cfi_endproc
.LFE67:
	.size	midi, .-midi
	.global	__aeabi_idivmod
	.align	2
	.type	draw_sono, %function
draw_sono:
.LFB82:
	.loc 1 892 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL587:
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
	mov	r5, r0
	.loc 1 893 0
	ldr	r0, [r0, #80]
.LVL588:
	.loc 1 892 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 894 0
	cmp	r0, #2
	.loc 1 893 0
	str	r0, [sp, #24]
.LVL589:
	.loc 1 892 0
	mov	r6, r1
	mov	r7, r2
	str	r3, [sp, #4]
	.loc 1 893 0
	ldr	r9, [r1, #72]
.LVL590:
	.loc 1 894 0
	beq	.L239
.LVL591:
	.loc 1 895 0
	cmp	r0, #0
	bne	.L240
	.loc 1 899 0
	ldr	fp, [r1, #32]
	ldr	r2, [r5, #32]
.LVL592:
	.loc 1 895 0 discriminator 1
	add	r1, r7, r7, lsr #31
.LVL593:
	.loc 1 899 0
	cmp	fp, r2
	movlt	r3, fp
.LVL594:
	movge	r3, r2
	mov	r0, r3
.LVL595:
	.loc 1 895 0 discriminator 1
	mov	r3, r1, asr #1
	str	r3, [sp, #8]
.LVL596:
	.loc 1 900 0 discriminator 1
	cmp	r9, #0
	.loc 1 894 0 discriminator 2
	mov	r3, #3
.LVL597:
	str	r3, [sp, #28]
	.loc 1 896 0 discriminator 1
	mov	r8, #2
	.loc 1 900 0 discriminator 1
	ble	.L228
.LVL598:
.L238:
	.loc 1 896 0 discriminator 1
	str	r8, [sp, #12]
	mov	r4, #0
	mov	r8, fp
	mov	r10, r2
	mov	fp, r7
	mov	r7, r0
.LVL599:
	b	.L230
.LVL600:
.L248:
	ldr	r10, [r5, #32]
	ldr	r8, [r6, #32]
.LVL601:
.L230:
	.loc 1 901 0
	ldr	lr, [r5]
	.loc 1 902 0
	ldr	r3, [sp, #4]
	add	r1, r4, fp
	.loc 1 901 0
	mla	r10, r1, r10, lr
	.loc 1 902 0
	add	r0, r4, r3
	mov	r1, r9
	bl	__aeabi_idivmod(PLT)
.LVL602:
	.loc 1 901 0
	ldr	lr, [r6]
	.loc 1 900 0 discriminator 3
	add	r4, r4, #1
.LVL603:
	.loc 1 901 0
	mov	r0, r10
	mov	r2, r7
	mla	r1, r8, r1, lr
	bl	memcpy(PLT)
.LVL604:
	.loc 1 900 0 discriminator 1
	cmp	r9, r4
	bgt	.L248
	ldr	r8, [sp, #12]
.LVL605:
.L229:
	.loc 1 905 0 discriminator 1
	ldr	r3, [sp, #28]
	cmp	r3, #1
	beq	.L226
.LVL606:
.L228:
	.loc 1 896 0 discriminator 1
	mov	r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	add	r5, r5, #32
.LVL607:
	rsb	r3, r8, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #4]
	add	r6, r6, #32
.LVL608:
	rsb	r3, r8, r3
	str	r3, [sp, #16]
	mov	r3, r5
	mov	r5, r9
.LVL609:
	mov	r9, r3
.LVL610:
.L232:
	.loc 1 906 0
	ldr	r2, [r9, #4]!
	ldr	r7, [r6, #4]!
	cmp	r7, r2
	movlt	r10, r7
	movge	r10, r2
.LVL611:
	.loc 1 907 0 discriminator 1
	cmp	r5, #0
	ble	.L236
	ldr	r3, [sp, #24]
	cmp	r3, #0
	moveq	r4, r3
	beq	.L235
	mov	r3, r9
	mov	r4, r8
	mov	r9, r8
	mov	r8, r3
	b	.L237
.LVL612:
.L249:
	ldr	r2, [r8]
	ldr	r7, [r6]
	add	r4, r4, r9
.LVL613:
.L237:
	ldr	r3, [sp, #12]
	.loc 1 909 0
	ldr	lr, [r8, #-32]
	add	fp, r3, r4
	.loc 1 910 0
	ldr	r3, [sp, #16]
	.loc 1 909 0
	mov	r1, fp
	mla	fp, r1, r2, lr
	.loc 1 910 0
	add	r0, r3, r4
	mov	r1, r5
	bl	__aeabi_idivmod(PLT)
.LVL614:
	.loc 1 909 0
	ldr	lr, [r6, #-32]
	mov	r0, fp
	mov	r2, r10
	mla	r1, r7, r1, lr
	bl	memcpy(PLT)
.LVL615:
	.loc 1 907 0 discriminator 1
	cmp	r5, r4
	bgt	.L249
	mov	r3, r8
	mov	r8, r9
	mov	r9, r3
.LVL616:
.L236:
	.loc 1 905 0 discriminator 2
	ldr	r3, [sp, #20]
	add	r2, r3, #1
.LVL617:
	.loc 1 905 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #28]
	cmp	r2, r3
	mov	r3, #2
	str	r3, [sp, #20]
	blt	.L232
.LVL618:
.L226:
	.loc 1 913 0 is_stmt 1
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL619:
.L250:
	.cfi_restore_state
	ldr	r2, [r9]
	ldr	r7, [r6]
.LVL620:
.L235:
	.loc 1 909 0
	ldr	r3, [sp, #8]
	ldr	r1, [r9, #-32]
	add	fp, r3, r4, asr #1
	.loc 1 910 0
	ldr	r3, [sp, #4]
	.loc 1 909 0
	mla	fp, r2, fp, r1
	.loc 1 910 0
	add	r0, r4, r3
	mov	r1, r5
	bl	__aeabi_idivmod(PLT)
.LVL621:
	.loc 1 909 0
	ldr	lr, [r6, #-32]
	.loc 1 907 0 discriminator 2
	add	r4, r4, r8
.LVL622:
	.loc 1 909 0
	mov	r0, fp
	mov	r2, r10
	mla	r1, r7, r1, lr
	bl	memcpy(PLT)
.LVL623:
	.loc 1 907 0 discriminator 1
	cmp	r5, r4
	bgt	.L250
	b	.L236
.LVL624:
.L239:
	.loc 1 894 0 discriminator 1
	mov	r3, #1
.LVL625:
	str	r3, [sp, #28]
.L227:
.LVL626:
	.loc 1 899 0
	ldr	r2, [r5, #32]
.LVL627:
	ldr	fp, [r6, #32]
	.loc 1 900 0 discriminator 1
	str	r7, [sp, #8]
	.loc 1 899 0
	cmp	fp, r2
	movlt	r3, fp
	movge	r3, r2
	.loc 1 900 0 discriminator 1
	cmp	r9, #0
	.loc 1 899 0
	mov	r0, r3
.LVL628:
	.loc 1 896 0 discriminator 2
	mov	r8, #1
	.loc 1 900 0 discriminator 1
	bgt	.L238
	b	.L229
.LVL629:
.L240:
	.loc 1 894 0 discriminator 2
	mov	r3, #3
.LVL630:
	str	r3, [sp, #28]
	b	.L227
	.cfi_endproc
.LFE82:
	.size	draw_sono, .-draw_sono
	.align	2
	.type	b_weighting, %function
b_weighting:
.LFB58:
	.loc 1 171 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL631:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 172 0
	mov	r0, r2
.LVL632:
	mov	r1, r3
	.loc 1 171 0
	mov	r6, r2
	mov	r7, r3
	.loc 1 172 0
	bl	__aeabi_dmul(PLT)
.LVL633:
	mov	r2, r6
	mov	r3, r7
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dmul(PLT)
.LVL634:
	mov	r2, #-2147483648
	ldr	r3, .L253
	bl	__aeabi_dmul(PLT)
.LVL635:
	.loc 1 173 0
	mov	r2, #0
	ldr	r3, .L253+4
	.loc 1 172 0
	mov	r6, r0
	mov	r7, r1
.LVL636:
	.loc 1 173 0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL637:
	bl	sqrt(PLT)
.LVL638:
	ldr	r2, .L253+8
	ldr	r3, .L253+12
	mov	r10, r0
	mov	fp, r1
.LVL639:
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL640:
	mov	r2, #-2147483648
	ldr	r3, .L253
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL641:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL642:
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_dmul(PLT)
.LVL643:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv(PLT)
.LVL644:
	.loc 1 175 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L254:
	.align	2
.L253:
	.word	1101119036
	.word	1087932560
	.word	-1889785609
	.word	1081771458
	.cfi_endproc
.LFE58:
	.size	b_weighting, .-b_weighting
	.align	2
	.type	a_weighting, %function
a_weighting:
.LFB57:
	.loc 1 163 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL645:
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 164 0
	mov	r0, r2
.LVL646:
	mov	r1, r3
	.loc 1 163 0
	mov	r6, r2
	mov	r7, r3
	.loc 1 164 0
	bl	__aeabi_dmul(PLT)
.LVL647:
	mov	r2, r6
	mov	r3, r7
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dmul(PLT)
.LVL648:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul(PLT)
.LVL649:
	mov	r2, #-2147483648
	ldr	r3, .L257
	bl	__aeabi_dmul(PLT)
.LVL650:
	.loc 1 166 0
	ldr	r2, .L257+4
	ldr	r3, .L257+8
	.loc 1 164 0
	mov	r6, r0
	mov	r7, r1
.LVL651:
	.loc 1 166 0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL652:
	ldr	r2, .L257+12
	ldr	r3, .L257+16
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL653:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL654:
	bl	sqrt(PLT)
.LVL655:
	.loc 1 165 0
	ldr	r2, .L257+20
	ldr	r3, .L257+24
	.loc 1 166 0
	mov	r10, r0
	mov	fp, r1
.LVL656:
	.loc 1 165 0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL657:
	mov	r2, #-2147483648
	ldr	r3, .L257
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL658:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL659:
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_dmul(PLT)
.LVL660:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv(PLT)
.LVL661:
	.loc 1 168 0
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L258:
	.align	2
.L257:
	.word	1101119036
	.word	515396076
	.word	1086760869
	.word	-773094114
	.word	1092656608
	.word	-1889785609
	.word	1081771458
	.cfi_endproc
.LFE57:
	.size	a_weighting, .-a_weighting
	.align	2
	.type	init_axis_from_file, %function
init_axis_from_file:
.LFB66:
	.loc 1 406 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL662:
	.loc 1 412 0
	ldr	r2, [r0, #240]
	ldr	r3, [r0, #4]
	.loc 1 406 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #84
	.cfi_def_cfa_offset 112
	.loc 1 412 0
	stmib	sp, {r2, r3}
	add	r6, sp, #48
	add	r3, sp, #36
	add	r7, sp, #64
	.loc 1 407 0
	mov	ip, #0
	.loc 1 412 0
	str	r3, [sp]
	.loc 1 406 0
	mov	r4, r0
	.loc 1 412 0
	mov	r1, r7
	mov	r0, r6
.LVL663:
	add	r2, sp, #40
	add	r3, sp, #44
	.loc 1 407 0
	str	ip, [sp, #48]
	str	ip, [sp, #52]
	str	ip, [sp, #56]
	str	ip, [sp, #60]
	.loc 1 412 0
	bl	ff_load_image(PLT)
.LVL664:
	subs	r5, r0, #0
	blt	.L260
.LVL665:
	.loc 1 417 0
	bl	av_frame_alloc(PLT)
.LVL666:
	cmp	r0, #0
	str	r0, [r4, #8]
	beq	.L274
	.loc 1 420 0
	ldr	ip, [r4, #16]
.LVL667:
	add	r1, r0, #32
	ldr	r2, [r4, #140]
	ldr	r3, [r4, #160]
.LBB72:
.LBB73:
	.loc 1 389 0
	cmp	ip, #5
	addls	pc, pc, ip, asl #2
	b	.L264
.L263:
	b	.L262
	b	.L264
	b	.L275
	b	.L264
	b	.L265
	b	.L266
	.p2align 1
.L275:
	.loc 1 390 0
	mov	ip, #28
.LVL668:
.L264:
.LBE73:
.LBE72:
	.loc 1 420 0 discriminator 1
	ldr	r9, [sp, #40]
	ldr	lr, [r4, #4]
	ldr	r5, [sp, #36]
	ldr	r8, [sp